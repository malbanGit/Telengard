; NOTE!!!
; IF USED IN 'C' YOU MIGHT NEED TO SAVE SOME REGS WHEN CALLING
; YOUR FUNCTIONS, LIKE REG 'U' and 'Y'!
; ALSO CHECK YOUR DP SETTINGS, BELOW DP = D0 is assumed!
 .module arkostracker2_aky_c.pre.s
 .area .text

                    .setdp   0xd000,_DATA 

; changes to Arkos tracker exports
; a) Config variables must start the line! (no tabs before the config item names!)
;
;***************************************************************************
; DEFINE SECTION
;***************************************************************************
; load vectrex bios routine definitions
; include line ->                     INCLUDE  "VECTREX.I"                  ; vectrex function includes

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; this file contains includes for vectrex BIOS functions and variables      ;
; it was written by Bruce Tomlin, slighte changed by Malban                 ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

INCLUDE_I = 1

Vec_Snd_Shadow  =     0xC800   ;Shadow of sound chip registers (15 bytes)
Vec_Btn_State   =     0xC80F   ;Current state of all joystick buttons
Vec_Prev_Btns   =     0xC810   ;Previous state of all joystick buttons
Vec_Buttons     =     0xC811   ;Current toggle state of all buttons
Vec_Button_1_1  =     0xC812   ;Current toggle state of stick 1 button 1
Vec_Button_1_2  =     0xC813   ;Current toggle state of stick 1 button 2
Vec_Button_1_3  =     0xC814   ;Current toggle state of stick 1 button 3
Vec_Button_1_4  =     0xC815   ;Current toggle state of stick 1 button 4
Vec_Button_2_1  =     0xC816   ;Current toggle state of stick 2 button 1
Vec_Button_2_2  =     0xC817   ;Current toggle state of stick 2 button 2
Vec_Button_2_3  =     0xC818   ;Current toggle state of stick 2 button 3
Vec_Button_2_4  =     0xC819   ;Current toggle state of stick 2 button 4
Vec_Joy_Resltn  =     0xC81A   ;Joystick A/D resolution (0x80=min 0x00=max)
Vec_Joy_1_X     =     0xC81B   ;Joystick 1 left/right
Vec_Joy_1_Y     =     0xC81C   ;Joystick 1 up/down
Vec_Joy_2_X     =     0xC81D   ;Joystick 2 left/right
Vec_Joy_2_Y     =     0xC81E   ;Joystick 2 up/down
Vec_Joy_Mux     =     0xC81F   ;Joystick enable/mux flags (4 bytes)
Vec_Joy_Mux_1_X =     0xC81F   ;Joystick 1 X enable/mux flag (=1)
Vec_Joy_Mux_1_Y =     0xC820   ;Joystick 1 Y enable/mux flag (=3)
Vec_Joy_Mux_2_X =     0xC821   ;Joystick 2 X enable/mux flag (=5)
Vec_Joy_Mux_2_Y =     0xC822   ;Joystick 2 Y enable/mux flag (=7)
Vec_Misc_Count  =     0xC823   ;Misc counter/flag byte, zero when not in use
Vec_0Ref_Enable =     0xC824   ;Check0Ref enable flag
Vec_Loop_Count  =     0xC825   ;Loop counter word (incremented in Wait_Recal)
Vec_Brightness  =     0xC827   ;Default brightness
Vec_Dot_Dwell   =     0xC828   ;Dot dwell time?
Vec_Pattern     =     0xC829   ;Dot pattern (bits)
Vec_Text_HW     =     0xC82A   ;Default text height and width
Vec_Text_Height =     0xC82A   ;Default text height
Vec_Text_Width  =     0xC82B   ;Default text width
Vec_Str_Ptr     =     0xC82C   ;Temporary string pointer for Print_Str
Vec_Counters    =     0xC82E   ;Six bytes of counters
Vec_Counter_1   =     0xC82E   ;First  counter byte
Vec_Counter_2   =     0xC82F   ;Second counter byte
Vec_Counter_3   =     0xC830   ;Third  counter byte
Vec_Counter_4   =     0xC831   ;Fourth counter byte
Vec_Counter_5   =     0xC832   ;Fifth  counter byte
Vec_Counter_6   =     0xC833   ;Sixth  counter byte
Vec_RiseRun_Tmp =     0xC834   ;Temp storage word for rise/run
Vec_Angle       =     0xC836   ;Angle for rise/run and rotation calculations
Vec_Run_Index   =     0xC837   ;Index pair for run
;                       0xC839   ;Pointer to copyright string during startup
Vec_Rise_Index  =     0xC839   ;Index pair for rise
;                       0xC83B   ;High score cold-start flag (=0 if valid)
Vec_RiseRun_Len =     0xC83B   ;length for rise/run
;                       0xC83C   ;temp byte
Vec_Rfrsh       =     0xC83D   ;Refresh time (divided by 1.5MHz)
Vec_Rfrsh_lo    =     0xC83D   ;Refresh time low byte
Vec_Rfrsh_hi    =     0xC83E   ;Refresh time high byte
Vec_Music_Work  =     0xC83F   ;Music work buffer (14 bytes, backwards?)
Vec_Music_Wk_A  =     0xC842   ;        register 10
;                       0xC843   ;        register 9
;                       0xC844   ;        register 8
Vec_Music_Wk_7  =     0xC845   ;        register 7
Vec_Music_Wk_6  =     0xC846   ;        register 6
Vec_Music_Wk_5  =     0xC847   ;        register 5
;                       0xC848   ;        register 4
;                       0xC849   ;        register 3
;                       0xC84A   ;        register 2
Vec_Music_Wk_1  =     0xC84B   ;        register 1
;                       0xC84C   ;        register 0
Vec_Freq_Table  =     0xC84D   ;Pointer to note-to-frequency table (normally 0xFC8D)
Vec_Max_Players =     0xC84F   ;Maximum number of players for Select_Game
Vec_Max_Games   =     0xC850   ;Maximum number of games for Select_Game
Vec_ADSR_Table  =     0xC84F   ;Storage for first music header word (ADSR table)
Vec_Twang_Table =     0xC851   ;Storage for second music header word ('twang' table)
Vec_Music_Ptr   =     0xC853   ;Music data pointer
Vec_Expl_ChanA  =     0xC853   ;Used by Explosion_Snd - bit for first channel used?
Vec_Expl_Chans  =     0xC854   ;Used by Explosion_Snd - bits for all channels used?
Vec_Music_Chan  =     0xC855   ;Current sound channel number for Init_Music
Vec_Music_Flag  =     0xC856   ;Music active flag (0x00=off 0x01=start 0x80=on)
Vec_Duration    =     0xC857   ;Duration counter for Init_Music
Vec_Music_Twang =     0xC858   ;3 word 'twang' table used by Init_Music
Vec_Expl_1      =     0xC858   ;Four bytes copied from Explosion_Snd's U-reg parameters
Vec_Expl_2      =     0xC859   ;
Vec_Expl_3      =     0xC85A   ;
Vec_Expl_4      =     0xC85B   ;
Vec_Expl_Chan   =     0xC85C   ;Used by Explosion_Snd - channel number in use?
Vec_Expl_ChanB  =     0xC85D   ;Used by Explosion_Snd - bit for second channel used?
Vec_ADSR_Timers =     0xC85E   ;ADSR timers for each sound channel (3 bytes)
Vec_Music_Freq  =     0xC861   ;Storage for base frequency of each channel (3 words)
;                       0xC85E   ;Scratch 'score' storage for Display_Option (7 bytes)
Vec_Expl_Flag   =     0xC867   ;Explosion_Snd initialization flag?
;               0xC868...0xC876   ;Unused?
Vec_Expl_Timer  =     0xC877   ;Used by Explosion_Snd
;                       0xC878   ;Unused?
Vec_Num_Players =     0xC879   ;Number of players selected in Select_Game
Vec_Num_Game    =     0xC87A   ;Game number selected in Select_Game
Vec_Seed_Ptr    =     0xC87B   ;Pointer to 3-byte random number seed (=0xC87D)
Vec_Random_Seed =     0xC87D   ;Default 3-byte random number seed
                                ;
;    0xC880 - 0xCBEA is user RAM  ;
                                ;
Vec_Default_Stk =     0xCBEA   ;Default top-of-stack
Vec_High_Score  =     0xCBEB   ;High score storage (7 bytes)
Vec_SWI3_Vector =     0xCBF2   ;SWI2/SWI3 interrupt vector (3 bytes)
Vec_SWI2_Vector =     0xCBF2   ;SWI2/SWI3 interrupt vector (3 bytes)
Vec_FIRQ_Vector =     0xCBF5   ;FIRQ interrupt vector (3 bytes)
Vec_IRQ_Vector  =     0xCBF8   ;IRQ interrupt vector (3 bytes)
Vec_SWI_Vector  =     0xCBFB   ;SWI/NMI interrupt vector (3 bytes)
Vec_NMI_Vector  =     0xCBFB   ;SWI/NMI interrupt vector (3 bytes)
Vec_Cold_Flag   =     0xCBFE   ;Cold start flag (warm start if = 0x7321)
                                ;
VIA_port_b      =     0xD000   ;VIA port B data I/O register
;       0 sample/hold (0=enable  mux 1=disable mux)
;       1 mux sel 0
;       2 mux sel 1
;       3 sound BC1
;       4 sound BDIR
;       5 comparator input
;       6 external device (slot pin 35) initialized to input
;       7 /RAMP
VIA_port_a      =     0xD001   ;VIA port A data I/O register (handshaking)
VIA_DDR_b       =     0xD002   ;VIA port B data direction register (0=input 1=output)
VIA_DDR_a       =     0xD003   ;VIA port A data direction register (0=input 1=output)
VIA_t1_cnt_lo   =     0xD004   ;VIA timer 1 count register lo (scale factor)
VIA_t1_cnt_hi   =     0xD005   ;VIA timer 1 count register hi
VIA_t1_lch_lo   =     0xD006   ;VIA timer 1 latch register lo
VIA_t1_lch_hi   =     0xD007   ;VIA timer 1 latch register hi
VIA_t2_lo       =     0xD008   ;VIA timer 2 count/latch register lo (refresh)
VIA_t2_hi       =     0xD009   ;VIA timer 2 count/latch register hi
VIA_shift_reg   =     0xD00A   ;VIA shift register
VIA_aux_cntl    =     0xD00B   ;VIA auxiliary control register
;       0 PA latch enable
;       1 PB latch enable
;       2 \                     110=output to CB2 under control of phase 2 clock
;       3  > shift register control     (110 is the only mode used by the Vectrex ROM)
;       4 /
;       5 0=t2 one shot                 1=t2 free running
;       6 0=t1 one shot                 1=t1 free running
;       7 0=t1 disable PB7 output       1=t1 enable PB7 output
VIA_cntl        =     0xD00C   ;VIA control register
;       0 CA1 control     CA1 -> SW7    0=IRQ on low 1=IRQ on high
;       1 \
;       2  > CA2 control  CA2 -> /ZERO  110=low 111=high
;       3 /
;       4 CB1 control     CB1 -> NC     0=IRQ on low 1=IRQ on high
;       5 \
;       6  > CB2 control  CB2 -> /BLANK 110=low 111=high
;       7 /
VIA_int_flags   =     0xD00D   ;VIA interrupt flags register
;               bit                             cleared by
;       0 CA2 interrupt flag            reading or writing port A I/O
;       1 CA1 interrupt flag            reading or writing port A I/O
;       2 shift register interrupt flag reading or writing shift register
;       3 CB2 interrupt flag            reading or writing port B I/O
;       4 CB1 interrupt flag            reading or writing port A I/O
;       5 timer 2 interrupt flag        read t2 low or write t2 high
;       6 timer 1 interrupt flag        read t1 count low or write t1 high
;       7 IRQ status flag               write logic 0 to IER or IFR bit
VIA_int_enable  =     0xD00E   ;VIA interrupt enable register
;       0 CA2 interrupt enable
;       1 CA1 interrupt enable
;       2 shift register interrupt enable
;       3 CB2 interrupt enable
;       4 CB1 interrupt enable
;       5 timer 2 interrupt enable
;       6 timer 1 interrupt enable
;       7 IER set/clear control
VIA_port_a_nohs =     0xD00F   ;VIA port A data I/O register (no handshaking)

Cold_Start      =     0xF000   ;
Warm_Start      =     0xF06C   ;
Init_VIA        =     0xF14C   ;
Init_OS_RAM     =     0xF164   ;
Init_OS         =     0xF18B   ;
Wait_Recal      =     0xF192   ;
Set_Refresh     =     0xF1A2   ;
DP_to_D0        =     0xF1AA   ;
DP_to_C8        =     0xF1AF   ;
Read_Btns_Mask  =     0xF1B4   ;
Read_Btns       =     0xF1BA   ;
Joy_Analog      =     0xF1F5   ;
Joy_Digital     =     0xF1F8   ;
Sound_Byte      =     0xF256   ;
Sound_Byte_x    =     0xF259   ;
Sound_Byte_raw  =     0xF25B   ;
Clear_Sound     =     0xF272   ;
Sound_Bytes     =     0xF27D   ;
Sound_Bytes_x   =     0xF284   ;
Do_Sound        =     0xF289   ;
Do_Sound_x      =     0xF28C   ;
Intensity_1F    =     0xF29D   ;
Intensity_3F    =     0xF2A1   ;
Intensity_5F    =     0xF2A5   ;
Intensity_7F    =     0xF2A9   ;
Intensity_a     =     0xF2AB   ;
Dot_ix_b        =     0xF2BE   ;
Dot_ix          =     0xF2C1   ;
Dot_d           =     0xF2C3   ;
Dot_here        =     0xF2C5   ;
Dot_List        =     0xF2D5   ;
Dot_List_Reset  =     0xF2DE   ;
Recalibrate     =     0xF2E6   ;
Moveto_x_7F     =     0xF2F2   ;
Moveto_d_7F     =     0xF2FC   ;
Moveto_ix_FF    =     0xF308   ;
Moveto_ix_7F    =     0xF30C   ;
Moveto_ix_b     =     0xF30E   ;
Moveto_ix       =     0xF310   ;
Moveto_d        =     0xF312   ;
Reset0Ref_D0    =     0xF34A   ;
Check0Ref       =     0xF34F   ;
Reset0Ref       =     0xF354   ;
Reset_Pen       =     0xF35B   ;
Reset0Int       =     0xF36B   ;
Print_Str_hwyx  =     0xF373   ;
Print_Str_yx    =     0xF378   ;
Print_Str_d     =     0xF37A   ;
Print_List_hw   =     0xF385   ;
Print_List      =     0xF38A   ;
Print_List_chk  =     0xF38C   ;
Print_Ships_x   =     0xF391   ;
Print_Ships     =     0xF393   ;
Mov_Draw_VLc_a  =     0xF3AD   ;count y x y x ...
Mov_Draw_VL_b   =     0xF3B1   ;y x y x ...
Mov_Draw_VLcs   =     0xF3B5   ;count scale y x y x ...
Mov_Draw_VL_ab  =     0xF3B7   ;y x y x ...
Mov_Draw_VL_a   =     0xF3B9   ;y x y x ...
Mov_Draw_VL     =     0xF3BC   ;y x y x ...
Mov_Draw_VL_d   =     0xF3BE   ;y x y x ...
Draw_VLc        =     0xF3CE   ;count y x y x ...
Draw_VL_b       =     0xF3D2   ;y x y x ...
Draw_VLcs       =     0xF3D6   ;count scale y x y x ...
Draw_VL_ab      =     0xF3D8   ;y x y x ...
Draw_VL_a       =     0xF3DA   ;y x y x ...
Draw_VL         =     0xF3DD   ;y x y x ...
Draw_Line_d     =     0xF3DF   ;y x y x ...
Draw_VLp_FF     =     0xF404   ;pattern y x pattern y x ... 0x01
Draw_VLp_7F     =     0xF408   ;pattern y x pattern y x ... 0x01
Draw_VLp_scale  =     0xF40C   ;scale pattern y x pattern y x ... 0x01
Draw_VLp_b      =     0xF40E   ;pattern y x pattern y x ... 0x01
Draw_VLp        =     0xF410   ;pattern y x pattern y x ... 0x01
Draw_Pat_VL_a   =     0xF434   ;y x y x ...
Draw_Pat_VL     =     0xF437   ;y x y x ...
Draw_Pat_VL_d   =     0xF439   ;y x y x ...
Draw_VL_mode    =     0xF46E   ;mode y x mode y x ... 0x01
Print_Str       =     0xF495   ;
Random_3        =     0xF511   ;
Random          =     0xF517   ;
Init_Music_Buf  =     0xF533   ;
Clear_x_b       =     0xF53F   ;
Clear_C8_RAM    =     0xF542   ;never used by GCE carts?
Clear_x_256     =     0xF545   ;
Clear_x_d       =     0xF548   ;
Clear_x_b_80    =     0xF550   ;
Clear_x_b_a     =     0xF552   ;
Dec_3_Counters  =     0xF55A   ;
Dec_6_Counters  =     0xF55E   ;
Dec_Counters    =     0xF563   ;
Delay_3         =     0xF56D   ;30 cycles
Delay_2         =     0xF571   ;25 cycles
Delay_1         =     0xF575   ;20 cycles
Delay_0         =     0xF579   ;12 cycles
Delay_b         =     0xF57A   ;5*B + 10 cycles
Delay_RTS       =     0xF57D   ;5 cycles
Bitmask_a       =     0xF57E   ;
Abs_a_b         =     0xF584   ;
Abs_b           =     0xF58B   ;
Rise_Run_Angle  =     0xF593   ;
Get_Rise_Idx    =     0xF5D9   ;
Get_Run_Idx     =     0xF5DB   ;
Get_Rise_Run    =     0xF5EF   ;
Rise_Run_X      =     0xF5FF   ;
Rise_Run_Y      =     0xF601   ;
Rise_Run_Len    =     0xF603   ;

Rot_VL_ab       =     0xF610   ;
Rot_VL          =     0xF616   ;
Rot_VL_Mode   =     0xF61F   ;
Rot_VL_M_dft     =     0xF62B   ;
;Rot_VL_dft      EQU     0xF637   ;


;Rot_VL_ab       EQU     0xF610   ;
;Rot_VL          EQU     0xF616   ;
;Rot_VL_Mode_a   EQU     0xF61F   ;
;Rot_VL_Mode     EQU     0xF62B   ;
;Rot_VL_dft      EQU     0xF637   ;

Xform_Run_a     =     0xF65B   ;
Xform_Run       =     0xF65D   ;
Xform_Rise_a    =     0xF661   ;
Xform_Rise      =     0xF663   ;
Move_Mem_a_1    =     0xF67F   ;
Move_Mem_a      =     0xF683   ;
Init_Music_chk  =     0xF687   ;
Init_Music      =     0xF68D   ;
Init_Music_x    =     0xF692   ;
Select_Game     =     0xF7A9   ;
Clear_Score     =     0xF84F   ;
Add_Score_a     =     0xF85E   ;
Add_Score_d     =     0xF87C   ;
Strip_Zeros     =     0xF8B7   ;
Compare_Score   =     0xF8C7   ;
New_High_Score  =     0xF8D8   ;
Obj_Will_Hit_u  =     0xF8E5   ;
Obj_Will_Hit    =     0xF8F3   ;
Obj_Hit         =     0xF8FF   ;
Explosion_Snd   =     0xF92E   ;
Draw_Grid_VL    =     0xFF9F   ;
                                ;
music1  = 0xFD0D               ;
music2  = 0xFD1D               ;
music3  = 0xFD81               ;
music4  = 0xFDD3               ;
music5  = 0xFE38               ;
music6  = 0xFE76               ;
music7  = 0xFEC6               ;
music8  = 0xFEF8               ;
music9  = 0xFF26               ;
musica  = 0xFF44               ;
musicb  = 0xFF62               ;
musicc  = 0xFF7A               ;
musicd  = 0xFF8F               ;
Char_Table = 0xF9F4
Char_Table_End = 0xFBD4

; include line ->                     INCLUDE  "macro.i"                    ; vectrex function includes
; this file is part of Release, written by Malban in 2017
;
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;*************************************************************************** 
;***************************************************************************
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; macro D = D *2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; macro D = D /2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; "random" Galois LFSR
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;***************************************************************************
;***************************************************************************
; expect DP = d0
; playes one piece of music, that is given as param
;***************************************************************************
;***************************************************************************
; uses x and d
; prints the numbers in a and b at a location given
; prints in hex
; need 6 bytes RAM starting with tmp_debug
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
; reg u can be used!
;***************************************************************************

;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
;***************************************************************************
; ￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤ
UNIVERSAL_PLAYER_SHOT_RADIUS  =  10 
;***************************************************************************
;***************************************************************************
;
;***************************************************************************
SCOOP_INTERVALL_ADD  =       6                            ;7 
CORRECTION          =        10 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; draws the fighter (anim) and all that goes with it (armor, shield or scoop)
; only one addition at any given time at once
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;-------
;-------
;-------

;-------
;-------
;-------
;***************************************************************************
; CODE SECTION
;***************************************************************************
; here the cartridge program starts off
 .globl _playSong
_playSong:
                    jsr      _PLY_AKY_PLAY 

 .globl doymsound100
doymsound100: 
 .globl do_ym_sound2
do_ym_sound2:                                              ;#isfunction  
; Warning - direct line found!
;                    direct   0xd0 
 .globl copySoundRegs
copySoundRegs: 
; copy all shadows
                    lda      #13                          ; number of regs to copy (+1) 
                    ldx      #Vec_Music_Work              ; music players write here 
                    ldu      #Vec_Snd_Shadow              ; shadow of actual PSG 
 .globl next_reg_dsy
next_reg_dsy: 
                    ldb      a, x 
                    cmpb     a, u 
                    beq      inc_reg_dsy 
; no put to psg
                    stb      a,u                          ; ensure shadow has copy 
; a = register
; b = value
                    STA      *VIA_port_a                  ;store register select byte 
                    LDA      #0x19                         ;sound BDIR on, BC1 on, mux off _ LATCH 
                    STA      *VIA_port_b 
                    LDA      #0x01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
                    STA      *VIA_port_b 
                    LDA      *VIA_port_a                  ;read sound chip status (?) 
                    STB      *VIA_port_a                  ;store data byte 
                    LDB      #0x11                         ;sound BDIR on, BC1 off, mux off - WRITE 
                    STB      *VIA_port_b 
                    LDB      #0x01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
                    STB      *VIA_port_b 
 .globl inc_reg_dsy
inc_reg_dsy: 
                    deca     
                    bpl      next_reg_dsy 
 .globl doneSound_2
doneSound_2: 
                    rts      
;***************************************************************************
; DATA SECTION
;***************************************************************************

; include line ->                     include  "Videopac_aky.asm"
; Song No more Videopac, in AKY version 1.0, generated by Arkos Tracker 2.

 .globl Videopac_Subsong0
Videopac_Subsong0:
 .globl Videopac_Subsong0DisarkGenerateExternalLabel
Videopac_Subsong0DisarkGenerateExternalLabel:

; Header
 .globl _Videopac_Subsong0DisarkByteRegionStart0
_Videopac_Subsong0DisarkByteRegionStart0:
	.byte 128	; Format version: 0 and endianness: little-endian.
	.byte 3	; How many channels are encoded.
; Frequency of the PSG index 0: 1000000Hz.
	.byte 64, 66, 15, 0
 .globl Videopac_Subsong0DisarkByteRegionEnd0
Videopac_Subsong0DisarkByteRegionEnd0:

 .globl Videopac_Subsong0_Linker
Videopac_Subsong0_Linker:
 .globl Videopac_Subsong0DisarkPointerRegionStart1
Videopac_Subsong0DisarkPointerRegionStart1:
; Pattern 0
 .globl Videopac_Subsong0_LinkerLoop
Videopac_Subsong0_LinkerLoop:	; Loops here.
 .globl _Videopac_Subsong0DisarkWordForceNonReference2
_Videopac_Subsong0DisarkWordForceNonReference2:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_0
	.word Videopac_Subsong0_Track_1
	.word Videopac_Subsong0_Track_2

; Pattern 1
 .globl _Videopac_Subsong0DisarkWordForceNonReference3
_Videopac_Subsong0DisarkWordForceNonReference3:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_15
	.word Videopac_Subsong0_Track_16
	.word Videopac_Subsong0_Track_17

; Pattern 2
 .globl _Videopac_Subsong0DisarkWordForceNonReference4
_Videopac_Subsong0DisarkWordForceNonReference4:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_18
	.word Videopac_Subsong0_Track_19
	.word Videopac_Subsong0_Track_20

; Pattern 3
 .globl _Videopac_Subsong0DisarkWordForceNonReference5
_Videopac_Subsong0DisarkWordForceNonReference5:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_21
	.word Videopac_Subsong0_Track_22
	.word Videopac_Subsong0_Track_23

; Pattern 4
 .globl _Videopac_Subsong0DisarkWordForceNonReference6
_Videopac_Subsong0DisarkWordForceNonReference6:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_12
	.word Videopac_Subsong0_Track_13
	.word Videopac_Subsong0_Track_14

; Pattern 5
 .globl _Videopac_Subsong0DisarkWordForceNonReference7
_Videopac_Subsong0DisarkWordForceNonReference7:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_15
	.word Videopac_Subsong0_Track_16
	.word Videopac_Subsong0_Track_17

; Pattern 6
 .globl _Videopac_Subsong0DisarkWordForceNonReference8
_Videopac_Subsong0DisarkWordForceNonReference8:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_18
	.word Videopac_Subsong0_Track_19
	.word Videopac_Subsong0_Track_20

; Pattern 7
 .globl _Videopac_Subsong0DisarkWordForceNonReference9
_Videopac_Subsong0DisarkWordForceNonReference9:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_21
	.word Videopac_Subsong0_Track_22
	.word Videopac_Subsong0_Track_23

; Pattern 8
 .globl _Videopac_Subsong0DisarkWordForceNonReference10
_Videopac_Subsong0DisarkWordForceNonReference10:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_36
	.word Videopac_Subsong0_Track_40
	.word Videopac_Subsong0_Track_26

; Pattern 9
 .globl _Videopac_Subsong0DisarkWordForceNonReference11
_Videopac_Subsong0DisarkWordForceNonReference11:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_39
	.word Videopac_Subsong0_Track_40
	.word Videopac_Subsong0_Track_41

; Pattern 10
 .globl _Videopac_Subsong0DisarkWordForceNonReference12
_Videopac_Subsong0DisarkWordForceNonReference12:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_42
	.word Videopac_Subsong0_Track_46
	.word Videopac_Subsong0_Track_44

; Pattern 11
 .globl _Videopac_Subsong0DisarkWordForceNonReference13
_Videopac_Subsong0DisarkWordForceNonReference13:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_45
	.word Videopac_Subsong0_Track_46
	.word Videopac_Subsong0_Track_47

; Pattern 12
 .globl _Videopac_Subsong0DisarkWordForceNonReference14
_Videopac_Subsong0DisarkWordForceNonReference14:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_36
	.word Videopac_Subsong0_Track_40
	.word Videopac_Subsong0_Track_38

; Pattern 13
 .globl _Videopac_Subsong0DisarkWordForceNonReference15
_Videopac_Subsong0DisarkWordForceNonReference15:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_39
	.word Videopac_Subsong0_Track_40
	.word Videopac_Subsong0_Track_41

; Pattern 14
 .globl _Videopac_Subsong0DisarkWordForceNonReference16
_Videopac_Subsong0DisarkWordForceNonReference16:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_42
	.word Videopac_Subsong0_Track_46
	.word Videopac_Subsong0_Track_44

; Pattern 15
 .globl _Videopac_Subsong0DisarkWordForceNonReference17
_Videopac_Subsong0DisarkWordForceNonReference17:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_45
	.word Videopac_Subsong0_Track_46
	.word Videopac_Subsong0_Track_47

; Pattern 16
 .globl _Videopac_Subsong0DisarkWordForceNonReference18
_Videopac_Subsong0DisarkWordForceNonReference18:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_60
	.word Videopac_Subsong0_Track_64
	.word Videopac_Subsong0_Track_50

; Pattern 17
 .globl _Videopac_Subsong0DisarkWordForceNonReference19
_Videopac_Subsong0DisarkWordForceNonReference19:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_63
	.word Videopac_Subsong0_Track_64
	.word Videopac_Subsong0_Track_65

; Pattern 18
 .globl _Videopac_Subsong0DisarkWordForceNonReference20
_Videopac_Subsong0DisarkWordForceNonReference20:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_66
	.word Videopac_Subsong0_Track_70
	.word Videopac_Subsong0_Track_68

; Pattern 19
 .globl _Videopac_Subsong0DisarkWordForceNonReference21
_Videopac_Subsong0DisarkWordForceNonReference21:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_69
	.word Videopac_Subsong0_Track_70
	.word Videopac_Subsong0_Track_71

; Pattern 20
 .globl _Videopac_Subsong0DisarkWordForceNonReference22
_Videopac_Subsong0DisarkWordForceNonReference22:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_60
	.word Videopac_Subsong0_Track_64
	.word Videopac_Subsong0_Track_62

; Pattern 21
 .globl _Videopac_Subsong0DisarkWordForceNonReference23
_Videopac_Subsong0DisarkWordForceNonReference23:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_63
	.word Videopac_Subsong0_Track_64
	.word Videopac_Subsong0_Track_65

; Pattern 22
 .globl _Videopac_Subsong0DisarkWordForceNonReference24
_Videopac_Subsong0DisarkWordForceNonReference24:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_66
	.word Videopac_Subsong0_Track_70
	.word Videopac_Subsong0_Track_68

; Pattern 23
 .globl _Videopac_Subsong0DisarkWordForceNonReference25
_Videopac_Subsong0DisarkWordForceNonReference25:
	.word 384	; Duration in frames.
	.word Videopac_Subsong0_Track_69
	.word Videopac_Subsong0_Track_70
	.word Videopac_Subsong0_Track_71

 .globl _Videopac_Subsong0DisarkWordForceNonReference26
_Videopac_Subsong0DisarkWordForceNonReference26:
	.word 0	; Loops (duration = 0).
	.word Videopac_Subsong0_LinkerLoop
 .globl Videopac_Subsong0DisarkPointerRegionEnd1
Videopac_Subsong0DisarkPointerRegionEnd1:

; The tracks.
 .globl Videopac_Subsong0_Track_0
Videopac_Subsong0_Track_0:
 .globl _Videopac_Subsong0DisarkByteRegionStart27
_Videopac_Subsong0DisarkByteRegionStart27:
	.byte 42	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd27
Videopac_Subsong0DisarkByteRegionEnd27:
 .globl _Videopac_Subsong0DisarkPointerRegionStart28
_Videopac_Subsong0DisarkPointerRegionStart28:
	.word _Videopac_Subsong0_RegisterBlock_20
 .globl Videopac_Subsong0DisarkPointerRegionEnd28
Videopac_Subsong0DisarkPointerRegionEnd28:

 .globl _Videopac_Subsong0DisarkByteRegionStart29
_Videopac_Subsong0DisarkByteRegionStart29:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd29
Videopac_Subsong0DisarkByteRegionEnd29:
 .globl _Videopac_Subsong0DisarkPointerRegionStart30
_Videopac_Subsong0DisarkPointerRegionStart30:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd30
Videopac_Subsong0DisarkPointerRegionEnd30:

 .globl _Videopac_Subsong0DisarkByteRegionStart31
_Videopac_Subsong0DisarkByteRegionStart31:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd31
Videopac_Subsong0DisarkByteRegionEnd31:
 .globl _Videopac_Subsong0DisarkPointerRegionStart32
_Videopac_Subsong0DisarkPointerRegionStart32:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd32
Videopac_Subsong0DisarkPointerRegionEnd32:

 .globl _Videopac_Subsong0DisarkByteRegionStart33
_Videopac_Subsong0DisarkByteRegionStart33:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd33
Videopac_Subsong0DisarkByteRegionEnd33:
 .globl _Videopac_Subsong0DisarkPointerRegionStart34
_Videopac_Subsong0DisarkPointerRegionStart34:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd34
Videopac_Subsong0DisarkPointerRegionEnd34:

 .globl _Videopac_Subsong0DisarkByteRegionStart35
_Videopac_Subsong0DisarkByteRegionStart35:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd35
Videopac_Subsong0DisarkByteRegionEnd35:
 .globl _Videopac_Subsong0DisarkPointerRegionStart36
_Videopac_Subsong0DisarkPointerRegionStart36:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd36
Videopac_Subsong0DisarkPointerRegionEnd36:

 .globl _Videopac_Subsong0DisarkByteRegionStart37
_Videopac_Subsong0DisarkByteRegionStart37:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd37
Videopac_Subsong0DisarkByteRegionEnd37:
 .globl _Videopac_Subsong0DisarkPointerRegionStart38
_Videopac_Subsong0DisarkPointerRegionStart38:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd38
Videopac_Subsong0DisarkPointerRegionEnd38:

 .globl _Videopac_Subsong0DisarkByteRegionStart39
_Videopac_Subsong0DisarkByteRegionStart39:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd39
Videopac_Subsong0DisarkByteRegionEnd39:
 .globl _Videopac_Subsong0DisarkPointerRegionStart40
_Videopac_Subsong0DisarkPointerRegionStart40:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd40
Videopac_Subsong0DisarkPointerRegionEnd40:

 .globl _Videopac_Subsong0DisarkByteRegionStart41
_Videopac_Subsong0DisarkByteRegionStart41:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd41
Videopac_Subsong0DisarkByteRegionEnd41:
 .globl _Videopac_Subsong0DisarkPointerRegionStart42
_Videopac_Subsong0DisarkPointerRegionStart42:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd42
Videopac_Subsong0DisarkPointerRegionEnd42:

 .globl _Videopac_Subsong0DisarkByteRegionStart43
_Videopac_Subsong0DisarkByteRegionStart43:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd43
Videopac_Subsong0DisarkByteRegionEnd43:
 .globl _Videopac_Subsong0DisarkPointerRegionStart44
_Videopac_Subsong0DisarkPointerRegionStart44:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd44
Videopac_Subsong0DisarkPointerRegionEnd44:

 .globl Videopac_Subsong0_Track_1
Videopac_Subsong0_Track_1:
 .globl _Videopac_Subsong0DisarkByteRegionStart45
_Videopac_Subsong0DisarkByteRegionStart45:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd45
Videopac_Subsong0DisarkByteRegionEnd45:
 .globl _Videopac_Subsong0DisarkPointerRegionStart46
_Videopac_Subsong0DisarkPointerRegionStart46:
	.word _Videopac_Subsong0_RegisterBlock_20
 .globl Videopac_Subsong0DisarkPointerRegionEnd46
Videopac_Subsong0DisarkPointerRegionEnd46:

 .globl _Videopac_Subsong0DisarkByteRegionStart47
_Videopac_Subsong0DisarkByteRegionStart47:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd47
Videopac_Subsong0DisarkByteRegionEnd47:
 .globl _Videopac_Subsong0DisarkPointerRegionStart48
_Videopac_Subsong0DisarkPointerRegionStart48:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd48
Videopac_Subsong0DisarkPointerRegionEnd48:

 .globl _Videopac_Subsong0DisarkByteRegionStart49
_Videopac_Subsong0DisarkByteRegionStart49:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd49
Videopac_Subsong0DisarkByteRegionEnd49:
 .globl _Videopac_Subsong0DisarkPointerRegionStart50
_Videopac_Subsong0DisarkPointerRegionStart50:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd50
Videopac_Subsong0DisarkPointerRegionEnd50:

 .globl _Videopac_Subsong0DisarkByteRegionStart51
_Videopac_Subsong0DisarkByteRegionStart51:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd51
Videopac_Subsong0DisarkByteRegionEnd51:
 .globl _Videopac_Subsong0DisarkPointerRegionStart52
_Videopac_Subsong0DisarkPointerRegionStart52:
	.word _Videopac_Subsong0_RegisterBlock_13
 .globl Videopac_Subsong0DisarkPointerRegionEnd52
Videopac_Subsong0DisarkPointerRegionEnd52:

 .globl _Videopac_Subsong0DisarkByteRegionStart53
_Videopac_Subsong0DisarkByteRegionStart53:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd53
Videopac_Subsong0DisarkByteRegionEnd53:
 .globl _Videopac_Subsong0DisarkPointerRegionStart54
_Videopac_Subsong0DisarkPointerRegionStart54:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd54
Videopac_Subsong0DisarkPointerRegionEnd54:

 .globl _Videopac_Subsong0DisarkByteRegionStart55
_Videopac_Subsong0DisarkByteRegionStart55:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd55
Videopac_Subsong0DisarkByteRegionEnd55:
 .globl _Videopac_Subsong0DisarkPointerRegionStart56
_Videopac_Subsong0DisarkPointerRegionStart56:
	.word _Videopac_Subsong0_RegisterBlock_15
 .globl Videopac_Subsong0DisarkPointerRegionEnd56
Videopac_Subsong0DisarkPointerRegionEnd56:

 .globl _Videopac_Subsong0DisarkByteRegionStart57
_Videopac_Subsong0DisarkByteRegionStart57:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd57
Videopac_Subsong0DisarkByteRegionEnd57:
 .globl _Videopac_Subsong0DisarkPointerRegionStart58
_Videopac_Subsong0DisarkPointerRegionStart58:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd58
Videopac_Subsong0DisarkPointerRegionEnd58:

 .globl _Videopac_Subsong0DisarkByteRegionStart59
_Videopac_Subsong0DisarkByteRegionStart59:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd59
Videopac_Subsong0DisarkByteRegionEnd59:
 .globl _Videopac_Subsong0DisarkPointerRegionStart60
_Videopac_Subsong0DisarkPointerRegionStart60:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd60
Videopac_Subsong0DisarkPointerRegionEnd60:

 .globl _Videopac_Subsong0DisarkByteRegionStart61
_Videopac_Subsong0DisarkByteRegionStart61:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd61
Videopac_Subsong0DisarkByteRegionEnd61:
 .globl _Videopac_Subsong0DisarkPointerRegionStart62
_Videopac_Subsong0DisarkPointerRegionStart62:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd62
Videopac_Subsong0DisarkPointerRegionEnd62:

 .globl Videopac_Subsong0_Track_2
Videopac_Subsong0_Track_2:
 .globl _Videopac_Subsong0DisarkByteRegionStart63
_Videopac_Subsong0DisarkByteRegionStart63:
	.byte 60	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd63
Videopac_Subsong0DisarkByteRegionEnd63:
 .globl _Videopac_Subsong0DisarkPointerRegionStart64
_Videopac_Subsong0DisarkPointerRegionStart64:
	.word _Videopac_Subsong0_RegisterBlock_20
 .globl Videopac_Subsong0DisarkPointerRegionEnd64
Videopac_Subsong0DisarkPointerRegionEnd64:

 .globl _Videopac_Subsong0DisarkByteRegionStart65
_Videopac_Subsong0DisarkByteRegionStart65:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd65
Videopac_Subsong0DisarkByteRegionEnd65:
 .globl _Videopac_Subsong0DisarkPointerRegionStart66
_Videopac_Subsong0DisarkPointerRegionStart66:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd66
Videopac_Subsong0DisarkPointerRegionEnd66:

 .globl _Videopac_Subsong0DisarkByteRegionStart67
_Videopac_Subsong0DisarkByteRegionStart67:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd67
Videopac_Subsong0DisarkByteRegionEnd67:
 .globl _Videopac_Subsong0DisarkPointerRegionStart68
_Videopac_Subsong0DisarkPointerRegionStart68:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd68
Videopac_Subsong0DisarkPointerRegionEnd68:

 .globl _Videopac_Subsong0DisarkByteRegionStart69
_Videopac_Subsong0DisarkByteRegionStart69:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd69
Videopac_Subsong0DisarkByteRegionEnd69:
 .globl _Videopac_Subsong0DisarkPointerRegionStart70
_Videopac_Subsong0DisarkPointerRegionStart70:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd70
Videopac_Subsong0DisarkPointerRegionEnd70:

 .globl _Videopac_Subsong0DisarkByteRegionStart71
_Videopac_Subsong0DisarkByteRegionStart71:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd71
Videopac_Subsong0DisarkByteRegionEnd71:
 .globl _Videopac_Subsong0DisarkPointerRegionStart72
_Videopac_Subsong0DisarkPointerRegionStart72:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd72
Videopac_Subsong0DisarkPointerRegionEnd72:

 .globl _Videopac_Subsong0DisarkByteRegionStart73
_Videopac_Subsong0DisarkByteRegionStart73:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd73
Videopac_Subsong0DisarkByteRegionEnd73:
 .globl _Videopac_Subsong0DisarkPointerRegionStart74
_Videopac_Subsong0DisarkPointerRegionStart74:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd74
Videopac_Subsong0DisarkPointerRegionEnd74:

 .globl _Videopac_Subsong0DisarkByteRegionStart75
_Videopac_Subsong0DisarkByteRegionStart75:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd75
Videopac_Subsong0DisarkByteRegionEnd75:
 .globl _Videopac_Subsong0DisarkPointerRegionStart76
_Videopac_Subsong0DisarkPointerRegionStart76:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd76
Videopac_Subsong0DisarkPointerRegionEnd76:

 .globl _Videopac_Subsong0DisarkByteRegionStart77
_Videopac_Subsong0DisarkByteRegionStart77:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd77
Videopac_Subsong0DisarkByteRegionEnd77:
 .globl _Videopac_Subsong0DisarkPointerRegionStart78
_Videopac_Subsong0DisarkPointerRegionStart78:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd78
Videopac_Subsong0DisarkPointerRegionEnd78:

 .globl Videopac_Subsong0_Track_12
Videopac_Subsong0_Track_12:
 .globl _Videopac_Subsong0DisarkByteRegionStart79
_Videopac_Subsong0DisarkByteRegionStart79:
	.byte 42	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd79
Videopac_Subsong0DisarkByteRegionEnd79:
 .globl _Videopac_Subsong0DisarkPointerRegionStart80
_Videopac_Subsong0DisarkPointerRegionStart80:
	.word _Videopac_Subsong0_RegisterBlock_29
 .globl Videopac_Subsong0DisarkPointerRegionEnd80
Videopac_Subsong0DisarkPointerRegionEnd80:

 .globl _Videopac_Subsong0DisarkByteRegionStart81
_Videopac_Subsong0DisarkByteRegionStart81:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd81
Videopac_Subsong0DisarkByteRegionEnd81:
 .globl _Videopac_Subsong0DisarkPointerRegionStart82
_Videopac_Subsong0DisarkPointerRegionStart82:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd82
Videopac_Subsong0DisarkPointerRegionEnd82:

 .globl _Videopac_Subsong0DisarkByteRegionStart83
_Videopac_Subsong0DisarkByteRegionStart83:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd83
Videopac_Subsong0DisarkByteRegionEnd83:
 .globl _Videopac_Subsong0DisarkPointerRegionStart84
_Videopac_Subsong0DisarkPointerRegionStart84:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd84
Videopac_Subsong0DisarkPointerRegionEnd84:

 .globl _Videopac_Subsong0DisarkByteRegionStart85
_Videopac_Subsong0DisarkByteRegionStart85:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd85
Videopac_Subsong0DisarkByteRegionEnd85:
 .globl _Videopac_Subsong0DisarkPointerRegionStart86
_Videopac_Subsong0DisarkPointerRegionStart86:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd86
Videopac_Subsong0DisarkPointerRegionEnd86:

 .globl _Videopac_Subsong0DisarkByteRegionStart87
_Videopac_Subsong0DisarkByteRegionStart87:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd87
Videopac_Subsong0DisarkByteRegionEnd87:
 .globl _Videopac_Subsong0DisarkPointerRegionStart88
_Videopac_Subsong0DisarkPointerRegionStart88:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd88
Videopac_Subsong0DisarkPointerRegionEnd88:

 .globl _Videopac_Subsong0DisarkByteRegionStart89
_Videopac_Subsong0DisarkByteRegionStart89:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd89
Videopac_Subsong0DisarkByteRegionEnd89:
 .globl _Videopac_Subsong0DisarkPointerRegionStart90
_Videopac_Subsong0DisarkPointerRegionStart90:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd90
Videopac_Subsong0DisarkPointerRegionEnd90:

 .globl _Videopac_Subsong0DisarkByteRegionStart91
_Videopac_Subsong0DisarkByteRegionStart91:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd91
Videopac_Subsong0DisarkByteRegionEnd91:
 .globl _Videopac_Subsong0DisarkPointerRegionStart92
_Videopac_Subsong0DisarkPointerRegionStart92:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd92
Videopac_Subsong0DisarkPointerRegionEnd92:

 .globl _Videopac_Subsong0DisarkByteRegionStart93
_Videopac_Subsong0DisarkByteRegionStart93:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd93
Videopac_Subsong0DisarkByteRegionEnd93:
 .globl _Videopac_Subsong0DisarkPointerRegionStart94
_Videopac_Subsong0DisarkPointerRegionStart94:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd94
Videopac_Subsong0DisarkPointerRegionEnd94:

 .globl _Videopac_Subsong0DisarkByteRegionStart95
_Videopac_Subsong0DisarkByteRegionStart95:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd95
Videopac_Subsong0DisarkByteRegionEnd95:
 .globl _Videopac_Subsong0DisarkPointerRegionStart96
_Videopac_Subsong0DisarkPointerRegionStart96:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd96
Videopac_Subsong0DisarkPointerRegionEnd96:

 .globl Videopac_Subsong0_Track_13
Videopac_Subsong0_Track_13:
 .globl _Videopac_Subsong0DisarkByteRegionStart97
_Videopac_Subsong0DisarkByteRegionStart97:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd97
Videopac_Subsong0DisarkByteRegionEnd97:
 .globl _Videopac_Subsong0DisarkPointerRegionStart98
_Videopac_Subsong0DisarkPointerRegionStart98:
	.word _Videopac_Subsong0_RegisterBlock_39
 .globl Videopac_Subsong0DisarkPointerRegionEnd98
Videopac_Subsong0DisarkPointerRegionEnd98:

 .globl _Videopac_Subsong0DisarkByteRegionStart99
_Videopac_Subsong0DisarkByteRegionStart99:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd99
Videopac_Subsong0DisarkByteRegionEnd99:
 .globl _Videopac_Subsong0DisarkPointerRegionStart100
_Videopac_Subsong0DisarkPointerRegionStart100:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd100
Videopac_Subsong0DisarkPointerRegionEnd100:

 .globl _Videopac_Subsong0DisarkByteRegionStart101
_Videopac_Subsong0DisarkByteRegionStart101:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd101
Videopac_Subsong0DisarkByteRegionEnd101:
 .globl _Videopac_Subsong0DisarkPointerRegionStart102
_Videopac_Subsong0DisarkPointerRegionStart102:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd102
Videopac_Subsong0DisarkPointerRegionEnd102:

 .globl _Videopac_Subsong0DisarkByteRegionStart103
_Videopac_Subsong0DisarkByteRegionStart103:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd103
Videopac_Subsong0DisarkByteRegionEnd103:
 .globl _Videopac_Subsong0DisarkPointerRegionStart104
_Videopac_Subsong0DisarkPointerRegionStart104:
	.word _Videopac_Subsong0_RegisterBlock_13
 .globl Videopac_Subsong0DisarkPointerRegionEnd104
Videopac_Subsong0DisarkPointerRegionEnd104:

 .globl _Videopac_Subsong0DisarkByteRegionStart105
_Videopac_Subsong0DisarkByteRegionStart105:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd105
Videopac_Subsong0DisarkByteRegionEnd105:
 .globl _Videopac_Subsong0DisarkPointerRegionStart106
_Videopac_Subsong0DisarkPointerRegionStart106:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd106
Videopac_Subsong0DisarkPointerRegionEnd106:

 .globl _Videopac_Subsong0DisarkByteRegionStart107
_Videopac_Subsong0DisarkByteRegionStart107:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd107
Videopac_Subsong0DisarkByteRegionEnd107:
 .globl _Videopac_Subsong0DisarkPointerRegionStart108
_Videopac_Subsong0DisarkPointerRegionStart108:
	.word _Videopac_Subsong0_RegisterBlock_15
 .globl Videopac_Subsong0DisarkPointerRegionEnd108
Videopac_Subsong0DisarkPointerRegionEnd108:

 .globl _Videopac_Subsong0DisarkByteRegionStart109
_Videopac_Subsong0DisarkByteRegionStart109:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd109
Videopac_Subsong0DisarkByteRegionEnd109:
 .globl _Videopac_Subsong0DisarkPointerRegionStart110
_Videopac_Subsong0DisarkPointerRegionStart110:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd110
Videopac_Subsong0DisarkPointerRegionEnd110:

 .globl _Videopac_Subsong0DisarkByteRegionStart111
_Videopac_Subsong0DisarkByteRegionStart111:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd111
Videopac_Subsong0DisarkByteRegionEnd111:
 .globl _Videopac_Subsong0DisarkPointerRegionStart112
_Videopac_Subsong0DisarkPointerRegionStart112:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd112
Videopac_Subsong0DisarkPointerRegionEnd112:

 .globl _Videopac_Subsong0DisarkByteRegionStart113
_Videopac_Subsong0DisarkByteRegionStart113:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd113
Videopac_Subsong0DisarkByteRegionEnd113:
 .globl _Videopac_Subsong0DisarkPointerRegionStart114
_Videopac_Subsong0DisarkPointerRegionStart114:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd114
Videopac_Subsong0DisarkPointerRegionEnd114:

 .globl Videopac_Subsong0_Track_14
Videopac_Subsong0_Track_14:
 .globl _Videopac_Subsong0DisarkByteRegionStart115
_Videopac_Subsong0DisarkByteRegionStart115:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd115
Videopac_Subsong0DisarkByteRegionEnd115:
 .globl _Videopac_Subsong0DisarkPointerRegionStart116
_Videopac_Subsong0DisarkPointerRegionStart116:
	.word _Videopac_Subsong0_RegisterBlock_149
 .globl Videopac_Subsong0DisarkPointerRegionEnd116
Videopac_Subsong0DisarkPointerRegionEnd116:

 .globl _Videopac_Subsong0DisarkByteRegionStart117
_Videopac_Subsong0DisarkByteRegionStart117:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd117
Videopac_Subsong0DisarkByteRegionEnd117:
 .globl _Videopac_Subsong0DisarkPointerRegionStart118
_Videopac_Subsong0DisarkPointerRegionStart118:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd118
Videopac_Subsong0DisarkPointerRegionEnd118:

 .globl _Videopac_Subsong0DisarkByteRegionStart119
_Videopac_Subsong0DisarkByteRegionStart119:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd119
Videopac_Subsong0DisarkByteRegionEnd119:
 .globl _Videopac_Subsong0DisarkPointerRegionStart120
_Videopac_Subsong0DisarkPointerRegionStart120:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd120
Videopac_Subsong0DisarkPointerRegionEnd120:

 .globl _Videopac_Subsong0DisarkByteRegionStart121
_Videopac_Subsong0DisarkByteRegionStart121:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd121
Videopac_Subsong0DisarkByteRegionEnd121:
 .globl _Videopac_Subsong0DisarkPointerRegionStart122
_Videopac_Subsong0DisarkPointerRegionStart122:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd122
Videopac_Subsong0DisarkPointerRegionEnd122:

 .globl _Videopac_Subsong0DisarkByteRegionStart123
_Videopac_Subsong0DisarkByteRegionStart123:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd123
Videopac_Subsong0DisarkByteRegionEnd123:
 .globl _Videopac_Subsong0DisarkPointerRegionStart124
_Videopac_Subsong0DisarkPointerRegionStart124:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd124
Videopac_Subsong0DisarkPointerRegionEnd124:

 .globl _Videopac_Subsong0DisarkByteRegionStart125
_Videopac_Subsong0DisarkByteRegionStart125:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd125
Videopac_Subsong0DisarkByteRegionEnd125:
 .globl _Videopac_Subsong0DisarkPointerRegionStart126
_Videopac_Subsong0DisarkPointerRegionStart126:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd126
Videopac_Subsong0DisarkPointerRegionEnd126:

 .globl _Videopac_Subsong0DisarkByteRegionStart127
_Videopac_Subsong0DisarkByteRegionStart127:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd127
Videopac_Subsong0DisarkByteRegionEnd127:
 .globl _Videopac_Subsong0DisarkPointerRegionStart128
_Videopac_Subsong0DisarkPointerRegionStart128:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd128
Videopac_Subsong0DisarkPointerRegionEnd128:

 .globl _Videopac_Subsong0DisarkByteRegionStart129
_Videopac_Subsong0DisarkByteRegionStart129:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd129
Videopac_Subsong0DisarkByteRegionEnd129:
 .globl _Videopac_Subsong0DisarkPointerRegionStart130
_Videopac_Subsong0DisarkPointerRegionStart130:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd130
Videopac_Subsong0DisarkPointerRegionEnd130:

 .globl _Videopac_Subsong0DisarkByteRegionStart131
_Videopac_Subsong0DisarkByteRegionStart131:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd131
Videopac_Subsong0DisarkByteRegionEnd131:
 .globl _Videopac_Subsong0DisarkPointerRegionStart132
_Videopac_Subsong0DisarkPointerRegionStart132:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd132
Videopac_Subsong0DisarkPointerRegionEnd132:

 .globl Videopac_Subsong0_Track_15
Videopac_Subsong0_Track_15:
 .globl _Videopac_Subsong0DisarkByteRegionStart133
_Videopac_Subsong0DisarkByteRegionStart133:
	.byte 42	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd133
Videopac_Subsong0DisarkByteRegionEnd133:
 .globl _Videopac_Subsong0DisarkPointerRegionStart134
_Videopac_Subsong0DisarkPointerRegionStart134:
	.word _Videopac_Subsong0_RegisterBlock_59
 .globl Videopac_Subsong0DisarkPointerRegionEnd134
Videopac_Subsong0DisarkPointerRegionEnd134:

 .globl _Videopac_Subsong0DisarkByteRegionStart135
_Videopac_Subsong0DisarkByteRegionStart135:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd135
Videopac_Subsong0DisarkByteRegionEnd135:
 .globl _Videopac_Subsong0DisarkPointerRegionStart136
_Videopac_Subsong0DisarkPointerRegionStart136:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd136
Videopac_Subsong0DisarkPointerRegionEnd136:

 .globl _Videopac_Subsong0DisarkByteRegionStart137
_Videopac_Subsong0DisarkByteRegionStart137:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd137
Videopac_Subsong0DisarkByteRegionEnd137:
 .globl _Videopac_Subsong0DisarkPointerRegionStart138
_Videopac_Subsong0DisarkPointerRegionStart138:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd138
Videopac_Subsong0DisarkPointerRegionEnd138:

 .globl _Videopac_Subsong0DisarkByteRegionStart139
_Videopac_Subsong0DisarkByteRegionStart139:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd139
Videopac_Subsong0DisarkByteRegionEnd139:
 .globl _Videopac_Subsong0DisarkPointerRegionStart140
_Videopac_Subsong0DisarkPointerRegionStart140:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd140
Videopac_Subsong0DisarkPointerRegionEnd140:

 .globl _Videopac_Subsong0DisarkByteRegionStart141
_Videopac_Subsong0DisarkByteRegionStart141:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd141
Videopac_Subsong0DisarkByteRegionEnd141:
 .globl _Videopac_Subsong0DisarkPointerRegionStart142
_Videopac_Subsong0DisarkPointerRegionStart142:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd142
Videopac_Subsong0DisarkPointerRegionEnd142:

 .globl _Videopac_Subsong0DisarkByteRegionStart143
_Videopac_Subsong0DisarkByteRegionStart143:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd143
Videopac_Subsong0DisarkByteRegionEnd143:
 .globl _Videopac_Subsong0DisarkPointerRegionStart144
_Videopac_Subsong0DisarkPointerRegionStart144:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd144
Videopac_Subsong0DisarkPointerRegionEnd144:

 .globl _Videopac_Subsong0DisarkByteRegionStart145
_Videopac_Subsong0DisarkByteRegionStart145:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd145
Videopac_Subsong0DisarkByteRegionEnd145:
 .globl _Videopac_Subsong0DisarkPointerRegionStart146
_Videopac_Subsong0DisarkPointerRegionStart146:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd146
Videopac_Subsong0DisarkPointerRegionEnd146:

 .globl _Videopac_Subsong0DisarkByteRegionStart147
_Videopac_Subsong0DisarkByteRegionStart147:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd147
Videopac_Subsong0DisarkByteRegionEnd147:
 .globl _Videopac_Subsong0DisarkPointerRegionStart148
_Videopac_Subsong0DisarkPointerRegionStart148:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd148
Videopac_Subsong0DisarkPointerRegionEnd148:

 .globl _Videopac_Subsong0DisarkByteRegionStart149
_Videopac_Subsong0DisarkByteRegionStart149:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd149
Videopac_Subsong0DisarkByteRegionEnd149:
 .globl _Videopac_Subsong0DisarkPointerRegionStart150
_Videopac_Subsong0DisarkPointerRegionStart150:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd150
Videopac_Subsong0DisarkPointerRegionEnd150:

 .globl Videopac_Subsong0_Track_16
Videopac_Subsong0_Track_16:
 .globl _Videopac_Subsong0DisarkByteRegionStart151
_Videopac_Subsong0DisarkByteRegionStart151:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd151
Videopac_Subsong0DisarkByteRegionEnd151:
 .globl _Videopac_Subsong0DisarkPointerRegionStart152
_Videopac_Subsong0DisarkPointerRegionStart152:
	.word _Videopac_Subsong0_RegisterBlock_69
 .globl Videopac_Subsong0DisarkPointerRegionEnd152
Videopac_Subsong0DisarkPointerRegionEnd152:

 .globl _Videopac_Subsong0DisarkByteRegionStart153
_Videopac_Subsong0DisarkByteRegionStart153:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd153
Videopac_Subsong0DisarkByteRegionEnd153:
 .globl _Videopac_Subsong0DisarkPointerRegionStart154
_Videopac_Subsong0DisarkPointerRegionStart154:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd154
Videopac_Subsong0DisarkPointerRegionEnd154:

 .globl _Videopac_Subsong0DisarkByteRegionStart155
_Videopac_Subsong0DisarkByteRegionStart155:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd155
Videopac_Subsong0DisarkByteRegionEnd155:
 .globl _Videopac_Subsong0DisarkPointerRegionStart156
_Videopac_Subsong0DisarkPointerRegionStart156:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd156
Videopac_Subsong0DisarkPointerRegionEnd156:

 .globl _Videopac_Subsong0DisarkByteRegionStart157
_Videopac_Subsong0DisarkByteRegionStart157:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd157
Videopac_Subsong0DisarkByteRegionEnd157:
 .globl _Videopac_Subsong0DisarkPointerRegionStart158
_Videopac_Subsong0DisarkPointerRegionStart158:
	.word _Videopac_Subsong0_RegisterBlock_13
 .globl Videopac_Subsong0DisarkPointerRegionEnd158
Videopac_Subsong0DisarkPointerRegionEnd158:

 .globl _Videopac_Subsong0DisarkByteRegionStart159
_Videopac_Subsong0DisarkByteRegionStart159:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd159
Videopac_Subsong0DisarkByteRegionEnd159:
 .globl _Videopac_Subsong0DisarkPointerRegionStart160
_Videopac_Subsong0DisarkPointerRegionStart160:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd160
Videopac_Subsong0DisarkPointerRegionEnd160:

 .globl _Videopac_Subsong0DisarkByteRegionStart161
_Videopac_Subsong0DisarkByteRegionStart161:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd161
Videopac_Subsong0DisarkByteRegionEnd161:
 .globl _Videopac_Subsong0DisarkPointerRegionStart162
_Videopac_Subsong0DisarkPointerRegionStart162:
	.word _Videopac_Subsong0_RegisterBlock_15
 .globl Videopac_Subsong0DisarkPointerRegionEnd162
Videopac_Subsong0DisarkPointerRegionEnd162:

 .globl _Videopac_Subsong0DisarkByteRegionStart163
_Videopac_Subsong0DisarkByteRegionStart163:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd163
Videopac_Subsong0DisarkByteRegionEnd163:
 .globl _Videopac_Subsong0DisarkPointerRegionStart164
_Videopac_Subsong0DisarkPointerRegionStart164:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd164
Videopac_Subsong0DisarkPointerRegionEnd164:

 .globl _Videopac_Subsong0DisarkByteRegionStart165
_Videopac_Subsong0DisarkByteRegionStart165:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd165
Videopac_Subsong0DisarkByteRegionEnd165:
 .globl _Videopac_Subsong0DisarkPointerRegionStart166
_Videopac_Subsong0DisarkPointerRegionStart166:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd166
Videopac_Subsong0DisarkPointerRegionEnd166:

 .globl _Videopac_Subsong0DisarkByteRegionStart167
_Videopac_Subsong0DisarkByteRegionStart167:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd167
Videopac_Subsong0DisarkByteRegionEnd167:
 .globl _Videopac_Subsong0DisarkPointerRegionStart168
_Videopac_Subsong0DisarkPointerRegionStart168:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd168
Videopac_Subsong0DisarkPointerRegionEnd168:

 .globl Videopac_Subsong0_Track_17
Videopac_Subsong0_Track_17:
 .globl _Videopac_Subsong0DisarkByteRegionStart169
_Videopac_Subsong0DisarkByteRegionStart169:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd169
Videopac_Subsong0DisarkByteRegionEnd169:
 .globl _Videopac_Subsong0DisarkPointerRegionStart170
_Videopac_Subsong0DisarkPointerRegionStart170:
	.word _Videopac_Subsong0_RegisterBlock_79
 .globl Videopac_Subsong0DisarkPointerRegionEnd170
Videopac_Subsong0DisarkPointerRegionEnd170:

 .globl _Videopac_Subsong0DisarkByteRegionStart171
_Videopac_Subsong0DisarkByteRegionStart171:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd171
Videopac_Subsong0DisarkByteRegionEnd171:
 .globl _Videopac_Subsong0DisarkPointerRegionStart172
_Videopac_Subsong0DisarkPointerRegionStart172:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd172
Videopac_Subsong0DisarkPointerRegionEnd172:

 .globl _Videopac_Subsong0DisarkByteRegionStart173
_Videopac_Subsong0DisarkByteRegionStart173:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd173
Videopac_Subsong0DisarkByteRegionEnd173:
 .globl _Videopac_Subsong0DisarkPointerRegionStart174
_Videopac_Subsong0DisarkPointerRegionStart174:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd174
Videopac_Subsong0DisarkPointerRegionEnd174:

 .globl _Videopac_Subsong0DisarkByteRegionStart175
_Videopac_Subsong0DisarkByteRegionStart175:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd175
Videopac_Subsong0DisarkByteRegionEnd175:
 .globl _Videopac_Subsong0DisarkPointerRegionStart176
_Videopac_Subsong0DisarkPointerRegionStart176:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd176
Videopac_Subsong0DisarkPointerRegionEnd176:

 .globl _Videopac_Subsong0DisarkByteRegionStart177
_Videopac_Subsong0DisarkByteRegionStart177:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd177
Videopac_Subsong0DisarkByteRegionEnd177:
 .globl _Videopac_Subsong0DisarkPointerRegionStart178
_Videopac_Subsong0DisarkPointerRegionStart178:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd178
Videopac_Subsong0DisarkPointerRegionEnd178:

 .globl _Videopac_Subsong0DisarkByteRegionStart179
_Videopac_Subsong0DisarkByteRegionStart179:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd179
Videopac_Subsong0DisarkByteRegionEnd179:
 .globl _Videopac_Subsong0DisarkPointerRegionStart180
_Videopac_Subsong0DisarkPointerRegionStart180:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd180
Videopac_Subsong0DisarkPointerRegionEnd180:

 .globl _Videopac_Subsong0DisarkByteRegionStart181
_Videopac_Subsong0DisarkByteRegionStart181:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd181
Videopac_Subsong0DisarkByteRegionEnd181:
 .globl _Videopac_Subsong0DisarkPointerRegionStart182
_Videopac_Subsong0DisarkPointerRegionStart182:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd182
Videopac_Subsong0DisarkPointerRegionEnd182:

 .globl _Videopac_Subsong0DisarkByteRegionStart183
_Videopac_Subsong0DisarkByteRegionStart183:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd183
Videopac_Subsong0DisarkByteRegionEnd183:
 .globl _Videopac_Subsong0DisarkPointerRegionStart184
_Videopac_Subsong0DisarkPointerRegionStart184:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd184
Videopac_Subsong0DisarkPointerRegionEnd184:

 .globl _Videopac_Subsong0DisarkByteRegionStart185
_Videopac_Subsong0DisarkByteRegionStart185:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd185
Videopac_Subsong0DisarkByteRegionEnd185:
 .globl _Videopac_Subsong0DisarkPointerRegionStart186
_Videopac_Subsong0DisarkPointerRegionStart186:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd186
Videopac_Subsong0DisarkPointerRegionEnd186:

 .globl Videopac_Subsong0_Track_18
Videopac_Subsong0_Track_18:
 .globl _Videopac_Subsong0DisarkByteRegionStart187
_Videopac_Subsong0DisarkByteRegionStart187:
	.byte 42	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd187
Videopac_Subsong0DisarkByteRegionEnd187:
 .globl _Videopac_Subsong0DisarkPointerRegionStart188
_Videopac_Subsong0DisarkPointerRegionStart188:
	.word _Videopac_Subsong0_RegisterBlock_59
 .globl Videopac_Subsong0DisarkPointerRegionEnd188
Videopac_Subsong0DisarkPointerRegionEnd188:

 .globl _Videopac_Subsong0DisarkByteRegionStart189
_Videopac_Subsong0DisarkByteRegionStart189:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd189
Videopac_Subsong0DisarkByteRegionEnd189:
 .globl _Videopac_Subsong0DisarkPointerRegionStart190
_Videopac_Subsong0DisarkPointerRegionStart190:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd190
Videopac_Subsong0DisarkPointerRegionEnd190:

 .globl _Videopac_Subsong0DisarkByteRegionStart191
_Videopac_Subsong0DisarkByteRegionStart191:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd191
Videopac_Subsong0DisarkByteRegionEnd191:
 .globl _Videopac_Subsong0DisarkPointerRegionStart192
_Videopac_Subsong0DisarkPointerRegionStart192:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd192
Videopac_Subsong0DisarkPointerRegionEnd192:

 .globl _Videopac_Subsong0DisarkByteRegionStart193
_Videopac_Subsong0DisarkByteRegionStart193:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd193
Videopac_Subsong0DisarkByteRegionEnd193:
 .globl _Videopac_Subsong0DisarkPointerRegionStart194
_Videopac_Subsong0DisarkPointerRegionStart194:
	.word _Videopac_Subsong0_RegisterBlock_92
 .globl Videopac_Subsong0DisarkPointerRegionEnd194
Videopac_Subsong0DisarkPointerRegionEnd194:

 .globl _Videopac_Subsong0DisarkByteRegionStart195
_Videopac_Subsong0DisarkByteRegionStart195:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd195
Videopac_Subsong0DisarkByteRegionEnd195:
 .globl _Videopac_Subsong0DisarkPointerRegionStart196
_Videopac_Subsong0DisarkPointerRegionStart196:
	.word _Videopac_Subsong0_RegisterBlock_93
 .globl Videopac_Subsong0DisarkPointerRegionEnd196
Videopac_Subsong0DisarkPointerRegionEnd196:

 .globl _Videopac_Subsong0DisarkByteRegionStart197
_Videopac_Subsong0DisarkByteRegionStart197:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd197
Videopac_Subsong0DisarkByteRegionEnd197:
 .globl _Videopac_Subsong0DisarkPointerRegionStart198
_Videopac_Subsong0DisarkPointerRegionStart198:
	.word _Videopac_Subsong0_RegisterBlock_94
 .globl Videopac_Subsong0DisarkPointerRegionEnd198
Videopac_Subsong0DisarkPointerRegionEnd198:

 .globl _Videopac_Subsong0DisarkByteRegionStart199
_Videopac_Subsong0DisarkByteRegionStart199:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd199
Videopac_Subsong0DisarkByteRegionEnd199:
 .globl _Videopac_Subsong0DisarkPointerRegionStart200
_Videopac_Subsong0DisarkPointerRegionStart200:
	.word _Videopac_Subsong0_RegisterBlock_95
 .globl Videopac_Subsong0DisarkPointerRegionEnd200
Videopac_Subsong0DisarkPointerRegionEnd200:

 .globl _Videopac_Subsong0DisarkByteRegionStart201
_Videopac_Subsong0DisarkByteRegionStart201:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd201
Videopac_Subsong0DisarkByteRegionEnd201:
 .globl _Videopac_Subsong0DisarkPointerRegionStart202
_Videopac_Subsong0DisarkPointerRegionStart202:
	.word _Videopac_Subsong0_RegisterBlock_96
 .globl Videopac_Subsong0DisarkPointerRegionEnd202
Videopac_Subsong0DisarkPointerRegionEnd202:

 .globl _Videopac_Subsong0DisarkByteRegionStart203
_Videopac_Subsong0DisarkByteRegionStart203:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd203
Videopac_Subsong0DisarkByteRegionEnd203:
 .globl _Videopac_Subsong0DisarkPointerRegionStart204
_Videopac_Subsong0DisarkPointerRegionStart204:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd204
Videopac_Subsong0DisarkPointerRegionEnd204:

 .globl Videopac_Subsong0_Track_19
Videopac_Subsong0_Track_19:
 .globl _Videopac_Subsong0DisarkByteRegionStart205
_Videopac_Subsong0DisarkByteRegionStart205:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd205
Videopac_Subsong0DisarkByteRegionEnd205:
 .globl _Videopac_Subsong0DisarkPointerRegionStart206
_Videopac_Subsong0DisarkPointerRegionStart206:
	.word _Videopac_Subsong0_RegisterBlock_69
 .globl Videopac_Subsong0DisarkPointerRegionEnd206
Videopac_Subsong0DisarkPointerRegionEnd206:

 .globl _Videopac_Subsong0DisarkByteRegionStart207
_Videopac_Subsong0DisarkByteRegionStart207:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd207
Videopac_Subsong0DisarkByteRegionEnd207:
 .globl _Videopac_Subsong0DisarkPointerRegionStart208
_Videopac_Subsong0DisarkPointerRegionStart208:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd208
Videopac_Subsong0DisarkPointerRegionEnd208:

 .globl _Videopac_Subsong0DisarkByteRegionStart209
_Videopac_Subsong0DisarkByteRegionStart209:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd209
Videopac_Subsong0DisarkByteRegionEnd209:
 .globl _Videopac_Subsong0DisarkPointerRegionStart210
_Videopac_Subsong0DisarkPointerRegionStart210:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd210
Videopac_Subsong0DisarkPointerRegionEnd210:

 .globl _Videopac_Subsong0DisarkByteRegionStart211
_Videopac_Subsong0DisarkByteRegionStart211:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd211
Videopac_Subsong0DisarkByteRegionEnd211:
 .globl _Videopac_Subsong0DisarkPointerRegionStart212
_Videopac_Subsong0DisarkPointerRegionStart212:
	.word _Videopac_Subsong0_RegisterBlock_102
 .globl Videopac_Subsong0DisarkPointerRegionEnd212
Videopac_Subsong0DisarkPointerRegionEnd212:

 .globl _Videopac_Subsong0DisarkByteRegionStart213
_Videopac_Subsong0DisarkByteRegionStart213:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd213
Videopac_Subsong0DisarkByteRegionEnd213:
 .globl _Videopac_Subsong0DisarkPointerRegionStart214
_Videopac_Subsong0DisarkPointerRegionStart214:
	.word _Videopac_Subsong0_RegisterBlock_103
 .globl Videopac_Subsong0DisarkPointerRegionEnd214
Videopac_Subsong0DisarkPointerRegionEnd214:

 .globl _Videopac_Subsong0DisarkByteRegionStart215
_Videopac_Subsong0DisarkByteRegionStart215:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd215
Videopac_Subsong0DisarkByteRegionEnd215:
 .globl _Videopac_Subsong0DisarkPointerRegionStart216
_Videopac_Subsong0DisarkPointerRegionStart216:
	.word _Videopac_Subsong0_RegisterBlock_104
 .globl Videopac_Subsong0DisarkPointerRegionEnd216
Videopac_Subsong0DisarkPointerRegionEnd216:

 .globl _Videopac_Subsong0DisarkByteRegionStart217
_Videopac_Subsong0DisarkByteRegionStart217:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd217
Videopac_Subsong0DisarkByteRegionEnd217:
 .globl _Videopac_Subsong0DisarkPointerRegionStart218
_Videopac_Subsong0DisarkPointerRegionStart218:
	.word _Videopac_Subsong0_RegisterBlock_105
 .globl Videopac_Subsong0DisarkPointerRegionEnd218
Videopac_Subsong0DisarkPointerRegionEnd218:

 .globl _Videopac_Subsong0DisarkByteRegionStart219
_Videopac_Subsong0DisarkByteRegionStart219:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd219
Videopac_Subsong0DisarkByteRegionEnd219:
 .globl _Videopac_Subsong0DisarkPointerRegionStart220
_Videopac_Subsong0DisarkPointerRegionStart220:
	.word _Videopac_Subsong0_RegisterBlock_106
 .globl Videopac_Subsong0DisarkPointerRegionEnd220
Videopac_Subsong0DisarkPointerRegionEnd220:

 .globl _Videopac_Subsong0DisarkByteRegionStart221
_Videopac_Subsong0DisarkByteRegionStart221:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd221
Videopac_Subsong0DisarkByteRegionEnd221:
 .globl _Videopac_Subsong0DisarkPointerRegionStart222
_Videopac_Subsong0DisarkPointerRegionStart222:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd222
Videopac_Subsong0DisarkPointerRegionEnd222:

 .globl Videopac_Subsong0_Track_20
Videopac_Subsong0_Track_20:
 .globl _Videopac_Subsong0DisarkByteRegionStart223
_Videopac_Subsong0DisarkByteRegionStart223:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd223
Videopac_Subsong0DisarkByteRegionEnd223:
 .globl _Videopac_Subsong0DisarkPointerRegionStart224
_Videopac_Subsong0DisarkPointerRegionStart224:
	.word _Videopac_Subsong0_RegisterBlock_79
 .globl Videopac_Subsong0DisarkPointerRegionEnd224
Videopac_Subsong0DisarkPointerRegionEnd224:

 .globl _Videopac_Subsong0DisarkByteRegionStart225
_Videopac_Subsong0DisarkByteRegionStart225:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd225
Videopac_Subsong0DisarkByteRegionEnd225:
 .globl _Videopac_Subsong0DisarkPointerRegionStart226
_Videopac_Subsong0DisarkPointerRegionStart226:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd226
Videopac_Subsong0DisarkPointerRegionEnd226:

 .globl _Videopac_Subsong0DisarkByteRegionStart227
_Videopac_Subsong0DisarkByteRegionStart227:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd227
Videopac_Subsong0DisarkByteRegionEnd227:
 .globl _Videopac_Subsong0DisarkPointerRegionStart228
_Videopac_Subsong0DisarkPointerRegionStart228:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd228
Videopac_Subsong0DisarkPointerRegionEnd228:

 .globl _Videopac_Subsong0DisarkByteRegionStart229
_Videopac_Subsong0DisarkByteRegionStart229:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd229
Videopac_Subsong0DisarkByteRegionEnd229:
 .globl _Videopac_Subsong0DisarkPointerRegionStart230
_Videopac_Subsong0DisarkPointerRegionStart230:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd230
Videopac_Subsong0DisarkPointerRegionEnd230:

 .globl _Videopac_Subsong0DisarkByteRegionStart231
_Videopac_Subsong0DisarkByteRegionStart231:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd231
Videopac_Subsong0DisarkByteRegionEnd231:
 .globl _Videopac_Subsong0DisarkPointerRegionStart232
_Videopac_Subsong0DisarkPointerRegionStart232:
	.word _Videopac_Subsong0_RegisterBlock_113
 .globl Videopac_Subsong0DisarkPointerRegionEnd232
Videopac_Subsong0DisarkPointerRegionEnd232:

 .globl _Videopac_Subsong0DisarkByteRegionStart233
_Videopac_Subsong0DisarkByteRegionStart233:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd233
Videopac_Subsong0DisarkByteRegionEnd233:
 .globl _Videopac_Subsong0DisarkPointerRegionStart234
_Videopac_Subsong0DisarkPointerRegionStart234:
	.word _Videopac_Subsong0_RegisterBlock_114
 .globl Videopac_Subsong0DisarkPointerRegionEnd234
Videopac_Subsong0DisarkPointerRegionEnd234:

 .globl _Videopac_Subsong0DisarkByteRegionStart235
_Videopac_Subsong0DisarkByteRegionStart235:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd235
Videopac_Subsong0DisarkByteRegionEnd235:
 .globl _Videopac_Subsong0DisarkPointerRegionStart236
_Videopac_Subsong0DisarkPointerRegionStart236:
	.word _Videopac_Subsong0_RegisterBlock_115
 .globl Videopac_Subsong0DisarkPointerRegionEnd236
Videopac_Subsong0DisarkPointerRegionEnd236:

 .globl _Videopac_Subsong0DisarkByteRegionStart237
_Videopac_Subsong0DisarkByteRegionStart237:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd237
Videopac_Subsong0DisarkByteRegionEnd237:
 .globl _Videopac_Subsong0DisarkPointerRegionStart238
_Videopac_Subsong0DisarkPointerRegionStart238:
	.word _Videopac_Subsong0_RegisterBlock_116
 .globl Videopac_Subsong0DisarkPointerRegionEnd238
Videopac_Subsong0DisarkPointerRegionEnd238:

 .globl _Videopac_Subsong0DisarkByteRegionStart239
_Videopac_Subsong0DisarkByteRegionStart239:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd239
Videopac_Subsong0DisarkByteRegionEnd239:
 .globl _Videopac_Subsong0DisarkPointerRegionStart240
_Videopac_Subsong0DisarkPointerRegionStart240:
	.word _Videopac_Subsong0_RegisterBlock_117
 .globl Videopac_Subsong0DisarkPointerRegionEnd240
Videopac_Subsong0DisarkPointerRegionEnd240:

 .globl Videopac_Subsong0_Track_21
Videopac_Subsong0_Track_21:
 .globl _Videopac_Subsong0DisarkByteRegionStart241
_Videopac_Subsong0DisarkByteRegionStart241:
	.byte 42	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd241
Videopac_Subsong0DisarkByteRegionEnd241:
 .globl _Videopac_Subsong0DisarkPointerRegionStart242
_Videopac_Subsong0DisarkPointerRegionStart242:
	.word _Videopac_Subsong0_RegisterBlock_29
 .globl Videopac_Subsong0DisarkPointerRegionEnd242
Videopac_Subsong0DisarkPointerRegionEnd242:

 .globl _Videopac_Subsong0DisarkByteRegionStart243
_Videopac_Subsong0DisarkByteRegionStart243:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd243
Videopac_Subsong0DisarkByteRegionEnd243:
 .globl _Videopac_Subsong0DisarkPointerRegionStart244
_Videopac_Subsong0DisarkPointerRegionStart244:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd244
Videopac_Subsong0DisarkPointerRegionEnd244:

 .globl _Videopac_Subsong0DisarkByteRegionStart245
_Videopac_Subsong0DisarkByteRegionStart245:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd245
Videopac_Subsong0DisarkByteRegionEnd245:
 .globl _Videopac_Subsong0DisarkPointerRegionStart246
_Videopac_Subsong0DisarkPointerRegionStart246:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd246
Videopac_Subsong0DisarkPointerRegionEnd246:

 .globl _Videopac_Subsong0DisarkByteRegionStart247
_Videopac_Subsong0DisarkByteRegionStart247:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd247
Videopac_Subsong0DisarkByteRegionEnd247:
 .globl _Videopac_Subsong0DisarkPointerRegionStart248
_Videopac_Subsong0DisarkPointerRegionStart248:
	.word _Videopac_Subsong0_RegisterBlock_92
 .globl Videopac_Subsong0DisarkPointerRegionEnd248
Videopac_Subsong0DisarkPointerRegionEnd248:

 .globl _Videopac_Subsong0DisarkByteRegionStart249
_Videopac_Subsong0DisarkByteRegionStart249:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd249
Videopac_Subsong0DisarkByteRegionEnd249:
 .globl _Videopac_Subsong0DisarkPointerRegionStart250
_Videopac_Subsong0DisarkPointerRegionStart250:
	.word _Videopac_Subsong0_RegisterBlock_93
 .globl Videopac_Subsong0DisarkPointerRegionEnd250
Videopac_Subsong0DisarkPointerRegionEnd250:

 .globl _Videopac_Subsong0DisarkByteRegionStart251
_Videopac_Subsong0DisarkByteRegionStart251:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd251
Videopac_Subsong0DisarkByteRegionEnd251:
 .globl _Videopac_Subsong0DisarkPointerRegionStart252
_Videopac_Subsong0DisarkPointerRegionStart252:
	.word _Videopac_Subsong0_RegisterBlock_94
 .globl Videopac_Subsong0DisarkPointerRegionEnd252
Videopac_Subsong0DisarkPointerRegionEnd252:

 .globl _Videopac_Subsong0DisarkByteRegionStart253
_Videopac_Subsong0DisarkByteRegionStart253:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd253
Videopac_Subsong0DisarkByteRegionEnd253:
 .globl _Videopac_Subsong0DisarkPointerRegionStart254
_Videopac_Subsong0DisarkPointerRegionStart254:
	.word _Videopac_Subsong0_RegisterBlock_95
 .globl Videopac_Subsong0DisarkPointerRegionEnd254
Videopac_Subsong0DisarkPointerRegionEnd254:

 .globl _Videopac_Subsong0DisarkByteRegionStart255
_Videopac_Subsong0DisarkByteRegionStart255:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd255
Videopac_Subsong0DisarkByteRegionEnd255:
 .globl _Videopac_Subsong0DisarkPointerRegionStart256
_Videopac_Subsong0DisarkPointerRegionStart256:
	.word _Videopac_Subsong0_RegisterBlock_96
 .globl Videopac_Subsong0DisarkPointerRegionEnd256
Videopac_Subsong0DisarkPointerRegionEnd256:

 .globl _Videopac_Subsong0DisarkByteRegionStart257
_Videopac_Subsong0DisarkByteRegionStart257:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd257
Videopac_Subsong0DisarkByteRegionEnd257:
 .globl _Videopac_Subsong0DisarkPointerRegionStart258
_Videopac_Subsong0DisarkPointerRegionStart258:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd258
Videopac_Subsong0DisarkPointerRegionEnd258:

 .globl Videopac_Subsong0_Track_22
Videopac_Subsong0_Track_22:
 .globl _Videopac_Subsong0DisarkByteRegionStart259
_Videopac_Subsong0DisarkByteRegionStart259:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd259
Videopac_Subsong0DisarkByteRegionEnd259:
 .globl _Videopac_Subsong0DisarkPointerRegionStart260
_Videopac_Subsong0DisarkPointerRegionStart260:
	.word _Videopac_Subsong0_RegisterBlock_39
 .globl Videopac_Subsong0DisarkPointerRegionEnd260
Videopac_Subsong0DisarkPointerRegionEnd260:

 .globl _Videopac_Subsong0DisarkByteRegionStart261
_Videopac_Subsong0DisarkByteRegionStart261:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd261
Videopac_Subsong0DisarkByteRegionEnd261:
 .globl _Videopac_Subsong0DisarkPointerRegionStart262
_Videopac_Subsong0DisarkPointerRegionStart262:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd262
Videopac_Subsong0DisarkPointerRegionEnd262:

 .globl _Videopac_Subsong0DisarkByteRegionStart263
_Videopac_Subsong0DisarkByteRegionStart263:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd263
Videopac_Subsong0DisarkByteRegionEnd263:
 .globl _Videopac_Subsong0DisarkPointerRegionStart264
_Videopac_Subsong0DisarkPointerRegionStart264:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd264
Videopac_Subsong0DisarkPointerRegionEnd264:

 .globl _Videopac_Subsong0DisarkByteRegionStart265
_Videopac_Subsong0DisarkByteRegionStart265:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd265
Videopac_Subsong0DisarkByteRegionEnd265:
 .globl _Videopac_Subsong0DisarkPointerRegionStart266
_Videopac_Subsong0DisarkPointerRegionStart266:
	.word _Videopac_Subsong0_RegisterBlock_102
 .globl Videopac_Subsong0DisarkPointerRegionEnd266
Videopac_Subsong0DisarkPointerRegionEnd266:

 .globl _Videopac_Subsong0DisarkByteRegionStart267
_Videopac_Subsong0DisarkByteRegionStart267:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd267
Videopac_Subsong0DisarkByteRegionEnd267:
 .globl _Videopac_Subsong0DisarkPointerRegionStart268
_Videopac_Subsong0DisarkPointerRegionStart268:
	.word _Videopac_Subsong0_RegisterBlock_103
 .globl Videopac_Subsong0DisarkPointerRegionEnd268
Videopac_Subsong0DisarkPointerRegionEnd268:

 .globl _Videopac_Subsong0DisarkByteRegionStart269
_Videopac_Subsong0DisarkByteRegionStart269:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd269
Videopac_Subsong0DisarkByteRegionEnd269:
 .globl _Videopac_Subsong0DisarkPointerRegionStart270
_Videopac_Subsong0DisarkPointerRegionStart270:
	.word _Videopac_Subsong0_RegisterBlock_104
 .globl Videopac_Subsong0DisarkPointerRegionEnd270
Videopac_Subsong0DisarkPointerRegionEnd270:

 .globl _Videopac_Subsong0DisarkByteRegionStart271
_Videopac_Subsong0DisarkByteRegionStart271:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd271
Videopac_Subsong0DisarkByteRegionEnd271:
 .globl _Videopac_Subsong0DisarkPointerRegionStart272
_Videopac_Subsong0DisarkPointerRegionStart272:
	.word _Videopac_Subsong0_RegisterBlock_105
 .globl Videopac_Subsong0DisarkPointerRegionEnd272
Videopac_Subsong0DisarkPointerRegionEnd272:

 .globl _Videopac_Subsong0DisarkByteRegionStart273
_Videopac_Subsong0DisarkByteRegionStart273:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd273
Videopac_Subsong0DisarkByteRegionEnd273:
 .globl _Videopac_Subsong0DisarkPointerRegionStart274
_Videopac_Subsong0DisarkPointerRegionStart274:
	.word _Videopac_Subsong0_RegisterBlock_106
 .globl Videopac_Subsong0DisarkPointerRegionEnd274
Videopac_Subsong0DisarkPointerRegionEnd274:

 .globl _Videopac_Subsong0DisarkByteRegionStart275
_Videopac_Subsong0DisarkByteRegionStart275:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd275
Videopac_Subsong0DisarkByteRegionEnd275:
 .globl _Videopac_Subsong0DisarkPointerRegionStart276
_Videopac_Subsong0DisarkPointerRegionStart276:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd276
Videopac_Subsong0DisarkPointerRegionEnd276:

 .globl Videopac_Subsong0_Track_23
Videopac_Subsong0_Track_23:
 .globl _Videopac_Subsong0DisarkByteRegionStart277
_Videopac_Subsong0DisarkByteRegionStart277:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd277
Videopac_Subsong0DisarkByteRegionEnd277:
 .globl _Videopac_Subsong0DisarkPointerRegionStart278
_Videopac_Subsong0DisarkPointerRegionStart278:
	.word _Videopac_Subsong0_RegisterBlock_149
 .globl Videopac_Subsong0DisarkPointerRegionEnd278
Videopac_Subsong0DisarkPointerRegionEnd278:

 .globl _Videopac_Subsong0DisarkByteRegionStart279
_Videopac_Subsong0DisarkByteRegionStart279:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd279
Videopac_Subsong0DisarkByteRegionEnd279:
 .globl _Videopac_Subsong0DisarkPointerRegionStart280
_Videopac_Subsong0DisarkPointerRegionStart280:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd280
Videopac_Subsong0DisarkPointerRegionEnd280:

 .globl _Videopac_Subsong0DisarkByteRegionStart281
_Videopac_Subsong0DisarkByteRegionStart281:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd281
Videopac_Subsong0DisarkByteRegionEnd281:
 .globl _Videopac_Subsong0DisarkPointerRegionStart282
_Videopac_Subsong0DisarkPointerRegionStart282:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd282
Videopac_Subsong0DisarkPointerRegionEnd282:

 .globl _Videopac_Subsong0DisarkByteRegionStart283
_Videopac_Subsong0DisarkByteRegionStart283:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd283
Videopac_Subsong0DisarkByteRegionEnd283:
 .globl _Videopac_Subsong0DisarkPointerRegionStart284
_Videopac_Subsong0DisarkPointerRegionStart284:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd284
Videopac_Subsong0DisarkPointerRegionEnd284:

 .globl _Videopac_Subsong0DisarkByteRegionStart285
_Videopac_Subsong0DisarkByteRegionStart285:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd285
Videopac_Subsong0DisarkByteRegionEnd285:
 .globl _Videopac_Subsong0DisarkPointerRegionStart286
_Videopac_Subsong0DisarkPointerRegionStart286:
	.word _Videopac_Subsong0_RegisterBlock_113
 .globl Videopac_Subsong0DisarkPointerRegionEnd286
Videopac_Subsong0DisarkPointerRegionEnd286:

 .globl _Videopac_Subsong0DisarkByteRegionStart287
_Videopac_Subsong0DisarkByteRegionStart287:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd287
Videopac_Subsong0DisarkByteRegionEnd287:
 .globl _Videopac_Subsong0DisarkPointerRegionStart288
_Videopac_Subsong0DisarkPointerRegionStart288:
	.word _Videopac_Subsong0_RegisterBlock_114
 .globl Videopac_Subsong0DisarkPointerRegionEnd288
Videopac_Subsong0DisarkPointerRegionEnd288:

 .globl _Videopac_Subsong0DisarkByteRegionStart289
_Videopac_Subsong0DisarkByteRegionStart289:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd289
Videopac_Subsong0DisarkByteRegionEnd289:
 .globl _Videopac_Subsong0DisarkPointerRegionStart290
_Videopac_Subsong0DisarkPointerRegionStart290:
	.word _Videopac_Subsong0_RegisterBlock_115
 .globl Videopac_Subsong0DisarkPointerRegionEnd290
Videopac_Subsong0DisarkPointerRegionEnd290:

 .globl _Videopac_Subsong0DisarkByteRegionStart291
_Videopac_Subsong0DisarkByteRegionStart291:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd291
Videopac_Subsong0DisarkByteRegionEnd291:
 .globl _Videopac_Subsong0DisarkPointerRegionStart292
_Videopac_Subsong0DisarkPointerRegionStart292:
	.word _Videopac_Subsong0_RegisterBlock_116
 .globl Videopac_Subsong0DisarkPointerRegionEnd292
Videopac_Subsong0DisarkPointerRegionEnd292:

 .globl _Videopac_Subsong0DisarkByteRegionStart293
_Videopac_Subsong0DisarkByteRegionStart293:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd293
Videopac_Subsong0DisarkByteRegionEnd293:
 .globl _Videopac_Subsong0DisarkPointerRegionStart294
_Videopac_Subsong0DisarkPointerRegionStart294:
	.word _Videopac_Subsong0_RegisterBlock_117
 .globl Videopac_Subsong0DisarkPointerRegionEnd294
Videopac_Subsong0DisarkPointerRegionEnd294:

 .globl Videopac_Subsong0_Track_26
Videopac_Subsong0_Track_26:
 .globl _Videopac_Subsong0DisarkByteRegionStart295
_Videopac_Subsong0DisarkByteRegionStart295:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd295
Videopac_Subsong0DisarkByteRegionEnd295:
 .globl _Videopac_Subsong0DisarkPointerRegionStart296
_Videopac_Subsong0DisarkPointerRegionStart296:
	.word _Videopac_Subsong0_RegisterBlock_149
 .globl Videopac_Subsong0DisarkPointerRegionEnd296
Videopac_Subsong0DisarkPointerRegionEnd296:

 .globl _Videopac_Subsong0DisarkByteRegionStart297
_Videopac_Subsong0DisarkByteRegionStart297:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd297
Videopac_Subsong0DisarkByteRegionEnd297:
 .globl _Videopac_Subsong0DisarkPointerRegionStart298
_Videopac_Subsong0DisarkPointerRegionStart298:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd298
Videopac_Subsong0DisarkPointerRegionEnd298:

 .globl _Videopac_Subsong0DisarkByteRegionStart299
_Videopac_Subsong0DisarkByteRegionStart299:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd299
Videopac_Subsong0DisarkByteRegionEnd299:
 .globl _Videopac_Subsong0DisarkPointerRegionStart300
_Videopac_Subsong0DisarkPointerRegionStart300:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd300
Videopac_Subsong0DisarkPointerRegionEnd300:

 .globl _Videopac_Subsong0DisarkByteRegionStart301
_Videopac_Subsong0DisarkByteRegionStart301:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd301
Videopac_Subsong0DisarkByteRegionEnd301:
 .globl _Videopac_Subsong0DisarkPointerRegionStart302
_Videopac_Subsong0DisarkPointerRegionStart302:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd302
Videopac_Subsong0DisarkPointerRegionEnd302:

 .globl _Videopac_Subsong0DisarkByteRegionStart303
_Videopac_Subsong0DisarkByteRegionStart303:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd303
Videopac_Subsong0DisarkByteRegionEnd303:
 .globl _Videopac_Subsong0DisarkPointerRegionStart304
_Videopac_Subsong0DisarkPointerRegionStart304:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd304
Videopac_Subsong0DisarkPointerRegionEnd304:

 .globl _Videopac_Subsong0DisarkByteRegionStart305
_Videopac_Subsong0DisarkByteRegionStart305:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd305
Videopac_Subsong0DisarkByteRegionEnd305:
 .globl _Videopac_Subsong0DisarkPointerRegionStart306
_Videopac_Subsong0DisarkPointerRegionStart306:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd306
Videopac_Subsong0DisarkPointerRegionEnd306:

 .globl _Videopac_Subsong0DisarkByteRegionStart307
_Videopac_Subsong0DisarkByteRegionStart307:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd307
Videopac_Subsong0DisarkByteRegionEnd307:
 .globl _Videopac_Subsong0DisarkPointerRegionStart308
_Videopac_Subsong0DisarkPointerRegionStart308:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd308
Videopac_Subsong0DisarkPointerRegionEnd308:

 .globl _Videopac_Subsong0DisarkByteRegionStart309
_Videopac_Subsong0DisarkByteRegionStart309:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd309
Videopac_Subsong0DisarkByteRegionEnd309:
 .globl _Videopac_Subsong0DisarkPointerRegionStart310
_Videopac_Subsong0DisarkPointerRegionStart310:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd310
Videopac_Subsong0DisarkPointerRegionEnd310:

 .globl _Videopac_Subsong0DisarkByteRegionStart311
_Videopac_Subsong0DisarkByteRegionStart311:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd311
Videopac_Subsong0DisarkByteRegionEnd311:
 .globl _Videopac_Subsong0DisarkPointerRegionStart312
_Videopac_Subsong0DisarkPointerRegionStart312:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd312
Videopac_Subsong0DisarkPointerRegionEnd312:

 .globl _Videopac_Subsong0DisarkByteRegionStart313
_Videopac_Subsong0DisarkByteRegionStart313:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd313
Videopac_Subsong0DisarkByteRegionEnd313:
 .globl _Videopac_Subsong0DisarkPointerRegionStart314
_Videopac_Subsong0DisarkPointerRegionStart314:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd314
Videopac_Subsong0DisarkPointerRegionEnd314:

 .globl _Videopac_Subsong0DisarkByteRegionStart315
_Videopac_Subsong0DisarkByteRegionStart315:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd315
Videopac_Subsong0DisarkByteRegionEnd315:
 .globl _Videopac_Subsong0DisarkPointerRegionStart316
_Videopac_Subsong0DisarkPointerRegionStart316:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd316
Videopac_Subsong0DisarkPointerRegionEnd316:

 .globl _Videopac_Subsong0DisarkByteRegionStart317
_Videopac_Subsong0DisarkByteRegionStart317:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd317
Videopac_Subsong0DisarkByteRegionEnd317:
 .globl _Videopac_Subsong0DisarkPointerRegionStart318
_Videopac_Subsong0DisarkPointerRegionStart318:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd318
Videopac_Subsong0DisarkPointerRegionEnd318:

 .globl Videopac_Subsong0_Track_36
Videopac_Subsong0_Track_36:
 .globl _Videopac_Subsong0DisarkByteRegionStart319
_Videopac_Subsong0DisarkByteRegionStart319:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd319
Videopac_Subsong0DisarkByteRegionEnd319:
 .globl _Videopac_Subsong0DisarkPointerRegionStart320
_Videopac_Subsong0DisarkPointerRegionStart320:
	.word _Videopac_Subsong0_RegisterBlock_29
 .globl Videopac_Subsong0DisarkPointerRegionEnd320
Videopac_Subsong0DisarkPointerRegionEnd320:

 .globl _Videopac_Subsong0DisarkByteRegionStart321
_Videopac_Subsong0DisarkByteRegionStart321:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd321
Videopac_Subsong0DisarkByteRegionEnd321:
 .globl _Videopac_Subsong0DisarkPointerRegionStart322
_Videopac_Subsong0DisarkPointerRegionStart322:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd322
Videopac_Subsong0DisarkPointerRegionEnd322:

 .globl _Videopac_Subsong0DisarkByteRegionStart323
_Videopac_Subsong0DisarkByteRegionStart323:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd323
Videopac_Subsong0DisarkByteRegionEnd323:
 .globl _Videopac_Subsong0DisarkPointerRegionStart324
_Videopac_Subsong0DisarkPointerRegionStart324:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd324
Videopac_Subsong0DisarkPointerRegionEnd324:

 .globl _Videopac_Subsong0DisarkByteRegionStart325
_Videopac_Subsong0DisarkByteRegionStart325:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd325
Videopac_Subsong0DisarkByteRegionEnd325:
 .globl _Videopac_Subsong0DisarkPointerRegionStart326
_Videopac_Subsong0DisarkPointerRegionStart326:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd326
Videopac_Subsong0DisarkPointerRegionEnd326:

 .globl _Videopac_Subsong0DisarkByteRegionStart327
_Videopac_Subsong0DisarkByteRegionStart327:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd327
Videopac_Subsong0DisarkByteRegionEnd327:
 .globl _Videopac_Subsong0DisarkPointerRegionStart328
_Videopac_Subsong0DisarkPointerRegionStart328:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd328
Videopac_Subsong0DisarkPointerRegionEnd328:

 .globl _Videopac_Subsong0DisarkByteRegionStart329
_Videopac_Subsong0DisarkByteRegionStart329:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd329
Videopac_Subsong0DisarkByteRegionEnd329:
 .globl _Videopac_Subsong0DisarkPointerRegionStart330
_Videopac_Subsong0DisarkPointerRegionStart330:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd330
Videopac_Subsong0DisarkPointerRegionEnd330:

 .globl _Videopac_Subsong0DisarkByteRegionStart331
_Videopac_Subsong0DisarkByteRegionStart331:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd331
Videopac_Subsong0DisarkByteRegionEnd331:
 .globl _Videopac_Subsong0DisarkPointerRegionStart332
_Videopac_Subsong0DisarkPointerRegionStart332:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd332
Videopac_Subsong0DisarkPointerRegionEnd332:

 .globl _Videopac_Subsong0DisarkByteRegionStart333
_Videopac_Subsong0DisarkByteRegionStart333:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd333
Videopac_Subsong0DisarkByteRegionEnd333:
 .globl _Videopac_Subsong0DisarkPointerRegionStart334
_Videopac_Subsong0DisarkPointerRegionStart334:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd334
Videopac_Subsong0DisarkPointerRegionEnd334:

 .globl _Videopac_Subsong0DisarkByteRegionStart335
_Videopac_Subsong0DisarkByteRegionStart335:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd335
Videopac_Subsong0DisarkByteRegionEnd335:
 .globl _Videopac_Subsong0DisarkPointerRegionStart336
_Videopac_Subsong0DisarkPointerRegionStart336:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd336
Videopac_Subsong0DisarkPointerRegionEnd336:

 .globl _Videopac_Subsong0DisarkByteRegionStart337
_Videopac_Subsong0DisarkByteRegionStart337:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd337
Videopac_Subsong0DisarkByteRegionEnd337:
 .globl _Videopac_Subsong0DisarkPointerRegionStart338
_Videopac_Subsong0DisarkPointerRegionStart338:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd338
Videopac_Subsong0DisarkPointerRegionEnd338:

 .globl _Videopac_Subsong0DisarkByteRegionStart339
_Videopac_Subsong0DisarkByteRegionStart339:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd339
Videopac_Subsong0DisarkByteRegionEnd339:
 .globl _Videopac_Subsong0DisarkPointerRegionStart340
_Videopac_Subsong0DisarkPointerRegionStart340:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd340
Videopac_Subsong0DisarkPointerRegionEnd340:

 .globl _Videopac_Subsong0DisarkByteRegionStart341
_Videopac_Subsong0DisarkByteRegionStart341:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd341
Videopac_Subsong0DisarkByteRegionEnd341:
 .globl _Videopac_Subsong0DisarkPointerRegionStart342
_Videopac_Subsong0DisarkPointerRegionStart342:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd342
Videopac_Subsong0DisarkPointerRegionEnd342:

 .globl _Videopac_Subsong0DisarkByteRegionStart343
_Videopac_Subsong0DisarkByteRegionStart343:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd343
Videopac_Subsong0DisarkByteRegionEnd343:
 .globl _Videopac_Subsong0DisarkPointerRegionStart344
_Videopac_Subsong0DisarkPointerRegionStart344:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd344
Videopac_Subsong0DisarkPointerRegionEnd344:

 .globl Videopac_Subsong0_Track_38
Videopac_Subsong0_Track_38:
 .globl _Videopac_Subsong0DisarkByteRegionStart345
_Videopac_Subsong0DisarkByteRegionStart345:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd345
Videopac_Subsong0DisarkByteRegionEnd345:
 .globl _Videopac_Subsong0DisarkPointerRegionStart346
_Videopac_Subsong0DisarkPointerRegionStart346:
	.word _Videopac_Subsong0_RegisterBlock_149
 .globl Videopac_Subsong0DisarkPointerRegionEnd346
Videopac_Subsong0DisarkPointerRegionEnd346:

 .globl _Videopac_Subsong0DisarkByteRegionStart347
_Videopac_Subsong0DisarkByteRegionStart347:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd347
Videopac_Subsong0DisarkByteRegionEnd347:
 .globl _Videopac_Subsong0DisarkPointerRegionStart348
_Videopac_Subsong0DisarkPointerRegionStart348:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd348
Videopac_Subsong0DisarkPointerRegionEnd348:

 .globl _Videopac_Subsong0DisarkByteRegionStart349
_Videopac_Subsong0DisarkByteRegionStart349:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd349
Videopac_Subsong0DisarkByteRegionEnd349:
 .globl _Videopac_Subsong0DisarkPointerRegionStart350
_Videopac_Subsong0DisarkPointerRegionStart350:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd350
Videopac_Subsong0DisarkPointerRegionEnd350:

 .globl _Videopac_Subsong0DisarkByteRegionStart351
_Videopac_Subsong0DisarkByteRegionStart351:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd351
Videopac_Subsong0DisarkByteRegionEnd351:
 .globl _Videopac_Subsong0DisarkPointerRegionStart352
_Videopac_Subsong0DisarkPointerRegionStart352:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd352
Videopac_Subsong0DisarkPointerRegionEnd352:

 .globl _Videopac_Subsong0DisarkByteRegionStart353
_Videopac_Subsong0DisarkByteRegionStart353:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd353
Videopac_Subsong0DisarkByteRegionEnd353:
 .globl _Videopac_Subsong0DisarkPointerRegionStart354
_Videopac_Subsong0DisarkPointerRegionStart354:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd354
Videopac_Subsong0DisarkPointerRegionEnd354:

 .globl _Videopac_Subsong0DisarkByteRegionStart355
_Videopac_Subsong0DisarkByteRegionStart355:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd355
Videopac_Subsong0DisarkByteRegionEnd355:
 .globl _Videopac_Subsong0DisarkPointerRegionStart356
_Videopac_Subsong0DisarkPointerRegionStart356:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd356
Videopac_Subsong0DisarkPointerRegionEnd356:

 .globl _Videopac_Subsong0DisarkByteRegionStart357
_Videopac_Subsong0DisarkByteRegionStart357:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd357
Videopac_Subsong0DisarkByteRegionEnd357:
 .globl _Videopac_Subsong0DisarkPointerRegionStart358
_Videopac_Subsong0DisarkPointerRegionStart358:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd358
Videopac_Subsong0DisarkPointerRegionEnd358:

 .globl _Videopac_Subsong0DisarkByteRegionStart359
_Videopac_Subsong0DisarkByteRegionStart359:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd359
Videopac_Subsong0DisarkByteRegionEnd359:
 .globl _Videopac_Subsong0DisarkPointerRegionStart360
_Videopac_Subsong0DisarkPointerRegionStart360:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd360
Videopac_Subsong0DisarkPointerRegionEnd360:

 .globl _Videopac_Subsong0DisarkByteRegionStart361
_Videopac_Subsong0DisarkByteRegionStart361:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd361
Videopac_Subsong0DisarkByteRegionEnd361:
 .globl _Videopac_Subsong0DisarkPointerRegionStart362
_Videopac_Subsong0DisarkPointerRegionStart362:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd362
Videopac_Subsong0DisarkPointerRegionEnd362:

 .globl _Videopac_Subsong0DisarkByteRegionStart363
_Videopac_Subsong0DisarkByteRegionStart363:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd363
Videopac_Subsong0DisarkByteRegionEnd363:
 .globl _Videopac_Subsong0DisarkPointerRegionStart364
_Videopac_Subsong0DisarkPointerRegionStart364:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd364
Videopac_Subsong0DisarkPointerRegionEnd364:

 .globl _Videopac_Subsong0DisarkByteRegionStart365
_Videopac_Subsong0DisarkByteRegionStart365:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd365
Videopac_Subsong0DisarkByteRegionEnd365:
 .globl _Videopac_Subsong0DisarkPointerRegionStart366
_Videopac_Subsong0DisarkPointerRegionStart366:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd366
Videopac_Subsong0DisarkPointerRegionEnd366:

 .globl _Videopac_Subsong0DisarkByteRegionStart367
_Videopac_Subsong0DisarkByteRegionStart367:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd367
Videopac_Subsong0DisarkByteRegionEnd367:
 .globl _Videopac_Subsong0DisarkPointerRegionStart368
_Videopac_Subsong0DisarkPointerRegionStart368:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd368
Videopac_Subsong0DisarkPointerRegionEnd368:

 .globl _Videopac_Subsong0DisarkByteRegionStart369
_Videopac_Subsong0DisarkByteRegionStart369:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd369
Videopac_Subsong0DisarkByteRegionEnd369:
 .globl _Videopac_Subsong0DisarkPointerRegionStart370
_Videopac_Subsong0DisarkPointerRegionStart370:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd370
Videopac_Subsong0DisarkPointerRegionEnd370:

 .globl Videopac_Subsong0_Track_39
Videopac_Subsong0_Track_39:
 .globl _Videopac_Subsong0DisarkByteRegionStart371
_Videopac_Subsong0DisarkByteRegionStart371:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd371
Videopac_Subsong0DisarkByteRegionEnd371:
 .globl _Videopac_Subsong0DisarkPointerRegionStart372
_Videopac_Subsong0DisarkPointerRegionStart372:
	.word _Videopac_Subsong0_RegisterBlock_59
 .globl Videopac_Subsong0DisarkPointerRegionEnd372
Videopac_Subsong0DisarkPointerRegionEnd372:

 .globl _Videopac_Subsong0DisarkByteRegionStart373
_Videopac_Subsong0DisarkByteRegionStart373:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd373
Videopac_Subsong0DisarkByteRegionEnd373:
 .globl _Videopac_Subsong0DisarkPointerRegionStart374
_Videopac_Subsong0DisarkPointerRegionStart374:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd374
Videopac_Subsong0DisarkPointerRegionEnd374:

 .globl _Videopac_Subsong0DisarkByteRegionStart375
_Videopac_Subsong0DisarkByteRegionStart375:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd375
Videopac_Subsong0DisarkByteRegionEnd375:
 .globl _Videopac_Subsong0DisarkPointerRegionStart376
_Videopac_Subsong0DisarkPointerRegionStart376:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd376
Videopac_Subsong0DisarkPointerRegionEnd376:

 .globl _Videopac_Subsong0DisarkByteRegionStart377
_Videopac_Subsong0DisarkByteRegionStart377:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd377
Videopac_Subsong0DisarkByteRegionEnd377:
 .globl _Videopac_Subsong0DisarkPointerRegionStart378
_Videopac_Subsong0DisarkPointerRegionStart378:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd378
Videopac_Subsong0DisarkPointerRegionEnd378:

 .globl _Videopac_Subsong0DisarkByteRegionStart379
_Videopac_Subsong0DisarkByteRegionStart379:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd379
Videopac_Subsong0DisarkByteRegionEnd379:
 .globl _Videopac_Subsong0DisarkPointerRegionStart380
_Videopac_Subsong0DisarkPointerRegionStart380:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd380
Videopac_Subsong0DisarkPointerRegionEnd380:

 .globl _Videopac_Subsong0DisarkByteRegionStart381
_Videopac_Subsong0DisarkByteRegionStart381:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd381
Videopac_Subsong0DisarkByteRegionEnd381:
 .globl _Videopac_Subsong0DisarkPointerRegionStart382
_Videopac_Subsong0DisarkPointerRegionStart382:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd382
Videopac_Subsong0DisarkPointerRegionEnd382:

 .globl _Videopac_Subsong0DisarkByteRegionStart383
_Videopac_Subsong0DisarkByteRegionStart383:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd383
Videopac_Subsong0DisarkByteRegionEnd383:
 .globl _Videopac_Subsong0DisarkPointerRegionStart384
_Videopac_Subsong0DisarkPointerRegionStart384:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd384
Videopac_Subsong0DisarkPointerRegionEnd384:

 .globl _Videopac_Subsong0DisarkByteRegionStart385
_Videopac_Subsong0DisarkByteRegionStart385:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd385
Videopac_Subsong0DisarkByteRegionEnd385:
 .globl _Videopac_Subsong0DisarkPointerRegionStart386
_Videopac_Subsong0DisarkPointerRegionStart386:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd386
Videopac_Subsong0DisarkPointerRegionEnd386:

 .globl _Videopac_Subsong0DisarkByteRegionStart387
_Videopac_Subsong0DisarkByteRegionStart387:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd387
Videopac_Subsong0DisarkByteRegionEnd387:
 .globl _Videopac_Subsong0DisarkPointerRegionStart388
_Videopac_Subsong0DisarkPointerRegionStart388:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd388
Videopac_Subsong0DisarkPointerRegionEnd388:

 .globl _Videopac_Subsong0DisarkByteRegionStart389
_Videopac_Subsong0DisarkByteRegionStart389:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd389
Videopac_Subsong0DisarkByteRegionEnd389:
 .globl _Videopac_Subsong0DisarkPointerRegionStart390
_Videopac_Subsong0DisarkPointerRegionStart390:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd390
Videopac_Subsong0DisarkPointerRegionEnd390:

 .globl _Videopac_Subsong0DisarkByteRegionStart391
_Videopac_Subsong0DisarkByteRegionStart391:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd391
Videopac_Subsong0DisarkByteRegionEnd391:
 .globl _Videopac_Subsong0DisarkPointerRegionStart392
_Videopac_Subsong0DisarkPointerRegionStart392:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd392
Videopac_Subsong0DisarkPointerRegionEnd392:

 .globl _Videopac_Subsong0DisarkByteRegionStart393
_Videopac_Subsong0DisarkByteRegionStart393:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd393
Videopac_Subsong0DisarkByteRegionEnd393:
 .globl _Videopac_Subsong0DisarkPointerRegionStart394
_Videopac_Subsong0DisarkPointerRegionStart394:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd394
Videopac_Subsong0DisarkPointerRegionEnd394:

 .globl _Videopac_Subsong0DisarkByteRegionStart395
_Videopac_Subsong0DisarkByteRegionStart395:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd395
Videopac_Subsong0DisarkByteRegionEnd395:
 .globl _Videopac_Subsong0DisarkPointerRegionStart396
_Videopac_Subsong0DisarkPointerRegionStart396:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd396
Videopac_Subsong0DisarkPointerRegionEnd396:

 .globl Videopac_Subsong0_Track_40
Videopac_Subsong0_Track_40:
 .globl _Videopac_Subsong0DisarkByteRegionStart397
_Videopac_Subsong0DisarkByteRegionStart397:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd397
Videopac_Subsong0DisarkByteRegionEnd397:
 .globl _Videopac_Subsong0DisarkPointerRegionStart398
_Videopac_Subsong0DisarkPointerRegionStart398:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd398
Videopac_Subsong0DisarkPointerRegionEnd398:

 .globl _Videopac_Subsong0DisarkByteRegionStart399
_Videopac_Subsong0DisarkByteRegionStart399:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd399
Videopac_Subsong0DisarkByteRegionEnd399:
 .globl _Videopac_Subsong0DisarkPointerRegionStart400
_Videopac_Subsong0DisarkPointerRegionStart400:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd400
Videopac_Subsong0DisarkPointerRegionEnd400:

 .globl _Videopac_Subsong0DisarkByteRegionStart401
_Videopac_Subsong0DisarkByteRegionStart401:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd401
Videopac_Subsong0DisarkByteRegionEnd401:
 .globl _Videopac_Subsong0DisarkPointerRegionStart402
_Videopac_Subsong0DisarkPointerRegionStart402:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd402
Videopac_Subsong0DisarkPointerRegionEnd402:

 .globl _Videopac_Subsong0DisarkByteRegionStart403
_Videopac_Subsong0DisarkByteRegionStart403:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd403
Videopac_Subsong0DisarkByteRegionEnd403:
 .globl _Videopac_Subsong0DisarkPointerRegionStart404
_Videopac_Subsong0DisarkPointerRegionStart404:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd404
Videopac_Subsong0DisarkPointerRegionEnd404:

 .globl _Videopac_Subsong0DisarkByteRegionStart405
_Videopac_Subsong0DisarkByteRegionStart405:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd405
Videopac_Subsong0DisarkByteRegionEnd405:
 .globl _Videopac_Subsong0DisarkPointerRegionStart406
_Videopac_Subsong0DisarkPointerRegionStart406:
	.word _Videopac_Subsong0_RegisterBlock_13
 .globl Videopac_Subsong0DisarkPointerRegionEnd406
Videopac_Subsong0DisarkPointerRegionEnd406:

 .globl _Videopac_Subsong0DisarkByteRegionStart407
_Videopac_Subsong0DisarkByteRegionStart407:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd407
Videopac_Subsong0DisarkByteRegionEnd407:
 .globl _Videopac_Subsong0DisarkPointerRegionStart408
_Videopac_Subsong0DisarkPointerRegionStart408:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd408
Videopac_Subsong0DisarkPointerRegionEnd408:

 .globl _Videopac_Subsong0DisarkByteRegionStart409
_Videopac_Subsong0DisarkByteRegionStart409:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd409
Videopac_Subsong0DisarkByteRegionEnd409:
 .globl _Videopac_Subsong0DisarkPointerRegionStart410
_Videopac_Subsong0DisarkPointerRegionStart410:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd410
Videopac_Subsong0DisarkPointerRegionEnd410:

 .globl _Videopac_Subsong0DisarkByteRegionStart411
_Videopac_Subsong0DisarkByteRegionStart411:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd411
Videopac_Subsong0DisarkByteRegionEnd411:
 .globl _Videopac_Subsong0DisarkPointerRegionStart412
_Videopac_Subsong0DisarkPointerRegionStart412:
	.word _Videopac_Subsong0_RegisterBlock_15
 .globl Videopac_Subsong0DisarkPointerRegionEnd412
Videopac_Subsong0DisarkPointerRegionEnd412:

 .globl _Videopac_Subsong0DisarkByteRegionStart413
_Videopac_Subsong0DisarkByteRegionStart413:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd413
Videopac_Subsong0DisarkByteRegionEnd413:
 .globl _Videopac_Subsong0DisarkPointerRegionStart414
_Videopac_Subsong0DisarkPointerRegionStart414:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd414
Videopac_Subsong0DisarkPointerRegionEnd414:

 .globl _Videopac_Subsong0DisarkByteRegionStart415
_Videopac_Subsong0DisarkByteRegionStart415:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd415
Videopac_Subsong0DisarkByteRegionEnd415:
 .globl _Videopac_Subsong0DisarkPointerRegionStart416
_Videopac_Subsong0DisarkPointerRegionStart416:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd416
Videopac_Subsong0DisarkPointerRegionEnd416:

 .globl _Videopac_Subsong0DisarkByteRegionStart417
_Videopac_Subsong0DisarkByteRegionStart417:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd417
Videopac_Subsong0DisarkByteRegionEnd417:
 .globl _Videopac_Subsong0DisarkPointerRegionStart418
_Videopac_Subsong0DisarkPointerRegionStart418:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd418
Videopac_Subsong0DisarkPointerRegionEnd418:

 .globl _Videopac_Subsong0DisarkByteRegionStart419
_Videopac_Subsong0DisarkByteRegionStart419:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd419
Videopac_Subsong0DisarkByteRegionEnd419:
 .globl _Videopac_Subsong0DisarkPointerRegionStart420
_Videopac_Subsong0DisarkPointerRegionStart420:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd420
Videopac_Subsong0DisarkPointerRegionEnd420:

 .globl Videopac_Subsong0_Track_41
Videopac_Subsong0_Track_41:
 .globl _Videopac_Subsong0DisarkByteRegionStart421
_Videopac_Subsong0DisarkByteRegionStart421:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd421
Videopac_Subsong0DisarkByteRegionEnd421:
 .globl _Videopac_Subsong0DisarkPointerRegionStart422
_Videopac_Subsong0DisarkPointerRegionStart422:
	.word _Videopac_Subsong0_RegisterBlock_79
 .globl Videopac_Subsong0DisarkPointerRegionEnd422
Videopac_Subsong0DisarkPointerRegionEnd422:

 .globl _Videopac_Subsong0DisarkByteRegionStart423
_Videopac_Subsong0DisarkByteRegionStart423:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd423
Videopac_Subsong0DisarkByteRegionEnd423:
 .globl _Videopac_Subsong0DisarkPointerRegionStart424
_Videopac_Subsong0DisarkPointerRegionStart424:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd424
Videopac_Subsong0DisarkPointerRegionEnd424:

 .globl _Videopac_Subsong0DisarkByteRegionStart425
_Videopac_Subsong0DisarkByteRegionStart425:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd425
Videopac_Subsong0DisarkByteRegionEnd425:
 .globl _Videopac_Subsong0DisarkPointerRegionStart426
_Videopac_Subsong0DisarkPointerRegionStart426:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd426
Videopac_Subsong0DisarkPointerRegionEnd426:

 .globl _Videopac_Subsong0DisarkByteRegionStart427
_Videopac_Subsong0DisarkByteRegionStart427:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd427
Videopac_Subsong0DisarkByteRegionEnd427:
 .globl _Videopac_Subsong0DisarkPointerRegionStart428
_Videopac_Subsong0DisarkPointerRegionStart428:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd428
Videopac_Subsong0DisarkPointerRegionEnd428:

 .globl _Videopac_Subsong0DisarkByteRegionStart429
_Videopac_Subsong0DisarkByteRegionStart429:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd429
Videopac_Subsong0DisarkByteRegionEnd429:
 .globl _Videopac_Subsong0DisarkPointerRegionStart430
_Videopac_Subsong0DisarkPointerRegionStart430:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd430
Videopac_Subsong0DisarkPointerRegionEnd430:

 .globl _Videopac_Subsong0DisarkByteRegionStart431
_Videopac_Subsong0DisarkByteRegionStart431:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd431
Videopac_Subsong0DisarkByteRegionEnd431:
 .globl _Videopac_Subsong0DisarkPointerRegionStart432
_Videopac_Subsong0DisarkPointerRegionStart432:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd432
Videopac_Subsong0DisarkPointerRegionEnd432:

 .globl _Videopac_Subsong0DisarkByteRegionStart433
_Videopac_Subsong0DisarkByteRegionStart433:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd433
Videopac_Subsong0DisarkByteRegionEnd433:
 .globl _Videopac_Subsong0DisarkPointerRegionStart434
_Videopac_Subsong0DisarkPointerRegionStart434:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd434
Videopac_Subsong0DisarkPointerRegionEnd434:

 .globl _Videopac_Subsong0DisarkByteRegionStart435
_Videopac_Subsong0DisarkByteRegionStart435:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd435
Videopac_Subsong0DisarkByteRegionEnd435:
 .globl _Videopac_Subsong0DisarkPointerRegionStart436
_Videopac_Subsong0DisarkPointerRegionStart436:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd436
Videopac_Subsong0DisarkPointerRegionEnd436:

 .globl _Videopac_Subsong0DisarkByteRegionStart437
_Videopac_Subsong0DisarkByteRegionStart437:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd437
Videopac_Subsong0DisarkByteRegionEnd437:
 .globl _Videopac_Subsong0DisarkPointerRegionStart438
_Videopac_Subsong0DisarkPointerRegionStart438:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd438
Videopac_Subsong0DisarkPointerRegionEnd438:

 .globl _Videopac_Subsong0DisarkByteRegionStart439
_Videopac_Subsong0DisarkByteRegionStart439:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd439
Videopac_Subsong0DisarkByteRegionEnd439:
 .globl _Videopac_Subsong0DisarkPointerRegionStart440
_Videopac_Subsong0DisarkPointerRegionStart440:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd440
Videopac_Subsong0DisarkPointerRegionEnd440:

 .globl _Videopac_Subsong0DisarkByteRegionStart441
_Videopac_Subsong0DisarkByteRegionStart441:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd441
Videopac_Subsong0DisarkByteRegionEnd441:
 .globl _Videopac_Subsong0DisarkPointerRegionStart442
_Videopac_Subsong0DisarkPointerRegionStart442:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd442
Videopac_Subsong0DisarkPointerRegionEnd442:

 .globl _Videopac_Subsong0DisarkByteRegionStart443
_Videopac_Subsong0DisarkByteRegionStart443:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd443
Videopac_Subsong0DisarkByteRegionEnd443:
 .globl _Videopac_Subsong0DisarkPointerRegionStart444
_Videopac_Subsong0DisarkPointerRegionStart444:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd444
Videopac_Subsong0DisarkPointerRegionEnd444:

 .globl _Videopac_Subsong0DisarkByteRegionStart445
_Videopac_Subsong0DisarkByteRegionStart445:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd445
Videopac_Subsong0DisarkByteRegionEnd445:
 .globl _Videopac_Subsong0DisarkPointerRegionStart446
_Videopac_Subsong0DisarkPointerRegionStart446:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd446
Videopac_Subsong0DisarkPointerRegionEnd446:

 .globl Videopac_Subsong0_Track_42
Videopac_Subsong0_Track_42:
 .globl _Videopac_Subsong0DisarkByteRegionStart447
_Videopac_Subsong0DisarkByteRegionStart447:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd447
Videopac_Subsong0DisarkByteRegionEnd447:
 .globl _Videopac_Subsong0DisarkPointerRegionStart448
_Videopac_Subsong0DisarkPointerRegionStart448:
	.word _Videopac_Subsong0_RegisterBlock_59
 .globl Videopac_Subsong0DisarkPointerRegionEnd448
Videopac_Subsong0DisarkPointerRegionEnd448:

 .globl _Videopac_Subsong0DisarkByteRegionStart449
_Videopac_Subsong0DisarkByteRegionStart449:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd449
Videopac_Subsong0DisarkByteRegionEnd449:
 .globl _Videopac_Subsong0DisarkPointerRegionStart450
_Videopac_Subsong0DisarkPointerRegionStart450:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd450
Videopac_Subsong0DisarkPointerRegionEnd450:

 .globl _Videopac_Subsong0DisarkByteRegionStart451
_Videopac_Subsong0DisarkByteRegionStart451:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd451
Videopac_Subsong0DisarkByteRegionEnd451:
 .globl _Videopac_Subsong0DisarkPointerRegionStart452
_Videopac_Subsong0DisarkPointerRegionStart452:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd452
Videopac_Subsong0DisarkPointerRegionEnd452:

 .globl _Videopac_Subsong0DisarkByteRegionStart453
_Videopac_Subsong0DisarkByteRegionStart453:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd453
Videopac_Subsong0DisarkByteRegionEnd453:
 .globl _Videopac_Subsong0DisarkPointerRegionStart454
_Videopac_Subsong0DisarkPointerRegionStart454:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd454
Videopac_Subsong0DisarkPointerRegionEnd454:

 .globl _Videopac_Subsong0DisarkByteRegionStart455
_Videopac_Subsong0DisarkByteRegionStart455:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd455
Videopac_Subsong0DisarkByteRegionEnd455:
 .globl _Videopac_Subsong0DisarkPointerRegionStart456
_Videopac_Subsong0DisarkPointerRegionStart456:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd456
Videopac_Subsong0DisarkPointerRegionEnd456:

 .globl _Videopac_Subsong0DisarkByteRegionStart457
_Videopac_Subsong0DisarkByteRegionStart457:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd457
Videopac_Subsong0DisarkByteRegionEnd457:
 .globl _Videopac_Subsong0DisarkPointerRegionStart458
_Videopac_Subsong0DisarkPointerRegionStart458:
	.word _Videopac_Subsong0_RegisterBlock_92
 .globl Videopac_Subsong0DisarkPointerRegionEnd458
Videopac_Subsong0DisarkPointerRegionEnd458:

 .globl _Videopac_Subsong0DisarkByteRegionStart459
_Videopac_Subsong0DisarkByteRegionStart459:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd459
Videopac_Subsong0DisarkByteRegionEnd459:
 .globl _Videopac_Subsong0DisarkPointerRegionStart460
_Videopac_Subsong0DisarkPointerRegionStart460:
	.word _Videopac_Subsong0_RegisterBlock_93
 .globl Videopac_Subsong0DisarkPointerRegionEnd460
Videopac_Subsong0DisarkPointerRegionEnd460:

 .globl _Videopac_Subsong0DisarkByteRegionStart461
_Videopac_Subsong0DisarkByteRegionStart461:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd461
Videopac_Subsong0DisarkByteRegionEnd461:
 .globl _Videopac_Subsong0DisarkPointerRegionStart462
_Videopac_Subsong0DisarkPointerRegionStart462:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd462
Videopac_Subsong0DisarkPointerRegionEnd462:

 .globl _Videopac_Subsong0DisarkByteRegionStart463
_Videopac_Subsong0DisarkByteRegionStart463:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd463
Videopac_Subsong0DisarkByteRegionEnd463:
 .globl _Videopac_Subsong0DisarkPointerRegionStart464
_Videopac_Subsong0DisarkPointerRegionStart464:
	.word _Videopac_Subsong0_RegisterBlock_94
 .globl Videopac_Subsong0DisarkPointerRegionEnd464
Videopac_Subsong0DisarkPointerRegionEnd464:

 .globl _Videopac_Subsong0DisarkByteRegionStart465
_Videopac_Subsong0DisarkByteRegionStart465:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd465
Videopac_Subsong0DisarkByteRegionEnd465:
 .globl _Videopac_Subsong0DisarkPointerRegionStart466
_Videopac_Subsong0DisarkPointerRegionStart466:
	.word _Videopac_Subsong0_RegisterBlock_95
 .globl Videopac_Subsong0DisarkPointerRegionEnd466
Videopac_Subsong0DisarkPointerRegionEnd466:

 .globl _Videopac_Subsong0DisarkByteRegionStart467
_Videopac_Subsong0DisarkByteRegionStart467:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd467
Videopac_Subsong0DisarkByteRegionEnd467:
 .globl _Videopac_Subsong0DisarkPointerRegionStart468
_Videopac_Subsong0DisarkPointerRegionStart468:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd468
Videopac_Subsong0DisarkPointerRegionEnd468:

 .globl _Videopac_Subsong0DisarkByteRegionStart469
_Videopac_Subsong0DisarkByteRegionStart469:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd469
Videopac_Subsong0DisarkByteRegionEnd469:
 .globl _Videopac_Subsong0DisarkPointerRegionStart470
_Videopac_Subsong0DisarkPointerRegionStart470:
	.word _Videopac_Subsong0_RegisterBlock_96
 .globl Videopac_Subsong0DisarkPointerRegionEnd470
Videopac_Subsong0DisarkPointerRegionEnd470:

 .globl _Videopac_Subsong0DisarkByteRegionStart471
_Videopac_Subsong0DisarkByteRegionStart471:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd471
Videopac_Subsong0DisarkByteRegionEnd471:
 .globl _Videopac_Subsong0DisarkPointerRegionStart472
_Videopac_Subsong0DisarkPointerRegionStart472:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd472
Videopac_Subsong0DisarkPointerRegionEnd472:

 .globl Videopac_Subsong0_Track_44
Videopac_Subsong0_Track_44:
 .globl _Videopac_Subsong0DisarkByteRegionStart473
_Videopac_Subsong0DisarkByteRegionStart473:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd473
Videopac_Subsong0DisarkByteRegionEnd473:
 .globl _Videopac_Subsong0DisarkPointerRegionStart474
_Videopac_Subsong0DisarkPointerRegionStart474:
	.word _Videopac_Subsong0_RegisterBlock_79
 .globl Videopac_Subsong0DisarkPointerRegionEnd474
Videopac_Subsong0DisarkPointerRegionEnd474:

 .globl _Videopac_Subsong0DisarkByteRegionStart475
_Videopac_Subsong0DisarkByteRegionStart475:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd475
Videopac_Subsong0DisarkByteRegionEnd475:
 .globl _Videopac_Subsong0DisarkPointerRegionStart476
_Videopac_Subsong0DisarkPointerRegionStart476:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd476
Videopac_Subsong0DisarkPointerRegionEnd476:

 .globl _Videopac_Subsong0DisarkByteRegionStart477
_Videopac_Subsong0DisarkByteRegionStart477:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd477
Videopac_Subsong0DisarkByteRegionEnd477:
 .globl _Videopac_Subsong0DisarkPointerRegionStart478
_Videopac_Subsong0DisarkPointerRegionStart478:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd478
Videopac_Subsong0DisarkPointerRegionEnd478:

 .globl _Videopac_Subsong0DisarkByteRegionStart479
_Videopac_Subsong0DisarkByteRegionStart479:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd479
Videopac_Subsong0DisarkByteRegionEnd479:
 .globl _Videopac_Subsong0DisarkPointerRegionStart480
_Videopac_Subsong0DisarkPointerRegionStart480:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd480
Videopac_Subsong0DisarkPointerRegionEnd480:

 .globl _Videopac_Subsong0DisarkByteRegionStart481
_Videopac_Subsong0DisarkByteRegionStart481:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd481
Videopac_Subsong0DisarkByteRegionEnd481:
 .globl _Videopac_Subsong0DisarkPointerRegionStart482
_Videopac_Subsong0DisarkPointerRegionStart482:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd482
Videopac_Subsong0DisarkPointerRegionEnd482:

 .globl _Videopac_Subsong0DisarkByteRegionStart483
_Videopac_Subsong0DisarkByteRegionStart483:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd483
Videopac_Subsong0DisarkByteRegionEnd483:
 .globl _Videopac_Subsong0DisarkPointerRegionStart484
_Videopac_Subsong0DisarkPointerRegionStart484:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd484
Videopac_Subsong0DisarkPointerRegionEnd484:

 .globl _Videopac_Subsong0DisarkByteRegionStart485
_Videopac_Subsong0DisarkByteRegionStart485:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd485
Videopac_Subsong0DisarkByteRegionEnd485:
 .globl _Videopac_Subsong0DisarkPointerRegionStart486
_Videopac_Subsong0DisarkPointerRegionStart486:
	.word _Videopac_Subsong0_RegisterBlock_113
 .globl Videopac_Subsong0DisarkPointerRegionEnd486
Videopac_Subsong0DisarkPointerRegionEnd486:

 .globl _Videopac_Subsong0DisarkByteRegionStart487
_Videopac_Subsong0DisarkByteRegionStart487:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd487
Videopac_Subsong0DisarkByteRegionEnd487:
 .globl _Videopac_Subsong0DisarkPointerRegionStart488
_Videopac_Subsong0DisarkPointerRegionStart488:
	.word _Videopac_Subsong0_RegisterBlock_114
 .globl Videopac_Subsong0DisarkPointerRegionEnd488
Videopac_Subsong0DisarkPointerRegionEnd488:

 .globl _Videopac_Subsong0DisarkByteRegionStart489
_Videopac_Subsong0DisarkByteRegionStart489:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd489
Videopac_Subsong0DisarkByteRegionEnd489:
 .globl _Videopac_Subsong0DisarkPointerRegionStart490
_Videopac_Subsong0DisarkPointerRegionStart490:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd490
Videopac_Subsong0DisarkPointerRegionEnd490:

 .globl _Videopac_Subsong0DisarkByteRegionStart491
_Videopac_Subsong0DisarkByteRegionStart491:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd491
Videopac_Subsong0DisarkByteRegionEnd491:
 .globl _Videopac_Subsong0DisarkPointerRegionStart492
_Videopac_Subsong0DisarkPointerRegionStart492:
	.word _Videopac_Subsong0_RegisterBlock_115
 .globl Videopac_Subsong0DisarkPointerRegionEnd492
Videopac_Subsong0DisarkPointerRegionEnd492:

 .globl _Videopac_Subsong0DisarkByteRegionStart493
_Videopac_Subsong0DisarkByteRegionStart493:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd493
Videopac_Subsong0DisarkByteRegionEnd493:
 .globl _Videopac_Subsong0DisarkPointerRegionStart494
_Videopac_Subsong0DisarkPointerRegionStart494:
	.word _Videopac_Subsong0_RegisterBlock_116
 .globl Videopac_Subsong0DisarkPointerRegionEnd494
Videopac_Subsong0DisarkPointerRegionEnd494:

 .globl _Videopac_Subsong0DisarkByteRegionStart495
_Videopac_Subsong0DisarkByteRegionStart495:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd495
Videopac_Subsong0DisarkByteRegionEnd495:
 .globl _Videopac_Subsong0DisarkPointerRegionStart496
_Videopac_Subsong0DisarkPointerRegionStart496:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd496
Videopac_Subsong0DisarkPointerRegionEnd496:

 .globl _Videopac_Subsong0DisarkByteRegionStart497
_Videopac_Subsong0DisarkByteRegionStart497:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd497
Videopac_Subsong0DisarkByteRegionEnd497:
 .globl _Videopac_Subsong0DisarkPointerRegionStart498
_Videopac_Subsong0DisarkPointerRegionStart498:
	.word _Videopac_Subsong0_RegisterBlock_117
 .globl Videopac_Subsong0DisarkPointerRegionEnd498
Videopac_Subsong0DisarkPointerRegionEnd498:

 .globl Videopac_Subsong0_Track_45
Videopac_Subsong0_Track_45:
 .globl _Videopac_Subsong0DisarkByteRegionStart499
_Videopac_Subsong0DisarkByteRegionStart499:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd499
Videopac_Subsong0DisarkByteRegionEnd499:
 .globl _Videopac_Subsong0DisarkPointerRegionStart500
_Videopac_Subsong0DisarkPointerRegionStart500:
	.word _Videopac_Subsong0_RegisterBlock_29
 .globl Videopac_Subsong0DisarkPointerRegionEnd500
Videopac_Subsong0DisarkPointerRegionEnd500:

 .globl _Videopac_Subsong0DisarkByteRegionStart501
_Videopac_Subsong0DisarkByteRegionStart501:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd501
Videopac_Subsong0DisarkByteRegionEnd501:
 .globl _Videopac_Subsong0DisarkPointerRegionStart502
_Videopac_Subsong0DisarkPointerRegionStart502:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd502
Videopac_Subsong0DisarkPointerRegionEnd502:

 .globl _Videopac_Subsong0DisarkByteRegionStart503
_Videopac_Subsong0DisarkByteRegionStart503:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd503
Videopac_Subsong0DisarkByteRegionEnd503:
 .globl _Videopac_Subsong0DisarkPointerRegionStart504
_Videopac_Subsong0DisarkPointerRegionStart504:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd504
Videopac_Subsong0DisarkPointerRegionEnd504:

 .globl _Videopac_Subsong0DisarkByteRegionStart505
_Videopac_Subsong0DisarkByteRegionStart505:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd505
Videopac_Subsong0DisarkByteRegionEnd505:
 .globl _Videopac_Subsong0DisarkPointerRegionStart506
_Videopac_Subsong0DisarkPointerRegionStart506:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd506
Videopac_Subsong0DisarkPointerRegionEnd506:

 .globl _Videopac_Subsong0DisarkByteRegionStart507
_Videopac_Subsong0DisarkByteRegionStart507:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd507
Videopac_Subsong0DisarkByteRegionEnd507:
 .globl _Videopac_Subsong0DisarkPointerRegionStart508
_Videopac_Subsong0DisarkPointerRegionStart508:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd508
Videopac_Subsong0DisarkPointerRegionEnd508:

 .globl _Videopac_Subsong0DisarkByteRegionStart509
_Videopac_Subsong0DisarkByteRegionStart509:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd509
Videopac_Subsong0DisarkByteRegionEnd509:
 .globl _Videopac_Subsong0DisarkPointerRegionStart510
_Videopac_Subsong0DisarkPointerRegionStart510:
	.word _Videopac_Subsong0_RegisterBlock_92
 .globl Videopac_Subsong0DisarkPointerRegionEnd510
Videopac_Subsong0DisarkPointerRegionEnd510:

 .globl _Videopac_Subsong0DisarkByteRegionStart511
_Videopac_Subsong0DisarkByteRegionStart511:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd511
Videopac_Subsong0DisarkByteRegionEnd511:
 .globl _Videopac_Subsong0DisarkPointerRegionStart512
_Videopac_Subsong0DisarkPointerRegionStart512:
	.word _Videopac_Subsong0_RegisterBlock_93
 .globl Videopac_Subsong0DisarkPointerRegionEnd512
Videopac_Subsong0DisarkPointerRegionEnd512:

 .globl _Videopac_Subsong0DisarkByteRegionStart513
_Videopac_Subsong0DisarkByteRegionStart513:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd513
Videopac_Subsong0DisarkByteRegionEnd513:
 .globl _Videopac_Subsong0DisarkPointerRegionStart514
_Videopac_Subsong0DisarkPointerRegionStart514:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd514
Videopac_Subsong0DisarkPointerRegionEnd514:

 .globl _Videopac_Subsong0DisarkByteRegionStart515
_Videopac_Subsong0DisarkByteRegionStart515:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd515
Videopac_Subsong0DisarkByteRegionEnd515:
 .globl _Videopac_Subsong0DisarkPointerRegionStart516
_Videopac_Subsong0DisarkPointerRegionStart516:
	.word _Videopac_Subsong0_RegisterBlock_94
 .globl Videopac_Subsong0DisarkPointerRegionEnd516
Videopac_Subsong0DisarkPointerRegionEnd516:

 .globl _Videopac_Subsong0DisarkByteRegionStart517
_Videopac_Subsong0DisarkByteRegionStart517:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd517
Videopac_Subsong0DisarkByteRegionEnd517:
 .globl _Videopac_Subsong0DisarkPointerRegionStart518
_Videopac_Subsong0DisarkPointerRegionStart518:
	.word _Videopac_Subsong0_RegisterBlock_95
 .globl Videopac_Subsong0DisarkPointerRegionEnd518
Videopac_Subsong0DisarkPointerRegionEnd518:

 .globl _Videopac_Subsong0DisarkByteRegionStart519
_Videopac_Subsong0DisarkByteRegionStart519:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd519
Videopac_Subsong0DisarkByteRegionEnd519:
 .globl _Videopac_Subsong0DisarkPointerRegionStart520
_Videopac_Subsong0DisarkPointerRegionStart520:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd520
Videopac_Subsong0DisarkPointerRegionEnd520:

 .globl _Videopac_Subsong0DisarkByteRegionStart521
_Videopac_Subsong0DisarkByteRegionStart521:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd521
Videopac_Subsong0DisarkByteRegionEnd521:
 .globl _Videopac_Subsong0DisarkPointerRegionStart522
_Videopac_Subsong0DisarkPointerRegionStart522:
	.word _Videopac_Subsong0_RegisterBlock_96
 .globl Videopac_Subsong0DisarkPointerRegionEnd522
Videopac_Subsong0DisarkPointerRegionEnd522:

 .globl _Videopac_Subsong0DisarkByteRegionStart523
_Videopac_Subsong0DisarkByteRegionStart523:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd523
Videopac_Subsong0DisarkByteRegionEnd523:
 .globl _Videopac_Subsong0DisarkPointerRegionStart524
_Videopac_Subsong0DisarkPointerRegionStart524:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd524
Videopac_Subsong0DisarkPointerRegionEnd524:

 .globl Videopac_Subsong0_Track_46
Videopac_Subsong0_Track_46:
 .globl _Videopac_Subsong0DisarkByteRegionStart525
_Videopac_Subsong0DisarkByteRegionStart525:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd525
Videopac_Subsong0DisarkByteRegionEnd525:
 .globl _Videopac_Subsong0DisarkPointerRegionStart526
_Videopac_Subsong0DisarkPointerRegionStart526:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd526
Videopac_Subsong0DisarkPointerRegionEnd526:

 .globl _Videopac_Subsong0DisarkByteRegionStart527
_Videopac_Subsong0DisarkByteRegionStart527:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd527
Videopac_Subsong0DisarkByteRegionEnd527:
 .globl _Videopac_Subsong0DisarkPointerRegionStart528
_Videopac_Subsong0DisarkPointerRegionStart528:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd528
Videopac_Subsong0DisarkPointerRegionEnd528:

 .globl _Videopac_Subsong0DisarkByteRegionStart529
_Videopac_Subsong0DisarkByteRegionStart529:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd529
Videopac_Subsong0DisarkByteRegionEnd529:
 .globl _Videopac_Subsong0DisarkPointerRegionStart530
_Videopac_Subsong0DisarkPointerRegionStart530:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd530
Videopac_Subsong0DisarkPointerRegionEnd530:

 .globl _Videopac_Subsong0DisarkByteRegionStart531
_Videopac_Subsong0DisarkByteRegionStart531:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd531
Videopac_Subsong0DisarkByteRegionEnd531:
 .globl _Videopac_Subsong0DisarkPointerRegionStart532
_Videopac_Subsong0DisarkPointerRegionStart532:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd532
Videopac_Subsong0DisarkPointerRegionEnd532:

 .globl _Videopac_Subsong0DisarkByteRegionStart533
_Videopac_Subsong0DisarkByteRegionStart533:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd533
Videopac_Subsong0DisarkByteRegionEnd533:
 .globl _Videopac_Subsong0DisarkPointerRegionStart534
_Videopac_Subsong0DisarkPointerRegionStart534:
	.word _Videopac_Subsong0_RegisterBlock_102
 .globl Videopac_Subsong0DisarkPointerRegionEnd534
Videopac_Subsong0DisarkPointerRegionEnd534:

 .globl _Videopac_Subsong0DisarkByteRegionStart535
_Videopac_Subsong0DisarkByteRegionStart535:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd535
Videopac_Subsong0DisarkByteRegionEnd535:
 .globl _Videopac_Subsong0DisarkPointerRegionStart536
_Videopac_Subsong0DisarkPointerRegionStart536:
	.word _Videopac_Subsong0_RegisterBlock_103
 .globl Videopac_Subsong0DisarkPointerRegionEnd536
Videopac_Subsong0DisarkPointerRegionEnd536:

 .globl _Videopac_Subsong0DisarkByteRegionStart537
_Videopac_Subsong0DisarkByteRegionStart537:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd537
Videopac_Subsong0DisarkByteRegionEnd537:
 .globl _Videopac_Subsong0DisarkPointerRegionStart538
_Videopac_Subsong0DisarkPointerRegionStart538:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd538
Videopac_Subsong0DisarkPointerRegionEnd538:

 .globl _Videopac_Subsong0DisarkByteRegionStart539
_Videopac_Subsong0DisarkByteRegionStart539:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd539
Videopac_Subsong0DisarkByteRegionEnd539:
 .globl _Videopac_Subsong0DisarkPointerRegionStart540
_Videopac_Subsong0DisarkPointerRegionStart540:
	.word _Videopac_Subsong0_RegisterBlock_104
 .globl Videopac_Subsong0DisarkPointerRegionEnd540
Videopac_Subsong0DisarkPointerRegionEnd540:

 .globl _Videopac_Subsong0DisarkByteRegionStart541
_Videopac_Subsong0DisarkByteRegionStart541:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd541
Videopac_Subsong0DisarkByteRegionEnd541:
 .globl _Videopac_Subsong0DisarkPointerRegionStart542
_Videopac_Subsong0DisarkPointerRegionStart542:
	.word _Videopac_Subsong0_RegisterBlock_105
 .globl Videopac_Subsong0DisarkPointerRegionEnd542
Videopac_Subsong0DisarkPointerRegionEnd542:

 .globl _Videopac_Subsong0DisarkByteRegionStart543
_Videopac_Subsong0DisarkByteRegionStart543:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd543
Videopac_Subsong0DisarkByteRegionEnd543:
 .globl _Videopac_Subsong0DisarkPointerRegionStart544
_Videopac_Subsong0DisarkPointerRegionStart544:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd544
Videopac_Subsong0DisarkPointerRegionEnd544:

 .globl _Videopac_Subsong0DisarkByteRegionStart545
_Videopac_Subsong0DisarkByteRegionStart545:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd545
Videopac_Subsong0DisarkByteRegionEnd545:
 .globl _Videopac_Subsong0DisarkPointerRegionStart546
_Videopac_Subsong0DisarkPointerRegionStart546:
	.word _Videopac_Subsong0_RegisterBlock_106
 .globl Videopac_Subsong0DisarkPointerRegionEnd546
Videopac_Subsong0DisarkPointerRegionEnd546:

 .globl _Videopac_Subsong0DisarkByteRegionStart547
_Videopac_Subsong0DisarkByteRegionStart547:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd547
Videopac_Subsong0DisarkByteRegionEnd547:
 .globl _Videopac_Subsong0DisarkPointerRegionStart548
_Videopac_Subsong0DisarkPointerRegionStart548:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd548
Videopac_Subsong0DisarkPointerRegionEnd548:

 .globl Videopac_Subsong0_Track_47
Videopac_Subsong0_Track_47:
 .globl _Videopac_Subsong0DisarkByteRegionStart549
_Videopac_Subsong0DisarkByteRegionStart549:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd549
Videopac_Subsong0DisarkByteRegionEnd549:
 .globl _Videopac_Subsong0DisarkPointerRegionStart550
_Videopac_Subsong0DisarkPointerRegionStart550:
	.word _Videopac_Subsong0_RegisterBlock_149
 .globl Videopac_Subsong0DisarkPointerRegionEnd550
Videopac_Subsong0DisarkPointerRegionEnd550:

 .globl _Videopac_Subsong0DisarkByteRegionStart551
_Videopac_Subsong0DisarkByteRegionStart551:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd551
Videopac_Subsong0DisarkByteRegionEnd551:
 .globl _Videopac_Subsong0DisarkPointerRegionStart552
_Videopac_Subsong0DisarkPointerRegionStart552:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd552
Videopac_Subsong0DisarkPointerRegionEnd552:

 .globl _Videopac_Subsong0DisarkByteRegionStart553
_Videopac_Subsong0DisarkByteRegionStart553:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd553
Videopac_Subsong0DisarkByteRegionEnd553:
 .globl _Videopac_Subsong0DisarkPointerRegionStart554
_Videopac_Subsong0DisarkPointerRegionStart554:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd554
Videopac_Subsong0DisarkPointerRegionEnd554:

 .globl _Videopac_Subsong0DisarkByteRegionStart555
_Videopac_Subsong0DisarkByteRegionStart555:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd555
Videopac_Subsong0DisarkByteRegionEnd555:
 .globl _Videopac_Subsong0DisarkPointerRegionStart556
_Videopac_Subsong0DisarkPointerRegionStart556:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd556
Videopac_Subsong0DisarkPointerRegionEnd556:

 .globl _Videopac_Subsong0DisarkByteRegionStart557
_Videopac_Subsong0DisarkByteRegionStart557:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd557
Videopac_Subsong0DisarkByteRegionEnd557:
 .globl _Videopac_Subsong0DisarkPointerRegionStart558
_Videopac_Subsong0DisarkPointerRegionStart558:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd558
Videopac_Subsong0DisarkPointerRegionEnd558:

 .globl _Videopac_Subsong0DisarkByteRegionStart559
_Videopac_Subsong0DisarkByteRegionStart559:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd559
Videopac_Subsong0DisarkByteRegionEnd559:
 .globl _Videopac_Subsong0DisarkPointerRegionStart560
_Videopac_Subsong0DisarkPointerRegionStart560:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd560
Videopac_Subsong0DisarkPointerRegionEnd560:

 .globl _Videopac_Subsong0DisarkByteRegionStart561
_Videopac_Subsong0DisarkByteRegionStart561:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd561
Videopac_Subsong0DisarkByteRegionEnd561:
 .globl _Videopac_Subsong0DisarkPointerRegionStart562
_Videopac_Subsong0DisarkPointerRegionStart562:
	.word _Videopac_Subsong0_RegisterBlock_113
 .globl Videopac_Subsong0DisarkPointerRegionEnd562
Videopac_Subsong0DisarkPointerRegionEnd562:

 .globl _Videopac_Subsong0DisarkByteRegionStart563
_Videopac_Subsong0DisarkByteRegionStart563:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd563
Videopac_Subsong0DisarkByteRegionEnd563:
 .globl _Videopac_Subsong0DisarkPointerRegionStart564
_Videopac_Subsong0DisarkPointerRegionStart564:
	.word _Videopac_Subsong0_RegisterBlock_114
 .globl Videopac_Subsong0DisarkPointerRegionEnd564
Videopac_Subsong0DisarkPointerRegionEnd564:

 .globl _Videopac_Subsong0DisarkByteRegionStart565
_Videopac_Subsong0DisarkByteRegionStart565:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd565
Videopac_Subsong0DisarkByteRegionEnd565:
 .globl _Videopac_Subsong0DisarkPointerRegionStart566
_Videopac_Subsong0DisarkPointerRegionStart566:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd566
Videopac_Subsong0DisarkPointerRegionEnd566:

 .globl _Videopac_Subsong0DisarkByteRegionStart567
_Videopac_Subsong0DisarkByteRegionStart567:
	.byte 48	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd567
Videopac_Subsong0DisarkByteRegionEnd567:
 .globl _Videopac_Subsong0DisarkPointerRegionStart568
_Videopac_Subsong0DisarkPointerRegionStart568:
	.word _Videopac_Subsong0_RegisterBlock_115
 .globl Videopac_Subsong0DisarkPointerRegionEnd568
Videopac_Subsong0DisarkPointerRegionEnd568:

 .globl _Videopac_Subsong0DisarkByteRegionStart569
_Videopac_Subsong0DisarkByteRegionStart569:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd569
Videopac_Subsong0DisarkByteRegionEnd569:
 .globl _Videopac_Subsong0DisarkPointerRegionStart570
_Videopac_Subsong0DisarkPointerRegionStart570:
	.word _Videopac_Subsong0_RegisterBlock_116
 .globl Videopac_Subsong0DisarkPointerRegionEnd570
Videopac_Subsong0DisarkPointerRegionEnd570:

 .globl _Videopac_Subsong0DisarkByteRegionStart571
_Videopac_Subsong0DisarkByteRegionStart571:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd571
Videopac_Subsong0DisarkByteRegionEnd571:
 .globl _Videopac_Subsong0DisarkPointerRegionStart572
_Videopac_Subsong0DisarkPointerRegionStart572:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd572
Videopac_Subsong0DisarkPointerRegionEnd572:

 .globl _Videopac_Subsong0DisarkByteRegionStart573
_Videopac_Subsong0DisarkByteRegionStart573:
	.byte 36	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd573
Videopac_Subsong0DisarkByteRegionEnd573:
 .globl _Videopac_Subsong0DisarkPointerRegionStart574
_Videopac_Subsong0DisarkPointerRegionStart574:
	.word _Videopac_Subsong0_RegisterBlock_117
 .globl Videopac_Subsong0DisarkPointerRegionEnd574
Videopac_Subsong0DisarkPointerRegionEnd574:

 .globl Videopac_Subsong0_Track_50
Videopac_Subsong0_Track_50:
 .globl _Videopac_Subsong0DisarkByteRegionStart575
_Videopac_Subsong0DisarkByteRegionStart575:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd575
Videopac_Subsong0DisarkByteRegionEnd575:
 .globl _Videopac_Subsong0DisarkPointerRegionStart576
_Videopac_Subsong0DisarkPointerRegionStart576:
	.word _Videopac_Subsong0_RegisterBlock_149
 .globl Videopac_Subsong0DisarkPointerRegionEnd576
Videopac_Subsong0DisarkPointerRegionEnd576:

 .globl _Videopac_Subsong0DisarkByteRegionStart577
_Videopac_Subsong0DisarkByteRegionStart577:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd577
Videopac_Subsong0DisarkByteRegionEnd577:
 .globl _Videopac_Subsong0DisarkPointerRegionStart578
_Videopac_Subsong0DisarkPointerRegionStart578:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd578
Videopac_Subsong0DisarkPointerRegionEnd578:

 .globl _Videopac_Subsong0DisarkByteRegionStart579
_Videopac_Subsong0DisarkByteRegionStart579:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd579
Videopac_Subsong0DisarkByteRegionEnd579:
 .globl _Videopac_Subsong0DisarkPointerRegionStart580
_Videopac_Subsong0DisarkPointerRegionStart580:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd580
Videopac_Subsong0DisarkPointerRegionEnd580:

 .globl _Videopac_Subsong0DisarkByteRegionStart581
_Videopac_Subsong0DisarkByteRegionStart581:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd581
Videopac_Subsong0DisarkByteRegionEnd581:
 .globl _Videopac_Subsong0DisarkPointerRegionStart582
_Videopac_Subsong0DisarkPointerRegionStart582:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd582
Videopac_Subsong0DisarkPointerRegionEnd582:

 .globl _Videopac_Subsong0DisarkByteRegionStart583
_Videopac_Subsong0DisarkByteRegionStart583:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd583
Videopac_Subsong0DisarkByteRegionEnd583:
 .globl _Videopac_Subsong0DisarkPointerRegionStart584
_Videopac_Subsong0DisarkPointerRegionStart584:
	.word _Videopac_Subsong0_RegisterBlock_304
 .globl Videopac_Subsong0DisarkPointerRegionEnd584
Videopac_Subsong0DisarkPointerRegionEnd584:

 .globl _Videopac_Subsong0DisarkByteRegionStart585
_Videopac_Subsong0DisarkByteRegionStart585:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd585
Videopac_Subsong0DisarkByteRegionEnd585:
 .globl _Videopac_Subsong0DisarkPointerRegionStart586
_Videopac_Subsong0DisarkPointerRegionStart586:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd586
Videopac_Subsong0DisarkPointerRegionEnd586:

 .globl _Videopac_Subsong0DisarkByteRegionStart587
_Videopac_Subsong0DisarkByteRegionStart587:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd587
Videopac_Subsong0DisarkByteRegionEnd587:
 .globl _Videopac_Subsong0DisarkPointerRegionStart588
_Videopac_Subsong0DisarkPointerRegionStart588:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd588
Videopac_Subsong0DisarkPointerRegionEnd588:

 .globl _Videopac_Subsong0DisarkByteRegionStart589
_Videopac_Subsong0DisarkByteRegionStart589:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd589
Videopac_Subsong0DisarkByteRegionEnd589:
 .globl _Videopac_Subsong0DisarkPointerRegionStart590
_Videopac_Subsong0DisarkPointerRegionStart590:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd590
Videopac_Subsong0DisarkPointerRegionEnd590:

 .globl _Videopac_Subsong0DisarkByteRegionStart591
_Videopac_Subsong0DisarkByteRegionStart591:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd591
Videopac_Subsong0DisarkByteRegionEnd591:
 .globl _Videopac_Subsong0DisarkPointerRegionStart592
_Videopac_Subsong0DisarkPointerRegionStart592:
	.word _Videopac_Subsong0_RegisterBlock_308
 .globl Videopac_Subsong0DisarkPointerRegionEnd592
Videopac_Subsong0DisarkPointerRegionEnd592:

 .globl _Videopac_Subsong0DisarkByteRegionStart593
_Videopac_Subsong0DisarkByteRegionStart593:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd593
Videopac_Subsong0DisarkByteRegionEnd593:
 .globl _Videopac_Subsong0DisarkPointerRegionStart594
_Videopac_Subsong0DisarkPointerRegionStart594:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd594
Videopac_Subsong0DisarkPointerRegionEnd594:

 .globl _Videopac_Subsong0DisarkByteRegionStart595
_Videopac_Subsong0DisarkByteRegionStart595:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd595
Videopac_Subsong0DisarkByteRegionEnd595:
 .globl _Videopac_Subsong0DisarkPointerRegionStart596
_Videopac_Subsong0DisarkPointerRegionStart596:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd596
Videopac_Subsong0DisarkPointerRegionEnd596:

 .globl _Videopac_Subsong0DisarkByteRegionStart597
_Videopac_Subsong0DisarkByteRegionStart597:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd597
Videopac_Subsong0DisarkByteRegionEnd597:
 .globl _Videopac_Subsong0DisarkPointerRegionStart598
_Videopac_Subsong0DisarkPointerRegionStart598:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd598
Videopac_Subsong0DisarkPointerRegionEnd598:

 .globl _Videopac_Subsong0DisarkByteRegionStart599
_Videopac_Subsong0DisarkByteRegionStart599:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd599
Videopac_Subsong0DisarkByteRegionEnd599:
 .globl _Videopac_Subsong0DisarkPointerRegionStart600
_Videopac_Subsong0DisarkPointerRegionStart600:
	.word _Videopac_Subsong0_RegisterBlock_304
 .globl Videopac_Subsong0DisarkPointerRegionEnd600
Videopac_Subsong0DisarkPointerRegionEnd600:

 .globl _Videopac_Subsong0DisarkByteRegionStart601
_Videopac_Subsong0DisarkByteRegionStart601:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd601
Videopac_Subsong0DisarkByteRegionEnd601:
 .globl _Videopac_Subsong0DisarkPointerRegionStart602
_Videopac_Subsong0DisarkPointerRegionStart602:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd602
Videopac_Subsong0DisarkPointerRegionEnd602:

 .globl _Videopac_Subsong0DisarkByteRegionStart603
_Videopac_Subsong0DisarkByteRegionStart603:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd603
Videopac_Subsong0DisarkByteRegionEnd603:
 .globl _Videopac_Subsong0DisarkPointerRegionStart604
_Videopac_Subsong0DisarkPointerRegionStart604:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd604
Videopac_Subsong0DisarkPointerRegionEnd604:

 .globl _Videopac_Subsong0DisarkByteRegionStart605
_Videopac_Subsong0DisarkByteRegionStart605:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd605
Videopac_Subsong0DisarkByteRegionEnd605:
 .globl _Videopac_Subsong0DisarkPointerRegionStart606
_Videopac_Subsong0DisarkPointerRegionStart606:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd606
Videopac_Subsong0DisarkPointerRegionEnd606:

 .globl _Videopac_Subsong0DisarkByteRegionStart607
_Videopac_Subsong0DisarkByteRegionStart607:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd607
Videopac_Subsong0DisarkByteRegionEnd607:
 .globl _Videopac_Subsong0DisarkPointerRegionStart608
_Videopac_Subsong0DisarkPointerRegionStart608:
	.word _Videopac_Subsong0_RegisterBlock_316
 .globl Videopac_Subsong0DisarkPointerRegionEnd608
Videopac_Subsong0DisarkPointerRegionEnd608:

 .globl Videopac_Subsong0_Track_60
Videopac_Subsong0_Track_60:
 .globl _Videopac_Subsong0DisarkByteRegionStart609
_Videopac_Subsong0DisarkByteRegionStart609:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd609
Videopac_Subsong0DisarkByteRegionEnd609:
 .globl _Videopac_Subsong0DisarkPointerRegionStart610
_Videopac_Subsong0DisarkPointerRegionStart610:
	.word _Videopac_Subsong0_RegisterBlock_29
 .globl Videopac_Subsong0DisarkPointerRegionEnd610
Videopac_Subsong0DisarkPointerRegionEnd610:

 .globl _Videopac_Subsong0DisarkByteRegionStart611
_Videopac_Subsong0DisarkByteRegionStart611:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd611
Videopac_Subsong0DisarkByteRegionEnd611:
 .globl _Videopac_Subsong0DisarkPointerRegionStart612
_Videopac_Subsong0DisarkPointerRegionStart612:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd612
Videopac_Subsong0DisarkPointerRegionEnd612:

 .globl _Videopac_Subsong0DisarkByteRegionStart613
_Videopac_Subsong0DisarkByteRegionStart613:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd613
Videopac_Subsong0DisarkByteRegionEnd613:
 .globl _Videopac_Subsong0DisarkPointerRegionStart614
_Videopac_Subsong0DisarkPointerRegionStart614:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd614
Videopac_Subsong0DisarkPointerRegionEnd614:

 .globl _Videopac_Subsong0DisarkByteRegionStart615
_Videopac_Subsong0DisarkByteRegionStart615:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd615
Videopac_Subsong0DisarkByteRegionEnd615:
 .globl _Videopac_Subsong0DisarkPointerRegionStart616
_Videopac_Subsong0DisarkPointerRegionStart616:
	.word _Videopac_Subsong0_RegisterBlock_321
 .globl Videopac_Subsong0DisarkPointerRegionEnd616
Videopac_Subsong0DisarkPointerRegionEnd616:

 .globl _Videopac_Subsong0DisarkByteRegionStart617
_Videopac_Subsong0DisarkByteRegionStart617:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd617
Videopac_Subsong0DisarkByteRegionEnd617:
 .globl _Videopac_Subsong0DisarkPointerRegionStart618
_Videopac_Subsong0DisarkPointerRegionStart618:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd618
Videopac_Subsong0DisarkPointerRegionEnd618:

 .globl _Videopac_Subsong0DisarkByteRegionStart619
_Videopac_Subsong0DisarkByteRegionStart619:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd619
Videopac_Subsong0DisarkByteRegionEnd619:
 .globl _Videopac_Subsong0DisarkPointerRegionStart620
_Videopac_Subsong0DisarkPointerRegionStart620:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd620
Videopac_Subsong0DisarkPointerRegionEnd620:

 .globl _Videopac_Subsong0DisarkByteRegionStart621
_Videopac_Subsong0DisarkByteRegionStart621:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd621
Videopac_Subsong0DisarkByteRegionEnd621:
 .globl _Videopac_Subsong0DisarkPointerRegionStart622
_Videopac_Subsong0DisarkPointerRegionStart622:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd622
Videopac_Subsong0DisarkPointerRegionEnd622:

 .globl _Videopac_Subsong0DisarkByteRegionStart623
_Videopac_Subsong0DisarkByteRegionStart623:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd623
Videopac_Subsong0DisarkByteRegionEnd623:
 .globl _Videopac_Subsong0DisarkPointerRegionStart624
_Videopac_Subsong0DisarkPointerRegionStart624:
	.word _Videopac_Subsong0_RegisterBlock_325
 .globl Videopac_Subsong0DisarkPointerRegionEnd624
Videopac_Subsong0DisarkPointerRegionEnd624:

 .globl _Videopac_Subsong0DisarkByteRegionStart625
_Videopac_Subsong0DisarkByteRegionStart625:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd625
Videopac_Subsong0DisarkByteRegionEnd625:
 .globl _Videopac_Subsong0DisarkPointerRegionStart626
_Videopac_Subsong0DisarkPointerRegionStart626:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd626
Videopac_Subsong0DisarkPointerRegionEnd626:

 .globl _Videopac_Subsong0DisarkByteRegionStart627
_Videopac_Subsong0DisarkByteRegionStart627:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd627
Videopac_Subsong0DisarkByteRegionEnd627:
 .globl _Videopac_Subsong0DisarkPointerRegionStart628
_Videopac_Subsong0DisarkPointerRegionStart628:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd628
Videopac_Subsong0DisarkPointerRegionEnd628:

 .globl _Videopac_Subsong0DisarkByteRegionStart629
_Videopac_Subsong0DisarkByteRegionStart629:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd629
Videopac_Subsong0DisarkByteRegionEnd629:
 .globl _Videopac_Subsong0DisarkPointerRegionStart630
_Videopac_Subsong0DisarkPointerRegionStart630:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd630
Videopac_Subsong0DisarkPointerRegionEnd630:

 .globl _Videopac_Subsong0DisarkByteRegionStart631
_Videopac_Subsong0DisarkByteRegionStart631:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd631
Videopac_Subsong0DisarkByteRegionEnd631:
 .globl _Videopac_Subsong0DisarkPointerRegionStart632
_Videopac_Subsong0DisarkPointerRegionStart632:
	.word _Videopac_Subsong0_RegisterBlock_321
 .globl Videopac_Subsong0DisarkPointerRegionEnd632
Videopac_Subsong0DisarkPointerRegionEnd632:

 .globl _Videopac_Subsong0DisarkByteRegionStart633
_Videopac_Subsong0DisarkByteRegionStart633:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd633
Videopac_Subsong0DisarkByteRegionEnd633:
 .globl _Videopac_Subsong0DisarkPointerRegionStart634
_Videopac_Subsong0DisarkPointerRegionStart634:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd634
Videopac_Subsong0DisarkPointerRegionEnd634:

 .globl _Videopac_Subsong0DisarkByteRegionStart635
_Videopac_Subsong0DisarkByteRegionStart635:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd635
Videopac_Subsong0DisarkByteRegionEnd635:
 .globl _Videopac_Subsong0DisarkPointerRegionStart636
_Videopac_Subsong0DisarkPointerRegionStart636:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd636
Videopac_Subsong0DisarkPointerRegionEnd636:

 .globl _Videopac_Subsong0DisarkByteRegionStart637
_Videopac_Subsong0DisarkByteRegionStart637:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd637
Videopac_Subsong0DisarkByteRegionEnd637:
 .globl _Videopac_Subsong0DisarkPointerRegionStart638
_Videopac_Subsong0DisarkPointerRegionStart638:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd638
Videopac_Subsong0DisarkPointerRegionEnd638:

 .globl _Videopac_Subsong0DisarkByteRegionStart639
_Videopac_Subsong0DisarkByteRegionStart639:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd639
Videopac_Subsong0DisarkByteRegionEnd639:
 .globl _Videopac_Subsong0DisarkPointerRegionStart640
_Videopac_Subsong0DisarkPointerRegionStart640:
	.word _Videopac_Subsong0_RegisterBlock_333
 .globl Videopac_Subsong0DisarkPointerRegionEnd640
Videopac_Subsong0DisarkPointerRegionEnd640:

 .globl _Videopac_Subsong0DisarkByteRegionStart641
_Videopac_Subsong0DisarkByteRegionStart641:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd641
Videopac_Subsong0DisarkByteRegionEnd641:
 .globl _Videopac_Subsong0DisarkPointerRegionStart642
_Videopac_Subsong0DisarkPointerRegionStart642:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd642
Videopac_Subsong0DisarkPointerRegionEnd642:

 .globl Videopac_Subsong0_Track_62
Videopac_Subsong0_Track_62:
 .globl _Videopac_Subsong0DisarkByteRegionStart643
_Videopac_Subsong0DisarkByteRegionStart643:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd643
Videopac_Subsong0DisarkByteRegionEnd643:
 .globl _Videopac_Subsong0DisarkPointerRegionStart644
_Videopac_Subsong0DisarkPointerRegionStart644:
	.word _Videopac_Subsong0_RegisterBlock_336
 .globl Videopac_Subsong0DisarkPointerRegionEnd644
Videopac_Subsong0DisarkPointerRegionEnd644:

 .globl _Videopac_Subsong0DisarkByteRegionStart645
_Videopac_Subsong0DisarkByteRegionStart645:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd645
Videopac_Subsong0DisarkByteRegionEnd645:
 .globl _Videopac_Subsong0DisarkPointerRegionStart646
_Videopac_Subsong0DisarkPointerRegionStart646:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd646
Videopac_Subsong0DisarkPointerRegionEnd646:

 .globl _Videopac_Subsong0DisarkByteRegionStart647
_Videopac_Subsong0DisarkByteRegionStart647:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd647
Videopac_Subsong0DisarkByteRegionEnd647:
 .globl _Videopac_Subsong0DisarkPointerRegionStart648
_Videopac_Subsong0DisarkPointerRegionStart648:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd648
Videopac_Subsong0DisarkPointerRegionEnd648:

 .globl _Videopac_Subsong0DisarkByteRegionStart649
_Videopac_Subsong0DisarkByteRegionStart649:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd649
Videopac_Subsong0DisarkByteRegionEnd649:
 .globl _Videopac_Subsong0DisarkPointerRegionStart650
_Videopac_Subsong0DisarkPointerRegionStart650:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd650
Videopac_Subsong0DisarkPointerRegionEnd650:

 .globl _Videopac_Subsong0DisarkByteRegionStart651
_Videopac_Subsong0DisarkByteRegionStart651:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd651
Videopac_Subsong0DisarkByteRegionEnd651:
 .globl _Videopac_Subsong0DisarkPointerRegionStart652
_Videopac_Subsong0DisarkPointerRegionStart652:
	.word _Videopac_Subsong0_RegisterBlock_304
 .globl Videopac_Subsong0DisarkPointerRegionEnd652
Videopac_Subsong0DisarkPointerRegionEnd652:

 .globl _Videopac_Subsong0DisarkByteRegionStart653
_Videopac_Subsong0DisarkByteRegionStart653:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd653
Videopac_Subsong0DisarkByteRegionEnd653:
 .globl _Videopac_Subsong0DisarkPointerRegionStart654
_Videopac_Subsong0DisarkPointerRegionStart654:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd654
Videopac_Subsong0DisarkPointerRegionEnd654:

 .globl _Videopac_Subsong0DisarkByteRegionStart655
_Videopac_Subsong0DisarkByteRegionStart655:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd655
Videopac_Subsong0DisarkByteRegionEnd655:
 .globl _Videopac_Subsong0DisarkPointerRegionStart656
_Videopac_Subsong0DisarkPointerRegionStart656:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd656
Videopac_Subsong0DisarkPointerRegionEnd656:

 .globl _Videopac_Subsong0DisarkByteRegionStart657
_Videopac_Subsong0DisarkByteRegionStart657:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd657
Videopac_Subsong0DisarkByteRegionEnd657:
 .globl _Videopac_Subsong0DisarkPointerRegionStart658
_Videopac_Subsong0DisarkPointerRegionStart658:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd658
Videopac_Subsong0DisarkPointerRegionEnd658:

 .globl _Videopac_Subsong0DisarkByteRegionStart659
_Videopac_Subsong0DisarkByteRegionStart659:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd659
Videopac_Subsong0DisarkByteRegionEnd659:
 .globl _Videopac_Subsong0DisarkPointerRegionStart660
_Videopac_Subsong0DisarkPointerRegionStart660:
	.word _Videopac_Subsong0_RegisterBlock_344
 .globl Videopac_Subsong0DisarkPointerRegionEnd660
Videopac_Subsong0DisarkPointerRegionEnd660:

 .globl _Videopac_Subsong0DisarkByteRegionStart661
_Videopac_Subsong0DisarkByteRegionStart661:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd661
Videopac_Subsong0DisarkByteRegionEnd661:
 .globl _Videopac_Subsong0DisarkPointerRegionStart662
_Videopac_Subsong0DisarkPointerRegionStart662:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd662
Videopac_Subsong0DisarkPointerRegionEnd662:

 .globl _Videopac_Subsong0DisarkByteRegionStart663
_Videopac_Subsong0DisarkByteRegionStart663:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd663
Videopac_Subsong0DisarkByteRegionEnd663:
 .globl _Videopac_Subsong0DisarkPointerRegionStart664
_Videopac_Subsong0DisarkPointerRegionStart664:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd664
Videopac_Subsong0DisarkPointerRegionEnd664:

 .globl _Videopac_Subsong0DisarkByteRegionStart665
_Videopac_Subsong0DisarkByteRegionStart665:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd665
Videopac_Subsong0DisarkByteRegionEnd665:
 .globl _Videopac_Subsong0DisarkPointerRegionStart666
_Videopac_Subsong0DisarkPointerRegionStart666:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd666
Videopac_Subsong0DisarkPointerRegionEnd666:

 .globl _Videopac_Subsong0DisarkByteRegionStart667
_Videopac_Subsong0DisarkByteRegionStart667:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd667
Videopac_Subsong0DisarkByteRegionEnd667:
 .globl _Videopac_Subsong0DisarkPointerRegionStart668
_Videopac_Subsong0DisarkPointerRegionStart668:
	.word _Videopac_Subsong0_RegisterBlock_304
 .globl Videopac_Subsong0DisarkPointerRegionEnd668
Videopac_Subsong0DisarkPointerRegionEnd668:

 .globl _Videopac_Subsong0DisarkByteRegionStart669
_Videopac_Subsong0DisarkByteRegionStart669:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd669
Videopac_Subsong0DisarkByteRegionEnd669:
 .globl _Videopac_Subsong0DisarkPointerRegionStart670
_Videopac_Subsong0DisarkPointerRegionStart670:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd670
Videopac_Subsong0DisarkPointerRegionEnd670:

 .globl _Videopac_Subsong0DisarkByteRegionStart671
_Videopac_Subsong0DisarkByteRegionStart671:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd671
Videopac_Subsong0DisarkByteRegionEnd671:
 .globl _Videopac_Subsong0DisarkPointerRegionStart672
_Videopac_Subsong0DisarkPointerRegionStart672:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd672
Videopac_Subsong0DisarkPointerRegionEnd672:

 .globl _Videopac_Subsong0DisarkByteRegionStart673
_Videopac_Subsong0DisarkByteRegionStart673:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd673
Videopac_Subsong0DisarkByteRegionEnd673:
 .globl _Videopac_Subsong0DisarkPointerRegionStart674
_Videopac_Subsong0DisarkPointerRegionStart674:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd674
Videopac_Subsong0DisarkPointerRegionEnd674:

 .globl _Videopac_Subsong0DisarkByteRegionStart675
_Videopac_Subsong0DisarkByteRegionStart675:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd675
Videopac_Subsong0DisarkByteRegionEnd675:
 .globl _Videopac_Subsong0DisarkPointerRegionStart676
_Videopac_Subsong0DisarkPointerRegionStart676:
	.word _Videopac_Subsong0_RegisterBlock_316
 .globl Videopac_Subsong0DisarkPointerRegionEnd676
Videopac_Subsong0DisarkPointerRegionEnd676:

 .globl Videopac_Subsong0_Track_63
Videopac_Subsong0_Track_63:
 .globl _Videopac_Subsong0DisarkByteRegionStart677
_Videopac_Subsong0DisarkByteRegionStart677:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd677
Videopac_Subsong0DisarkByteRegionEnd677:
 .globl _Videopac_Subsong0DisarkPointerRegionStart678
_Videopac_Subsong0DisarkPointerRegionStart678:
	.word _Videopac_Subsong0_RegisterBlock_59
 .globl Videopac_Subsong0DisarkPointerRegionEnd678
Videopac_Subsong0DisarkPointerRegionEnd678:

 .globl _Videopac_Subsong0DisarkByteRegionStart679
_Videopac_Subsong0DisarkByteRegionStart679:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd679
Videopac_Subsong0DisarkByteRegionEnd679:
 .globl _Videopac_Subsong0DisarkPointerRegionStart680
_Videopac_Subsong0DisarkPointerRegionStart680:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd680
Videopac_Subsong0DisarkPointerRegionEnd680:

 .globl _Videopac_Subsong0DisarkByteRegionStart681
_Videopac_Subsong0DisarkByteRegionStart681:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd681
Videopac_Subsong0DisarkByteRegionEnd681:
 .globl _Videopac_Subsong0DisarkPointerRegionStart682
_Videopac_Subsong0DisarkPointerRegionStart682:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd682
Videopac_Subsong0DisarkPointerRegionEnd682:

 .globl _Videopac_Subsong0DisarkByteRegionStart683
_Videopac_Subsong0DisarkByteRegionStart683:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd683
Videopac_Subsong0DisarkByteRegionEnd683:
 .globl _Videopac_Subsong0DisarkPointerRegionStart684
_Videopac_Subsong0DisarkPointerRegionStart684:
	.word _Videopac_Subsong0_RegisterBlock_321
 .globl Videopac_Subsong0DisarkPointerRegionEnd684
Videopac_Subsong0DisarkPointerRegionEnd684:

 .globl _Videopac_Subsong0DisarkByteRegionStart685
_Videopac_Subsong0DisarkByteRegionStart685:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd685
Videopac_Subsong0DisarkByteRegionEnd685:
 .globl _Videopac_Subsong0DisarkPointerRegionStart686
_Videopac_Subsong0DisarkPointerRegionStart686:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd686
Videopac_Subsong0DisarkPointerRegionEnd686:

 .globl _Videopac_Subsong0DisarkByteRegionStart687
_Videopac_Subsong0DisarkByteRegionStart687:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd687
Videopac_Subsong0DisarkByteRegionEnd687:
 .globl _Videopac_Subsong0DisarkPointerRegionStart688
_Videopac_Subsong0DisarkPointerRegionStart688:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd688
Videopac_Subsong0DisarkPointerRegionEnd688:

 .globl _Videopac_Subsong0DisarkByteRegionStart689
_Videopac_Subsong0DisarkByteRegionStart689:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd689
Videopac_Subsong0DisarkByteRegionEnd689:
 .globl _Videopac_Subsong0DisarkPointerRegionStart690
_Videopac_Subsong0DisarkPointerRegionStart690:
	.word _Videopac_Subsong0_RegisterBlock_3
 .globl Videopac_Subsong0DisarkPointerRegionEnd690
Videopac_Subsong0DisarkPointerRegionEnd690:

 .globl _Videopac_Subsong0DisarkByteRegionStart691
_Videopac_Subsong0DisarkByteRegionStart691:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd691
Videopac_Subsong0DisarkByteRegionEnd691:
 .globl _Videopac_Subsong0DisarkPointerRegionStart692
_Videopac_Subsong0DisarkPointerRegionStart692:
	.word _Videopac_Subsong0_RegisterBlock_325
 .globl Videopac_Subsong0DisarkPointerRegionEnd692
Videopac_Subsong0DisarkPointerRegionEnd692:

 .globl _Videopac_Subsong0DisarkByteRegionStart693
_Videopac_Subsong0DisarkByteRegionStart693:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd693
Videopac_Subsong0DisarkByteRegionEnd693:
 .globl _Videopac_Subsong0DisarkPointerRegionStart694
_Videopac_Subsong0DisarkPointerRegionStart694:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd694
Videopac_Subsong0DisarkPointerRegionEnd694:

 .globl _Videopac_Subsong0DisarkByteRegionStart695
_Videopac_Subsong0DisarkByteRegionStart695:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd695
Videopac_Subsong0DisarkByteRegionEnd695:
 .globl _Videopac_Subsong0DisarkPointerRegionStart696
_Videopac_Subsong0DisarkPointerRegionStart696:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd696
Videopac_Subsong0DisarkPointerRegionEnd696:

 .globl _Videopac_Subsong0DisarkByteRegionStart697
_Videopac_Subsong0DisarkByteRegionStart697:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd697
Videopac_Subsong0DisarkByteRegionEnd697:
 .globl _Videopac_Subsong0DisarkPointerRegionStart698
_Videopac_Subsong0DisarkPointerRegionStart698:
	.word _Videopac_Subsong0_RegisterBlock_5
 .globl Videopac_Subsong0DisarkPointerRegionEnd698
Videopac_Subsong0DisarkPointerRegionEnd698:

 .globl _Videopac_Subsong0DisarkByteRegionStart699
_Videopac_Subsong0DisarkByteRegionStart699:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd699
Videopac_Subsong0DisarkByteRegionEnd699:
 .globl _Videopac_Subsong0DisarkPointerRegionStart700
_Videopac_Subsong0DisarkPointerRegionStart700:
	.word _Videopac_Subsong0_RegisterBlock_321
 .globl Videopac_Subsong0DisarkPointerRegionEnd700
Videopac_Subsong0DisarkPointerRegionEnd700:

 .globl _Videopac_Subsong0DisarkByteRegionStart701
_Videopac_Subsong0DisarkByteRegionStart701:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd701
Videopac_Subsong0DisarkByteRegionEnd701:
 .globl _Videopac_Subsong0DisarkPointerRegionStart702
_Videopac_Subsong0DisarkPointerRegionStart702:
	.word _Videopac_Subsong0_RegisterBlock_2
 .globl Videopac_Subsong0DisarkPointerRegionEnd702
Videopac_Subsong0DisarkPointerRegionEnd702:

 .globl _Videopac_Subsong0DisarkByteRegionStart703
_Videopac_Subsong0DisarkByteRegionStart703:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd703
Videopac_Subsong0DisarkByteRegionEnd703:
 .globl _Videopac_Subsong0DisarkPointerRegionStart704
_Videopac_Subsong0DisarkPointerRegionStart704:
	.word _Videopac_Subsong0_RegisterBlock_163
 .globl Videopac_Subsong0DisarkPointerRegionEnd704
Videopac_Subsong0DisarkPointerRegionEnd704:

 .globl _Videopac_Subsong0DisarkByteRegionStart705
_Videopac_Subsong0DisarkByteRegionStart705:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd705
Videopac_Subsong0DisarkByteRegionEnd705:
 .globl _Videopac_Subsong0DisarkPointerRegionStart706
_Videopac_Subsong0DisarkPointerRegionStart706:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd706
Videopac_Subsong0DisarkPointerRegionEnd706:

 .globl _Videopac_Subsong0DisarkByteRegionStart707
_Videopac_Subsong0DisarkByteRegionStart707:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd707
Videopac_Subsong0DisarkByteRegionEnd707:
 .globl _Videopac_Subsong0DisarkPointerRegionStart708
_Videopac_Subsong0DisarkPointerRegionStart708:
	.word _Videopac_Subsong0_RegisterBlock_333
 .globl Videopac_Subsong0DisarkPointerRegionEnd708
Videopac_Subsong0DisarkPointerRegionEnd708:

 .globl _Videopac_Subsong0DisarkByteRegionStart709
_Videopac_Subsong0DisarkByteRegionStart709:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd709
Videopac_Subsong0DisarkByteRegionEnd709:
 .globl _Videopac_Subsong0DisarkPointerRegionStart710
_Videopac_Subsong0DisarkPointerRegionStart710:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd710
Videopac_Subsong0DisarkPointerRegionEnd710:

 .globl Videopac_Subsong0_Track_64
Videopac_Subsong0_Track_64:
 .globl _Videopac_Subsong0DisarkByteRegionStart711
_Videopac_Subsong0DisarkByteRegionStart711:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd711
Videopac_Subsong0DisarkByteRegionEnd711:
 .globl _Videopac_Subsong0DisarkPointerRegionStart712
_Videopac_Subsong0DisarkPointerRegionStart712:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd712
Videopac_Subsong0DisarkPointerRegionEnd712:

 .globl _Videopac_Subsong0DisarkByteRegionStart713
_Videopac_Subsong0DisarkByteRegionStart713:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd713
Videopac_Subsong0DisarkByteRegionEnd713:
 .globl _Videopac_Subsong0DisarkPointerRegionStart714
_Videopac_Subsong0DisarkPointerRegionStart714:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd714
Videopac_Subsong0DisarkPointerRegionEnd714:

 .globl _Videopac_Subsong0DisarkByteRegionStart715
_Videopac_Subsong0DisarkByteRegionStart715:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd715
Videopac_Subsong0DisarkByteRegionEnd715:
 .globl _Videopac_Subsong0DisarkPointerRegionStart716
_Videopac_Subsong0DisarkPointerRegionStart716:
	.word _Videopac_Subsong0_RegisterBlock_374
 .globl Videopac_Subsong0DisarkPointerRegionEnd716
Videopac_Subsong0DisarkPointerRegionEnd716:

 .globl _Videopac_Subsong0DisarkByteRegionStart717
_Videopac_Subsong0DisarkByteRegionStart717:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd717
Videopac_Subsong0DisarkByteRegionEnd717:
 .globl _Videopac_Subsong0DisarkPointerRegionStart718
_Videopac_Subsong0DisarkPointerRegionStart718:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd718
Videopac_Subsong0DisarkPointerRegionEnd718:

 .globl _Videopac_Subsong0DisarkByteRegionStart719
_Videopac_Subsong0DisarkByteRegionStart719:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd719
Videopac_Subsong0DisarkByteRegionEnd719:
 .globl _Videopac_Subsong0DisarkPointerRegionStart720
_Videopac_Subsong0DisarkPointerRegionStart720:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd720
Videopac_Subsong0DisarkPointerRegionEnd720:

 .globl _Videopac_Subsong0DisarkByteRegionStart721
_Videopac_Subsong0DisarkByteRegionStart721:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd721
Videopac_Subsong0DisarkByteRegionEnd721:
 .globl _Videopac_Subsong0DisarkPointerRegionStart722
_Videopac_Subsong0DisarkPointerRegionStart722:
	.word _Videopac_Subsong0_RegisterBlock_13
 .globl Videopac_Subsong0DisarkPointerRegionEnd722
Videopac_Subsong0DisarkPointerRegionEnd722:

 .globl _Videopac_Subsong0DisarkByteRegionStart723
_Videopac_Subsong0DisarkByteRegionStart723:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd723
Videopac_Subsong0DisarkByteRegionEnd723:
 .globl _Videopac_Subsong0DisarkPointerRegionStart724
_Videopac_Subsong0DisarkPointerRegionStart724:
	.word _Videopac_Subsong0_RegisterBlock_378
 .globl Videopac_Subsong0DisarkPointerRegionEnd724
Videopac_Subsong0DisarkPointerRegionEnd724:

 .globl _Videopac_Subsong0DisarkByteRegionStart725
_Videopac_Subsong0DisarkByteRegionStart725:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd725
Videopac_Subsong0DisarkByteRegionEnd725:
 .globl _Videopac_Subsong0DisarkPointerRegionStart726
_Videopac_Subsong0DisarkPointerRegionStart726:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd726
Videopac_Subsong0DisarkPointerRegionEnd726:

 .globl _Videopac_Subsong0DisarkByteRegionStart727
_Videopac_Subsong0DisarkByteRegionStart727:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd727
Videopac_Subsong0DisarkByteRegionEnd727:
 .globl _Videopac_Subsong0DisarkPointerRegionStart728
_Videopac_Subsong0DisarkPointerRegionStart728:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd728
Videopac_Subsong0DisarkPointerRegionEnd728:

 .globl _Videopac_Subsong0DisarkByteRegionStart729
_Videopac_Subsong0DisarkByteRegionStart729:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd729
Videopac_Subsong0DisarkByteRegionEnd729:
 .globl _Videopac_Subsong0DisarkPointerRegionStart730
_Videopac_Subsong0DisarkPointerRegionStart730:
	.word _Videopac_Subsong0_RegisterBlock_15
 .globl Videopac_Subsong0DisarkPointerRegionEnd730
Videopac_Subsong0DisarkPointerRegionEnd730:

 .globl _Videopac_Subsong0DisarkByteRegionStart731
_Videopac_Subsong0DisarkByteRegionStart731:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd731
Videopac_Subsong0DisarkByteRegionEnd731:
 .globl _Videopac_Subsong0DisarkPointerRegionStart732
_Videopac_Subsong0DisarkPointerRegionStart732:
	.word _Videopac_Subsong0_RegisterBlock_374
 .globl Videopac_Subsong0DisarkPointerRegionEnd732
Videopac_Subsong0DisarkPointerRegionEnd732:

 .globl _Videopac_Subsong0DisarkByteRegionStart733
_Videopac_Subsong0DisarkByteRegionStart733:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd733
Videopac_Subsong0DisarkByteRegionEnd733:
 .globl _Videopac_Subsong0DisarkPointerRegionStart734
_Videopac_Subsong0DisarkPointerRegionStart734:
	.word _Videopac_Subsong0_RegisterBlock_12
 .globl Videopac_Subsong0DisarkPointerRegionEnd734
Videopac_Subsong0DisarkPointerRegionEnd734:

 .globl _Videopac_Subsong0DisarkByteRegionStart735
_Videopac_Subsong0DisarkByteRegionStart735:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd735
Videopac_Subsong0DisarkByteRegionEnd735:
 .globl _Videopac_Subsong0DisarkPointerRegionStart736
_Videopac_Subsong0DisarkPointerRegionStart736:
	.word _Videopac_Subsong0_RegisterBlock_204
 .globl Videopac_Subsong0DisarkPointerRegionEnd736
Videopac_Subsong0DisarkPointerRegionEnd736:

 .globl _Videopac_Subsong0DisarkByteRegionStart737
_Videopac_Subsong0DisarkByteRegionStart737:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd737
Videopac_Subsong0DisarkByteRegionEnd737:
 .globl _Videopac_Subsong0DisarkPointerRegionStart738
_Videopac_Subsong0DisarkPointerRegionStart738:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd738
Videopac_Subsong0DisarkPointerRegionEnd738:

 .globl _Videopac_Subsong0DisarkByteRegionStart739
_Videopac_Subsong0DisarkByteRegionStart739:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd739
Videopac_Subsong0DisarkByteRegionEnd739:
 .globl _Videopac_Subsong0DisarkPointerRegionStart740
_Videopac_Subsong0DisarkPointerRegionStart740:
	.word _Videopac_Subsong0_RegisterBlock_386
 .globl Videopac_Subsong0DisarkPointerRegionEnd740
Videopac_Subsong0DisarkPointerRegionEnd740:

 .globl _Videopac_Subsong0DisarkByteRegionStart741
_Videopac_Subsong0DisarkByteRegionStart741:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd741
Videopac_Subsong0DisarkByteRegionEnd741:
 .globl _Videopac_Subsong0DisarkPointerRegionStart742
_Videopac_Subsong0DisarkPointerRegionStart742:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd742
Videopac_Subsong0DisarkPointerRegionEnd742:

 .globl Videopac_Subsong0_Track_65
Videopac_Subsong0_Track_65:
 .globl _Videopac_Subsong0DisarkByteRegionStart743
_Videopac_Subsong0DisarkByteRegionStart743:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd743
Videopac_Subsong0DisarkByteRegionEnd743:
 .globl _Videopac_Subsong0DisarkPointerRegionStart744
_Videopac_Subsong0DisarkPointerRegionStart744:
	.word _Videopac_Subsong0_RegisterBlock_336
 .globl Videopac_Subsong0DisarkPointerRegionEnd744
Videopac_Subsong0DisarkPointerRegionEnd744:

 .globl _Videopac_Subsong0DisarkByteRegionStart745
_Videopac_Subsong0DisarkByteRegionStart745:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd745
Videopac_Subsong0DisarkByteRegionEnd745:
 .globl _Videopac_Subsong0DisarkPointerRegionStart746
_Videopac_Subsong0DisarkPointerRegionStart746:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd746
Videopac_Subsong0DisarkPointerRegionEnd746:

 .globl _Videopac_Subsong0DisarkByteRegionStart747
_Videopac_Subsong0DisarkByteRegionStart747:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd747
Videopac_Subsong0DisarkByteRegionEnd747:
 .globl _Videopac_Subsong0DisarkPointerRegionStart748
_Videopac_Subsong0DisarkPointerRegionStart748:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd748
Videopac_Subsong0DisarkPointerRegionEnd748:

 .globl _Videopac_Subsong0DisarkByteRegionStart749
_Videopac_Subsong0DisarkByteRegionStart749:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd749
Videopac_Subsong0DisarkByteRegionEnd749:
 .globl _Videopac_Subsong0DisarkPointerRegionStart750
_Videopac_Subsong0DisarkPointerRegionStart750:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd750
Videopac_Subsong0DisarkPointerRegionEnd750:

 .globl _Videopac_Subsong0DisarkByteRegionStart751
_Videopac_Subsong0DisarkByteRegionStart751:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd751
Videopac_Subsong0DisarkByteRegionEnd751:
 .globl _Videopac_Subsong0DisarkPointerRegionStart752
_Videopac_Subsong0DisarkPointerRegionStart752:
	.word _Videopac_Subsong0_RegisterBlock_304
 .globl Videopac_Subsong0DisarkPointerRegionEnd752
Videopac_Subsong0DisarkPointerRegionEnd752:

 .globl _Videopac_Subsong0DisarkByteRegionStart753
_Videopac_Subsong0DisarkByteRegionStart753:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd753
Videopac_Subsong0DisarkByteRegionEnd753:
 .globl _Videopac_Subsong0DisarkPointerRegionStart754
_Videopac_Subsong0DisarkPointerRegionStart754:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd754
Videopac_Subsong0DisarkPointerRegionEnd754:

 .globl _Videopac_Subsong0DisarkByteRegionStart755
_Videopac_Subsong0DisarkByteRegionStart755:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd755
Videopac_Subsong0DisarkByteRegionEnd755:
 .globl _Videopac_Subsong0DisarkPointerRegionStart756
_Videopac_Subsong0DisarkPointerRegionStart756:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd756
Videopac_Subsong0DisarkPointerRegionEnd756:

 .globl _Videopac_Subsong0DisarkByteRegionStart757
_Videopac_Subsong0DisarkByteRegionStart757:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd757
Videopac_Subsong0DisarkByteRegionEnd757:
 .globl _Videopac_Subsong0DisarkPointerRegionStart758
_Videopac_Subsong0DisarkPointerRegionStart758:
	.word _Videopac_Subsong0_RegisterBlock_23
 .globl Videopac_Subsong0DisarkPointerRegionEnd758
Videopac_Subsong0DisarkPointerRegionEnd758:

 .globl _Videopac_Subsong0DisarkByteRegionStart759
_Videopac_Subsong0DisarkByteRegionStart759:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd759
Videopac_Subsong0DisarkByteRegionEnd759:
 .globl _Videopac_Subsong0DisarkPointerRegionStart760
_Videopac_Subsong0DisarkPointerRegionStart760:
	.word _Videopac_Subsong0_RegisterBlock_344
 .globl Videopac_Subsong0DisarkPointerRegionEnd760
Videopac_Subsong0DisarkPointerRegionEnd760:

 .globl _Videopac_Subsong0DisarkByteRegionStart761
_Videopac_Subsong0DisarkByteRegionStart761:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd761
Videopac_Subsong0DisarkByteRegionEnd761:
 .globl _Videopac_Subsong0DisarkPointerRegionStart762
_Videopac_Subsong0DisarkPointerRegionStart762:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd762
Videopac_Subsong0DisarkPointerRegionEnd762:

 .globl _Videopac_Subsong0DisarkByteRegionStart763
_Videopac_Subsong0DisarkByteRegionStart763:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd763
Videopac_Subsong0DisarkByteRegionEnd763:
 .globl _Videopac_Subsong0DisarkPointerRegionStart764
_Videopac_Subsong0DisarkPointerRegionStart764:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd764
Videopac_Subsong0DisarkPointerRegionEnd764:

 .globl _Videopac_Subsong0DisarkByteRegionStart765
_Videopac_Subsong0DisarkByteRegionStart765:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd765
Videopac_Subsong0DisarkByteRegionEnd765:
 .globl _Videopac_Subsong0DisarkPointerRegionStart766
_Videopac_Subsong0DisarkPointerRegionStart766:
	.word _Videopac_Subsong0_RegisterBlock_25
 .globl Videopac_Subsong0DisarkPointerRegionEnd766
Videopac_Subsong0DisarkPointerRegionEnd766:

 .globl _Videopac_Subsong0DisarkByteRegionStart767
_Videopac_Subsong0DisarkByteRegionStart767:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd767
Videopac_Subsong0DisarkByteRegionEnd767:
 .globl _Videopac_Subsong0DisarkPointerRegionStart768
_Videopac_Subsong0DisarkPointerRegionStart768:
	.word _Videopac_Subsong0_RegisterBlock_304
 .globl Videopac_Subsong0DisarkPointerRegionEnd768
Videopac_Subsong0DisarkPointerRegionEnd768:

 .globl _Videopac_Subsong0DisarkByteRegionStart769
_Videopac_Subsong0DisarkByteRegionStart769:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd769
Videopac_Subsong0DisarkByteRegionEnd769:
 .globl _Videopac_Subsong0DisarkPointerRegionStart770
_Videopac_Subsong0DisarkPointerRegionStart770:
	.word _Videopac_Subsong0_RegisterBlock_22
 .globl Videopac_Subsong0DisarkPointerRegionEnd770
Videopac_Subsong0DisarkPointerRegionEnd770:

 .globl _Videopac_Subsong0DisarkByteRegionStart771
_Videopac_Subsong0DisarkByteRegionStart771:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd771
Videopac_Subsong0DisarkByteRegionEnd771:
 .globl _Videopac_Subsong0DisarkPointerRegionStart772
_Videopac_Subsong0DisarkPointerRegionStart772:
	.word _Videopac_Subsong0_RegisterBlock_150
 .globl Videopac_Subsong0DisarkPointerRegionEnd772
Videopac_Subsong0DisarkPointerRegionEnd772:

 .globl _Videopac_Subsong0DisarkByteRegionStart773
_Videopac_Subsong0DisarkByteRegionStart773:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd773
Videopac_Subsong0DisarkByteRegionEnd773:
 .globl _Videopac_Subsong0DisarkPointerRegionStart774
_Videopac_Subsong0DisarkPointerRegionStart774:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd774
Videopac_Subsong0DisarkPointerRegionEnd774:

 .globl _Videopac_Subsong0DisarkByteRegionStart775
_Videopac_Subsong0DisarkByteRegionStart775:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd775
Videopac_Subsong0DisarkByteRegionEnd775:
 .globl _Videopac_Subsong0DisarkPointerRegionStart776
_Videopac_Subsong0DisarkPointerRegionStart776:
	.word _Videopac_Subsong0_RegisterBlock_316
 .globl Videopac_Subsong0DisarkPointerRegionEnd776
Videopac_Subsong0DisarkPointerRegionEnd776:

 .globl Videopac_Subsong0_Track_66
Videopac_Subsong0_Track_66:
 .globl _Videopac_Subsong0DisarkByteRegionStart777
_Videopac_Subsong0DisarkByteRegionStart777:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd777
Videopac_Subsong0DisarkByteRegionEnd777:
 .globl _Videopac_Subsong0DisarkPointerRegionStart778
_Videopac_Subsong0DisarkPointerRegionStart778:
	.word _Videopac_Subsong0_RegisterBlock_59
 .globl Videopac_Subsong0DisarkPointerRegionEnd778
Videopac_Subsong0DisarkPointerRegionEnd778:

 .globl _Videopac_Subsong0DisarkByteRegionStart779
_Videopac_Subsong0DisarkByteRegionStart779:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd779
Videopac_Subsong0DisarkByteRegionEnd779:
 .globl _Videopac_Subsong0DisarkPointerRegionStart780
_Videopac_Subsong0DisarkPointerRegionStart780:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd780
Videopac_Subsong0DisarkPointerRegionEnd780:

 .globl _Videopac_Subsong0DisarkByteRegionStart781
_Videopac_Subsong0DisarkByteRegionStart781:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd781
Videopac_Subsong0DisarkByteRegionEnd781:
 .globl _Videopac_Subsong0DisarkPointerRegionStart782
_Videopac_Subsong0DisarkPointerRegionStart782:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd782
Videopac_Subsong0DisarkPointerRegionEnd782:

 .globl _Videopac_Subsong0DisarkByteRegionStart783
_Videopac_Subsong0DisarkByteRegionStart783:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd783
Videopac_Subsong0DisarkByteRegionEnd783:
 .globl _Videopac_Subsong0DisarkPointerRegionStart784
_Videopac_Subsong0DisarkPointerRegionStart784:
	.word _Videopac_Subsong0_RegisterBlock_410
 .globl Videopac_Subsong0DisarkPointerRegionEnd784
Videopac_Subsong0DisarkPointerRegionEnd784:

 .globl _Videopac_Subsong0DisarkByteRegionStart785
_Videopac_Subsong0DisarkByteRegionStart785:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd785
Videopac_Subsong0DisarkByteRegionEnd785:
 .globl _Videopac_Subsong0DisarkPointerRegionStart786
_Videopac_Subsong0DisarkPointerRegionStart786:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd786
Videopac_Subsong0DisarkPointerRegionEnd786:

 .globl _Videopac_Subsong0DisarkByteRegionStart787
_Videopac_Subsong0DisarkByteRegionStart787:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd787
Videopac_Subsong0DisarkByteRegionEnd787:
 .globl _Videopac_Subsong0DisarkPointerRegionStart788
_Videopac_Subsong0DisarkPointerRegionStart788:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd788
Videopac_Subsong0DisarkPointerRegionEnd788:

 .globl _Videopac_Subsong0DisarkByteRegionStart789
_Videopac_Subsong0DisarkByteRegionStart789:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd789
Videopac_Subsong0DisarkByteRegionEnd789:
 .globl _Videopac_Subsong0DisarkPointerRegionStart790
_Videopac_Subsong0DisarkPointerRegionStart790:
	.word _Videopac_Subsong0_RegisterBlock_92
 .globl Videopac_Subsong0DisarkPointerRegionEnd790
Videopac_Subsong0DisarkPointerRegionEnd790:

 .globl _Videopac_Subsong0DisarkByteRegionStart791
_Videopac_Subsong0DisarkByteRegionStart791:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd791
Videopac_Subsong0DisarkByteRegionEnd791:
 .globl _Videopac_Subsong0DisarkPointerRegionStart792
_Videopac_Subsong0DisarkPointerRegionStart792:
	.word _Videopac_Subsong0_RegisterBlock_414
 .globl Videopac_Subsong0DisarkPointerRegionEnd792
Videopac_Subsong0DisarkPointerRegionEnd792:

 .globl _Videopac_Subsong0DisarkByteRegionStart793
_Videopac_Subsong0DisarkByteRegionStart793:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd793
Videopac_Subsong0DisarkByteRegionEnd793:
 .globl _Videopac_Subsong0DisarkPointerRegionStart794
_Videopac_Subsong0DisarkPointerRegionStart794:
	.word _Videopac_Subsong0_RegisterBlock_93
 .globl Videopac_Subsong0DisarkPointerRegionEnd794
Videopac_Subsong0DisarkPointerRegionEnd794:

 .globl _Videopac_Subsong0DisarkByteRegionStart795
_Videopac_Subsong0DisarkByteRegionStart795:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd795
Videopac_Subsong0DisarkByteRegionEnd795:
 .globl _Videopac_Subsong0DisarkPointerRegionStart796
_Videopac_Subsong0DisarkPointerRegionStart796:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd796
Videopac_Subsong0DisarkPointerRegionEnd796:

 .globl _Videopac_Subsong0DisarkByteRegionStart797
_Videopac_Subsong0DisarkByteRegionStart797:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd797
Videopac_Subsong0DisarkByteRegionEnd797:
 .globl _Videopac_Subsong0DisarkPointerRegionStart798
_Videopac_Subsong0DisarkPointerRegionStart798:
	.word _Videopac_Subsong0_RegisterBlock_94
 .globl Videopac_Subsong0DisarkPointerRegionEnd798
Videopac_Subsong0DisarkPointerRegionEnd798:

 .globl _Videopac_Subsong0DisarkByteRegionStart799
_Videopac_Subsong0DisarkByteRegionStart799:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd799
Videopac_Subsong0DisarkByteRegionEnd799:
 .globl _Videopac_Subsong0DisarkPointerRegionStart800
_Videopac_Subsong0DisarkPointerRegionStart800:
	.word _Videopac_Subsong0_RegisterBlock_410
 .globl Videopac_Subsong0DisarkPointerRegionEnd800
Videopac_Subsong0DisarkPointerRegionEnd800:

 .globl _Videopac_Subsong0DisarkByteRegionStart801
_Videopac_Subsong0DisarkByteRegionStart801:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd801
Videopac_Subsong0DisarkByteRegionEnd801:
 .globl _Videopac_Subsong0DisarkPointerRegionStart802
_Videopac_Subsong0DisarkPointerRegionStart802:
	.word _Videopac_Subsong0_RegisterBlock_95
 .globl Videopac_Subsong0DisarkPointerRegionEnd802
Videopac_Subsong0DisarkPointerRegionEnd802:

 .globl _Videopac_Subsong0DisarkByteRegionStart803
_Videopac_Subsong0DisarkByteRegionStart803:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd803
Videopac_Subsong0DisarkByteRegionEnd803:
 .globl _Videopac_Subsong0DisarkPointerRegionStart804
_Videopac_Subsong0DisarkPointerRegionStart804:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd804
Videopac_Subsong0DisarkPointerRegionEnd804:

 .globl _Videopac_Subsong0DisarkByteRegionStart805
_Videopac_Subsong0DisarkByteRegionStart805:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd805
Videopac_Subsong0DisarkByteRegionEnd805:
 .globl _Videopac_Subsong0DisarkPointerRegionStart806
_Videopac_Subsong0DisarkPointerRegionStart806:
	.word _Videopac_Subsong0_RegisterBlock_96
 .globl Videopac_Subsong0DisarkPointerRegionEnd806
Videopac_Subsong0DisarkPointerRegionEnd806:

 .globl _Videopac_Subsong0DisarkByteRegionStart807
_Videopac_Subsong0DisarkByteRegionStart807:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd807
Videopac_Subsong0DisarkByteRegionEnd807:
 .globl _Videopac_Subsong0DisarkPointerRegionStart808
_Videopac_Subsong0DisarkPointerRegionStart808:
	.word _Videopac_Subsong0_RegisterBlock_333
 .globl Videopac_Subsong0DisarkPointerRegionEnd808
Videopac_Subsong0DisarkPointerRegionEnd808:

 .globl _Videopac_Subsong0DisarkByteRegionStart809
_Videopac_Subsong0DisarkByteRegionStart809:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd809
Videopac_Subsong0DisarkByteRegionEnd809:
 .globl _Videopac_Subsong0DisarkPointerRegionStart810
_Videopac_Subsong0DisarkPointerRegionStart810:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd810
Videopac_Subsong0DisarkPointerRegionEnd810:

 .globl Videopac_Subsong0_Track_68
Videopac_Subsong0_Track_68:
 .globl _Videopac_Subsong0DisarkByteRegionStart811
_Videopac_Subsong0DisarkByteRegionStart811:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd811
Videopac_Subsong0DisarkByteRegionEnd811:
 .globl _Videopac_Subsong0DisarkPointerRegionStart812
_Videopac_Subsong0DisarkPointerRegionStart812:
	.word _Videopac_Subsong0_RegisterBlock_336
 .globl Videopac_Subsong0DisarkPointerRegionEnd812
Videopac_Subsong0DisarkPointerRegionEnd812:

 .globl _Videopac_Subsong0DisarkByteRegionStart813
_Videopac_Subsong0DisarkByteRegionStart813:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd813
Videopac_Subsong0DisarkByteRegionEnd813:
 .globl _Videopac_Subsong0DisarkPointerRegionStart814
_Videopac_Subsong0DisarkPointerRegionStart814:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd814
Videopac_Subsong0DisarkPointerRegionEnd814:

 .globl _Videopac_Subsong0DisarkByteRegionStart815
_Videopac_Subsong0DisarkByteRegionStart815:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd815
Videopac_Subsong0DisarkByteRegionEnd815:
 .globl _Videopac_Subsong0DisarkPointerRegionStart816
_Videopac_Subsong0DisarkPointerRegionStart816:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd816
Videopac_Subsong0DisarkPointerRegionEnd816:

 .globl _Videopac_Subsong0DisarkByteRegionStart817
_Videopac_Subsong0DisarkByteRegionStart817:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd817
Videopac_Subsong0DisarkByteRegionEnd817:
 .globl _Videopac_Subsong0DisarkPointerRegionStart818
_Videopac_Subsong0DisarkPointerRegionStart818:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd818
Videopac_Subsong0DisarkPointerRegionEnd818:

 .globl _Videopac_Subsong0DisarkByteRegionStart819
_Videopac_Subsong0DisarkByteRegionStart819:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd819
Videopac_Subsong0DisarkByteRegionEnd819:
 .globl _Videopac_Subsong0DisarkPointerRegionStart820
_Videopac_Subsong0DisarkPointerRegionStart820:
	.word _Videopac_Subsong0_RegisterBlock_429
 .globl Videopac_Subsong0DisarkPointerRegionEnd820
Videopac_Subsong0DisarkPointerRegionEnd820:

 .globl _Videopac_Subsong0DisarkByteRegionStart821
_Videopac_Subsong0DisarkByteRegionStart821:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd821
Videopac_Subsong0DisarkByteRegionEnd821:
 .globl _Videopac_Subsong0DisarkPointerRegionStart822
_Videopac_Subsong0DisarkPointerRegionStart822:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd822
Videopac_Subsong0DisarkPointerRegionEnd822:

 .globl _Videopac_Subsong0DisarkByteRegionStart823
_Videopac_Subsong0DisarkByteRegionStart823:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd823
Videopac_Subsong0DisarkByteRegionEnd823:
 .globl _Videopac_Subsong0DisarkPointerRegionStart824
_Videopac_Subsong0DisarkPointerRegionStart824:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd824
Videopac_Subsong0DisarkPointerRegionEnd824:

 .globl _Videopac_Subsong0DisarkByteRegionStart825
_Videopac_Subsong0DisarkByteRegionStart825:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd825
Videopac_Subsong0DisarkByteRegionEnd825:
 .globl _Videopac_Subsong0DisarkPointerRegionStart826
_Videopac_Subsong0DisarkPointerRegionStart826:
	.word _Videopac_Subsong0_RegisterBlock_113
 .globl Videopac_Subsong0DisarkPointerRegionEnd826
Videopac_Subsong0DisarkPointerRegionEnd826:

 .globl _Videopac_Subsong0DisarkByteRegionStart827
_Videopac_Subsong0DisarkByteRegionStart827:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd827
Videopac_Subsong0DisarkByteRegionEnd827:
 .globl _Videopac_Subsong0DisarkPointerRegionStart828
_Videopac_Subsong0DisarkPointerRegionStart828:
	.word _Videopac_Subsong0_RegisterBlock_344
 .globl Videopac_Subsong0DisarkPointerRegionEnd828
Videopac_Subsong0DisarkPointerRegionEnd828:

 .globl _Videopac_Subsong0DisarkByteRegionStart829
_Videopac_Subsong0DisarkByteRegionStart829:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd829
Videopac_Subsong0DisarkByteRegionEnd829:
 .globl _Videopac_Subsong0DisarkPointerRegionStart830
_Videopac_Subsong0DisarkPointerRegionStart830:
	.word _Videopac_Subsong0_RegisterBlock_114
 .globl Videopac_Subsong0DisarkPointerRegionEnd830
Videopac_Subsong0DisarkPointerRegionEnd830:

 .globl _Videopac_Subsong0DisarkByteRegionStart831
_Videopac_Subsong0DisarkByteRegionStart831:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd831
Videopac_Subsong0DisarkByteRegionEnd831:
 .globl _Videopac_Subsong0DisarkPointerRegionStart832
_Videopac_Subsong0DisarkPointerRegionStart832:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd832
Videopac_Subsong0DisarkPointerRegionEnd832:

 .globl _Videopac_Subsong0DisarkByteRegionStart833
_Videopac_Subsong0DisarkByteRegionStart833:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd833
Videopac_Subsong0DisarkByteRegionEnd833:
 .globl _Videopac_Subsong0DisarkPointerRegionStart834
_Videopac_Subsong0DisarkPointerRegionStart834:
	.word _Videopac_Subsong0_RegisterBlock_115
 .globl Videopac_Subsong0DisarkPointerRegionEnd834
Videopac_Subsong0DisarkPointerRegionEnd834:

 .globl _Videopac_Subsong0DisarkByteRegionStart835
_Videopac_Subsong0DisarkByteRegionStart835:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd835
Videopac_Subsong0DisarkByteRegionEnd835:
 .globl _Videopac_Subsong0DisarkPointerRegionStart836
_Videopac_Subsong0DisarkPointerRegionStart836:
	.word _Videopac_Subsong0_RegisterBlock_429
 .globl Videopac_Subsong0DisarkPointerRegionEnd836
Videopac_Subsong0DisarkPointerRegionEnd836:

 .globl _Videopac_Subsong0DisarkByteRegionStart837
_Videopac_Subsong0DisarkByteRegionStart837:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd837
Videopac_Subsong0DisarkByteRegionEnd837:
 .globl _Videopac_Subsong0DisarkPointerRegionStart838
_Videopac_Subsong0DisarkPointerRegionStart838:
	.word _Videopac_Subsong0_RegisterBlock_116
 .globl Videopac_Subsong0DisarkPointerRegionEnd838
Videopac_Subsong0DisarkPointerRegionEnd838:

 .globl _Videopac_Subsong0DisarkByteRegionStart839
_Videopac_Subsong0DisarkByteRegionStart839:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd839
Videopac_Subsong0DisarkByteRegionEnd839:
 .globl _Videopac_Subsong0DisarkPointerRegionStart840
_Videopac_Subsong0DisarkPointerRegionStart840:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd840
Videopac_Subsong0DisarkPointerRegionEnd840:

 .globl _Videopac_Subsong0DisarkByteRegionStart841
_Videopac_Subsong0DisarkByteRegionStart841:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd841
Videopac_Subsong0DisarkByteRegionEnd841:
 .globl _Videopac_Subsong0DisarkPointerRegionStart842
_Videopac_Subsong0DisarkPointerRegionStart842:
	.word _Videopac_Subsong0_RegisterBlock_117
 .globl Videopac_Subsong0DisarkPointerRegionEnd842
Videopac_Subsong0DisarkPointerRegionEnd842:

 .globl _Videopac_Subsong0DisarkByteRegionStart843
_Videopac_Subsong0DisarkByteRegionStart843:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd843
Videopac_Subsong0DisarkByteRegionEnd843:
 .globl _Videopac_Subsong0DisarkPointerRegionStart844
_Videopac_Subsong0DisarkPointerRegionStart844:
	.word _Videopac_Subsong0_RegisterBlock_316
 .globl Videopac_Subsong0DisarkPointerRegionEnd844
Videopac_Subsong0DisarkPointerRegionEnd844:

 .globl Videopac_Subsong0_Track_69
Videopac_Subsong0_Track_69:
 .globl _Videopac_Subsong0DisarkByteRegionStart845
_Videopac_Subsong0DisarkByteRegionStart845:
	.byte 18	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd845
Videopac_Subsong0DisarkByteRegionEnd845:
 .globl _Videopac_Subsong0DisarkPointerRegionStart846
_Videopac_Subsong0DisarkPointerRegionStart846:
	.word _Videopac_Subsong0_RegisterBlock_29
 .globl Videopac_Subsong0DisarkPointerRegionEnd846
Videopac_Subsong0DisarkPointerRegionEnd846:

 .globl _Videopac_Subsong0DisarkByteRegionStart847
_Videopac_Subsong0DisarkByteRegionStart847:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd847
Videopac_Subsong0DisarkByteRegionEnd847:
 .globl _Videopac_Subsong0DisarkPointerRegionStart848
_Videopac_Subsong0DisarkPointerRegionStart848:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd848
Videopac_Subsong0DisarkPointerRegionEnd848:

 .globl _Videopac_Subsong0DisarkByteRegionStart849
_Videopac_Subsong0DisarkByteRegionStart849:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd849
Videopac_Subsong0DisarkByteRegionEnd849:
 .globl _Videopac_Subsong0DisarkPointerRegionStart850
_Videopac_Subsong0DisarkPointerRegionStart850:
	.word _Videopac_Subsong0_RegisterBlock_7
 .globl Videopac_Subsong0DisarkPointerRegionEnd850
Videopac_Subsong0DisarkPointerRegionEnd850:

 .globl _Videopac_Subsong0DisarkByteRegionStart851
_Videopac_Subsong0DisarkByteRegionStart851:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd851
Videopac_Subsong0DisarkByteRegionEnd851:
 .globl _Videopac_Subsong0DisarkPointerRegionStart852
_Videopac_Subsong0DisarkPointerRegionStart852:
	.word _Videopac_Subsong0_RegisterBlock_410
 .globl Videopac_Subsong0DisarkPointerRegionEnd852
Videopac_Subsong0DisarkPointerRegionEnd852:

 .globl _Videopac_Subsong0DisarkByteRegionStart853
_Videopac_Subsong0DisarkByteRegionStart853:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd853
Videopac_Subsong0DisarkByteRegionEnd853:
 .globl _Videopac_Subsong0DisarkPointerRegionStart854
_Videopac_Subsong0DisarkPointerRegionStart854:
	.word _Videopac_Subsong0_RegisterBlock_91
 .globl Videopac_Subsong0DisarkPointerRegionEnd854
Videopac_Subsong0DisarkPointerRegionEnd854:

 .globl _Videopac_Subsong0DisarkByteRegionStart855
_Videopac_Subsong0DisarkByteRegionStart855:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd855
Videopac_Subsong0DisarkByteRegionEnd855:
 .globl _Videopac_Subsong0DisarkPointerRegionStart856
_Videopac_Subsong0DisarkPointerRegionStart856:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd856
Videopac_Subsong0DisarkPointerRegionEnd856:

 .globl _Videopac_Subsong0DisarkByteRegionStart857
_Videopac_Subsong0DisarkByteRegionStart857:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd857
Videopac_Subsong0DisarkByteRegionEnd857:
 .globl _Videopac_Subsong0DisarkPointerRegionStart858
_Videopac_Subsong0DisarkPointerRegionStart858:
	.word _Videopac_Subsong0_RegisterBlock_92
 .globl Videopac_Subsong0DisarkPointerRegionEnd858
Videopac_Subsong0DisarkPointerRegionEnd858:

 .globl _Videopac_Subsong0DisarkByteRegionStart859
_Videopac_Subsong0DisarkByteRegionStart859:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd859
Videopac_Subsong0DisarkByteRegionEnd859:
 .globl _Videopac_Subsong0DisarkPointerRegionStart860
_Videopac_Subsong0DisarkPointerRegionStart860:
	.word _Videopac_Subsong0_RegisterBlock_414
 .globl Videopac_Subsong0DisarkPointerRegionEnd860
Videopac_Subsong0DisarkPointerRegionEnd860:

 .globl _Videopac_Subsong0DisarkByteRegionStart861
_Videopac_Subsong0DisarkByteRegionStart861:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd861
Videopac_Subsong0DisarkByteRegionEnd861:
 .globl _Videopac_Subsong0DisarkPointerRegionStart862
_Videopac_Subsong0DisarkPointerRegionStart862:
	.word _Videopac_Subsong0_RegisterBlock_93
 .globl Videopac_Subsong0DisarkPointerRegionEnd862
Videopac_Subsong0DisarkPointerRegionEnd862:

 .globl _Videopac_Subsong0DisarkByteRegionStart863
_Videopac_Subsong0DisarkByteRegionStart863:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd863
Videopac_Subsong0DisarkByteRegionEnd863:
 .globl _Videopac_Subsong0DisarkPointerRegionStart864
_Videopac_Subsong0DisarkPointerRegionStart864:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd864
Videopac_Subsong0DisarkPointerRegionEnd864:

 .globl _Videopac_Subsong0DisarkByteRegionStart865
_Videopac_Subsong0DisarkByteRegionStart865:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd865
Videopac_Subsong0DisarkByteRegionEnd865:
 .globl _Videopac_Subsong0DisarkPointerRegionStart866
_Videopac_Subsong0DisarkPointerRegionStart866:
	.word _Videopac_Subsong0_RegisterBlock_94
 .globl Videopac_Subsong0DisarkPointerRegionEnd866
Videopac_Subsong0DisarkPointerRegionEnd866:

 .globl _Videopac_Subsong0DisarkByteRegionStart867
_Videopac_Subsong0DisarkByteRegionStart867:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd867
Videopac_Subsong0DisarkByteRegionEnd867:
 .globl _Videopac_Subsong0DisarkPointerRegionStart868
_Videopac_Subsong0DisarkPointerRegionStart868:
	.word _Videopac_Subsong0_RegisterBlock_410
 .globl Videopac_Subsong0DisarkPointerRegionEnd868
Videopac_Subsong0DisarkPointerRegionEnd868:

 .globl _Videopac_Subsong0DisarkByteRegionStart869
_Videopac_Subsong0DisarkByteRegionStart869:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd869
Videopac_Subsong0DisarkByteRegionEnd869:
 .globl _Videopac_Subsong0DisarkPointerRegionStart870
_Videopac_Subsong0DisarkPointerRegionStart870:
	.word _Videopac_Subsong0_RegisterBlock_95
 .globl Videopac_Subsong0DisarkPointerRegionEnd870
Videopac_Subsong0DisarkPointerRegionEnd870:

 .globl _Videopac_Subsong0DisarkByteRegionStart871
_Videopac_Subsong0DisarkByteRegionStart871:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd871
Videopac_Subsong0DisarkByteRegionEnd871:
 .globl _Videopac_Subsong0DisarkPointerRegionStart872
_Videopac_Subsong0DisarkPointerRegionStart872:
	.word _Videopac_Subsong0_RegisterBlock_232
 .globl Videopac_Subsong0DisarkPointerRegionEnd872
Videopac_Subsong0DisarkPointerRegionEnd872:

 .globl _Videopac_Subsong0DisarkByteRegionStart873
_Videopac_Subsong0DisarkByteRegionStart873:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd873
Videopac_Subsong0DisarkByteRegionEnd873:
 .globl _Videopac_Subsong0DisarkPointerRegionStart874
_Videopac_Subsong0DisarkPointerRegionStart874:
	.word _Videopac_Subsong0_RegisterBlock_96
 .globl Videopac_Subsong0DisarkPointerRegionEnd874
Videopac_Subsong0DisarkPointerRegionEnd874:

 .globl _Videopac_Subsong0DisarkByteRegionStart875
_Videopac_Subsong0DisarkByteRegionStart875:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd875
Videopac_Subsong0DisarkByteRegionEnd875:
 .globl _Videopac_Subsong0DisarkPointerRegionStart876
_Videopac_Subsong0DisarkPointerRegionStart876:
	.word _Videopac_Subsong0_RegisterBlock_333
 .globl Videopac_Subsong0DisarkPointerRegionEnd876
Videopac_Subsong0DisarkPointerRegionEnd876:

 .globl _Videopac_Subsong0DisarkByteRegionStart877
_Videopac_Subsong0DisarkByteRegionStart877:
	.byte 6	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd877
Videopac_Subsong0DisarkByteRegionEnd877:
 .globl _Videopac_Subsong0DisarkPointerRegionStart878
_Videopac_Subsong0DisarkPointerRegionStart878:
	.word _Videopac_Subsong0_RegisterBlock_1
 .globl Videopac_Subsong0DisarkPointerRegionEnd878
Videopac_Subsong0DisarkPointerRegionEnd878:

 .globl Videopac_Subsong0_Track_70
Videopac_Subsong0_Track_70:
 .globl _Videopac_Subsong0DisarkByteRegionStart879
_Videopac_Subsong0DisarkByteRegionStart879:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd879
Videopac_Subsong0DisarkByteRegionEnd879:
 .globl _Videopac_Subsong0DisarkPointerRegionStart880
_Videopac_Subsong0DisarkPointerRegionStart880:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd880
Videopac_Subsong0DisarkPointerRegionEnd880:

 .globl _Videopac_Subsong0DisarkByteRegionStart881
_Videopac_Subsong0DisarkByteRegionStart881:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd881
Videopac_Subsong0DisarkByteRegionEnd881:
 .globl _Videopac_Subsong0DisarkPointerRegionStart882
_Videopac_Subsong0DisarkPointerRegionStart882:
	.word _Videopac_Subsong0_RegisterBlock_17
 .globl Videopac_Subsong0DisarkPointerRegionEnd882
Videopac_Subsong0DisarkPointerRegionEnd882:

 .globl _Videopac_Subsong0DisarkByteRegionStart883
_Videopac_Subsong0DisarkByteRegionStart883:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd883
Videopac_Subsong0DisarkByteRegionEnd883:
 .globl _Videopac_Subsong0DisarkPointerRegionStart884
_Videopac_Subsong0DisarkPointerRegionStart884:
	.word _Videopac_Subsong0_RegisterBlock_463
 .globl Videopac_Subsong0DisarkPointerRegionEnd884
Videopac_Subsong0DisarkPointerRegionEnd884:

 .globl _Videopac_Subsong0DisarkByteRegionStart885
_Videopac_Subsong0DisarkByteRegionStart885:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd885
Videopac_Subsong0DisarkByteRegionEnd885:
 .globl _Videopac_Subsong0DisarkPointerRegionStart886
_Videopac_Subsong0DisarkPointerRegionStart886:
	.word _Videopac_Subsong0_RegisterBlock_101
 .globl Videopac_Subsong0DisarkPointerRegionEnd886
Videopac_Subsong0DisarkPointerRegionEnd886:

 .globl _Videopac_Subsong0DisarkByteRegionStart887
_Videopac_Subsong0DisarkByteRegionStart887:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd887
Videopac_Subsong0DisarkByteRegionEnd887:
 .globl _Videopac_Subsong0DisarkPointerRegionStart888
_Videopac_Subsong0DisarkPointerRegionStart888:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd888
Videopac_Subsong0DisarkPointerRegionEnd888:

 .globl _Videopac_Subsong0DisarkByteRegionStart889
_Videopac_Subsong0DisarkByteRegionStart889:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd889
Videopac_Subsong0DisarkByteRegionEnd889:
 .globl _Videopac_Subsong0DisarkPointerRegionStart890
_Videopac_Subsong0DisarkPointerRegionStart890:
	.word _Videopac_Subsong0_RegisterBlock_102
 .globl Videopac_Subsong0DisarkPointerRegionEnd890
Videopac_Subsong0DisarkPointerRegionEnd890:

 .globl _Videopac_Subsong0DisarkByteRegionStart891
_Videopac_Subsong0DisarkByteRegionStart891:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd891
Videopac_Subsong0DisarkByteRegionEnd891:
 .globl _Videopac_Subsong0DisarkPointerRegionStart892
_Videopac_Subsong0DisarkPointerRegionStart892:
	.word _Videopac_Subsong0_RegisterBlock_378
 .globl Videopac_Subsong0DisarkPointerRegionEnd892
Videopac_Subsong0DisarkPointerRegionEnd892:

 .globl _Videopac_Subsong0DisarkByteRegionStart893
_Videopac_Subsong0DisarkByteRegionStart893:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd893
Videopac_Subsong0DisarkByteRegionEnd893:
 .globl _Videopac_Subsong0DisarkPointerRegionStart894
_Videopac_Subsong0DisarkPointerRegionStart894:
	.word _Videopac_Subsong0_RegisterBlock_103
 .globl Videopac_Subsong0DisarkPointerRegionEnd894
Videopac_Subsong0DisarkPointerRegionEnd894:

 .globl _Videopac_Subsong0DisarkByteRegionStart895
_Videopac_Subsong0DisarkByteRegionStart895:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd895
Videopac_Subsong0DisarkByteRegionEnd895:
 .globl _Videopac_Subsong0DisarkPointerRegionStart896
_Videopac_Subsong0DisarkPointerRegionStart896:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd896
Videopac_Subsong0DisarkPointerRegionEnd896:

 .globl _Videopac_Subsong0DisarkByteRegionStart897
_Videopac_Subsong0DisarkByteRegionStart897:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd897
Videopac_Subsong0DisarkByteRegionEnd897:
 .globl _Videopac_Subsong0DisarkPointerRegionStart898
_Videopac_Subsong0DisarkPointerRegionStart898:
	.word _Videopac_Subsong0_RegisterBlock_104
 .globl Videopac_Subsong0DisarkPointerRegionEnd898
Videopac_Subsong0DisarkPointerRegionEnd898:

 .globl _Videopac_Subsong0DisarkByteRegionStart899
_Videopac_Subsong0DisarkByteRegionStart899:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd899
Videopac_Subsong0DisarkByteRegionEnd899:
 .globl _Videopac_Subsong0DisarkPointerRegionStart900
_Videopac_Subsong0DisarkPointerRegionStart900:
	.word _Videopac_Subsong0_RegisterBlock_463
 .globl Videopac_Subsong0DisarkPointerRegionEnd900
Videopac_Subsong0DisarkPointerRegionEnd900:

 .globl _Videopac_Subsong0DisarkByteRegionStart901
_Videopac_Subsong0DisarkByteRegionStart901:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd901
Videopac_Subsong0DisarkByteRegionEnd901:
 .globl _Videopac_Subsong0DisarkPointerRegionStart902
_Videopac_Subsong0DisarkPointerRegionStart902:
	.word _Videopac_Subsong0_RegisterBlock_105
 .globl Videopac_Subsong0DisarkPointerRegionEnd902
Videopac_Subsong0DisarkPointerRegionEnd902:

 .globl _Videopac_Subsong0DisarkByteRegionStart903
_Videopac_Subsong0DisarkByteRegionStart903:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd903
Videopac_Subsong0DisarkByteRegionEnd903:
 .globl _Videopac_Subsong0DisarkPointerRegionStart904
_Videopac_Subsong0DisarkPointerRegionStart904:
	.word _Videopac_Subsong0_RegisterBlock_273
 .globl Videopac_Subsong0DisarkPointerRegionEnd904
Videopac_Subsong0DisarkPointerRegionEnd904:

 .globl _Videopac_Subsong0DisarkByteRegionStart905
_Videopac_Subsong0DisarkByteRegionStart905:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd905
Videopac_Subsong0DisarkByteRegionEnd905:
 .globl _Videopac_Subsong0DisarkPointerRegionStart906
_Videopac_Subsong0DisarkPointerRegionStart906:
	.word _Videopac_Subsong0_RegisterBlock_106
 .globl Videopac_Subsong0DisarkPointerRegionEnd906
Videopac_Subsong0DisarkPointerRegionEnd906:

 .globl _Videopac_Subsong0DisarkByteRegionStart907
_Videopac_Subsong0DisarkByteRegionStart907:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd907
Videopac_Subsong0DisarkByteRegionEnd907:
 .globl _Videopac_Subsong0DisarkPointerRegionStart908
_Videopac_Subsong0DisarkPointerRegionStart908:
	.word _Videopac_Subsong0_RegisterBlock_386
 .globl Videopac_Subsong0DisarkPointerRegionEnd908
Videopac_Subsong0DisarkPointerRegionEnd908:

 .globl _Videopac_Subsong0DisarkByteRegionStart909
_Videopac_Subsong0DisarkByteRegionStart909:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd909
Videopac_Subsong0DisarkByteRegionEnd909:
 .globl _Videopac_Subsong0DisarkPointerRegionStart910
_Videopac_Subsong0DisarkPointerRegionStart910:
	.word _Videopac_Subsong0_RegisterBlock_11
 .globl Videopac_Subsong0DisarkPointerRegionEnd910
Videopac_Subsong0DisarkPointerRegionEnd910:

 .globl Videopac_Subsong0_Track_71
Videopac_Subsong0_Track_71:
 .globl _Videopac_Subsong0DisarkByteRegionStart911
_Videopac_Subsong0DisarkByteRegionStart911:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd911
Videopac_Subsong0DisarkByteRegionEnd911:
 .globl _Videopac_Subsong0DisarkPointerRegionStart912
_Videopac_Subsong0DisarkPointerRegionStart912:
	.word _Videopac_Subsong0_RegisterBlock_336
 .globl Videopac_Subsong0DisarkPointerRegionEnd912
Videopac_Subsong0DisarkPointerRegionEnd912:

 .globl _Videopac_Subsong0DisarkByteRegionStart913
_Videopac_Subsong0DisarkByteRegionStart913:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd913
Videopac_Subsong0DisarkByteRegionEnd913:
 .globl _Videopac_Subsong0DisarkPointerRegionStart914
_Videopac_Subsong0DisarkPointerRegionStart914:
	.word _Videopac_Subsong0_RegisterBlock_21
 .globl Videopac_Subsong0DisarkPointerRegionEnd914
Videopac_Subsong0DisarkPointerRegionEnd914:

 .globl _Videopac_Subsong0DisarkByteRegionStart915
_Videopac_Subsong0DisarkByteRegionStart915:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd915
Videopac_Subsong0DisarkByteRegionEnd915:
 .globl _Videopac_Subsong0DisarkPointerRegionStart916
_Videopac_Subsong0DisarkPointerRegionStart916:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd916
Videopac_Subsong0DisarkPointerRegionEnd916:

 .globl _Videopac_Subsong0DisarkByteRegionStart917
_Videopac_Subsong0DisarkByteRegionStart917:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd917
Videopac_Subsong0DisarkByteRegionEnd917:
 .globl _Videopac_Subsong0DisarkPointerRegionStart918
_Videopac_Subsong0DisarkPointerRegionStart918:
	.word _Videopac_Subsong0_RegisterBlock_111
 .globl Videopac_Subsong0DisarkPointerRegionEnd918
Videopac_Subsong0DisarkPointerRegionEnd918:

 .globl _Videopac_Subsong0DisarkByteRegionStart919
_Videopac_Subsong0DisarkByteRegionStart919:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd919
Videopac_Subsong0DisarkByteRegionEnd919:
 .globl _Videopac_Subsong0DisarkPointerRegionStart920
_Videopac_Subsong0DisarkPointerRegionStart920:
	.word _Videopac_Subsong0_RegisterBlock_429
 .globl Videopac_Subsong0DisarkPointerRegionEnd920
Videopac_Subsong0DisarkPointerRegionEnd920:

 .globl _Videopac_Subsong0DisarkByteRegionStart921
_Videopac_Subsong0DisarkByteRegionStart921:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd921
Videopac_Subsong0DisarkByteRegionEnd921:
 .globl _Videopac_Subsong0DisarkPointerRegionStart922
_Videopac_Subsong0DisarkPointerRegionStart922:
	.word _Videopac_Subsong0_RegisterBlock_80
 .globl Videopac_Subsong0DisarkPointerRegionEnd922
Videopac_Subsong0DisarkPointerRegionEnd922:

 .globl _Videopac_Subsong0DisarkByteRegionStart923
_Videopac_Subsong0DisarkByteRegionStart923:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd923
Videopac_Subsong0DisarkByteRegionEnd923:
 .globl _Videopac_Subsong0DisarkPointerRegionStart924
_Videopac_Subsong0DisarkPointerRegionStart924:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd924
Videopac_Subsong0DisarkPointerRegionEnd924:

 .globl _Videopac_Subsong0DisarkByteRegionStart925
_Videopac_Subsong0DisarkByteRegionStart925:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd925
Videopac_Subsong0DisarkByteRegionEnd925:
 .globl _Videopac_Subsong0DisarkPointerRegionStart926
_Videopac_Subsong0DisarkPointerRegionStart926:
	.word _Videopac_Subsong0_RegisterBlock_113
 .globl Videopac_Subsong0DisarkPointerRegionEnd926
Videopac_Subsong0DisarkPointerRegionEnd926:

 .globl _Videopac_Subsong0DisarkByteRegionStart927
_Videopac_Subsong0DisarkByteRegionStart927:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd927
Videopac_Subsong0DisarkByteRegionEnd927:
 .globl _Videopac_Subsong0DisarkPointerRegionStart928
_Videopac_Subsong0DisarkPointerRegionStart928:
	.word _Videopac_Subsong0_RegisterBlock_344
 .globl Videopac_Subsong0DisarkPointerRegionEnd928
Videopac_Subsong0DisarkPointerRegionEnd928:

 .globl _Videopac_Subsong0DisarkByteRegionStart929
_Videopac_Subsong0DisarkByteRegionStart929:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd929
Videopac_Subsong0DisarkByteRegionEnd929:
 .globl _Videopac_Subsong0DisarkPointerRegionStart930
_Videopac_Subsong0DisarkPointerRegionStart930:
	.word _Videopac_Subsong0_RegisterBlock_114
 .globl Videopac_Subsong0DisarkPointerRegionEnd930
Videopac_Subsong0DisarkPointerRegionEnd930:

 .globl _Videopac_Subsong0DisarkByteRegionStart931
_Videopac_Subsong0DisarkByteRegionStart931:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd931
Videopac_Subsong0DisarkByteRegionEnd931:
 .globl _Videopac_Subsong0DisarkPointerRegionStart932
_Videopac_Subsong0DisarkPointerRegionStart932:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd932
Videopac_Subsong0DisarkPointerRegionEnd932:

 .globl _Videopac_Subsong0DisarkByteRegionStart933
_Videopac_Subsong0DisarkByteRegionStart933:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd933
Videopac_Subsong0DisarkByteRegionEnd933:
 .globl _Videopac_Subsong0DisarkPointerRegionStart934
_Videopac_Subsong0DisarkPointerRegionStart934:
	.word _Videopac_Subsong0_RegisterBlock_115
 .globl Videopac_Subsong0DisarkPointerRegionEnd934
Videopac_Subsong0DisarkPointerRegionEnd934:

 .globl _Videopac_Subsong0DisarkByteRegionStart935
_Videopac_Subsong0DisarkByteRegionStart935:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd935
Videopac_Subsong0DisarkByteRegionEnd935:
 .globl _Videopac_Subsong0DisarkPointerRegionStart936
_Videopac_Subsong0DisarkPointerRegionStart936:
	.word _Videopac_Subsong0_RegisterBlock_429
 .globl Videopac_Subsong0DisarkPointerRegionEnd936
Videopac_Subsong0DisarkPointerRegionEnd936:

 .globl _Videopac_Subsong0DisarkByteRegionStart937
_Videopac_Subsong0DisarkByteRegionStart937:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd937
Videopac_Subsong0DisarkByteRegionEnd937:
 .globl _Videopac_Subsong0DisarkPointerRegionStart938
_Videopac_Subsong0DisarkPointerRegionStart938:
	.word _Videopac_Subsong0_RegisterBlock_116
 .globl Videopac_Subsong0DisarkPointerRegionEnd938
Videopac_Subsong0DisarkPointerRegionEnd938:

 .globl _Videopac_Subsong0DisarkByteRegionStart939
_Videopac_Subsong0DisarkByteRegionStart939:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd939
Videopac_Subsong0DisarkByteRegionEnd939:
 .globl _Videopac_Subsong0DisarkPointerRegionStart940
_Videopac_Subsong0DisarkPointerRegionStart940:
	.word _Videopac_Subsong0_RegisterBlock_247
 .globl Videopac_Subsong0DisarkPointerRegionEnd940
Videopac_Subsong0DisarkPointerRegionEnd940:

 .globl _Videopac_Subsong0DisarkByteRegionStart941
_Videopac_Subsong0DisarkByteRegionStart941:
	.byte 24	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd941
Videopac_Subsong0DisarkByteRegionEnd941:
 .globl _Videopac_Subsong0DisarkPointerRegionStart942
_Videopac_Subsong0DisarkPointerRegionStart942:
	.word _Videopac_Subsong0_RegisterBlock_117
 .globl Videopac_Subsong0DisarkPointerRegionEnd942
Videopac_Subsong0DisarkPointerRegionEnd942:

 .globl _Videopac_Subsong0DisarkByteRegionStart943
_Videopac_Subsong0DisarkByteRegionStart943:
	.byte 12	; Duration.
 .globl Videopac_Subsong0DisarkByteRegionEnd943
Videopac_Subsong0DisarkByteRegionEnd943:
 .globl _Videopac_Subsong0DisarkPointerRegionStart944
_Videopac_Subsong0DisarkPointerRegionStart944:
	.word _Videopac_Subsong0_RegisterBlock_316
 .globl Videopac_Subsong0DisarkPointerRegionEnd944
Videopac_Subsong0DisarkPointerRegionEnd944:


; The RegisterBlocks.
 .globl Videopac_Subsong0DisarkByteRegionStart945
Videopac_Subsong0DisarkByteRegionStart945:
 .globl _Videopac_Subsong0_RegisterBlock_20
_Videopac_Subsong0_RegisterBlock_20:
	.byte 0	; Initial State: no software, no hardware.

 .globl _Videopac_Subsong0_RegisterBlock_20_Loop
_Videopac_Subsong0_RegisterBlock_20_Loop:
	.byte 4	; Non-initial State, no software no hardware.

	.byte 8	; Loop to index 1.
 .globl _Videopac_Subsong0DisarkPointerRegionStart946
_Videopac_Subsong0DisarkPointerRegionStart946:
	.word _Videopac_Subsong0_RegisterBlock_20_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd946
Videopac_Subsong0DisarkPointerRegionEnd946:


 .globl _Videopac_Subsong0_RegisterBlock_1
_Videopac_Subsong0_RegisterBlock_1:
	.byte 9	; Initial State: software only.
	.byte 28, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_1_Loop
_Videopac_Subsong0_RegisterBlock_1_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart947
_Videopac_Subsong0DisarkPointerRegionStart947:
	.word _Videopac_Subsong0_RegisterBlock_1_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd947
Videopac_Subsong0DisarkPointerRegionEnd947:


 .globl _Videopac_Subsong0_RegisterBlock_2
_Videopac_Subsong0_RegisterBlock_2:
	.byte 9	; Initial State: software only.
	.byte 190, 0	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_2_Loop
_Videopac_Subsong0_RegisterBlock_2_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart948
_Videopac_Subsong0DisarkPointerRegionStart948:
	.word _Videopac_Subsong0_RegisterBlock_2_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd948
Videopac_Subsong0DisarkPointerRegionEnd948:


 .globl _Videopac_Subsong0_RegisterBlock_3
_Videopac_Subsong0_RegisterBlock_3:
	.byte 9	; Initial State: software only.
	.byte 63, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_3_Loop
_Videopac_Subsong0_RegisterBlock_3_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart949
_Videopac_Subsong0DisarkPointerRegionStart949:
	.word _Videopac_Subsong0_RegisterBlock_3_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd949
Videopac_Subsong0DisarkPointerRegionEnd949:


 .globl _Videopac_Subsong0_RegisterBlock_5
_Videopac_Subsong0_RegisterBlock_5:
	.byte 9	; Initial State: software only.
	.byte 82, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_5_Loop
_Videopac_Subsong0_RegisterBlock_5_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart950
_Videopac_Subsong0DisarkPointerRegionStart950:
	.word _Videopac_Subsong0_RegisterBlock_5_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd950
Videopac_Subsong0DisarkPointerRegionEnd950:


 .globl _Videopac_Subsong0_RegisterBlock_7
_Videopac_Subsong0_RegisterBlock_7:
	.byte 9	; Initial State: software only.
	.byte 102, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_7_Loop
_Videopac_Subsong0_RegisterBlock_7_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart951
_Videopac_Subsong0DisarkPointerRegionStart951:
	.word _Videopac_Subsong0_RegisterBlock_7_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd951
Videopac_Subsong0DisarkPointerRegionEnd951:


 .globl _Videopac_Subsong0_RegisterBlock_11
_Videopac_Subsong0_RegisterBlock_11:
	.byte 57	; Initial State: software only.
	.byte 28, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_11_Loop
_Videopac_Subsong0_RegisterBlock_11_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart952
_Videopac_Subsong0DisarkPointerRegionStart952:
	.word _Videopac_Subsong0_RegisterBlock_11_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd952
Videopac_Subsong0DisarkPointerRegionEnd952:


 .globl _Videopac_Subsong0_RegisterBlock_12
_Videopac_Subsong0_RegisterBlock_12:
	.byte 57	; Initial State: software only.
	.byte 190, 0	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_12_Loop
_Videopac_Subsong0_RegisterBlock_12_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart953
_Videopac_Subsong0DisarkPointerRegionStart953:
	.word _Videopac_Subsong0_RegisterBlock_12_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd953
Videopac_Subsong0DisarkPointerRegionEnd953:


 .globl _Videopac_Subsong0_RegisterBlock_13
_Videopac_Subsong0_RegisterBlock_13:
	.byte 57	; Initial State: software only.
	.byte 63, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_13_Loop
_Videopac_Subsong0_RegisterBlock_13_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart954
_Videopac_Subsong0DisarkPointerRegionStart954:
	.word _Videopac_Subsong0_RegisterBlock_13_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd954
Videopac_Subsong0DisarkPointerRegionEnd954:


 .globl _Videopac_Subsong0_RegisterBlock_15
_Videopac_Subsong0_RegisterBlock_15:
	.byte 57	; Initial State: software only.
	.byte 82, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_15_Loop
_Videopac_Subsong0_RegisterBlock_15_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart955
_Videopac_Subsong0DisarkPointerRegionStart955:
	.word _Videopac_Subsong0_RegisterBlock_15_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd955
Videopac_Subsong0DisarkPointerRegionEnd955:


 .globl _Videopac_Subsong0_RegisterBlock_17
_Videopac_Subsong0_RegisterBlock_17:
	.byte 57	; Initial State: software only.
	.byte 102, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_17_Loop
_Videopac_Subsong0_RegisterBlock_17_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart956
_Videopac_Subsong0DisarkPointerRegionStart956:
	.word _Videopac_Subsong0_RegisterBlock_17_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd956
Videopac_Subsong0DisarkPointerRegionEnd956:


 .globl _Videopac_Subsong0_RegisterBlock_21
_Videopac_Subsong0_RegisterBlock_21:
	.byte 25	; Initial State: software only.
	.byte 28, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 27	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 28	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart957
_Videopac_Subsong0DisarkPointerRegionStart957:
	.word _Videopac_Subsong0_RegisterBlock_1 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd957
Videopac_Subsong0DisarkPointerRegionEnd957:

 .globl _Videopac_Subsong0_RegisterBlock_22
_Videopac_Subsong0_RegisterBlock_22:
	.byte 25	; Initial State: software only.
	.byte 190, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 189	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart958
_Videopac_Subsong0DisarkPointerRegionStart958:
	.word _Videopac_Subsong0_RegisterBlock_2 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd958
Videopac_Subsong0DisarkPointerRegionEnd958:

 .globl _Videopac_Subsong0_RegisterBlock_23
_Videopac_Subsong0_RegisterBlock_23:
	.byte 25	; Initial State: software only.
	.byte 63, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 62	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 63	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart959
_Videopac_Subsong0DisarkPointerRegionStart959:
	.word _Videopac_Subsong0_RegisterBlock_3 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd959
Videopac_Subsong0DisarkPointerRegionEnd959:

 .globl _Videopac_Subsong0_RegisterBlock_25
_Videopac_Subsong0_RegisterBlock_25:
	.byte 25	; Initial State: software only.
	.byte 82, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 82	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart960
_Videopac_Subsong0DisarkPointerRegionStart960:
	.word _Videopac_Subsong0_RegisterBlock_5 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd960
Videopac_Subsong0DisarkPointerRegionEnd960:

 .globl _Videopac_Subsong0_RegisterBlock_80
_Videopac_Subsong0_RegisterBlock_80:
	.byte 25	; Initial State: software only.
	.byte 213, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_80_Loop
_Videopac_Subsong0_RegisterBlock_80_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart961
_Videopac_Subsong0DisarkPointerRegionStart961:
	.word _Videopac_Subsong0_RegisterBlock_80_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd961
Videopac_Subsong0DisarkPointerRegionEnd961:


 .globl _Videopac_Subsong0_RegisterBlock_91
_Videopac_Subsong0_RegisterBlock_91:
	.byte 9	; Initial State: software only.
	.byte 213, 0	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart962
_Videopac_Subsong0DisarkPointerRegionStart962:
	.word _Videopac_Subsong0_RegisterBlock_80 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd962
Videopac_Subsong0DisarkPointerRegionEnd962:

 .globl _Videopac_Subsong0_RegisterBlock_92
_Videopac_Subsong0_RegisterBlock_92:
	.byte 9	; Initial State: software only.
	.byte 123, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_92_Loop
_Videopac_Subsong0_RegisterBlock_92_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart963
_Videopac_Subsong0DisarkPointerRegionStart963:
	.word _Videopac_Subsong0_RegisterBlock_92_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd963
Videopac_Subsong0DisarkPointerRegionEnd963:


 .globl _Videopac_Subsong0_RegisterBlock_93
_Videopac_Subsong0_RegisterBlock_93:
	.byte 9	; Initial State: software only.
	.byte 239, 0	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_93_Loop
_Videopac_Subsong0_RegisterBlock_93_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart964
_Videopac_Subsong0DisarkPointerRegionStart964:
	.word _Videopac_Subsong0_RegisterBlock_93_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd964
Videopac_Subsong0DisarkPointerRegionEnd964:


 .globl _Videopac_Subsong0_RegisterBlock_94
_Videopac_Subsong0_RegisterBlock_94:
	.byte 9	; Initial State: software only.
	.byte 170, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_94_Loop
_Videopac_Subsong0_RegisterBlock_94_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart965
_Videopac_Subsong0DisarkPointerRegionStart965:
	.word _Videopac_Subsong0_RegisterBlock_94_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd965
Videopac_Subsong0DisarkPointerRegionEnd965:


 .globl _Videopac_Subsong0_RegisterBlock_95
_Videopac_Subsong0_RegisterBlock_95:
	.byte 9	; Initial State: software only.
	.byte 253, 0	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_95_Loop
_Videopac_Subsong0_RegisterBlock_95_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart966
_Videopac_Subsong0DisarkPointerRegionStart966:
	.word _Videopac_Subsong0_RegisterBlock_95_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd966
Videopac_Subsong0DisarkPointerRegionEnd966:


 .globl _Videopac_Subsong0_RegisterBlock_96
_Videopac_Subsong0_RegisterBlock_96:
	.byte 9	; Initial State: software only.
	.byte 222, 1	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_96_Loop
_Videopac_Subsong0_RegisterBlock_96_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart967
_Videopac_Subsong0DisarkPointerRegionStart967:
	.word _Videopac_Subsong0_RegisterBlock_96_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd967
Videopac_Subsong0DisarkPointerRegionEnd967:


 .globl _Videopac_Subsong0_RegisterBlock_101
_Videopac_Subsong0_RegisterBlock_101:
	.byte 57	; Initial State: software only.
	.byte 213, 0	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 214	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 212	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_101_Loop
_Videopac_Subsong0_RegisterBlock_101_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart968
_Videopac_Subsong0DisarkPointerRegionStart968:
	.word _Videopac_Subsong0_RegisterBlock_101_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd968
Videopac_Subsong0DisarkPointerRegionEnd968:


 .globl _Videopac_Subsong0_RegisterBlock_102
_Videopac_Subsong0_RegisterBlock_102:
	.byte 57	; Initial State: software only.
	.byte 123, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_102_Loop
_Videopac_Subsong0_RegisterBlock_102_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart969
_Videopac_Subsong0DisarkPointerRegionStart969:
	.word _Videopac_Subsong0_RegisterBlock_102_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd969
Videopac_Subsong0DisarkPointerRegionEnd969:


 .globl _Videopac_Subsong0_RegisterBlock_103
_Videopac_Subsong0_RegisterBlock_103:
	.byte 57	; Initial State: software only.
	.byte 239, 0	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_103_Loop
_Videopac_Subsong0_RegisterBlock_103_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart970
_Videopac_Subsong0DisarkPointerRegionStart970:
	.word _Videopac_Subsong0_RegisterBlock_103_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd970
Videopac_Subsong0DisarkPointerRegionEnd970:


 .globl _Videopac_Subsong0_RegisterBlock_104
_Videopac_Subsong0_RegisterBlock_104:
	.byte 57	; Initial State: software only.
	.byte 170, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_104_Loop
_Videopac_Subsong0_RegisterBlock_104_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart971
_Videopac_Subsong0DisarkPointerRegionStart971:
	.word _Videopac_Subsong0_RegisterBlock_104_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd971
Videopac_Subsong0DisarkPointerRegionEnd971:


 .globl _Videopac_Subsong0_RegisterBlock_105
_Videopac_Subsong0_RegisterBlock_105:
	.byte 57	; Initial State: software only.
	.byte 253, 0	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_105_Loop
_Videopac_Subsong0_RegisterBlock_105_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart972
_Videopac_Subsong0DisarkPointerRegionStart972:
	.word _Videopac_Subsong0_RegisterBlock_105_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd972
Videopac_Subsong0DisarkPointerRegionEnd972:


 .globl _Videopac_Subsong0_RegisterBlock_106
_Videopac_Subsong0_RegisterBlock_106:
	.byte 57	; Initial State: software only.
	.byte 222, 1	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 85	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_106_Loop
_Videopac_Subsong0_RegisterBlock_106_Loop:
	.byte 77	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 8	; Loop to index 42.
 .globl _Videopac_Subsong0DisarkPointerRegionStart973
_Videopac_Subsong0DisarkPointerRegionStart973:
	.word _Videopac_Subsong0_RegisterBlock_106_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd973
Videopac_Subsong0DisarkPointerRegionEnd973:


 .globl _Videopac_Subsong0_RegisterBlock_111
_Videopac_Subsong0_RegisterBlock_111:
	.byte 25	; Initial State: software only.
	.byte 102, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 103	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 101	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 102	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart974
_Videopac_Subsong0DisarkPointerRegionStart974:
	.word _Videopac_Subsong0_RegisterBlock_7 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd974
Videopac_Subsong0DisarkPointerRegionEnd974:

 .globl _Videopac_Subsong0_RegisterBlock_113
_Videopac_Subsong0_RegisterBlock_113:
	.byte 25	; Initial State: software only.
	.byte 123, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 124	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 122	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart975
_Videopac_Subsong0DisarkPointerRegionStart975:
	.word _Videopac_Subsong0_RegisterBlock_92 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd975
Videopac_Subsong0DisarkPointerRegionEnd975:

 .globl _Videopac_Subsong0_RegisterBlock_114
_Videopac_Subsong0_RegisterBlock_114:
	.byte 25	; Initial State: software only.
	.byte 239, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 238	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart976
_Videopac_Subsong0DisarkPointerRegionStart976:
	.word _Videopac_Subsong0_RegisterBlock_93 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd976
Videopac_Subsong0DisarkPointerRegionEnd976:

 .globl _Videopac_Subsong0_RegisterBlock_115
_Videopac_Subsong0_RegisterBlock_115:
	.byte 25	; Initial State: software only.
	.byte 170, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 171	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 169	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 170	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart977
_Videopac_Subsong0DisarkPointerRegionStart977:
	.word _Videopac_Subsong0_RegisterBlock_94 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd977
Videopac_Subsong0DisarkPointerRegionEnd977:

 .globl _Videopac_Subsong0_RegisterBlock_116
_Videopac_Subsong0_RegisterBlock_116:
	.byte 25	; Initial State: software only.
	.byte 253, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 254	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 252	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 253	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart978
_Videopac_Subsong0DisarkPointerRegionStart978:
	.word _Videopac_Subsong0_RegisterBlock_95 + 43	; Optimization: goto common Block at index 33.
 .globl Videopac_Subsong0DisarkPointerRegionEnd978
Videopac_Subsong0DisarkPointerRegionEnd978:

 .globl _Videopac_Subsong0_RegisterBlock_0
_Videopac_Subsong0_RegisterBlock_0:
	.byte 0	; Initial State: no software, no hardware.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart979
_Videopac_Subsong0DisarkPointerRegionStart979:
	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd979
Videopac_Subsong0DisarkPointerRegionEnd979:

 .globl _Videopac_Subsong0_RegisterBlock_29
_Videopac_Subsong0_RegisterBlock_29:
	.byte 17	; Initial State: software only.
	.byte 29, 1	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart980
_Videopac_Subsong0DisarkPointerRegionStart980:
	.word _Videopac_Subsong0_RegisterBlock_1 + 10	; Optimization: goto common Block at index 7.
 .globl Videopac_Subsong0DisarkPointerRegionEnd980
Videopac_Subsong0DisarkPointerRegionEnd980:

 .globl _Videopac_Subsong0_RegisterBlock_59
_Videopac_Subsong0_RegisterBlock_59:
	.byte 17	; Initial State: software only.
	.byte 214, 0	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart981
_Videopac_Subsong0DisarkPointerRegionStart981:
	.word _Videopac_Subsong0_RegisterBlock_91 + 10	; Optimization: goto common Block at index 7.
 .globl Videopac_Subsong0DisarkPointerRegionEnd981
Videopac_Subsong0DisarkPointerRegionEnd981:

 .globl _Videopac_Subsong0_RegisterBlock_27
_Videopac_Subsong0_RegisterBlock_27:
	.byte 25	; Initial State: software only.
	.byte 102, 1	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart982
_Videopac_Subsong0DisarkPointerRegionStart982:
	.word _Videopac_Subsong0_RegisterBlock_111 + 3	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd982
Videopac_Subsong0DisarkPointerRegionEnd982:

 .globl _Videopac_Subsong0_RegisterBlock_117
_Videopac_Subsong0_RegisterBlock_117:
	.byte 25	; Initial State: software only.
	.byte 222, 1	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 223	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart983
_Videopac_Subsong0DisarkPointerRegionStart983:
	.word _Videopac_Subsong0_RegisterBlock_96 + 19	; Optimization: goto common Block at index 15.
 .globl Videopac_Subsong0DisarkPointerRegionEnd983
Videopac_Subsong0DisarkPointerRegionEnd983:

 .globl _Videopac_Subsong0_RegisterBlock_149
_Videopac_Subsong0_RegisterBlock_149:
	.byte 1	; Initial State: software only.
	.byte 222, 1	; Software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 221	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_149_Loop
_Videopac_Subsong0_RegisterBlock_149_Loop:
	.byte 65	; Non-initial State, software only.
	.byte 222	; New LSB for software period.

	.byte 8	; Loop to index 6.
 .globl _Videopac_Subsong0DisarkPointerRegionStart984
_Videopac_Subsong0DisarkPointerRegionStart984:
	.word _Videopac_Subsong0_RegisterBlock_149_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd984
Videopac_Subsong0DisarkPointerRegionEnd984:


 .globl _Videopac_Subsong0_RegisterBlock_18
_Videopac_Subsong0_RegisterBlock_18:
	.byte 57	; Initial State: software only.
	.byte 213, 0	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart985
_Videopac_Subsong0DisarkPointerRegionStart985:
	.word _Videopac_Subsong0_RegisterBlock_101 + 3	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd985
Videopac_Subsong0DisarkPointerRegionEnd985:

 .globl _Videopac_Subsong0_RegisterBlock_39
_Videopac_Subsong0_RegisterBlock_39:
	.byte 49	; Initial State: software only.
	.byte 28, 1	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart986
_Videopac_Subsong0DisarkPointerRegionStart986:
	.word _Videopac_Subsong0_RegisterBlock_11 + 33	; Optimization: goto common Block at index 25.
 .globl Videopac_Subsong0DisarkPointerRegionEnd986
Videopac_Subsong0DisarkPointerRegionEnd986:

 .globl _Videopac_Subsong0_RegisterBlock_69
_Videopac_Subsong0_RegisterBlock_69:
	.byte 49	; Initial State: software only.
	.byte 213, 0	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart987
_Videopac_Subsong0DisarkPointerRegionStart987:
	.word _Videopac_Subsong0_RegisterBlock_101 + 33	; Optimization: goto common Block at index 25.
 .globl Videopac_Subsong0DisarkPointerRegionEnd987
Videopac_Subsong0DisarkPointerRegionEnd987:

 .globl _Videopac_Subsong0_RegisterBlock_150
_Videopac_Subsong0_RegisterBlock_150:
	.byte 53	; Initial State: software only.
	.byte 1	; Noise.
	.byte 28, 1	; Software period.

	.byte 221	; Non-initial State, software only.
	.byte 56	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 25	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 54	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 58	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 54	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 58	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_150_Loop
_Videopac_Subsong0_RegisterBlock_150_Loop:
	.byte 1	; Non-initial State, software only.

	.byte 8	; Loop to index 17.
 .globl _Videopac_Subsong0DisarkPointerRegionStart988
_Videopac_Subsong0DisarkPointerRegionStart988:
	.word _Videopac_Subsong0_RegisterBlock_150_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd988
Videopac_Subsong0DisarkPointerRegionEnd988:


 .globl _Videopac_Subsong0_RegisterBlock_163
_Videopac_Subsong0_RegisterBlock_163:
	.byte 37	; Initial State: software only.
	.byte 1	; Noise.
	.byte 28, 1	; Software period.

	.byte 213	; Non-initial State, software only.
	.byte 56	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 54	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 58	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 54	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 58	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_163_Loop
_Videopac_Subsong0_RegisterBlock_163_Loop:
	.byte 1	; Non-initial State, software only.

	.byte 8	; Loop to index 15.
 .globl _Videopac_Subsong0DisarkPointerRegionStart989
_Videopac_Subsong0DisarkPointerRegionStart989:
	.word _Videopac_Subsong0_RegisterBlock_163_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd989
Videopac_Subsong0DisarkPointerRegionEnd989:


 .globl _Videopac_Subsong0_RegisterBlock_204
_Videopac_Subsong0_RegisterBlock_204:
	.byte 85	; Initial State: software only.
	.byte 1	; Noise.
	.byte 28, 1	; Software period.

	.byte 237	; Non-initial State, software only.
	.byte 56	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 41	; Non-initial State, software only.

	.byte 37	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 54	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 58	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 54	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 58	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart990
_Videopac_Subsong0DisarkPointerRegionStart990:
	.word _Videopac_Subsong0_RegisterBlock_150 + 27	; Optimization: goto common Block at index 14.
 .globl Videopac_Subsong0DisarkPointerRegionEnd990
Videopac_Subsong0DisarkPointerRegionEnd990:

 .globl _Videopac_Subsong0_RegisterBlock_232
_Videopac_Subsong0_RegisterBlock_232:
	.byte 37	; Initial State: software only.
	.byte 1	; Noise.
	.byte 170, 1	; Software period.

	.byte 213	; Non-initial State, software only.
	.byte 83	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 17	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 85	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 85	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart991
_Videopac_Subsong0DisarkPointerRegionStart991:
	.word _Videopac_Subsong0_RegisterBlock_163 + 26	; Optimization: goto common Block at index 13.
 .globl Videopac_Subsong0DisarkPointerRegionEnd991
Videopac_Subsong0DisarkPointerRegionEnd991:

 .globl _Videopac_Subsong0_RegisterBlock_247
_Videopac_Subsong0_RegisterBlock_247:
	.byte 53	; Initial State: software only.
	.byte 1	; Noise.
	.byte 170, 1	; Software period.

	.byte 221	; Non-initial State, software only.
	.byte 83	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 25	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 85	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 85	; New LSB for software period.

	.byte 81	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart992
_Videopac_Subsong0DisarkPointerRegionStart992:
	.word _Videopac_Subsong0_RegisterBlock_150 + 26	; Optimization: goto common Block at index 13.
 .globl Videopac_Subsong0DisarkPointerRegionEnd992
Videopac_Subsong0DisarkPointerRegionEnd992:

 .globl _Videopac_Subsong0_RegisterBlock_273
_Videopac_Subsong0_RegisterBlock_273:
	.byte 85	; Initial State: software only.
	.byte 1	; Noise.
	.byte 170, 1	; Software period.

	.byte 237	; Non-initial State, software only.
	.byte 83	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 41	; Non-initial State, software only.

	.byte 37	; Non-initial State, software only.

	.byte 33	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 85	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 81	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 85	; New LSB for software period.

	.byte 97	; Non-initial State, software only.
	.byte 83	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart993
_Videopac_Subsong0DisarkPointerRegionStart993:
	.word _Videopac_Subsong0_RegisterBlock_204 + 26	; Optimization: goto common Block at index 13.
 .globl Videopac_Subsong0DisarkPointerRegionEnd993
Videopac_Subsong0DisarkPointerRegionEnd993:

 .globl _Videopac_Subsong0_RegisterBlock_304
_Videopac_Subsong0_RegisterBlock_304:
	.byte 41	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 21	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 201	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 9	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 197	; Non-initial State, software only.
	.byte 143	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 5	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 197	; Non-initial State, software only.
	.byte 29	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart994
_Videopac_Subsong0DisarkPointerRegionStart994:
	.word _Videopac_Subsong0_RegisterBlock_163 + 26	; Optimization: goto common Block at index 13.
 .globl Videopac_Subsong0DisarkPointerRegionEnd994
Videopac_Subsong0DisarkPointerRegionEnd994:

 .globl _Videopac_Subsong0_RegisterBlock_308
_Videopac_Subsong0_RegisterBlock_308:
	.byte 17	; Initial State: software only.
	.byte 252, 4	; Software period.

	.byte 73	; Non-initial State, software only.
	.byte 49	; New LSB for software period.

	.byte 201	; Non-initial State, software only.
	.byte 83	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 201	; Non-initial State, software only.
	.byte 126	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 73	; Non-initial State, software only.
	.byte 24	; New LSB for software period.

	.byte 201	; Non-initial State, software only.
	.byte 170	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 73	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 9	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart995
_Videopac_Subsong0DisarkPointerRegionStart995:
	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd995
Videopac_Subsong0DisarkPointerRegionEnd995:

 .globl _Videopac_Subsong0_RegisterBlock_321
_Videopac_Subsong0_RegisterBlock_321:
	.byte 25	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 193	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 1	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 193	; Non-initial State, software only.
	.byte 143	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_321_Loop
_Videopac_Subsong0_RegisterBlock_321_Loop:
	.byte 193	; Non-initial State, software only.
	.byte 29	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 8	; Loop to index 18.
 .globl _Videopac_Subsong0DisarkPointerRegionStart996
_Videopac_Subsong0DisarkPointerRegionStart996:
	.word _Videopac_Subsong0_RegisterBlock_321_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd996
Videopac_Subsong0DisarkPointerRegionEnd996:


 .globl _Videopac_Subsong0_RegisterBlock_325
_Videopac_Subsong0_RegisterBlock_325:
	.byte 1	; Initial State: software only.
	.byte 252, 4	; Software period.

	.byte 65	; Non-initial State, software only.
	.byte 49	; New LSB for software period.

	.byte 193	; Non-initial State, software only.
	.byte 83	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 193	; Non-initial State, software only.
	.byte 126	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 65	; Non-initial State, software only.
	.byte 24	; New LSB for software period.

	.byte 193	; Non-initial State, software only.
	.byte 170	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 65	; Non-initial State, software only.
	.byte 64	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

	.byte 1	; Non-initial State, software only.

 .globl _Videopac_Subsong0_RegisterBlock_325_Loop
_Videopac_Subsong0_RegisterBlock_325_Loop:
	.byte 0	; Non-initial State, no software no hardware.

	.byte 8	; Loop to index 12.
 .globl _Videopac_Subsong0DisarkPointerRegionStart997
_Videopac_Subsong0DisarkPointerRegionStart997:
	.word _Videopac_Subsong0_RegisterBlock_325_Loop
 .globl Videopac_Subsong0DisarkPointerRegionEnd997
Videopac_Subsong0DisarkPointerRegionEnd997:


 .globl _Videopac_Subsong0_RegisterBlock_333
_Videopac_Subsong0_RegisterBlock_333:
	.byte 9	; Initial State: software only.
	.byte 56, 2	; Software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 197	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 197	; Non-initial State, software only.
	.byte 142	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 71	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart998
_Videopac_Subsong0DisarkPointerRegionStart998:
	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd998
Videopac_Subsong0DisarkPointerRegionEnd998:

 .globl _Videopac_Subsong0_RegisterBlock_344
_Videopac_Subsong0_RegisterBlock_344:
	.byte 17	; Initial State: software only.
	.byte 112, 4	; Software period.

	.byte 201	; Non-initial State, software only.
	.byte 188	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 201	; Non-initial State, software only.
	.byte 246	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 73	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 201	; Non-initial State, software only.
	.byte 222	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 73	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 73	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart999
_Videopac_Subsong0DisarkPointerRegionStart999:
	.word _Videopac_Subsong0_RegisterBlock_308 + 18	; Optimization: goto common Block at index 7.
 .globl Videopac_Subsong0DisarkPointerRegionEnd999
Videopac_Subsong0DisarkPointerRegionEnd999:

 .globl _Videopac_Subsong0_RegisterBlock_374
_Videopac_Subsong0_RegisterBlock_374:
	.byte 73	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 37	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 190	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 239	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 217	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 25	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 213	; Non-initial State, software only.
	.byte 143	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 21	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 191	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 240	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 213	; Non-initial State, software only.
	.byte 29	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.


 .globl _Videopac_Subsong0_RegisterBlock_378
_Videopac_Subsong0_RegisterBlock_378:
	.byte 49	; Initial State: software only.
	.byte 112, 4	; Software period.

	.byte 217	; Non-initial State, software only.
	.byte 188	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 217	; Non-initial State, software only.
	.byte 246	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 89	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 217	; Non-initial State, software only.
	.byte 222	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 89	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 89	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 25	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 21	; Non-initial State, software only.

	.byte 17	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1000
_Videopac_Subsong0DisarkPointerRegionStart1000:
	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1000
Videopac_Subsong0DisarkPointerRegionEnd1000:

 .globl _Videopac_Subsong0_RegisterBlock_386
_Videopac_Subsong0_RegisterBlock_386:
	.byte 57	; Initial State: software only.
	.byte 56, 2	; Software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 221	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 221	; Non-initial State, software only.
	.byte 142	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 71	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1001
_Videopac_Subsong0DisarkPointerRegionStart1001:
	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1001
Videopac_Subsong0DisarkPointerRegionEnd1001:

 .globl _Videopac_Subsong0_RegisterBlock_410
_Videopac_Subsong0_RegisterBlock_410:
	.byte 25	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 69	; Non-initial State, software only.
	.byte 179	; New LSB for software period.

	.byte 5	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 193	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 1	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 5	; Non-initial State, software only.

	.byte 193	; Non-initial State, software only.
	.byte 143	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 180	; New LSB for software period.

	.byte 1	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 226	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1002
_Videopac_Subsong0DisarkPointerRegionStart1002:
	.word _Videopac_Subsong0_RegisterBlock_321 + 27	; Optimization: goto common Block at index 17.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1002
Videopac_Subsong0DisarkPointerRegionEnd1002:

 .globl _Videopac_Subsong0_RegisterBlock_414
_Videopac_Subsong0_RegisterBlock_414:
	.byte 1	; Initial State: software only.
	.byte 112, 4	; Software period.

	.byte 193	; Non-initial State, software only.
	.byte 188	; New LSB for software period.
	.byte 3	; New MSB for software period, maybe with noise.

	.byte 193	; Non-initial State, software only.
	.byte 246	; New LSB for software period.
	.byte 2	; New MSB for software period, maybe with noise.

	.byte 65	; Non-initial State, software only.
	.byte 56	; New LSB for software period.

	.byte 193	; Non-initial State, software only.
	.byte 222	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 65	; Non-initial State, software only.
	.byte 123	; New LSB for software period.

	.byte 65	; Non-initial State, software only.
	.byte 29	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1003
_Videopac_Subsong0DisarkPointerRegionStart1003:
	.word _Videopac_Subsong0_RegisterBlock_325 + 18	; Optimization: goto common Block at index 7.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1003
Videopac_Subsong0DisarkPointerRegionEnd1003:

 .globl _Videopac_Subsong0_RegisterBlock_429
_Videopac_Subsong0_RegisterBlock_429:
	.byte 41	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 21	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 179	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 17	; Non-initial State, software only.

	.byte 201	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 9	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 197	; Non-initial State, software only.
	.byte 143	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 5	; Non-initial State, software only.

	.byte 73	; Non-initial State, software only.
	.byte 180	; New LSB for software period.

	.byte 9	; Non-initial State, software only.

	.byte 65	; Non-initial State, software only.
	.byte 226	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1004
_Videopac_Subsong0DisarkPointerRegionStart1004:
	.word _Videopac_Subsong0_RegisterBlock_304 + 27	; Optimization: goto common Block at index 17.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1004
Videopac_Subsong0DisarkPointerRegionEnd1004:

 .globl _Videopac_Subsong0_RegisterBlock_463
_Videopac_Subsong0_RegisterBlock_463:
	.byte 73	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 37	; Non-initial State, software only.

	.byte 93	; Non-initial State, software only.
	.byte 179	; New LSB for software period.

	.byte 29	; Non-initial State, software only.

	.byte 97	; Non-initial State, software only.
	.byte 213	; New LSB for software period.

	.byte 33	; Non-initial State, software only.

	.byte 217	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 25	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 29	; Non-initial State, software only.

	.byte 213	; Non-initial State, software only.
	.byte 143	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 21	; Non-initial State, software only.

	.byte 89	; Non-initial State, software only.
	.byte 180	; New LSB for software period.

	.byte 25	; Non-initial State, software only.

	.byte 81	; Non-initial State, software only.
	.byte 226	; New LSB for software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1005
_Videopac_Subsong0DisarkPointerRegionStart1005:
	.word _Videopac_Subsong0_RegisterBlock_374 + 27	; Optimization: goto common Block at index 17.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1005
Videopac_Subsong0DisarkPointerRegionEnd1005:

 .globl _Videopac_Subsong0_RegisterBlock_49
_Videopac_Subsong0_RegisterBlock_49:
	.byte 1	; Initial State: software only.
	.byte 222, 1	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1006
_Videopac_Subsong0DisarkPointerRegionStart1006:
	.word _Videopac_Subsong0_RegisterBlock_96 + 49	; Optimization: goto common Block at index 37.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1006
Videopac_Subsong0DisarkPointerRegionEnd1006:

 .globl _Videopac_Subsong0_RegisterBlock_79
_Videopac_Subsong0_RegisterBlock_79:
	.byte 1	; Initial State: software only.
	.byte 102, 1	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1007
_Videopac_Subsong0DisarkPointerRegionStart1007:
	.word _Videopac_Subsong0_RegisterBlock_7 + 49	; Optimization: goto common Block at index 37.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1007
Videopac_Subsong0DisarkPointerRegionEnd1007:

 .globl _Videopac_Subsong0_RegisterBlock_316
_Videopac_Subsong0_RegisterBlock_316:
	.byte 25	; Initial State: software only.
	.byte 56, 2	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 205	; Non-initial State, software only.
	.byte 28	; New LSB for software period.
	.byte 1	; New MSB for software period, maybe with noise.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 205	; Non-initial State, software only.
	.byte 142	; New LSB for software period.
	.byte 0	; New MSB for software period, maybe with noise.

	.byte 13	; Non-initial State, software only.


 .globl _Videopac_Subsong0_RegisterBlock_336
_Videopac_Subsong0_RegisterBlock_336:
	.byte 25	; Initial State: software only.
	.byte 142, 0	; Software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 77	; Non-initial State, software only.
	.byte 71	; New LSB for software period.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 13	; Non-initial State, software only.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1008
_Videopac_Subsong0DisarkPointerRegionStart1008:
	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1008
Videopac_Subsong0DisarkPointerRegionEnd1008:

 .globl _Videopac_Subsong0_RegisterBlock_8
_Videopac_Subsong0_RegisterBlock_8:
	.byte 9	; Initial State: software only.
	.byte 213, 0	; Software period.

	.byte 8
 .globl _Videopac_Subsong0DisarkPointerRegionStart1009
_Videopac_Subsong0DisarkPointerRegionStart1009:
	.word _Videopac_Subsong0_RegisterBlock_1 + 3	; Optimization: goto common Block at index 1.
 .globl Videopac_Subsong0DisarkPointerRegionEnd1009
Videopac_Subsong0DisarkPointerRegionEnd1009:

 .globl Videopac_Subsong0DisarkByteRegionEnd945
Videopac_Subsong0DisarkByteRegionEnd945:
; include line ->                     include  "Videopac_aky_playerconfig.asm"

; include line ->                     include  "aky_player_c.i"
; ARKOS TRACKER II 
; Player for the Vectrex of the AKY format
; inspite of the 6809 being a BIG ENDIAN
;
; the AKY must be saved as sources for little ENDIAN, because that is
; what the code below interprets!
;
; Plays at an average of about 2000 cycles
; spikes up to 2500 have been seen.
; it uses 32 bytes of RAM, starting at "arkosRamStart"
;
; This is a manual transcode from the 6502 player, there has been no
; effort taken, to performance enhance this player.
;
;
; MACROS for shadow register setting
; macros assumes; register U pointing to Vec_Music_Work (this is a shadow)
; assumes var register is positive (always...)
;
; destroys a 
; destroys d
; destroys a, b
; destroys a, b
;
;
                    .area .bss      
; Warning - org line found, my be countering relocatable code!
;                    org      arkosRamStart 
NO_ERROR            =      0 
NO_3_CHANNELS_ERROR  =     1 
; -------------------------------------

; =============================================================================
;Is there a loaded Player Configuration source? If no, use a default configuration.
; => to generate Player Configuration, see export option in Arkos Tracker 2 
; simplified version...
PLY_CFG_UseHardwareSounds  =  1 
PLY_CFG_UseRetrig   =        1 
PLY_CFG_NoSoftNoHard  =      1                            ; not used 
PLY_CFG_NoSoftNoHard_Noise  =  1                          ; not used 
PLY_CFG_SoftOnly    =        1                            ; not used 
PLY_CFG_SoftOnly_Noise  =    1                            ; not used 
PLY_CFG_SoftToHard  =        1 
PLY_CFG_SoftToHard_Noise  =  1 
PLY_CFG_SoftToHard_Retrig  =  1                           ; not used 
PLY_CFG_HardOnly    =        1 
PLY_CFG_HardOnly_Noise  =    1                            ; not used 
PLY_CFG_HardOnly_Retrig  =   1                            ; not used 
PLY_CFG_SoftAndHard  =       1                            ; not used 
PLY_CFG_SoftAndHard_Noise  =  1 
PLY_CFG_SoftAndHard_Retrig  =  1                          ; not used 
;Agglomerates the hardware sound configuration flags, because they are treated the same in this player.
_PLY_AKY_USE_SoftAndHard_Agglomerated  =  1 
                    _PLY_AKY_USE_SoftAndHard_Agglomerated  = 1 
_PLY_AKY_USE_SoftAndHard_Agglomerated  =  1 
_PLY_AKY_USE_SoftAndHard_Noise_Agglomerated  =  1 
_PLY_AKY_USE_SoftAndHard_Noise_Agglomerated  =  1 
;Any noise?
_PLY_AKY_USE_Noise   =        1 
_PLY_AKY_USE_Noise   =        1 
_PLY_AKY_USE_Noise   =        1 
; =============================================================================
                    .area .text     
; NOTE!!!
; THIS MIGHT BE INCORRECT FOR YOUR NEEDS!
; MOST OF THE TIME FOR MALBAN THIS IS GOOD!
 .setdp   0xd000,_DATA
; Initializes the player.
; expected in regY the song address, usually something like "Main_Subsong0"
; y is our main "pointer" register
 .globl _initSong
_initSong:
                    ldy      #Videopac_Subsong0               ; song to be played 

 .globl _PLY_AKY_INIT
_PLY_AKY_INIT: 
                    clr      _PLY_error                    ; initially no error! 
                                                          ; Skips the header. 
                                                          ; Skips the format version. 
                    LDD      ,y                           ; d now a format, b = channel count 
                    cmpb     #3                           ; channel count 
                    BNE      channelError 
                                                          ; two bytes: format version and channel count 
                                                          ; four bytes: frequency (should for Vectrex hopefully 1500000Hz 
                    leay     6,y 
                                                          ; y/pcData now pointing to subsong 0 linker 
                                                          ; save current linker pointer, this is the 
                                                          ; address of the the next pattern to be initialized! 
                    sty      _PLY_AKY_PATTERNFRAMECOUNTER_OVER 
                                                          ; initial state = 0 
                    clr      _initFlag1 
                    clr      _initFlag2 
                    clr      _initFlag3 
                                                          ; init frame counter with 1, so it gets count down immediately to 0 
                                                          ; and reinits the next (FIRST) pattern! 
                    ldd      #1 
                    std      _PLY_AKY_PATTERNFRAMECOUNTER 
                    lda      #0xff                         ; malban add, default retrigger 
                    sta      _PLY_AKY_PSGREGISTER13_RETRIG 
 .globl errorRTS
errorRTS: 
                    RTS      

 .globl channelError
channelError: 
; don't really know what the original player is 
; trying to acomplish here (6502)
; if not 3 it goes back to before the frequency skip
; ->looks wrong (checked with z80 code, 6502 is wrong!)
; for now I just exit!
                    lda      #NO_3_CHANNELS_ERROR 
                    sta      _PLY_error 
                    rts      

;-----------
;       Plays the music. It must have been initialized before.
 .globl _PLY_AKY_PLAY
_PLY_AKY_PLAY: 
                    ldu      #Vec_Music_Work              ; prerequisite for writing to PSG shadow register 
                    ldd      _PLY_AKY_PATTERNFRAMECOUNTER 
                    subd     #1 
                    std      _PLY_AKY_PATTERNFRAMECOUNTER 
                    bne      read_the_tracks              ;The pattern is not over. go on reading the track 
; The pattern is over. Reads the next one.  
 .globl _PLY_AKY_PTLINKER
_PLY_AKY_PTLINKER: 
                    ldy      _PLY_AKY_PATTERNFRAMECOUNTER_OVER ; get the address of the next frame 
                    ldd      ,y++                         ;Gets the duration of the Pattern, or 0 if end of the song. 
                    BNE      _PLY_AKY_LINKERNOTENDSONG 
                    ldy      ,y++                         ; End of the song. Where to loop? 
                                                          ;Gets the duration again. No need to check the end of the song, 
                                                          ;we know it contains at least one pattern. 
                    ldd      ,y++                         ;Gets the duration of the Pattern, or 0 if end of the song. 
 .globl _PLY_AKY_LINKERNOTENDSONG
_PLY_AKY_LINKERNOTENDSONG: 
                    std      _PLY_AKY_PATTERNFRAMECOUNTER 
                    ldd      ,y++ 
                    std      _PLY_AKY_CHANNEL1_PTTRACK 
                    ldd      ,y++ 
                    std      _PLY_AKY_CHANNEL2_PTTRACK 
                    ldd      ,y++ 
                    std      _PLY_AKY_CHANNEL3_PTTRACK 
                    sty      _PLY_AKY_PATTERNFRAMECOUNTER_OVER 
                    lda      #01                          ;Resets the RegisterBlocks of the channel >1. The first one is skipped so there is no need to do so. 
                    sta      _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK 
                    sta      _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK 
                    bra      in_read_the_tracks1 

; =====================================
;Reading the Tracks.
; =====================================
 .globl read_the_tracks
read_the_tracks: 
; Channel 1
                    dec      _PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK ;Frames to wait before reading the next RegisterBlock. 0 = finished. 
                    bne      _PLY_AKY_CHANNEL1_REGISTERBLOCK_PROCESS 
 .globl in_read_the_tracks1
in_read_the_tracks1: 
                                                          ;This RegisterBlock is finished. Reads the next one from the Track. 
                    clr      _initFlag1                    ;Obviously, starts at the initial state. 
                    ldy      _PLY_AKY_CHANNEL1_PTTRACK 
                    lda      ,y+                          ; A is the duration of the block. 
                    sta      _PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK 
                    ldd      ,y++ 
                    std      _PLY_AKY_CHANNEL1_PTREGISTERBLOCK 
                    sty      _PLY_AKY_CHANNEL1_PTTRACK 
 .globl _PLY_AKY_CHANNEL1_REGISTERBLOCK_PROCESS
_PLY_AKY_CHANNEL1_REGISTERBLOCK_PROCESS: 
;
; Channel 2
                    dec      _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK ;Frames to wait before reading the next RegisterBlock. 0 = finished. 
                    bne      _PLY_AKY_CHANNEL2_REGISTERBLOCK_PROCESS 
                                                          ;This RegisterBlock is finished. Reads the next one from the Track. 
                    clr      _initFlag2                    ;Obviously, starts at the initial state. 
                    ldy      _PLY_AKY_CHANNEL2_PTTRACK 
                    lda      ,y+                          ;A is the duration of the block. 
                    sta      _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK 
                    ldd      ,y++ 
                    std      _PLY_AKY_CHANNEL2_PTREGISTERBLOCK 
                    sty      _PLY_AKY_CHANNEL2_PTTRACK 
 .globl _PLY_AKY_CHANNEL2_REGISTERBLOCK_PROCESS
_PLY_AKY_CHANNEL2_REGISTERBLOCK_PROCESS: 
;
; channel 3
                    dec      _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK ;Frames to wait before reading the next RegisterBlock. 0 = finished. 
                    bne      _PLY_AKY_CHANNEL3_REGISTERBLOCK_PROCESS 
                                                          ;This RegisterBlock is finished. Reads the next one from the Track. 
                    clr      _initFlag3                    ;Obviously, starts at the initial state. 
                    ldy      _PLY_AKY_CHANNEL3_PTTRACK 
                    lda      ,y+                          ;a is the duration of the block. 
                    sta      _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK 
                    ldd      ,y++ 
                    std      _PLY_AKY_CHANNEL3_PTREGISTERBLOCK 
                    sty      _PLY_AKY_CHANNEL3_PTTRACK 
 .globl _PLY_AKY_CHANNEL3_REGISTERBLOCK_PROCESS
_PLY_AKY_CHANNEL3_REGISTERBLOCK_PROCESS: 
; =====================================
;Reading the RegisterBlock.
; =====================================
                    LDA      #08 
                    STA      _volumeRegister               ; first volume register 
                    clr      _frequencyRegister 
                                                          ; Register 7 with default values: fully sound-open but noise-close. 
                                                          ;R7 has been shift twice to the left, it will be shifted back as the channels are treated. 
                    LDA      #0xE0 
                    STA      _r7 
;
;Channel 1 
                    ldy      _PLY_AKY_CHANNEL1_PTREGISTERBLOCK 
                    ldb      _initFlag1 
                    bSR      _PLY_AKY_READREGISTERBLOCK 
                    lda      #1 
                    sta      _initFlag1 
                    sty      _PLY_AKY_CHANNEL1_PTREGISTERBLOCK 
;
; Channel 2 
                    LSR      _r7                           ;Shifts the R7 for the next channels. 
                    ldy      _PLY_AKY_CHANNEL2_PTREGISTERBLOCK 
                    ldb      _initFlag2 
                    bSR      _PLY_AKY_READREGISTERBLOCK 
                    lda      #1 
                    sta      _initFlag2 
                    sty      _PLY_AKY_CHANNEL2_PTREGISTERBLOCK 
;
; Channel 3 
                    ROR      _r7                           ;Shifts the R7 for the next channels. 
                    ldy      _PLY_AKY_CHANNEL3_PTREGISTERBLOCK 
                    ldb      _initFlag3 
                    bSR      _PLY_AKY_READREGISTERBLOCK 
                    lda      #1 
                    sta      _initFlag3 
                    sty      _PLY_AKY_CHANNEL3_PTREGISTERBLOCK 
;
;Almost all the channel specific registers have been sent. Now sends the remaining registers (6, 7, 11, 12, 13).
;Register 7. Note that managing register 7 before 6/11/12 is done on purpose.
; macro call ->                     SET_PSG_DIR_VAR  7, _r7 
                    lda      _r7 
                    sta      7, u 
; macro call ->                     SET_PSG_DIR_VAR  6, _PLY_AKY_PSGREGISTER6 
                    lda      _PLY_AKY_PSGREGISTER6 
                    sta      6, u 
; macro call ->                     SET_PSG_DIR_VAR  11, _PLY_AKY_PSGREGISTER11 
                    lda      _PLY_AKY_PSGREGISTER11 
                    sta      11, u 
; macro call ->                     SET_PSG_DIR_VAR  12, _PLY_AKY_PSGREGISTER12 
                    lda      _PLY_AKY_PSGREGISTER12 
                    sta      12, u 
                    lda      _PLY_AKY_PSGREGISTER13 
                    cmpa     _PLY_AKY_PSGREGISTER13_RETRIG ;If IsRetrig?, force the R13 to be triggered. 
                    beq      _PLY_AKY_PSGREGISTER13_END 
                    sta      _PLY_AKY_PSGREGISTER13_RETRIG 
; macro call ->                     SET_PSG_DIR_VAR  13, _PLY_AKY_PSGREGISTER13 
                    lda      _PLY_AKY_PSGREGISTER13 
                    sta      13, u 
 .globl _PLY_AKY_PSGREGISTER13_END
_PLY_AKY_PSGREGISTER13_END: 
 .globl _PLY_AKY_EXIT
_PLY_AKY_EXIT: 
                    RTS      

; ****************************************************************************************
; -----------------------------------------------------------------------------
;Generic code interpreting the RegisterBlock
; IN:   regY = First Byte
;       regB = 0 = initial state, 1 = non-initial state. 
; -----------------------------------------------------------------------------
 .globl _PLY_AKY_READREGISTERBLOCK
_PLY_AKY_READREGISTERBLOCK: 
                    lda      ,y+ 
                    sta      _ACCA 
                    tstb     
                    lbne     _PLY_AKY_RRB_NONINITIALSTATE 
;Initial state. 
                    ror      _ACCA 
                    bcs      _PLY_AKY_RRB_IS_SOFTWAREONLYORSOFTWAREANDHARDWARE 
                    ror      _ACCA 
                    bcs      _PLY_AKY_RRB_IS_HARDWAREONLY 
; -----------------------------------------------------------------------------
;Generic code interpreting the RegisterBlock - Initial state.
; IN:   regY = Points after the first byte.
;       _ACCA (A) = First byte, twice shifted to the right (type removed).
;       r7 = Register 7. All sounds are open (0) by default, all noises closed (1).
;       _volumeRegister = Volume register.
;       _frequencyRegister = LSB frequency register.
;
; OUT:  regY MUST point after the structure.
;       r7 = updated (ONLY bit 2 and 5).
;       _volumeRegister = Volume register increased of 1 (*** IMPORTANT! The code MUST increase it, even if not using it! ***)
;       _frequencyRegister = LSB frequency register, increased of 2.
; -----------------------------------------------------------------------------
 .globl _PLY_AKY_RRB_IS_NOSOFTWARENOHARDWARE
_PLY_AKY_RRB_IS_NOSOFTWARENOHARDWARE: 
                    ror      _ACCA                         ;Noise? 
                    bcc      _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_READVOLUME 
                    lda      ,y+                          ;There is a noise. Reads it. 
                    STA      _PLY_AKY_PSGREGISTER6 
                    LDA      _r7                           ;Opens the noise channel. 
                    anda     #0b11011111                   ; reset bit 5 (open) 
                    STA      _r7 
;------------
 .globl _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_READVOLUME
_PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_READVOLUME: 
;The volume is now in b0-b3. 
;and %1111 ;No need, the bit 7 was 0. 
; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
                    lda      _ACCA 
                    ldb      _volumeRegister 
                    sta      b,u 
                    inc      _volumeRegister               ;Increases the volume register. 
                    inc      _frequencyRegister 
                    inc      _frequencyRegister 
                    LDA      _r7                           ;Closes the sound channel. 
                    ORA      #0b00000100                   ; set bit 2 (close) 
                    STA      _r7 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_IS_HARDWAREONLY
_PLY_AKY_RRB_IS_HARDWAREONLY: 
                    ROR      _ACCA                         ;Retrig? 
                    BCC      _PLY_AKY_RRB_IS_HO_NORETRIG 
                    LDA      _ACCA 
                    ORA      #0b10000000 
                    STA      _ACCA 
                    STA      _PLY_AKY_PSGREGISTER13_RETRIG ;A value to make sure the retrig is performed, yet A can still be use. 
 .globl _PLY_AKY_RRB_IS_HO_NORETRIG
_PLY_AKY_RRB_IS_HO_NORETRIG: 
                    ROR      _ACCA                         ;Noise? 
                    BCC      _PLY_AKY_RRB_IS_HO_NONOISE 
                    lda      ,y+                          ;Reads the noise. 
                    STA      _PLY_AKY_PSGREGISTER6 
                    LDA      _r7                           ;Opens the noise channel. 
                    ANDA     #0b11011111                   ; reset bit 5 (open) 
                    STA      _r7 
 .globl _PLY_AKY_RRB_IS_HO_NONOISE
_PLY_AKY_RRB_IS_HO_NONOISE: 
                    LDA      _ACCA                         ;The envelope. 
                    ANDA     #15 
                    STA      _PLY_AKY_PSGREGISTER13 
                    ldd      ,y++                         ;Copies the hardware period. 
                    STD      _PLY_AKY_PSGREGISTER11        ;+12 
                    LDA      _r7                           ;Closes the sound channel. 
                    ORA      #0b00000100                   ; set bit 2 (close) 
                    STA      _r7 
; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff 
                    lda      #0xff 
                    ldb      _volumeRegister 
                    sta      b, u 
                    inc      _volumeRegister               ;Increases the volume register. 
                    inc      _frequencyRegister 
                    inc      _frequencyRegister 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_IS_SOFTWAREONLYORSOFTWAREANDHARDWARE
_PLY_AKY_RRB_IS_SOFTWAREONLYORSOFTWAREANDHARDWARE: 
                    ROR      _ACCA                         ;Another decision to make about the sound type. 
                    BCS      _PLY_AKY_RRB_IS_SOFTWAREANDHARDWARE 
;Software only. Structure: 0vvvvntt. 
                    ROR      _ACCA                         ;Noise? 
                    BCC      _PLY_AKY_RRB_IS_SOFTWAREONLY_NONOISE 
                                                          ;Noise. Reads it. 
                    lda      ,y+ 
                    STA      _PLY_AKY_PSGREGISTER6 
                    LDA      _r7                           ;Opens the noise channel. 
                    ANDA     #0b11011111                   ; reset bit 5 (open) 
                    STA      _r7 
 .globl _PLY_AKY_RRB_IS_SOFTWAREONLY_NONOISE
_PLY_AKY_RRB_IS_SOFTWAREONLY_NONOISE: 
;Reads the volume (now b0-b3). 
;Note: we do NOT peform a "and %1111" because we know the bit 7 of the original byte is 0, so the bit 4 is currently 0. Else the hardware volume would be on! 
; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
                    lda      _ACCA 
                    ldb      _volumeRegister 
                    sta      b,u 
                    INC      _volumeRegister               ;Increases the volume register. 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
                    inc      _frequencyRegister 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the MSB software frequency. 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
                    inc      _frequencyRegister 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_IS_SOFTWAREANDHARDWARE
_PLY_AKY_RRB_IS_SOFTWAREANDHARDWARE: 
                    ROR      _ACCA                         ;Retrig? 
                    BCC      _PLY_AKY_RRB_IS_SAH_NORETRIG 
                    LDA      _ACCA 
                    ORA      #0b10000000 
                    STA      _PLY_AKY_PSGREGISTER13_RETRIG ;A value to make sure the retrig is performed, yet A can still be use. 
                    STA      _ACCA 
 .globl _PLY_AKY_RRB_IS_SAH_NORETRIG
_PLY_AKY_RRB_IS_SAH_NORETRIG: 
                    ROR      _ACCA                         ;Noise? 
                    BCC      _PLY_AKY_RRB_IS_SAH_NONOISE 
                    lda      ,y+                          ;Reads the noise. 
                    STA      _PLY_AKY_PSGREGISTER6 
                    LDA      _r7                           ;Opens the noise channel. 
                    ANDA     #0b11011111                   ; reset bit 5 (open noise) 
                    STA      _r7 
 .globl _PLY_AKY_RRB_IS_SAH_NONOISE
_PLY_AKY_RRB_IS_SAH_NONOISE: 
                    LDA      _ACCA                         ;The envelope. 
                    ANDA     #15 
                    STA      _PLY_AKY_PSGREGISTER13 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
                    inc      _frequencyRegister 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the MSB software frequency. 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
                    inc      _frequencyRegister 
; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff  ;Sets the hardware volume. 
                    lda      #0xff 
                    ldb      _volumeRegister 
                    sta      b, u 
                    inc      _volumeRegister               ;Increases the volume register. 
                    ldd      ,y++                         ;Copies the hardware period. 
                    std      _PLY_AKY_PSGREGISTER11        ; 11+12 
                    RTS      

; -------------------------------------
;Manages the loop. This code is put here so that no jump needs to be coded when its job is done. 
 .globl _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_LOOP
_PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_LOOP: 
;Loops. Reads the next pointer to this RegisterBlock. 
                    ldy      ,y 
                    lda      ,y+ 
                    sta      _ACCA 
; -----------------------------------------------------------------------------
;Generic code interpreting the RegisterBlock - Non initial state. See comment about the Initial state for the registers ins/outs.
; -----------------------------------------------------------------------------
 .globl _PLY_AKY_RRB_NONINITIALSTATE
_PLY_AKY_RRB_NONINITIALSTATE: 
                    ROR      _ACCA 
                    BCS      _PLY_AKY_RRB_NIS_SOFTWAREONLYORSOFTWAREANDHARDWARE 
                    ROR      _ACCA 
                    LBCS     _PLY_AKY_RRB_NIS_HARDWAREONLY 
                    LDA      _ACCA                         ;No software, no hardware, OR loop. 
                    STA      _ACCB 
                    ANDA     #03                          ;Bit 3:loop?/volume bit 0, bit 2: volume? 
                    CMPA     #02                          ;If no volume, yet the volume is >0, it means loop. 
                    BEQ      _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_LOOP 
;No loop: so "no software no hardware". 
                    LDA      _r7                           ;Closes the sound channel. 
                    ORA      #0b00000100                   ; set bit 2 (close sound) 
                    STA      _r7                           ;Volume? bit 2 - 2. 
                    LDA      _ACCB 
                    RORA     
                    BCC      _PLY_AKY_RRB_NIS_NOVOLUME 
                    ANDA     #15 
                    STA      _ACCA 
; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
                    lda      _ACCA 
                    ldb      _volumeRegister 
                    sta      b,u 
 .globl _PLY_AKY_RRB_NIS_NOVOLUME
_PLY_AKY_RRB_NIS_NOVOLUME: 
;Sadly, have to lose a bit of CPU here, as this must be done in all cases. 
                    INC      _volumeRegister               ;Next volume register. 
                    inc      _frequencyRegister 
                    inc      _frequencyRegister 
;Noise? Was on bit 7, but there has been two shifts. We can't use A, it may have been modified by the volume AND. 
                    LDA      #0b00100000                   ; bit 7-2 
                    BITA     _ACCB 
                    BNE      isNoise 
                    RTS      

 .globl isNoise
isNoise: 
                    lda      ,y+                          ;Noise. 
                    STA      _PLY_AKY_PSGREGISTER6 
                    LDA      _r7                           ;Opens the noise channel. 
                    ANDA     #0b11011111                   ; reset bit 5 (open noise) 
                    STA      _r7 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_NIS_SOFTWAREONLYORSOFTWAREANDHARDWARE
_PLY_AKY_RRB_NIS_SOFTWAREONLYORSOFTWAREANDHARDWARE: 
;Another decision to make about the sound type. 
                    ROR      _ACCA 
                    LBCS     _PLY_AKY_RRB_NIS_SOFTWAREANDHARDWARE 
;Software only. Structure: mspnoise lsp v v v v (0 1). 
                    LDA      _ACCA 
                    STA      _ACCB 
                    ANDA     #15                          ;Gets the volume (already shifted). 
                    STA      _ACCA 
; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
                    lda      _ACCA 
                    ldb      _volumeRegister 
                    sta      b,u 
                    INC      _volumeRegister               ;Increases the volume register. 
                                                          ;LSP? (Least Significant byte of Period). Was bit 6, but now shifted. 
                    LDA      #0b00010000                   ; bit 6-2 
                    BITA     _ACCB 
                    BEQ      _PLY_AKY_RRB_NIS_SOFTWAREONLY_NOLSP 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
; frequency register is not incremented on purpose. 
 .globl _PLY_AKY_RRB_NIS_SOFTWAREONLY_NOLSP
_PLY_AKY_RRB_NIS_SOFTWAREONLY_NOLSP: 
;MSP AND/OR (Noise and/or new Noise)? (Most Significant byte of Period). 
                    LDA      #0b00100000                   ; bit 7-2 
                    BITA     _ACCB 
                    BNE      _PLY_AKY_RRB_NIS_SOFTWAREONLY_MSPANDMAYBENOISE 
;Bit of loss of CPU, but has to be done in all cases. 
                    inc      _frequencyRegister 
                    inc      _frequencyRegister 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_NIS_SOFTWAREONLY_MSPANDMAYBENOISE
_PLY_AKY_RRB_NIS_SOFTWAREONLY_MSPANDMAYBENOISE: 
;MSP and noise?, in the next byte. nipppp (n = newNoise? i = isNoise? p = MSB period). 
                    lda      ,y+                          ;Useless bits at the end, not a problem. 
                    sta      _ACCA 
                    inc      _frequencyRegister            ;Sends the MSB software frequency. 
; macro call ->                     SET_PSG_VAR_VAR  _frequencyRegister, _ACCA 
                    lda      _ACCA 
                    ldb      _frequencyRegister 
                    sta      b,u 
                    inc      _frequencyRegister 
                    ROL      _ACCA                         ;Carry is isNoise? 
                    BCS      isNoise2 
                    RTS      

 .globl isNoise2
isNoise2:                                                  ;Opens   the noise channel. 
                    LDA      _r7                           ; reset bit 5 (open) 
                    ANDA     #0b11011111 
                    STA      _r7 
                    ROL      _ACCA                         ;Is there a new noise value? If yes, gets the noise. 
                    BCS      newNoise2 
                    RTS      

 .globl newNoise2
newNoise2: 
                    lda      ,y+                          ;Gets the noise. 
                    STA      _PLY_AKY_PSGREGISTER6 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_NIS_HARDWAREONLY
_PLY_AKY_RRB_NIS_HARDWAREONLY: 
;Gets the envelope (initially on b2-b4, but currently on b0-b2). It is on 3 bits, must be encoded on 4. Bit 0 must be 0. 
                    ROL      _ACCA 
                    LDA      _ACCA 
                    STA      _ACCB 
                    ANDA     #14 
                    STA      _PLY_AKY_PSGREGISTER13 
                    LDA      _r7                           ;Closes the sound channel. 
                    ORA      #0b00000100                   ; set bit 2 (close) 
                    STA      _r7 
;            ;Hardware volume.
; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff 
                    lda      #0xff 
                    ldb      _volumeRegister 
                    sta      b, u 
                    inc      _volumeRegister               ;Increases the volume register. 
                    inc      _frequencyRegister 
                    inc      _frequencyRegister 
                    LDA      _ACCB                         ;LSB for hardware period? Currently on b6. 
                    ROLA     
                    ROLA     
                    STA      _ACCA 
                    BCC      _PLY_AKY_RRB_NIS_HARDWAREONLY_NOLSB 
                    lda      ,y+ 
                    sta      _PLY_AKY_PSGREGISTER11 
 .globl _PLY_AKY_RRB_NIS_HARDWAREONLY_NOLSB
_PLY_AKY_RRB_NIS_HARDWAREONLY_NOLSB: 
                    ROL      _ACCA                         ;MSB for hardware period? 
                    BCC      _PLY_AKY_RRB_NIS_HARDWAREONLY_NOMSB 
                    lda      ,y+ 
                    sta      _PLY_AKY_PSGREGISTER12 
 .globl _PLY_AKY_RRB_NIS_HARDWAREONLY_NOMSB
_PLY_AKY_RRB_NIS_HARDWAREONLY_NOMSB: 
                    ROL      _ACCA                         ;Noise or retrig? 
                    BCS      _PLY_AKY_RRB_NIS_HARDWARE_SHARED_NOISEORRETRIG_ANDSTOP 
                    RTS      

; -------------------------------------
 .globl _PLY_AKY_RRB_NIS_SOFTWAREANDHARDWARE
_PLY_AKY_RRB_NIS_SOFTWAREANDHARDWARE: 
; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff  ;Hardware volume. 
                    lda      #0xff 
                    ldb      _volumeRegister 
                    sta      b, u 
                    inc      _volumeRegister               ;Increases the volume register. 
                    ROR      _ACCA                         ;LSB of hardware period? 
                    BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERLSBH 
                    lda      ,y+ 
                    sta      _PLY_AKY_PSGREGISTER11 
 .globl _PLY_AKY_RRB_NIS_SAHH_AFTERLSBH
_PLY_AKY_RRB_NIS_SAHH_AFTERLSBH: 
                    ROR      _ACCA                         ;MSB of hardware period? 
                    BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERMSBH 
                    lda      ,y+ 
                    sta      _PLY_AKY_PSGREGISTER12 
 .globl _PLY_AKY_RRB_NIS_SAHH_AFTERMSBH
_PLY_AKY_RRB_NIS_SAHH_AFTERMSBH: 
                    LDA      _ACCA                         ;LSB of software period? 
                    RORA     
                    BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERLSBS 
                    STA      _ACCB 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
; frequency register not increased on purpose. 
                    LDA      _ACCB 
 .globl _PLY_AKY_RRB_NIS_SAHH_AFTERLSBS
_PLY_AKY_RRB_NIS_SAHH_AFTERLSBS: 
                    RORA                                  ;MSB of software period? 
                    BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERMSBS 
                    STA      _ACCB 
                    inc      _frequencyRegister            ;Sends the MSB software frequency. 
; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister 
                    ldb      _frequencyRegister 
                    lda      ,y+ 
                    sta      b, u 
                    dec      _frequencyRegister 
                    LDA      _ACCB 
 .globl _PLY_AKY_RRB_NIS_SAHH_AFTERMSBS
_PLY_AKY_RRB_NIS_SAHH_AFTERMSBS: 
;A bit of loss of CPU, but this has to be done every time! 
                    inc      _frequencyRegister 
                    inc      _frequencyRegister 
                    RORa                                  ;New hardware envelope? 
                    STA      _ACCA 
                    BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERENVELOPE 
                    lda      ,y+ 
                    STA      _PLY_AKY_PSGREGISTER13 
 .globl _PLY_AKY_RRB_NIS_SAHH_AFTERENVELOPE
_PLY_AKY_RRB_NIS_SAHH_AFTERENVELOPE: 
                    LDA      _ACCA                         ;Retrig and/or noise? 
                    RORA     
                    BCS      isNoise3 
                    RTS      

 .globl isNoise3
isNoise3: 
;This code is shared with the HardwareOnly. It reads the Noise/Retrig byte, interprets it and exits. 
 .globl _PLY_AKY_RRB_NIS_HARDWARE_SHARED_NOISEORRETRIG_ANDSTOP
_PLY_AKY_RRB_NIS_HARDWARE_SHARED_NOISEORRETRIG_ANDSTOP: 
                    lda      ,y+                          ;Noise or retrig. Reads the next byte. 
                    RORA                                  ;Retrig? 
                    BCC      _PLY_AKY_RRB_NIS_S_NOR_NORETRIG 
                    ORA      #0b10000000 
                    STA      _PLY_AKY_PSGREGISTER13_RETRIG ;A value to make sure the retrig is performed, yet A can still be use. 
 .globl _PLY_AKY_RRB_NIS_S_NOR_NORETRIG
_PLY_AKY_RRB_NIS_S_NOR_NORETRIG: 
                    RORA                                  ;Noise? If no, nothing more to do. 
                    STA      _ACCA 
                    BCS      isNoise4 
                    RTS      

 .globl isNoise4
isNoise4: 
                    LDA      _r7                           ;Noise. Opens the noise channel. 
                    ANDA     #0b11011111                   ; reset bit 5 (open) 
                    STA      _r7 
                    LDA      _ACCA 
                    RORA                                  ;Is there a new noise value? If yes, gets the noise. 
                    BCS      isNoise5 
                    RTS      

 .globl isNoise5
isNoise5: 
                    STA      _PLY_AKY_PSGREGISTER6         ;Sets the noise. 
                    RTS      

; -------------------------------------
