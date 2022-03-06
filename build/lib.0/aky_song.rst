                              1 ; NOTE!!!
                              2 ; IF USED IN 'C' YOU MIGHT NEED TO SAVE SOME REGS WHEN CALLING
                              3 ; YOUR FUNCTIONS, LIKE REG 'U' and 'Y'!
                              4 ; ALSO CHECK YOUR DP SETTINGS, BELOW DP = D0 is assumed!
                              5  .module arkostracker2_aky_c.pre.s
                              6  .area .text
                              7 
                              8                     .setdp   0xd000,_DATA 
                              9 
                             10 ; changes to Arkos tracker exports
                             11 ; a) Config variables must start the line! (no tabs before the config item names!)
                             12 ;
                             13 ;***************************************************************************
                             14 ; DEFINE SECTION
                             15 ;***************************************************************************
                             16 ; load vectrex bios routine definitions
                             17 ; include line ->                     INCLUDE  "VECTREX.I"                  ; vectrex function includes
                             18 
                             19 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             20 ; this file contains includes for vectrex BIOS functions and variables      ;
                             21 ; it was written by Bruce Tomlin, slighte changed by Malban                 ;
                             22 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             23 
                     0001    24 INCLUDE_I = 1
                             25 
                     C800    26 Vec_Snd_Shadow  =     0xC800   ;Shadow of sound chip registers (15 bytes)
                     C80F    27 Vec_Btn_State   =     0xC80F   ;Current state of all joystick buttons
                     C810    28 Vec_Prev_Btns   =     0xC810   ;Previous state of all joystick buttons
                     C811    29 Vec_Buttons     =     0xC811   ;Current toggle state of all buttons
                     C812    30 Vec_Button_1_1  =     0xC812   ;Current toggle state of stick 1 button 1
                     C813    31 Vec_Button_1_2  =     0xC813   ;Current toggle state of stick 1 button 2
                     C814    32 Vec_Button_1_3  =     0xC814   ;Current toggle state of stick 1 button 3
                     C815    33 Vec_Button_1_4  =     0xC815   ;Current toggle state of stick 1 button 4
                     C816    34 Vec_Button_2_1  =     0xC816   ;Current toggle state of stick 2 button 1
                     C817    35 Vec_Button_2_2  =     0xC817   ;Current toggle state of stick 2 button 2
                     C818    36 Vec_Button_2_3  =     0xC818   ;Current toggle state of stick 2 button 3
                     C819    37 Vec_Button_2_4  =     0xC819   ;Current toggle state of stick 2 button 4
                     C81A    38 Vec_Joy_Resltn  =     0xC81A   ;Joystick A/D resolution (0x80=min 0x00=max)
                     C81B    39 Vec_Joy_1_X     =     0xC81B   ;Joystick 1 left/right
                     C81C    40 Vec_Joy_1_Y     =     0xC81C   ;Joystick 1 up/down
                     C81D    41 Vec_Joy_2_X     =     0xC81D   ;Joystick 2 left/right
                     C81E    42 Vec_Joy_2_Y     =     0xC81E   ;Joystick 2 up/down
                     C81F    43 Vec_Joy_Mux     =     0xC81F   ;Joystick enable/mux flags (4 bytes)
                     C81F    44 Vec_Joy_Mux_1_X =     0xC81F   ;Joystick 1 X enable/mux flag (=1)
                     C820    45 Vec_Joy_Mux_1_Y =     0xC820   ;Joystick 1 Y enable/mux flag (=3)
                     C821    46 Vec_Joy_Mux_2_X =     0xC821   ;Joystick 2 X enable/mux flag (=5)
                     C822    47 Vec_Joy_Mux_2_Y =     0xC822   ;Joystick 2 Y enable/mux flag (=7)
                     C823    48 Vec_Misc_Count  =     0xC823   ;Misc counter/flag byte, zero when not in use
                     C824    49 Vec_0Ref_Enable =     0xC824   ;Check0Ref enable flag
                     C825    50 Vec_Loop_Count  =     0xC825   ;Loop counter word (incremented in Wait_Recal)
                     C827    51 Vec_Brightness  =     0xC827   ;Default brightness
                     C828    52 Vec_Dot_Dwell   =     0xC828   ;Dot dwell time?
                     C829    53 Vec_Pattern     =     0xC829   ;Dot pattern (bits)
                     C82A    54 Vec_Text_HW     =     0xC82A   ;Default text height and width
                     C82A    55 Vec_Text_Height =     0xC82A   ;Default text height
                     C82B    56 Vec_Text_Width  =     0xC82B   ;Default text width
                     C82C    57 Vec_Str_Ptr     =     0xC82C   ;Temporary string pointer for Print_Str
                     C82E    58 Vec_Counters    =     0xC82E   ;Six bytes of counters
                     C82E    59 Vec_Counter_1   =     0xC82E   ;First  counter byte
                     C82F    60 Vec_Counter_2   =     0xC82F   ;Second counter byte
                     C830    61 Vec_Counter_3   =     0xC830   ;Third  counter byte
                     C831    62 Vec_Counter_4   =     0xC831   ;Fourth counter byte
                     C832    63 Vec_Counter_5   =     0xC832   ;Fifth  counter byte
                     C833    64 Vec_Counter_6   =     0xC833   ;Sixth  counter byte
                     C834    65 Vec_RiseRun_Tmp =     0xC834   ;Temp storage word for rise/run
                     C836    66 Vec_Angle       =     0xC836   ;Angle for rise/run and rotation calculations
                     C837    67 Vec_Run_Index   =     0xC837   ;Index pair for run
                             68 ;                       0xC839   ;Pointer to copyright string during startup
                     C839    69 Vec_Rise_Index  =     0xC839   ;Index pair for rise
                             70 ;                       0xC83B   ;High score cold-start flag (=0 if valid)
                     C83B    71 Vec_RiseRun_Len =     0xC83B   ;length for rise/run
                             72 ;                       0xC83C   ;temp byte
                     C83D    73 Vec_Rfrsh       =     0xC83D   ;Refresh time (divided by 1.5MHz)
                     C83D    74 Vec_Rfrsh_lo    =     0xC83D   ;Refresh time low byte
                     C83E    75 Vec_Rfrsh_hi    =     0xC83E   ;Refresh time high byte
                     C83F    76 Vec_Music_Work  =     0xC83F   ;Music work buffer (14 bytes, backwards?)
                     C842    77 Vec_Music_Wk_A  =     0xC842   ;        register 10
                             78 ;                       0xC843   ;        register 9
                             79 ;                       0xC844   ;        register 8
                     C845    80 Vec_Music_Wk_7  =     0xC845   ;        register 7
                     C846    81 Vec_Music_Wk_6  =     0xC846   ;        register 6
                     C847    82 Vec_Music_Wk_5  =     0xC847   ;        register 5
                             83 ;                       0xC848   ;        register 4
                             84 ;                       0xC849   ;        register 3
                             85 ;                       0xC84A   ;        register 2
                     C84B    86 Vec_Music_Wk_1  =     0xC84B   ;        register 1
                             87 ;                       0xC84C   ;        register 0
                     C84D    88 Vec_Freq_Table  =     0xC84D   ;Pointer to note-to-frequency table (normally 0xFC8D)
                     C84F    89 Vec_Max_Players =     0xC84F   ;Maximum number of players for Select_Game
                     C850    90 Vec_Max_Games   =     0xC850   ;Maximum number of games for Select_Game
                     C84F    91 Vec_ADSR_Table  =     0xC84F   ;Storage for first music header word (ADSR table)
                     C851    92 Vec_Twang_Table =     0xC851   ;Storage for second music header word ('twang' table)
                     C853    93 Vec_Music_Ptr   =     0xC853   ;Music data pointer
                     C853    94 Vec_Expl_ChanA  =     0xC853   ;Used by Explosion_Snd - bit for first channel used?
                     C854    95 Vec_Expl_Chans  =     0xC854   ;Used by Explosion_Snd - bits for all channels used?
                     C855    96 Vec_Music_Chan  =     0xC855   ;Current sound channel number for Init_Music
                     C856    97 Vec_Music_Flag  =     0xC856   ;Music active flag (0x00=off 0x01=start 0x80=on)
                     C857    98 Vec_Duration    =     0xC857   ;Duration counter for Init_Music
                     C858    99 Vec_Music_Twang =     0xC858   ;3 word 'twang' table used by Init_Music
                     C858   100 Vec_Expl_1      =     0xC858   ;Four bytes copied from Explosion_Snd's U-reg parameters
                     C859   101 Vec_Expl_2      =     0xC859   ;
                     C85A   102 Vec_Expl_3      =     0xC85A   ;
                     C85B   103 Vec_Expl_4      =     0xC85B   ;
                     C85C   104 Vec_Expl_Chan   =     0xC85C   ;Used by Explosion_Snd - channel number in use?
                     C85D   105 Vec_Expl_ChanB  =     0xC85D   ;Used by Explosion_Snd - bit for second channel used?
                     C85E   106 Vec_ADSR_Timers =     0xC85E   ;ADSR timers for each sound channel (3 bytes)
                     C861   107 Vec_Music_Freq  =     0xC861   ;Storage for base frequency of each channel (3 words)
                            108 ;                       0xC85E   ;Scratch 'score' storage for Display_Option (7 bytes)
                     C867   109 Vec_Expl_Flag   =     0xC867   ;Explosion_Snd initialization flag?
                            110 ;               0xC868...0xC876   ;Unused?
                     C877   111 Vec_Expl_Timer  =     0xC877   ;Used by Explosion_Snd
                            112 ;                       0xC878   ;Unused?
                     C879   113 Vec_Num_Players =     0xC879   ;Number of players selected in Select_Game
                     C87A   114 Vec_Num_Game    =     0xC87A   ;Game number selected in Select_Game
                     C87B   115 Vec_Seed_Ptr    =     0xC87B   ;Pointer to 3-byte random number seed (=0xC87D)
                     C87D   116 Vec_Random_Seed =     0xC87D   ;Default 3-byte random number seed
                            117                                 ;
                            118 ;    0xC880 - 0xCBEA is user RAM  ;
                            119                                 ;
                     CBEA   120 Vec_Default_Stk =     0xCBEA   ;Default top-of-stack
                     CBEB   121 Vec_High_Score  =     0xCBEB   ;High score storage (7 bytes)
                     CBF2   122 Vec_SWI3_Vector =     0xCBF2   ;SWI2/SWI3 interrupt vector (3 bytes)
                     CBF2   123 Vec_SWI2_Vector =     0xCBF2   ;SWI2/SWI3 interrupt vector (3 bytes)
                     CBF5   124 Vec_FIRQ_Vector =     0xCBF5   ;FIRQ interrupt vector (3 bytes)
                     CBF8   125 Vec_IRQ_Vector  =     0xCBF8   ;IRQ interrupt vector (3 bytes)
                     CBFB   126 Vec_SWI_Vector  =     0xCBFB   ;SWI/NMI interrupt vector (3 bytes)
                     CBFB   127 Vec_NMI_Vector  =     0xCBFB   ;SWI/NMI interrupt vector (3 bytes)
                     CBFE   128 Vec_Cold_Flag   =     0xCBFE   ;Cold start flag (warm start if = 0x7321)
                            129                                 ;
                     D000   130 VIA_port_b      =     0xD000   ;VIA port B data I/O register
                            131 ;       0 sample/hold (0=enable  mux 1=disable mux)
                            132 ;       1 mux sel 0
                            133 ;       2 mux sel 1
                            134 ;       3 sound BC1
                            135 ;       4 sound BDIR
                            136 ;       5 comparator input
                            137 ;       6 external device (slot pin 35) initialized to input
                            138 ;       7 /RAMP
                     D001   139 VIA_port_a      =     0xD001   ;VIA port A data I/O register (handshaking)
                     D002   140 VIA_DDR_b       =     0xD002   ;VIA port B data direction register (0=input 1=output)
                     D003   141 VIA_DDR_a       =     0xD003   ;VIA port A data direction register (0=input 1=output)
                     D004   142 VIA_t1_cnt_lo   =     0xD004   ;VIA timer 1 count register lo (scale factor)
                     D005   143 VIA_t1_cnt_hi   =     0xD005   ;VIA timer 1 count register hi
                     D006   144 VIA_t1_lch_lo   =     0xD006   ;VIA timer 1 latch register lo
                     D007   145 VIA_t1_lch_hi   =     0xD007   ;VIA timer 1 latch register hi
                     D008   146 VIA_t2_lo       =     0xD008   ;VIA timer 2 count/latch register lo (refresh)
                     D009   147 VIA_t2_hi       =     0xD009   ;VIA timer 2 count/latch register hi
                     D00A   148 VIA_shift_reg   =     0xD00A   ;VIA shift register
                     D00B   149 VIA_aux_cntl    =     0xD00B   ;VIA auxiliary control register
                            150 ;       0 PA latch enable
                            151 ;       1 PB latch enable
                            152 ;       2 \                     110=output to CB2 under control of phase 2 clock
                            153 ;       3  > shift register control     (110 is the only mode used by the Vectrex ROM)
                            154 ;       4 /
                            155 ;       5 0=t2 one shot                 1=t2 free running
                            156 ;       6 0=t1 one shot                 1=t1 free running
                            157 ;       7 0=t1 disable PB7 output       1=t1 enable PB7 output
                     D00C   158 VIA_cntl        =     0xD00C   ;VIA control register
                            159 ;       0 CA1 control     CA1 -> SW7    0=IRQ on low 1=IRQ on high
                            160 ;       1 \
                            161 ;       2  > CA2 control  CA2 -> /ZERO  110=low 111=high
                            162 ;       3 /
                            163 ;       4 CB1 control     CB1 -> NC     0=IRQ on low 1=IRQ on high
                            164 ;       5 \
                            165 ;       6  > CB2 control  CB2 -> /BLANK 110=low 111=high
                            166 ;       7 /
                     D00D   167 VIA_int_flags   =     0xD00D   ;VIA interrupt flags register
                            168 ;               bit                             cleared by
                            169 ;       0 CA2 interrupt flag            reading or writing port A I/O
                            170 ;       1 CA1 interrupt flag            reading or writing port A I/O
                            171 ;       2 shift register interrupt flag reading or writing shift register
                            172 ;       3 CB2 interrupt flag            reading or writing port B I/O
                            173 ;       4 CB1 interrupt flag            reading or writing port A I/O
                            174 ;       5 timer 2 interrupt flag        read t2 low or write t2 high
                            175 ;       6 timer 1 interrupt flag        read t1 count low or write t1 high
                            176 ;       7 IRQ status flag               write logic 0 to IER or IFR bit
                     D00E   177 VIA_int_enable  =     0xD00E   ;VIA interrupt enable register
                            178 ;       0 CA2 interrupt enable
                            179 ;       1 CA1 interrupt enable
                            180 ;       2 shift register interrupt enable
                            181 ;       3 CB2 interrupt enable
                            182 ;       4 CB1 interrupt enable
                            183 ;       5 timer 2 interrupt enable
                            184 ;       6 timer 1 interrupt enable
                            185 ;       7 IER set/clear control
                     D00F   186 VIA_port_a_nohs =     0xD00F   ;VIA port A data I/O register (no handshaking)
                            187 
                     F000   188 Cold_Start      =     0xF000   ;
                     F06C   189 Warm_Start      =     0xF06C   ;
                     F14C   190 Init_VIA        =     0xF14C   ;
                     F164   191 Init_OS_RAM     =     0xF164   ;
                     F18B   192 Init_OS         =     0xF18B   ;
                     F192   193 Wait_Recal      =     0xF192   ;
                     F1A2   194 Set_Refresh     =     0xF1A2   ;
                     F1AA   195 DP_to_D0        =     0xF1AA   ;
                     F1AF   196 DP_to_C8        =     0xF1AF   ;
                     F1B4   197 Read_Btns_Mask  =     0xF1B4   ;
                     F1BA   198 Read_Btns       =     0xF1BA   ;
                     F1F5   199 Joy_Analog      =     0xF1F5   ;
                     F1F8   200 Joy_Digital     =     0xF1F8   ;
                     F256   201 Sound_Byte      =     0xF256   ;
                     F259   202 Sound_Byte_x    =     0xF259   ;
                     F25B   203 Sound_Byte_raw  =     0xF25B   ;
                     F272   204 Clear_Sound     =     0xF272   ;
                     F27D   205 Sound_Bytes     =     0xF27D   ;
                     F284   206 Sound_Bytes_x   =     0xF284   ;
                     F289   207 Do_Sound        =     0xF289   ;
                     F28C   208 Do_Sound_x      =     0xF28C   ;
                     F29D   209 Intensity_1F    =     0xF29D   ;
                     F2A1   210 Intensity_3F    =     0xF2A1   ;
                     F2A5   211 Intensity_5F    =     0xF2A5   ;
                     F2A9   212 Intensity_7F    =     0xF2A9   ;
                     F2AB   213 Intensity_a     =     0xF2AB   ;
                     F2BE   214 Dot_ix_b        =     0xF2BE   ;
                     F2C1   215 Dot_ix          =     0xF2C1   ;
                     F2C3   216 Dot_d           =     0xF2C3   ;
                     F2C5   217 Dot_here        =     0xF2C5   ;
                     F2D5   218 Dot_List        =     0xF2D5   ;
                     F2DE   219 Dot_List_Reset  =     0xF2DE   ;
                     F2E6   220 Recalibrate     =     0xF2E6   ;
                     F2F2   221 Moveto_x_7F     =     0xF2F2   ;
                     F2FC   222 Moveto_d_7F     =     0xF2FC   ;
                     F308   223 Moveto_ix_FF    =     0xF308   ;
                     F30C   224 Moveto_ix_7F    =     0xF30C   ;
                     F30E   225 Moveto_ix_b     =     0xF30E   ;
                     F310   226 Moveto_ix       =     0xF310   ;
                     F312   227 Moveto_d        =     0xF312   ;
                     F34A   228 Reset0Ref_D0    =     0xF34A   ;
                     F34F   229 Check0Ref       =     0xF34F   ;
                     F354   230 Reset0Ref       =     0xF354   ;
                     F35B   231 Reset_Pen       =     0xF35B   ;
                     F36B   232 Reset0Int       =     0xF36B   ;
                     F373   233 Print_Str_hwyx  =     0xF373   ;
                     F378   234 Print_Str_yx    =     0xF378   ;
                     F37A   235 Print_Str_d     =     0xF37A   ;
                     F385   236 Print_List_hw   =     0xF385   ;
                     F38A   237 Print_List      =     0xF38A   ;
                     F38C   238 Print_List_chk  =     0xF38C   ;
                     F391   239 Print_Ships_x   =     0xF391   ;
                     F393   240 Print_Ships     =     0xF393   ;
                     F3AD   241 Mov_Draw_VLc_a  =     0xF3AD   ;count y x y x ...
                     F3B1   242 Mov_Draw_VL_b   =     0xF3B1   ;y x y x ...
                     F3B5   243 Mov_Draw_VLcs   =     0xF3B5   ;count scale y x y x ...
                     F3B7   244 Mov_Draw_VL_ab  =     0xF3B7   ;y x y x ...
                     F3B9   245 Mov_Draw_VL_a   =     0xF3B9   ;y x y x ...
                     F3BC   246 Mov_Draw_VL     =     0xF3BC   ;y x y x ...
                     F3BE   247 Mov_Draw_VL_d   =     0xF3BE   ;y x y x ...
                     F3CE   248 Draw_VLc        =     0xF3CE   ;count y x y x ...
                     F3D2   249 Draw_VL_b       =     0xF3D2   ;y x y x ...
                     F3D6   250 Draw_VLcs       =     0xF3D6   ;count scale y x y x ...
                     F3D8   251 Draw_VL_ab      =     0xF3D8   ;y x y x ...
                     F3DA   252 Draw_VL_a       =     0xF3DA   ;y x y x ...
                     F3DD   253 Draw_VL         =     0xF3DD   ;y x y x ...
                     F3DF   254 Draw_Line_d     =     0xF3DF   ;y x y x ...
                     F404   255 Draw_VLp_FF     =     0xF404   ;pattern y x pattern y x ... 0x01
                     F408   256 Draw_VLp_7F     =     0xF408   ;pattern y x pattern y x ... 0x01
                     F40C   257 Draw_VLp_scale  =     0xF40C   ;scale pattern y x pattern y x ... 0x01
                     F40E   258 Draw_VLp_b      =     0xF40E   ;pattern y x pattern y x ... 0x01
                     F410   259 Draw_VLp        =     0xF410   ;pattern y x pattern y x ... 0x01
                     F434   260 Draw_Pat_VL_a   =     0xF434   ;y x y x ...
                     F437   261 Draw_Pat_VL     =     0xF437   ;y x y x ...
                     F439   262 Draw_Pat_VL_d   =     0xF439   ;y x y x ...
                     F46E   263 Draw_VL_mode    =     0xF46E   ;mode y x mode y x ... 0x01
                     F495   264 Print_Str       =     0xF495   ;
                     F511   265 Random_3        =     0xF511   ;
                     F517   266 Random          =     0xF517   ;
                     F533   267 Init_Music_Buf  =     0xF533   ;
                     F53F   268 Clear_x_b       =     0xF53F   ;
                     F542   269 Clear_C8_RAM    =     0xF542   ;never used by GCE carts?
                     F545   270 Clear_x_256     =     0xF545   ;
                     F548   271 Clear_x_d       =     0xF548   ;
                     F550   272 Clear_x_b_80    =     0xF550   ;
                     F552   273 Clear_x_b_a     =     0xF552   ;
                     F55A   274 Dec_3_Counters  =     0xF55A   ;
                     F55E   275 Dec_6_Counters  =     0xF55E   ;
                     F563   276 Dec_Counters    =     0xF563   ;
                     F56D   277 Delay_3         =     0xF56D   ;30 cycles
                     F571   278 Delay_2         =     0xF571   ;25 cycles
                     F575   279 Delay_1         =     0xF575   ;20 cycles
                     F579   280 Delay_0         =     0xF579   ;12 cycles
                     F57A   281 Delay_b         =     0xF57A   ;5*B + 10 cycles
                     F57D   282 Delay_RTS       =     0xF57D   ;5 cycles
                     F57E   283 Bitmask_a       =     0xF57E   ;
                     F584   284 Abs_a_b         =     0xF584   ;
                     F58B   285 Abs_b           =     0xF58B   ;
                     F593   286 Rise_Run_Angle  =     0xF593   ;
                     F5D9   287 Get_Rise_Idx    =     0xF5D9   ;
                     F5DB   288 Get_Run_Idx     =     0xF5DB   ;
                     F5EF   289 Get_Rise_Run    =     0xF5EF   ;
                     F5FF   290 Rise_Run_X      =     0xF5FF   ;
                     F601   291 Rise_Run_Y      =     0xF601   ;
                     F603   292 Rise_Run_Len    =     0xF603   ;
                            293 
                     F610   294 Rot_VL_ab       =     0xF610   ;
                     F616   295 Rot_VL          =     0xF616   ;
                     F61F   296 Rot_VL_Mode   =     0xF61F   ;
                     F62B   297 Rot_VL_M_dft     =     0xF62B   ;
                            298 ;Rot_VL_dft      EQU     0xF637   ;
                            299 
                            300 
                            301 ;Rot_VL_ab       EQU     0xF610   ;
                            302 ;Rot_VL          EQU     0xF616   ;
                            303 ;Rot_VL_Mode_a   EQU     0xF61F   ;
                            304 ;Rot_VL_Mode     EQU     0xF62B   ;
                            305 ;Rot_VL_dft      EQU     0xF637   ;
                            306 
                     F65B   307 Xform_Run_a     =     0xF65B   ;
                     F65D   308 Xform_Run       =     0xF65D   ;
                     F661   309 Xform_Rise_a    =     0xF661   ;
                     F663   310 Xform_Rise      =     0xF663   ;
                     F67F   311 Move_Mem_a_1    =     0xF67F   ;
                     F683   312 Move_Mem_a      =     0xF683   ;
                     F687   313 Init_Music_chk  =     0xF687   ;
                     F68D   314 Init_Music      =     0xF68D   ;
                     F692   315 Init_Music_x    =     0xF692   ;
                     F7A9   316 Select_Game     =     0xF7A9   ;
                     F84F   317 Clear_Score     =     0xF84F   ;
                     F85E   318 Add_Score_a     =     0xF85E   ;
                     F87C   319 Add_Score_d     =     0xF87C   ;
                     F8B7   320 Strip_Zeros     =     0xF8B7   ;
                     F8C7   321 Compare_Score   =     0xF8C7   ;
                     F8D8   322 New_High_Score  =     0xF8D8   ;
                     F8E5   323 Obj_Will_Hit_u  =     0xF8E5   ;
                     F8F3   324 Obj_Will_Hit    =     0xF8F3   ;
                     F8FF   325 Obj_Hit         =     0xF8FF   ;
                     F92E   326 Explosion_Snd   =     0xF92E   ;
                     FF9F   327 Draw_Grid_VL    =     0xFF9F   ;
                            328                                 ;
                     FD0D   329 music1  = 0xFD0D               ;
                     FD1D   330 music2  = 0xFD1D               ;
                     FD81   331 music3  = 0xFD81               ;
                     FDD3   332 music4  = 0xFDD3               ;
                     FE38   333 music5  = 0xFE38               ;
                     FE76   334 music6  = 0xFE76               ;
                     FEC6   335 music7  = 0xFEC6               ;
                     FEF8   336 music8  = 0xFEF8               ;
                     FF26   337 music9  = 0xFF26               ;
                     FF44   338 musica  = 0xFF44               ;
                     FF62   339 musicb  = 0xFF62               ;
                     FF7A   340 musicc  = 0xFF7A               ;
                     FF8F   341 musicd  = 0xFF8F               ;
                     F9F4   342 Char_Table = 0xF9F4
                     FBD4   343 Char_Table_End = 0xFBD4
                            344 
                            345 ; include line ->                     INCLUDE  "macro.i"                    ; vectrex function includes
                            346 ; this file is part of Release, written by Malban in 2017
                            347 ;
                            348 ;***************************************************************************
                            349 ;***************************************************************************
                            350 ;***************************************************************************
                            351 ;***************************************************************************
                            352 ;***************************************************************************
                            353 ;*************************************************************************** 
                            354 ;***************************************************************************
                            355 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            356 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            357 ; macro D = D *2
                            358 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            359 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            360 ; macro D = D /2
                            361 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            362 ;
                            363 ; "random" Galois LFSR
                            364 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            365 ;***************************************************************************
                            366 ;***************************************************************************
                            367 ; expect DP = d0
                            368 ; playes one piece of music, that is given as param
                            369 ;***************************************************************************
                            370 ;***************************************************************************
                            371 ; uses x and d
                            372 ; prints the numbers in a and b at a location given
                            373 ; prints in hex
                            374 ; need 6 bytes RAM starting with tmp_debug
                            375 ;***************************************************************************
                            376 ;***************************************************************************
                            377 ;***************************************************************************
                            378 ;***************************************************************************
                            379 ;***************************************************************************
                            380 ;***************************************************************************
                            381 ;***************************************************************************
                            382 ;***************************************************************************
                            383 ; reg u can be used!
                            384 ;***************************************************************************
                            385 
                            386 ;***************************************************************************
                            387 ;***************************************************************************
                            388 ;***************************************************************************
                            389 ;***************************************************************************
                            390 ;***************************************************************************
                            391 ;***************************************************************************
                            392 ;***************************************************************************
                            393 ;***************************************************************************
                            394 ; ￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤￃﾤ
                     000A   395 UNIVERSAL_PLAYER_SHOT_RADIUS  =  10 
                            396 ;***************************************************************************
                            397 ;***************************************************************************
                            398 ;
                            399 ;***************************************************************************
                     0006   400 SCOOP_INTERVALL_ADD  =       6                            ;7 
                     000A   401 CORRECTION          =        10 
                            402 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            403 ; draws the fighter (anim) and all that goes with it (armor, shield or scoop)
                            404 ; only one addition at any given time at once
                            405 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            406 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            407 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            408 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            409 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            410 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            411 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            412 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            413 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            414 
                            415 
                            416 
                            417 
                            418 ;-------
                            419 ;-------
                            420 ;-------
                            421 
                            422 ;-------
                            423 ;-------
                            424 ;-------
                            425 ;***************************************************************************
                            426 ; CODE SECTION
                            427 ;***************************************************************************
                            428 ; here the cartridge program starts off
                            429  .globl _playSong
   0098                     430 _playSong:
   0098 BD 10 E7      [ 8]  431                     jsr      _PLY_AKY_PLAY 
                            432 
                            433  .globl doymsound100
   009B                     434 doymsound100: 
                            435  .globl do_ym_sound2
   009B                     436 do_ym_sound2:                                              ;#isfunction  
                            437 ; Warning - direct line found!
                            438 ;                    direct   0xd0 
                            439  .globl copySoundRegs
   009B                     440 copySoundRegs: 
                            441 ; copy all shadows
   009B 86 0D         [ 2]  442                     lda      #13                          ; number of regs to copy (+1) 
   009D 8E C8 3F      [ 3]  443                     ldx      #Vec_Music_Work              ; music players write here 
   00A0 CE C8 00      [ 3]  444                     ldu      #Vec_Snd_Shadow              ; shadow of actual PSG 
                            445  .globl next_reg_dsy
   00A3                     446 next_reg_dsy: 
   00A3 E6 86         [ 5]  447                     ldb      a, x 
   00A5 E1 C6         [ 5]  448                     cmpb     a, u 
   00A7 27 18         [ 3]  449                     beq      inc_reg_dsy 
                            450 ; no put to psg
   00A9 E7 C6         [ 5]  451                     stb      a,u                          ; ensure shadow has copy 
                            452 ; a = register
                            453 ; b = value
   00AB 97 01         [ 4]  454                     STA      *VIA_port_a                  ;store register select byte 
   00AD 86 19         [ 2]  455                     LDA      #0x19                         ;sound BDIR on, BC1 on, mux off _ LATCH 
   00AF 97 00         [ 4]  456                     STA      *VIA_port_b 
   00B1 86 01         [ 2]  457                     LDA      #0x01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
   00B3 97 00         [ 4]  458                     STA      *VIA_port_b 
   00B5 96 01         [ 4]  459                     LDA      *VIA_port_a                  ;read sound chip status (?) 
   00B7 D7 01         [ 4]  460                     STB      *VIA_port_a                  ;store data byte 
   00B9 C6 11         [ 2]  461                     LDB      #0x11                         ;sound BDIR on, BC1 off, mux off - WRITE 
   00BB D7 00         [ 4]  462                     STB      *VIA_port_b 
   00BD C6 01         [ 2]  463                     LDB      #0x01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
   00BF D7 00         [ 4]  464                     STB      *VIA_port_b 
                            465  .globl inc_reg_dsy
   00C1                     466 inc_reg_dsy: 
   00C1 4A            [ 2]  467                     deca     
   00C2 2A DF         [ 3]  468                     bpl      next_reg_dsy 
                            469  .globl doneSound_2
   00C4                     470 doneSound_2: 
   00C4 39            [ 5]  471                     rts      
                            472 ;***************************************************************************
                            473 ; DATA SECTION
                            474 ;***************************************************************************
                            475 
                            476 ; include line ->                     include  "Videopac_aky.asm"
                            477 ; Song No more Videopac, in AKY version 1.0, generated by Arkos Tracker 2.
                            478 
                            479  .globl Videopac_Subsong0
   00C5                     480 Videopac_Subsong0:
                            481  .globl Videopac_Subsong0DisarkGenerateExternalLabel
   00C5                     482 Videopac_Subsong0DisarkGenerateExternalLabel:
                            483 
                            484 ; Header
                            485  .globl _Videopac_Subsong0DisarkByteRegionStart0
   00C5                     486 _Videopac_Subsong0DisarkByteRegionStart0:
   00C5 80                  487 	.byte 128	; Format version: 0 and endianness: little-endian.
   00C6 03                  488 	.byte 3	; How many channels are encoded.
                            489 ; Frequency of the PSG index 0: 1000000Hz.
   00C7 40 42 0F 00         490 	.byte 64, 66, 15, 0
                            491  .globl Videopac_Subsong0DisarkByteRegionEnd0
   00CB                     492 Videopac_Subsong0DisarkByteRegionEnd0:
                            493 
                            494  .globl Videopac_Subsong0_Linker
   00CB                     495 Videopac_Subsong0_Linker:
                            496  .globl Videopac_Subsong0DisarkPointerRegionStart1
   00CB                     497 Videopac_Subsong0DisarkPointerRegionStart1:
                            498 ; Pattern 0
                            499  .globl Videopac_Subsong0_LinkerLoop
   00CB                     500 Videopac_Subsong0_LinkerLoop:	; Loops here.
                            501  .globl _Videopac_Subsong0DisarkWordForceNonReference2
   00CB                     502 _Videopac_Subsong0DisarkWordForceNonReference2:
   00CB 01 80               503 	.word 384	; Duration in frames.
   00CD 01 8F               504 	.word Videopac_Subsong0_Track_0
   00CF 01 AA               505 	.word Videopac_Subsong0_Track_1
   00D1 01 C5               506 	.word Videopac_Subsong0_Track_2
                            507 
                            508 ; Pattern 1
                            509  .globl _Videopac_Subsong0DisarkWordForceNonReference3
   00D3                     510 _Videopac_Subsong0DisarkWordForceNonReference3:
   00D3 01 80               511 	.word 384	; Duration in frames.
   00D5 02 2E               512 	.word Videopac_Subsong0_Track_15
   00D7 02 49               513 	.word Videopac_Subsong0_Track_16
   00D9 02 64               514 	.word Videopac_Subsong0_Track_17
                            515 
                            516 ; Pattern 2
                            517  .globl _Videopac_Subsong0DisarkWordForceNonReference4
   00DB                     518 _Videopac_Subsong0DisarkWordForceNonReference4:
   00DB 01 80               519 	.word 384	; Duration in frames.
   00DD 02 7F               520 	.word Videopac_Subsong0_Track_18
   00DF 02 9A               521 	.word Videopac_Subsong0_Track_19
   00E1 02 B5               522 	.word Videopac_Subsong0_Track_20
                            523 
                            524 ; Pattern 3
                            525  .globl _Videopac_Subsong0DisarkWordForceNonReference5
   00E3                     526 _Videopac_Subsong0DisarkWordForceNonReference5:
   00E3 01 80               527 	.word 384	; Duration in frames.
   00E5 02 D0               528 	.word Videopac_Subsong0_Track_21
   00E7 02 EB               529 	.word Videopac_Subsong0_Track_22
   00E9 03 06               530 	.word Videopac_Subsong0_Track_23
                            531 
                            532 ; Pattern 4
                            533  .globl _Videopac_Subsong0DisarkWordForceNonReference6
   00EB                     534 _Videopac_Subsong0DisarkWordForceNonReference6:
   00EB 01 80               535 	.word 384	; Duration in frames.
   00ED 01 DD               536 	.word Videopac_Subsong0_Track_12
   00EF 01 F8               537 	.word Videopac_Subsong0_Track_13
   00F1 02 13               538 	.word Videopac_Subsong0_Track_14
                            539 
                            540 ; Pattern 5
                            541  .globl _Videopac_Subsong0DisarkWordForceNonReference7
   00F3                     542 _Videopac_Subsong0DisarkWordForceNonReference7:
   00F3 01 80               543 	.word 384	; Duration in frames.
   00F5 02 2E               544 	.word Videopac_Subsong0_Track_15
   00F7 02 49               545 	.word Videopac_Subsong0_Track_16
   00F9 02 64               546 	.word Videopac_Subsong0_Track_17
                            547 
                            548 ; Pattern 6
                            549  .globl _Videopac_Subsong0DisarkWordForceNonReference8
   00FB                     550 _Videopac_Subsong0DisarkWordForceNonReference8:
   00FB 01 80               551 	.word 384	; Duration in frames.
   00FD 02 7F               552 	.word Videopac_Subsong0_Track_18
   00FF 02 9A               553 	.word Videopac_Subsong0_Track_19
   0101 02 B5               554 	.word Videopac_Subsong0_Track_20
                            555 
                            556 ; Pattern 7
                            557  .globl _Videopac_Subsong0DisarkWordForceNonReference9
   0103                     558 _Videopac_Subsong0DisarkWordForceNonReference9:
   0103 01 80               559 	.word 384	; Duration in frames.
   0105 02 D0               560 	.word Videopac_Subsong0_Track_21
   0107 02 EB               561 	.word Videopac_Subsong0_Track_22
   0109 03 06               562 	.word Videopac_Subsong0_Track_23
                            563 
                            564 ; Pattern 8
                            565  .globl _Videopac_Subsong0DisarkWordForceNonReference10
   010B                     566 _Videopac_Subsong0DisarkWordForceNonReference10:
   010B 01 80               567 	.word 384	; Duration in frames.
   010D 03 45               568 	.word Videopac_Subsong0_Track_36
   010F 03 BA               569 	.word Videopac_Subsong0_Track_40
   0111 03 21               570 	.word Videopac_Subsong0_Track_26
                            571 
                            572 ; Pattern 9
                            573  .globl _Videopac_Subsong0DisarkWordForceNonReference11
   0113                     574 _Videopac_Subsong0DisarkWordForceNonReference11:
   0113 01 80               575 	.word 384	; Duration in frames.
   0115 03 93               576 	.word Videopac_Subsong0_Track_39
   0117 03 BA               577 	.word Videopac_Subsong0_Track_40
   0119 03 DE               578 	.word Videopac_Subsong0_Track_41
                            579 
                            580 ; Pattern 10
                            581  .globl _Videopac_Subsong0DisarkWordForceNonReference12
   011B                     582 _Videopac_Subsong0DisarkWordForceNonReference12:
   011B 01 80               583 	.word 384	; Duration in frames.
   011D 04 05               584 	.word Videopac_Subsong0_Track_42
   011F 04 7A               585 	.word Videopac_Subsong0_Track_46
   0121 04 2C               586 	.word Videopac_Subsong0_Track_44
                            587 
                            588 ; Pattern 11
                            589  .globl _Videopac_Subsong0DisarkWordForceNonReference13
   0123                     590 _Videopac_Subsong0DisarkWordForceNonReference13:
   0123 01 80               591 	.word 384	; Duration in frames.
   0125 04 53               592 	.word Videopac_Subsong0_Track_45
   0127 04 7A               593 	.word Videopac_Subsong0_Track_46
   0129 04 9E               594 	.word Videopac_Subsong0_Track_47
                            595 
                            596 ; Pattern 12
                            597  .globl _Videopac_Subsong0DisarkWordForceNonReference14
   012B                     598 _Videopac_Subsong0DisarkWordForceNonReference14:
   012B 01 80               599 	.word 384	; Duration in frames.
   012D 03 45               600 	.word Videopac_Subsong0_Track_36
   012F 03 BA               601 	.word Videopac_Subsong0_Track_40
   0131 03 6C               602 	.word Videopac_Subsong0_Track_38
                            603 
                            604 ; Pattern 13
                            605  .globl _Videopac_Subsong0DisarkWordForceNonReference15
   0133                     606 _Videopac_Subsong0DisarkWordForceNonReference15:
   0133 01 80               607 	.word 384	; Duration in frames.
   0135 03 93               608 	.word Videopac_Subsong0_Track_39
   0137 03 BA               609 	.word Videopac_Subsong0_Track_40
   0139 03 DE               610 	.word Videopac_Subsong0_Track_41
                            611 
                            612 ; Pattern 14
                            613  .globl _Videopac_Subsong0DisarkWordForceNonReference16
   013B                     614 _Videopac_Subsong0DisarkWordForceNonReference16:
   013B 01 80               615 	.word 384	; Duration in frames.
   013D 04 05               616 	.word Videopac_Subsong0_Track_42
   013F 04 7A               617 	.word Videopac_Subsong0_Track_46
   0141 04 2C               618 	.word Videopac_Subsong0_Track_44
                            619 
                            620 ; Pattern 15
                            621  .globl _Videopac_Subsong0DisarkWordForceNonReference17
   0143                     622 _Videopac_Subsong0DisarkWordForceNonReference17:
   0143 01 80               623 	.word 384	; Duration in frames.
   0145 04 53               624 	.word Videopac_Subsong0_Track_45
   0147 04 7A               625 	.word Videopac_Subsong0_Track_46
   0149 04 9E               626 	.word Videopac_Subsong0_Track_47
                            627 
                            628 ; Pattern 16
                            629  .globl _Videopac_Subsong0DisarkWordForceNonReference18
   014B                     630 _Videopac_Subsong0DisarkWordForceNonReference18:
   014B 01 80               631 	.word 384	; Duration in frames.
   014D 04 F8               632 	.word Videopac_Subsong0_Track_60
   014F 05 91               633 	.word Videopac_Subsong0_Track_64
   0151 04 C5               634 	.word Videopac_Subsong0_Track_50
                            635 
                            636 ; Pattern 17
                            637  .globl _Videopac_Subsong0DisarkWordForceNonReference19
   0153                     638 _Videopac_Subsong0DisarkWordForceNonReference19:
   0153 01 80               639 	.word 384	; Duration in frames.
   0155 05 5E               640 	.word Videopac_Subsong0_Track_63
   0157 05 91               641 	.word Videopac_Subsong0_Track_64
   0159 05 C1               642 	.word Videopac_Subsong0_Track_65
                            643 
                            644 ; Pattern 18
                            645  .globl _Videopac_Subsong0DisarkWordForceNonReference20
   015B                     646 _Videopac_Subsong0DisarkWordForceNonReference20:
   015B 01 80               647 	.word 384	; Duration in frames.
   015D 05 F4               648 	.word Videopac_Subsong0_Track_66
   015F 06 8D               649 	.word Videopac_Subsong0_Track_70
   0161 06 27               650 	.word Videopac_Subsong0_Track_68
                            651 
                            652 ; Pattern 19
                            653  .globl _Videopac_Subsong0DisarkWordForceNonReference21
   0163                     654 _Videopac_Subsong0DisarkWordForceNonReference21:
   0163 01 80               655 	.word 384	; Duration in frames.
   0165 06 5A               656 	.word Videopac_Subsong0_Track_69
   0167 06 8D               657 	.word Videopac_Subsong0_Track_70
   0169 06 BD               658 	.word Videopac_Subsong0_Track_71
                            659 
                            660 ; Pattern 20
                            661  .globl _Videopac_Subsong0DisarkWordForceNonReference22
   016B                     662 _Videopac_Subsong0DisarkWordForceNonReference22:
   016B 01 80               663 	.word 384	; Duration in frames.
   016D 04 F8               664 	.word Videopac_Subsong0_Track_60
   016F 05 91               665 	.word Videopac_Subsong0_Track_64
   0171 05 2B               666 	.word Videopac_Subsong0_Track_62
                            667 
                            668 ; Pattern 21
                            669  .globl _Videopac_Subsong0DisarkWordForceNonReference23
   0173                     670 _Videopac_Subsong0DisarkWordForceNonReference23:
   0173 01 80               671 	.word 384	; Duration in frames.
   0175 05 5E               672 	.word Videopac_Subsong0_Track_63
   0177 05 91               673 	.word Videopac_Subsong0_Track_64
   0179 05 C1               674 	.word Videopac_Subsong0_Track_65
                            675 
                            676 ; Pattern 22
                            677  .globl _Videopac_Subsong0DisarkWordForceNonReference24
   017B                     678 _Videopac_Subsong0DisarkWordForceNonReference24:
   017B 01 80               679 	.word 384	; Duration in frames.
   017D 05 F4               680 	.word Videopac_Subsong0_Track_66
   017F 06 8D               681 	.word Videopac_Subsong0_Track_70
   0181 06 27               682 	.word Videopac_Subsong0_Track_68
                            683 
                            684 ; Pattern 23
                            685  .globl _Videopac_Subsong0DisarkWordForceNonReference25
   0183                     686 _Videopac_Subsong0DisarkWordForceNonReference25:
   0183 01 80               687 	.word 384	; Duration in frames.
   0185 06 5A               688 	.word Videopac_Subsong0_Track_69
   0187 06 8D               689 	.word Videopac_Subsong0_Track_70
   0189 06 BD               690 	.word Videopac_Subsong0_Track_71
                            691 
                            692  .globl _Videopac_Subsong0DisarkWordForceNonReference26
   018B                     693 _Videopac_Subsong0DisarkWordForceNonReference26:
   018B 00 00               694 	.word 0	; Loops (duration = 0).
   018D 00 CB               695 	.word Videopac_Subsong0_LinkerLoop
                            696  .globl Videopac_Subsong0DisarkPointerRegionEnd1
   018F                     697 Videopac_Subsong0DisarkPointerRegionEnd1:
                            698 
                            699 ; The tracks.
                            700  .globl Videopac_Subsong0_Track_0
   018F                     701 Videopac_Subsong0_Track_0:
                            702  .globl _Videopac_Subsong0DisarkByteRegionStart27
   018F                     703 _Videopac_Subsong0DisarkByteRegionStart27:
   018F 2A                  704 	.byte 42	; Duration.
                            705  .globl Videopac_Subsong0DisarkByteRegionEnd27
   0190                     706 Videopac_Subsong0DisarkByteRegionEnd27:
                            707  .globl _Videopac_Subsong0DisarkPointerRegionStart28
   0190                     708 _Videopac_Subsong0DisarkPointerRegionStart28:
   0190 06 F0               709 	.word _Videopac_Subsong0_RegisterBlock_20
                            710  .globl Videopac_Subsong0DisarkPointerRegionEnd28
   0192                     711 Videopac_Subsong0DisarkPointerRegionEnd28:
                            712 
                            713  .globl _Videopac_Subsong0DisarkByteRegionStart29
   0192                     714 _Videopac_Subsong0DisarkByteRegionStart29:
   0192 30                  715 	.byte 48	; Duration.
                            716  .globl Videopac_Subsong0DisarkByteRegionEnd29
   0193                     717 Videopac_Subsong0DisarkByteRegionEnd29:
                            718  .globl _Videopac_Subsong0DisarkPointerRegionStart30
   0193                     719 _Videopac_Subsong0DisarkPointerRegionStart30:
   0193 06 F5               720 	.word _Videopac_Subsong0_RegisterBlock_1
                            721  .globl Videopac_Subsong0DisarkPointerRegionEnd30
   0195                     722 Videopac_Subsong0DisarkPointerRegionEnd30:
                            723 
                            724  .globl _Videopac_Subsong0DisarkByteRegionStart31
   0195                     725 _Videopac_Subsong0DisarkByteRegionStart31:
   0195 30                  726 	.byte 48	; Duration.
                            727  .globl Videopac_Subsong0DisarkByteRegionEnd31
   0196                     728 Videopac_Subsong0DisarkByteRegionEnd31:
                            729  .globl _Videopac_Subsong0DisarkPointerRegionStart32
   0196                     730 _Videopac_Subsong0DisarkPointerRegionStart32:
   0196 07 31               731 	.word _Videopac_Subsong0_RegisterBlock_2
                            732  .globl Videopac_Subsong0DisarkPointerRegionEnd32
   0198                     733 Videopac_Subsong0DisarkPointerRegionEnd32:
                            734 
                            735  .globl _Videopac_Subsong0DisarkByteRegionStart33
   0198                     736 _Videopac_Subsong0DisarkByteRegionStart33:
   0198 30                  737 	.byte 48	; Duration.
                            738  .globl Videopac_Subsong0DisarkByteRegionEnd33
   0199                     739 Videopac_Subsong0DisarkByteRegionEnd33:
                            740  .globl _Videopac_Subsong0DisarkPointerRegionStart34
   0199                     741 _Videopac_Subsong0DisarkPointerRegionStart34:
   0199 07 6D               742 	.word _Videopac_Subsong0_RegisterBlock_3
                            743  .globl Videopac_Subsong0DisarkPointerRegionEnd34
   019B                     744 Videopac_Subsong0DisarkPointerRegionEnd34:
                            745 
                            746  .globl _Videopac_Subsong0DisarkByteRegionStart35
   019B                     747 _Videopac_Subsong0DisarkByteRegionStart35:
   019B 30                  748 	.byte 48	; Duration.
                            749  .globl Videopac_Subsong0DisarkByteRegionEnd35
   019C                     750 Videopac_Subsong0DisarkByteRegionEnd35:
                            751  .globl _Videopac_Subsong0DisarkPointerRegionStart36
   019C                     752 _Videopac_Subsong0DisarkPointerRegionStart36:
   019C 07 31               753 	.word _Videopac_Subsong0_RegisterBlock_2
                            754  .globl Videopac_Subsong0DisarkPointerRegionEnd36
   019E                     755 Videopac_Subsong0DisarkPointerRegionEnd36:
                            756 
                            757  .globl _Videopac_Subsong0DisarkByteRegionStart37
   019E                     758 _Videopac_Subsong0DisarkByteRegionStart37:
   019E 30                  759 	.byte 48	; Duration.
                            760  .globl Videopac_Subsong0DisarkByteRegionEnd37
   019F                     761 Videopac_Subsong0DisarkByteRegionEnd37:
                            762  .globl _Videopac_Subsong0DisarkPointerRegionStart38
   019F                     763 _Videopac_Subsong0DisarkPointerRegionStart38:
   019F 07 A9               764 	.word _Videopac_Subsong0_RegisterBlock_5
                            765  .globl Videopac_Subsong0DisarkPointerRegionEnd38
   01A1                     766 Videopac_Subsong0DisarkPointerRegionEnd38:
                            767 
                            768  .globl _Videopac_Subsong0DisarkByteRegionStart39
   01A1                     769 _Videopac_Subsong0DisarkByteRegionStart39:
   01A1 30                  770 	.byte 48	; Duration.
                            771  .globl Videopac_Subsong0DisarkByteRegionEnd39
   01A2                     772 Videopac_Subsong0DisarkByteRegionEnd39:
                            773  .globl _Videopac_Subsong0DisarkPointerRegionStart40
   01A2                     774 _Videopac_Subsong0DisarkPointerRegionStart40:
   01A2 07 31               775 	.word _Videopac_Subsong0_RegisterBlock_2
                            776  .globl Videopac_Subsong0DisarkPointerRegionEnd40
   01A4                     777 Videopac_Subsong0DisarkPointerRegionEnd40:
                            778 
                            779  .globl _Videopac_Subsong0DisarkByteRegionStart41
   01A4                     780 _Videopac_Subsong0DisarkByteRegionStart41:
   01A4 30                  781 	.byte 48	; Duration.
                            782  .globl Videopac_Subsong0DisarkByteRegionEnd41
   01A5                     783 Videopac_Subsong0DisarkByteRegionEnd41:
                            784  .globl _Videopac_Subsong0DisarkPointerRegionStart42
   01A5                     785 _Videopac_Subsong0DisarkPointerRegionStart42:
   01A5 07 E5               786 	.word _Videopac_Subsong0_RegisterBlock_7
                            787  .globl Videopac_Subsong0DisarkPointerRegionEnd42
   01A7                     788 Videopac_Subsong0DisarkPointerRegionEnd42:
                            789 
                            790  .globl _Videopac_Subsong0DisarkByteRegionStart43
   01A7                     791 _Videopac_Subsong0DisarkByteRegionStart43:
   01A7 06                  792 	.byte 6	; Duration.
                            793  .globl Videopac_Subsong0DisarkByteRegionEnd43
   01A8                     794 Videopac_Subsong0DisarkByteRegionEnd43:
                            795  .globl _Videopac_Subsong0DisarkPointerRegionStart44
   01A8                     796 _Videopac_Subsong0DisarkPointerRegionStart44:
   01A8 0A 41               797 	.word _Videopac_Subsong0_RegisterBlock_91
                            798  .globl Videopac_Subsong0DisarkPointerRegionEnd44
   01AA                     799 Videopac_Subsong0DisarkPointerRegionEnd44:
                            800 
                            801  .globl Videopac_Subsong0_Track_1
   01AA                     802 Videopac_Subsong0_Track_1:
                            803  .globl _Videopac_Subsong0DisarkByteRegionStart45
   01AA                     804 _Videopac_Subsong0DisarkByteRegionStart45:
   01AA 18                  805 	.byte 24	; Duration.
                            806  .globl Videopac_Subsong0DisarkByteRegionEnd45
   01AB                     807 Videopac_Subsong0DisarkByteRegionEnd45:
                            808  .globl _Videopac_Subsong0DisarkPointerRegionStart46
   01AB                     809 _Videopac_Subsong0DisarkPointerRegionStart46:
   01AB 06 F0               810 	.word _Videopac_Subsong0_RegisterBlock_20
                            811  .globl Videopac_Subsong0DisarkPointerRegionEnd46
   01AD                     812 Videopac_Subsong0DisarkPointerRegionEnd46:
                            813 
                            814  .globl _Videopac_Subsong0DisarkByteRegionStart47
   01AD                     815 _Videopac_Subsong0DisarkByteRegionStart47:
   01AD 30                  816 	.byte 48	; Duration.
                            817  .globl Videopac_Subsong0DisarkByteRegionEnd47
   01AE                     818 Videopac_Subsong0DisarkByteRegionEnd47:
                            819  .globl _Videopac_Subsong0DisarkPointerRegionStart48
   01AE                     820 _Videopac_Subsong0DisarkPointerRegionStart48:
   01AE 08 21               821 	.word _Videopac_Subsong0_RegisterBlock_11
                            822  .globl Videopac_Subsong0DisarkPointerRegionEnd48
   01B0                     823 Videopac_Subsong0DisarkPointerRegionEnd48:
                            824 
                            825  .globl _Videopac_Subsong0DisarkByteRegionStart49
   01B0                     826 _Videopac_Subsong0DisarkByteRegionStart49:
   01B0 30                  827 	.byte 48	; Duration.
                            828  .globl Videopac_Subsong0DisarkByteRegionEnd49
   01B1                     829 Videopac_Subsong0DisarkByteRegionEnd49:
                            830  .globl _Videopac_Subsong0DisarkPointerRegionStart50
   01B1                     831 _Videopac_Subsong0DisarkPointerRegionStart50:
   01B1 08 5D               832 	.word _Videopac_Subsong0_RegisterBlock_12
                            833  .globl Videopac_Subsong0DisarkPointerRegionEnd50
   01B3                     834 Videopac_Subsong0DisarkPointerRegionEnd50:
                            835 
                            836  .globl _Videopac_Subsong0DisarkByteRegionStart51
   01B3                     837 _Videopac_Subsong0DisarkByteRegionStart51:
   01B3 30                  838 	.byte 48	; Duration.
                            839  .globl Videopac_Subsong0DisarkByteRegionEnd51
   01B4                     840 Videopac_Subsong0DisarkByteRegionEnd51:
                            841  .globl _Videopac_Subsong0DisarkPointerRegionStart52
   01B4                     842 _Videopac_Subsong0DisarkPointerRegionStart52:
   01B4 08 99               843 	.word _Videopac_Subsong0_RegisterBlock_13
                            844  .globl Videopac_Subsong0DisarkPointerRegionEnd52
   01B6                     845 Videopac_Subsong0DisarkPointerRegionEnd52:
                            846 
                            847  .globl _Videopac_Subsong0DisarkByteRegionStart53
   01B6                     848 _Videopac_Subsong0DisarkByteRegionStart53:
   01B6 30                  849 	.byte 48	; Duration.
                            850  .globl Videopac_Subsong0DisarkByteRegionEnd53
   01B7                     851 Videopac_Subsong0DisarkByteRegionEnd53:
                            852  .globl _Videopac_Subsong0DisarkPointerRegionStart54
   01B7                     853 _Videopac_Subsong0DisarkPointerRegionStart54:
   01B7 08 5D               854 	.word _Videopac_Subsong0_RegisterBlock_12
                            855  .globl Videopac_Subsong0DisarkPointerRegionEnd54
   01B9                     856 Videopac_Subsong0DisarkPointerRegionEnd54:
                            857 
                            858  .globl _Videopac_Subsong0DisarkByteRegionStart55
   01B9                     859 _Videopac_Subsong0DisarkByteRegionStart55:
   01B9 30                  860 	.byte 48	; Duration.
                            861  .globl Videopac_Subsong0DisarkByteRegionEnd55
   01BA                     862 Videopac_Subsong0DisarkByteRegionEnd55:
                            863  .globl _Videopac_Subsong0DisarkPointerRegionStart56
   01BA                     864 _Videopac_Subsong0DisarkPointerRegionStart56:
   01BA 08 D5               865 	.word _Videopac_Subsong0_RegisterBlock_15
                            866  .globl Videopac_Subsong0DisarkPointerRegionEnd56
   01BC                     867 Videopac_Subsong0DisarkPointerRegionEnd56:
                            868 
                            869  .globl _Videopac_Subsong0DisarkByteRegionStart57
   01BC                     870 _Videopac_Subsong0DisarkByteRegionStart57:
   01BC 30                  871 	.byte 48	; Duration.
                            872  .globl Videopac_Subsong0DisarkByteRegionEnd57
   01BD                     873 Videopac_Subsong0DisarkByteRegionEnd57:
                            874  .globl _Videopac_Subsong0DisarkPointerRegionStart58
   01BD                     875 _Videopac_Subsong0DisarkPointerRegionStart58:
   01BD 08 5D               876 	.word _Videopac_Subsong0_RegisterBlock_12
                            877  .globl Videopac_Subsong0DisarkPointerRegionEnd58
   01BF                     878 Videopac_Subsong0DisarkPointerRegionEnd58:
                            879 
                            880  .globl _Videopac_Subsong0DisarkByteRegionStart59
   01BF                     881 _Videopac_Subsong0DisarkByteRegionStart59:
   01BF 30                  882 	.byte 48	; Duration.
                            883  .globl Videopac_Subsong0DisarkByteRegionEnd59
   01C0                     884 Videopac_Subsong0DisarkByteRegionEnd59:
                            885  .globl _Videopac_Subsong0DisarkPointerRegionStart60
   01C0                     886 _Videopac_Subsong0DisarkPointerRegionStart60:
   01C0 09 11               887 	.word _Videopac_Subsong0_RegisterBlock_17
                            888  .globl Videopac_Subsong0DisarkPointerRegionEnd60
   01C2                     889 Videopac_Subsong0DisarkPointerRegionEnd60:
                            890 
                            891  .globl _Videopac_Subsong0DisarkByteRegionStart61
   01C2                     892 _Videopac_Subsong0DisarkByteRegionStart61:
   01C2 18                  893 	.byte 24	; Duration.
                            894  .globl Videopac_Subsong0DisarkByteRegionEnd61
   01C3                     895 Videopac_Subsong0DisarkByteRegionEnd61:
                            896  .globl _Videopac_Subsong0DisarkPointerRegionStart62
   01C3                     897 _Videopac_Subsong0DisarkPointerRegionStart62:
   01C3 0B 9B               898 	.word _Videopac_Subsong0_RegisterBlock_101
                            899  .globl Videopac_Subsong0DisarkPointerRegionEnd62
   01C5                     900 Videopac_Subsong0DisarkPointerRegionEnd62:
                            901 
                            902  .globl Videopac_Subsong0_Track_2
   01C5                     903 Videopac_Subsong0_Track_2:
                            904  .globl _Videopac_Subsong0DisarkByteRegionStart63
   01C5                     905 _Videopac_Subsong0DisarkByteRegionStart63:
   01C5 3C                  906 	.byte 60	; Duration.
                            907  .globl Videopac_Subsong0DisarkByteRegionEnd63
   01C6                     908 Videopac_Subsong0DisarkByteRegionEnd63:
                            909  .globl _Videopac_Subsong0DisarkPointerRegionStart64
   01C6                     910 _Videopac_Subsong0DisarkPointerRegionStart64:
   01C6 06 F0               911 	.word _Videopac_Subsong0_RegisterBlock_20
                            912  .globl Videopac_Subsong0DisarkPointerRegionEnd64
   01C8                     913 Videopac_Subsong0DisarkPointerRegionEnd64:
                            914 
                            915  .globl _Videopac_Subsong0DisarkByteRegionStart65
   01C8                     916 _Videopac_Subsong0DisarkByteRegionStart65:
   01C8 30                  917 	.byte 48	; Duration.
                            918  .globl Videopac_Subsong0DisarkByteRegionEnd65
   01C9                     919 Videopac_Subsong0DisarkByteRegionEnd65:
                            920  .globl _Videopac_Subsong0DisarkPointerRegionStart66
   01C9                     921 _Videopac_Subsong0DisarkPointerRegionStart66:
   01C9 09 4D               922 	.word _Videopac_Subsong0_RegisterBlock_21
                            923  .globl Videopac_Subsong0DisarkPointerRegionEnd66
   01CB                     924 Videopac_Subsong0DisarkPointerRegionEnd66:
                            925 
                            926  .globl _Videopac_Subsong0DisarkByteRegionStart67
   01CB                     927 _Videopac_Subsong0DisarkByteRegionStart67:
   01CB 30                  928 	.byte 48	; Duration.
                            929  .globl Videopac_Subsong0DisarkByteRegionEnd67
   01CC                     930 Videopac_Subsong0DisarkByteRegionEnd67:
                            931  .globl _Videopac_Subsong0DisarkPointerRegionStart68
   01CC                     932 _Videopac_Subsong0DisarkPointerRegionStart68:
   01CC 09 7B               933 	.word _Videopac_Subsong0_RegisterBlock_22
                            934  .globl Videopac_Subsong0DisarkPointerRegionEnd68
   01CE                     935 Videopac_Subsong0DisarkPointerRegionEnd68:
                            936 
                            937  .globl _Videopac_Subsong0DisarkByteRegionStart69
   01CE                     938 _Videopac_Subsong0DisarkByteRegionStart69:
   01CE 30                  939 	.byte 48	; Duration.
                            940  .globl Videopac_Subsong0DisarkByteRegionEnd69
   01CF                     941 Videopac_Subsong0DisarkByteRegionEnd69:
                            942  .globl _Videopac_Subsong0DisarkPointerRegionStart70
   01CF                     943 _Videopac_Subsong0DisarkPointerRegionStart70:
   01CF 09 A9               944 	.word _Videopac_Subsong0_RegisterBlock_23
                            945  .globl Videopac_Subsong0DisarkPointerRegionEnd70
   01D1                     946 Videopac_Subsong0DisarkPointerRegionEnd70:
                            947 
                            948  .globl _Videopac_Subsong0DisarkByteRegionStart71
   01D1                     949 _Videopac_Subsong0DisarkByteRegionStart71:
   01D1 30                  950 	.byte 48	; Duration.
                            951  .globl Videopac_Subsong0DisarkByteRegionEnd71
   01D2                     952 Videopac_Subsong0DisarkByteRegionEnd71:
                            953  .globl _Videopac_Subsong0DisarkPointerRegionStart72
   01D2                     954 _Videopac_Subsong0DisarkPointerRegionStart72:
   01D2 09 7B               955 	.word _Videopac_Subsong0_RegisterBlock_22
                            956  .globl Videopac_Subsong0DisarkPointerRegionEnd72
   01D4                     957 Videopac_Subsong0DisarkPointerRegionEnd72:
                            958 
                            959  .globl _Videopac_Subsong0DisarkByteRegionStart73
   01D4                     960 _Videopac_Subsong0DisarkByteRegionStart73:
   01D4 30                  961 	.byte 48	; Duration.
                            962  .globl Videopac_Subsong0DisarkByteRegionEnd73
   01D5                     963 Videopac_Subsong0DisarkByteRegionEnd73:
                            964  .globl _Videopac_Subsong0DisarkPointerRegionStart74
   01D5                     965 _Videopac_Subsong0DisarkPointerRegionStart74:
   01D5 09 D7               966 	.word _Videopac_Subsong0_RegisterBlock_25
                            967  .globl Videopac_Subsong0DisarkPointerRegionEnd74
   01D7                     968 Videopac_Subsong0DisarkPointerRegionEnd74:
                            969 
                            970  .globl _Videopac_Subsong0DisarkByteRegionStart75
   01D7                     971 _Videopac_Subsong0DisarkByteRegionStart75:
   01D7 30                  972 	.byte 48	; Duration.
                            973  .globl Videopac_Subsong0DisarkByteRegionEnd75
   01D8                     974 Videopac_Subsong0DisarkByteRegionEnd75:
                            975  .globl _Videopac_Subsong0DisarkPointerRegionStart76
   01D8                     976 _Videopac_Subsong0DisarkPointerRegionStart76:
   01D8 09 7B               977 	.word _Videopac_Subsong0_RegisterBlock_22
                            978  .globl Videopac_Subsong0DisarkPointerRegionEnd76
   01DA                     979 Videopac_Subsong0DisarkPointerRegionEnd76:
                            980 
                            981  .globl _Videopac_Subsong0DisarkByteRegionStart77
   01DA                     982 _Videopac_Subsong0DisarkByteRegionStart77:
   01DA 24                  983 	.byte 36	; Duration.
                            984  .globl Videopac_Subsong0DisarkByteRegionEnd77
   01DB                     985 Videopac_Subsong0DisarkByteRegionEnd77:
                            986  .globl _Videopac_Subsong0DisarkPointerRegionStart78
   01DB                     987 _Videopac_Subsong0DisarkPointerRegionStart78:
   01DB 0D 03               988 	.word _Videopac_Subsong0_RegisterBlock_111
                            989  .globl Videopac_Subsong0DisarkPointerRegionEnd78
   01DD                     990 Videopac_Subsong0DisarkPointerRegionEnd78:
                            991 
                            992  .globl Videopac_Subsong0_Track_12
   01DD                     993 Videopac_Subsong0_Track_12:
                            994  .globl _Videopac_Subsong0DisarkByteRegionStart79
   01DD                     995 _Videopac_Subsong0DisarkByteRegionStart79:
   01DD 2A                  996 	.byte 42	; Duration.
                            997  .globl Videopac_Subsong0DisarkByteRegionEnd79
   01DE                     998 Videopac_Subsong0DisarkByteRegionEnd79:
                            999  .globl _Videopac_Subsong0DisarkPointerRegionStart80
   01DE                    1000 _Videopac_Subsong0DisarkPointerRegionStart80:
   01DE 0D ED              1001 	.word _Videopac_Subsong0_RegisterBlock_29
                           1002  .globl Videopac_Subsong0DisarkPointerRegionEnd80
   01E0                    1003 Videopac_Subsong0DisarkPointerRegionEnd80:
                           1004 
                           1005  .globl _Videopac_Subsong0DisarkByteRegionStart81
   01E0                    1006 _Videopac_Subsong0DisarkByteRegionStart81:
   01E0 30                 1007 	.byte 48	; Duration.
                           1008  .globl Videopac_Subsong0DisarkByteRegionEnd81
   01E1                    1009 Videopac_Subsong0DisarkByteRegionEnd81:
                           1010  .globl _Videopac_Subsong0DisarkPointerRegionStart82
   01E1                    1011 _Videopac_Subsong0DisarkPointerRegionStart82:
   01E1 06 F5              1012 	.word _Videopac_Subsong0_RegisterBlock_1
                           1013  .globl Videopac_Subsong0DisarkPointerRegionEnd82
   01E3                    1014 Videopac_Subsong0DisarkPointerRegionEnd82:
                           1015 
                           1016  .globl _Videopac_Subsong0DisarkByteRegionStart83
   01E3                    1017 _Videopac_Subsong0DisarkByteRegionStart83:
   01E3 30                 1018 	.byte 48	; Duration.
                           1019  .globl Videopac_Subsong0DisarkByteRegionEnd83
   01E4                    1020 Videopac_Subsong0DisarkByteRegionEnd83:
                           1021  .globl _Videopac_Subsong0DisarkPointerRegionStart84
   01E4                    1022 _Videopac_Subsong0DisarkPointerRegionStart84:
   01E4 07 31              1023 	.word _Videopac_Subsong0_RegisterBlock_2
                           1024  .globl Videopac_Subsong0DisarkPointerRegionEnd84
   01E6                    1025 Videopac_Subsong0DisarkPointerRegionEnd84:
                           1026 
                           1027  .globl _Videopac_Subsong0DisarkByteRegionStart85
   01E6                    1028 _Videopac_Subsong0DisarkByteRegionStart85:
   01E6 30                 1029 	.byte 48	; Duration.
                           1030  .globl Videopac_Subsong0DisarkByteRegionEnd85
   01E7                    1031 Videopac_Subsong0DisarkByteRegionEnd85:
                           1032  .globl _Videopac_Subsong0DisarkPointerRegionStart86
   01E7                    1033 _Videopac_Subsong0DisarkPointerRegionStart86:
   01E7 07 6D              1034 	.word _Videopac_Subsong0_RegisterBlock_3
                           1035  .globl Videopac_Subsong0DisarkPointerRegionEnd86
   01E9                    1036 Videopac_Subsong0DisarkPointerRegionEnd86:
                           1037 
                           1038  .globl _Videopac_Subsong0DisarkByteRegionStart87
   01E9                    1039 _Videopac_Subsong0DisarkByteRegionStart87:
   01E9 30                 1040 	.byte 48	; Duration.
                           1041  .globl Videopac_Subsong0DisarkByteRegionEnd87
   01EA                    1042 Videopac_Subsong0DisarkByteRegionEnd87:
                           1043  .globl _Videopac_Subsong0DisarkPointerRegionStart88
   01EA                    1044 _Videopac_Subsong0DisarkPointerRegionStart88:
   01EA 07 31              1045 	.word _Videopac_Subsong0_RegisterBlock_2
                           1046  .globl Videopac_Subsong0DisarkPointerRegionEnd88
   01EC                    1047 Videopac_Subsong0DisarkPointerRegionEnd88:
                           1048 
                           1049  .globl _Videopac_Subsong0DisarkByteRegionStart89
   01EC                    1050 _Videopac_Subsong0DisarkByteRegionStart89:
   01EC 30                 1051 	.byte 48	; Duration.
                           1052  .globl Videopac_Subsong0DisarkByteRegionEnd89
   01ED                    1053 Videopac_Subsong0DisarkByteRegionEnd89:
                           1054  .globl _Videopac_Subsong0DisarkPointerRegionStart90
   01ED                    1055 _Videopac_Subsong0DisarkPointerRegionStart90:
   01ED 07 A9              1056 	.word _Videopac_Subsong0_RegisterBlock_5
                           1057  .globl Videopac_Subsong0DisarkPointerRegionEnd90
   01EF                    1058 Videopac_Subsong0DisarkPointerRegionEnd90:
                           1059 
                           1060  .globl _Videopac_Subsong0DisarkByteRegionStart91
   01EF                    1061 _Videopac_Subsong0DisarkByteRegionStart91:
   01EF 30                 1062 	.byte 48	; Duration.
                           1063  .globl Videopac_Subsong0DisarkByteRegionEnd91
   01F0                    1064 Videopac_Subsong0DisarkByteRegionEnd91:
                           1065  .globl _Videopac_Subsong0DisarkPointerRegionStart92
   01F0                    1066 _Videopac_Subsong0DisarkPointerRegionStart92:
   01F0 07 31              1067 	.word _Videopac_Subsong0_RegisterBlock_2
                           1068  .globl Videopac_Subsong0DisarkPointerRegionEnd92
   01F2                    1069 Videopac_Subsong0DisarkPointerRegionEnd92:
                           1070 
                           1071  .globl _Videopac_Subsong0DisarkByteRegionStart93
   01F2                    1072 _Videopac_Subsong0DisarkByteRegionStart93:
   01F2 30                 1073 	.byte 48	; Duration.
                           1074  .globl Videopac_Subsong0DisarkByteRegionEnd93
   01F3                    1075 Videopac_Subsong0DisarkByteRegionEnd93:
                           1076  .globl _Videopac_Subsong0DisarkPointerRegionStart94
   01F3                    1077 _Videopac_Subsong0DisarkPointerRegionStart94:
   01F3 07 E5              1078 	.word _Videopac_Subsong0_RegisterBlock_7
                           1079  .globl Videopac_Subsong0DisarkPointerRegionEnd94
   01F5                    1080 Videopac_Subsong0DisarkPointerRegionEnd94:
                           1081 
                           1082  .globl _Videopac_Subsong0DisarkByteRegionStart95
   01F5                    1083 _Videopac_Subsong0DisarkByteRegionStart95:
   01F5 06                 1084 	.byte 6	; Duration.
                           1085  .globl Videopac_Subsong0DisarkByteRegionEnd95
   01F6                    1086 Videopac_Subsong0DisarkByteRegionEnd95:
                           1087  .globl _Videopac_Subsong0DisarkPointerRegionStart96
   01F6                    1088 _Videopac_Subsong0DisarkPointerRegionStart96:
   01F6 0A 41              1089 	.word _Videopac_Subsong0_RegisterBlock_91
                           1090  .globl Videopac_Subsong0DisarkPointerRegionEnd96
   01F8                    1091 Videopac_Subsong0DisarkPointerRegionEnd96:
                           1092 
                           1093  .globl Videopac_Subsong0_Track_13
   01F8                    1094 Videopac_Subsong0_Track_13:
                           1095  .globl _Videopac_Subsong0DisarkByteRegionStart97
   01F8                    1096 _Videopac_Subsong0DisarkByteRegionStart97:
   01F8 18                 1097 	.byte 24	; Duration.
                           1098  .globl Videopac_Subsong0DisarkByteRegionEnd97
   01F9                    1099 Videopac_Subsong0DisarkByteRegionEnd97:
                           1100  .globl _Videopac_Subsong0DisarkPointerRegionStart98
   01F9                    1101 _Videopac_Subsong0DisarkPointerRegionStart98:
   01F9 0E 39              1102 	.word _Videopac_Subsong0_RegisterBlock_39
                           1103  .globl Videopac_Subsong0DisarkPointerRegionEnd98
   01FB                    1104 Videopac_Subsong0DisarkPointerRegionEnd98:
                           1105 
                           1106  .globl _Videopac_Subsong0DisarkByteRegionStart99
   01FB                    1107 _Videopac_Subsong0DisarkByteRegionStart99:
   01FB 30                 1108 	.byte 48	; Duration.
                           1109  .globl Videopac_Subsong0DisarkByteRegionEnd99
   01FC                    1110 Videopac_Subsong0DisarkByteRegionEnd99:
                           1111  .globl _Videopac_Subsong0DisarkPointerRegionStart100
   01FC                    1112 _Videopac_Subsong0DisarkPointerRegionStart100:
   01FC 08 21              1113 	.word _Videopac_Subsong0_RegisterBlock_11
                           1114  .globl Videopac_Subsong0DisarkPointerRegionEnd100
   01FE                    1115 Videopac_Subsong0DisarkPointerRegionEnd100:
                           1116 
                           1117  .globl _Videopac_Subsong0DisarkByteRegionStart101
   01FE                    1118 _Videopac_Subsong0DisarkByteRegionStart101:
   01FE 30                 1119 	.byte 48	; Duration.
                           1120  .globl Videopac_Subsong0DisarkByteRegionEnd101
   01FF                    1121 Videopac_Subsong0DisarkByteRegionEnd101:
                           1122  .globl _Videopac_Subsong0DisarkPointerRegionStart102
   01FF                    1123 _Videopac_Subsong0DisarkPointerRegionStart102:
   01FF 08 5D              1124 	.word _Videopac_Subsong0_RegisterBlock_12
                           1125  .globl Videopac_Subsong0DisarkPointerRegionEnd102
   0201                    1126 Videopac_Subsong0DisarkPointerRegionEnd102:
                           1127 
                           1128  .globl _Videopac_Subsong0DisarkByteRegionStart103
   0201                    1129 _Videopac_Subsong0DisarkByteRegionStart103:
   0201 30                 1130 	.byte 48	; Duration.
                           1131  .globl Videopac_Subsong0DisarkByteRegionEnd103
   0202                    1132 Videopac_Subsong0DisarkByteRegionEnd103:
                           1133  .globl _Videopac_Subsong0DisarkPointerRegionStart104
   0202                    1134 _Videopac_Subsong0DisarkPointerRegionStart104:
   0202 08 99              1135 	.word _Videopac_Subsong0_RegisterBlock_13
                           1136  .globl Videopac_Subsong0DisarkPointerRegionEnd104
   0204                    1137 Videopac_Subsong0DisarkPointerRegionEnd104:
                           1138 
                           1139  .globl _Videopac_Subsong0DisarkByteRegionStart105
   0204                    1140 _Videopac_Subsong0DisarkByteRegionStart105:
   0204 30                 1141 	.byte 48	; Duration.
                           1142  .globl Videopac_Subsong0DisarkByteRegionEnd105
   0205                    1143 Videopac_Subsong0DisarkByteRegionEnd105:
                           1144  .globl _Videopac_Subsong0DisarkPointerRegionStart106
   0205                    1145 _Videopac_Subsong0DisarkPointerRegionStart106:
   0205 08 5D              1146 	.word _Videopac_Subsong0_RegisterBlock_12
                           1147  .globl Videopac_Subsong0DisarkPointerRegionEnd106
   0207                    1148 Videopac_Subsong0DisarkPointerRegionEnd106:
                           1149 
                           1150  .globl _Videopac_Subsong0DisarkByteRegionStart107
   0207                    1151 _Videopac_Subsong0DisarkByteRegionStart107:
   0207 30                 1152 	.byte 48	; Duration.
                           1153  .globl Videopac_Subsong0DisarkByteRegionEnd107
   0208                    1154 Videopac_Subsong0DisarkByteRegionEnd107:
                           1155  .globl _Videopac_Subsong0DisarkPointerRegionStart108
   0208                    1156 _Videopac_Subsong0DisarkPointerRegionStart108:
   0208 08 D5              1157 	.word _Videopac_Subsong0_RegisterBlock_15
                           1158  .globl Videopac_Subsong0DisarkPointerRegionEnd108
   020A                    1159 Videopac_Subsong0DisarkPointerRegionEnd108:
                           1160 
                           1161  .globl _Videopac_Subsong0DisarkByteRegionStart109
   020A                    1162 _Videopac_Subsong0DisarkByteRegionStart109:
   020A 30                 1163 	.byte 48	; Duration.
                           1164  .globl Videopac_Subsong0DisarkByteRegionEnd109
   020B                    1165 Videopac_Subsong0DisarkByteRegionEnd109:
                           1166  .globl _Videopac_Subsong0DisarkPointerRegionStart110
   020B                    1167 _Videopac_Subsong0DisarkPointerRegionStart110:
   020B 08 5D              1168 	.word _Videopac_Subsong0_RegisterBlock_12
                           1169  .globl Videopac_Subsong0DisarkPointerRegionEnd110
   020D                    1170 Videopac_Subsong0DisarkPointerRegionEnd110:
                           1171 
                           1172  .globl _Videopac_Subsong0DisarkByteRegionStart111
   020D                    1173 _Videopac_Subsong0DisarkByteRegionStart111:
   020D 30                 1174 	.byte 48	; Duration.
                           1175  .globl Videopac_Subsong0DisarkByteRegionEnd111
   020E                    1176 Videopac_Subsong0DisarkByteRegionEnd111:
                           1177  .globl _Videopac_Subsong0DisarkPointerRegionStart112
   020E                    1178 _Videopac_Subsong0DisarkPointerRegionStart112:
   020E 09 11              1179 	.word _Videopac_Subsong0_RegisterBlock_17
                           1180  .globl Videopac_Subsong0DisarkPointerRegionEnd112
   0210                    1181 Videopac_Subsong0DisarkPointerRegionEnd112:
                           1182 
                           1183  .globl _Videopac_Subsong0DisarkByteRegionStart113
   0210                    1184 _Videopac_Subsong0DisarkByteRegionStart113:
   0210 18                 1185 	.byte 24	; Duration.
                           1186  .globl Videopac_Subsong0DisarkByteRegionEnd113
   0211                    1187 Videopac_Subsong0DisarkByteRegionEnd113:
                           1188  .globl _Videopac_Subsong0DisarkPointerRegionStart114
   0211                    1189 _Videopac_Subsong0DisarkPointerRegionStart114:
   0211 0B 9B              1190 	.word _Videopac_Subsong0_RegisterBlock_101
                           1191  .globl Videopac_Subsong0DisarkPointerRegionEnd114
   0213                    1192 Videopac_Subsong0DisarkPointerRegionEnd114:
                           1193 
                           1194  .globl Videopac_Subsong0_Track_14
   0213                    1195 Videopac_Subsong0_Track_14:
                           1196  .globl _Videopac_Subsong0DisarkByteRegionStart115
   0213                    1197 _Videopac_Subsong0DisarkByteRegionStart115:
   0213 0C                 1198 	.byte 12	; Duration.
                           1199  .globl Videopac_Subsong0DisarkByteRegionEnd115
   0214                    1200 Videopac_Subsong0DisarkByteRegionEnd115:
                           1201  .globl _Videopac_Subsong0DisarkPointerRegionStart116
   0214                    1202 _Videopac_Subsong0DisarkPointerRegionStart116:
   0214 0E 25              1203 	.word _Videopac_Subsong0_RegisterBlock_149
                           1204  .globl Videopac_Subsong0DisarkPointerRegionEnd116
   0216                    1205 Videopac_Subsong0DisarkPointerRegionEnd116:
                           1206 
                           1207  .globl _Videopac_Subsong0DisarkByteRegionStart117
   0216                    1208 _Videopac_Subsong0DisarkByteRegionStart117:
   0216 30                 1209 	.byte 48	; Duration.
                           1210  .globl Videopac_Subsong0DisarkByteRegionEnd117
   0217                    1211 Videopac_Subsong0DisarkByteRegionEnd117:
                           1212  .globl _Videopac_Subsong0DisarkPointerRegionStart118
   0217                    1213 _Videopac_Subsong0DisarkPointerRegionStart118:
   0217 09 4D              1214 	.word _Videopac_Subsong0_RegisterBlock_21
                           1215  .globl Videopac_Subsong0DisarkPointerRegionEnd118
   0219                    1216 Videopac_Subsong0DisarkPointerRegionEnd118:
                           1217 
                           1218  .globl _Videopac_Subsong0DisarkByteRegionStart119
   0219                    1219 _Videopac_Subsong0DisarkByteRegionStart119:
   0219 30                 1220 	.byte 48	; Duration.
                           1221  .globl Videopac_Subsong0DisarkByteRegionEnd119
   021A                    1222 Videopac_Subsong0DisarkByteRegionEnd119:
                           1223  .globl _Videopac_Subsong0DisarkPointerRegionStart120
   021A                    1224 _Videopac_Subsong0DisarkPointerRegionStart120:
   021A 09 4D              1225 	.word _Videopac_Subsong0_RegisterBlock_21
                           1226  .globl Videopac_Subsong0DisarkPointerRegionEnd120
   021C                    1227 Videopac_Subsong0DisarkPointerRegionEnd120:
                           1228 
                           1229  .globl _Videopac_Subsong0DisarkByteRegionStart121
   021C                    1230 _Videopac_Subsong0DisarkByteRegionStart121:
   021C 30                 1231 	.byte 48	; Duration.
                           1232  .globl Videopac_Subsong0DisarkByteRegionEnd121
   021D                    1233 Videopac_Subsong0DisarkByteRegionEnd121:
                           1234  .globl _Videopac_Subsong0DisarkPointerRegionStart122
   021D                    1235 _Videopac_Subsong0DisarkPointerRegionStart122:
   021D 09 7B              1236 	.word _Videopac_Subsong0_RegisterBlock_22
                           1237  .globl Videopac_Subsong0DisarkPointerRegionEnd122
   021F                    1238 Videopac_Subsong0DisarkPointerRegionEnd122:
                           1239 
                           1240  .globl _Videopac_Subsong0DisarkByteRegionStart123
   021F                    1241 _Videopac_Subsong0DisarkByteRegionStart123:
   021F 30                 1242 	.byte 48	; Duration.
                           1243  .globl Videopac_Subsong0DisarkByteRegionEnd123
   0220                    1244 Videopac_Subsong0DisarkByteRegionEnd123:
                           1245  .globl _Videopac_Subsong0DisarkPointerRegionStart124
   0220                    1246 _Videopac_Subsong0DisarkPointerRegionStart124:
   0220 09 A9              1247 	.word _Videopac_Subsong0_RegisterBlock_23
                           1248  .globl Videopac_Subsong0DisarkPointerRegionEnd124
   0222                    1249 Videopac_Subsong0DisarkPointerRegionEnd124:
                           1250 
                           1251  .globl _Videopac_Subsong0DisarkByteRegionStart125
   0222                    1252 _Videopac_Subsong0DisarkByteRegionStart125:
   0222 30                 1253 	.byte 48	; Duration.
                           1254  .globl Videopac_Subsong0DisarkByteRegionEnd125
   0223                    1255 Videopac_Subsong0DisarkByteRegionEnd125:
                           1256  .globl _Videopac_Subsong0DisarkPointerRegionStart126
   0223                    1257 _Videopac_Subsong0DisarkPointerRegionStart126:
   0223 09 7B              1258 	.word _Videopac_Subsong0_RegisterBlock_22
                           1259  .globl Videopac_Subsong0DisarkPointerRegionEnd126
   0225                    1260 Videopac_Subsong0DisarkPointerRegionEnd126:
                           1261 
                           1262  .globl _Videopac_Subsong0DisarkByteRegionStart127
   0225                    1263 _Videopac_Subsong0DisarkByteRegionStart127:
   0225 30                 1264 	.byte 48	; Duration.
                           1265  .globl Videopac_Subsong0DisarkByteRegionEnd127
   0226                    1266 Videopac_Subsong0DisarkByteRegionEnd127:
                           1267  .globl _Videopac_Subsong0DisarkPointerRegionStart128
   0226                    1268 _Videopac_Subsong0DisarkPointerRegionStart128:
   0226 09 D7              1269 	.word _Videopac_Subsong0_RegisterBlock_25
                           1270  .globl Videopac_Subsong0DisarkPointerRegionEnd128
   0228                    1271 Videopac_Subsong0DisarkPointerRegionEnd128:
                           1272 
                           1273  .globl _Videopac_Subsong0DisarkByteRegionStart129
   0228                    1274 _Videopac_Subsong0DisarkByteRegionStart129:
   0228 30                 1275 	.byte 48	; Duration.
                           1276  .globl Videopac_Subsong0DisarkByteRegionEnd129
   0229                    1277 Videopac_Subsong0DisarkByteRegionEnd129:
                           1278  .globl _Videopac_Subsong0DisarkPointerRegionStart130
   0229                    1279 _Videopac_Subsong0DisarkPointerRegionStart130:
   0229 09 7B              1280 	.word _Videopac_Subsong0_RegisterBlock_22
                           1281  .globl Videopac_Subsong0DisarkPointerRegionEnd130
   022B                    1282 Videopac_Subsong0DisarkPointerRegionEnd130:
                           1283 
                           1284  .globl _Videopac_Subsong0DisarkByteRegionStart131
   022B                    1285 _Videopac_Subsong0DisarkByteRegionStart131:
   022B 24                 1286 	.byte 36	; Duration.
                           1287  .globl Videopac_Subsong0DisarkByteRegionEnd131
   022C                    1288 Videopac_Subsong0DisarkByteRegionEnd131:
                           1289  .globl _Videopac_Subsong0DisarkPointerRegionStart132
   022C                    1290 _Videopac_Subsong0DisarkPointerRegionStart132:
   022C 0D 03              1291 	.word _Videopac_Subsong0_RegisterBlock_111
                           1292  .globl Videopac_Subsong0DisarkPointerRegionEnd132
   022E                    1293 Videopac_Subsong0DisarkPointerRegionEnd132:
                           1294 
                           1295  .globl Videopac_Subsong0_Track_15
   022E                    1296 Videopac_Subsong0_Track_15:
                           1297  .globl _Videopac_Subsong0DisarkByteRegionStart133
   022E                    1298 _Videopac_Subsong0DisarkByteRegionStart133:
   022E 2A                 1299 	.byte 42	; Duration.
                           1300  .globl Videopac_Subsong0DisarkByteRegionEnd133
   022F                    1301 Videopac_Subsong0DisarkByteRegionEnd133:
                           1302  .globl _Videopac_Subsong0DisarkPointerRegionStart134
   022F                    1303 _Videopac_Subsong0DisarkPointerRegionStart134:
   022F 0D F3              1304 	.word _Videopac_Subsong0_RegisterBlock_59
                           1305  .globl Videopac_Subsong0DisarkPointerRegionEnd134
   0231                    1306 Videopac_Subsong0DisarkPointerRegionEnd134:
                           1307 
                           1308  .globl _Videopac_Subsong0DisarkByteRegionStart135
   0231                    1309 _Videopac_Subsong0DisarkByteRegionStart135:
   0231 30                 1310 	.byte 48	; Duration.
                           1311  .globl Videopac_Subsong0DisarkByteRegionEnd135
   0232                    1312 Videopac_Subsong0DisarkByteRegionEnd135:
                           1313  .globl _Videopac_Subsong0DisarkPointerRegionStart136
   0232                    1314 _Videopac_Subsong0DisarkPointerRegionStart136:
   0232 06 F5              1315 	.word _Videopac_Subsong0_RegisterBlock_1
                           1316  .globl Videopac_Subsong0DisarkPointerRegionEnd136
   0234                    1317 Videopac_Subsong0DisarkPointerRegionEnd136:
                           1318 
                           1319  .globl _Videopac_Subsong0DisarkByteRegionStart137
   0234                    1320 _Videopac_Subsong0DisarkByteRegionStart137:
   0234 30                 1321 	.byte 48	; Duration.
                           1322  .globl Videopac_Subsong0DisarkByteRegionEnd137
   0235                    1323 Videopac_Subsong0DisarkByteRegionEnd137:
                           1324  .globl _Videopac_Subsong0DisarkPointerRegionStart138
   0235                    1325 _Videopac_Subsong0DisarkPointerRegionStart138:
   0235 07 31              1326 	.word _Videopac_Subsong0_RegisterBlock_2
                           1327  .globl Videopac_Subsong0DisarkPointerRegionEnd138
   0237                    1328 Videopac_Subsong0DisarkPointerRegionEnd138:
                           1329 
                           1330  .globl _Videopac_Subsong0DisarkByteRegionStart139
   0237                    1331 _Videopac_Subsong0DisarkByteRegionStart139:
   0237 30                 1332 	.byte 48	; Duration.
                           1333  .globl Videopac_Subsong0DisarkByteRegionEnd139
   0238                    1334 Videopac_Subsong0DisarkByteRegionEnd139:
                           1335  .globl _Videopac_Subsong0DisarkPointerRegionStart140
   0238                    1336 _Videopac_Subsong0DisarkPointerRegionStart140:
   0238 07 6D              1337 	.word _Videopac_Subsong0_RegisterBlock_3
                           1338  .globl Videopac_Subsong0DisarkPointerRegionEnd140
   023A                    1339 Videopac_Subsong0DisarkPointerRegionEnd140:
                           1340 
                           1341  .globl _Videopac_Subsong0DisarkByteRegionStart141
   023A                    1342 _Videopac_Subsong0DisarkByteRegionStart141:
   023A 30                 1343 	.byte 48	; Duration.
                           1344  .globl Videopac_Subsong0DisarkByteRegionEnd141
   023B                    1345 Videopac_Subsong0DisarkByteRegionEnd141:
                           1346  .globl _Videopac_Subsong0DisarkPointerRegionStart142
   023B                    1347 _Videopac_Subsong0DisarkPointerRegionStart142:
   023B 07 31              1348 	.word _Videopac_Subsong0_RegisterBlock_2
                           1349  .globl Videopac_Subsong0DisarkPointerRegionEnd142
   023D                    1350 Videopac_Subsong0DisarkPointerRegionEnd142:
                           1351 
                           1352  .globl _Videopac_Subsong0DisarkByteRegionStart143
   023D                    1353 _Videopac_Subsong0DisarkByteRegionStart143:
   023D 30                 1354 	.byte 48	; Duration.
                           1355  .globl Videopac_Subsong0DisarkByteRegionEnd143
   023E                    1356 Videopac_Subsong0DisarkByteRegionEnd143:
                           1357  .globl _Videopac_Subsong0DisarkPointerRegionStart144
   023E                    1358 _Videopac_Subsong0DisarkPointerRegionStart144:
   023E 07 A9              1359 	.word _Videopac_Subsong0_RegisterBlock_5
                           1360  .globl Videopac_Subsong0DisarkPointerRegionEnd144
   0240                    1361 Videopac_Subsong0DisarkPointerRegionEnd144:
                           1362 
                           1363  .globl _Videopac_Subsong0DisarkByteRegionStart145
   0240                    1364 _Videopac_Subsong0DisarkByteRegionStart145:
   0240 30                 1365 	.byte 48	; Duration.
                           1366  .globl Videopac_Subsong0DisarkByteRegionEnd145
   0241                    1367 Videopac_Subsong0DisarkByteRegionEnd145:
                           1368  .globl _Videopac_Subsong0DisarkPointerRegionStart146
   0241                    1369 _Videopac_Subsong0DisarkPointerRegionStart146:
   0241 07 31              1370 	.word _Videopac_Subsong0_RegisterBlock_2
                           1371  .globl Videopac_Subsong0DisarkPointerRegionEnd146
   0243                    1372 Videopac_Subsong0DisarkPointerRegionEnd146:
                           1373 
                           1374  .globl _Videopac_Subsong0DisarkByteRegionStart147
   0243                    1375 _Videopac_Subsong0DisarkByteRegionStart147:
   0243 30                 1376 	.byte 48	; Duration.
                           1377  .globl Videopac_Subsong0DisarkByteRegionEnd147
   0244                    1378 Videopac_Subsong0DisarkByteRegionEnd147:
                           1379  .globl _Videopac_Subsong0DisarkPointerRegionStart148
   0244                    1380 _Videopac_Subsong0DisarkPointerRegionStart148:
   0244 07 E5              1381 	.word _Videopac_Subsong0_RegisterBlock_7
                           1382  .globl Videopac_Subsong0DisarkPointerRegionEnd148
   0246                    1383 Videopac_Subsong0DisarkPointerRegionEnd148:
                           1384 
                           1385  .globl _Videopac_Subsong0DisarkByteRegionStart149
   0246                    1386 _Videopac_Subsong0DisarkByteRegionStart149:
   0246 06                 1387 	.byte 6	; Duration.
                           1388  .globl Videopac_Subsong0DisarkByteRegionEnd149
   0247                    1389 Videopac_Subsong0DisarkByteRegionEnd149:
                           1390  .globl _Videopac_Subsong0DisarkPointerRegionStart150
   0247                    1391 _Videopac_Subsong0DisarkPointerRegionStart150:
   0247 0A 41              1392 	.word _Videopac_Subsong0_RegisterBlock_91
                           1393  .globl Videopac_Subsong0DisarkPointerRegionEnd150
   0249                    1394 Videopac_Subsong0DisarkPointerRegionEnd150:
                           1395 
                           1396  .globl Videopac_Subsong0_Track_16
   0249                    1397 Videopac_Subsong0_Track_16:
                           1398  .globl _Videopac_Subsong0DisarkByteRegionStart151
   0249                    1399 _Videopac_Subsong0DisarkByteRegionStart151:
   0249 18                 1400 	.byte 24	; Duration.
                           1401  .globl Videopac_Subsong0DisarkByteRegionEnd151
   024A                    1402 Videopac_Subsong0DisarkByteRegionEnd151:
                           1403  .globl _Videopac_Subsong0DisarkPointerRegionStart152
   024A                    1404 _Videopac_Subsong0DisarkPointerRegionStart152:
   024A 0E 3F              1405 	.word _Videopac_Subsong0_RegisterBlock_69
                           1406  .globl Videopac_Subsong0DisarkPointerRegionEnd152
   024C                    1407 Videopac_Subsong0DisarkPointerRegionEnd152:
                           1408 
                           1409  .globl _Videopac_Subsong0DisarkByteRegionStart153
   024C                    1410 _Videopac_Subsong0DisarkByteRegionStart153:
   024C 30                 1411 	.byte 48	; Duration.
                           1412  .globl Videopac_Subsong0DisarkByteRegionEnd153
   024D                    1413 Videopac_Subsong0DisarkByteRegionEnd153:
                           1414  .globl _Videopac_Subsong0DisarkPointerRegionStart154
   024D                    1415 _Videopac_Subsong0DisarkPointerRegionStart154:
   024D 08 21              1416 	.word _Videopac_Subsong0_RegisterBlock_11
                           1417  .globl Videopac_Subsong0DisarkPointerRegionEnd154
   024F                    1418 Videopac_Subsong0DisarkPointerRegionEnd154:
                           1419 
                           1420  .globl _Videopac_Subsong0DisarkByteRegionStart155
   024F                    1421 _Videopac_Subsong0DisarkByteRegionStart155:
   024F 30                 1422 	.byte 48	; Duration.
                           1423  .globl Videopac_Subsong0DisarkByteRegionEnd155
   0250                    1424 Videopac_Subsong0DisarkByteRegionEnd155:
                           1425  .globl _Videopac_Subsong0DisarkPointerRegionStart156
   0250                    1426 _Videopac_Subsong0DisarkPointerRegionStart156:
   0250 08 5D              1427 	.word _Videopac_Subsong0_RegisterBlock_12
                           1428  .globl Videopac_Subsong0DisarkPointerRegionEnd156
   0252                    1429 Videopac_Subsong0DisarkPointerRegionEnd156:
                           1430 
                           1431  .globl _Videopac_Subsong0DisarkByteRegionStart157
   0252                    1432 _Videopac_Subsong0DisarkByteRegionStart157:
   0252 30                 1433 	.byte 48	; Duration.
                           1434  .globl Videopac_Subsong0DisarkByteRegionEnd157
   0253                    1435 Videopac_Subsong0DisarkByteRegionEnd157:
                           1436  .globl _Videopac_Subsong0DisarkPointerRegionStart158
   0253                    1437 _Videopac_Subsong0DisarkPointerRegionStart158:
   0253 08 99              1438 	.word _Videopac_Subsong0_RegisterBlock_13
                           1439  .globl Videopac_Subsong0DisarkPointerRegionEnd158
   0255                    1440 Videopac_Subsong0DisarkPointerRegionEnd158:
                           1441 
                           1442  .globl _Videopac_Subsong0DisarkByteRegionStart159
   0255                    1443 _Videopac_Subsong0DisarkByteRegionStart159:
   0255 30                 1444 	.byte 48	; Duration.
                           1445  .globl Videopac_Subsong0DisarkByteRegionEnd159
   0256                    1446 Videopac_Subsong0DisarkByteRegionEnd159:
                           1447  .globl _Videopac_Subsong0DisarkPointerRegionStart160
   0256                    1448 _Videopac_Subsong0DisarkPointerRegionStart160:
   0256 08 5D              1449 	.word _Videopac_Subsong0_RegisterBlock_12
                           1450  .globl Videopac_Subsong0DisarkPointerRegionEnd160
   0258                    1451 Videopac_Subsong0DisarkPointerRegionEnd160:
                           1452 
                           1453  .globl _Videopac_Subsong0DisarkByteRegionStart161
   0258                    1454 _Videopac_Subsong0DisarkByteRegionStart161:
   0258 30                 1455 	.byte 48	; Duration.
                           1456  .globl Videopac_Subsong0DisarkByteRegionEnd161
   0259                    1457 Videopac_Subsong0DisarkByteRegionEnd161:
                           1458  .globl _Videopac_Subsong0DisarkPointerRegionStart162
   0259                    1459 _Videopac_Subsong0DisarkPointerRegionStart162:
   0259 08 D5              1460 	.word _Videopac_Subsong0_RegisterBlock_15
                           1461  .globl Videopac_Subsong0DisarkPointerRegionEnd162
   025B                    1462 Videopac_Subsong0DisarkPointerRegionEnd162:
                           1463 
                           1464  .globl _Videopac_Subsong0DisarkByteRegionStart163
   025B                    1465 _Videopac_Subsong0DisarkByteRegionStart163:
   025B 30                 1466 	.byte 48	; Duration.
                           1467  .globl Videopac_Subsong0DisarkByteRegionEnd163
   025C                    1468 Videopac_Subsong0DisarkByteRegionEnd163:
                           1469  .globl _Videopac_Subsong0DisarkPointerRegionStart164
   025C                    1470 _Videopac_Subsong0DisarkPointerRegionStart164:
   025C 08 5D              1471 	.word _Videopac_Subsong0_RegisterBlock_12
                           1472  .globl Videopac_Subsong0DisarkPointerRegionEnd164
   025E                    1473 Videopac_Subsong0DisarkPointerRegionEnd164:
                           1474 
                           1475  .globl _Videopac_Subsong0DisarkByteRegionStart165
   025E                    1476 _Videopac_Subsong0DisarkByteRegionStart165:
   025E 30                 1477 	.byte 48	; Duration.
                           1478  .globl Videopac_Subsong0DisarkByteRegionEnd165
   025F                    1479 Videopac_Subsong0DisarkByteRegionEnd165:
                           1480  .globl _Videopac_Subsong0DisarkPointerRegionStart166
   025F                    1481 _Videopac_Subsong0DisarkPointerRegionStart166:
   025F 09 11              1482 	.word _Videopac_Subsong0_RegisterBlock_17
                           1483  .globl Videopac_Subsong0DisarkPointerRegionEnd166
   0261                    1484 Videopac_Subsong0DisarkPointerRegionEnd166:
                           1485 
                           1486  .globl _Videopac_Subsong0DisarkByteRegionStart167
   0261                    1487 _Videopac_Subsong0DisarkByteRegionStart167:
   0261 18                 1488 	.byte 24	; Duration.
                           1489  .globl Videopac_Subsong0DisarkByteRegionEnd167
   0262                    1490 Videopac_Subsong0DisarkByteRegionEnd167:
                           1491  .globl _Videopac_Subsong0DisarkPointerRegionStart168
   0262                    1492 _Videopac_Subsong0DisarkPointerRegionStart168:
   0262 0B 9B              1493 	.word _Videopac_Subsong0_RegisterBlock_101
                           1494  .globl Videopac_Subsong0DisarkPointerRegionEnd168
   0264                    1495 Videopac_Subsong0DisarkPointerRegionEnd168:
                           1496 
                           1497  .globl Videopac_Subsong0_Track_17
   0264                    1498 Videopac_Subsong0_Track_17:
                           1499  .globl _Videopac_Subsong0DisarkByteRegionStart169
   0264                    1500 _Videopac_Subsong0DisarkByteRegionStart169:
   0264 0C                 1501 	.byte 12	; Duration.
                           1502  .globl Videopac_Subsong0DisarkByteRegionEnd169
   0265                    1503 Videopac_Subsong0DisarkByteRegionEnd169:
                           1504  .globl _Videopac_Subsong0DisarkPointerRegionStart170
   0265                    1505 _Videopac_Subsong0DisarkPointerRegionStart170:
   0265 10 7E              1506 	.word _Videopac_Subsong0_RegisterBlock_79
                           1507  .globl Videopac_Subsong0DisarkPointerRegionEnd170
   0267                    1508 Videopac_Subsong0DisarkPointerRegionEnd170:
                           1509 
                           1510  .globl _Videopac_Subsong0DisarkByteRegionStart171
   0267                    1511 _Videopac_Subsong0DisarkByteRegionStart171:
   0267 30                 1512 	.byte 48	; Duration.
                           1513  .globl Videopac_Subsong0DisarkByteRegionEnd171
   0268                    1514 Videopac_Subsong0DisarkByteRegionEnd171:
                           1515  .globl _Videopac_Subsong0DisarkPointerRegionStart172
   0268                    1516 _Videopac_Subsong0DisarkPointerRegionStart172:
   0268 0A 05              1517 	.word _Videopac_Subsong0_RegisterBlock_80
                           1518  .globl Videopac_Subsong0DisarkPointerRegionEnd172
   026A                    1519 Videopac_Subsong0DisarkPointerRegionEnd172:
                           1520 
                           1521  .globl _Videopac_Subsong0DisarkByteRegionStart173
   026A                    1522 _Videopac_Subsong0DisarkByteRegionStart173:
   026A 30                 1523 	.byte 48	; Duration.
                           1524  .globl Videopac_Subsong0DisarkByteRegionEnd173
   026B                    1525 Videopac_Subsong0DisarkByteRegionEnd173:
                           1526  .globl _Videopac_Subsong0DisarkPointerRegionStart174
   026B                    1527 _Videopac_Subsong0DisarkPointerRegionStart174:
   026B 09 4D              1528 	.word _Videopac_Subsong0_RegisterBlock_21
                           1529  .globl Videopac_Subsong0DisarkPointerRegionEnd174
   026D                    1530 Videopac_Subsong0DisarkPointerRegionEnd174:
                           1531 
                           1532  .globl _Videopac_Subsong0DisarkByteRegionStart175
   026D                    1533 _Videopac_Subsong0DisarkByteRegionStart175:
   026D 30                 1534 	.byte 48	; Duration.
                           1535  .globl Videopac_Subsong0DisarkByteRegionEnd175
   026E                    1536 Videopac_Subsong0DisarkByteRegionEnd175:
                           1537  .globl _Videopac_Subsong0DisarkPointerRegionStart176
   026E                    1538 _Videopac_Subsong0DisarkPointerRegionStart176:
   026E 09 7B              1539 	.word _Videopac_Subsong0_RegisterBlock_22
                           1540  .globl Videopac_Subsong0DisarkPointerRegionEnd176
   0270                    1541 Videopac_Subsong0DisarkPointerRegionEnd176:
                           1542 
                           1543  .globl _Videopac_Subsong0DisarkByteRegionStart177
   0270                    1544 _Videopac_Subsong0DisarkByteRegionStart177:
   0270 30                 1545 	.byte 48	; Duration.
                           1546  .globl Videopac_Subsong0DisarkByteRegionEnd177
   0271                    1547 Videopac_Subsong0DisarkByteRegionEnd177:
                           1548  .globl _Videopac_Subsong0DisarkPointerRegionStart178
   0271                    1549 _Videopac_Subsong0DisarkPointerRegionStart178:
   0271 09 A9              1550 	.word _Videopac_Subsong0_RegisterBlock_23
                           1551  .globl Videopac_Subsong0DisarkPointerRegionEnd178
   0273                    1552 Videopac_Subsong0DisarkPointerRegionEnd178:
                           1553 
                           1554  .globl _Videopac_Subsong0DisarkByteRegionStart179
   0273                    1555 _Videopac_Subsong0DisarkByteRegionStart179:
   0273 30                 1556 	.byte 48	; Duration.
                           1557  .globl Videopac_Subsong0DisarkByteRegionEnd179
   0274                    1558 Videopac_Subsong0DisarkByteRegionEnd179:
                           1559  .globl _Videopac_Subsong0DisarkPointerRegionStart180
   0274                    1560 _Videopac_Subsong0DisarkPointerRegionStart180:
   0274 09 7B              1561 	.word _Videopac_Subsong0_RegisterBlock_22
                           1562  .globl Videopac_Subsong0DisarkPointerRegionEnd180
   0276                    1563 Videopac_Subsong0DisarkPointerRegionEnd180:
                           1564 
                           1565  .globl _Videopac_Subsong0DisarkByteRegionStart181
   0276                    1566 _Videopac_Subsong0DisarkByteRegionStart181:
   0276 30                 1567 	.byte 48	; Duration.
                           1568  .globl Videopac_Subsong0DisarkByteRegionEnd181
   0277                    1569 Videopac_Subsong0DisarkByteRegionEnd181:
                           1570  .globl _Videopac_Subsong0DisarkPointerRegionStart182
   0277                    1571 _Videopac_Subsong0DisarkPointerRegionStart182:
   0277 09 D7              1572 	.word _Videopac_Subsong0_RegisterBlock_25
                           1573  .globl Videopac_Subsong0DisarkPointerRegionEnd182
   0279                    1574 Videopac_Subsong0DisarkPointerRegionEnd182:
                           1575 
                           1576  .globl _Videopac_Subsong0DisarkByteRegionStart183
   0279                    1577 _Videopac_Subsong0DisarkByteRegionStart183:
   0279 30                 1578 	.byte 48	; Duration.
                           1579  .globl Videopac_Subsong0DisarkByteRegionEnd183
   027A                    1580 Videopac_Subsong0DisarkByteRegionEnd183:
                           1581  .globl _Videopac_Subsong0DisarkPointerRegionStart184
   027A                    1582 _Videopac_Subsong0DisarkPointerRegionStart184:
   027A 09 7B              1583 	.word _Videopac_Subsong0_RegisterBlock_22
                           1584  .globl Videopac_Subsong0DisarkPointerRegionEnd184
   027C                    1585 Videopac_Subsong0DisarkPointerRegionEnd184:
                           1586 
                           1587  .globl _Videopac_Subsong0DisarkByteRegionStart185
   027C                    1588 _Videopac_Subsong0DisarkByteRegionStart185:
   027C 24                 1589 	.byte 36	; Duration.
                           1590  .globl Videopac_Subsong0DisarkByteRegionEnd185
   027D                    1591 Videopac_Subsong0DisarkByteRegionEnd185:
                           1592  .globl _Videopac_Subsong0DisarkPointerRegionStart186
   027D                    1593 _Videopac_Subsong0DisarkPointerRegionStart186:
   027D 0D 03              1594 	.word _Videopac_Subsong0_RegisterBlock_111
                           1595  .globl Videopac_Subsong0DisarkPointerRegionEnd186
   027F                    1596 Videopac_Subsong0DisarkPointerRegionEnd186:
                           1597 
                           1598  .globl Videopac_Subsong0_Track_18
   027F                    1599 Videopac_Subsong0_Track_18:
                           1600  .globl _Videopac_Subsong0DisarkByteRegionStart187
   027F                    1601 _Videopac_Subsong0DisarkByteRegionStart187:
   027F 2A                 1602 	.byte 42	; Duration.
                           1603  .globl Videopac_Subsong0DisarkByteRegionEnd187
   0280                    1604 Videopac_Subsong0DisarkByteRegionEnd187:
                           1605  .globl _Videopac_Subsong0DisarkPointerRegionStart188
   0280                    1606 _Videopac_Subsong0DisarkPointerRegionStart188:
   0280 0D F3              1607 	.word _Videopac_Subsong0_RegisterBlock_59
                           1608  .globl Videopac_Subsong0DisarkPointerRegionEnd188
   0282                    1609 Videopac_Subsong0DisarkPointerRegionEnd188:
                           1610 
                           1611  .globl _Videopac_Subsong0DisarkByteRegionStart189
   0282                    1612 _Videopac_Subsong0DisarkByteRegionStart189:
   0282 30                 1613 	.byte 48	; Duration.
                           1614  .globl Videopac_Subsong0DisarkByteRegionEnd189
   0283                    1615 Videopac_Subsong0DisarkByteRegionEnd189:
                           1616  .globl _Videopac_Subsong0DisarkPointerRegionStart190
   0283                    1617 _Videopac_Subsong0DisarkPointerRegionStart190:
   0283 07 E5              1618 	.word _Videopac_Subsong0_RegisterBlock_7
                           1619  .globl Videopac_Subsong0DisarkPointerRegionEnd190
   0285                    1620 Videopac_Subsong0DisarkPointerRegionEnd190:
                           1621 
                           1622  .globl _Videopac_Subsong0DisarkByteRegionStart191
   0285                    1623 _Videopac_Subsong0DisarkByteRegionStart191:
   0285 30                 1624 	.byte 48	; Duration.
                           1625  .globl Videopac_Subsong0DisarkByteRegionEnd191
   0286                    1626 Videopac_Subsong0DisarkByteRegionEnd191:
                           1627  .globl _Videopac_Subsong0DisarkPointerRegionStart192
   0286                    1628 _Videopac_Subsong0DisarkPointerRegionStart192:
   0286 0A 41              1629 	.word _Videopac_Subsong0_RegisterBlock_91
                           1630  .globl Videopac_Subsong0DisarkPointerRegionEnd192
   0288                    1631 Videopac_Subsong0DisarkPointerRegionEnd192:
                           1632 
                           1633  .globl _Videopac_Subsong0DisarkByteRegionStart193
   0288                    1634 _Videopac_Subsong0DisarkByteRegionStart193:
   0288 30                 1635 	.byte 48	; Duration.
                           1636  .globl Videopac_Subsong0DisarkByteRegionEnd193
   0289                    1637 Videopac_Subsong0DisarkByteRegionEnd193:
                           1638  .globl _Videopac_Subsong0DisarkPointerRegionStart194
   0289                    1639 _Videopac_Subsong0DisarkPointerRegionStart194:
   0289 0A 6F              1640 	.word _Videopac_Subsong0_RegisterBlock_92
                           1641  .globl Videopac_Subsong0DisarkPointerRegionEnd194
   028B                    1642 Videopac_Subsong0DisarkPointerRegionEnd194:
                           1643 
                           1644  .globl _Videopac_Subsong0DisarkByteRegionStart195
   028B                    1645 _Videopac_Subsong0DisarkByteRegionStart195:
   028B 30                 1646 	.byte 48	; Duration.
                           1647  .globl Videopac_Subsong0DisarkByteRegionEnd195
   028C                    1648 Videopac_Subsong0DisarkByteRegionEnd195:
                           1649  .globl _Videopac_Subsong0DisarkPointerRegionStart196
   028C                    1650 _Videopac_Subsong0DisarkPointerRegionStart196:
   028C 0A AB              1651 	.word _Videopac_Subsong0_RegisterBlock_93
                           1652  .globl Videopac_Subsong0DisarkPointerRegionEnd196
   028E                    1653 Videopac_Subsong0DisarkPointerRegionEnd196:
                           1654 
                           1655  .globl _Videopac_Subsong0DisarkByteRegionStart197
   028E                    1656 _Videopac_Subsong0DisarkByteRegionStart197:
   028E 30                 1657 	.byte 48	; Duration.
                           1658  .globl Videopac_Subsong0DisarkByteRegionEnd197
   028F                    1659 Videopac_Subsong0DisarkByteRegionEnd197:
                           1660  .globl _Videopac_Subsong0DisarkPointerRegionStart198
   028F                    1661 _Videopac_Subsong0DisarkPointerRegionStart198:
   028F 0A E7              1662 	.word _Videopac_Subsong0_RegisterBlock_94
                           1663  .globl Videopac_Subsong0DisarkPointerRegionEnd198
   0291                    1664 Videopac_Subsong0DisarkPointerRegionEnd198:
                           1665 
                           1666  .globl _Videopac_Subsong0DisarkByteRegionStart199
   0291                    1667 _Videopac_Subsong0DisarkByteRegionStart199:
   0291 30                 1668 	.byte 48	; Duration.
                           1669  .globl Videopac_Subsong0DisarkByteRegionEnd199
   0292                    1670 Videopac_Subsong0DisarkByteRegionEnd199:
                           1671  .globl _Videopac_Subsong0DisarkPointerRegionStart200
   0292                    1672 _Videopac_Subsong0DisarkPointerRegionStart200:
   0292 0B 23              1673 	.word _Videopac_Subsong0_RegisterBlock_95
                           1674  .globl Videopac_Subsong0DisarkPointerRegionEnd200
   0294                    1675 Videopac_Subsong0DisarkPointerRegionEnd200:
                           1676 
                           1677  .globl _Videopac_Subsong0DisarkByteRegionStart201
   0294                    1678 _Videopac_Subsong0DisarkByteRegionStart201:
   0294 30                 1679 	.byte 48	; Duration.
                           1680  .globl Videopac_Subsong0DisarkByteRegionEnd201
   0295                    1681 Videopac_Subsong0DisarkByteRegionEnd201:
                           1682  .globl _Videopac_Subsong0DisarkPointerRegionStart202
   0295                    1683 _Videopac_Subsong0DisarkPointerRegionStart202:
   0295 0B 5F              1684 	.word _Videopac_Subsong0_RegisterBlock_96
                           1685  .globl Videopac_Subsong0DisarkPointerRegionEnd202
   0297                    1686 Videopac_Subsong0DisarkPointerRegionEnd202:
                           1687 
                           1688  .globl _Videopac_Subsong0DisarkByteRegionStart203
   0297                    1689 _Videopac_Subsong0DisarkByteRegionStart203:
   0297 06                 1690 	.byte 6	; Duration.
                           1691  .globl Videopac_Subsong0DisarkByteRegionEnd203
   0298                    1692 Videopac_Subsong0DisarkByteRegionEnd203:
                           1693  .globl _Videopac_Subsong0DisarkPointerRegionStart204
   0298                    1694 _Videopac_Subsong0DisarkPointerRegionStart204:
   0298 06 F5              1695 	.word _Videopac_Subsong0_RegisterBlock_1
                           1696  .globl Videopac_Subsong0DisarkPointerRegionEnd204
   029A                    1697 Videopac_Subsong0DisarkPointerRegionEnd204:
                           1698 
                           1699  .globl Videopac_Subsong0_Track_19
   029A                    1700 Videopac_Subsong0_Track_19:
                           1701  .globl _Videopac_Subsong0DisarkByteRegionStart205
   029A                    1702 _Videopac_Subsong0DisarkByteRegionStart205:
   029A 18                 1703 	.byte 24	; Duration.
                           1704  .globl Videopac_Subsong0DisarkByteRegionEnd205
   029B                    1705 Videopac_Subsong0DisarkByteRegionEnd205:
                           1706  .globl _Videopac_Subsong0DisarkPointerRegionStart206
   029B                    1707 _Videopac_Subsong0DisarkPointerRegionStart206:
   029B 0E 3F              1708 	.word _Videopac_Subsong0_RegisterBlock_69
                           1709  .globl Videopac_Subsong0DisarkPointerRegionEnd206
   029D                    1710 Videopac_Subsong0DisarkPointerRegionEnd206:
                           1711 
                           1712  .globl _Videopac_Subsong0DisarkByteRegionStart207
   029D                    1713 _Videopac_Subsong0DisarkByteRegionStart207:
   029D 30                 1714 	.byte 48	; Duration.
                           1715  .globl Videopac_Subsong0DisarkByteRegionEnd207
   029E                    1716 Videopac_Subsong0DisarkByteRegionEnd207:
                           1717  .globl _Videopac_Subsong0DisarkPointerRegionStart208
   029E                    1718 _Videopac_Subsong0DisarkPointerRegionStart208:
   029E 09 11              1719 	.word _Videopac_Subsong0_RegisterBlock_17
                           1720  .globl Videopac_Subsong0DisarkPointerRegionEnd208
   02A0                    1721 Videopac_Subsong0DisarkPointerRegionEnd208:
                           1722 
                           1723  .globl _Videopac_Subsong0DisarkByteRegionStart209
   02A0                    1724 _Videopac_Subsong0DisarkByteRegionStart209:
   02A0 30                 1725 	.byte 48	; Duration.
                           1726  .globl Videopac_Subsong0DisarkByteRegionEnd209
   02A1                    1727 Videopac_Subsong0DisarkByteRegionEnd209:
                           1728  .globl _Videopac_Subsong0DisarkPointerRegionStart210
   02A1                    1729 _Videopac_Subsong0DisarkPointerRegionStart210:
   02A1 0B 9B              1730 	.word _Videopac_Subsong0_RegisterBlock_101
                           1731  .globl Videopac_Subsong0DisarkPointerRegionEnd210
   02A3                    1732 Videopac_Subsong0DisarkPointerRegionEnd210:
                           1733 
                           1734  .globl _Videopac_Subsong0DisarkByteRegionStart211
   02A3                    1735 _Videopac_Subsong0DisarkByteRegionStart211:
   02A3 30                 1736 	.byte 48	; Duration.
                           1737  .globl Videopac_Subsong0DisarkByteRegionEnd211
   02A4                    1738 Videopac_Subsong0DisarkByteRegionEnd211:
                           1739  .globl _Videopac_Subsong0DisarkPointerRegionStart212
   02A4                    1740 _Videopac_Subsong0DisarkPointerRegionStart212:
   02A4 0B D7              1741 	.word _Videopac_Subsong0_RegisterBlock_102
                           1742  .globl Videopac_Subsong0DisarkPointerRegionEnd212
   02A6                    1743 Videopac_Subsong0DisarkPointerRegionEnd212:
                           1744 
                           1745  .globl _Videopac_Subsong0DisarkByteRegionStart213
   02A6                    1746 _Videopac_Subsong0DisarkByteRegionStart213:
   02A6 30                 1747 	.byte 48	; Duration.
                           1748  .globl Videopac_Subsong0DisarkByteRegionEnd213
   02A7                    1749 Videopac_Subsong0DisarkByteRegionEnd213:
                           1750  .globl _Videopac_Subsong0DisarkPointerRegionStart214
   02A7                    1751 _Videopac_Subsong0DisarkPointerRegionStart214:
   02A7 0C 13              1752 	.word _Videopac_Subsong0_RegisterBlock_103
                           1753  .globl Videopac_Subsong0DisarkPointerRegionEnd214
   02A9                    1754 Videopac_Subsong0DisarkPointerRegionEnd214:
                           1755 
                           1756  .globl _Videopac_Subsong0DisarkByteRegionStart215
   02A9                    1757 _Videopac_Subsong0DisarkByteRegionStart215:
   02A9 30                 1758 	.byte 48	; Duration.
                           1759  .globl Videopac_Subsong0DisarkByteRegionEnd215
   02AA                    1760 Videopac_Subsong0DisarkByteRegionEnd215:
                           1761  .globl _Videopac_Subsong0DisarkPointerRegionStart216
   02AA                    1762 _Videopac_Subsong0DisarkPointerRegionStart216:
   02AA 0C 4F              1763 	.word _Videopac_Subsong0_RegisterBlock_104
                           1764  .globl Videopac_Subsong0DisarkPointerRegionEnd216
   02AC                    1765 Videopac_Subsong0DisarkPointerRegionEnd216:
                           1766 
                           1767  .globl _Videopac_Subsong0DisarkByteRegionStart217
   02AC                    1768 _Videopac_Subsong0DisarkByteRegionStart217:
   02AC 30                 1769 	.byte 48	; Duration.
                           1770  .globl Videopac_Subsong0DisarkByteRegionEnd217
   02AD                    1771 Videopac_Subsong0DisarkByteRegionEnd217:
                           1772  .globl _Videopac_Subsong0DisarkPointerRegionStart218
   02AD                    1773 _Videopac_Subsong0DisarkPointerRegionStart218:
   02AD 0C 8B              1774 	.word _Videopac_Subsong0_RegisterBlock_105
                           1775  .globl Videopac_Subsong0DisarkPointerRegionEnd218
   02AF                    1776 Videopac_Subsong0DisarkPointerRegionEnd218:
                           1777 
                           1778  .globl _Videopac_Subsong0DisarkByteRegionStart219
   02AF                    1779 _Videopac_Subsong0DisarkByteRegionStart219:
   02AF 30                 1780 	.byte 48	; Duration.
                           1781  .globl Videopac_Subsong0DisarkByteRegionEnd219
   02B0                    1782 Videopac_Subsong0DisarkByteRegionEnd219:
                           1783  .globl _Videopac_Subsong0DisarkPointerRegionStart220
   02B0                    1784 _Videopac_Subsong0DisarkPointerRegionStart220:
   02B0 0C C7              1785 	.word _Videopac_Subsong0_RegisterBlock_106
                           1786  .globl Videopac_Subsong0DisarkPointerRegionEnd220
   02B2                    1787 Videopac_Subsong0DisarkPointerRegionEnd220:
                           1788 
                           1789  .globl _Videopac_Subsong0DisarkByteRegionStart221
   02B2                    1790 _Videopac_Subsong0DisarkByteRegionStart221:
   02B2 18                 1791 	.byte 24	; Duration.
                           1792  .globl Videopac_Subsong0DisarkByteRegionEnd221
   02B3                    1793 Videopac_Subsong0DisarkByteRegionEnd221:
                           1794  .globl _Videopac_Subsong0DisarkPointerRegionStart222
   02B3                    1795 _Videopac_Subsong0DisarkPointerRegionStart222:
   02B3 08 21              1796 	.word _Videopac_Subsong0_RegisterBlock_11
                           1797  .globl Videopac_Subsong0DisarkPointerRegionEnd222
   02B5                    1798 Videopac_Subsong0DisarkPointerRegionEnd222:
                           1799 
                           1800  .globl Videopac_Subsong0_Track_20
   02B5                    1801 Videopac_Subsong0_Track_20:
                           1802  .globl _Videopac_Subsong0DisarkByteRegionStart223
   02B5                    1803 _Videopac_Subsong0DisarkByteRegionStart223:
   02B5 0C                 1804 	.byte 12	; Duration.
                           1805  .globl Videopac_Subsong0DisarkByteRegionEnd223
   02B6                    1806 Videopac_Subsong0DisarkByteRegionEnd223:
                           1807  .globl _Videopac_Subsong0DisarkPointerRegionStart224
   02B6                    1808 _Videopac_Subsong0DisarkPointerRegionStart224:
   02B6 10 7E              1809 	.word _Videopac_Subsong0_RegisterBlock_79
                           1810  .globl Videopac_Subsong0DisarkPointerRegionEnd224
   02B8                    1811 Videopac_Subsong0DisarkPointerRegionEnd224:
                           1812 
                           1813  .globl _Videopac_Subsong0DisarkByteRegionStart225
   02B8                    1814 _Videopac_Subsong0DisarkByteRegionStart225:
   02B8 30                 1815 	.byte 48	; Duration.
                           1816  .globl Videopac_Subsong0DisarkByteRegionEnd225
   02B9                    1817 Videopac_Subsong0DisarkByteRegionEnd225:
                           1818  .globl _Videopac_Subsong0DisarkPointerRegionStart226
   02B9                    1819 _Videopac_Subsong0DisarkPointerRegionStart226:
   02B9 0A 05              1820 	.word _Videopac_Subsong0_RegisterBlock_80
                           1821  .globl Videopac_Subsong0DisarkPointerRegionEnd226
   02BB                    1822 Videopac_Subsong0DisarkPointerRegionEnd226:
                           1823 
                           1824  .globl _Videopac_Subsong0DisarkByteRegionStart227
   02BB                    1825 _Videopac_Subsong0DisarkByteRegionStart227:
   02BB 30                 1826 	.byte 48	; Duration.
                           1827  .globl Videopac_Subsong0DisarkByteRegionEnd227
   02BC                    1828 Videopac_Subsong0DisarkByteRegionEnd227:
                           1829  .globl _Videopac_Subsong0DisarkPointerRegionStart228
   02BC                    1830 _Videopac_Subsong0DisarkPointerRegionStart228:
   02BC 0D 03              1831 	.word _Videopac_Subsong0_RegisterBlock_111
                           1832  .globl Videopac_Subsong0DisarkPointerRegionEnd228
   02BE                    1833 Videopac_Subsong0DisarkPointerRegionEnd228:
                           1834 
                           1835  .globl _Videopac_Subsong0DisarkByteRegionStart229
   02BE                    1836 _Videopac_Subsong0DisarkByteRegionStart229:
   02BE 30                 1837 	.byte 48	; Duration.
                           1838  .globl Videopac_Subsong0DisarkByteRegionEnd229
   02BF                    1839 Videopac_Subsong0DisarkByteRegionEnd229:
                           1840  .globl _Videopac_Subsong0DisarkPointerRegionStart230
   02BF                    1841 _Videopac_Subsong0DisarkPointerRegionStart230:
   02BF 0A 05              1842 	.word _Videopac_Subsong0_RegisterBlock_80
                           1843  .globl Videopac_Subsong0DisarkPointerRegionEnd230
   02C1                    1844 Videopac_Subsong0DisarkPointerRegionEnd230:
                           1845 
                           1846  .globl _Videopac_Subsong0DisarkByteRegionStart231
   02C1                    1847 _Videopac_Subsong0DisarkByteRegionStart231:
   02C1 30                 1848 	.byte 48	; Duration.
                           1849  .globl Videopac_Subsong0DisarkByteRegionEnd231
   02C2                    1850 Videopac_Subsong0DisarkByteRegionEnd231:
                           1851  .globl _Videopac_Subsong0DisarkPointerRegionStart232
   02C2                    1852 _Videopac_Subsong0DisarkPointerRegionStart232:
   02C2 0D 31              1853 	.word _Videopac_Subsong0_RegisterBlock_113
                           1854  .globl Videopac_Subsong0DisarkPointerRegionEnd232
   02C4                    1855 Videopac_Subsong0DisarkPointerRegionEnd232:
                           1856 
                           1857  .globl _Videopac_Subsong0DisarkByteRegionStart233
   02C4                    1858 _Videopac_Subsong0DisarkByteRegionStart233:
   02C4 30                 1859 	.byte 48	; Duration.
                           1860  .globl Videopac_Subsong0DisarkByteRegionEnd233
   02C5                    1861 Videopac_Subsong0DisarkByteRegionEnd233:
                           1862  .globl _Videopac_Subsong0DisarkPointerRegionStart234
   02C5                    1863 _Videopac_Subsong0DisarkPointerRegionStart234:
   02C5 0D 5F              1864 	.word _Videopac_Subsong0_RegisterBlock_114
                           1865  .globl Videopac_Subsong0DisarkPointerRegionEnd234
   02C7                    1866 Videopac_Subsong0DisarkPointerRegionEnd234:
                           1867 
                           1868  .globl _Videopac_Subsong0DisarkByteRegionStart235
   02C7                    1869 _Videopac_Subsong0DisarkByteRegionStart235:
   02C7 30                 1870 	.byte 48	; Duration.
                           1871  .globl Videopac_Subsong0DisarkByteRegionEnd235
   02C8                    1872 Videopac_Subsong0DisarkByteRegionEnd235:
                           1873  .globl _Videopac_Subsong0DisarkPointerRegionStart236
   02C8                    1874 _Videopac_Subsong0DisarkPointerRegionStart236:
   02C8 0D 8D              1875 	.word _Videopac_Subsong0_RegisterBlock_115
                           1876  .globl Videopac_Subsong0DisarkPointerRegionEnd236
   02CA                    1877 Videopac_Subsong0DisarkPointerRegionEnd236:
                           1878 
                           1879  .globl _Videopac_Subsong0DisarkByteRegionStart237
   02CA                    1880 _Videopac_Subsong0DisarkByteRegionStart237:
   02CA 30                 1881 	.byte 48	; Duration.
                           1882  .globl Videopac_Subsong0DisarkByteRegionEnd237
   02CB                    1883 Videopac_Subsong0DisarkByteRegionEnd237:
                           1884  .globl _Videopac_Subsong0DisarkPointerRegionStart238
   02CB                    1885 _Videopac_Subsong0DisarkPointerRegionStart238:
   02CB 0D BB              1886 	.word _Videopac_Subsong0_RegisterBlock_116
                           1887  .globl Videopac_Subsong0DisarkPointerRegionEnd238
   02CD                    1888 Videopac_Subsong0DisarkPointerRegionEnd238:
                           1889 
                           1890  .globl _Videopac_Subsong0DisarkByteRegionStart239
   02CD                    1891 _Videopac_Subsong0DisarkByteRegionStart239:
   02CD 24                 1892 	.byte 36	; Duration.
                           1893  .globl Videopac_Subsong0DisarkByteRegionEnd239
   02CE                    1894 Videopac_Subsong0DisarkByteRegionEnd239:
                           1895  .globl _Videopac_Subsong0DisarkPointerRegionStart240
   02CE                    1896 _Videopac_Subsong0DisarkPointerRegionStart240:
   02CE 0D FF              1897 	.word _Videopac_Subsong0_RegisterBlock_117
                           1898  .globl Videopac_Subsong0DisarkPointerRegionEnd240
   02D0                    1899 Videopac_Subsong0DisarkPointerRegionEnd240:
                           1900 
                           1901  .globl Videopac_Subsong0_Track_21
   02D0                    1902 Videopac_Subsong0_Track_21:
                           1903  .globl _Videopac_Subsong0DisarkByteRegionStart241
   02D0                    1904 _Videopac_Subsong0DisarkByteRegionStart241:
   02D0 2A                 1905 	.byte 42	; Duration.
                           1906  .globl Videopac_Subsong0DisarkByteRegionEnd241
   02D1                    1907 Videopac_Subsong0DisarkByteRegionEnd241:
                           1908  .globl _Videopac_Subsong0DisarkPointerRegionStart242
   02D1                    1909 _Videopac_Subsong0DisarkPointerRegionStart242:
   02D1 0D ED              1910 	.word _Videopac_Subsong0_RegisterBlock_29
                           1911  .globl Videopac_Subsong0DisarkPointerRegionEnd242
   02D3                    1912 Videopac_Subsong0DisarkPointerRegionEnd242:
                           1913 
                           1914  .globl _Videopac_Subsong0DisarkByteRegionStart243
   02D3                    1915 _Videopac_Subsong0DisarkByteRegionStart243:
   02D3 30                 1916 	.byte 48	; Duration.
                           1917  .globl Videopac_Subsong0DisarkByteRegionEnd243
   02D4                    1918 Videopac_Subsong0DisarkByteRegionEnd243:
                           1919  .globl _Videopac_Subsong0DisarkPointerRegionStart244
   02D4                    1920 _Videopac_Subsong0DisarkPointerRegionStart244:
   02D4 07 E5              1921 	.word _Videopac_Subsong0_RegisterBlock_7
                           1922  .globl Videopac_Subsong0DisarkPointerRegionEnd244
   02D6                    1923 Videopac_Subsong0DisarkPointerRegionEnd244:
                           1924 
                           1925  .globl _Videopac_Subsong0DisarkByteRegionStart245
   02D6                    1926 _Videopac_Subsong0DisarkByteRegionStart245:
   02D6 30                 1927 	.byte 48	; Duration.
                           1928  .globl Videopac_Subsong0DisarkByteRegionEnd245
   02D7                    1929 Videopac_Subsong0DisarkByteRegionEnd245:
                           1930  .globl _Videopac_Subsong0DisarkPointerRegionStart246
   02D7                    1931 _Videopac_Subsong0DisarkPointerRegionStart246:
   02D7 0A 41              1932 	.word _Videopac_Subsong0_RegisterBlock_91
                           1933  .globl Videopac_Subsong0DisarkPointerRegionEnd246
   02D9                    1934 Videopac_Subsong0DisarkPointerRegionEnd246:
                           1935 
                           1936  .globl _Videopac_Subsong0DisarkByteRegionStart247
   02D9                    1937 _Videopac_Subsong0DisarkByteRegionStart247:
   02D9 30                 1938 	.byte 48	; Duration.
                           1939  .globl Videopac_Subsong0DisarkByteRegionEnd247
   02DA                    1940 Videopac_Subsong0DisarkByteRegionEnd247:
                           1941  .globl _Videopac_Subsong0DisarkPointerRegionStart248
   02DA                    1942 _Videopac_Subsong0DisarkPointerRegionStart248:
   02DA 0A 6F              1943 	.word _Videopac_Subsong0_RegisterBlock_92
                           1944  .globl Videopac_Subsong0DisarkPointerRegionEnd248
   02DC                    1945 Videopac_Subsong0DisarkPointerRegionEnd248:
                           1946 
                           1947  .globl _Videopac_Subsong0DisarkByteRegionStart249
   02DC                    1948 _Videopac_Subsong0DisarkByteRegionStart249:
   02DC 30                 1949 	.byte 48	; Duration.
                           1950  .globl Videopac_Subsong0DisarkByteRegionEnd249
   02DD                    1951 Videopac_Subsong0DisarkByteRegionEnd249:
                           1952  .globl _Videopac_Subsong0DisarkPointerRegionStart250
   02DD                    1953 _Videopac_Subsong0DisarkPointerRegionStart250:
   02DD 0A AB              1954 	.word _Videopac_Subsong0_RegisterBlock_93
                           1955  .globl Videopac_Subsong0DisarkPointerRegionEnd250
   02DF                    1956 Videopac_Subsong0DisarkPointerRegionEnd250:
                           1957 
                           1958  .globl _Videopac_Subsong0DisarkByteRegionStart251
   02DF                    1959 _Videopac_Subsong0DisarkByteRegionStart251:
   02DF 30                 1960 	.byte 48	; Duration.
                           1961  .globl Videopac_Subsong0DisarkByteRegionEnd251
   02E0                    1962 Videopac_Subsong0DisarkByteRegionEnd251:
                           1963  .globl _Videopac_Subsong0DisarkPointerRegionStart252
   02E0                    1964 _Videopac_Subsong0DisarkPointerRegionStart252:
   02E0 0A E7              1965 	.word _Videopac_Subsong0_RegisterBlock_94
                           1966  .globl Videopac_Subsong0DisarkPointerRegionEnd252
   02E2                    1967 Videopac_Subsong0DisarkPointerRegionEnd252:
                           1968 
                           1969  .globl _Videopac_Subsong0DisarkByteRegionStart253
   02E2                    1970 _Videopac_Subsong0DisarkByteRegionStart253:
   02E2 30                 1971 	.byte 48	; Duration.
                           1972  .globl Videopac_Subsong0DisarkByteRegionEnd253
   02E3                    1973 Videopac_Subsong0DisarkByteRegionEnd253:
                           1974  .globl _Videopac_Subsong0DisarkPointerRegionStart254
   02E3                    1975 _Videopac_Subsong0DisarkPointerRegionStart254:
   02E3 0B 23              1976 	.word _Videopac_Subsong0_RegisterBlock_95
                           1977  .globl Videopac_Subsong0DisarkPointerRegionEnd254
   02E5                    1978 Videopac_Subsong0DisarkPointerRegionEnd254:
                           1979 
                           1980  .globl _Videopac_Subsong0DisarkByteRegionStart255
   02E5                    1981 _Videopac_Subsong0DisarkByteRegionStart255:
   02E5 30                 1982 	.byte 48	; Duration.
                           1983  .globl Videopac_Subsong0DisarkByteRegionEnd255
   02E6                    1984 Videopac_Subsong0DisarkByteRegionEnd255:
                           1985  .globl _Videopac_Subsong0DisarkPointerRegionStart256
   02E6                    1986 _Videopac_Subsong0DisarkPointerRegionStart256:
   02E6 0B 5F              1987 	.word _Videopac_Subsong0_RegisterBlock_96
                           1988  .globl Videopac_Subsong0DisarkPointerRegionEnd256
   02E8                    1989 Videopac_Subsong0DisarkPointerRegionEnd256:
                           1990 
                           1991  .globl _Videopac_Subsong0DisarkByteRegionStart257
   02E8                    1992 _Videopac_Subsong0DisarkByteRegionStart257:
   02E8 06                 1993 	.byte 6	; Duration.
                           1994  .globl Videopac_Subsong0DisarkByteRegionEnd257
   02E9                    1995 Videopac_Subsong0DisarkByteRegionEnd257:
                           1996  .globl _Videopac_Subsong0DisarkPointerRegionStart258
   02E9                    1997 _Videopac_Subsong0DisarkPointerRegionStart258:
   02E9 06 F5              1998 	.word _Videopac_Subsong0_RegisterBlock_1
                           1999  .globl Videopac_Subsong0DisarkPointerRegionEnd258
   02EB                    2000 Videopac_Subsong0DisarkPointerRegionEnd258:
                           2001 
                           2002  .globl Videopac_Subsong0_Track_22
   02EB                    2003 Videopac_Subsong0_Track_22:
                           2004  .globl _Videopac_Subsong0DisarkByteRegionStart259
   02EB                    2005 _Videopac_Subsong0DisarkByteRegionStart259:
   02EB 18                 2006 	.byte 24	; Duration.
                           2007  .globl Videopac_Subsong0DisarkByteRegionEnd259
   02EC                    2008 Videopac_Subsong0DisarkByteRegionEnd259:
                           2009  .globl _Videopac_Subsong0DisarkPointerRegionStart260
   02EC                    2010 _Videopac_Subsong0DisarkPointerRegionStart260:
   02EC 0E 39              2011 	.word _Videopac_Subsong0_RegisterBlock_39
                           2012  .globl Videopac_Subsong0DisarkPointerRegionEnd260
   02EE                    2013 Videopac_Subsong0DisarkPointerRegionEnd260:
                           2014 
                           2015  .globl _Videopac_Subsong0DisarkByteRegionStart261
   02EE                    2016 _Videopac_Subsong0DisarkByteRegionStart261:
   02EE 30                 2017 	.byte 48	; Duration.
                           2018  .globl Videopac_Subsong0DisarkByteRegionEnd261
   02EF                    2019 Videopac_Subsong0DisarkByteRegionEnd261:
                           2020  .globl _Videopac_Subsong0DisarkPointerRegionStart262
   02EF                    2021 _Videopac_Subsong0DisarkPointerRegionStart262:
   02EF 09 11              2022 	.word _Videopac_Subsong0_RegisterBlock_17
                           2023  .globl Videopac_Subsong0DisarkPointerRegionEnd262
   02F1                    2024 Videopac_Subsong0DisarkPointerRegionEnd262:
                           2025 
                           2026  .globl _Videopac_Subsong0DisarkByteRegionStart263
   02F1                    2027 _Videopac_Subsong0DisarkByteRegionStart263:
   02F1 30                 2028 	.byte 48	; Duration.
                           2029  .globl Videopac_Subsong0DisarkByteRegionEnd263
   02F2                    2030 Videopac_Subsong0DisarkByteRegionEnd263:
                           2031  .globl _Videopac_Subsong0DisarkPointerRegionStart264
   02F2                    2032 _Videopac_Subsong0DisarkPointerRegionStart264:
   02F2 0B 9B              2033 	.word _Videopac_Subsong0_RegisterBlock_101
                           2034  .globl Videopac_Subsong0DisarkPointerRegionEnd264
   02F4                    2035 Videopac_Subsong0DisarkPointerRegionEnd264:
                           2036 
                           2037  .globl _Videopac_Subsong0DisarkByteRegionStart265
   02F4                    2038 _Videopac_Subsong0DisarkByteRegionStart265:
   02F4 30                 2039 	.byte 48	; Duration.
                           2040  .globl Videopac_Subsong0DisarkByteRegionEnd265
   02F5                    2041 Videopac_Subsong0DisarkByteRegionEnd265:
                           2042  .globl _Videopac_Subsong0DisarkPointerRegionStart266
   02F5                    2043 _Videopac_Subsong0DisarkPointerRegionStart266:
   02F5 0B D7              2044 	.word _Videopac_Subsong0_RegisterBlock_102
                           2045  .globl Videopac_Subsong0DisarkPointerRegionEnd266
   02F7                    2046 Videopac_Subsong0DisarkPointerRegionEnd266:
                           2047 
                           2048  .globl _Videopac_Subsong0DisarkByteRegionStart267
   02F7                    2049 _Videopac_Subsong0DisarkByteRegionStart267:
   02F7 30                 2050 	.byte 48	; Duration.
                           2051  .globl Videopac_Subsong0DisarkByteRegionEnd267
   02F8                    2052 Videopac_Subsong0DisarkByteRegionEnd267:
                           2053  .globl _Videopac_Subsong0DisarkPointerRegionStart268
   02F8                    2054 _Videopac_Subsong0DisarkPointerRegionStart268:
   02F8 0C 13              2055 	.word _Videopac_Subsong0_RegisterBlock_103
                           2056  .globl Videopac_Subsong0DisarkPointerRegionEnd268
   02FA                    2057 Videopac_Subsong0DisarkPointerRegionEnd268:
                           2058 
                           2059  .globl _Videopac_Subsong0DisarkByteRegionStart269
   02FA                    2060 _Videopac_Subsong0DisarkByteRegionStart269:
   02FA 30                 2061 	.byte 48	; Duration.
                           2062  .globl Videopac_Subsong0DisarkByteRegionEnd269
   02FB                    2063 Videopac_Subsong0DisarkByteRegionEnd269:
                           2064  .globl _Videopac_Subsong0DisarkPointerRegionStart270
   02FB                    2065 _Videopac_Subsong0DisarkPointerRegionStart270:
   02FB 0C 4F              2066 	.word _Videopac_Subsong0_RegisterBlock_104
                           2067  .globl Videopac_Subsong0DisarkPointerRegionEnd270
   02FD                    2068 Videopac_Subsong0DisarkPointerRegionEnd270:
                           2069 
                           2070  .globl _Videopac_Subsong0DisarkByteRegionStart271
   02FD                    2071 _Videopac_Subsong0DisarkByteRegionStart271:
   02FD 30                 2072 	.byte 48	; Duration.
                           2073  .globl Videopac_Subsong0DisarkByteRegionEnd271
   02FE                    2074 Videopac_Subsong0DisarkByteRegionEnd271:
                           2075  .globl _Videopac_Subsong0DisarkPointerRegionStart272
   02FE                    2076 _Videopac_Subsong0DisarkPointerRegionStart272:
   02FE 0C 8B              2077 	.word _Videopac_Subsong0_RegisterBlock_105
                           2078  .globl Videopac_Subsong0DisarkPointerRegionEnd272
   0300                    2079 Videopac_Subsong0DisarkPointerRegionEnd272:
                           2080 
                           2081  .globl _Videopac_Subsong0DisarkByteRegionStart273
   0300                    2082 _Videopac_Subsong0DisarkByteRegionStart273:
   0300 30                 2083 	.byte 48	; Duration.
                           2084  .globl Videopac_Subsong0DisarkByteRegionEnd273
   0301                    2085 Videopac_Subsong0DisarkByteRegionEnd273:
                           2086  .globl _Videopac_Subsong0DisarkPointerRegionStart274
   0301                    2087 _Videopac_Subsong0DisarkPointerRegionStart274:
   0301 0C C7              2088 	.word _Videopac_Subsong0_RegisterBlock_106
                           2089  .globl Videopac_Subsong0DisarkPointerRegionEnd274
   0303                    2090 Videopac_Subsong0DisarkPointerRegionEnd274:
                           2091 
                           2092  .globl _Videopac_Subsong0DisarkByteRegionStart275
   0303                    2093 _Videopac_Subsong0DisarkByteRegionStart275:
   0303 18                 2094 	.byte 24	; Duration.
                           2095  .globl Videopac_Subsong0DisarkByteRegionEnd275
   0304                    2096 Videopac_Subsong0DisarkByteRegionEnd275:
                           2097  .globl _Videopac_Subsong0DisarkPointerRegionStart276
   0304                    2098 _Videopac_Subsong0DisarkPointerRegionStart276:
   0304 08 21              2099 	.word _Videopac_Subsong0_RegisterBlock_11
                           2100  .globl Videopac_Subsong0DisarkPointerRegionEnd276
   0306                    2101 Videopac_Subsong0DisarkPointerRegionEnd276:
                           2102 
                           2103  .globl Videopac_Subsong0_Track_23
   0306                    2104 Videopac_Subsong0_Track_23:
                           2105  .globl _Videopac_Subsong0DisarkByteRegionStart277
   0306                    2106 _Videopac_Subsong0DisarkByteRegionStart277:
   0306 0C                 2107 	.byte 12	; Duration.
                           2108  .globl Videopac_Subsong0DisarkByteRegionEnd277
   0307                    2109 Videopac_Subsong0DisarkByteRegionEnd277:
                           2110  .globl _Videopac_Subsong0DisarkPointerRegionStart278
   0307                    2111 _Videopac_Subsong0DisarkPointerRegionStart278:
   0307 0E 25              2112 	.word _Videopac_Subsong0_RegisterBlock_149
                           2113  .globl Videopac_Subsong0DisarkPointerRegionEnd278
   0309                    2114 Videopac_Subsong0DisarkPointerRegionEnd278:
                           2115 
                           2116  .globl _Videopac_Subsong0DisarkByteRegionStart279
   0309                    2117 _Videopac_Subsong0DisarkByteRegionStart279:
   0309 30                 2118 	.byte 48	; Duration.
                           2119  .globl Videopac_Subsong0DisarkByteRegionEnd279
   030A                    2120 Videopac_Subsong0DisarkByteRegionEnd279:
                           2121  .globl _Videopac_Subsong0DisarkPointerRegionStart280
   030A                    2122 _Videopac_Subsong0DisarkPointerRegionStart280:
   030A 09 4D              2123 	.word _Videopac_Subsong0_RegisterBlock_21
                           2124  .globl Videopac_Subsong0DisarkPointerRegionEnd280
   030C                    2125 Videopac_Subsong0DisarkPointerRegionEnd280:
                           2126 
                           2127  .globl _Videopac_Subsong0DisarkByteRegionStart281
   030C                    2128 _Videopac_Subsong0DisarkByteRegionStart281:
   030C 30                 2129 	.byte 48	; Duration.
                           2130  .globl Videopac_Subsong0DisarkByteRegionEnd281
   030D                    2131 Videopac_Subsong0DisarkByteRegionEnd281:
                           2132  .globl _Videopac_Subsong0DisarkPointerRegionStart282
   030D                    2133 _Videopac_Subsong0DisarkPointerRegionStart282:
   030D 0D 03              2134 	.word _Videopac_Subsong0_RegisterBlock_111
                           2135  .globl Videopac_Subsong0DisarkPointerRegionEnd282
   030F                    2136 Videopac_Subsong0DisarkPointerRegionEnd282:
                           2137 
                           2138  .globl _Videopac_Subsong0DisarkByteRegionStart283
   030F                    2139 _Videopac_Subsong0DisarkByteRegionStart283:
   030F 30                 2140 	.byte 48	; Duration.
                           2141  .globl Videopac_Subsong0DisarkByteRegionEnd283
   0310                    2142 Videopac_Subsong0DisarkByteRegionEnd283:
                           2143  .globl _Videopac_Subsong0DisarkPointerRegionStart284
   0310                    2144 _Videopac_Subsong0DisarkPointerRegionStart284:
   0310 0A 05              2145 	.word _Videopac_Subsong0_RegisterBlock_80
                           2146  .globl Videopac_Subsong0DisarkPointerRegionEnd284
   0312                    2147 Videopac_Subsong0DisarkPointerRegionEnd284:
                           2148 
                           2149  .globl _Videopac_Subsong0DisarkByteRegionStart285
   0312                    2150 _Videopac_Subsong0DisarkByteRegionStart285:
   0312 30                 2151 	.byte 48	; Duration.
                           2152  .globl Videopac_Subsong0DisarkByteRegionEnd285
   0313                    2153 Videopac_Subsong0DisarkByteRegionEnd285:
                           2154  .globl _Videopac_Subsong0DisarkPointerRegionStart286
   0313                    2155 _Videopac_Subsong0DisarkPointerRegionStart286:
   0313 0D 31              2156 	.word _Videopac_Subsong0_RegisterBlock_113
                           2157  .globl Videopac_Subsong0DisarkPointerRegionEnd286
   0315                    2158 Videopac_Subsong0DisarkPointerRegionEnd286:
                           2159 
                           2160  .globl _Videopac_Subsong0DisarkByteRegionStart287
   0315                    2161 _Videopac_Subsong0DisarkByteRegionStart287:
   0315 30                 2162 	.byte 48	; Duration.
                           2163  .globl Videopac_Subsong0DisarkByteRegionEnd287
   0316                    2164 Videopac_Subsong0DisarkByteRegionEnd287:
                           2165  .globl _Videopac_Subsong0DisarkPointerRegionStart288
   0316                    2166 _Videopac_Subsong0DisarkPointerRegionStart288:
   0316 0D 5F              2167 	.word _Videopac_Subsong0_RegisterBlock_114
                           2168  .globl Videopac_Subsong0DisarkPointerRegionEnd288
   0318                    2169 Videopac_Subsong0DisarkPointerRegionEnd288:
                           2170 
                           2171  .globl _Videopac_Subsong0DisarkByteRegionStart289
   0318                    2172 _Videopac_Subsong0DisarkByteRegionStart289:
   0318 30                 2173 	.byte 48	; Duration.
                           2174  .globl Videopac_Subsong0DisarkByteRegionEnd289
   0319                    2175 Videopac_Subsong0DisarkByteRegionEnd289:
                           2176  .globl _Videopac_Subsong0DisarkPointerRegionStart290
   0319                    2177 _Videopac_Subsong0DisarkPointerRegionStart290:
   0319 0D 8D              2178 	.word _Videopac_Subsong0_RegisterBlock_115
                           2179  .globl Videopac_Subsong0DisarkPointerRegionEnd290
   031B                    2180 Videopac_Subsong0DisarkPointerRegionEnd290:
                           2181 
                           2182  .globl _Videopac_Subsong0DisarkByteRegionStart291
   031B                    2183 _Videopac_Subsong0DisarkByteRegionStart291:
   031B 30                 2184 	.byte 48	; Duration.
                           2185  .globl Videopac_Subsong0DisarkByteRegionEnd291
   031C                    2186 Videopac_Subsong0DisarkByteRegionEnd291:
                           2187  .globl _Videopac_Subsong0DisarkPointerRegionStart292
   031C                    2188 _Videopac_Subsong0DisarkPointerRegionStart292:
   031C 0D BB              2189 	.word _Videopac_Subsong0_RegisterBlock_116
                           2190  .globl Videopac_Subsong0DisarkPointerRegionEnd292
   031E                    2191 Videopac_Subsong0DisarkPointerRegionEnd292:
                           2192 
                           2193  .globl _Videopac_Subsong0DisarkByteRegionStart293
   031E                    2194 _Videopac_Subsong0DisarkByteRegionStart293:
   031E 24                 2195 	.byte 36	; Duration.
                           2196  .globl Videopac_Subsong0DisarkByteRegionEnd293
   031F                    2197 Videopac_Subsong0DisarkByteRegionEnd293:
                           2198  .globl _Videopac_Subsong0DisarkPointerRegionStart294
   031F                    2199 _Videopac_Subsong0DisarkPointerRegionStart294:
   031F 0D FF              2200 	.word _Videopac_Subsong0_RegisterBlock_117
                           2201  .globl Videopac_Subsong0DisarkPointerRegionEnd294
   0321                    2202 Videopac_Subsong0DisarkPointerRegionEnd294:
                           2203 
                           2204  .globl Videopac_Subsong0_Track_26
   0321                    2205 Videopac_Subsong0_Track_26:
                           2206  .globl _Videopac_Subsong0DisarkByteRegionStart295
   0321                    2207 _Videopac_Subsong0DisarkByteRegionStart295:
   0321 24                 2208 	.byte 36	; Duration.
                           2209  .globl Videopac_Subsong0DisarkByteRegionEnd295
   0322                    2210 Videopac_Subsong0DisarkByteRegionEnd295:
                           2211  .globl _Videopac_Subsong0DisarkPointerRegionStart296
   0322                    2212 _Videopac_Subsong0DisarkPointerRegionStart296:
   0322 0E 25              2213 	.word _Videopac_Subsong0_RegisterBlock_149
                           2214  .globl Videopac_Subsong0DisarkPointerRegionEnd296
   0324                    2215 Videopac_Subsong0DisarkPointerRegionEnd296:
                           2216 
                           2217  .globl _Videopac_Subsong0DisarkByteRegionStart297
   0324                    2218 _Videopac_Subsong0DisarkByteRegionStart297:
   0324 18                 2219 	.byte 24	; Duration.
                           2220  .globl Videopac_Subsong0DisarkByteRegionEnd297
   0325                    2221 Videopac_Subsong0DisarkByteRegionEnd297:
                           2222  .globl _Videopac_Subsong0DisarkPointerRegionStart298
   0325                    2223 _Videopac_Subsong0DisarkPointerRegionStart298:
   0325 0E 45              2224 	.word _Videopac_Subsong0_RegisterBlock_150
                           2225  .globl Videopac_Subsong0DisarkPointerRegionEnd298
   0327                    2226 Videopac_Subsong0DisarkPointerRegionEnd298:
                           2227 
                           2228  .globl _Videopac_Subsong0DisarkByteRegionStart299
   0327                    2229 _Videopac_Subsong0DisarkByteRegionStart299:
   0327 30                 2230 	.byte 48	; Duration.
                           2231  .globl Videopac_Subsong0DisarkByteRegionEnd299
   0328                    2232 Videopac_Subsong0DisarkByteRegionEnd299:
                           2233  .globl _Videopac_Subsong0DisarkPointerRegionStart300
   0328                    2234 _Videopac_Subsong0DisarkPointerRegionStart300:
   0328 09 4D              2235 	.word _Videopac_Subsong0_RegisterBlock_21
                           2236  .globl Videopac_Subsong0DisarkPointerRegionEnd300
   032A                    2237 Videopac_Subsong0DisarkPointerRegionEnd300:
                           2238 
                           2239  .globl _Videopac_Subsong0DisarkByteRegionStart301
   032A                    2240 _Videopac_Subsong0DisarkByteRegionStart301:
   032A 18                 2241 	.byte 24	; Duration.
                           2242  .globl Videopac_Subsong0DisarkByteRegionEnd301
   032B                    2243 Videopac_Subsong0DisarkByteRegionEnd301:
                           2244  .globl _Videopac_Subsong0DisarkPointerRegionStart302
   032B                    2245 _Videopac_Subsong0DisarkPointerRegionStart302:
   032B 09 7B              2246 	.word _Videopac_Subsong0_RegisterBlock_22
                           2247  .globl Videopac_Subsong0DisarkPointerRegionEnd302
   032D                    2248 Videopac_Subsong0DisarkPointerRegionEnd302:
                           2249 
                           2250  .globl _Videopac_Subsong0DisarkByteRegionStart303
   032D                    2251 _Videopac_Subsong0DisarkByteRegionStart303:
   032D 18                 2252 	.byte 24	; Duration.
                           2253  .globl Videopac_Subsong0DisarkByteRegionEnd303
   032E                    2254 Videopac_Subsong0DisarkByteRegionEnd303:
                           2255  .globl _Videopac_Subsong0DisarkPointerRegionStart304
   032E                    2256 _Videopac_Subsong0DisarkPointerRegionStart304:
   032E 0E 45              2257 	.word _Videopac_Subsong0_RegisterBlock_150
                           2258  .globl Videopac_Subsong0DisarkPointerRegionEnd304
   0330                    2259 Videopac_Subsong0DisarkPointerRegionEnd304:
                           2260 
                           2261  .globl _Videopac_Subsong0DisarkByteRegionStart305
   0330                    2262 _Videopac_Subsong0DisarkByteRegionStart305:
   0330 30                 2263 	.byte 48	; Duration.
                           2264  .globl Videopac_Subsong0DisarkByteRegionEnd305
   0331                    2265 Videopac_Subsong0DisarkByteRegionEnd305:
                           2266  .globl _Videopac_Subsong0DisarkPointerRegionStart306
   0331                    2267 _Videopac_Subsong0DisarkPointerRegionStart306:
   0331 09 A9              2268 	.word _Videopac_Subsong0_RegisterBlock_23
                           2269  .globl Videopac_Subsong0DisarkPointerRegionEnd306
   0333                    2270 Videopac_Subsong0DisarkPointerRegionEnd306:
                           2271 
                           2272  .globl _Videopac_Subsong0DisarkByteRegionStart307
   0333                    2273 _Videopac_Subsong0DisarkByteRegionStart307:
   0333 18                 2274 	.byte 24	; Duration.
                           2275  .globl Videopac_Subsong0DisarkByteRegionEnd307
   0334                    2276 Videopac_Subsong0DisarkByteRegionEnd307:
                           2277  .globl _Videopac_Subsong0DisarkPointerRegionStart308
   0334                    2278 _Videopac_Subsong0DisarkPointerRegionStart308:
   0334 09 7B              2279 	.word _Videopac_Subsong0_RegisterBlock_22
                           2280  .globl Videopac_Subsong0DisarkPointerRegionEnd308
   0336                    2281 Videopac_Subsong0DisarkPointerRegionEnd308:
                           2282 
                           2283  .globl _Videopac_Subsong0DisarkByteRegionStart309
   0336                    2284 _Videopac_Subsong0DisarkByteRegionStart309:
   0336 18                 2285 	.byte 24	; Duration.
                           2286  .globl Videopac_Subsong0DisarkByteRegionEnd309
   0337                    2287 Videopac_Subsong0DisarkByteRegionEnd309:
                           2288  .globl _Videopac_Subsong0DisarkPointerRegionStart310
   0337                    2289 _Videopac_Subsong0DisarkPointerRegionStart310:
   0337 0E 45              2290 	.word _Videopac_Subsong0_RegisterBlock_150
                           2291  .globl Videopac_Subsong0DisarkPointerRegionEnd310
   0339                    2292 Videopac_Subsong0DisarkPointerRegionEnd310:
                           2293 
                           2294  .globl _Videopac_Subsong0DisarkByteRegionStart311
   0339                    2295 _Videopac_Subsong0DisarkByteRegionStart311:
   0339 30                 2296 	.byte 48	; Duration.
                           2297  .globl Videopac_Subsong0DisarkByteRegionEnd311
   033A                    2298 Videopac_Subsong0DisarkByteRegionEnd311:
                           2299  .globl _Videopac_Subsong0DisarkPointerRegionStart312
   033A                    2300 _Videopac_Subsong0DisarkPointerRegionStart312:
   033A 09 D7              2301 	.word _Videopac_Subsong0_RegisterBlock_25
                           2302  .globl Videopac_Subsong0DisarkPointerRegionEnd312
   033C                    2303 Videopac_Subsong0DisarkPointerRegionEnd312:
                           2304 
                           2305  .globl _Videopac_Subsong0DisarkByteRegionStart313
   033C                    2306 _Videopac_Subsong0DisarkByteRegionStart313:
   033C 18                 2307 	.byte 24	; Duration.
                           2308  .globl Videopac_Subsong0DisarkByteRegionEnd313
   033D                    2309 Videopac_Subsong0DisarkByteRegionEnd313:
                           2310  .globl _Videopac_Subsong0DisarkPointerRegionStart314
   033D                    2311 _Videopac_Subsong0DisarkPointerRegionStart314:
   033D 09 7B              2312 	.word _Videopac_Subsong0_RegisterBlock_22
                           2313  .globl Videopac_Subsong0DisarkPointerRegionEnd314
   033F                    2314 Videopac_Subsong0DisarkPointerRegionEnd314:
                           2315 
                           2316  .globl _Videopac_Subsong0DisarkByteRegionStart315
   033F                    2317 _Videopac_Subsong0DisarkByteRegionStart315:
   033F 18                 2318 	.byte 24	; Duration.
                           2319  .globl Videopac_Subsong0DisarkByteRegionEnd315
   0340                    2320 Videopac_Subsong0DisarkByteRegionEnd315:
                           2321  .globl _Videopac_Subsong0DisarkPointerRegionStart316
   0340                    2322 _Videopac_Subsong0DisarkPointerRegionStart316:
   0340 0E 45              2323 	.word _Videopac_Subsong0_RegisterBlock_150
                           2324  .globl Videopac_Subsong0DisarkPointerRegionEnd316
   0342                    2325 Videopac_Subsong0DisarkPointerRegionEnd316:
                           2326 
                           2327  .globl _Videopac_Subsong0DisarkByteRegionStart317
   0342                    2328 _Videopac_Subsong0DisarkByteRegionStart317:
   0342 24                 2329 	.byte 36	; Duration.
                           2330  .globl Videopac_Subsong0DisarkByteRegionEnd317
   0343                    2331 Videopac_Subsong0DisarkByteRegionEnd317:
                           2332  .globl _Videopac_Subsong0DisarkPointerRegionStart318
   0343                    2333 _Videopac_Subsong0DisarkPointerRegionStart318:
   0343 0D 03              2334 	.word _Videopac_Subsong0_RegisterBlock_111
                           2335  .globl Videopac_Subsong0DisarkPointerRegionEnd318
   0345                    2336 Videopac_Subsong0DisarkPointerRegionEnd318:
                           2337 
                           2338  .globl Videopac_Subsong0_Track_36
   0345                    2339 Videopac_Subsong0_Track_36:
                           2340  .globl _Videopac_Subsong0DisarkByteRegionStart319
   0345                    2341 _Videopac_Subsong0DisarkByteRegionStart319:
   0345 12                 2342 	.byte 18	; Duration.
                           2343  .globl Videopac_Subsong0DisarkByteRegionEnd319
   0346                    2344 Videopac_Subsong0DisarkByteRegionEnd319:
                           2345  .globl _Videopac_Subsong0DisarkPointerRegionStart320
   0346                    2346 _Videopac_Subsong0DisarkPointerRegionStart320:
   0346 0D ED              2347 	.word _Videopac_Subsong0_RegisterBlock_29
                           2348  .globl Videopac_Subsong0DisarkPointerRegionEnd320
   0348                    2349 Videopac_Subsong0DisarkPointerRegionEnd320:
                           2350 
                           2351  .globl _Videopac_Subsong0DisarkByteRegionStart321
   0348                    2352 _Videopac_Subsong0DisarkByteRegionStart321:
   0348 18                 2353 	.byte 24	; Duration.
                           2354  .globl Videopac_Subsong0DisarkByteRegionEnd321
   0349                    2355 Videopac_Subsong0DisarkByteRegionEnd321:
                           2356  .globl _Videopac_Subsong0DisarkPointerRegionStart322
   0349                    2357 _Videopac_Subsong0DisarkPointerRegionStart322:
   0349 0E 67              2358 	.word _Videopac_Subsong0_RegisterBlock_163
                           2359  .globl Videopac_Subsong0DisarkPointerRegionEnd322
   034B                    2360 Videopac_Subsong0DisarkPointerRegionEnd322:
                           2361 
                           2362  .globl _Videopac_Subsong0DisarkByteRegionStart323
   034B                    2363 _Videopac_Subsong0DisarkByteRegionStart323:
   034B 30                 2364 	.byte 48	; Duration.
                           2365  .globl Videopac_Subsong0DisarkByteRegionEnd323
   034C                    2366 Videopac_Subsong0DisarkByteRegionEnd323:
                           2367  .globl _Videopac_Subsong0DisarkPointerRegionStart324
   034C                    2368 _Videopac_Subsong0DisarkPointerRegionStart324:
   034C 06 F5              2369 	.word _Videopac_Subsong0_RegisterBlock_1
                           2370  .globl Videopac_Subsong0DisarkPointerRegionEnd324
   034E                    2371 Videopac_Subsong0DisarkPointerRegionEnd324:
                           2372 
                           2373  .globl _Videopac_Subsong0DisarkByteRegionStart325
   034E                    2374 _Videopac_Subsong0DisarkByteRegionStart325:
   034E 18                 2375 	.byte 24	; Duration.
                           2376  .globl Videopac_Subsong0DisarkByteRegionEnd325
   034F                    2377 Videopac_Subsong0DisarkByteRegionEnd325:
                           2378  .globl _Videopac_Subsong0DisarkPointerRegionStart326
   034F                    2379 _Videopac_Subsong0DisarkPointerRegionStart326:
   034F 07 31              2380 	.word _Videopac_Subsong0_RegisterBlock_2
                           2381  .globl Videopac_Subsong0DisarkPointerRegionEnd326
   0351                    2382 Videopac_Subsong0DisarkPointerRegionEnd326:
                           2383 
                           2384  .globl _Videopac_Subsong0DisarkByteRegionStart327
   0351                    2385 _Videopac_Subsong0DisarkByteRegionStart327:
   0351 18                 2386 	.byte 24	; Duration.
                           2387  .globl Videopac_Subsong0DisarkByteRegionEnd327
   0352                    2388 Videopac_Subsong0DisarkByteRegionEnd327:
                           2389  .globl _Videopac_Subsong0DisarkPointerRegionStart328
   0352                    2390 _Videopac_Subsong0DisarkPointerRegionStart328:
   0352 0E 67              2391 	.word _Videopac_Subsong0_RegisterBlock_163
                           2392  .globl Videopac_Subsong0DisarkPointerRegionEnd328
   0354                    2393 Videopac_Subsong0DisarkPointerRegionEnd328:
                           2394 
                           2395  .globl _Videopac_Subsong0DisarkByteRegionStart329
   0354                    2396 _Videopac_Subsong0DisarkByteRegionStart329:
   0354 30                 2397 	.byte 48	; Duration.
                           2398  .globl Videopac_Subsong0DisarkByteRegionEnd329
   0355                    2399 Videopac_Subsong0DisarkByteRegionEnd329:
                           2400  .globl _Videopac_Subsong0DisarkPointerRegionStart330
   0355                    2401 _Videopac_Subsong0DisarkPointerRegionStart330:
   0355 07 6D              2402 	.word _Videopac_Subsong0_RegisterBlock_3
                           2403  .globl Videopac_Subsong0DisarkPointerRegionEnd330
   0357                    2404 Videopac_Subsong0DisarkPointerRegionEnd330:
                           2405 
                           2406  .globl _Videopac_Subsong0DisarkByteRegionStart331
   0357                    2407 _Videopac_Subsong0DisarkByteRegionStart331:
   0357 18                 2408 	.byte 24	; Duration.
                           2409  .globl Videopac_Subsong0DisarkByteRegionEnd331
   0358                    2410 Videopac_Subsong0DisarkByteRegionEnd331:
                           2411  .globl _Videopac_Subsong0DisarkPointerRegionStart332
   0358                    2412 _Videopac_Subsong0DisarkPointerRegionStart332:
   0358 07 31              2413 	.word _Videopac_Subsong0_RegisterBlock_2
                           2414  .globl Videopac_Subsong0DisarkPointerRegionEnd332
   035A                    2415 Videopac_Subsong0DisarkPointerRegionEnd332:
                           2416 
                           2417  .globl _Videopac_Subsong0DisarkByteRegionStart333
   035A                    2418 _Videopac_Subsong0DisarkByteRegionStart333:
   035A 18                 2419 	.byte 24	; Duration.
                           2420  .globl Videopac_Subsong0DisarkByteRegionEnd333
   035B                    2421 Videopac_Subsong0DisarkByteRegionEnd333:
                           2422  .globl _Videopac_Subsong0DisarkPointerRegionStart334
   035B                    2423 _Videopac_Subsong0DisarkPointerRegionStart334:
   035B 0E 67              2424 	.word _Videopac_Subsong0_RegisterBlock_163
                           2425  .globl Videopac_Subsong0DisarkPointerRegionEnd334
   035D                    2426 Videopac_Subsong0DisarkPointerRegionEnd334:
                           2427 
                           2428  .globl _Videopac_Subsong0DisarkByteRegionStart335
   035D                    2429 _Videopac_Subsong0DisarkByteRegionStart335:
   035D 30                 2430 	.byte 48	; Duration.
                           2431  .globl Videopac_Subsong0DisarkByteRegionEnd335
   035E                    2432 Videopac_Subsong0DisarkByteRegionEnd335:
                           2433  .globl _Videopac_Subsong0DisarkPointerRegionStart336
   035E                    2434 _Videopac_Subsong0DisarkPointerRegionStart336:
   035E 07 A9              2435 	.word _Videopac_Subsong0_RegisterBlock_5
                           2436  .globl Videopac_Subsong0DisarkPointerRegionEnd336
   0360                    2437 Videopac_Subsong0DisarkPointerRegionEnd336:
                           2438 
                           2439  .globl _Videopac_Subsong0DisarkByteRegionStart337
   0360                    2440 _Videopac_Subsong0DisarkByteRegionStart337:
   0360 18                 2441 	.byte 24	; Duration.
                           2442  .globl Videopac_Subsong0DisarkByteRegionEnd337
   0361                    2443 Videopac_Subsong0DisarkByteRegionEnd337:
                           2444  .globl _Videopac_Subsong0DisarkPointerRegionStart338
   0361                    2445 _Videopac_Subsong0DisarkPointerRegionStart338:
   0361 07 31              2446 	.word _Videopac_Subsong0_RegisterBlock_2
                           2447  .globl Videopac_Subsong0DisarkPointerRegionEnd338
   0363                    2448 Videopac_Subsong0DisarkPointerRegionEnd338:
                           2449 
                           2450  .globl _Videopac_Subsong0DisarkByteRegionStart339
   0363                    2451 _Videopac_Subsong0DisarkByteRegionStart339:
   0363 18                 2452 	.byte 24	; Duration.
                           2453  .globl Videopac_Subsong0DisarkByteRegionEnd339
   0364                    2454 Videopac_Subsong0DisarkByteRegionEnd339:
                           2455  .globl _Videopac_Subsong0DisarkPointerRegionStart340
   0364                    2456 _Videopac_Subsong0DisarkPointerRegionStart340:
   0364 0E 67              2457 	.word _Videopac_Subsong0_RegisterBlock_163
                           2458  .globl Videopac_Subsong0DisarkPointerRegionEnd340
   0366                    2459 Videopac_Subsong0DisarkPointerRegionEnd340:
                           2460 
                           2461  .globl _Videopac_Subsong0DisarkByteRegionStart341
   0366                    2462 _Videopac_Subsong0DisarkByteRegionStart341:
   0366 30                 2463 	.byte 48	; Duration.
                           2464  .globl Videopac_Subsong0DisarkByteRegionEnd341
   0367                    2465 Videopac_Subsong0DisarkByteRegionEnd341:
                           2466  .globl _Videopac_Subsong0DisarkPointerRegionStart342
   0367                    2467 _Videopac_Subsong0DisarkPointerRegionStart342:
   0367 07 E5              2468 	.word _Videopac_Subsong0_RegisterBlock_7
                           2469  .globl Videopac_Subsong0DisarkPointerRegionEnd342
   0369                    2470 Videopac_Subsong0DisarkPointerRegionEnd342:
                           2471 
                           2472  .globl _Videopac_Subsong0DisarkByteRegionStart343
   0369                    2473 _Videopac_Subsong0DisarkByteRegionStart343:
   0369 06                 2474 	.byte 6	; Duration.
                           2475  .globl Videopac_Subsong0DisarkByteRegionEnd343
   036A                    2476 Videopac_Subsong0DisarkByteRegionEnd343:
                           2477  .globl _Videopac_Subsong0DisarkPointerRegionStart344
   036A                    2478 _Videopac_Subsong0DisarkPointerRegionStart344:
   036A 0A 41              2479 	.word _Videopac_Subsong0_RegisterBlock_91
                           2480  .globl Videopac_Subsong0DisarkPointerRegionEnd344
   036C                    2481 Videopac_Subsong0DisarkPointerRegionEnd344:
                           2482 
                           2483  .globl Videopac_Subsong0_Track_38
   036C                    2484 Videopac_Subsong0_Track_38:
                           2485  .globl _Videopac_Subsong0DisarkByteRegionStart345
   036C                    2486 _Videopac_Subsong0DisarkByteRegionStart345:
   036C 0C                 2487 	.byte 12	; Duration.
                           2488  .globl Videopac_Subsong0DisarkByteRegionEnd345
   036D                    2489 Videopac_Subsong0DisarkByteRegionEnd345:
                           2490  .globl _Videopac_Subsong0DisarkPointerRegionStart346
   036D                    2491 _Videopac_Subsong0DisarkPointerRegionStart346:
   036D 0E 25              2492 	.word _Videopac_Subsong0_RegisterBlock_149
                           2493  .globl Videopac_Subsong0DisarkPointerRegionEnd346
   036F                    2494 Videopac_Subsong0DisarkPointerRegionEnd346:
                           2495 
                           2496  .globl _Videopac_Subsong0DisarkByteRegionStart347
   036F                    2497 _Videopac_Subsong0DisarkByteRegionStart347:
   036F 18                 2498 	.byte 24	; Duration.
                           2499  .globl Videopac_Subsong0DisarkByteRegionEnd347
   0370                    2500 Videopac_Subsong0DisarkByteRegionEnd347:
                           2501  .globl _Videopac_Subsong0DisarkPointerRegionStart348
   0370                    2502 _Videopac_Subsong0DisarkPointerRegionStart348:
   0370 09 4D              2503 	.word _Videopac_Subsong0_RegisterBlock_21
                           2504  .globl Videopac_Subsong0DisarkPointerRegionEnd348
   0372                    2505 Videopac_Subsong0DisarkPointerRegionEnd348:
                           2506 
                           2507  .globl _Videopac_Subsong0DisarkByteRegionStart349
   0372                    2508 _Videopac_Subsong0DisarkByteRegionStart349:
   0372 18                 2509 	.byte 24	; Duration.
                           2510  .globl Videopac_Subsong0DisarkByteRegionEnd349
   0373                    2511 Videopac_Subsong0DisarkByteRegionEnd349:
                           2512  .globl _Videopac_Subsong0DisarkPointerRegionStart350
   0373                    2513 _Videopac_Subsong0DisarkPointerRegionStart350:
   0373 0E 45              2514 	.word _Videopac_Subsong0_RegisterBlock_150
                           2515  .globl Videopac_Subsong0DisarkPointerRegionEnd350
   0375                    2516 Videopac_Subsong0DisarkPointerRegionEnd350:
                           2517 
                           2518  .globl _Videopac_Subsong0DisarkByteRegionStart351
   0375                    2519 _Videopac_Subsong0DisarkByteRegionStart351:
   0375 30                 2520 	.byte 48	; Duration.
                           2521  .globl Videopac_Subsong0DisarkByteRegionEnd351
   0376                    2522 Videopac_Subsong0DisarkByteRegionEnd351:
                           2523  .globl _Videopac_Subsong0DisarkPointerRegionStart352
   0376                    2524 _Videopac_Subsong0DisarkPointerRegionStart352:
   0376 09 4D              2525 	.word _Videopac_Subsong0_RegisterBlock_21
                           2526  .globl Videopac_Subsong0DisarkPointerRegionEnd352
   0378                    2527 Videopac_Subsong0DisarkPointerRegionEnd352:
                           2528 
                           2529  .globl _Videopac_Subsong0DisarkByteRegionStart353
   0378                    2530 _Videopac_Subsong0DisarkByteRegionStart353:
   0378 18                 2531 	.byte 24	; Duration.
                           2532  .globl Videopac_Subsong0DisarkByteRegionEnd353
   0379                    2533 Videopac_Subsong0DisarkByteRegionEnd353:
                           2534  .globl _Videopac_Subsong0DisarkPointerRegionStart354
   0379                    2535 _Videopac_Subsong0DisarkPointerRegionStart354:
   0379 09 7B              2536 	.word _Videopac_Subsong0_RegisterBlock_22
                           2537  .globl Videopac_Subsong0DisarkPointerRegionEnd354
   037B                    2538 Videopac_Subsong0DisarkPointerRegionEnd354:
                           2539 
                           2540  .globl _Videopac_Subsong0DisarkByteRegionStart355
   037B                    2541 _Videopac_Subsong0DisarkByteRegionStart355:
   037B 18                 2542 	.byte 24	; Duration.
                           2543  .globl Videopac_Subsong0DisarkByteRegionEnd355
   037C                    2544 Videopac_Subsong0DisarkByteRegionEnd355:
                           2545  .globl _Videopac_Subsong0DisarkPointerRegionStart356
   037C                    2546 _Videopac_Subsong0DisarkPointerRegionStart356:
   037C 0E 45              2547 	.word _Videopac_Subsong0_RegisterBlock_150
                           2548  .globl Videopac_Subsong0DisarkPointerRegionEnd356
   037E                    2549 Videopac_Subsong0DisarkPointerRegionEnd356:
                           2550 
                           2551  .globl _Videopac_Subsong0DisarkByteRegionStart357
   037E                    2552 _Videopac_Subsong0DisarkByteRegionStart357:
   037E 30                 2553 	.byte 48	; Duration.
                           2554  .globl Videopac_Subsong0DisarkByteRegionEnd357
   037F                    2555 Videopac_Subsong0DisarkByteRegionEnd357:
                           2556  .globl _Videopac_Subsong0DisarkPointerRegionStart358
   037F                    2557 _Videopac_Subsong0DisarkPointerRegionStart358:
   037F 09 A9              2558 	.word _Videopac_Subsong0_RegisterBlock_23
                           2559  .globl Videopac_Subsong0DisarkPointerRegionEnd358
   0381                    2560 Videopac_Subsong0DisarkPointerRegionEnd358:
                           2561 
                           2562  .globl _Videopac_Subsong0DisarkByteRegionStart359
   0381                    2563 _Videopac_Subsong0DisarkByteRegionStart359:
   0381 18                 2564 	.byte 24	; Duration.
                           2565  .globl Videopac_Subsong0DisarkByteRegionEnd359
   0382                    2566 Videopac_Subsong0DisarkByteRegionEnd359:
                           2567  .globl _Videopac_Subsong0DisarkPointerRegionStart360
   0382                    2568 _Videopac_Subsong0DisarkPointerRegionStart360:
   0382 09 7B              2569 	.word _Videopac_Subsong0_RegisterBlock_22
                           2570  .globl Videopac_Subsong0DisarkPointerRegionEnd360
   0384                    2571 Videopac_Subsong0DisarkPointerRegionEnd360:
                           2572 
                           2573  .globl _Videopac_Subsong0DisarkByteRegionStart361
   0384                    2574 _Videopac_Subsong0DisarkByteRegionStart361:
   0384 18                 2575 	.byte 24	; Duration.
                           2576  .globl Videopac_Subsong0DisarkByteRegionEnd361
   0385                    2577 Videopac_Subsong0DisarkByteRegionEnd361:
                           2578  .globl _Videopac_Subsong0DisarkPointerRegionStart362
   0385                    2579 _Videopac_Subsong0DisarkPointerRegionStart362:
   0385 0E 45              2580 	.word _Videopac_Subsong0_RegisterBlock_150
                           2581  .globl Videopac_Subsong0DisarkPointerRegionEnd362
   0387                    2582 Videopac_Subsong0DisarkPointerRegionEnd362:
                           2583 
                           2584  .globl _Videopac_Subsong0DisarkByteRegionStart363
   0387                    2585 _Videopac_Subsong0DisarkByteRegionStart363:
   0387 30                 2586 	.byte 48	; Duration.
                           2587  .globl Videopac_Subsong0DisarkByteRegionEnd363
   0388                    2588 Videopac_Subsong0DisarkByteRegionEnd363:
                           2589  .globl _Videopac_Subsong0DisarkPointerRegionStart364
   0388                    2590 _Videopac_Subsong0DisarkPointerRegionStart364:
   0388 09 D7              2591 	.word _Videopac_Subsong0_RegisterBlock_25
                           2592  .globl Videopac_Subsong0DisarkPointerRegionEnd364
   038A                    2593 Videopac_Subsong0DisarkPointerRegionEnd364:
                           2594 
                           2595  .globl _Videopac_Subsong0DisarkByteRegionStart365
   038A                    2596 _Videopac_Subsong0DisarkByteRegionStart365:
   038A 18                 2597 	.byte 24	; Duration.
                           2598  .globl Videopac_Subsong0DisarkByteRegionEnd365
   038B                    2599 Videopac_Subsong0DisarkByteRegionEnd365:
                           2600  .globl _Videopac_Subsong0DisarkPointerRegionStart366
   038B                    2601 _Videopac_Subsong0DisarkPointerRegionStart366:
   038B 09 7B              2602 	.word _Videopac_Subsong0_RegisterBlock_22
                           2603  .globl Videopac_Subsong0DisarkPointerRegionEnd366
   038D                    2604 Videopac_Subsong0DisarkPointerRegionEnd366:
                           2605 
                           2606  .globl _Videopac_Subsong0DisarkByteRegionStart367
   038D                    2607 _Videopac_Subsong0DisarkByteRegionStart367:
   038D 18                 2608 	.byte 24	; Duration.
                           2609  .globl Videopac_Subsong0DisarkByteRegionEnd367
   038E                    2610 Videopac_Subsong0DisarkByteRegionEnd367:
                           2611  .globl _Videopac_Subsong0DisarkPointerRegionStart368
   038E                    2612 _Videopac_Subsong0DisarkPointerRegionStart368:
   038E 0E 45              2613 	.word _Videopac_Subsong0_RegisterBlock_150
                           2614  .globl Videopac_Subsong0DisarkPointerRegionEnd368
   0390                    2615 Videopac_Subsong0DisarkPointerRegionEnd368:
                           2616 
                           2617  .globl _Videopac_Subsong0DisarkByteRegionStart369
   0390                    2618 _Videopac_Subsong0DisarkByteRegionStart369:
   0390 24                 2619 	.byte 36	; Duration.
                           2620  .globl Videopac_Subsong0DisarkByteRegionEnd369
   0391                    2621 Videopac_Subsong0DisarkByteRegionEnd369:
                           2622  .globl _Videopac_Subsong0DisarkPointerRegionStart370
   0391                    2623 _Videopac_Subsong0DisarkPointerRegionStart370:
   0391 0D 03              2624 	.word _Videopac_Subsong0_RegisterBlock_111
                           2625  .globl Videopac_Subsong0DisarkPointerRegionEnd370
   0393                    2626 Videopac_Subsong0DisarkPointerRegionEnd370:
                           2627 
                           2628  .globl Videopac_Subsong0_Track_39
   0393                    2629 Videopac_Subsong0_Track_39:
                           2630  .globl _Videopac_Subsong0DisarkByteRegionStart371
   0393                    2631 _Videopac_Subsong0DisarkByteRegionStart371:
   0393 12                 2632 	.byte 18	; Duration.
                           2633  .globl Videopac_Subsong0DisarkByteRegionEnd371
   0394                    2634 Videopac_Subsong0DisarkByteRegionEnd371:
                           2635  .globl _Videopac_Subsong0DisarkPointerRegionStart372
   0394                    2636 _Videopac_Subsong0DisarkPointerRegionStart372:
   0394 0D F3              2637 	.word _Videopac_Subsong0_RegisterBlock_59
                           2638  .globl Videopac_Subsong0DisarkPointerRegionEnd372
   0396                    2639 Videopac_Subsong0DisarkPointerRegionEnd372:
                           2640 
                           2641  .globl _Videopac_Subsong0DisarkByteRegionStart373
   0396                    2642 _Videopac_Subsong0DisarkByteRegionStart373:
   0396 18                 2643 	.byte 24	; Duration.
                           2644  .globl Videopac_Subsong0DisarkByteRegionEnd373
   0397                    2645 Videopac_Subsong0DisarkByteRegionEnd373:
                           2646  .globl _Videopac_Subsong0DisarkPointerRegionStart374
   0397                    2647 _Videopac_Subsong0DisarkPointerRegionStart374:
   0397 0E 67              2648 	.word _Videopac_Subsong0_RegisterBlock_163
                           2649  .globl Videopac_Subsong0DisarkPointerRegionEnd374
   0399                    2650 Videopac_Subsong0DisarkPointerRegionEnd374:
                           2651 
                           2652  .globl _Videopac_Subsong0DisarkByteRegionStart375
   0399                    2653 _Videopac_Subsong0DisarkByteRegionStart375:
   0399 30                 2654 	.byte 48	; Duration.
                           2655  .globl Videopac_Subsong0DisarkByteRegionEnd375
   039A                    2656 Videopac_Subsong0DisarkByteRegionEnd375:
                           2657  .globl _Videopac_Subsong0DisarkPointerRegionStart376
   039A                    2658 _Videopac_Subsong0DisarkPointerRegionStart376:
   039A 06 F5              2659 	.word _Videopac_Subsong0_RegisterBlock_1
                           2660  .globl Videopac_Subsong0DisarkPointerRegionEnd376
   039C                    2661 Videopac_Subsong0DisarkPointerRegionEnd376:
                           2662 
                           2663  .globl _Videopac_Subsong0DisarkByteRegionStart377
   039C                    2664 _Videopac_Subsong0DisarkByteRegionStart377:
   039C 18                 2665 	.byte 24	; Duration.
                           2666  .globl Videopac_Subsong0DisarkByteRegionEnd377
   039D                    2667 Videopac_Subsong0DisarkByteRegionEnd377:
                           2668  .globl _Videopac_Subsong0DisarkPointerRegionStart378
   039D                    2669 _Videopac_Subsong0DisarkPointerRegionStart378:
   039D 07 31              2670 	.word _Videopac_Subsong0_RegisterBlock_2
                           2671  .globl Videopac_Subsong0DisarkPointerRegionEnd378
   039F                    2672 Videopac_Subsong0DisarkPointerRegionEnd378:
                           2673 
                           2674  .globl _Videopac_Subsong0DisarkByteRegionStart379
   039F                    2675 _Videopac_Subsong0DisarkByteRegionStart379:
   039F 18                 2676 	.byte 24	; Duration.
                           2677  .globl Videopac_Subsong0DisarkByteRegionEnd379
   03A0                    2678 Videopac_Subsong0DisarkByteRegionEnd379:
                           2679  .globl _Videopac_Subsong0DisarkPointerRegionStart380
   03A0                    2680 _Videopac_Subsong0DisarkPointerRegionStart380:
   03A0 0E 67              2681 	.word _Videopac_Subsong0_RegisterBlock_163
                           2682  .globl Videopac_Subsong0DisarkPointerRegionEnd380
   03A2                    2683 Videopac_Subsong0DisarkPointerRegionEnd380:
                           2684 
                           2685  .globl _Videopac_Subsong0DisarkByteRegionStart381
   03A2                    2686 _Videopac_Subsong0DisarkByteRegionStart381:
   03A2 30                 2687 	.byte 48	; Duration.
                           2688  .globl Videopac_Subsong0DisarkByteRegionEnd381
   03A3                    2689 Videopac_Subsong0DisarkByteRegionEnd381:
                           2690  .globl _Videopac_Subsong0DisarkPointerRegionStart382
   03A3                    2691 _Videopac_Subsong0DisarkPointerRegionStart382:
   03A3 07 6D              2692 	.word _Videopac_Subsong0_RegisterBlock_3
                           2693  .globl Videopac_Subsong0DisarkPointerRegionEnd382
   03A5                    2694 Videopac_Subsong0DisarkPointerRegionEnd382:
                           2695 
                           2696  .globl _Videopac_Subsong0DisarkByteRegionStart383
   03A5                    2697 _Videopac_Subsong0DisarkByteRegionStart383:
   03A5 18                 2698 	.byte 24	; Duration.
                           2699  .globl Videopac_Subsong0DisarkByteRegionEnd383
   03A6                    2700 Videopac_Subsong0DisarkByteRegionEnd383:
                           2701  .globl _Videopac_Subsong0DisarkPointerRegionStart384
   03A6                    2702 _Videopac_Subsong0DisarkPointerRegionStart384:
   03A6 07 31              2703 	.word _Videopac_Subsong0_RegisterBlock_2
                           2704  .globl Videopac_Subsong0DisarkPointerRegionEnd384
   03A8                    2705 Videopac_Subsong0DisarkPointerRegionEnd384:
                           2706 
                           2707  .globl _Videopac_Subsong0DisarkByteRegionStart385
   03A8                    2708 _Videopac_Subsong0DisarkByteRegionStart385:
   03A8 18                 2709 	.byte 24	; Duration.
                           2710  .globl Videopac_Subsong0DisarkByteRegionEnd385
   03A9                    2711 Videopac_Subsong0DisarkByteRegionEnd385:
                           2712  .globl _Videopac_Subsong0DisarkPointerRegionStart386
   03A9                    2713 _Videopac_Subsong0DisarkPointerRegionStart386:
   03A9 0E 67              2714 	.word _Videopac_Subsong0_RegisterBlock_163
                           2715  .globl Videopac_Subsong0DisarkPointerRegionEnd386
   03AB                    2716 Videopac_Subsong0DisarkPointerRegionEnd386:
                           2717 
                           2718  .globl _Videopac_Subsong0DisarkByteRegionStart387
   03AB                    2719 _Videopac_Subsong0DisarkByteRegionStart387:
   03AB 30                 2720 	.byte 48	; Duration.
                           2721  .globl Videopac_Subsong0DisarkByteRegionEnd387
   03AC                    2722 Videopac_Subsong0DisarkByteRegionEnd387:
                           2723  .globl _Videopac_Subsong0DisarkPointerRegionStart388
   03AC                    2724 _Videopac_Subsong0DisarkPointerRegionStart388:
   03AC 07 A9              2725 	.word _Videopac_Subsong0_RegisterBlock_5
                           2726  .globl Videopac_Subsong0DisarkPointerRegionEnd388
   03AE                    2727 Videopac_Subsong0DisarkPointerRegionEnd388:
                           2728 
                           2729  .globl _Videopac_Subsong0DisarkByteRegionStart389
   03AE                    2730 _Videopac_Subsong0DisarkByteRegionStart389:
   03AE 18                 2731 	.byte 24	; Duration.
                           2732  .globl Videopac_Subsong0DisarkByteRegionEnd389
   03AF                    2733 Videopac_Subsong0DisarkByteRegionEnd389:
                           2734  .globl _Videopac_Subsong0DisarkPointerRegionStart390
   03AF                    2735 _Videopac_Subsong0DisarkPointerRegionStart390:
   03AF 07 31              2736 	.word _Videopac_Subsong0_RegisterBlock_2
                           2737  .globl Videopac_Subsong0DisarkPointerRegionEnd390
   03B1                    2738 Videopac_Subsong0DisarkPointerRegionEnd390:
                           2739 
                           2740  .globl _Videopac_Subsong0DisarkByteRegionStart391
   03B1                    2741 _Videopac_Subsong0DisarkByteRegionStart391:
   03B1 18                 2742 	.byte 24	; Duration.
                           2743  .globl Videopac_Subsong0DisarkByteRegionEnd391
   03B2                    2744 Videopac_Subsong0DisarkByteRegionEnd391:
                           2745  .globl _Videopac_Subsong0DisarkPointerRegionStart392
   03B2                    2746 _Videopac_Subsong0DisarkPointerRegionStart392:
   03B2 0E 67              2747 	.word _Videopac_Subsong0_RegisterBlock_163
                           2748  .globl Videopac_Subsong0DisarkPointerRegionEnd392
   03B4                    2749 Videopac_Subsong0DisarkPointerRegionEnd392:
                           2750 
                           2751  .globl _Videopac_Subsong0DisarkByteRegionStart393
   03B4                    2752 _Videopac_Subsong0DisarkByteRegionStart393:
   03B4 30                 2753 	.byte 48	; Duration.
                           2754  .globl Videopac_Subsong0DisarkByteRegionEnd393
   03B5                    2755 Videopac_Subsong0DisarkByteRegionEnd393:
                           2756  .globl _Videopac_Subsong0DisarkPointerRegionStart394
   03B5                    2757 _Videopac_Subsong0DisarkPointerRegionStart394:
   03B5 07 E5              2758 	.word _Videopac_Subsong0_RegisterBlock_7
                           2759  .globl Videopac_Subsong0DisarkPointerRegionEnd394
   03B7                    2760 Videopac_Subsong0DisarkPointerRegionEnd394:
                           2761 
                           2762  .globl _Videopac_Subsong0DisarkByteRegionStart395
   03B7                    2763 _Videopac_Subsong0DisarkByteRegionStart395:
   03B7 06                 2764 	.byte 6	; Duration.
                           2765  .globl Videopac_Subsong0DisarkByteRegionEnd395
   03B8                    2766 Videopac_Subsong0DisarkByteRegionEnd395:
                           2767  .globl _Videopac_Subsong0DisarkPointerRegionStart396
   03B8                    2768 _Videopac_Subsong0DisarkPointerRegionStart396:
   03B8 0A 41              2769 	.word _Videopac_Subsong0_RegisterBlock_91
                           2770  .globl Videopac_Subsong0DisarkPointerRegionEnd396
   03BA                    2771 Videopac_Subsong0DisarkPointerRegionEnd396:
                           2772 
                           2773  .globl Videopac_Subsong0_Track_40
   03BA                    2774 Videopac_Subsong0_Track_40:
                           2775  .globl _Videopac_Subsong0DisarkByteRegionStart397
   03BA                    2776 _Videopac_Subsong0DisarkByteRegionStart397:
   03BA 18                 2777 	.byte 24	; Duration.
                           2778  .globl Videopac_Subsong0DisarkByteRegionEnd397
   03BB                    2779 Videopac_Subsong0DisarkByteRegionEnd397:
                           2780  .globl _Videopac_Subsong0DisarkPointerRegionStart398
   03BB                    2781 _Videopac_Subsong0DisarkPointerRegionStart398:
   03BB 0E 87              2782 	.word _Videopac_Subsong0_RegisterBlock_204
                           2783  .globl Videopac_Subsong0DisarkPointerRegionEnd398
   03BD                    2784 Videopac_Subsong0DisarkPointerRegionEnd398:
                           2785 
                           2786  .globl _Videopac_Subsong0DisarkByteRegionStart399
   03BD                    2787 _Videopac_Subsong0DisarkByteRegionStart399:
   03BD 30                 2788 	.byte 48	; Duration.
                           2789  .globl Videopac_Subsong0DisarkByteRegionEnd399
   03BE                    2790 Videopac_Subsong0DisarkByteRegionEnd399:
                           2791  .globl _Videopac_Subsong0DisarkPointerRegionStart400
   03BE                    2792 _Videopac_Subsong0DisarkPointerRegionStart400:
   03BE 08 21              2793 	.word _Videopac_Subsong0_RegisterBlock_11
                           2794  .globl Videopac_Subsong0DisarkPointerRegionEnd400
   03C0                    2795 Videopac_Subsong0DisarkPointerRegionEnd400:
                           2796 
                           2797  .globl _Videopac_Subsong0DisarkByteRegionStart401
   03C0                    2798 _Videopac_Subsong0DisarkByteRegionStart401:
   03C0 18                 2799 	.byte 24	; Duration.
                           2800  .globl Videopac_Subsong0DisarkByteRegionEnd401
   03C1                    2801 Videopac_Subsong0DisarkByteRegionEnd401:
                           2802  .globl _Videopac_Subsong0DisarkPointerRegionStart402
   03C1                    2803 _Videopac_Subsong0DisarkPointerRegionStart402:
   03C1 08 5D              2804 	.word _Videopac_Subsong0_RegisterBlock_12
                           2805  .globl Videopac_Subsong0DisarkPointerRegionEnd402
   03C3                    2806 Videopac_Subsong0DisarkPointerRegionEnd402:
                           2807 
                           2808  .globl _Videopac_Subsong0DisarkByteRegionStart403
   03C3                    2809 _Videopac_Subsong0DisarkByteRegionStart403:
   03C3 18                 2810 	.byte 24	; Duration.
                           2811  .globl Videopac_Subsong0DisarkByteRegionEnd403
   03C4                    2812 Videopac_Subsong0DisarkByteRegionEnd403:
                           2813  .globl _Videopac_Subsong0DisarkPointerRegionStart404
   03C4                    2814 _Videopac_Subsong0DisarkPointerRegionStart404:
   03C4 0E 87              2815 	.word _Videopac_Subsong0_RegisterBlock_204
                           2816  .globl Videopac_Subsong0DisarkPointerRegionEnd404
   03C6                    2817 Videopac_Subsong0DisarkPointerRegionEnd404:
                           2818 
                           2819  .globl _Videopac_Subsong0DisarkByteRegionStart405
   03C6                    2820 _Videopac_Subsong0DisarkByteRegionStart405:
   03C6 30                 2821 	.byte 48	; Duration.
                           2822  .globl Videopac_Subsong0DisarkByteRegionEnd405
   03C7                    2823 Videopac_Subsong0DisarkByteRegionEnd405:
                           2824  .globl _Videopac_Subsong0DisarkPointerRegionStart406
   03C7                    2825 _Videopac_Subsong0DisarkPointerRegionStart406:
   03C7 08 99              2826 	.word _Videopac_Subsong0_RegisterBlock_13
                           2827  .globl Videopac_Subsong0DisarkPointerRegionEnd406
   03C9                    2828 Videopac_Subsong0DisarkPointerRegionEnd406:
                           2829 
                           2830  .globl _Videopac_Subsong0DisarkByteRegionStart407
   03C9                    2831 _Videopac_Subsong0DisarkByteRegionStart407:
   03C9 18                 2832 	.byte 24	; Duration.
                           2833  .globl Videopac_Subsong0DisarkByteRegionEnd407
   03CA                    2834 Videopac_Subsong0DisarkByteRegionEnd407:
                           2835  .globl _Videopac_Subsong0DisarkPointerRegionStart408
   03CA                    2836 _Videopac_Subsong0DisarkPointerRegionStart408:
   03CA 08 5D              2837 	.word _Videopac_Subsong0_RegisterBlock_12
                           2838  .globl Videopac_Subsong0DisarkPointerRegionEnd408
   03CC                    2839 Videopac_Subsong0DisarkPointerRegionEnd408:
                           2840 
                           2841  .globl _Videopac_Subsong0DisarkByteRegionStart409
   03CC                    2842 _Videopac_Subsong0DisarkByteRegionStart409:
   03CC 18                 2843 	.byte 24	; Duration.
                           2844  .globl Videopac_Subsong0DisarkByteRegionEnd409
   03CD                    2845 Videopac_Subsong0DisarkByteRegionEnd409:
                           2846  .globl _Videopac_Subsong0DisarkPointerRegionStart410
   03CD                    2847 _Videopac_Subsong0DisarkPointerRegionStart410:
   03CD 0E 87              2848 	.word _Videopac_Subsong0_RegisterBlock_204
                           2849  .globl Videopac_Subsong0DisarkPointerRegionEnd410
   03CF                    2850 Videopac_Subsong0DisarkPointerRegionEnd410:
                           2851 
                           2852  .globl _Videopac_Subsong0DisarkByteRegionStart411
   03CF                    2853 _Videopac_Subsong0DisarkByteRegionStart411:
   03CF 30                 2854 	.byte 48	; Duration.
                           2855  .globl Videopac_Subsong0DisarkByteRegionEnd411
   03D0                    2856 Videopac_Subsong0DisarkByteRegionEnd411:
                           2857  .globl _Videopac_Subsong0DisarkPointerRegionStart412
   03D0                    2858 _Videopac_Subsong0DisarkPointerRegionStart412:
   03D0 08 D5              2859 	.word _Videopac_Subsong0_RegisterBlock_15
                           2860  .globl Videopac_Subsong0DisarkPointerRegionEnd412
   03D2                    2861 Videopac_Subsong0DisarkPointerRegionEnd412:
                           2862 
                           2863  .globl _Videopac_Subsong0DisarkByteRegionStart413
   03D2                    2864 _Videopac_Subsong0DisarkByteRegionStart413:
   03D2 18                 2865 	.byte 24	; Duration.
                           2866  .globl Videopac_Subsong0DisarkByteRegionEnd413
   03D3                    2867 Videopac_Subsong0DisarkByteRegionEnd413:
                           2868  .globl _Videopac_Subsong0DisarkPointerRegionStart414
   03D3                    2869 _Videopac_Subsong0DisarkPointerRegionStart414:
   03D3 08 5D              2870 	.word _Videopac_Subsong0_RegisterBlock_12
                           2871  .globl Videopac_Subsong0DisarkPointerRegionEnd414
   03D5                    2872 Videopac_Subsong0DisarkPointerRegionEnd414:
                           2873 
                           2874  .globl _Videopac_Subsong0DisarkByteRegionStart415
   03D5                    2875 _Videopac_Subsong0DisarkByteRegionStart415:
   03D5 18                 2876 	.byte 24	; Duration.
                           2877  .globl Videopac_Subsong0DisarkByteRegionEnd415
   03D6                    2878 Videopac_Subsong0DisarkByteRegionEnd415:
                           2879  .globl _Videopac_Subsong0DisarkPointerRegionStart416
   03D6                    2880 _Videopac_Subsong0DisarkPointerRegionStart416:
   03D6 0E 87              2881 	.word _Videopac_Subsong0_RegisterBlock_204
                           2882  .globl Videopac_Subsong0DisarkPointerRegionEnd416
   03D8                    2883 Videopac_Subsong0DisarkPointerRegionEnd416:
                           2884 
                           2885  .globl _Videopac_Subsong0DisarkByteRegionStart417
   03D8                    2886 _Videopac_Subsong0DisarkByteRegionStart417:
   03D8 30                 2887 	.byte 48	; Duration.
                           2888  .globl Videopac_Subsong0DisarkByteRegionEnd417
   03D9                    2889 Videopac_Subsong0DisarkByteRegionEnd417:
                           2890  .globl _Videopac_Subsong0DisarkPointerRegionStart418
   03D9                    2891 _Videopac_Subsong0DisarkPointerRegionStart418:
   03D9 09 11              2892 	.word _Videopac_Subsong0_RegisterBlock_17
                           2893  .globl Videopac_Subsong0DisarkPointerRegionEnd418
   03DB                    2894 Videopac_Subsong0DisarkPointerRegionEnd418:
                           2895 
                           2896  .globl _Videopac_Subsong0DisarkByteRegionStart419
   03DB                    2897 _Videopac_Subsong0DisarkByteRegionStart419:
   03DB 18                 2898 	.byte 24	; Duration.
                           2899  .globl Videopac_Subsong0DisarkByteRegionEnd419
   03DC                    2900 Videopac_Subsong0DisarkByteRegionEnd419:
                           2901  .globl _Videopac_Subsong0DisarkPointerRegionStart420
   03DC                    2902 _Videopac_Subsong0DisarkPointerRegionStart420:
   03DC 0B 9B              2903 	.word _Videopac_Subsong0_RegisterBlock_101
                           2904  .globl Videopac_Subsong0DisarkPointerRegionEnd420
   03DE                    2905 Videopac_Subsong0DisarkPointerRegionEnd420:
                           2906 
                           2907  .globl Videopac_Subsong0_Track_41
   03DE                    2908 Videopac_Subsong0_Track_41:
                           2909  .globl _Videopac_Subsong0DisarkByteRegionStart421
   03DE                    2910 _Videopac_Subsong0DisarkByteRegionStart421:
   03DE 0C                 2911 	.byte 12	; Duration.
                           2912  .globl Videopac_Subsong0DisarkByteRegionEnd421
   03DF                    2913 Videopac_Subsong0DisarkByteRegionEnd421:
                           2914  .globl _Videopac_Subsong0DisarkPointerRegionStart422
   03DF                    2915 _Videopac_Subsong0DisarkPointerRegionStart422:
   03DF 10 7E              2916 	.word _Videopac_Subsong0_RegisterBlock_79
                           2917  .globl Videopac_Subsong0DisarkPointerRegionEnd422
   03E1                    2918 Videopac_Subsong0DisarkPointerRegionEnd422:
                           2919 
                           2920  .globl _Videopac_Subsong0DisarkByteRegionStart423
   03E1                    2921 _Videopac_Subsong0DisarkByteRegionStart423:
   03E1 18                 2922 	.byte 24	; Duration.
                           2923  .globl Videopac_Subsong0DisarkByteRegionEnd423
   03E2                    2924 Videopac_Subsong0DisarkByteRegionEnd423:
                           2925  .globl _Videopac_Subsong0DisarkPointerRegionStart424
   03E2                    2926 _Videopac_Subsong0DisarkPointerRegionStart424:
   03E2 0A 05              2927 	.word _Videopac_Subsong0_RegisterBlock_80
                           2928  .globl Videopac_Subsong0DisarkPointerRegionEnd424
   03E4                    2929 Videopac_Subsong0DisarkPointerRegionEnd424:
                           2930 
                           2931  .globl _Videopac_Subsong0DisarkByteRegionStart425
   03E4                    2932 _Videopac_Subsong0DisarkByteRegionStart425:
   03E4 18                 2933 	.byte 24	; Duration.
                           2934  .globl Videopac_Subsong0DisarkByteRegionEnd425
   03E5                    2935 Videopac_Subsong0DisarkByteRegionEnd425:
                           2936  .globl _Videopac_Subsong0DisarkPointerRegionStart426
   03E5                    2937 _Videopac_Subsong0DisarkPointerRegionStart426:
   03E5 0E 45              2938 	.word _Videopac_Subsong0_RegisterBlock_150
                           2939  .globl Videopac_Subsong0DisarkPointerRegionEnd426
   03E7                    2940 Videopac_Subsong0DisarkPointerRegionEnd426:
                           2941 
                           2942  .globl _Videopac_Subsong0DisarkByteRegionStart427
   03E7                    2943 _Videopac_Subsong0DisarkByteRegionStart427:
   03E7 30                 2944 	.byte 48	; Duration.
                           2945  .globl Videopac_Subsong0DisarkByteRegionEnd427
   03E8                    2946 Videopac_Subsong0DisarkByteRegionEnd427:
                           2947  .globl _Videopac_Subsong0DisarkPointerRegionStart428
   03E8                    2948 _Videopac_Subsong0DisarkPointerRegionStart428:
   03E8 09 4D              2949 	.word _Videopac_Subsong0_RegisterBlock_21
                           2950  .globl Videopac_Subsong0DisarkPointerRegionEnd428
   03EA                    2951 Videopac_Subsong0DisarkPointerRegionEnd428:
                           2952 
                           2953  .globl _Videopac_Subsong0DisarkByteRegionStart429
   03EA                    2954 _Videopac_Subsong0DisarkByteRegionStart429:
   03EA 18                 2955 	.byte 24	; Duration.
                           2956  .globl Videopac_Subsong0DisarkByteRegionEnd429
   03EB                    2957 Videopac_Subsong0DisarkByteRegionEnd429:
                           2958  .globl _Videopac_Subsong0DisarkPointerRegionStart430
   03EB                    2959 _Videopac_Subsong0DisarkPointerRegionStart430:
   03EB 09 7B              2960 	.word _Videopac_Subsong0_RegisterBlock_22
                           2961  .globl Videopac_Subsong0DisarkPointerRegionEnd430
   03ED                    2962 Videopac_Subsong0DisarkPointerRegionEnd430:
                           2963 
                           2964  .globl _Videopac_Subsong0DisarkByteRegionStart431
   03ED                    2965 _Videopac_Subsong0DisarkByteRegionStart431:
   03ED 18                 2966 	.byte 24	; Duration.
                           2967  .globl Videopac_Subsong0DisarkByteRegionEnd431
   03EE                    2968 Videopac_Subsong0DisarkByteRegionEnd431:
                           2969  .globl _Videopac_Subsong0DisarkPointerRegionStart432
   03EE                    2970 _Videopac_Subsong0DisarkPointerRegionStart432:
   03EE 0E 45              2971 	.word _Videopac_Subsong0_RegisterBlock_150
                           2972  .globl Videopac_Subsong0DisarkPointerRegionEnd432
   03F0                    2973 Videopac_Subsong0DisarkPointerRegionEnd432:
                           2974 
                           2975  .globl _Videopac_Subsong0DisarkByteRegionStart433
   03F0                    2976 _Videopac_Subsong0DisarkByteRegionStart433:
   03F0 30                 2977 	.byte 48	; Duration.
                           2978  .globl Videopac_Subsong0DisarkByteRegionEnd433
   03F1                    2979 Videopac_Subsong0DisarkByteRegionEnd433:
                           2980  .globl _Videopac_Subsong0DisarkPointerRegionStart434
   03F1                    2981 _Videopac_Subsong0DisarkPointerRegionStart434:
   03F1 09 A9              2982 	.word _Videopac_Subsong0_RegisterBlock_23
                           2983  .globl Videopac_Subsong0DisarkPointerRegionEnd434
   03F3                    2984 Videopac_Subsong0DisarkPointerRegionEnd434:
                           2985 
                           2986  .globl _Videopac_Subsong0DisarkByteRegionStart435
   03F3                    2987 _Videopac_Subsong0DisarkByteRegionStart435:
   03F3 18                 2988 	.byte 24	; Duration.
                           2989  .globl Videopac_Subsong0DisarkByteRegionEnd435
   03F4                    2990 Videopac_Subsong0DisarkByteRegionEnd435:
                           2991  .globl _Videopac_Subsong0DisarkPointerRegionStart436
   03F4                    2992 _Videopac_Subsong0DisarkPointerRegionStart436:
   03F4 09 7B              2993 	.word _Videopac_Subsong0_RegisterBlock_22
                           2994  .globl Videopac_Subsong0DisarkPointerRegionEnd436
   03F6                    2995 Videopac_Subsong0DisarkPointerRegionEnd436:
                           2996 
                           2997  .globl _Videopac_Subsong0DisarkByteRegionStart437
   03F6                    2998 _Videopac_Subsong0DisarkByteRegionStart437:
   03F6 18                 2999 	.byte 24	; Duration.
                           3000  .globl Videopac_Subsong0DisarkByteRegionEnd437
   03F7                    3001 Videopac_Subsong0DisarkByteRegionEnd437:
                           3002  .globl _Videopac_Subsong0DisarkPointerRegionStart438
   03F7                    3003 _Videopac_Subsong0DisarkPointerRegionStart438:
   03F7 0E 45              3004 	.word _Videopac_Subsong0_RegisterBlock_150
                           3005  .globl Videopac_Subsong0DisarkPointerRegionEnd438
   03F9                    3006 Videopac_Subsong0DisarkPointerRegionEnd438:
                           3007 
                           3008  .globl _Videopac_Subsong0DisarkByteRegionStart439
   03F9                    3009 _Videopac_Subsong0DisarkByteRegionStart439:
   03F9 30                 3010 	.byte 48	; Duration.
                           3011  .globl Videopac_Subsong0DisarkByteRegionEnd439
   03FA                    3012 Videopac_Subsong0DisarkByteRegionEnd439:
                           3013  .globl _Videopac_Subsong0DisarkPointerRegionStart440
   03FA                    3014 _Videopac_Subsong0DisarkPointerRegionStart440:
   03FA 09 D7              3015 	.word _Videopac_Subsong0_RegisterBlock_25
                           3016  .globl Videopac_Subsong0DisarkPointerRegionEnd440
   03FC                    3017 Videopac_Subsong0DisarkPointerRegionEnd440:
                           3018 
                           3019  .globl _Videopac_Subsong0DisarkByteRegionStart441
   03FC                    3020 _Videopac_Subsong0DisarkByteRegionStart441:
   03FC 18                 3021 	.byte 24	; Duration.
                           3022  .globl Videopac_Subsong0DisarkByteRegionEnd441
   03FD                    3023 Videopac_Subsong0DisarkByteRegionEnd441:
                           3024  .globl _Videopac_Subsong0DisarkPointerRegionStart442
   03FD                    3025 _Videopac_Subsong0DisarkPointerRegionStart442:
   03FD 09 7B              3026 	.word _Videopac_Subsong0_RegisterBlock_22
                           3027  .globl Videopac_Subsong0DisarkPointerRegionEnd442
   03FF                    3028 Videopac_Subsong0DisarkPointerRegionEnd442:
                           3029 
                           3030  .globl _Videopac_Subsong0DisarkByteRegionStart443
   03FF                    3031 _Videopac_Subsong0DisarkByteRegionStart443:
   03FF 18                 3032 	.byte 24	; Duration.
                           3033  .globl Videopac_Subsong0DisarkByteRegionEnd443
   0400                    3034 Videopac_Subsong0DisarkByteRegionEnd443:
                           3035  .globl _Videopac_Subsong0DisarkPointerRegionStart444
   0400                    3036 _Videopac_Subsong0DisarkPointerRegionStart444:
   0400 0E 45              3037 	.word _Videopac_Subsong0_RegisterBlock_150
                           3038  .globl Videopac_Subsong0DisarkPointerRegionEnd444
   0402                    3039 Videopac_Subsong0DisarkPointerRegionEnd444:
                           3040 
                           3041  .globl _Videopac_Subsong0DisarkByteRegionStart445
   0402                    3042 _Videopac_Subsong0DisarkByteRegionStart445:
   0402 24                 3043 	.byte 36	; Duration.
                           3044  .globl Videopac_Subsong0DisarkByteRegionEnd445
   0403                    3045 Videopac_Subsong0DisarkByteRegionEnd445:
                           3046  .globl _Videopac_Subsong0DisarkPointerRegionStart446
   0403                    3047 _Videopac_Subsong0DisarkPointerRegionStart446:
   0403 0D 03              3048 	.word _Videopac_Subsong0_RegisterBlock_111
                           3049  .globl Videopac_Subsong0DisarkPointerRegionEnd446
   0405                    3050 Videopac_Subsong0DisarkPointerRegionEnd446:
                           3051 
                           3052  .globl Videopac_Subsong0_Track_42
   0405                    3053 Videopac_Subsong0_Track_42:
                           3054  .globl _Videopac_Subsong0DisarkByteRegionStart447
   0405                    3055 _Videopac_Subsong0DisarkByteRegionStart447:
   0405 12                 3056 	.byte 18	; Duration.
                           3057  .globl Videopac_Subsong0DisarkByteRegionEnd447
   0406                    3058 Videopac_Subsong0DisarkByteRegionEnd447:
                           3059  .globl _Videopac_Subsong0DisarkPointerRegionStart448
   0406                    3060 _Videopac_Subsong0DisarkPointerRegionStart448:
   0406 0D F3              3061 	.word _Videopac_Subsong0_RegisterBlock_59
                           3062  .globl Videopac_Subsong0DisarkPointerRegionEnd448
   0408                    3063 Videopac_Subsong0DisarkPointerRegionEnd448:
                           3064 
                           3065  .globl _Videopac_Subsong0DisarkByteRegionStart449
   0408                    3066 _Videopac_Subsong0DisarkByteRegionStart449:
   0408 18                 3067 	.byte 24	; Duration.
                           3068  .globl Videopac_Subsong0DisarkByteRegionEnd449
   0409                    3069 Videopac_Subsong0DisarkByteRegionEnd449:
                           3070  .globl _Videopac_Subsong0DisarkPointerRegionStart450
   0409                    3071 _Videopac_Subsong0DisarkPointerRegionStart450:
   0409 0E A9              3072 	.word _Videopac_Subsong0_RegisterBlock_232
                           3073  .globl Videopac_Subsong0DisarkPointerRegionEnd450
   040B                    3074 Videopac_Subsong0DisarkPointerRegionEnd450:
                           3075 
                           3076  .globl _Videopac_Subsong0DisarkByteRegionStart451
   040B                    3077 _Videopac_Subsong0DisarkByteRegionStart451:
   040B 30                 3078 	.byte 48	; Duration.
                           3079  .globl Videopac_Subsong0DisarkByteRegionEnd451
   040C                    3080 Videopac_Subsong0DisarkByteRegionEnd451:
                           3081  .globl _Videopac_Subsong0DisarkPointerRegionStart452
   040C                    3082 _Videopac_Subsong0DisarkPointerRegionStart452:
   040C 07 E5              3083 	.word _Videopac_Subsong0_RegisterBlock_7
                           3084  .globl Videopac_Subsong0DisarkPointerRegionEnd452
   040E                    3085 Videopac_Subsong0DisarkPointerRegionEnd452:
                           3086 
                           3087  .globl _Videopac_Subsong0DisarkByteRegionStart453
   040E                    3088 _Videopac_Subsong0DisarkByteRegionStart453:
   040E 18                 3089 	.byte 24	; Duration.
                           3090  .globl Videopac_Subsong0DisarkByteRegionEnd453
   040F                    3091 Videopac_Subsong0DisarkByteRegionEnd453:
                           3092  .globl _Videopac_Subsong0DisarkPointerRegionStart454
   040F                    3093 _Videopac_Subsong0DisarkPointerRegionStart454:
   040F 0A 41              3094 	.word _Videopac_Subsong0_RegisterBlock_91
                           3095  .globl Videopac_Subsong0DisarkPointerRegionEnd454
   0411                    3096 Videopac_Subsong0DisarkPointerRegionEnd454:
                           3097 
                           3098  .globl _Videopac_Subsong0DisarkByteRegionStart455
   0411                    3099 _Videopac_Subsong0DisarkByteRegionStart455:
   0411 18                 3100 	.byte 24	; Duration.
                           3101  .globl Videopac_Subsong0DisarkByteRegionEnd455
   0412                    3102 Videopac_Subsong0DisarkByteRegionEnd455:
                           3103  .globl _Videopac_Subsong0DisarkPointerRegionStart456
   0412                    3104 _Videopac_Subsong0DisarkPointerRegionStart456:
   0412 0E A9              3105 	.word _Videopac_Subsong0_RegisterBlock_232
                           3106  .globl Videopac_Subsong0DisarkPointerRegionEnd456
   0414                    3107 Videopac_Subsong0DisarkPointerRegionEnd456:
                           3108 
                           3109  .globl _Videopac_Subsong0DisarkByteRegionStart457
   0414                    3110 _Videopac_Subsong0DisarkByteRegionStart457:
   0414 30                 3111 	.byte 48	; Duration.
                           3112  .globl Videopac_Subsong0DisarkByteRegionEnd457
   0415                    3113 Videopac_Subsong0DisarkByteRegionEnd457:
                           3114  .globl _Videopac_Subsong0DisarkPointerRegionStart458
   0415                    3115 _Videopac_Subsong0DisarkPointerRegionStart458:
   0415 0A 6F              3116 	.word _Videopac_Subsong0_RegisterBlock_92
                           3117  .globl Videopac_Subsong0DisarkPointerRegionEnd458
   0417                    3118 Videopac_Subsong0DisarkPointerRegionEnd458:
                           3119 
                           3120  .globl _Videopac_Subsong0DisarkByteRegionStart459
   0417                    3121 _Videopac_Subsong0DisarkByteRegionStart459:
   0417 18                 3122 	.byte 24	; Duration.
                           3123  .globl Videopac_Subsong0DisarkByteRegionEnd459
   0418                    3124 Videopac_Subsong0DisarkByteRegionEnd459:
                           3125  .globl _Videopac_Subsong0DisarkPointerRegionStart460
   0418                    3126 _Videopac_Subsong0DisarkPointerRegionStart460:
   0418 0A AB              3127 	.word _Videopac_Subsong0_RegisterBlock_93
                           3128  .globl Videopac_Subsong0DisarkPointerRegionEnd460
   041A                    3129 Videopac_Subsong0DisarkPointerRegionEnd460:
                           3130 
                           3131  .globl _Videopac_Subsong0DisarkByteRegionStart461
   041A                    3132 _Videopac_Subsong0DisarkByteRegionStart461:
   041A 18                 3133 	.byte 24	; Duration.
                           3134  .globl Videopac_Subsong0DisarkByteRegionEnd461
   041B                    3135 Videopac_Subsong0DisarkByteRegionEnd461:
                           3136  .globl _Videopac_Subsong0DisarkPointerRegionStart462
   041B                    3137 _Videopac_Subsong0DisarkPointerRegionStart462:
   041B 0E A9              3138 	.word _Videopac_Subsong0_RegisterBlock_232
                           3139  .globl Videopac_Subsong0DisarkPointerRegionEnd462
   041D                    3140 Videopac_Subsong0DisarkPointerRegionEnd462:
                           3141 
                           3142  .globl _Videopac_Subsong0DisarkByteRegionStart463
   041D                    3143 _Videopac_Subsong0DisarkByteRegionStart463:
   041D 30                 3144 	.byte 48	; Duration.
                           3145  .globl Videopac_Subsong0DisarkByteRegionEnd463
   041E                    3146 Videopac_Subsong0DisarkByteRegionEnd463:
                           3147  .globl _Videopac_Subsong0DisarkPointerRegionStart464
   041E                    3148 _Videopac_Subsong0DisarkPointerRegionStart464:
   041E 0A E7              3149 	.word _Videopac_Subsong0_RegisterBlock_94
                           3150  .globl Videopac_Subsong0DisarkPointerRegionEnd464
   0420                    3151 Videopac_Subsong0DisarkPointerRegionEnd464:
                           3152 
                           3153  .globl _Videopac_Subsong0DisarkByteRegionStart465
   0420                    3154 _Videopac_Subsong0DisarkByteRegionStart465:
   0420 18                 3155 	.byte 24	; Duration.
                           3156  .globl Videopac_Subsong0DisarkByteRegionEnd465
   0421                    3157 Videopac_Subsong0DisarkByteRegionEnd465:
                           3158  .globl _Videopac_Subsong0DisarkPointerRegionStart466
   0421                    3159 _Videopac_Subsong0DisarkPointerRegionStart466:
   0421 0B 23              3160 	.word _Videopac_Subsong0_RegisterBlock_95
                           3161  .globl Videopac_Subsong0DisarkPointerRegionEnd466
   0423                    3162 Videopac_Subsong0DisarkPointerRegionEnd466:
                           3163 
                           3164  .globl _Videopac_Subsong0DisarkByteRegionStart467
   0423                    3165 _Videopac_Subsong0DisarkByteRegionStart467:
   0423 18                 3166 	.byte 24	; Duration.
                           3167  .globl Videopac_Subsong0DisarkByteRegionEnd467
   0424                    3168 Videopac_Subsong0DisarkByteRegionEnd467:
                           3169  .globl _Videopac_Subsong0DisarkPointerRegionStart468
   0424                    3170 _Videopac_Subsong0DisarkPointerRegionStart468:
   0424 0E A9              3171 	.word _Videopac_Subsong0_RegisterBlock_232
                           3172  .globl Videopac_Subsong0DisarkPointerRegionEnd468
   0426                    3173 Videopac_Subsong0DisarkPointerRegionEnd468:
                           3174 
                           3175  .globl _Videopac_Subsong0DisarkByteRegionStart469
   0426                    3176 _Videopac_Subsong0DisarkByteRegionStart469:
   0426 30                 3177 	.byte 48	; Duration.
                           3178  .globl Videopac_Subsong0DisarkByteRegionEnd469
   0427                    3179 Videopac_Subsong0DisarkByteRegionEnd469:
                           3180  .globl _Videopac_Subsong0DisarkPointerRegionStart470
   0427                    3181 _Videopac_Subsong0DisarkPointerRegionStart470:
   0427 0B 5F              3182 	.word _Videopac_Subsong0_RegisterBlock_96
                           3183  .globl Videopac_Subsong0DisarkPointerRegionEnd470
   0429                    3184 Videopac_Subsong0DisarkPointerRegionEnd470:
                           3185 
                           3186  .globl _Videopac_Subsong0DisarkByteRegionStart471
   0429                    3187 _Videopac_Subsong0DisarkByteRegionStart471:
   0429 06                 3188 	.byte 6	; Duration.
                           3189  .globl Videopac_Subsong0DisarkByteRegionEnd471
   042A                    3190 Videopac_Subsong0DisarkByteRegionEnd471:
                           3191  .globl _Videopac_Subsong0DisarkPointerRegionStart472
   042A                    3192 _Videopac_Subsong0DisarkPointerRegionStart472:
   042A 06 F5              3193 	.word _Videopac_Subsong0_RegisterBlock_1
                           3194  .globl Videopac_Subsong0DisarkPointerRegionEnd472
   042C                    3195 Videopac_Subsong0DisarkPointerRegionEnd472:
                           3196 
                           3197  .globl Videopac_Subsong0_Track_44
   042C                    3198 Videopac_Subsong0_Track_44:
                           3199  .globl _Videopac_Subsong0DisarkByteRegionStart473
   042C                    3200 _Videopac_Subsong0DisarkByteRegionStart473:
   042C 0C                 3201 	.byte 12	; Duration.
                           3202  .globl Videopac_Subsong0DisarkByteRegionEnd473
   042D                    3203 Videopac_Subsong0DisarkByteRegionEnd473:
                           3204  .globl _Videopac_Subsong0DisarkPointerRegionStart474
   042D                    3205 _Videopac_Subsong0DisarkPointerRegionStart474:
   042D 10 7E              3206 	.word _Videopac_Subsong0_RegisterBlock_79
                           3207  .globl Videopac_Subsong0DisarkPointerRegionEnd474
   042F                    3208 Videopac_Subsong0DisarkPointerRegionEnd474:
                           3209 
                           3210  .globl _Videopac_Subsong0DisarkByteRegionStart475
   042F                    3211 _Videopac_Subsong0DisarkByteRegionStart475:
   042F 18                 3212 	.byte 24	; Duration.
                           3213  .globl Videopac_Subsong0DisarkByteRegionEnd475
   0430                    3214 Videopac_Subsong0DisarkByteRegionEnd475:
                           3215  .globl _Videopac_Subsong0DisarkPointerRegionStart476
   0430                    3216 _Videopac_Subsong0DisarkPointerRegionStart476:
   0430 0A 05              3217 	.word _Videopac_Subsong0_RegisterBlock_80
                           3218  .globl Videopac_Subsong0DisarkPointerRegionEnd476
   0432                    3219 Videopac_Subsong0DisarkPointerRegionEnd476:
                           3220 
                           3221  .globl _Videopac_Subsong0DisarkByteRegionStart477
   0432                    3222 _Videopac_Subsong0DisarkByteRegionStart477:
   0432 18                 3223 	.byte 24	; Duration.
                           3224  .globl Videopac_Subsong0DisarkByteRegionEnd477
   0433                    3225 Videopac_Subsong0DisarkByteRegionEnd477:
                           3226  .globl _Videopac_Subsong0DisarkPointerRegionStart478
   0433                    3227 _Videopac_Subsong0DisarkPointerRegionStart478:
   0433 0E C6              3228 	.word _Videopac_Subsong0_RegisterBlock_247
                           3229  .globl Videopac_Subsong0DisarkPointerRegionEnd478
   0435                    3230 Videopac_Subsong0DisarkPointerRegionEnd478:
                           3231 
                           3232  .globl _Videopac_Subsong0DisarkByteRegionStart479
   0435                    3233 _Videopac_Subsong0DisarkByteRegionStart479:
   0435 30                 3234 	.byte 48	; Duration.
                           3235  .globl Videopac_Subsong0DisarkByteRegionEnd479
   0436                    3236 Videopac_Subsong0DisarkByteRegionEnd479:
                           3237  .globl _Videopac_Subsong0DisarkPointerRegionStart480
   0436                    3238 _Videopac_Subsong0DisarkPointerRegionStart480:
   0436 0D 03              3239 	.word _Videopac_Subsong0_RegisterBlock_111
                           3240  .globl Videopac_Subsong0DisarkPointerRegionEnd480
   0438                    3241 Videopac_Subsong0DisarkPointerRegionEnd480:
                           3242 
                           3243  .globl _Videopac_Subsong0DisarkByteRegionStart481
   0438                    3244 _Videopac_Subsong0DisarkByteRegionStart481:
   0438 18                 3245 	.byte 24	; Duration.
                           3246  .globl Videopac_Subsong0DisarkByteRegionEnd481
   0439                    3247 Videopac_Subsong0DisarkByteRegionEnd481:
                           3248  .globl _Videopac_Subsong0DisarkPointerRegionStart482
   0439                    3249 _Videopac_Subsong0DisarkPointerRegionStart482:
   0439 0A 05              3250 	.word _Videopac_Subsong0_RegisterBlock_80
                           3251  .globl Videopac_Subsong0DisarkPointerRegionEnd482
   043B                    3252 Videopac_Subsong0DisarkPointerRegionEnd482:
                           3253 
                           3254  .globl _Videopac_Subsong0DisarkByteRegionStart483
   043B                    3255 _Videopac_Subsong0DisarkByteRegionStart483:
   043B 18                 3256 	.byte 24	; Duration.
                           3257  .globl Videopac_Subsong0DisarkByteRegionEnd483
   043C                    3258 Videopac_Subsong0DisarkByteRegionEnd483:
                           3259  .globl _Videopac_Subsong0DisarkPointerRegionStart484
   043C                    3260 _Videopac_Subsong0DisarkPointerRegionStart484:
   043C 0E C6              3261 	.word _Videopac_Subsong0_RegisterBlock_247
                           3262  .globl Videopac_Subsong0DisarkPointerRegionEnd484
   043E                    3263 Videopac_Subsong0DisarkPointerRegionEnd484:
                           3264 
                           3265  .globl _Videopac_Subsong0DisarkByteRegionStart485
   043E                    3266 _Videopac_Subsong0DisarkByteRegionStart485:
   043E 30                 3267 	.byte 48	; Duration.
                           3268  .globl Videopac_Subsong0DisarkByteRegionEnd485
   043F                    3269 Videopac_Subsong0DisarkByteRegionEnd485:
                           3270  .globl _Videopac_Subsong0DisarkPointerRegionStart486
   043F                    3271 _Videopac_Subsong0DisarkPointerRegionStart486:
   043F 0D 31              3272 	.word _Videopac_Subsong0_RegisterBlock_113
                           3273  .globl Videopac_Subsong0DisarkPointerRegionEnd486
   0441                    3274 Videopac_Subsong0DisarkPointerRegionEnd486:
                           3275 
                           3276  .globl _Videopac_Subsong0DisarkByteRegionStart487
   0441                    3277 _Videopac_Subsong0DisarkByteRegionStart487:
   0441 18                 3278 	.byte 24	; Duration.
                           3279  .globl Videopac_Subsong0DisarkByteRegionEnd487
   0442                    3280 Videopac_Subsong0DisarkByteRegionEnd487:
                           3281  .globl _Videopac_Subsong0DisarkPointerRegionStart488
   0442                    3282 _Videopac_Subsong0DisarkPointerRegionStart488:
   0442 0D 5F              3283 	.word _Videopac_Subsong0_RegisterBlock_114
                           3284  .globl Videopac_Subsong0DisarkPointerRegionEnd488
   0444                    3285 Videopac_Subsong0DisarkPointerRegionEnd488:
                           3286 
                           3287  .globl _Videopac_Subsong0DisarkByteRegionStart489
   0444                    3288 _Videopac_Subsong0DisarkByteRegionStart489:
   0444 18                 3289 	.byte 24	; Duration.
                           3290  .globl Videopac_Subsong0DisarkByteRegionEnd489
   0445                    3291 Videopac_Subsong0DisarkByteRegionEnd489:
                           3292  .globl _Videopac_Subsong0DisarkPointerRegionStart490
   0445                    3293 _Videopac_Subsong0DisarkPointerRegionStart490:
   0445 0E C6              3294 	.word _Videopac_Subsong0_RegisterBlock_247
                           3295  .globl Videopac_Subsong0DisarkPointerRegionEnd490
   0447                    3296 Videopac_Subsong0DisarkPointerRegionEnd490:
                           3297 
                           3298  .globl _Videopac_Subsong0DisarkByteRegionStart491
   0447                    3299 _Videopac_Subsong0DisarkByteRegionStart491:
   0447 30                 3300 	.byte 48	; Duration.
                           3301  .globl Videopac_Subsong0DisarkByteRegionEnd491
   0448                    3302 Videopac_Subsong0DisarkByteRegionEnd491:
                           3303  .globl _Videopac_Subsong0DisarkPointerRegionStart492
   0448                    3304 _Videopac_Subsong0DisarkPointerRegionStart492:
   0448 0D 8D              3305 	.word _Videopac_Subsong0_RegisterBlock_115
                           3306  .globl Videopac_Subsong0DisarkPointerRegionEnd492
   044A                    3307 Videopac_Subsong0DisarkPointerRegionEnd492:
                           3308 
                           3309  .globl _Videopac_Subsong0DisarkByteRegionStart493
   044A                    3310 _Videopac_Subsong0DisarkByteRegionStart493:
   044A 18                 3311 	.byte 24	; Duration.
                           3312  .globl Videopac_Subsong0DisarkByteRegionEnd493
   044B                    3313 Videopac_Subsong0DisarkByteRegionEnd493:
                           3314  .globl _Videopac_Subsong0DisarkPointerRegionStart494
   044B                    3315 _Videopac_Subsong0DisarkPointerRegionStart494:
   044B 0D BB              3316 	.word _Videopac_Subsong0_RegisterBlock_116
                           3317  .globl Videopac_Subsong0DisarkPointerRegionEnd494
   044D                    3318 Videopac_Subsong0DisarkPointerRegionEnd494:
                           3319 
                           3320  .globl _Videopac_Subsong0DisarkByteRegionStart495
   044D                    3321 _Videopac_Subsong0DisarkByteRegionStart495:
   044D 18                 3322 	.byte 24	; Duration.
                           3323  .globl Videopac_Subsong0DisarkByteRegionEnd495
   044E                    3324 Videopac_Subsong0DisarkByteRegionEnd495:
                           3325  .globl _Videopac_Subsong0DisarkPointerRegionStart496
   044E                    3326 _Videopac_Subsong0DisarkPointerRegionStart496:
   044E 0E C6              3327 	.word _Videopac_Subsong0_RegisterBlock_247
                           3328  .globl Videopac_Subsong0DisarkPointerRegionEnd496
   0450                    3329 Videopac_Subsong0DisarkPointerRegionEnd496:
                           3330 
                           3331  .globl _Videopac_Subsong0DisarkByteRegionStart497
   0450                    3332 _Videopac_Subsong0DisarkByteRegionStart497:
   0450 24                 3333 	.byte 36	; Duration.
                           3334  .globl Videopac_Subsong0DisarkByteRegionEnd497
   0451                    3335 Videopac_Subsong0DisarkByteRegionEnd497:
                           3336  .globl _Videopac_Subsong0DisarkPointerRegionStart498
   0451                    3337 _Videopac_Subsong0DisarkPointerRegionStart498:
   0451 0D FF              3338 	.word _Videopac_Subsong0_RegisterBlock_117
                           3339  .globl Videopac_Subsong0DisarkPointerRegionEnd498
   0453                    3340 Videopac_Subsong0DisarkPointerRegionEnd498:
                           3341 
                           3342  .globl Videopac_Subsong0_Track_45
   0453                    3343 Videopac_Subsong0_Track_45:
                           3344  .globl _Videopac_Subsong0DisarkByteRegionStart499
   0453                    3345 _Videopac_Subsong0DisarkByteRegionStart499:
   0453 12                 3346 	.byte 18	; Duration.
                           3347  .globl Videopac_Subsong0DisarkByteRegionEnd499
   0454                    3348 Videopac_Subsong0DisarkByteRegionEnd499:
                           3349  .globl _Videopac_Subsong0DisarkPointerRegionStart500
   0454                    3350 _Videopac_Subsong0DisarkPointerRegionStart500:
   0454 0D ED              3351 	.word _Videopac_Subsong0_RegisterBlock_29
                           3352  .globl Videopac_Subsong0DisarkPointerRegionEnd500
   0456                    3353 Videopac_Subsong0DisarkPointerRegionEnd500:
                           3354 
                           3355  .globl _Videopac_Subsong0DisarkByteRegionStart501
   0456                    3356 _Videopac_Subsong0DisarkByteRegionStart501:
   0456 18                 3357 	.byte 24	; Duration.
                           3358  .globl Videopac_Subsong0DisarkByteRegionEnd501
   0457                    3359 Videopac_Subsong0DisarkByteRegionEnd501:
                           3360  .globl _Videopac_Subsong0DisarkPointerRegionStart502
   0457                    3361 _Videopac_Subsong0DisarkPointerRegionStart502:
   0457 0E A9              3362 	.word _Videopac_Subsong0_RegisterBlock_232
                           3363  .globl Videopac_Subsong0DisarkPointerRegionEnd502
   0459                    3364 Videopac_Subsong0DisarkPointerRegionEnd502:
                           3365 
                           3366  .globl _Videopac_Subsong0DisarkByteRegionStart503
   0459                    3367 _Videopac_Subsong0DisarkByteRegionStart503:
   0459 30                 3368 	.byte 48	; Duration.
                           3369  .globl Videopac_Subsong0DisarkByteRegionEnd503
   045A                    3370 Videopac_Subsong0DisarkByteRegionEnd503:
                           3371  .globl _Videopac_Subsong0DisarkPointerRegionStart504
   045A                    3372 _Videopac_Subsong0DisarkPointerRegionStart504:
   045A 07 E5              3373 	.word _Videopac_Subsong0_RegisterBlock_7
                           3374  .globl Videopac_Subsong0DisarkPointerRegionEnd504
   045C                    3375 Videopac_Subsong0DisarkPointerRegionEnd504:
                           3376 
                           3377  .globl _Videopac_Subsong0DisarkByteRegionStart505
   045C                    3378 _Videopac_Subsong0DisarkByteRegionStart505:
   045C 18                 3379 	.byte 24	; Duration.
                           3380  .globl Videopac_Subsong0DisarkByteRegionEnd505
   045D                    3381 Videopac_Subsong0DisarkByteRegionEnd505:
                           3382  .globl _Videopac_Subsong0DisarkPointerRegionStart506
   045D                    3383 _Videopac_Subsong0DisarkPointerRegionStart506:
   045D 0A 41              3384 	.word _Videopac_Subsong0_RegisterBlock_91
                           3385  .globl Videopac_Subsong0DisarkPointerRegionEnd506
   045F                    3386 Videopac_Subsong0DisarkPointerRegionEnd506:
                           3387 
                           3388  .globl _Videopac_Subsong0DisarkByteRegionStart507
   045F                    3389 _Videopac_Subsong0DisarkByteRegionStart507:
   045F 18                 3390 	.byte 24	; Duration.
                           3391  .globl Videopac_Subsong0DisarkByteRegionEnd507
   0460                    3392 Videopac_Subsong0DisarkByteRegionEnd507:
                           3393  .globl _Videopac_Subsong0DisarkPointerRegionStart508
   0460                    3394 _Videopac_Subsong0DisarkPointerRegionStart508:
   0460 0E A9              3395 	.word _Videopac_Subsong0_RegisterBlock_232
                           3396  .globl Videopac_Subsong0DisarkPointerRegionEnd508
   0462                    3397 Videopac_Subsong0DisarkPointerRegionEnd508:
                           3398 
                           3399  .globl _Videopac_Subsong0DisarkByteRegionStart509
   0462                    3400 _Videopac_Subsong0DisarkByteRegionStart509:
   0462 30                 3401 	.byte 48	; Duration.
                           3402  .globl Videopac_Subsong0DisarkByteRegionEnd509
   0463                    3403 Videopac_Subsong0DisarkByteRegionEnd509:
                           3404  .globl _Videopac_Subsong0DisarkPointerRegionStart510
   0463                    3405 _Videopac_Subsong0DisarkPointerRegionStart510:
   0463 0A 6F              3406 	.word _Videopac_Subsong0_RegisterBlock_92
                           3407  .globl Videopac_Subsong0DisarkPointerRegionEnd510
   0465                    3408 Videopac_Subsong0DisarkPointerRegionEnd510:
                           3409 
                           3410  .globl _Videopac_Subsong0DisarkByteRegionStart511
   0465                    3411 _Videopac_Subsong0DisarkByteRegionStart511:
   0465 18                 3412 	.byte 24	; Duration.
                           3413  .globl Videopac_Subsong0DisarkByteRegionEnd511
   0466                    3414 Videopac_Subsong0DisarkByteRegionEnd511:
                           3415  .globl _Videopac_Subsong0DisarkPointerRegionStart512
   0466                    3416 _Videopac_Subsong0DisarkPointerRegionStart512:
   0466 0A AB              3417 	.word _Videopac_Subsong0_RegisterBlock_93
                           3418  .globl Videopac_Subsong0DisarkPointerRegionEnd512
   0468                    3419 Videopac_Subsong0DisarkPointerRegionEnd512:
                           3420 
                           3421  .globl _Videopac_Subsong0DisarkByteRegionStart513
   0468                    3422 _Videopac_Subsong0DisarkByteRegionStart513:
   0468 18                 3423 	.byte 24	; Duration.
                           3424  .globl Videopac_Subsong0DisarkByteRegionEnd513
   0469                    3425 Videopac_Subsong0DisarkByteRegionEnd513:
                           3426  .globl _Videopac_Subsong0DisarkPointerRegionStart514
   0469                    3427 _Videopac_Subsong0DisarkPointerRegionStart514:
   0469 0E A9              3428 	.word _Videopac_Subsong0_RegisterBlock_232
                           3429  .globl Videopac_Subsong0DisarkPointerRegionEnd514
   046B                    3430 Videopac_Subsong0DisarkPointerRegionEnd514:
                           3431 
                           3432  .globl _Videopac_Subsong0DisarkByteRegionStart515
   046B                    3433 _Videopac_Subsong0DisarkByteRegionStart515:
   046B 30                 3434 	.byte 48	; Duration.
                           3435  .globl Videopac_Subsong0DisarkByteRegionEnd515
   046C                    3436 Videopac_Subsong0DisarkByteRegionEnd515:
                           3437  .globl _Videopac_Subsong0DisarkPointerRegionStart516
   046C                    3438 _Videopac_Subsong0DisarkPointerRegionStart516:
   046C 0A E7              3439 	.word _Videopac_Subsong0_RegisterBlock_94
                           3440  .globl Videopac_Subsong0DisarkPointerRegionEnd516
   046E                    3441 Videopac_Subsong0DisarkPointerRegionEnd516:
                           3442 
                           3443  .globl _Videopac_Subsong0DisarkByteRegionStart517
   046E                    3444 _Videopac_Subsong0DisarkByteRegionStart517:
   046E 18                 3445 	.byte 24	; Duration.
                           3446  .globl Videopac_Subsong0DisarkByteRegionEnd517
   046F                    3447 Videopac_Subsong0DisarkByteRegionEnd517:
                           3448  .globl _Videopac_Subsong0DisarkPointerRegionStart518
   046F                    3449 _Videopac_Subsong0DisarkPointerRegionStart518:
   046F 0B 23              3450 	.word _Videopac_Subsong0_RegisterBlock_95
                           3451  .globl Videopac_Subsong0DisarkPointerRegionEnd518
   0471                    3452 Videopac_Subsong0DisarkPointerRegionEnd518:
                           3453 
                           3454  .globl _Videopac_Subsong0DisarkByteRegionStart519
   0471                    3455 _Videopac_Subsong0DisarkByteRegionStart519:
   0471 18                 3456 	.byte 24	; Duration.
                           3457  .globl Videopac_Subsong0DisarkByteRegionEnd519
   0472                    3458 Videopac_Subsong0DisarkByteRegionEnd519:
                           3459  .globl _Videopac_Subsong0DisarkPointerRegionStart520
   0472                    3460 _Videopac_Subsong0DisarkPointerRegionStart520:
   0472 0E A9              3461 	.word _Videopac_Subsong0_RegisterBlock_232
                           3462  .globl Videopac_Subsong0DisarkPointerRegionEnd520
   0474                    3463 Videopac_Subsong0DisarkPointerRegionEnd520:
                           3464 
                           3465  .globl _Videopac_Subsong0DisarkByteRegionStart521
   0474                    3466 _Videopac_Subsong0DisarkByteRegionStart521:
   0474 30                 3467 	.byte 48	; Duration.
                           3468  .globl Videopac_Subsong0DisarkByteRegionEnd521
   0475                    3469 Videopac_Subsong0DisarkByteRegionEnd521:
                           3470  .globl _Videopac_Subsong0DisarkPointerRegionStart522
   0475                    3471 _Videopac_Subsong0DisarkPointerRegionStart522:
   0475 0B 5F              3472 	.word _Videopac_Subsong0_RegisterBlock_96
                           3473  .globl Videopac_Subsong0DisarkPointerRegionEnd522
   0477                    3474 Videopac_Subsong0DisarkPointerRegionEnd522:
                           3475 
                           3476  .globl _Videopac_Subsong0DisarkByteRegionStart523
   0477                    3477 _Videopac_Subsong0DisarkByteRegionStart523:
   0477 06                 3478 	.byte 6	; Duration.
                           3479  .globl Videopac_Subsong0DisarkByteRegionEnd523
   0478                    3480 Videopac_Subsong0DisarkByteRegionEnd523:
                           3481  .globl _Videopac_Subsong0DisarkPointerRegionStart524
   0478                    3482 _Videopac_Subsong0DisarkPointerRegionStart524:
   0478 06 F5              3483 	.word _Videopac_Subsong0_RegisterBlock_1
                           3484  .globl Videopac_Subsong0DisarkPointerRegionEnd524
   047A                    3485 Videopac_Subsong0DisarkPointerRegionEnd524:
                           3486 
                           3487  .globl Videopac_Subsong0_Track_46
   047A                    3488 Videopac_Subsong0_Track_46:
                           3489  .globl _Videopac_Subsong0DisarkByteRegionStart525
   047A                    3490 _Videopac_Subsong0DisarkByteRegionStart525:
   047A 18                 3491 	.byte 24	; Duration.
                           3492  .globl Videopac_Subsong0DisarkByteRegionEnd525
   047B                    3493 Videopac_Subsong0DisarkByteRegionEnd525:
                           3494  .globl _Videopac_Subsong0DisarkPointerRegionStart526
   047B                    3495 _Videopac_Subsong0DisarkPointerRegionStart526:
   047B 0E E3              3496 	.word _Videopac_Subsong0_RegisterBlock_273
                           3497  .globl Videopac_Subsong0DisarkPointerRegionEnd526
   047D                    3498 Videopac_Subsong0DisarkPointerRegionEnd526:
                           3499 
                           3500  .globl _Videopac_Subsong0DisarkByteRegionStart527
   047D                    3501 _Videopac_Subsong0DisarkByteRegionStart527:
   047D 30                 3502 	.byte 48	; Duration.
                           3503  .globl Videopac_Subsong0DisarkByteRegionEnd527
   047E                    3504 Videopac_Subsong0DisarkByteRegionEnd527:
                           3505  .globl _Videopac_Subsong0DisarkPointerRegionStart528
   047E                    3506 _Videopac_Subsong0DisarkPointerRegionStart528:
   047E 09 11              3507 	.word _Videopac_Subsong0_RegisterBlock_17
                           3508  .globl Videopac_Subsong0DisarkPointerRegionEnd528
   0480                    3509 Videopac_Subsong0DisarkPointerRegionEnd528:
                           3510 
                           3511  .globl _Videopac_Subsong0DisarkByteRegionStart529
   0480                    3512 _Videopac_Subsong0DisarkByteRegionStart529:
   0480 18                 3513 	.byte 24	; Duration.
                           3514  .globl Videopac_Subsong0DisarkByteRegionEnd529
   0481                    3515 Videopac_Subsong0DisarkByteRegionEnd529:
                           3516  .globl _Videopac_Subsong0DisarkPointerRegionStart530
   0481                    3517 _Videopac_Subsong0DisarkPointerRegionStart530:
   0481 0B 9B              3518 	.word _Videopac_Subsong0_RegisterBlock_101
                           3519  .globl Videopac_Subsong0DisarkPointerRegionEnd530
   0483                    3520 Videopac_Subsong0DisarkPointerRegionEnd530:
                           3521 
                           3522  .globl _Videopac_Subsong0DisarkByteRegionStart531
   0483                    3523 _Videopac_Subsong0DisarkByteRegionStart531:
   0483 18                 3524 	.byte 24	; Duration.
                           3525  .globl Videopac_Subsong0DisarkByteRegionEnd531
   0484                    3526 Videopac_Subsong0DisarkByteRegionEnd531:
                           3527  .globl _Videopac_Subsong0DisarkPointerRegionStart532
   0484                    3528 _Videopac_Subsong0DisarkPointerRegionStart532:
   0484 0E E3              3529 	.word _Videopac_Subsong0_RegisterBlock_273
                           3530  .globl Videopac_Subsong0DisarkPointerRegionEnd532
   0486                    3531 Videopac_Subsong0DisarkPointerRegionEnd532:
                           3532 
                           3533  .globl _Videopac_Subsong0DisarkByteRegionStart533
   0486                    3534 _Videopac_Subsong0DisarkByteRegionStart533:
   0486 30                 3535 	.byte 48	; Duration.
                           3536  .globl Videopac_Subsong0DisarkByteRegionEnd533
   0487                    3537 Videopac_Subsong0DisarkByteRegionEnd533:
                           3538  .globl _Videopac_Subsong0DisarkPointerRegionStart534
   0487                    3539 _Videopac_Subsong0DisarkPointerRegionStart534:
   0487 0B D7              3540 	.word _Videopac_Subsong0_RegisterBlock_102
                           3541  .globl Videopac_Subsong0DisarkPointerRegionEnd534
   0489                    3542 Videopac_Subsong0DisarkPointerRegionEnd534:
                           3543 
                           3544  .globl _Videopac_Subsong0DisarkByteRegionStart535
   0489                    3545 _Videopac_Subsong0DisarkByteRegionStart535:
   0489 18                 3546 	.byte 24	; Duration.
                           3547  .globl Videopac_Subsong0DisarkByteRegionEnd535
   048A                    3548 Videopac_Subsong0DisarkByteRegionEnd535:
                           3549  .globl _Videopac_Subsong0DisarkPointerRegionStart536
   048A                    3550 _Videopac_Subsong0DisarkPointerRegionStart536:
   048A 0C 13              3551 	.word _Videopac_Subsong0_RegisterBlock_103
                           3552  .globl Videopac_Subsong0DisarkPointerRegionEnd536
   048C                    3553 Videopac_Subsong0DisarkPointerRegionEnd536:
                           3554 
                           3555  .globl _Videopac_Subsong0DisarkByteRegionStart537
   048C                    3556 _Videopac_Subsong0DisarkByteRegionStart537:
   048C 18                 3557 	.byte 24	; Duration.
                           3558  .globl Videopac_Subsong0DisarkByteRegionEnd537
   048D                    3559 Videopac_Subsong0DisarkByteRegionEnd537:
                           3560  .globl _Videopac_Subsong0DisarkPointerRegionStart538
   048D                    3561 _Videopac_Subsong0DisarkPointerRegionStart538:
   048D 0E E3              3562 	.word _Videopac_Subsong0_RegisterBlock_273
                           3563  .globl Videopac_Subsong0DisarkPointerRegionEnd538
   048F                    3564 Videopac_Subsong0DisarkPointerRegionEnd538:
                           3565 
                           3566  .globl _Videopac_Subsong0DisarkByteRegionStart539
   048F                    3567 _Videopac_Subsong0DisarkByteRegionStart539:
   048F 30                 3568 	.byte 48	; Duration.
                           3569  .globl Videopac_Subsong0DisarkByteRegionEnd539
   0490                    3570 Videopac_Subsong0DisarkByteRegionEnd539:
                           3571  .globl _Videopac_Subsong0DisarkPointerRegionStart540
   0490                    3572 _Videopac_Subsong0DisarkPointerRegionStart540:
   0490 0C 4F              3573 	.word _Videopac_Subsong0_RegisterBlock_104
                           3574  .globl Videopac_Subsong0DisarkPointerRegionEnd540
   0492                    3575 Videopac_Subsong0DisarkPointerRegionEnd540:
                           3576 
                           3577  .globl _Videopac_Subsong0DisarkByteRegionStart541
   0492                    3578 _Videopac_Subsong0DisarkByteRegionStart541:
   0492 18                 3579 	.byte 24	; Duration.
                           3580  .globl Videopac_Subsong0DisarkByteRegionEnd541
   0493                    3581 Videopac_Subsong0DisarkByteRegionEnd541:
                           3582  .globl _Videopac_Subsong0DisarkPointerRegionStart542
   0493                    3583 _Videopac_Subsong0DisarkPointerRegionStart542:
   0493 0C 8B              3584 	.word _Videopac_Subsong0_RegisterBlock_105
                           3585  .globl Videopac_Subsong0DisarkPointerRegionEnd542
   0495                    3586 Videopac_Subsong0DisarkPointerRegionEnd542:
                           3587 
                           3588  .globl _Videopac_Subsong0DisarkByteRegionStart543
   0495                    3589 _Videopac_Subsong0DisarkByteRegionStart543:
   0495 18                 3590 	.byte 24	; Duration.
                           3591  .globl Videopac_Subsong0DisarkByteRegionEnd543
   0496                    3592 Videopac_Subsong0DisarkByteRegionEnd543:
                           3593  .globl _Videopac_Subsong0DisarkPointerRegionStart544
   0496                    3594 _Videopac_Subsong0DisarkPointerRegionStart544:
   0496 0E E3              3595 	.word _Videopac_Subsong0_RegisterBlock_273
                           3596  .globl Videopac_Subsong0DisarkPointerRegionEnd544
   0498                    3597 Videopac_Subsong0DisarkPointerRegionEnd544:
                           3598 
                           3599  .globl _Videopac_Subsong0DisarkByteRegionStart545
   0498                    3600 _Videopac_Subsong0DisarkByteRegionStart545:
   0498 30                 3601 	.byte 48	; Duration.
                           3602  .globl Videopac_Subsong0DisarkByteRegionEnd545
   0499                    3603 Videopac_Subsong0DisarkByteRegionEnd545:
                           3604  .globl _Videopac_Subsong0DisarkPointerRegionStart546
   0499                    3605 _Videopac_Subsong0DisarkPointerRegionStart546:
   0499 0C C7              3606 	.word _Videopac_Subsong0_RegisterBlock_106
                           3607  .globl Videopac_Subsong0DisarkPointerRegionEnd546
   049B                    3608 Videopac_Subsong0DisarkPointerRegionEnd546:
                           3609 
                           3610  .globl _Videopac_Subsong0DisarkByteRegionStart547
   049B                    3611 _Videopac_Subsong0DisarkByteRegionStart547:
   049B 18                 3612 	.byte 24	; Duration.
                           3613  .globl Videopac_Subsong0DisarkByteRegionEnd547
   049C                    3614 Videopac_Subsong0DisarkByteRegionEnd547:
                           3615  .globl _Videopac_Subsong0DisarkPointerRegionStart548
   049C                    3616 _Videopac_Subsong0DisarkPointerRegionStart548:
   049C 08 21              3617 	.word _Videopac_Subsong0_RegisterBlock_11
                           3618  .globl Videopac_Subsong0DisarkPointerRegionEnd548
   049E                    3619 Videopac_Subsong0DisarkPointerRegionEnd548:
                           3620 
                           3621  .globl Videopac_Subsong0_Track_47
   049E                    3622 Videopac_Subsong0_Track_47:
                           3623  .globl _Videopac_Subsong0DisarkByteRegionStart549
   049E                    3624 _Videopac_Subsong0DisarkByteRegionStart549:
   049E 0C                 3625 	.byte 12	; Duration.
                           3626  .globl Videopac_Subsong0DisarkByteRegionEnd549
   049F                    3627 Videopac_Subsong0DisarkByteRegionEnd549:
                           3628  .globl _Videopac_Subsong0DisarkPointerRegionStart550
   049F                    3629 _Videopac_Subsong0DisarkPointerRegionStart550:
   049F 0E 25              3630 	.word _Videopac_Subsong0_RegisterBlock_149
                           3631  .globl Videopac_Subsong0DisarkPointerRegionEnd550
   04A1                    3632 Videopac_Subsong0DisarkPointerRegionEnd550:
                           3633 
                           3634  .globl _Videopac_Subsong0DisarkByteRegionStart551
   04A1                    3635 _Videopac_Subsong0DisarkByteRegionStart551:
   04A1 18                 3636 	.byte 24	; Duration.
                           3637  .globl Videopac_Subsong0DisarkByteRegionEnd551
   04A2                    3638 Videopac_Subsong0DisarkByteRegionEnd551:
                           3639  .globl _Videopac_Subsong0DisarkPointerRegionStart552
   04A2                    3640 _Videopac_Subsong0DisarkPointerRegionStart552:
   04A2 09 4D              3641 	.word _Videopac_Subsong0_RegisterBlock_21
                           3642  .globl Videopac_Subsong0DisarkPointerRegionEnd552
   04A4                    3643 Videopac_Subsong0DisarkPointerRegionEnd552:
                           3644 
                           3645  .globl _Videopac_Subsong0DisarkByteRegionStart553
   04A4                    3646 _Videopac_Subsong0DisarkByteRegionStart553:
   04A4 18                 3647 	.byte 24	; Duration.
                           3648  .globl Videopac_Subsong0DisarkByteRegionEnd553
   04A5                    3649 Videopac_Subsong0DisarkByteRegionEnd553:
                           3650  .globl _Videopac_Subsong0DisarkPointerRegionStart554
   04A5                    3651 _Videopac_Subsong0DisarkPointerRegionStart554:
   04A5 0E C6              3652 	.word _Videopac_Subsong0_RegisterBlock_247
                           3653  .globl Videopac_Subsong0DisarkPointerRegionEnd554
   04A7                    3654 Videopac_Subsong0DisarkPointerRegionEnd554:
                           3655 
                           3656  .globl _Videopac_Subsong0DisarkByteRegionStart555
   04A7                    3657 _Videopac_Subsong0DisarkByteRegionStart555:
   04A7 30                 3658 	.byte 48	; Duration.
                           3659  .globl Videopac_Subsong0DisarkByteRegionEnd555
   04A8                    3660 Videopac_Subsong0DisarkByteRegionEnd555:
                           3661  .globl _Videopac_Subsong0DisarkPointerRegionStart556
   04A8                    3662 _Videopac_Subsong0DisarkPointerRegionStart556:
   04A8 0D 03              3663 	.word _Videopac_Subsong0_RegisterBlock_111
                           3664  .globl Videopac_Subsong0DisarkPointerRegionEnd556
   04AA                    3665 Videopac_Subsong0DisarkPointerRegionEnd556:
                           3666 
                           3667  .globl _Videopac_Subsong0DisarkByteRegionStart557
   04AA                    3668 _Videopac_Subsong0DisarkByteRegionStart557:
   04AA 18                 3669 	.byte 24	; Duration.
                           3670  .globl Videopac_Subsong0DisarkByteRegionEnd557
   04AB                    3671 Videopac_Subsong0DisarkByteRegionEnd557:
                           3672  .globl _Videopac_Subsong0DisarkPointerRegionStart558
   04AB                    3673 _Videopac_Subsong0DisarkPointerRegionStart558:
   04AB 0A 05              3674 	.word _Videopac_Subsong0_RegisterBlock_80
                           3675  .globl Videopac_Subsong0DisarkPointerRegionEnd558
   04AD                    3676 Videopac_Subsong0DisarkPointerRegionEnd558:
                           3677 
                           3678  .globl _Videopac_Subsong0DisarkByteRegionStart559
   04AD                    3679 _Videopac_Subsong0DisarkByteRegionStart559:
   04AD 18                 3680 	.byte 24	; Duration.
                           3681  .globl Videopac_Subsong0DisarkByteRegionEnd559
   04AE                    3682 Videopac_Subsong0DisarkByteRegionEnd559:
                           3683  .globl _Videopac_Subsong0DisarkPointerRegionStart560
   04AE                    3684 _Videopac_Subsong0DisarkPointerRegionStart560:
   04AE 0E C6              3685 	.word _Videopac_Subsong0_RegisterBlock_247
                           3686  .globl Videopac_Subsong0DisarkPointerRegionEnd560
   04B0                    3687 Videopac_Subsong0DisarkPointerRegionEnd560:
                           3688 
                           3689  .globl _Videopac_Subsong0DisarkByteRegionStart561
   04B0                    3690 _Videopac_Subsong0DisarkByteRegionStart561:
   04B0 30                 3691 	.byte 48	; Duration.
                           3692  .globl Videopac_Subsong0DisarkByteRegionEnd561
   04B1                    3693 Videopac_Subsong0DisarkByteRegionEnd561:
                           3694  .globl _Videopac_Subsong0DisarkPointerRegionStart562
   04B1                    3695 _Videopac_Subsong0DisarkPointerRegionStart562:
   04B1 0D 31              3696 	.word _Videopac_Subsong0_RegisterBlock_113
                           3697  .globl Videopac_Subsong0DisarkPointerRegionEnd562
   04B3                    3698 Videopac_Subsong0DisarkPointerRegionEnd562:
                           3699 
                           3700  .globl _Videopac_Subsong0DisarkByteRegionStart563
   04B3                    3701 _Videopac_Subsong0DisarkByteRegionStart563:
   04B3 18                 3702 	.byte 24	; Duration.
                           3703  .globl Videopac_Subsong0DisarkByteRegionEnd563
   04B4                    3704 Videopac_Subsong0DisarkByteRegionEnd563:
                           3705  .globl _Videopac_Subsong0DisarkPointerRegionStart564
   04B4                    3706 _Videopac_Subsong0DisarkPointerRegionStart564:
   04B4 0D 5F              3707 	.word _Videopac_Subsong0_RegisterBlock_114
                           3708  .globl Videopac_Subsong0DisarkPointerRegionEnd564
   04B6                    3709 Videopac_Subsong0DisarkPointerRegionEnd564:
                           3710 
                           3711  .globl _Videopac_Subsong0DisarkByteRegionStart565
   04B6                    3712 _Videopac_Subsong0DisarkByteRegionStart565:
   04B6 18                 3713 	.byte 24	; Duration.
                           3714  .globl Videopac_Subsong0DisarkByteRegionEnd565
   04B7                    3715 Videopac_Subsong0DisarkByteRegionEnd565:
                           3716  .globl _Videopac_Subsong0DisarkPointerRegionStart566
   04B7                    3717 _Videopac_Subsong0DisarkPointerRegionStart566:
   04B7 0E C6              3718 	.word _Videopac_Subsong0_RegisterBlock_247
                           3719  .globl Videopac_Subsong0DisarkPointerRegionEnd566
   04B9                    3720 Videopac_Subsong0DisarkPointerRegionEnd566:
                           3721 
                           3722  .globl _Videopac_Subsong0DisarkByteRegionStart567
   04B9                    3723 _Videopac_Subsong0DisarkByteRegionStart567:
   04B9 30                 3724 	.byte 48	; Duration.
                           3725  .globl Videopac_Subsong0DisarkByteRegionEnd567
   04BA                    3726 Videopac_Subsong0DisarkByteRegionEnd567:
                           3727  .globl _Videopac_Subsong0DisarkPointerRegionStart568
   04BA                    3728 _Videopac_Subsong0DisarkPointerRegionStart568:
   04BA 0D 8D              3729 	.word _Videopac_Subsong0_RegisterBlock_115
                           3730  .globl Videopac_Subsong0DisarkPointerRegionEnd568
   04BC                    3731 Videopac_Subsong0DisarkPointerRegionEnd568:
                           3732 
                           3733  .globl _Videopac_Subsong0DisarkByteRegionStart569
   04BC                    3734 _Videopac_Subsong0DisarkByteRegionStart569:
   04BC 18                 3735 	.byte 24	; Duration.
                           3736  .globl Videopac_Subsong0DisarkByteRegionEnd569
   04BD                    3737 Videopac_Subsong0DisarkByteRegionEnd569:
                           3738  .globl _Videopac_Subsong0DisarkPointerRegionStart570
   04BD                    3739 _Videopac_Subsong0DisarkPointerRegionStart570:
   04BD 0D BB              3740 	.word _Videopac_Subsong0_RegisterBlock_116
                           3741  .globl Videopac_Subsong0DisarkPointerRegionEnd570
   04BF                    3742 Videopac_Subsong0DisarkPointerRegionEnd570:
                           3743 
                           3744  .globl _Videopac_Subsong0DisarkByteRegionStart571
   04BF                    3745 _Videopac_Subsong0DisarkByteRegionStart571:
   04BF 18                 3746 	.byte 24	; Duration.
                           3747  .globl Videopac_Subsong0DisarkByteRegionEnd571
   04C0                    3748 Videopac_Subsong0DisarkByteRegionEnd571:
                           3749  .globl _Videopac_Subsong0DisarkPointerRegionStart572
   04C0                    3750 _Videopac_Subsong0DisarkPointerRegionStart572:
   04C0 0E C6              3751 	.word _Videopac_Subsong0_RegisterBlock_247
                           3752  .globl Videopac_Subsong0DisarkPointerRegionEnd572
   04C2                    3753 Videopac_Subsong0DisarkPointerRegionEnd572:
                           3754 
                           3755  .globl _Videopac_Subsong0DisarkByteRegionStart573
   04C2                    3756 _Videopac_Subsong0DisarkByteRegionStart573:
   04C2 24                 3757 	.byte 36	; Duration.
                           3758  .globl Videopac_Subsong0DisarkByteRegionEnd573
   04C3                    3759 Videopac_Subsong0DisarkByteRegionEnd573:
                           3760  .globl _Videopac_Subsong0DisarkPointerRegionStart574
   04C3                    3761 _Videopac_Subsong0DisarkPointerRegionStart574:
   04C3 0D FF              3762 	.word _Videopac_Subsong0_RegisterBlock_117
                           3763  .globl Videopac_Subsong0DisarkPointerRegionEnd574
   04C5                    3764 Videopac_Subsong0DisarkPointerRegionEnd574:
                           3765 
                           3766  .globl Videopac_Subsong0_Track_50
   04C5                    3767 Videopac_Subsong0_Track_50:
                           3768  .globl _Videopac_Subsong0DisarkByteRegionStart575
   04C5                    3769 _Videopac_Subsong0DisarkByteRegionStart575:
   04C5 0C                 3770 	.byte 12	; Duration.
                           3771  .globl Videopac_Subsong0DisarkByteRegionEnd575
   04C6                    3772 Videopac_Subsong0DisarkByteRegionEnd575:
                           3773  .globl _Videopac_Subsong0DisarkPointerRegionStart576
   04C6                    3774 _Videopac_Subsong0DisarkPointerRegionStart576:
   04C6 0E 25              3775 	.word _Videopac_Subsong0_RegisterBlock_149
                           3776  .globl Videopac_Subsong0DisarkPointerRegionEnd576
   04C8                    3777 Videopac_Subsong0DisarkPointerRegionEnd576:
                           3778 
                           3779  .globl _Videopac_Subsong0DisarkByteRegionStart577
   04C8                    3780 _Videopac_Subsong0DisarkByteRegionStart577:
   04C8 18                 3781 	.byte 24	; Duration.
                           3782  .globl Videopac_Subsong0DisarkByteRegionEnd577
   04C9                    3783 Videopac_Subsong0DisarkByteRegionEnd577:
                           3784  .globl _Videopac_Subsong0DisarkPointerRegionStart578
   04C9                    3785 _Videopac_Subsong0DisarkPointerRegionStart578:
   04C9 09 4D              3786 	.word _Videopac_Subsong0_RegisterBlock_21
                           3787  .globl Videopac_Subsong0DisarkPointerRegionEnd578
   04CB                    3788 Videopac_Subsong0DisarkPointerRegionEnd578:
                           3789 
                           3790  .globl _Videopac_Subsong0DisarkByteRegionStart579
   04CB                    3791 _Videopac_Subsong0DisarkByteRegionStart579:
   04CB 18                 3792 	.byte 24	; Duration.
                           3793  .globl Videopac_Subsong0DisarkByteRegionEnd579
   04CC                    3794 Videopac_Subsong0DisarkByteRegionEnd579:
                           3795  .globl _Videopac_Subsong0DisarkPointerRegionStart580
   04CC                    3796 _Videopac_Subsong0DisarkPointerRegionStart580:
   04CC 0E 45              3797 	.word _Videopac_Subsong0_RegisterBlock_150
                           3798  .globl Videopac_Subsong0DisarkPointerRegionEnd580
   04CE                    3799 Videopac_Subsong0DisarkPointerRegionEnd580:
                           3800 
                           3801  .globl _Videopac_Subsong0DisarkByteRegionStart581
   04CE                    3802 _Videopac_Subsong0DisarkByteRegionStart581:
   04CE 18                 3803 	.byte 24	; Duration.
                           3804  .globl Videopac_Subsong0DisarkByteRegionEnd581
   04CF                    3805 Videopac_Subsong0DisarkByteRegionEnd581:
                           3806  .globl _Videopac_Subsong0DisarkPointerRegionStart582
   04CF                    3807 _Videopac_Subsong0DisarkPointerRegionStart582:
   04CF 09 4D              3808 	.word _Videopac_Subsong0_RegisterBlock_21
                           3809  .globl Videopac_Subsong0DisarkPointerRegionEnd582
   04D1                    3810 Videopac_Subsong0DisarkPointerRegionEnd582:
                           3811 
                           3812  .globl _Videopac_Subsong0DisarkByteRegionStart583
   04D1                    3813 _Videopac_Subsong0DisarkByteRegionStart583:
   04D1 18                 3814 	.byte 24	; Duration.
                           3815  .globl Videopac_Subsong0DisarkByteRegionEnd583
   04D2                    3816 Videopac_Subsong0DisarkByteRegionEnd583:
                           3817  .globl _Videopac_Subsong0DisarkPointerRegionStart584
   04D2                    3818 _Videopac_Subsong0DisarkPointerRegionStart584:
   04D2 0F 00              3819 	.word _Videopac_Subsong0_RegisterBlock_304
                           3820  .globl Videopac_Subsong0DisarkPointerRegionEnd584
   04D4                    3821 Videopac_Subsong0DisarkPointerRegionEnd584:
                           3822 
                           3823  .globl _Videopac_Subsong0DisarkByteRegionStart585
   04D4                    3824 _Videopac_Subsong0DisarkByteRegionStart585:
   04D4 18                 3825 	.byte 24	; Duration.
                           3826  .globl Videopac_Subsong0DisarkByteRegionEnd585
   04D5                    3827 Videopac_Subsong0DisarkByteRegionEnd585:
                           3828  .globl _Videopac_Subsong0DisarkPointerRegionStart586
   04D5                    3829 _Videopac_Subsong0DisarkPointerRegionStart586:
   04D5 09 7B              3830 	.word _Videopac_Subsong0_RegisterBlock_22
                           3831  .globl Videopac_Subsong0DisarkPointerRegionEnd586
   04D7                    3832 Videopac_Subsong0DisarkPointerRegionEnd586:
                           3833 
                           3834  .globl _Videopac_Subsong0DisarkByteRegionStart587
   04D7                    3835 _Videopac_Subsong0DisarkByteRegionStart587:
   04D7 18                 3836 	.byte 24	; Duration.
                           3837  .globl Videopac_Subsong0DisarkByteRegionEnd587
   04D8                    3838 Videopac_Subsong0DisarkByteRegionEnd587:
                           3839  .globl _Videopac_Subsong0DisarkPointerRegionStart588
   04D8                    3840 _Videopac_Subsong0DisarkPointerRegionStart588:
   04D8 0E 45              3841 	.word _Videopac_Subsong0_RegisterBlock_150
                           3842  .globl Videopac_Subsong0DisarkPointerRegionEnd588
   04DA                    3843 Videopac_Subsong0DisarkPointerRegionEnd588:
                           3844 
                           3845  .globl _Videopac_Subsong0DisarkByteRegionStart589
   04DA                    3846 _Videopac_Subsong0DisarkByteRegionStart589:
   04DA 18                 3847 	.byte 24	; Duration.
                           3848  .globl Videopac_Subsong0DisarkByteRegionEnd589
   04DB                    3849 Videopac_Subsong0DisarkByteRegionEnd589:
                           3850  .globl _Videopac_Subsong0DisarkPointerRegionStart590
   04DB                    3851 _Videopac_Subsong0DisarkPointerRegionStart590:
   04DB 09 A9              3852 	.word _Videopac_Subsong0_RegisterBlock_23
                           3853  .globl Videopac_Subsong0DisarkPointerRegionEnd590
   04DD                    3854 Videopac_Subsong0DisarkPointerRegionEnd590:
                           3855 
                           3856  .globl _Videopac_Subsong0DisarkByteRegionStart591
   04DD                    3857 _Videopac_Subsong0DisarkByteRegionStart591:
   04DD 18                 3858 	.byte 24	; Duration.
                           3859  .globl Videopac_Subsong0DisarkByteRegionEnd591
   04DE                    3860 Videopac_Subsong0DisarkByteRegionEnd591:
                           3861  .globl _Videopac_Subsong0DisarkPointerRegionStart592
   04DE                    3862 _Videopac_Subsong0DisarkPointerRegionStart592:
   04DE 0F 23              3863 	.word _Videopac_Subsong0_RegisterBlock_308
                           3864  .globl Videopac_Subsong0DisarkPointerRegionEnd592
   04E0                    3865 Videopac_Subsong0DisarkPointerRegionEnd592:
                           3866 
                           3867  .globl _Videopac_Subsong0DisarkByteRegionStart593
   04E0                    3868 _Videopac_Subsong0DisarkByteRegionStart593:
   04E0 18                 3869 	.byte 24	; Duration.
                           3870  .globl Videopac_Subsong0DisarkByteRegionEnd593
   04E1                    3871 Videopac_Subsong0DisarkByteRegionEnd593:
                           3872  .globl _Videopac_Subsong0DisarkPointerRegionStart594
   04E1                    3873 _Videopac_Subsong0DisarkPointerRegionStart594:
   04E1 09 7B              3874 	.word _Videopac_Subsong0_RegisterBlock_22
                           3875  .globl Videopac_Subsong0DisarkPointerRegionEnd594
   04E3                    3876 Videopac_Subsong0DisarkPointerRegionEnd594:
                           3877 
                           3878  .globl _Videopac_Subsong0DisarkByteRegionStart595
   04E3                    3879 _Videopac_Subsong0DisarkByteRegionStart595:
   04E3 18                 3880 	.byte 24	; Duration.
                           3881  .globl Videopac_Subsong0DisarkByteRegionEnd595
   04E4                    3882 Videopac_Subsong0DisarkByteRegionEnd595:
                           3883  .globl _Videopac_Subsong0DisarkPointerRegionStart596
   04E4                    3884 _Videopac_Subsong0DisarkPointerRegionStart596:
   04E4 0E 45              3885 	.word _Videopac_Subsong0_RegisterBlock_150
                           3886  .globl Videopac_Subsong0DisarkPointerRegionEnd596
   04E6                    3887 Videopac_Subsong0DisarkPointerRegionEnd596:
                           3888 
                           3889  .globl _Videopac_Subsong0DisarkByteRegionStart597
   04E6                    3890 _Videopac_Subsong0DisarkByteRegionStart597:
   04E6 18                 3891 	.byte 24	; Duration.
                           3892  .globl Videopac_Subsong0DisarkByteRegionEnd597
   04E7                    3893 Videopac_Subsong0DisarkByteRegionEnd597:
                           3894  .globl _Videopac_Subsong0DisarkPointerRegionStart598
   04E7                    3895 _Videopac_Subsong0DisarkPointerRegionStart598:
   04E7 09 D7              3896 	.word _Videopac_Subsong0_RegisterBlock_25
                           3897  .globl Videopac_Subsong0DisarkPointerRegionEnd598
   04E9                    3898 Videopac_Subsong0DisarkPointerRegionEnd598:
                           3899 
                           3900  .globl _Videopac_Subsong0DisarkByteRegionStart599
   04E9                    3901 _Videopac_Subsong0DisarkByteRegionStart599:
   04E9 18                 3902 	.byte 24	; Duration.
                           3903  .globl Videopac_Subsong0DisarkByteRegionEnd599
   04EA                    3904 Videopac_Subsong0DisarkByteRegionEnd599:
                           3905  .globl _Videopac_Subsong0DisarkPointerRegionStart600
   04EA                    3906 _Videopac_Subsong0DisarkPointerRegionStart600:
   04EA 0F 00              3907 	.word _Videopac_Subsong0_RegisterBlock_304
                           3908  .globl Videopac_Subsong0DisarkPointerRegionEnd600
   04EC                    3909 Videopac_Subsong0DisarkPointerRegionEnd600:
                           3910 
                           3911  .globl _Videopac_Subsong0DisarkByteRegionStart601
   04EC                    3912 _Videopac_Subsong0DisarkByteRegionStart601:
   04EC 18                 3913 	.byte 24	; Duration.
                           3914  .globl Videopac_Subsong0DisarkByteRegionEnd601
   04ED                    3915 Videopac_Subsong0DisarkByteRegionEnd601:
                           3916  .globl _Videopac_Subsong0DisarkPointerRegionStart602
   04ED                    3917 _Videopac_Subsong0DisarkPointerRegionStart602:
   04ED 09 7B              3918 	.word _Videopac_Subsong0_RegisterBlock_22
                           3919  .globl Videopac_Subsong0DisarkPointerRegionEnd602
   04EF                    3920 Videopac_Subsong0DisarkPointerRegionEnd602:
                           3921 
                           3922  .globl _Videopac_Subsong0DisarkByteRegionStart603
   04EF                    3923 _Videopac_Subsong0DisarkByteRegionStart603:
   04EF 18                 3924 	.byte 24	; Duration.
                           3925  .globl Videopac_Subsong0DisarkByteRegionEnd603
   04F0                    3926 Videopac_Subsong0DisarkByteRegionEnd603:
                           3927  .globl _Videopac_Subsong0DisarkPointerRegionStart604
   04F0                    3928 _Videopac_Subsong0DisarkPointerRegionStart604:
   04F0 0E 45              3929 	.word _Videopac_Subsong0_RegisterBlock_150
                           3930  .globl Videopac_Subsong0DisarkPointerRegionEnd604
   04F2                    3931 Videopac_Subsong0DisarkPointerRegionEnd604:
                           3932 
                           3933  .globl _Videopac_Subsong0DisarkByteRegionStart605
   04F2                    3934 _Videopac_Subsong0DisarkByteRegionStart605:
   04F2 18                 3935 	.byte 24	; Duration.
                           3936  .globl Videopac_Subsong0DisarkByteRegionEnd605
   04F3                    3937 Videopac_Subsong0DisarkByteRegionEnd605:
                           3938  .globl _Videopac_Subsong0DisarkPointerRegionStart606
   04F3                    3939 _Videopac_Subsong0DisarkPointerRegionStart606:
   04F3 0D 03              3940 	.word _Videopac_Subsong0_RegisterBlock_111
                           3941  .globl Videopac_Subsong0DisarkPointerRegionEnd606
   04F5                    3942 Videopac_Subsong0DisarkPointerRegionEnd606:
                           3943 
                           3944  .globl _Videopac_Subsong0DisarkByteRegionStart607
   04F5                    3945 _Videopac_Subsong0DisarkByteRegionStart607:
   04F5 0C                 3946 	.byte 12	; Duration.
                           3947  .globl Videopac_Subsong0DisarkByteRegionEnd607
   04F6                    3948 Videopac_Subsong0DisarkByteRegionEnd607:
                           3949  .globl _Videopac_Subsong0DisarkPointerRegionStart608
   04F6                    3950 _Videopac_Subsong0DisarkPointerRegionStart608:
   04F6 10 84              3951 	.word _Videopac_Subsong0_RegisterBlock_316
                           3952  .globl Videopac_Subsong0DisarkPointerRegionEnd608
   04F8                    3953 Videopac_Subsong0DisarkPointerRegionEnd608:
                           3954 
                           3955  .globl Videopac_Subsong0_Track_60
   04F8                    3956 Videopac_Subsong0_Track_60:
                           3957  .globl _Videopac_Subsong0DisarkByteRegionStart609
   04F8                    3958 _Videopac_Subsong0DisarkByteRegionStart609:
   04F8 12                 3959 	.byte 18	; Duration.
                           3960  .globl Videopac_Subsong0DisarkByteRegionEnd609
   04F9                    3961 Videopac_Subsong0DisarkByteRegionEnd609:
                           3962  .globl _Videopac_Subsong0DisarkPointerRegionStart610
   04F9                    3963 _Videopac_Subsong0DisarkPointerRegionStart610:
   04F9 0D ED              3964 	.word _Videopac_Subsong0_RegisterBlock_29
                           3965  .globl Videopac_Subsong0DisarkPointerRegionEnd610
   04FB                    3966 Videopac_Subsong0DisarkPointerRegionEnd610:
                           3967 
                           3968  .globl _Videopac_Subsong0DisarkByteRegionStart611
   04FB                    3969 _Videopac_Subsong0DisarkByteRegionStart611:
   04FB 18                 3970 	.byte 24	; Duration.
                           3971  .globl Videopac_Subsong0DisarkByteRegionEnd611
   04FC                    3972 Videopac_Subsong0DisarkByteRegionEnd611:
                           3973  .globl _Videopac_Subsong0DisarkPointerRegionStart612
   04FC                    3974 _Videopac_Subsong0DisarkPointerRegionStart612:
   04FC 0E 67              3975 	.word _Videopac_Subsong0_RegisterBlock_163
                           3976  .globl Videopac_Subsong0DisarkPointerRegionEnd612
   04FE                    3977 Videopac_Subsong0DisarkPointerRegionEnd612:
                           3978 
                           3979  .globl _Videopac_Subsong0DisarkByteRegionStart613
   04FE                    3980 _Videopac_Subsong0DisarkByteRegionStart613:
   04FE 18                 3981 	.byte 24	; Duration.
                           3982  .globl Videopac_Subsong0DisarkByteRegionEnd613
   04FF                    3983 Videopac_Subsong0DisarkByteRegionEnd613:
                           3984  .globl _Videopac_Subsong0DisarkPointerRegionStart614
   04FF                    3985 _Videopac_Subsong0DisarkPointerRegionStart614:
   04FF 06 F5              3986 	.word _Videopac_Subsong0_RegisterBlock_1
                           3987  .globl Videopac_Subsong0DisarkPointerRegionEnd614
   0501                    3988 Videopac_Subsong0DisarkPointerRegionEnd614:
                           3989 
                           3990  .globl _Videopac_Subsong0DisarkByteRegionStart615
   0501                    3991 _Videopac_Subsong0DisarkByteRegionStart615:
   0501 18                 3992 	.byte 24	; Duration.
                           3993  .globl Videopac_Subsong0DisarkByteRegionEnd615
   0502                    3994 Videopac_Subsong0DisarkByteRegionEnd615:
                           3995  .globl _Videopac_Subsong0DisarkPointerRegionStart616
   0502                    3996 _Videopac_Subsong0DisarkPointerRegionStart616:
   0502 0F 3D              3997 	.word _Videopac_Subsong0_RegisterBlock_321
                           3998  .globl Videopac_Subsong0DisarkPointerRegionEnd616
   0504                    3999 Videopac_Subsong0DisarkPointerRegionEnd616:
                           4000 
                           4001  .globl _Videopac_Subsong0DisarkByteRegionStart617
   0504                    4002 _Videopac_Subsong0DisarkByteRegionStart617:
   0504 18                 4003 	.byte 24	; Duration.
                           4004  .globl Videopac_Subsong0DisarkByteRegionEnd617
   0505                    4005 Videopac_Subsong0DisarkByteRegionEnd617:
                           4006  .globl _Videopac_Subsong0DisarkPointerRegionStart618
   0505                    4007 _Videopac_Subsong0DisarkPointerRegionStart618:
   0505 07 31              4008 	.word _Videopac_Subsong0_RegisterBlock_2
                           4009  .globl Videopac_Subsong0DisarkPointerRegionEnd618
   0507                    4010 Videopac_Subsong0DisarkPointerRegionEnd618:
                           4011 
                           4012  .globl _Videopac_Subsong0DisarkByteRegionStart619
   0507                    4013 _Videopac_Subsong0DisarkByteRegionStart619:
   0507 18                 4014 	.byte 24	; Duration.
                           4015  .globl Videopac_Subsong0DisarkByteRegionEnd619
   0508                    4016 Videopac_Subsong0DisarkByteRegionEnd619:
                           4017  .globl _Videopac_Subsong0DisarkPointerRegionStart620
   0508                    4018 _Videopac_Subsong0DisarkPointerRegionStart620:
   0508 0E 67              4019 	.word _Videopac_Subsong0_RegisterBlock_163
                           4020  .globl Videopac_Subsong0DisarkPointerRegionEnd620
   050A                    4021 Videopac_Subsong0DisarkPointerRegionEnd620:
                           4022 
                           4023  .globl _Videopac_Subsong0DisarkByteRegionStart621
   050A                    4024 _Videopac_Subsong0DisarkByteRegionStart621:
   050A 18                 4025 	.byte 24	; Duration.
                           4026  .globl Videopac_Subsong0DisarkByteRegionEnd621
   050B                    4027 Videopac_Subsong0DisarkByteRegionEnd621:
                           4028  .globl _Videopac_Subsong0DisarkPointerRegionStart622
   050B                    4029 _Videopac_Subsong0DisarkPointerRegionStart622:
   050B 07 6D              4030 	.word _Videopac_Subsong0_RegisterBlock_3
                           4031  .globl Videopac_Subsong0DisarkPointerRegionEnd622
   050D                    4032 Videopac_Subsong0DisarkPointerRegionEnd622:
                           4033 
                           4034  .globl _Videopac_Subsong0DisarkByteRegionStart623
   050D                    4035 _Videopac_Subsong0DisarkByteRegionStart623:
   050D 18                 4036 	.byte 24	; Duration.
                           4037  .globl Videopac_Subsong0DisarkByteRegionEnd623
   050E                    4038 Videopac_Subsong0DisarkByteRegionEnd623:
                           4039  .globl _Videopac_Subsong0DisarkPointerRegionStart624
   050E                    4040 _Videopac_Subsong0DisarkPointerRegionStart624:
   050E 0F 5F              4041 	.word _Videopac_Subsong0_RegisterBlock_325
                           4042  .globl Videopac_Subsong0DisarkPointerRegionEnd624
   0510                    4043 Videopac_Subsong0DisarkPointerRegionEnd624:
                           4044 
                           4045  .globl _Videopac_Subsong0DisarkByteRegionStart625
   0510                    4046 _Videopac_Subsong0DisarkByteRegionStart625:
   0510 18                 4047 	.byte 24	; Duration.
                           4048  .globl Videopac_Subsong0DisarkByteRegionEnd625
   0511                    4049 Videopac_Subsong0DisarkByteRegionEnd625:
                           4050  .globl _Videopac_Subsong0DisarkPointerRegionStart626
   0511                    4051 _Videopac_Subsong0DisarkPointerRegionStart626:
   0511 07 31              4052 	.word _Videopac_Subsong0_RegisterBlock_2
                           4053  .globl Videopac_Subsong0DisarkPointerRegionEnd626
   0513                    4054 Videopac_Subsong0DisarkPointerRegionEnd626:
                           4055 
                           4056  .globl _Videopac_Subsong0DisarkByteRegionStart627
   0513                    4057 _Videopac_Subsong0DisarkByteRegionStart627:
   0513 18                 4058 	.byte 24	; Duration.
                           4059  .globl Videopac_Subsong0DisarkByteRegionEnd627
   0514                    4060 Videopac_Subsong0DisarkByteRegionEnd627:
                           4061  .globl _Videopac_Subsong0DisarkPointerRegionStart628
   0514                    4062 _Videopac_Subsong0DisarkPointerRegionStart628:
   0514 0E 67              4063 	.word _Videopac_Subsong0_RegisterBlock_163
                           4064  .globl Videopac_Subsong0DisarkPointerRegionEnd628
   0516                    4065 Videopac_Subsong0DisarkPointerRegionEnd628:
                           4066 
                           4067  .globl _Videopac_Subsong0DisarkByteRegionStart629
   0516                    4068 _Videopac_Subsong0DisarkByteRegionStart629:
   0516 18                 4069 	.byte 24	; Duration.
                           4070  .globl Videopac_Subsong0DisarkByteRegionEnd629
   0517                    4071 Videopac_Subsong0DisarkByteRegionEnd629:
                           4072  .globl _Videopac_Subsong0DisarkPointerRegionStart630
   0517                    4073 _Videopac_Subsong0DisarkPointerRegionStart630:
   0517 07 A9              4074 	.word _Videopac_Subsong0_RegisterBlock_5
                           4075  .globl Videopac_Subsong0DisarkPointerRegionEnd630
   0519                    4076 Videopac_Subsong0DisarkPointerRegionEnd630:
                           4077 
                           4078  .globl _Videopac_Subsong0DisarkByteRegionStart631
   0519                    4079 _Videopac_Subsong0DisarkByteRegionStart631:
   0519 18                 4080 	.byte 24	; Duration.
                           4081  .globl Videopac_Subsong0DisarkByteRegionEnd631
   051A                    4082 Videopac_Subsong0DisarkByteRegionEnd631:
                           4083  .globl _Videopac_Subsong0DisarkPointerRegionStart632
   051A                    4084 _Videopac_Subsong0DisarkPointerRegionStart632:
   051A 0F 3D              4085 	.word _Videopac_Subsong0_RegisterBlock_321
                           4086  .globl Videopac_Subsong0DisarkPointerRegionEnd632
   051C                    4087 Videopac_Subsong0DisarkPointerRegionEnd632:
                           4088 
                           4089  .globl _Videopac_Subsong0DisarkByteRegionStart633
   051C                    4090 _Videopac_Subsong0DisarkByteRegionStart633:
   051C 18                 4091 	.byte 24	; Duration.
                           4092  .globl Videopac_Subsong0DisarkByteRegionEnd633
   051D                    4093 Videopac_Subsong0DisarkByteRegionEnd633:
                           4094  .globl _Videopac_Subsong0DisarkPointerRegionStart634
   051D                    4095 _Videopac_Subsong0DisarkPointerRegionStart634:
   051D 07 31              4096 	.word _Videopac_Subsong0_RegisterBlock_2
                           4097  .globl Videopac_Subsong0DisarkPointerRegionEnd634
   051F                    4098 Videopac_Subsong0DisarkPointerRegionEnd634:
                           4099 
                           4100  .globl _Videopac_Subsong0DisarkByteRegionStart635
   051F                    4101 _Videopac_Subsong0DisarkByteRegionStart635:
   051F 18                 4102 	.byte 24	; Duration.
                           4103  .globl Videopac_Subsong0DisarkByteRegionEnd635
   0520                    4104 Videopac_Subsong0DisarkByteRegionEnd635:
                           4105  .globl _Videopac_Subsong0DisarkPointerRegionStart636
   0520                    4106 _Videopac_Subsong0DisarkPointerRegionStart636:
   0520 0E 67              4107 	.word _Videopac_Subsong0_RegisterBlock_163
                           4108  .globl Videopac_Subsong0DisarkPointerRegionEnd636
   0522                    4109 Videopac_Subsong0DisarkPointerRegionEnd636:
                           4110 
                           4111  .globl _Videopac_Subsong0DisarkByteRegionStart637
   0522                    4112 _Videopac_Subsong0DisarkByteRegionStart637:
   0522 18                 4113 	.byte 24	; Duration.
                           4114  .globl Videopac_Subsong0DisarkByteRegionEnd637
   0523                    4115 Videopac_Subsong0DisarkByteRegionEnd637:
                           4116  .globl _Videopac_Subsong0DisarkPointerRegionStart638
   0523                    4117 _Videopac_Subsong0DisarkPointerRegionStart638:
   0523 07 E5              4118 	.word _Videopac_Subsong0_RegisterBlock_7
                           4119  .globl Videopac_Subsong0DisarkPointerRegionEnd638
   0525                    4120 Videopac_Subsong0DisarkPointerRegionEnd638:
                           4121 
                           4122  .globl _Videopac_Subsong0DisarkByteRegionStart639
   0525                    4123 _Videopac_Subsong0DisarkByteRegionStart639:
   0525 18                 4124 	.byte 24	; Duration.
                           4125  .globl Videopac_Subsong0DisarkByteRegionEnd639
   0526                    4126 Videopac_Subsong0DisarkByteRegionEnd639:
                           4127  .globl _Videopac_Subsong0DisarkPointerRegionStart640
   0526                    4128 _Videopac_Subsong0DisarkPointerRegionStart640:
   0526 0F 7A              4129 	.word _Videopac_Subsong0_RegisterBlock_333
                           4130  .globl Videopac_Subsong0DisarkPointerRegionEnd640
   0528                    4131 Videopac_Subsong0DisarkPointerRegionEnd640:
                           4132 
                           4133  .globl _Videopac_Subsong0DisarkByteRegionStart641
   0528                    4134 _Videopac_Subsong0DisarkByteRegionStart641:
   0528 06                 4135 	.byte 6	; Duration.
                           4136  .globl Videopac_Subsong0DisarkByteRegionEnd641
   0529                    4137 Videopac_Subsong0DisarkByteRegionEnd641:
                           4138  .globl _Videopac_Subsong0DisarkPointerRegionStart642
   0529                    4139 _Videopac_Subsong0DisarkPointerRegionStart642:
   0529 0A 41              4140 	.word _Videopac_Subsong0_RegisterBlock_91
                           4141  .globl Videopac_Subsong0DisarkPointerRegionEnd642
   052B                    4142 Videopac_Subsong0DisarkPointerRegionEnd642:
                           4143 
                           4144  .globl Videopac_Subsong0_Track_62
   052B                    4145 Videopac_Subsong0_Track_62:
                           4146  .globl _Videopac_Subsong0DisarkByteRegionStart643
   052B                    4147 _Videopac_Subsong0DisarkByteRegionStart643:
   052B 0C                 4148 	.byte 12	; Duration.
                           4149  .globl Videopac_Subsong0DisarkByteRegionEnd643
   052C                    4150 Videopac_Subsong0DisarkByteRegionEnd643:
                           4151  .globl _Videopac_Subsong0DisarkPointerRegionStart644
   052C                    4152 _Videopac_Subsong0DisarkPointerRegionStart644:
   052C 10 96              4153 	.word _Videopac_Subsong0_RegisterBlock_336
                           4154  .globl Videopac_Subsong0DisarkPointerRegionEnd644
   052E                    4155 Videopac_Subsong0DisarkPointerRegionEnd644:
                           4156 
                           4157  .globl _Videopac_Subsong0DisarkByteRegionStart645
   052E                    4158 _Videopac_Subsong0DisarkByteRegionStart645:
   052E 18                 4159 	.byte 24	; Duration.
                           4160  .globl Videopac_Subsong0DisarkByteRegionEnd645
   052F                    4161 Videopac_Subsong0DisarkByteRegionEnd645:
                           4162  .globl _Videopac_Subsong0DisarkPointerRegionStart646
   052F                    4163 _Videopac_Subsong0DisarkPointerRegionStart646:
   052F 09 4D              4164 	.word _Videopac_Subsong0_RegisterBlock_21
                           4165  .globl Videopac_Subsong0DisarkPointerRegionEnd646
   0531                    4166 Videopac_Subsong0DisarkPointerRegionEnd646:
                           4167 
                           4168  .globl _Videopac_Subsong0DisarkByteRegionStart647
   0531                    4169 _Videopac_Subsong0DisarkByteRegionStart647:
   0531 18                 4170 	.byte 24	; Duration.
                           4171  .globl Videopac_Subsong0DisarkByteRegionEnd647
   0532                    4172 Videopac_Subsong0DisarkByteRegionEnd647:
                           4173  .globl _Videopac_Subsong0DisarkPointerRegionStart648
   0532                    4174 _Videopac_Subsong0DisarkPointerRegionStart648:
   0532 0E 45              4175 	.word _Videopac_Subsong0_RegisterBlock_150
                           4176  .globl Videopac_Subsong0DisarkPointerRegionEnd648
   0534                    4177 Videopac_Subsong0DisarkPointerRegionEnd648:
                           4178 
                           4179  .globl _Videopac_Subsong0DisarkByteRegionStart649
   0534                    4180 _Videopac_Subsong0DisarkByteRegionStart649:
   0534 18                 4181 	.byte 24	; Duration.
                           4182  .globl Videopac_Subsong0DisarkByteRegionEnd649
   0535                    4183 Videopac_Subsong0DisarkByteRegionEnd649:
                           4184  .globl _Videopac_Subsong0DisarkPointerRegionStart650
   0535                    4185 _Videopac_Subsong0DisarkPointerRegionStart650:
   0535 09 4D              4186 	.word _Videopac_Subsong0_RegisterBlock_21
                           4187  .globl Videopac_Subsong0DisarkPointerRegionEnd650
   0537                    4188 Videopac_Subsong0DisarkPointerRegionEnd650:
                           4189 
                           4190  .globl _Videopac_Subsong0DisarkByteRegionStart651
   0537                    4191 _Videopac_Subsong0DisarkByteRegionStart651:
   0537 18                 4192 	.byte 24	; Duration.
                           4193  .globl Videopac_Subsong0DisarkByteRegionEnd651
   0538                    4194 Videopac_Subsong0DisarkByteRegionEnd651:
                           4195  .globl _Videopac_Subsong0DisarkPointerRegionStart652
   0538                    4196 _Videopac_Subsong0DisarkPointerRegionStart652:
   0538 0F 00              4197 	.word _Videopac_Subsong0_RegisterBlock_304
                           4198  .globl Videopac_Subsong0DisarkPointerRegionEnd652
   053A                    4199 Videopac_Subsong0DisarkPointerRegionEnd652:
                           4200 
                           4201  .globl _Videopac_Subsong0DisarkByteRegionStart653
   053A                    4202 _Videopac_Subsong0DisarkByteRegionStart653:
   053A 18                 4203 	.byte 24	; Duration.
                           4204  .globl Videopac_Subsong0DisarkByteRegionEnd653
   053B                    4205 Videopac_Subsong0DisarkByteRegionEnd653:
                           4206  .globl _Videopac_Subsong0DisarkPointerRegionStart654
   053B                    4207 _Videopac_Subsong0DisarkPointerRegionStart654:
   053B 09 7B              4208 	.word _Videopac_Subsong0_RegisterBlock_22
                           4209  .globl Videopac_Subsong0DisarkPointerRegionEnd654
   053D                    4210 Videopac_Subsong0DisarkPointerRegionEnd654:
                           4211 
                           4212  .globl _Videopac_Subsong0DisarkByteRegionStart655
   053D                    4213 _Videopac_Subsong0DisarkByteRegionStart655:
   053D 18                 4214 	.byte 24	; Duration.
                           4215  .globl Videopac_Subsong0DisarkByteRegionEnd655
   053E                    4216 Videopac_Subsong0DisarkByteRegionEnd655:
                           4217  .globl _Videopac_Subsong0DisarkPointerRegionStart656
   053E                    4218 _Videopac_Subsong0DisarkPointerRegionStart656:
   053E 0E 45              4219 	.word _Videopac_Subsong0_RegisterBlock_150
                           4220  .globl Videopac_Subsong0DisarkPointerRegionEnd656
   0540                    4221 Videopac_Subsong0DisarkPointerRegionEnd656:
                           4222 
                           4223  .globl _Videopac_Subsong0DisarkByteRegionStart657
   0540                    4224 _Videopac_Subsong0DisarkByteRegionStart657:
   0540 18                 4225 	.byte 24	; Duration.
                           4226  .globl Videopac_Subsong0DisarkByteRegionEnd657
   0541                    4227 Videopac_Subsong0DisarkByteRegionEnd657:
                           4228  .globl _Videopac_Subsong0DisarkPointerRegionStart658
   0541                    4229 _Videopac_Subsong0DisarkPointerRegionStart658:
   0541 09 A9              4230 	.word _Videopac_Subsong0_RegisterBlock_23
                           4231  .globl Videopac_Subsong0DisarkPointerRegionEnd658
   0543                    4232 Videopac_Subsong0DisarkPointerRegionEnd658:
                           4233 
                           4234  .globl _Videopac_Subsong0DisarkByteRegionStart659
   0543                    4235 _Videopac_Subsong0DisarkByteRegionStart659:
   0543 18                 4236 	.byte 24	; Duration.
                           4237  .globl Videopac_Subsong0DisarkByteRegionEnd659
   0544                    4238 Videopac_Subsong0DisarkByteRegionEnd659:
                           4239  .globl _Videopac_Subsong0DisarkPointerRegionStart660
   0544                    4240 _Videopac_Subsong0DisarkPointerRegionStart660:
   0544 0F 98              4241 	.word _Videopac_Subsong0_RegisterBlock_344
                           4242  .globl Videopac_Subsong0DisarkPointerRegionEnd660
   0546                    4243 Videopac_Subsong0DisarkPointerRegionEnd660:
                           4244 
                           4245  .globl _Videopac_Subsong0DisarkByteRegionStart661
   0546                    4246 _Videopac_Subsong0DisarkByteRegionStart661:
   0546 18                 4247 	.byte 24	; Duration.
                           4248  .globl Videopac_Subsong0DisarkByteRegionEnd661
   0547                    4249 Videopac_Subsong0DisarkByteRegionEnd661:
                           4250  .globl _Videopac_Subsong0DisarkPointerRegionStart662
   0547                    4251 _Videopac_Subsong0DisarkPointerRegionStart662:
   0547 09 7B              4252 	.word _Videopac_Subsong0_RegisterBlock_22
                           4253  .globl Videopac_Subsong0DisarkPointerRegionEnd662
   0549                    4254 Videopac_Subsong0DisarkPointerRegionEnd662:
                           4255 
                           4256  .globl _Videopac_Subsong0DisarkByteRegionStart663
   0549                    4257 _Videopac_Subsong0DisarkByteRegionStart663:
   0549 18                 4258 	.byte 24	; Duration.
                           4259  .globl Videopac_Subsong0DisarkByteRegionEnd663
   054A                    4260 Videopac_Subsong0DisarkByteRegionEnd663:
                           4261  .globl _Videopac_Subsong0DisarkPointerRegionStart664
   054A                    4262 _Videopac_Subsong0DisarkPointerRegionStart664:
   054A 0E 45              4263 	.word _Videopac_Subsong0_RegisterBlock_150
                           4264  .globl Videopac_Subsong0DisarkPointerRegionEnd664
   054C                    4265 Videopac_Subsong0DisarkPointerRegionEnd664:
                           4266 
                           4267  .globl _Videopac_Subsong0DisarkByteRegionStart665
   054C                    4268 _Videopac_Subsong0DisarkByteRegionStart665:
   054C 18                 4269 	.byte 24	; Duration.
                           4270  .globl Videopac_Subsong0DisarkByteRegionEnd665
   054D                    4271 Videopac_Subsong0DisarkByteRegionEnd665:
                           4272  .globl _Videopac_Subsong0DisarkPointerRegionStart666
   054D                    4273 _Videopac_Subsong0DisarkPointerRegionStart666:
   054D 09 D7              4274 	.word _Videopac_Subsong0_RegisterBlock_25
                           4275  .globl Videopac_Subsong0DisarkPointerRegionEnd666
   054F                    4276 Videopac_Subsong0DisarkPointerRegionEnd666:
                           4277 
                           4278  .globl _Videopac_Subsong0DisarkByteRegionStart667
   054F                    4279 _Videopac_Subsong0DisarkByteRegionStart667:
   054F 18                 4280 	.byte 24	; Duration.
                           4281  .globl Videopac_Subsong0DisarkByteRegionEnd667
   0550                    4282 Videopac_Subsong0DisarkByteRegionEnd667:
                           4283  .globl _Videopac_Subsong0DisarkPointerRegionStart668
   0550                    4284 _Videopac_Subsong0DisarkPointerRegionStart668:
   0550 0F 00              4285 	.word _Videopac_Subsong0_RegisterBlock_304
                           4286  .globl Videopac_Subsong0DisarkPointerRegionEnd668
   0552                    4287 Videopac_Subsong0DisarkPointerRegionEnd668:
                           4288 
                           4289  .globl _Videopac_Subsong0DisarkByteRegionStart669
   0552                    4290 _Videopac_Subsong0DisarkByteRegionStart669:
   0552 18                 4291 	.byte 24	; Duration.
                           4292  .globl Videopac_Subsong0DisarkByteRegionEnd669
   0553                    4293 Videopac_Subsong0DisarkByteRegionEnd669:
                           4294  .globl _Videopac_Subsong0DisarkPointerRegionStart670
   0553                    4295 _Videopac_Subsong0DisarkPointerRegionStart670:
   0553 09 7B              4296 	.word _Videopac_Subsong0_RegisterBlock_22
                           4297  .globl Videopac_Subsong0DisarkPointerRegionEnd670
   0555                    4298 Videopac_Subsong0DisarkPointerRegionEnd670:
                           4299 
                           4300  .globl _Videopac_Subsong0DisarkByteRegionStart671
   0555                    4301 _Videopac_Subsong0DisarkByteRegionStart671:
   0555 18                 4302 	.byte 24	; Duration.
                           4303  .globl Videopac_Subsong0DisarkByteRegionEnd671
   0556                    4304 Videopac_Subsong0DisarkByteRegionEnd671:
                           4305  .globl _Videopac_Subsong0DisarkPointerRegionStart672
   0556                    4306 _Videopac_Subsong0DisarkPointerRegionStart672:
   0556 0E 45              4307 	.word _Videopac_Subsong0_RegisterBlock_150
                           4308  .globl Videopac_Subsong0DisarkPointerRegionEnd672
   0558                    4309 Videopac_Subsong0DisarkPointerRegionEnd672:
                           4310 
                           4311  .globl _Videopac_Subsong0DisarkByteRegionStart673
   0558                    4312 _Videopac_Subsong0DisarkByteRegionStart673:
   0558 18                 4313 	.byte 24	; Duration.
                           4314  .globl Videopac_Subsong0DisarkByteRegionEnd673
   0559                    4315 Videopac_Subsong0DisarkByteRegionEnd673:
                           4316  .globl _Videopac_Subsong0DisarkPointerRegionStart674
   0559                    4317 _Videopac_Subsong0DisarkPointerRegionStart674:
   0559 0D 03              4318 	.word _Videopac_Subsong0_RegisterBlock_111
                           4319  .globl Videopac_Subsong0DisarkPointerRegionEnd674
   055B                    4320 Videopac_Subsong0DisarkPointerRegionEnd674:
                           4321 
                           4322  .globl _Videopac_Subsong0DisarkByteRegionStart675
   055B                    4323 _Videopac_Subsong0DisarkByteRegionStart675:
   055B 0C                 4324 	.byte 12	; Duration.
                           4325  .globl Videopac_Subsong0DisarkByteRegionEnd675
   055C                    4326 Videopac_Subsong0DisarkByteRegionEnd675:
                           4327  .globl _Videopac_Subsong0DisarkPointerRegionStart676
   055C                    4328 _Videopac_Subsong0DisarkPointerRegionStart676:
   055C 10 84              4329 	.word _Videopac_Subsong0_RegisterBlock_316
                           4330  .globl Videopac_Subsong0DisarkPointerRegionEnd676
   055E                    4331 Videopac_Subsong0DisarkPointerRegionEnd676:
                           4332 
                           4333  .globl Videopac_Subsong0_Track_63
   055E                    4334 Videopac_Subsong0_Track_63:
                           4335  .globl _Videopac_Subsong0DisarkByteRegionStart677
   055E                    4336 _Videopac_Subsong0DisarkByteRegionStart677:
   055E 12                 4337 	.byte 18	; Duration.
                           4338  .globl Videopac_Subsong0DisarkByteRegionEnd677
   055F                    4339 Videopac_Subsong0DisarkByteRegionEnd677:
                           4340  .globl _Videopac_Subsong0DisarkPointerRegionStart678
   055F                    4341 _Videopac_Subsong0DisarkPointerRegionStart678:
   055F 0D F3              4342 	.word _Videopac_Subsong0_RegisterBlock_59
                           4343  .globl Videopac_Subsong0DisarkPointerRegionEnd678
   0561                    4344 Videopac_Subsong0DisarkPointerRegionEnd678:
                           4345 
                           4346  .globl _Videopac_Subsong0DisarkByteRegionStart679
   0561                    4347 _Videopac_Subsong0DisarkByteRegionStart679:
   0561 18                 4348 	.byte 24	; Duration.
                           4349  .globl Videopac_Subsong0DisarkByteRegionEnd679
   0562                    4350 Videopac_Subsong0DisarkByteRegionEnd679:
                           4351  .globl _Videopac_Subsong0DisarkPointerRegionStart680
   0562                    4352 _Videopac_Subsong0DisarkPointerRegionStart680:
   0562 0E 67              4353 	.word _Videopac_Subsong0_RegisterBlock_163
                           4354  .globl Videopac_Subsong0DisarkPointerRegionEnd680
   0564                    4355 Videopac_Subsong0DisarkPointerRegionEnd680:
                           4356 
                           4357  .globl _Videopac_Subsong0DisarkByteRegionStart681
   0564                    4358 _Videopac_Subsong0DisarkByteRegionStart681:
   0564 18                 4359 	.byte 24	; Duration.
                           4360  .globl Videopac_Subsong0DisarkByteRegionEnd681
   0565                    4361 Videopac_Subsong0DisarkByteRegionEnd681:
                           4362  .globl _Videopac_Subsong0DisarkPointerRegionStart682
   0565                    4363 _Videopac_Subsong0DisarkPointerRegionStart682:
   0565 06 F5              4364 	.word _Videopac_Subsong0_RegisterBlock_1
                           4365  .globl Videopac_Subsong0DisarkPointerRegionEnd682
   0567                    4366 Videopac_Subsong0DisarkPointerRegionEnd682:
                           4367 
                           4368  .globl _Videopac_Subsong0DisarkByteRegionStart683
   0567                    4369 _Videopac_Subsong0DisarkByteRegionStart683:
   0567 18                 4370 	.byte 24	; Duration.
                           4371  .globl Videopac_Subsong0DisarkByteRegionEnd683
   0568                    4372 Videopac_Subsong0DisarkByteRegionEnd683:
                           4373  .globl _Videopac_Subsong0DisarkPointerRegionStart684
   0568                    4374 _Videopac_Subsong0DisarkPointerRegionStart684:
   0568 0F 3D              4375 	.word _Videopac_Subsong0_RegisterBlock_321
                           4376  .globl Videopac_Subsong0DisarkPointerRegionEnd684
   056A                    4377 Videopac_Subsong0DisarkPointerRegionEnd684:
                           4378 
                           4379  .globl _Videopac_Subsong0DisarkByteRegionStart685
   056A                    4380 _Videopac_Subsong0DisarkByteRegionStart685:
   056A 18                 4381 	.byte 24	; Duration.
                           4382  .globl Videopac_Subsong0DisarkByteRegionEnd685
   056B                    4383 Videopac_Subsong0DisarkByteRegionEnd685:
                           4384  .globl _Videopac_Subsong0DisarkPointerRegionStart686
   056B                    4385 _Videopac_Subsong0DisarkPointerRegionStart686:
   056B 07 31              4386 	.word _Videopac_Subsong0_RegisterBlock_2
                           4387  .globl Videopac_Subsong0DisarkPointerRegionEnd686
   056D                    4388 Videopac_Subsong0DisarkPointerRegionEnd686:
                           4389 
                           4390  .globl _Videopac_Subsong0DisarkByteRegionStart687
   056D                    4391 _Videopac_Subsong0DisarkByteRegionStart687:
   056D 18                 4392 	.byte 24	; Duration.
                           4393  .globl Videopac_Subsong0DisarkByteRegionEnd687
   056E                    4394 Videopac_Subsong0DisarkByteRegionEnd687:
                           4395  .globl _Videopac_Subsong0DisarkPointerRegionStart688
   056E                    4396 _Videopac_Subsong0DisarkPointerRegionStart688:
   056E 0E 67              4397 	.word _Videopac_Subsong0_RegisterBlock_163
                           4398  .globl Videopac_Subsong0DisarkPointerRegionEnd688
   0570                    4399 Videopac_Subsong0DisarkPointerRegionEnd688:
                           4400 
                           4401  .globl _Videopac_Subsong0DisarkByteRegionStart689
   0570                    4402 _Videopac_Subsong0DisarkByteRegionStart689:
   0570 18                 4403 	.byte 24	; Duration.
                           4404  .globl Videopac_Subsong0DisarkByteRegionEnd689
   0571                    4405 Videopac_Subsong0DisarkByteRegionEnd689:
                           4406  .globl _Videopac_Subsong0DisarkPointerRegionStart690
   0571                    4407 _Videopac_Subsong0DisarkPointerRegionStart690:
   0571 07 6D              4408 	.word _Videopac_Subsong0_RegisterBlock_3
                           4409  .globl Videopac_Subsong0DisarkPointerRegionEnd690
   0573                    4410 Videopac_Subsong0DisarkPointerRegionEnd690:
                           4411 
                           4412  .globl _Videopac_Subsong0DisarkByteRegionStart691
   0573                    4413 _Videopac_Subsong0DisarkByteRegionStart691:
   0573 18                 4414 	.byte 24	; Duration.
                           4415  .globl Videopac_Subsong0DisarkByteRegionEnd691
   0574                    4416 Videopac_Subsong0DisarkByteRegionEnd691:
                           4417  .globl _Videopac_Subsong0DisarkPointerRegionStart692
   0574                    4418 _Videopac_Subsong0DisarkPointerRegionStart692:
   0574 0F 5F              4419 	.word _Videopac_Subsong0_RegisterBlock_325
                           4420  .globl Videopac_Subsong0DisarkPointerRegionEnd692
   0576                    4421 Videopac_Subsong0DisarkPointerRegionEnd692:
                           4422 
                           4423  .globl _Videopac_Subsong0DisarkByteRegionStart693
   0576                    4424 _Videopac_Subsong0DisarkByteRegionStart693:
   0576 18                 4425 	.byte 24	; Duration.
                           4426  .globl Videopac_Subsong0DisarkByteRegionEnd693
   0577                    4427 Videopac_Subsong0DisarkByteRegionEnd693:
                           4428  .globl _Videopac_Subsong0DisarkPointerRegionStart694
   0577                    4429 _Videopac_Subsong0DisarkPointerRegionStart694:
   0577 07 31              4430 	.word _Videopac_Subsong0_RegisterBlock_2
                           4431  .globl Videopac_Subsong0DisarkPointerRegionEnd694
   0579                    4432 Videopac_Subsong0DisarkPointerRegionEnd694:
                           4433 
                           4434  .globl _Videopac_Subsong0DisarkByteRegionStart695
   0579                    4435 _Videopac_Subsong0DisarkByteRegionStart695:
   0579 18                 4436 	.byte 24	; Duration.
                           4437  .globl Videopac_Subsong0DisarkByteRegionEnd695
   057A                    4438 Videopac_Subsong0DisarkByteRegionEnd695:
                           4439  .globl _Videopac_Subsong0DisarkPointerRegionStart696
   057A                    4440 _Videopac_Subsong0DisarkPointerRegionStart696:
   057A 0E 67              4441 	.word _Videopac_Subsong0_RegisterBlock_163
                           4442  .globl Videopac_Subsong0DisarkPointerRegionEnd696
   057C                    4443 Videopac_Subsong0DisarkPointerRegionEnd696:
                           4444 
                           4445  .globl _Videopac_Subsong0DisarkByteRegionStart697
   057C                    4446 _Videopac_Subsong0DisarkByteRegionStart697:
   057C 18                 4447 	.byte 24	; Duration.
                           4448  .globl Videopac_Subsong0DisarkByteRegionEnd697
   057D                    4449 Videopac_Subsong0DisarkByteRegionEnd697:
                           4450  .globl _Videopac_Subsong0DisarkPointerRegionStart698
   057D                    4451 _Videopac_Subsong0DisarkPointerRegionStart698:
   057D 07 A9              4452 	.word _Videopac_Subsong0_RegisterBlock_5
                           4453  .globl Videopac_Subsong0DisarkPointerRegionEnd698
   057F                    4454 Videopac_Subsong0DisarkPointerRegionEnd698:
                           4455 
                           4456  .globl _Videopac_Subsong0DisarkByteRegionStart699
   057F                    4457 _Videopac_Subsong0DisarkByteRegionStart699:
   057F 18                 4458 	.byte 24	; Duration.
                           4459  .globl Videopac_Subsong0DisarkByteRegionEnd699
   0580                    4460 Videopac_Subsong0DisarkByteRegionEnd699:
                           4461  .globl _Videopac_Subsong0DisarkPointerRegionStart700
   0580                    4462 _Videopac_Subsong0DisarkPointerRegionStart700:
   0580 0F 3D              4463 	.word _Videopac_Subsong0_RegisterBlock_321
                           4464  .globl Videopac_Subsong0DisarkPointerRegionEnd700
   0582                    4465 Videopac_Subsong0DisarkPointerRegionEnd700:
                           4466 
                           4467  .globl _Videopac_Subsong0DisarkByteRegionStart701
   0582                    4468 _Videopac_Subsong0DisarkByteRegionStart701:
   0582 18                 4469 	.byte 24	; Duration.
                           4470  .globl Videopac_Subsong0DisarkByteRegionEnd701
   0583                    4471 Videopac_Subsong0DisarkByteRegionEnd701:
                           4472  .globl _Videopac_Subsong0DisarkPointerRegionStart702
   0583                    4473 _Videopac_Subsong0DisarkPointerRegionStart702:
   0583 07 31              4474 	.word _Videopac_Subsong0_RegisterBlock_2
                           4475  .globl Videopac_Subsong0DisarkPointerRegionEnd702
   0585                    4476 Videopac_Subsong0DisarkPointerRegionEnd702:
                           4477 
                           4478  .globl _Videopac_Subsong0DisarkByteRegionStart703
   0585                    4479 _Videopac_Subsong0DisarkByteRegionStart703:
   0585 18                 4480 	.byte 24	; Duration.
                           4481  .globl Videopac_Subsong0DisarkByteRegionEnd703
   0586                    4482 Videopac_Subsong0DisarkByteRegionEnd703:
                           4483  .globl _Videopac_Subsong0DisarkPointerRegionStart704
   0586                    4484 _Videopac_Subsong0DisarkPointerRegionStart704:
   0586 0E 67              4485 	.word _Videopac_Subsong0_RegisterBlock_163
                           4486  .globl Videopac_Subsong0DisarkPointerRegionEnd704
   0588                    4487 Videopac_Subsong0DisarkPointerRegionEnd704:
                           4488 
                           4489  .globl _Videopac_Subsong0DisarkByteRegionStart705
   0588                    4490 _Videopac_Subsong0DisarkByteRegionStart705:
   0588 18                 4491 	.byte 24	; Duration.
                           4492  .globl Videopac_Subsong0DisarkByteRegionEnd705
   0589                    4493 Videopac_Subsong0DisarkByteRegionEnd705:
                           4494  .globl _Videopac_Subsong0DisarkPointerRegionStart706
   0589                    4495 _Videopac_Subsong0DisarkPointerRegionStart706:
   0589 07 E5              4496 	.word _Videopac_Subsong0_RegisterBlock_7
                           4497  .globl Videopac_Subsong0DisarkPointerRegionEnd706
   058B                    4498 Videopac_Subsong0DisarkPointerRegionEnd706:
                           4499 
                           4500  .globl _Videopac_Subsong0DisarkByteRegionStart707
   058B                    4501 _Videopac_Subsong0DisarkByteRegionStart707:
   058B 18                 4502 	.byte 24	; Duration.
                           4503  .globl Videopac_Subsong0DisarkByteRegionEnd707
   058C                    4504 Videopac_Subsong0DisarkByteRegionEnd707:
                           4505  .globl _Videopac_Subsong0DisarkPointerRegionStart708
   058C                    4506 _Videopac_Subsong0DisarkPointerRegionStart708:
   058C 0F 7A              4507 	.word _Videopac_Subsong0_RegisterBlock_333
                           4508  .globl Videopac_Subsong0DisarkPointerRegionEnd708
   058E                    4509 Videopac_Subsong0DisarkPointerRegionEnd708:
                           4510 
                           4511  .globl _Videopac_Subsong0DisarkByteRegionStart709
   058E                    4512 _Videopac_Subsong0DisarkByteRegionStart709:
   058E 06                 4513 	.byte 6	; Duration.
                           4514  .globl Videopac_Subsong0DisarkByteRegionEnd709
   058F                    4515 Videopac_Subsong0DisarkByteRegionEnd709:
                           4516  .globl _Videopac_Subsong0DisarkPointerRegionStart710
   058F                    4517 _Videopac_Subsong0DisarkPointerRegionStart710:
   058F 0A 41              4518 	.word _Videopac_Subsong0_RegisterBlock_91
                           4519  .globl Videopac_Subsong0DisarkPointerRegionEnd710
   0591                    4520 Videopac_Subsong0DisarkPointerRegionEnd710:
                           4521 
                           4522  .globl Videopac_Subsong0_Track_64
   0591                    4523 Videopac_Subsong0_Track_64:
                           4524  .globl _Videopac_Subsong0DisarkByteRegionStart711
   0591                    4525 _Videopac_Subsong0DisarkByteRegionStart711:
   0591 18                 4526 	.byte 24	; Duration.
                           4527  .globl Videopac_Subsong0DisarkByteRegionEnd711
   0592                    4528 Videopac_Subsong0DisarkByteRegionEnd711:
                           4529  .globl _Videopac_Subsong0DisarkPointerRegionStart712
   0592                    4530 _Videopac_Subsong0DisarkPointerRegionStart712:
   0592 0E 87              4531 	.word _Videopac_Subsong0_RegisterBlock_204
                           4532  .globl Videopac_Subsong0DisarkPointerRegionEnd712
   0594                    4533 Videopac_Subsong0DisarkPointerRegionEnd712:
                           4534 
                           4535  .globl _Videopac_Subsong0DisarkByteRegionStart713
   0594                    4536 _Videopac_Subsong0DisarkByteRegionStart713:
   0594 18                 4537 	.byte 24	; Duration.
                           4538  .globl Videopac_Subsong0DisarkByteRegionEnd713
   0595                    4539 Videopac_Subsong0DisarkByteRegionEnd713:
                           4540  .globl _Videopac_Subsong0DisarkPointerRegionStart714
   0595                    4541 _Videopac_Subsong0DisarkPointerRegionStart714:
   0595 08 21              4542 	.word _Videopac_Subsong0_RegisterBlock_11
                           4543  .globl Videopac_Subsong0DisarkPointerRegionEnd714
   0597                    4544 Videopac_Subsong0DisarkPointerRegionEnd714:
                           4545 
                           4546  .globl _Videopac_Subsong0DisarkByteRegionStart715
   0597                    4547 _Videopac_Subsong0DisarkByteRegionStart715:
   0597 18                 4548 	.byte 24	; Duration.
                           4549  .globl Videopac_Subsong0DisarkByteRegionEnd715
   0598                    4550 Videopac_Subsong0DisarkByteRegionEnd715:
                           4551  .globl _Videopac_Subsong0DisarkPointerRegionStart716
   0598                    4552 _Videopac_Subsong0DisarkPointerRegionStart716:
   0598 0F AD              4553 	.word _Videopac_Subsong0_RegisterBlock_374
                           4554  .globl Videopac_Subsong0DisarkPointerRegionEnd716
   059A                    4555 Videopac_Subsong0DisarkPointerRegionEnd716:
                           4556 
                           4557  .globl _Videopac_Subsong0DisarkByteRegionStart717
   059A                    4558 _Videopac_Subsong0DisarkByteRegionStart717:
   059A 18                 4559 	.byte 24	; Duration.
                           4560  .globl Videopac_Subsong0DisarkByteRegionEnd717
   059B                    4561 Videopac_Subsong0DisarkByteRegionEnd717:
                           4562  .globl _Videopac_Subsong0DisarkPointerRegionStart718
   059B                    4563 _Videopac_Subsong0DisarkPointerRegionStart718:
   059B 08 5D              4564 	.word _Videopac_Subsong0_RegisterBlock_12
                           4565  .globl Videopac_Subsong0DisarkPointerRegionEnd718
   059D                    4566 Videopac_Subsong0DisarkPointerRegionEnd718:
                           4567 
                           4568  .globl _Videopac_Subsong0DisarkByteRegionStart719
   059D                    4569 _Videopac_Subsong0DisarkByteRegionStart719:
   059D 18                 4570 	.byte 24	; Duration.
                           4571  .globl Videopac_Subsong0DisarkByteRegionEnd719
   059E                    4572 Videopac_Subsong0DisarkByteRegionEnd719:
                           4573  .globl _Videopac_Subsong0DisarkPointerRegionStart720
   059E                    4574 _Videopac_Subsong0DisarkPointerRegionStart720:
   059E 0E 87              4575 	.word _Videopac_Subsong0_RegisterBlock_204
                           4576  .globl Videopac_Subsong0DisarkPointerRegionEnd720
   05A0                    4577 Videopac_Subsong0DisarkPointerRegionEnd720:
                           4578 
                           4579  .globl _Videopac_Subsong0DisarkByteRegionStart721
   05A0                    4580 _Videopac_Subsong0DisarkByteRegionStart721:
   05A0 18                 4581 	.byte 24	; Duration.
                           4582  .globl Videopac_Subsong0DisarkByteRegionEnd721
   05A1                    4583 Videopac_Subsong0DisarkByteRegionEnd721:
                           4584  .globl _Videopac_Subsong0DisarkPointerRegionStart722
   05A1                    4585 _Videopac_Subsong0DisarkPointerRegionStart722:
   05A1 08 99              4586 	.word _Videopac_Subsong0_RegisterBlock_13
                           4587  .globl Videopac_Subsong0DisarkPointerRegionEnd722
   05A3                    4588 Videopac_Subsong0DisarkPointerRegionEnd722:
                           4589 
                           4590  .globl _Videopac_Subsong0DisarkByteRegionStart723
   05A3                    4591 _Videopac_Subsong0DisarkByteRegionStart723:
   05A3 18                 4592 	.byte 24	; Duration.
                           4593  .globl Videopac_Subsong0DisarkByteRegionEnd723
   05A4                    4594 Videopac_Subsong0DisarkByteRegionEnd723:
                           4595  .globl _Videopac_Subsong0DisarkPointerRegionStart724
   05A4                    4596 _Videopac_Subsong0DisarkPointerRegionStart724:
   05A4 0F D1              4597 	.word _Videopac_Subsong0_RegisterBlock_378
                           4598  .globl Videopac_Subsong0DisarkPointerRegionEnd724
   05A6                    4599 Videopac_Subsong0DisarkPointerRegionEnd724:
                           4600 
                           4601  .globl _Videopac_Subsong0DisarkByteRegionStart725
   05A6                    4602 _Videopac_Subsong0DisarkByteRegionStart725:
   05A6 18                 4603 	.byte 24	; Duration.
                           4604  .globl Videopac_Subsong0DisarkByteRegionEnd725
   05A7                    4605 Videopac_Subsong0DisarkByteRegionEnd725:
                           4606  .globl _Videopac_Subsong0DisarkPointerRegionStart726
   05A7                    4607 _Videopac_Subsong0DisarkPointerRegionStart726:
   05A7 08 5D              4608 	.word _Videopac_Subsong0_RegisterBlock_12
                           4609  .globl Videopac_Subsong0DisarkPointerRegionEnd726
   05A9                    4610 Videopac_Subsong0DisarkPointerRegionEnd726:
                           4611 
                           4612  .globl _Videopac_Subsong0DisarkByteRegionStart727
   05A9                    4613 _Videopac_Subsong0DisarkByteRegionStart727:
   05A9 18                 4614 	.byte 24	; Duration.
                           4615  .globl Videopac_Subsong0DisarkByteRegionEnd727
   05AA                    4616 Videopac_Subsong0DisarkByteRegionEnd727:
                           4617  .globl _Videopac_Subsong0DisarkPointerRegionStart728
   05AA                    4618 _Videopac_Subsong0DisarkPointerRegionStart728:
   05AA 0E 87              4619 	.word _Videopac_Subsong0_RegisterBlock_204
                           4620  .globl Videopac_Subsong0DisarkPointerRegionEnd728
   05AC                    4621 Videopac_Subsong0DisarkPointerRegionEnd728:
                           4622 
                           4623  .globl _Videopac_Subsong0DisarkByteRegionStart729
   05AC                    4624 _Videopac_Subsong0DisarkByteRegionStart729:
   05AC 18                 4625 	.byte 24	; Duration.
                           4626  .globl Videopac_Subsong0DisarkByteRegionEnd729
   05AD                    4627 Videopac_Subsong0DisarkByteRegionEnd729:
                           4628  .globl _Videopac_Subsong0DisarkPointerRegionStart730
   05AD                    4629 _Videopac_Subsong0DisarkPointerRegionStart730:
   05AD 08 D5              4630 	.word _Videopac_Subsong0_RegisterBlock_15
                           4631  .globl Videopac_Subsong0DisarkPointerRegionEnd730
   05AF                    4632 Videopac_Subsong0DisarkPointerRegionEnd730:
                           4633 
                           4634  .globl _Videopac_Subsong0DisarkByteRegionStart731
   05AF                    4635 _Videopac_Subsong0DisarkByteRegionStart731:
   05AF 18                 4636 	.byte 24	; Duration.
                           4637  .globl Videopac_Subsong0DisarkByteRegionEnd731
   05B0                    4638 Videopac_Subsong0DisarkByteRegionEnd731:
                           4639  .globl _Videopac_Subsong0DisarkPointerRegionStart732
   05B0                    4640 _Videopac_Subsong0DisarkPointerRegionStart732:
   05B0 0F AD              4641 	.word _Videopac_Subsong0_RegisterBlock_374
                           4642  .globl Videopac_Subsong0DisarkPointerRegionEnd732
   05B2                    4643 Videopac_Subsong0DisarkPointerRegionEnd732:
                           4644 
                           4645  .globl _Videopac_Subsong0DisarkByteRegionStart733
   05B2                    4646 _Videopac_Subsong0DisarkByteRegionStart733:
   05B2 18                 4647 	.byte 24	; Duration.
                           4648  .globl Videopac_Subsong0DisarkByteRegionEnd733
   05B3                    4649 Videopac_Subsong0DisarkByteRegionEnd733:
                           4650  .globl _Videopac_Subsong0DisarkPointerRegionStart734
   05B3                    4651 _Videopac_Subsong0DisarkPointerRegionStart734:
   05B3 08 5D              4652 	.word _Videopac_Subsong0_RegisterBlock_12
                           4653  .globl Videopac_Subsong0DisarkPointerRegionEnd734
   05B5                    4654 Videopac_Subsong0DisarkPointerRegionEnd734:
                           4655 
                           4656  .globl _Videopac_Subsong0DisarkByteRegionStart735
   05B5                    4657 _Videopac_Subsong0DisarkByteRegionStart735:
   05B5 18                 4658 	.byte 24	; Duration.
                           4659  .globl Videopac_Subsong0DisarkByteRegionEnd735
   05B6                    4660 Videopac_Subsong0DisarkByteRegionEnd735:
                           4661  .globl _Videopac_Subsong0DisarkPointerRegionStart736
   05B6                    4662 _Videopac_Subsong0DisarkPointerRegionStart736:
   05B6 0E 87              4663 	.word _Videopac_Subsong0_RegisterBlock_204
                           4664  .globl Videopac_Subsong0DisarkPointerRegionEnd736
   05B8                    4665 Videopac_Subsong0DisarkPointerRegionEnd736:
                           4666 
                           4667  .globl _Videopac_Subsong0DisarkByteRegionStart737
   05B8                    4668 _Videopac_Subsong0DisarkByteRegionStart737:
   05B8 18                 4669 	.byte 24	; Duration.
                           4670  .globl Videopac_Subsong0DisarkByteRegionEnd737
   05B9                    4671 Videopac_Subsong0DisarkByteRegionEnd737:
                           4672  .globl _Videopac_Subsong0DisarkPointerRegionStart738
   05B9                    4673 _Videopac_Subsong0DisarkPointerRegionStart738:
   05B9 09 11              4674 	.word _Videopac_Subsong0_RegisterBlock_17
                           4675  .globl Videopac_Subsong0DisarkPointerRegionEnd738
   05BB                    4676 Videopac_Subsong0DisarkPointerRegionEnd738:
                           4677 
                           4678  .globl _Videopac_Subsong0DisarkByteRegionStart739
   05BB                    4679 _Videopac_Subsong0DisarkByteRegionStart739:
   05BB 18                 4680 	.byte 24	; Duration.
                           4681  .globl Videopac_Subsong0DisarkByteRegionEnd739
   05BC                    4682 Videopac_Subsong0DisarkByteRegionEnd739:
                           4683  .globl _Videopac_Subsong0DisarkPointerRegionStart740
   05BC                    4684 _Videopac_Subsong0DisarkPointerRegionStart740:
   05BC 0F EB              4685 	.word _Videopac_Subsong0_RegisterBlock_386
                           4686  .globl Videopac_Subsong0DisarkPointerRegionEnd740
   05BE                    4687 Videopac_Subsong0DisarkPointerRegionEnd740:
                           4688 
                           4689  .globl _Videopac_Subsong0DisarkByteRegionStart741
   05BE                    4690 _Videopac_Subsong0DisarkByteRegionStart741:
   05BE 18                 4691 	.byte 24	; Duration.
                           4692  .globl Videopac_Subsong0DisarkByteRegionEnd741
   05BF                    4693 Videopac_Subsong0DisarkByteRegionEnd741:
                           4694  .globl _Videopac_Subsong0DisarkPointerRegionStart742
   05BF                    4695 _Videopac_Subsong0DisarkPointerRegionStart742:
   05BF 0B 9B              4696 	.word _Videopac_Subsong0_RegisterBlock_101
                           4697  .globl Videopac_Subsong0DisarkPointerRegionEnd742
   05C1                    4698 Videopac_Subsong0DisarkPointerRegionEnd742:
                           4699 
                           4700  .globl Videopac_Subsong0_Track_65
   05C1                    4701 Videopac_Subsong0_Track_65:
                           4702  .globl _Videopac_Subsong0DisarkByteRegionStart743
   05C1                    4703 _Videopac_Subsong0DisarkByteRegionStart743:
   05C1 0C                 4704 	.byte 12	; Duration.
                           4705  .globl Videopac_Subsong0DisarkByteRegionEnd743
   05C2                    4706 Videopac_Subsong0DisarkByteRegionEnd743:
                           4707  .globl _Videopac_Subsong0DisarkPointerRegionStart744
   05C2                    4708 _Videopac_Subsong0DisarkPointerRegionStart744:
   05C2 10 96              4709 	.word _Videopac_Subsong0_RegisterBlock_336
                           4710  .globl Videopac_Subsong0DisarkPointerRegionEnd744
   05C4                    4711 Videopac_Subsong0DisarkPointerRegionEnd744:
                           4712 
                           4713  .globl _Videopac_Subsong0DisarkByteRegionStart745
   05C4                    4714 _Videopac_Subsong0DisarkByteRegionStart745:
   05C4 18                 4715 	.byte 24	; Duration.
                           4716  .globl Videopac_Subsong0DisarkByteRegionEnd745
   05C5                    4717 Videopac_Subsong0DisarkByteRegionEnd745:
                           4718  .globl _Videopac_Subsong0DisarkPointerRegionStart746
   05C5                    4719 _Videopac_Subsong0DisarkPointerRegionStart746:
   05C5 0A 05              4720 	.word _Videopac_Subsong0_RegisterBlock_80
                           4721  .globl Videopac_Subsong0DisarkPointerRegionEnd746
   05C7                    4722 Videopac_Subsong0DisarkPointerRegionEnd746:
                           4723 
                           4724  .globl _Videopac_Subsong0DisarkByteRegionStart747
   05C7                    4725 _Videopac_Subsong0DisarkByteRegionStart747:
   05C7 18                 4726 	.byte 24	; Duration.
                           4727  .globl Videopac_Subsong0DisarkByteRegionEnd747
   05C8                    4728 Videopac_Subsong0DisarkByteRegionEnd747:
                           4729  .globl _Videopac_Subsong0DisarkPointerRegionStart748
   05C8                    4730 _Videopac_Subsong0DisarkPointerRegionStart748:
   05C8 0E 45              4731 	.word _Videopac_Subsong0_RegisterBlock_150
                           4732  .globl Videopac_Subsong0DisarkPointerRegionEnd748
   05CA                    4733 Videopac_Subsong0DisarkPointerRegionEnd748:
                           4734 
                           4735  .globl _Videopac_Subsong0DisarkByteRegionStart749
   05CA                    4736 _Videopac_Subsong0DisarkByteRegionStart749:
   05CA 18                 4737 	.byte 24	; Duration.
                           4738  .globl Videopac_Subsong0DisarkByteRegionEnd749
   05CB                    4739 Videopac_Subsong0DisarkByteRegionEnd749:
                           4740  .globl _Videopac_Subsong0DisarkPointerRegionStart750
   05CB                    4741 _Videopac_Subsong0DisarkPointerRegionStart750:
   05CB 09 4D              4742 	.word _Videopac_Subsong0_RegisterBlock_21
                           4743  .globl Videopac_Subsong0DisarkPointerRegionEnd750
   05CD                    4744 Videopac_Subsong0DisarkPointerRegionEnd750:
                           4745 
                           4746  .globl _Videopac_Subsong0DisarkByteRegionStart751
   05CD                    4747 _Videopac_Subsong0DisarkByteRegionStart751:
   05CD 18                 4748 	.byte 24	; Duration.
                           4749  .globl Videopac_Subsong0DisarkByteRegionEnd751
   05CE                    4750 Videopac_Subsong0DisarkByteRegionEnd751:
                           4751  .globl _Videopac_Subsong0DisarkPointerRegionStart752
   05CE                    4752 _Videopac_Subsong0DisarkPointerRegionStart752:
   05CE 0F 00              4753 	.word _Videopac_Subsong0_RegisterBlock_304
                           4754  .globl Videopac_Subsong0DisarkPointerRegionEnd752
   05D0                    4755 Videopac_Subsong0DisarkPointerRegionEnd752:
                           4756 
                           4757  .globl _Videopac_Subsong0DisarkByteRegionStart753
   05D0                    4758 _Videopac_Subsong0DisarkByteRegionStart753:
   05D0 18                 4759 	.byte 24	; Duration.
                           4760  .globl Videopac_Subsong0DisarkByteRegionEnd753
   05D1                    4761 Videopac_Subsong0DisarkByteRegionEnd753:
                           4762  .globl _Videopac_Subsong0DisarkPointerRegionStart754
   05D1                    4763 _Videopac_Subsong0DisarkPointerRegionStart754:
   05D1 09 7B              4764 	.word _Videopac_Subsong0_RegisterBlock_22
                           4765  .globl Videopac_Subsong0DisarkPointerRegionEnd754
   05D3                    4766 Videopac_Subsong0DisarkPointerRegionEnd754:
                           4767 
                           4768  .globl _Videopac_Subsong0DisarkByteRegionStart755
   05D3                    4769 _Videopac_Subsong0DisarkByteRegionStart755:
   05D3 18                 4770 	.byte 24	; Duration.
                           4771  .globl Videopac_Subsong0DisarkByteRegionEnd755
   05D4                    4772 Videopac_Subsong0DisarkByteRegionEnd755:
                           4773  .globl _Videopac_Subsong0DisarkPointerRegionStart756
   05D4                    4774 _Videopac_Subsong0DisarkPointerRegionStart756:
   05D4 0E 45              4775 	.word _Videopac_Subsong0_RegisterBlock_150
                           4776  .globl Videopac_Subsong0DisarkPointerRegionEnd756
   05D6                    4777 Videopac_Subsong0DisarkPointerRegionEnd756:
                           4778 
                           4779  .globl _Videopac_Subsong0DisarkByteRegionStart757
   05D6                    4780 _Videopac_Subsong0DisarkByteRegionStart757:
   05D6 18                 4781 	.byte 24	; Duration.
                           4782  .globl Videopac_Subsong0DisarkByteRegionEnd757
   05D7                    4783 Videopac_Subsong0DisarkByteRegionEnd757:
                           4784  .globl _Videopac_Subsong0DisarkPointerRegionStart758
   05D7                    4785 _Videopac_Subsong0DisarkPointerRegionStart758:
   05D7 09 A9              4786 	.word _Videopac_Subsong0_RegisterBlock_23
                           4787  .globl Videopac_Subsong0DisarkPointerRegionEnd758
   05D9                    4788 Videopac_Subsong0DisarkPointerRegionEnd758:
                           4789 
                           4790  .globl _Videopac_Subsong0DisarkByteRegionStart759
   05D9                    4791 _Videopac_Subsong0DisarkByteRegionStart759:
   05D9 18                 4792 	.byte 24	; Duration.
                           4793  .globl Videopac_Subsong0DisarkByteRegionEnd759
   05DA                    4794 Videopac_Subsong0DisarkByteRegionEnd759:
                           4795  .globl _Videopac_Subsong0DisarkPointerRegionStart760
   05DA                    4796 _Videopac_Subsong0DisarkPointerRegionStart760:
   05DA 0F 98              4797 	.word _Videopac_Subsong0_RegisterBlock_344
                           4798  .globl Videopac_Subsong0DisarkPointerRegionEnd760
   05DC                    4799 Videopac_Subsong0DisarkPointerRegionEnd760:
                           4800 
                           4801  .globl _Videopac_Subsong0DisarkByteRegionStart761
   05DC                    4802 _Videopac_Subsong0DisarkByteRegionStart761:
   05DC 18                 4803 	.byte 24	; Duration.
                           4804  .globl Videopac_Subsong0DisarkByteRegionEnd761
   05DD                    4805 Videopac_Subsong0DisarkByteRegionEnd761:
                           4806  .globl _Videopac_Subsong0DisarkPointerRegionStart762
   05DD                    4807 _Videopac_Subsong0DisarkPointerRegionStart762:
   05DD 09 7B              4808 	.word _Videopac_Subsong0_RegisterBlock_22
                           4809  .globl Videopac_Subsong0DisarkPointerRegionEnd762
   05DF                    4810 Videopac_Subsong0DisarkPointerRegionEnd762:
                           4811 
                           4812  .globl _Videopac_Subsong0DisarkByteRegionStart763
   05DF                    4813 _Videopac_Subsong0DisarkByteRegionStart763:
   05DF 18                 4814 	.byte 24	; Duration.
                           4815  .globl Videopac_Subsong0DisarkByteRegionEnd763
   05E0                    4816 Videopac_Subsong0DisarkByteRegionEnd763:
                           4817  .globl _Videopac_Subsong0DisarkPointerRegionStart764
   05E0                    4818 _Videopac_Subsong0DisarkPointerRegionStart764:
   05E0 0E 45              4819 	.word _Videopac_Subsong0_RegisterBlock_150
                           4820  .globl Videopac_Subsong0DisarkPointerRegionEnd764
   05E2                    4821 Videopac_Subsong0DisarkPointerRegionEnd764:
                           4822 
                           4823  .globl _Videopac_Subsong0DisarkByteRegionStart765
   05E2                    4824 _Videopac_Subsong0DisarkByteRegionStart765:
   05E2 18                 4825 	.byte 24	; Duration.
                           4826  .globl Videopac_Subsong0DisarkByteRegionEnd765
   05E3                    4827 Videopac_Subsong0DisarkByteRegionEnd765:
                           4828  .globl _Videopac_Subsong0DisarkPointerRegionStart766
   05E3                    4829 _Videopac_Subsong0DisarkPointerRegionStart766:
   05E3 09 D7              4830 	.word _Videopac_Subsong0_RegisterBlock_25
                           4831  .globl Videopac_Subsong0DisarkPointerRegionEnd766
   05E5                    4832 Videopac_Subsong0DisarkPointerRegionEnd766:
                           4833 
                           4834  .globl _Videopac_Subsong0DisarkByteRegionStart767
   05E5                    4835 _Videopac_Subsong0DisarkByteRegionStart767:
   05E5 18                 4836 	.byte 24	; Duration.
                           4837  .globl Videopac_Subsong0DisarkByteRegionEnd767
   05E6                    4838 Videopac_Subsong0DisarkByteRegionEnd767:
                           4839  .globl _Videopac_Subsong0DisarkPointerRegionStart768
   05E6                    4840 _Videopac_Subsong0DisarkPointerRegionStart768:
   05E6 0F 00              4841 	.word _Videopac_Subsong0_RegisterBlock_304
                           4842  .globl Videopac_Subsong0DisarkPointerRegionEnd768
   05E8                    4843 Videopac_Subsong0DisarkPointerRegionEnd768:
                           4844 
                           4845  .globl _Videopac_Subsong0DisarkByteRegionStart769
   05E8                    4846 _Videopac_Subsong0DisarkByteRegionStart769:
   05E8 18                 4847 	.byte 24	; Duration.
                           4848  .globl Videopac_Subsong0DisarkByteRegionEnd769
   05E9                    4849 Videopac_Subsong0DisarkByteRegionEnd769:
                           4850  .globl _Videopac_Subsong0DisarkPointerRegionStart770
   05E9                    4851 _Videopac_Subsong0DisarkPointerRegionStart770:
   05E9 09 7B              4852 	.word _Videopac_Subsong0_RegisterBlock_22
                           4853  .globl Videopac_Subsong0DisarkPointerRegionEnd770
   05EB                    4854 Videopac_Subsong0DisarkPointerRegionEnd770:
                           4855 
                           4856  .globl _Videopac_Subsong0DisarkByteRegionStart771
   05EB                    4857 _Videopac_Subsong0DisarkByteRegionStart771:
   05EB 18                 4858 	.byte 24	; Duration.
                           4859  .globl Videopac_Subsong0DisarkByteRegionEnd771
   05EC                    4860 Videopac_Subsong0DisarkByteRegionEnd771:
                           4861  .globl _Videopac_Subsong0DisarkPointerRegionStart772
   05EC                    4862 _Videopac_Subsong0DisarkPointerRegionStart772:
   05EC 0E 45              4863 	.word _Videopac_Subsong0_RegisterBlock_150
                           4864  .globl Videopac_Subsong0DisarkPointerRegionEnd772
   05EE                    4865 Videopac_Subsong0DisarkPointerRegionEnd772:
                           4866 
                           4867  .globl _Videopac_Subsong0DisarkByteRegionStart773
   05EE                    4868 _Videopac_Subsong0DisarkByteRegionStart773:
   05EE 18                 4869 	.byte 24	; Duration.
                           4870  .globl Videopac_Subsong0DisarkByteRegionEnd773
   05EF                    4871 Videopac_Subsong0DisarkByteRegionEnd773:
                           4872  .globl _Videopac_Subsong0DisarkPointerRegionStart774
   05EF                    4873 _Videopac_Subsong0DisarkPointerRegionStart774:
   05EF 0D 03              4874 	.word _Videopac_Subsong0_RegisterBlock_111
                           4875  .globl Videopac_Subsong0DisarkPointerRegionEnd774
   05F1                    4876 Videopac_Subsong0DisarkPointerRegionEnd774:
                           4877 
                           4878  .globl _Videopac_Subsong0DisarkByteRegionStart775
   05F1                    4879 _Videopac_Subsong0DisarkByteRegionStart775:
   05F1 0C                 4880 	.byte 12	; Duration.
                           4881  .globl Videopac_Subsong0DisarkByteRegionEnd775
   05F2                    4882 Videopac_Subsong0DisarkByteRegionEnd775:
                           4883  .globl _Videopac_Subsong0DisarkPointerRegionStart776
   05F2                    4884 _Videopac_Subsong0DisarkPointerRegionStart776:
   05F2 10 84              4885 	.word _Videopac_Subsong0_RegisterBlock_316
                           4886  .globl Videopac_Subsong0DisarkPointerRegionEnd776
   05F4                    4887 Videopac_Subsong0DisarkPointerRegionEnd776:
                           4888 
                           4889  .globl Videopac_Subsong0_Track_66
   05F4                    4890 Videopac_Subsong0_Track_66:
                           4891  .globl _Videopac_Subsong0DisarkByteRegionStart777
   05F4                    4892 _Videopac_Subsong0DisarkByteRegionStart777:
   05F4 12                 4893 	.byte 18	; Duration.
                           4894  .globl Videopac_Subsong0DisarkByteRegionEnd777
   05F5                    4895 Videopac_Subsong0DisarkByteRegionEnd777:
                           4896  .globl _Videopac_Subsong0DisarkPointerRegionStart778
   05F5                    4897 _Videopac_Subsong0DisarkPointerRegionStart778:
   05F5 0D F3              4898 	.word _Videopac_Subsong0_RegisterBlock_59
                           4899  .globl Videopac_Subsong0DisarkPointerRegionEnd778
   05F7                    4900 Videopac_Subsong0DisarkPointerRegionEnd778:
                           4901 
                           4902  .globl _Videopac_Subsong0DisarkByteRegionStart779
   05F7                    4903 _Videopac_Subsong0DisarkByteRegionStart779:
   05F7 18                 4904 	.byte 24	; Duration.
                           4905  .globl Videopac_Subsong0DisarkByteRegionEnd779
   05F8                    4906 Videopac_Subsong0DisarkByteRegionEnd779:
                           4907  .globl _Videopac_Subsong0DisarkPointerRegionStart780
   05F8                    4908 _Videopac_Subsong0DisarkPointerRegionStart780:
   05F8 0E A9              4909 	.word _Videopac_Subsong0_RegisterBlock_232
                           4910  .globl Videopac_Subsong0DisarkPointerRegionEnd780
   05FA                    4911 Videopac_Subsong0DisarkPointerRegionEnd780:
                           4912 
                           4913  .globl _Videopac_Subsong0DisarkByteRegionStart781
   05FA                    4914 _Videopac_Subsong0DisarkByteRegionStart781:
   05FA 18                 4915 	.byte 24	; Duration.
                           4916  .globl Videopac_Subsong0DisarkByteRegionEnd781
   05FB                    4917 Videopac_Subsong0DisarkByteRegionEnd781:
                           4918  .globl _Videopac_Subsong0DisarkPointerRegionStart782
   05FB                    4919 _Videopac_Subsong0DisarkPointerRegionStart782:
   05FB 07 E5              4920 	.word _Videopac_Subsong0_RegisterBlock_7
                           4921  .globl Videopac_Subsong0DisarkPointerRegionEnd782
   05FD                    4922 Videopac_Subsong0DisarkPointerRegionEnd782:
                           4923 
                           4924  .globl _Videopac_Subsong0DisarkByteRegionStart783
   05FD                    4925 _Videopac_Subsong0DisarkByteRegionStart783:
   05FD 18                 4926 	.byte 24	; Duration.
                           4927  .globl Videopac_Subsong0DisarkByteRegionEnd783
   05FE                    4928 Videopac_Subsong0DisarkByteRegionEnd783:
                           4929  .globl _Videopac_Subsong0DisarkPointerRegionStart784
   05FE                    4930 _Videopac_Subsong0DisarkPointerRegionStart784:
   05FE 10 09              4931 	.word _Videopac_Subsong0_RegisterBlock_410
                           4932  .globl Videopac_Subsong0DisarkPointerRegionEnd784
   0600                    4933 Videopac_Subsong0DisarkPointerRegionEnd784:
                           4934 
                           4935  .globl _Videopac_Subsong0DisarkByteRegionStart785
   0600                    4936 _Videopac_Subsong0DisarkByteRegionStart785:
   0600 18                 4937 	.byte 24	; Duration.
                           4938  .globl Videopac_Subsong0DisarkByteRegionEnd785
   0601                    4939 Videopac_Subsong0DisarkByteRegionEnd785:
                           4940  .globl _Videopac_Subsong0DisarkPointerRegionStart786
   0601                    4941 _Videopac_Subsong0DisarkPointerRegionStart786:
   0601 0A 41              4942 	.word _Videopac_Subsong0_RegisterBlock_91
                           4943  .globl Videopac_Subsong0DisarkPointerRegionEnd786
   0603                    4944 Videopac_Subsong0DisarkPointerRegionEnd786:
                           4945 
                           4946  .globl _Videopac_Subsong0DisarkByteRegionStart787
   0603                    4947 _Videopac_Subsong0DisarkByteRegionStart787:
   0603 18                 4948 	.byte 24	; Duration.
                           4949  .globl Videopac_Subsong0DisarkByteRegionEnd787
   0604                    4950 Videopac_Subsong0DisarkByteRegionEnd787:
                           4951  .globl _Videopac_Subsong0DisarkPointerRegionStart788
   0604                    4952 _Videopac_Subsong0DisarkPointerRegionStart788:
   0604 0E A9              4953 	.word _Videopac_Subsong0_RegisterBlock_232
                           4954  .globl Videopac_Subsong0DisarkPointerRegionEnd788
   0606                    4955 Videopac_Subsong0DisarkPointerRegionEnd788:
                           4956 
                           4957  .globl _Videopac_Subsong0DisarkByteRegionStart789
   0606                    4958 _Videopac_Subsong0DisarkByteRegionStart789:
   0606 18                 4959 	.byte 24	; Duration.
                           4960  .globl Videopac_Subsong0DisarkByteRegionEnd789
   0607                    4961 Videopac_Subsong0DisarkByteRegionEnd789:
                           4962  .globl _Videopac_Subsong0DisarkPointerRegionStart790
   0607                    4963 _Videopac_Subsong0DisarkPointerRegionStart790:
   0607 0A 6F              4964 	.word _Videopac_Subsong0_RegisterBlock_92
                           4965  .globl Videopac_Subsong0DisarkPointerRegionEnd790
   0609                    4966 Videopac_Subsong0DisarkPointerRegionEnd790:
                           4967 
                           4968  .globl _Videopac_Subsong0DisarkByteRegionStart791
   0609                    4969 _Videopac_Subsong0DisarkByteRegionStart791:
   0609 18                 4970 	.byte 24	; Duration.
                           4971  .globl Videopac_Subsong0DisarkByteRegionEnd791
   060A                    4972 Videopac_Subsong0DisarkByteRegionEnd791:
                           4973  .globl _Videopac_Subsong0DisarkPointerRegionStart792
   060A                    4974 _Videopac_Subsong0DisarkPointerRegionStart792:
   060A 10 27              4975 	.word _Videopac_Subsong0_RegisterBlock_414
                           4976  .globl Videopac_Subsong0DisarkPointerRegionEnd792
   060C                    4977 Videopac_Subsong0DisarkPointerRegionEnd792:
                           4978 
                           4979  .globl _Videopac_Subsong0DisarkByteRegionStart793
   060C                    4980 _Videopac_Subsong0DisarkByteRegionStart793:
   060C 18                 4981 	.byte 24	; Duration.
                           4982  .globl Videopac_Subsong0DisarkByteRegionEnd793
   060D                    4983 Videopac_Subsong0DisarkByteRegionEnd793:
                           4984  .globl _Videopac_Subsong0DisarkPointerRegionStart794
   060D                    4985 _Videopac_Subsong0DisarkPointerRegionStart794:
   060D 0A AB              4986 	.word _Videopac_Subsong0_RegisterBlock_93
                           4987  .globl Videopac_Subsong0DisarkPointerRegionEnd794
   060F                    4988 Videopac_Subsong0DisarkPointerRegionEnd794:
                           4989 
                           4990  .globl _Videopac_Subsong0DisarkByteRegionStart795
   060F                    4991 _Videopac_Subsong0DisarkByteRegionStart795:
   060F 18                 4992 	.byte 24	; Duration.
                           4993  .globl Videopac_Subsong0DisarkByteRegionEnd795
   0610                    4994 Videopac_Subsong0DisarkByteRegionEnd795:
                           4995  .globl _Videopac_Subsong0DisarkPointerRegionStart796
   0610                    4996 _Videopac_Subsong0DisarkPointerRegionStart796:
   0610 0E A9              4997 	.word _Videopac_Subsong0_RegisterBlock_232
                           4998  .globl Videopac_Subsong0DisarkPointerRegionEnd796
   0612                    4999 Videopac_Subsong0DisarkPointerRegionEnd796:
                           5000 
                           5001  .globl _Videopac_Subsong0DisarkByteRegionStart797
   0612                    5002 _Videopac_Subsong0DisarkByteRegionStart797:
   0612 18                 5003 	.byte 24	; Duration.
                           5004  .globl Videopac_Subsong0DisarkByteRegionEnd797
   0613                    5005 Videopac_Subsong0DisarkByteRegionEnd797:
                           5006  .globl _Videopac_Subsong0DisarkPointerRegionStart798
   0613                    5007 _Videopac_Subsong0DisarkPointerRegionStart798:
   0613 0A E7              5008 	.word _Videopac_Subsong0_RegisterBlock_94
                           5009  .globl Videopac_Subsong0DisarkPointerRegionEnd798
   0615                    5010 Videopac_Subsong0DisarkPointerRegionEnd798:
                           5011 
                           5012  .globl _Videopac_Subsong0DisarkByteRegionStart799
   0615                    5013 _Videopac_Subsong0DisarkByteRegionStart799:
   0615 18                 5014 	.byte 24	; Duration.
                           5015  .globl Videopac_Subsong0DisarkByteRegionEnd799
   0616                    5016 Videopac_Subsong0DisarkByteRegionEnd799:
                           5017  .globl _Videopac_Subsong0DisarkPointerRegionStart800
   0616                    5018 _Videopac_Subsong0DisarkPointerRegionStart800:
   0616 10 09              5019 	.word _Videopac_Subsong0_RegisterBlock_410
                           5020  .globl Videopac_Subsong0DisarkPointerRegionEnd800
   0618                    5021 Videopac_Subsong0DisarkPointerRegionEnd800:
                           5022 
                           5023  .globl _Videopac_Subsong0DisarkByteRegionStart801
   0618                    5024 _Videopac_Subsong0DisarkByteRegionStart801:
   0618 18                 5025 	.byte 24	; Duration.
                           5026  .globl Videopac_Subsong0DisarkByteRegionEnd801
   0619                    5027 Videopac_Subsong0DisarkByteRegionEnd801:
                           5028  .globl _Videopac_Subsong0DisarkPointerRegionStart802
   0619                    5029 _Videopac_Subsong0DisarkPointerRegionStart802:
   0619 0B 23              5030 	.word _Videopac_Subsong0_RegisterBlock_95
                           5031  .globl Videopac_Subsong0DisarkPointerRegionEnd802
   061B                    5032 Videopac_Subsong0DisarkPointerRegionEnd802:
                           5033 
                           5034  .globl _Videopac_Subsong0DisarkByteRegionStart803
   061B                    5035 _Videopac_Subsong0DisarkByteRegionStart803:
   061B 18                 5036 	.byte 24	; Duration.
                           5037  .globl Videopac_Subsong0DisarkByteRegionEnd803
   061C                    5038 Videopac_Subsong0DisarkByteRegionEnd803:
                           5039  .globl _Videopac_Subsong0DisarkPointerRegionStart804
   061C                    5040 _Videopac_Subsong0DisarkPointerRegionStart804:
   061C 0E A9              5041 	.word _Videopac_Subsong0_RegisterBlock_232
                           5042  .globl Videopac_Subsong0DisarkPointerRegionEnd804
   061E                    5043 Videopac_Subsong0DisarkPointerRegionEnd804:
                           5044 
                           5045  .globl _Videopac_Subsong0DisarkByteRegionStart805
   061E                    5046 _Videopac_Subsong0DisarkByteRegionStart805:
   061E 18                 5047 	.byte 24	; Duration.
                           5048  .globl Videopac_Subsong0DisarkByteRegionEnd805
   061F                    5049 Videopac_Subsong0DisarkByteRegionEnd805:
                           5050  .globl _Videopac_Subsong0DisarkPointerRegionStart806
   061F                    5051 _Videopac_Subsong0DisarkPointerRegionStart806:
   061F 0B 5F              5052 	.word _Videopac_Subsong0_RegisterBlock_96
                           5053  .globl Videopac_Subsong0DisarkPointerRegionEnd806
   0621                    5054 Videopac_Subsong0DisarkPointerRegionEnd806:
                           5055 
                           5056  .globl _Videopac_Subsong0DisarkByteRegionStart807
   0621                    5057 _Videopac_Subsong0DisarkByteRegionStart807:
   0621 18                 5058 	.byte 24	; Duration.
                           5059  .globl Videopac_Subsong0DisarkByteRegionEnd807
   0622                    5060 Videopac_Subsong0DisarkByteRegionEnd807:
                           5061  .globl _Videopac_Subsong0DisarkPointerRegionStart808
   0622                    5062 _Videopac_Subsong0DisarkPointerRegionStart808:
   0622 0F 7A              5063 	.word _Videopac_Subsong0_RegisterBlock_333
                           5064  .globl Videopac_Subsong0DisarkPointerRegionEnd808
   0624                    5065 Videopac_Subsong0DisarkPointerRegionEnd808:
                           5066 
                           5067  .globl _Videopac_Subsong0DisarkByteRegionStart809
   0624                    5068 _Videopac_Subsong0DisarkByteRegionStart809:
   0624 06                 5069 	.byte 6	; Duration.
                           5070  .globl Videopac_Subsong0DisarkByteRegionEnd809
   0625                    5071 Videopac_Subsong0DisarkByteRegionEnd809:
                           5072  .globl _Videopac_Subsong0DisarkPointerRegionStart810
   0625                    5073 _Videopac_Subsong0DisarkPointerRegionStart810:
   0625 06 F5              5074 	.word _Videopac_Subsong0_RegisterBlock_1
                           5075  .globl Videopac_Subsong0DisarkPointerRegionEnd810
   0627                    5076 Videopac_Subsong0DisarkPointerRegionEnd810:
                           5077 
                           5078  .globl Videopac_Subsong0_Track_68
   0627                    5079 Videopac_Subsong0_Track_68:
                           5080  .globl _Videopac_Subsong0DisarkByteRegionStart811
   0627                    5081 _Videopac_Subsong0DisarkByteRegionStart811:
   0627 0C                 5082 	.byte 12	; Duration.
                           5083  .globl Videopac_Subsong0DisarkByteRegionEnd811
   0628                    5084 Videopac_Subsong0DisarkByteRegionEnd811:
                           5085  .globl _Videopac_Subsong0DisarkPointerRegionStart812
   0628                    5086 _Videopac_Subsong0DisarkPointerRegionStart812:
   0628 10 96              5087 	.word _Videopac_Subsong0_RegisterBlock_336
                           5088  .globl Videopac_Subsong0DisarkPointerRegionEnd812
   062A                    5089 Videopac_Subsong0DisarkPointerRegionEnd812:
                           5090 
                           5091  .globl _Videopac_Subsong0DisarkByteRegionStart813
   062A                    5092 _Videopac_Subsong0DisarkByteRegionStart813:
   062A 18                 5093 	.byte 24	; Duration.
                           5094  .globl Videopac_Subsong0DisarkByteRegionEnd813
   062B                    5095 Videopac_Subsong0DisarkByteRegionEnd813:
                           5096  .globl _Videopac_Subsong0DisarkPointerRegionStart814
   062B                    5097 _Videopac_Subsong0DisarkPointerRegionStart814:
   062B 0A 05              5098 	.word _Videopac_Subsong0_RegisterBlock_80
                           5099  .globl Videopac_Subsong0DisarkPointerRegionEnd814
   062D                    5100 Videopac_Subsong0DisarkPointerRegionEnd814:
                           5101 
                           5102  .globl _Videopac_Subsong0DisarkByteRegionStart815
   062D                    5103 _Videopac_Subsong0DisarkByteRegionStart815:
   062D 18                 5104 	.byte 24	; Duration.
                           5105  .globl Videopac_Subsong0DisarkByteRegionEnd815
   062E                    5106 Videopac_Subsong0DisarkByteRegionEnd815:
                           5107  .globl _Videopac_Subsong0DisarkPointerRegionStart816
   062E                    5108 _Videopac_Subsong0DisarkPointerRegionStart816:
   062E 0E C6              5109 	.word _Videopac_Subsong0_RegisterBlock_247
                           5110  .globl Videopac_Subsong0DisarkPointerRegionEnd816
   0630                    5111 Videopac_Subsong0DisarkPointerRegionEnd816:
                           5112 
                           5113  .globl _Videopac_Subsong0DisarkByteRegionStart817
   0630                    5114 _Videopac_Subsong0DisarkByteRegionStart817:
   0630 18                 5115 	.byte 24	; Duration.
                           5116  .globl Videopac_Subsong0DisarkByteRegionEnd817
   0631                    5117 Videopac_Subsong0DisarkByteRegionEnd817:
                           5118  .globl _Videopac_Subsong0DisarkPointerRegionStart818
   0631                    5119 _Videopac_Subsong0DisarkPointerRegionStart818:
   0631 0D 03              5120 	.word _Videopac_Subsong0_RegisterBlock_111
                           5121  .globl Videopac_Subsong0DisarkPointerRegionEnd818
   0633                    5122 Videopac_Subsong0DisarkPointerRegionEnd818:
                           5123 
                           5124  .globl _Videopac_Subsong0DisarkByteRegionStart819
   0633                    5125 _Videopac_Subsong0DisarkByteRegionStart819:
   0633 18                 5126 	.byte 24	; Duration.
                           5127  .globl Videopac_Subsong0DisarkByteRegionEnd819
   0634                    5128 Videopac_Subsong0DisarkByteRegionEnd819:
                           5129  .globl _Videopac_Subsong0DisarkPointerRegionStart820
   0634                    5130 _Videopac_Subsong0DisarkPointerRegionStart820:
   0634 10 3C              5131 	.word _Videopac_Subsong0_RegisterBlock_429
                           5132  .globl Videopac_Subsong0DisarkPointerRegionEnd820
   0636                    5133 Videopac_Subsong0DisarkPointerRegionEnd820:
                           5134 
                           5135  .globl _Videopac_Subsong0DisarkByteRegionStart821
   0636                    5136 _Videopac_Subsong0DisarkByteRegionStart821:
   0636 18                 5137 	.byte 24	; Duration.
                           5138  .globl Videopac_Subsong0DisarkByteRegionEnd821
   0637                    5139 Videopac_Subsong0DisarkByteRegionEnd821:
                           5140  .globl _Videopac_Subsong0DisarkPointerRegionStart822
   0637                    5141 _Videopac_Subsong0DisarkPointerRegionStart822:
   0637 0A 05              5142 	.word _Videopac_Subsong0_RegisterBlock_80
                           5143  .globl Videopac_Subsong0DisarkPointerRegionEnd822
   0639                    5144 Videopac_Subsong0DisarkPointerRegionEnd822:
                           5145 
                           5146  .globl _Videopac_Subsong0DisarkByteRegionStart823
   0639                    5147 _Videopac_Subsong0DisarkByteRegionStart823:
   0639 18                 5148 	.byte 24	; Duration.
                           5149  .globl Videopac_Subsong0DisarkByteRegionEnd823
   063A                    5150 Videopac_Subsong0DisarkByteRegionEnd823:
                           5151  .globl _Videopac_Subsong0DisarkPointerRegionStart824
   063A                    5152 _Videopac_Subsong0DisarkPointerRegionStart824:
   063A 0E C6              5153 	.word _Videopac_Subsong0_RegisterBlock_247
                           5154  .globl Videopac_Subsong0DisarkPointerRegionEnd824
   063C                    5155 Videopac_Subsong0DisarkPointerRegionEnd824:
                           5156 
                           5157  .globl _Videopac_Subsong0DisarkByteRegionStart825
   063C                    5158 _Videopac_Subsong0DisarkByteRegionStart825:
   063C 18                 5159 	.byte 24	; Duration.
                           5160  .globl Videopac_Subsong0DisarkByteRegionEnd825
   063D                    5161 Videopac_Subsong0DisarkByteRegionEnd825:
                           5162  .globl _Videopac_Subsong0DisarkPointerRegionStart826
   063D                    5163 _Videopac_Subsong0DisarkPointerRegionStart826:
   063D 0D 31              5164 	.word _Videopac_Subsong0_RegisterBlock_113
                           5165  .globl Videopac_Subsong0DisarkPointerRegionEnd826
   063F                    5166 Videopac_Subsong0DisarkPointerRegionEnd826:
                           5167 
                           5168  .globl _Videopac_Subsong0DisarkByteRegionStart827
   063F                    5169 _Videopac_Subsong0DisarkByteRegionStart827:
   063F 18                 5170 	.byte 24	; Duration.
                           5171  .globl Videopac_Subsong0DisarkByteRegionEnd827
   0640                    5172 Videopac_Subsong0DisarkByteRegionEnd827:
                           5173  .globl _Videopac_Subsong0DisarkPointerRegionStart828
   0640                    5174 _Videopac_Subsong0DisarkPointerRegionStart828:
   0640 0F 98              5175 	.word _Videopac_Subsong0_RegisterBlock_344
                           5176  .globl Videopac_Subsong0DisarkPointerRegionEnd828
   0642                    5177 Videopac_Subsong0DisarkPointerRegionEnd828:
                           5178 
                           5179  .globl _Videopac_Subsong0DisarkByteRegionStart829
   0642                    5180 _Videopac_Subsong0DisarkByteRegionStart829:
   0642 18                 5181 	.byte 24	; Duration.
                           5182  .globl Videopac_Subsong0DisarkByteRegionEnd829
   0643                    5183 Videopac_Subsong0DisarkByteRegionEnd829:
                           5184  .globl _Videopac_Subsong0DisarkPointerRegionStart830
   0643                    5185 _Videopac_Subsong0DisarkPointerRegionStart830:
   0643 0D 5F              5186 	.word _Videopac_Subsong0_RegisterBlock_114
                           5187  .globl Videopac_Subsong0DisarkPointerRegionEnd830
   0645                    5188 Videopac_Subsong0DisarkPointerRegionEnd830:
                           5189 
                           5190  .globl _Videopac_Subsong0DisarkByteRegionStart831
   0645                    5191 _Videopac_Subsong0DisarkByteRegionStart831:
   0645 18                 5192 	.byte 24	; Duration.
                           5193  .globl Videopac_Subsong0DisarkByteRegionEnd831
   0646                    5194 Videopac_Subsong0DisarkByteRegionEnd831:
                           5195  .globl _Videopac_Subsong0DisarkPointerRegionStart832
   0646                    5196 _Videopac_Subsong0DisarkPointerRegionStart832:
   0646 0E C6              5197 	.word _Videopac_Subsong0_RegisterBlock_247
                           5198  .globl Videopac_Subsong0DisarkPointerRegionEnd832
   0648                    5199 Videopac_Subsong0DisarkPointerRegionEnd832:
                           5200 
                           5201  .globl _Videopac_Subsong0DisarkByteRegionStart833
   0648                    5202 _Videopac_Subsong0DisarkByteRegionStart833:
   0648 18                 5203 	.byte 24	; Duration.
                           5204  .globl Videopac_Subsong0DisarkByteRegionEnd833
   0649                    5205 Videopac_Subsong0DisarkByteRegionEnd833:
                           5206  .globl _Videopac_Subsong0DisarkPointerRegionStart834
   0649                    5207 _Videopac_Subsong0DisarkPointerRegionStart834:
   0649 0D 8D              5208 	.word _Videopac_Subsong0_RegisterBlock_115
                           5209  .globl Videopac_Subsong0DisarkPointerRegionEnd834
   064B                    5210 Videopac_Subsong0DisarkPointerRegionEnd834:
                           5211 
                           5212  .globl _Videopac_Subsong0DisarkByteRegionStart835
   064B                    5213 _Videopac_Subsong0DisarkByteRegionStart835:
   064B 18                 5214 	.byte 24	; Duration.
                           5215  .globl Videopac_Subsong0DisarkByteRegionEnd835
   064C                    5216 Videopac_Subsong0DisarkByteRegionEnd835:
                           5217  .globl _Videopac_Subsong0DisarkPointerRegionStart836
   064C                    5218 _Videopac_Subsong0DisarkPointerRegionStart836:
   064C 10 3C              5219 	.word _Videopac_Subsong0_RegisterBlock_429
                           5220  .globl Videopac_Subsong0DisarkPointerRegionEnd836
   064E                    5221 Videopac_Subsong0DisarkPointerRegionEnd836:
                           5222 
                           5223  .globl _Videopac_Subsong0DisarkByteRegionStart837
   064E                    5224 _Videopac_Subsong0DisarkByteRegionStart837:
   064E 18                 5225 	.byte 24	; Duration.
                           5226  .globl Videopac_Subsong0DisarkByteRegionEnd837
   064F                    5227 Videopac_Subsong0DisarkByteRegionEnd837:
                           5228  .globl _Videopac_Subsong0DisarkPointerRegionStart838
   064F                    5229 _Videopac_Subsong0DisarkPointerRegionStart838:
   064F 0D BB              5230 	.word _Videopac_Subsong0_RegisterBlock_116
                           5231  .globl Videopac_Subsong0DisarkPointerRegionEnd838
   0651                    5232 Videopac_Subsong0DisarkPointerRegionEnd838:
                           5233 
                           5234  .globl _Videopac_Subsong0DisarkByteRegionStart839
   0651                    5235 _Videopac_Subsong0DisarkByteRegionStart839:
   0651 18                 5236 	.byte 24	; Duration.
                           5237  .globl Videopac_Subsong0DisarkByteRegionEnd839
   0652                    5238 Videopac_Subsong0DisarkByteRegionEnd839:
                           5239  .globl _Videopac_Subsong0DisarkPointerRegionStart840
   0652                    5240 _Videopac_Subsong0DisarkPointerRegionStart840:
   0652 0E C6              5241 	.word _Videopac_Subsong0_RegisterBlock_247
                           5242  .globl Videopac_Subsong0DisarkPointerRegionEnd840
   0654                    5243 Videopac_Subsong0DisarkPointerRegionEnd840:
                           5244 
                           5245  .globl _Videopac_Subsong0DisarkByteRegionStart841
   0654                    5246 _Videopac_Subsong0DisarkByteRegionStart841:
   0654 18                 5247 	.byte 24	; Duration.
                           5248  .globl Videopac_Subsong0DisarkByteRegionEnd841
   0655                    5249 Videopac_Subsong0DisarkByteRegionEnd841:
                           5250  .globl _Videopac_Subsong0DisarkPointerRegionStart842
   0655                    5251 _Videopac_Subsong0DisarkPointerRegionStart842:
   0655 0D FF              5252 	.word _Videopac_Subsong0_RegisterBlock_117
                           5253  .globl Videopac_Subsong0DisarkPointerRegionEnd842
   0657                    5254 Videopac_Subsong0DisarkPointerRegionEnd842:
                           5255 
                           5256  .globl _Videopac_Subsong0DisarkByteRegionStart843
   0657                    5257 _Videopac_Subsong0DisarkByteRegionStart843:
   0657 0C                 5258 	.byte 12	; Duration.
                           5259  .globl Videopac_Subsong0DisarkByteRegionEnd843
   0658                    5260 Videopac_Subsong0DisarkByteRegionEnd843:
                           5261  .globl _Videopac_Subsong0DisarkPointerRegionStart844
   0658                    5262 _Videopac_Subsong0DisarkPointerRegionStart844:
   0658 10 84              5263 	.word _Videopac_Subsong0_RegisterBlock_316
                           5264  .globl Videopac_Subsong0DisarkPointerRegionEnd844
   065A                    5265 Videopac_Subsong0DisarkPointerRegionEnd844:
                           5266 
                           5267  .globl Videopac_Subsong0_Track_69
   065A                    5268 Videopac_Subsong0_Track_69:
                           5269  .globl _Videopac_Subsong0DisarkByteRegionStart845
   065A                    5270 _Videopac_Subsong0DisarkByteRegionStart845:
   065A 12                 5271 	.byte 18	; Duration.
                           5272  .globl Videopac_Subsong0DisarkByteRegionEnd845
   065B                    5273 Videopac_Subsong0DisarkByteRegionEnd845:
                           5274  .globl _Videopac_Subsong0DisarkPointerRegionStart846
   065B                    5275 _Videopac_Subsong0DisarkPointerRegionStart846:
   065B 0D ED              5276 	.word _Videopac_Subsong0_RegisterBlock_29
                           5277  .globl Videopac_Subsong0DisarkPointerRegionEnd846
   065D                    5278 Videopac_Subsong0DisarkPointerRegionEnd846:
                           5279 
                           5280  .globl _Videopac_Subsong0DisarkByteRegionStart847
   065D                    5281 _Videopac_Subsong0DisarkByteRegionStart847:
   065D 18                 5282 	.byte 24	; Duration.
                           5283  .globl Videopac_Subsong0DisarkByteRegionEnd847
   065E                    5284 Videopac_Subsong0DisarkByteRegionEnd847:
                           5285  .globl _Videopac_Subsong0DisarkPointerRegionStart848
   065E                    5286 _Videopac_Subsong0DisarkPointerRegionStart848:
   065E 0E A9              5287 	.word _Videopac_Subsong0_RegisterBlock_232
                           5288  .globl Videopac_Subsong0DisarkPointerRegionEnd848
   0660                    5289 Videopac_Subsong0DisarkPointerRegionEnd848:
                           5290 
                           5291  .globl _Videopac_Subsong0DisarkByteRegionStart849
   0660                    5292 _Videopac_Subsong0DisarkByteRegionStart849:
   0660 18                 5293 	.byte 24	; Duration.
                           5294  .globl Videopac_Subsong0DisarkByteRegionEnd849
   0661                    5295 Videopac_Subsong0DisarkByteRegionEnd849:
                           5296  .globl _Videopac_Subsong0DisarkPointerRegionStart850
   0661                    5297 _Videopac_Subsong0DisarkPointerRegionStart850:
   0661 07 E5              5298 	.word _Videopac_Subsong0_RegisterBlock_7
                           5299  .globl Videopac_Subsong0DisarkPointerRegionEnd850
   0663                    5300 Videopac_Subsong0DisarkPointerRegionEnd850:
                           5301 
                           5302  .globl _Videopac_Subsong0DisarkByteRegionStart851
   0663                    5303 _Videopac_Subsong0DisarkByteRegionStart851:
   0663 18                 5304 	.byte 24	; Duration.
                           5305  .globl Videopac_Subsong0DisarkByteRegionEnd851
   0664                    5306 Videopac_Subsong0DisarkByteRegionEnd851:
                           5307  .globl _Videopac_Subsong0DisarkPointerRegionStart852
   0664                    5308 _Videopac_Subsong0DisarkPointerRegionStart852:
   0664 10 09              5309 	.word _Videopac_Subsong0_RegisterBlock_410
                           5310  .globl Videopac_Subsong0DisarkPointerRegionEnd852
   0666                    5311 Videopac_Subsong0DisarkPointerRegionEnd852:
                           5312 
                           5313  .globl _Videopac_Subsong0DisarkByteRegionStart853
   0666                    5314 _Videopac_Subsong0DisarkByteRegionStart853:
   0666 18                 5315 	.byte 24	; Duration.
                           5316  .globl Videopac_Subsong0DisarkByteRegionEnd853
   0667                    5317 Videopac_Subsong0DisarkByteRegionEnd853:
                           5318  .globl _Videopac_Subsong0DisarkPointerRegionStart854
   0667                    5319 _Videopac_Subsong0DisarkPointerRegionStart854:
   0667 0A 41              5320 	.word _Videopac_Subsong0_RegisterBlock_91
                           5321  .globl Videopac_Subsong0DisarkPointerRegionEnd854
   0669                    5322 Videopac_Subsong0DisarkPointerRegionEnd854:
                           5323 
                           5324  .globl _Videopac_Subsong0DisarkByteRegionStart855
   0669                    5325 _Videopac_Subsong0DisarkByteRegionStart855:
   0669 18                 5326 	.byte 24	; Duration.
                           5327  .globl Videopac_Subsong0DisarkByteRegionEnd855
   066A                    5328 Videopac_Subsong0DisarkByteRegionEnd855:
                           5329  .globl _Videopac_Subsong0DisarkPointerRegionStart856
   066A                    5330 _Videopac_Subsong0DisarkPointerRegionStart856:
   066A 0E A9              5331 	.word _Videopac_Subsong0_RegisterBlock_232
                           5332  .globl Videopac_Subsong0DisarkPointerRegionEnd856
   066C                    5333 Videopac_Subsong0DisarkPointerRegionEnd856:
                           5334 
                           5335  .globl _Videopac_Subsong0DisarkByteRegionStart857
   066C                    5336 _Videopac_Subsong0DisarkByteRegionStart857:
   066C 18                 5337 	.byte 24	; Duration.
                           5338  .globl Videopac_Subsong0DisarkByteRegionEnd857
   066D                    5339 Videopac_Subsong0DisarkByteRegionEnd857:
                           5340  .globl _Videopac_Subsong0DisarkPointerRegionStart858
   066D                    5341 _Videopac_Subsong0DisarkPointerRegionStart858:
   066D 0A 6F              5342 	.word _Videopac_Subsong0_RegisterBlock_92
                           5343  .globl Videopac_Subsong0DisarkPointerRegionEnd858
   066F                    5344 Videopac_Subsong0DisarkPointerRegionEnd858:
                           5345 
                           5346  .globl _Videopac_Subsong0DisarkByteRegionStart859
   066F                    5347 _Videopac_Subsong0DisarkByteRegionStart859:
   066F 18                 5348 	.byte 24	; Duration.
                           5349  .globl Videopac_Subsong0DisarkByteRegionEnd859
   0670                    5350 Videopac_Subsong0DisarkByteRegionEnd859:
                           5351  .globl _Videopac_Subsong0DisarkPointerRegionStart860
   0670                    5352 _Videopac_Subsong0DisarkPointerRegionStart860:
   0670 10 27              5353 	.word _Videopac_Subsong0_RegisterBlock_414
                           5354  .globl Videopac_Subsong0DisarkPointerRegionEnd860
   0672                    5355 Videopac_Subsong0DisarkPointerRegionEnd860:
                           5356 
                           5357  .globl _Videopac_Subsong0DisarkByteRegionStart861
   0672                    5358 _Videopac_Subsong0DisarkByteRegionStart861:
   0672 18                 5359 	.byte 24	; Duration.
                           5360  .globl Videopac_Subsong0DisarkByteRegionEnd861
   0673                    5361 Videopac_Subsong0DisarkByteRegionEnd861:
                           5362  .globl _Videopac_Subsong0DisarkPointerRegionStart862
   0673                    5363 _Videopac_Subsong0DisarkPointerRegionStart862:
   0673 0A AB              5364 	.word _Videopac_Subsong0_RegisterBlock_93
                           5365  .globl Videopac_Subsong0DisarkPointerRegionEnd862
   0675                    5366 Videopac_Subsong0DisarkPointerRegionEnd862:
                           5367 
                           5368  .globl _Videopac_Subsong0DisarkByteRegionStart863
   0675                    5369 _Videopac_Subsong0DisarkByteRegionStart863:
   0675 18                 5370 	.byte 24	; Duration.
                           5371  .globl Videopac_Subsong0DisarkByteRegionEnd863
   0676                    5372 Videopac_Subsong0DisarkByteRegionEnd863:
                           5373  .globl _Videopac_Subsong0DisarkPointerRegionStart864
   0676                    5374 _Videopac_Subsong0DisarkPointerRegionStart864:
   0676 0E A9              5375 	.word _Videopac_Subsong0_RegisterBlock_232
                           5376  .globl Videopac_Subsong0DisarkPointerRegionEnd864
   0678                    5377 Videopac_Subsong0DisarkPointerRegionEnd864:
                           5378 
                           5379  .globl _Videopac_Subsong0DisarkByteRegionStart865
   0678                    5380 _Videopac_Subsong0DisarkByteRegionStart865:
   0678 18                 5381 	.byte 24	; Duration.
                           5382  .globl Videopac_Subsong0DisarkByteRegionEnd865
   0679                    5383 Videopac_Subsong0DisarkByteRegionEnd865:
                           5384  .globl _Videopac_Subsong0DisarkPointerRegionStart866
   0679                    5385 _Videopac_Subsong0DisarkPointerRegionStart866:
   0679 0A E7              5386 	.word _Videopac_Subsong0_RegisterBlock_94
                           5387  .globl Videopac_Subsong0DisarkPointerRegionEnd866
   067B                    5388 Videopac_Subsong0DisarkPointerRegionEnd866:
                           5389 
                           5390  .globl _Videopac_Subsong0DisarkByteRegionStart867
   067B                    5391 _Videopac_Subsong0DisarkByteRegionStart867:
   067B 18                 5392 	.byte 24	; Duration.
                           5393  .globl Videopac_Subsong0DisarkByteRegionEnd867
   067C                    5394 Videopac_Subsong0DisarkByteRegionEnd867:
                           5395  .globl _Videopac_Subsong0DisarkPointerRegionStart868
   067C                    5396 _Videopac_Subsong0DisarkPointerRegionStart868:
   067C 10 09              5397 	.word _Videopac_Subsong0_RegisterBlock_410
                           5398  .globl Videopac_Subsong0DisarkPointerRegionEnd868
   067E                    5399 Videopac_Subsong0DisarkPointerRegionEnd868:
                           5400 
                           5401  .globl _Videopac_Subsong0DisarkByteRegionStart869
   067E                    5402 _Videopac_Subsong0DisarkByteRegionStart869:
   067E 18                 5403 	.byte 24	; Duration.
                           5404  .globl Videopac_Subsong0DisarkByteRegionEnd869
   067F                    5405 Videopac_Subsong0DisarkByteRegionEnd869:
                           5406  .globl _Videopac_Subsong0DisarkPointerRegionStart870
   067F                    5407 _Videopac_Subsong0DisarkPointerRegionStart870:
   067F 0B 23              5408 	.word _Videopac_Subsong0_RegisterBlock_95
                           5409  .globl Videopac_Subsong0DisarkPointerRegionEnd870
   0681                    5410 Videopac_Subsong0DisarkPointerRegionEnd870:
                           5411 
                           5412  .globl _Videopac_Subsong0DisarkByteRegionStart871
   0681                    5413 _Videopac_Subsong0DisarkByteRegionStart871:
   0681 18                 5414 	.byte 24	; Duration.
                           5415  .globl Videopac_Subsong0DisarkByteRegionEnd871
   0682                    5416 Videopac_Subsong0DisarkByteRegionEnd871:
                           5417  .globl _Videopac_Subsong0DisarkPointerRegionStart872
   0682                    5418 _Videopac_Subsong0DisarkPointerRegionStart872:
   0682 0E A9              5419 	.word _Videopac_Subsong0_RegisterBlock_232
                           5420  .globl Videopac_Subsong0DisarkPointerRegionEnd872
   0684                    5421 Videopac_Subsong0DisarkPointerRegionEnd872:
                           5422 
                           5423  .globl _Videopac_Subsong0DisarkByteRegionStart873
   0684                    5424 _Videopac_Subsong0DisarkByteRegionStart873:
   0684 18                 5425 	.byte 24	; Duration.
                           5426  .globl Videopac_Subsong0DisarkByteRegionEnd873
   0685                    5427 Videopac_Subsong0DisarkByteRegionEnd873:
                           5428  .globl _Videopac_Subsong0DisarkPointerRegionStart874
   0685                    5429 _Videopac_Subsong0DisarkPointerRegionStart874:
   0685 0B 5F              5430 	.word _Videopac_Subsong0_RegisterBlock_96
                           5431  .globl Videopac_Subsong0DisarkPointerRegionEnd874
   0687                    5432 Videopac_Subsong0DisarkPointerRegionEnd874:
                           5433 
                           5434  .globl _Videopac_Subsong0DisarkByteRegionStart875
   0687                    5435 _Videopac_Subsong0DisarkByteRegionStart875:
   0687 18                 5436 	.byte 24	; Duration.
                           5437  .globl Videopac_Subsong0DisarkByteRegionEnd875
   0688                    5438 Videopac_Subsong0DisarkByteRegionEnd875:
                           5439  .globl _Videopac_Subsong0DisarkPointerRegionStart876
   0688                    5440 _Videopac_Subsong0DisarkPointerRegionStart876:
   0688 0F 7A              5441 	.word _Videopac_Subsong0_RegisterBlock_333
                           5442  .globl Videopac_Subsong0DisarkPointerRegionEnd876
   068A                    5443 Videopac_Subsong0DisarkPointerRegionEnd876:
                           5444 
                           5445  .globl _Videopac_Subsong0DisarkByteRegionStart877
   068A                    5446 _Videopac_Subsong0DisarkByteRegionStart877:
   068A 06                 5447 	.byte 6	; Duration.
                           5448  .globl Videopac_Subsong0DisarkByteRegionEnd877
   068B                    5449 Videopac_Subsong0DisarkByteRegionEnd877:
                           5450  .globl _Videopac_Subsong0DisarkPointerRegionStart878
   068B                    5451 _Videopac_Subsong0DisarkPointerRegionStart878:
   068B 06 F5              5452 	.word _Videopac_Subsong0_RegisterBlock_1
                           5453  .globl Videopac_Subsong0DisarkPointerRegionEnd878
   068D                    5454 Videopac_Subsong0DisarkPointerRegionEnd878:
                           5455 
                           5456  .globl Videopac_Subsong0_Track_70
   068D                    5457 Videopac_Subsong0_Track_70:
                           5458  .globl _Videopac_Subsong0DisarkByteRegionStart879
   068D                    5459 _Videopac_Subsong0DisarkByteRegionStart879:
   068D 18                 5460 	.byte 24	; Duration.
                           5461  .globl Videopac_Subsong0DisarkByteRegionEnd879
   068E                    5462 Videopac_Subsong0DisarkByteRegionEnd879:
                           5463  .globl _Videopac_Subsong0DisarkPointerRegionStart880
   068E                    5464 _Videopac_Subsong0DisarkPointerRegionStart880:
   068E 0E E3              5465 	.word _Videopac_Subsong0_RegisterBlock_273
                           5466  .globl Videopac_Subsong0DisarkPointerRegionEnd880
   0690                    5467 Videopac_Subsong0DisarkPointerRegionEnd880:
                           5468 
                           5469  .globl _Videopac_Subsong0DisarkByteRegionStart881
   0690                    5470 _Videopac_Subsong0DisarkByteRegionStart881:
   0690 18                 5471 	.byte 24	; Duration.
                           5472  .globl Videopac_Subsong0DisarkByteRegionEnd881
   0691                    5473 Videopac_Subsong0DisarkByteRegionEnd881:
                           5474  .globl _Videopac_Subsong0DisarkPointerRegionStart882
   0691                    5475 _Videopac_Subsong0DisarkPointerRegionStart882:
   0691 09 11              5476 	.word _Videopac_Subsong0_RegisterBlock_17
                           5477  .globl Videopac_Subsong0DisarkPointerRegionEnd882
   0693                    5478 Videopac_Subsong0DisarkPointerRegionEnd882:
                           5479 
                           5480  .globl _Videopac_Subsong0DisarkByteRegionStart883
   0693                    5481 _Videopac_Subsong0DisarkByteRegionStart883:
   0693 18                 5482 	.byte 24	; Duration.
                           5483  .globl Videopac_Subsong0DisarkByteRegionEnd883
   0694                    5484 Videopac_Subsong0DisarkByteRegionEnd883:
                           5485  .globl _Videopac_Subsong0DisarkPointerRegionStart884
   0694                    5486 _Videopac_Subsong0DisarkPointerRegionStart884:
   0694 10 5A              5487 	.word _Videopac_Subsong0_RegisterBlock_463
                           5488  .globl Videopac_Subsong0DisarkPointerRegionEnd884
   0696                    5489 Videopac_Subsong0DisarkPointerRegionEnd884:
                           5490 
                           5491  .globl _Videopac_Subsong0DisarkByteRegionStart885
   0696                    5492 _Videopac_Subsong0DisarkByteRegionStart885:
   0696 18                 5493 	.byte 24	; Duration.
                           5494  .globl Videopac_Subsong0DisarkByteRegionEnd885
   0697                    5495 Videopac_Subsong0DisarkByteRegionEnd885:
                           5496  .globl _Videopac_Subsong0DisarkPointerRegionStart886
   0697                    5497 _Videopac_Subsong0DisarkPointerRegionStart886:
   0697 0B 9B              5498 	.word _Videopac_Subsong0_RegisterBlock_101
                           5499  .globl Videopac_Subsong0DisarkPointerRegionEnd886
   0699                    5500 Videopac_Subsong0DisarkPointerRegionEnd886:
                           5501 
                           5502  .globl _Videopac_Subsong0DisarkByteRegionStart887
   0699                    5503 _Videopac_Subsong0DisarkByteRegionStart887:
   0699 18                 5504 	.byte 24	; Duration.
                           5505  .globl Videopac_Subsong0DisarkByteRegionEnd887
   069A                    5506 Videopac_Subsong0DisarkByteRegionEnd887:
                           5507  .globl _Videopac_Subsong0DisarkPointerRegionStart888
   069A                    5508 _Videopac_Subsong0DisarkPointerRegionStart888:
   069A 0E E3              5509 	.word _Videopac_Subsong0_RegisterBlock_273
                           5510  .globl Videopac_Subsong0DisarkPointerRegionEnd888
   069C                    5511 Videopac_Subsong0DisarkPointerRegionEnd888:
                           5512 
                           5513  .globl _Videopac_Subsong0DisarkByteRegionStart889
   069C                    5514 _Videopac_Subsong0DisarkByteRegionStart889:
   069C 18                 5515 	.byte 24	; Duration.
                           5516  .globl Videopac_Subsong0DisarkByteRegionEnd889
   069D                    5517 Videopac_Subsong0DisarkByteRegionEnd889:
                           5518  .globl _Videopac_Subsong0DisarkPointerRegionStart890
   069D                    5519 _Videopac_Subsong0DisarkPointerRegionStart890:
   069D 0B D7              5520 	.word _Videopac_Subsong0_RegisterBlock_102
                           5521  .globl Videopac_Subsong0DisarkPointerRegionEnd890
   069F                    5522 Videopac_Subsong0DisarkPointerRegionEnd890:
                           5523 
                           5524  .globl _Videopac_Subsong0DisarkByteRegionStart891
   069F                    5525 _Videopac_Subsong0DisarkByteRegionStart891:
   069F 18                 5526 	.byte 24	; Duration.
                           5527  .globl Videopac_Subsong0DisarkByteRegionEnd891
   06A0                    5528 Videopac_Subsong0DisarkByteRegionEnd891:
                           5529  .globl _Videopac_Subsong0DisarkPointerRegionStart892
   06A0                    5530 _Videopac_Subsong0DisarkPointerRegionStart892:
   06A0 0F D1              5531 	.word _Videopac_Subsong0_RegisterBlock_378
                           5532  .globl Videopac_Subsong0DisarkPointerRegionEnd892
   06A2                    5533 Videopac_Subsong0DisarkPointerRegionEnd892:
                           5534 
                           5535  .globl _Videopac_Subsong0DisarkByteRegionStart893
   06A2                    5536 _Videopac_Subsong0DisarkByteRegionStart893:
   06A2 18                 5537 	.byte 24	; Duration.
                           5538  .globl Videopac_Subsong0DisarkByteRegionEnd893
   06A3                    5539 Videopac_Subsong0DisarkByteRegionEnd893:
                           5540  .globl _Videopac_Subsong0DisarkPointerRegionStart894
   06A3                    5541 _Videopac_Subsong0DisarkPointerRegionStart894:
   06A3 0C 13              5542 	.word _Videopac_Subsong0_RegisterBlock_103
                           5543  .globl Videopac_Subsong0DisarkPointerRegionEnd894
   06A5                    5544 Videopac_Subsong0DisarkPointerRegionEnd894:
                           5545 
                           5546  .globl _Videopac_Subsong0DisarkByteRegionStart895
   06A5                    5547 _Videopac_Subsong0DisarkByteRegionStart895:
   06A5 18                 5548 	.byte 24	; Duration.
                           5549  .globl Videopac_Subsong0DisarkByteRegionEnd895
   06A6                    5550 Videopac_Subsong0DisarkByteRegionEnd895:
                           5551  .globl _Videopac_Subsong0DisarkPointerRegionStart896
   06A6                    5552 _Videopac_Subsong0DisarkPointerRegionStart896:
   06A6 0E E3              5553 	.word _Videopac_Subsong0_RegisterBlock_273
                           5554  .globl Videopac_Subsong0DisarkPointerRegionEnd896
   06A8                    5555 Videopac_Subsong0DisarkPointerRegionEnd896:
                           5556 
                           5557  .globl _Videopac_Subsong0DisarkByteRegionStart897
   06A8                    5558 _Videopac_Subsong0DisarkByteRegionStart897:
   06A8 18                 5559 	.byte 24	; Duration.
                           5560  .globl Videopac_Subsong0DisarkByteRegionEnd897
   06A9                    5561 Videopac_Subsong0DisarkByteRegionEnd897:
                           5562  .globl _Videopac_Subsong0DisarkPointerRegionStart898
   06A9                    5563 _Videopac_Subsong0DisarkPointerRegionStart898:
   06A9 0C 4F              5564 	.word _Videopac_Subsong0_RegisterBlock_104
                           5565  .globl Videopac_Subsong0DisarkPointerRegionEnd898
   06AB                    5566 Videopac_Subsong0DisarkPointerRegionEnd898:
                           5567 
                           5568  .globl _Videopac_Subsong0DisarkByteRegionStart899
   06AB                    5569 _Videopac_Subsong0DisarkByteRegionStart899:
   06AB 18                 5570 	.byte 24	; Duration.
                           5571  .globl Videopac_Subsong0DisarkByteRegionEnd899
   06AC                    5572 Videopac_Subsong0DisarkByteRegionEnd899:
                           5573  .globl _Videopac_Subsong0DisarkPointerRegionStart900
   06AC                    5574 _Videopac_Subsong0DisarkPointerRegionStart900:
   06AC 10 5A              5575 	.word _Videopac_Subsong0_RegisterBlock_463
                           5576  .globl Videopac_Subsong0DisarkPointerRegionEnd900
   06AE                    5577 Videopac_Subsong0DisarkPointerRegionEnd900:
                           5578 
                           5579  .globl _Videopac_Subsong0DisarkByteRegionStart901
   06AE                    5580 _Videopac_Subsong0DisarkByteRegionStart901:
   06AE 18                 5581 	.byte 24	; Duration.
                           5582  .globl Videopac_Subsong0DisarkByteRegionEnd901
   06AF                    5583 Videopac_Subsong0DisarkByteRegionEnd901:
                           5584  .globl _Videopac_Subsong0DisarkPointerRegionStart902
   06AF                    5585 _Videopac_Subsong0DisarkPointerRegionStart902:
   06AF 0C 8B              5586 	.word _Videopac_Subsong0_RegisterBlock_105
                           5587  .globl Videopac_Subsong0DisarkPointerRegionEnd902
   06B1                    5588 Videopac_Subsong0DisarkPointerRegionEnd902:
                           5589 
                           5590  .globl _Videopac_Subsong0DisarkByteRegionStart903
   06B1                    5591 _Videopac_Subsong0DisarkByteRegionStart903:
   06B1 18                 5592 	.byte 24	; Duration.
                           5593  .globl Videopac_Subsong0DisarkByteRegionEnd903
   06B2                    5594 Videopac_Subsong0DisarkByteRegionEnd903:
                           5595  .globl _Videopac_Subsong0DisarkPointerRegionStart904
   06B2                    5596 _Videopac_Subsong0DisarkPointerRegionStart904:
   06B2 0E E3              5597 	.word _Videopac_Subsong0_RegisterBlock_273
                           5598  .globl Videopac_Subsong0DisarkPointerRegionEnd904
   06B4                    5599 Videopac_Subsong0DisarkPointerRegionEnd904:
                           5600 
                           5601  .globl _Videopac_Subsong0DisarkByteRegionStart905
   06B4                    5602 _Videopac_Subsong0DisarkByteRegionStart905:
   06B4 18                 5603 	.byte 24	; Duration.
                           5604  .globl Videopac_Subsong0DisarkByteRegionEnd905
   06B5                    5605 Videopac_Subsong0DisarkByteRegionEnd905:
                           5606  .globl _Videopac_Subsong0DisarkPointerRegionStart906
   06B5                    5607 _Videopac_Subsong0DisarkPointerRegionStart906:
   06B5 0C C7              5608 	.word _Videopac_Subsong0_RegisterBlock_106
                           5609  .globl Videopac_Subsong0DisarkPointerRegionEnd906
   06B7                    5610 Videopac_Subsong0DisarkPointerRegionEnd906:
                           5611 
                           5612  .globl _Videopac_Subsong0DisarkByteRegionStart907
   06B7                    5613 _Videopac_Subsong0DisarkByteRegionStart907:
   06B7 18                 5614 	.byte 24	; Duration.
                           5615  .globl Videopac_Subsong0DisarkByteRegionEnd907
   06B8                    5616 Videopac_Subsong0DisarkByteRegionEnd907:
                           5617  .globl _Videopac_Subsong0DisarkPointerRegionStart908
   06B8                    5618 _Videopac_Subsong0DisarkPointerRegionStart908:
   06B8 0F EB              5619 	.word _Videopac_Subsong0_RegisterBlock_386
                           5620  .globl Videopac_Subsong0DisarkPointerRegionEnd908
   06BA                    5621 Videopac_Subsong0DisarkPointerRegionEnd908:
                           5622 
                           5623  .globl _Videopac_Subsong0DisarkByteRegionStart909
   06BA                    5624 _Videopac_Subsong0DisarkByteRegionStart909:
   06BA 18                 5625 	.byte 24	; Duration.
                           5626  .globl Videopac_Subsong0DisarkByteRegionEnd909
   06BB                    5627 Videopac_Subsong0DisarkByteRegionEnd909:
                           5628  .globl _Videopac_Subsong0DisarkPointerRegionStart910
   06BB                    5629 _Videopac_Subsong0DisarkPointerRegionStart910:
   06BB 08 21              5630 	.word _Videopac_Subsong0_RegisterBlock_11
                           5631  .globl Videopac_Subsong0DisarkPointerRegionEnd910
   06BD                    5632 Videopac_Subsong0DisarkPointerRegionEnd910:
                           5633 
                           5634  .globl Videopac_Subsong0_Track_71
   06BD                    5635 Videopac_Subsong0_Track_71:
                           5636  .globl _Videopac_Subsong0DisarkByteRegionStart911
   06BD                    5637 _Videopac_Subsong0DisarkByteRegionStart911:
   06BD 0C                 5638 	.byte 12	; Duration.
                           5639  .globl Videopac_Subsong0DisarkByteRegionEnd911
   06BE                    5640 Videopac_Subsong0DisarkByteRegionEnd911:
                           5641  .globl _Videopac_Subsong0DisarkPointerRegionStart912
   06BE                    5642 _Videopac_Subsong0DisarkPointerRegionStart912:
   06BE 10 96              5643 	.word _Videopac_Subsong0_RegisterBlock_336
                           5644  .globl Videopac_Subsong0DisarkPointerRegionEnd912
   06C0                    5645 Videopac_Subsong0DisarkPointerRegionEnd912:
                           5646 
                           5647  .globl _Videopac_Subsong0DisarkByteRegionStart913
   06C0                    5648 _Videopac_Subsong0DisarkByteRegionStart913:
   06C0 18                 5649 	.byte 24	; Duration.
                           5650  .globl Videopac_Subsong0DisarkByteRegionEnd913
   06C1                    5651 Videopac_Subsong0DisarkByteRegionEnd913:
                           5652  .globl _Videopac_Subsong0DisarkPointerRegionStart914
   06C1                    5653 _Videopac_Subsong0DisarkPointerRegionStart914:
   06C1 09 4D              5654 	.word _Videopac_Subsong0_RegisterBlock_21
                           5655  .globl Videopac_Subsong0DisarkPointerRegionEnd914
   06C3                    5656 Videopac_Subsong0DisarkPointerRegionEnd914:
                           5657 
                           5658  .globl _Videopac_Subsong0DisarkByteRegionStart915
   06C3                    5659 _Videopac_Subsong0DisarkByteRegionStart915:
   06C3 18                 5660 	.byte 24	; Duration.
                           5661  .globl Videopac_Subsong0DisarkByteRegionEnd915
   06C4                    5662 Videopac_Subsong0DisarkByteRegionEnd915:
                           5663  .globl _Videopac_Subsong0DisarkPointerRegionStart916
   06C4                    5664 _Videopac_Subsong0DisarkPointerRegionStart916:
   06C4 0E C6              5665 	.word _Videopac_Subsong0_RegisterBlock_247
                           5666  .globl Videopac_Subsong0DisarkPointerRegionEnd916
   06C6                    5667 Videopac_Subsong0DisarkPointerRegionEnd916:
                           5668 
                           5669  .globl _Videopac_Subsong0DisarkByteRegionStart917
   06C6                    5670 _Videopac_Subsong0DisarkByteRegionStart917:
   06C6 18                 5671 	.byte 24	; Duration.
                           5672  .globl Videopac_Subsong0DisarkByteRegionEnd917
   06C7                    5673 Videopac_Subsong0DisarkByteRegionEnd917:
                           5674  .globl _Videopac_Subsong0DisarkPointerRegionStart918
   06C7                    5675 _Videopac_Subsong0DisarkPointerRegionStart918:
   06C7 0D 03              5676 	.word _Videopac_Subsong0_RegisterBlock_111
                           5677  .globl Videopac_Subsong0DisarkPointerRegionEnd918
   06C9                    5678 Videopac_Subsong0DisarkPointerRegionEnd918:
                           5679 
                           5680  .globl _Videopac_Subsong0DisarkByteRegionStart919
   06C9                    5681 _Videopac_Subsong0DisarkByteRegionStart919:
   06C9 18                 5682 	.byte 24	; Duration.
                           5683  .globl Videopac_Subsong0DisarkByteRegionEnd919
   06CA                    5684 Videopac_Subsong0DisarkByteRegionEnd919:
                           5685  .globl _Videopac_Subsong0DisarkPointerRegionStart920
   06CA                    5686 _Videopac_Subsong0DisarkPointerRegionStart920:
   06CA 10 3C              5687 	.word _Videopac_Subsong0_RegisterBlock_429
                           5688  .globl Videopac_Subsong0DisarkPointerRegionEnd920
   06CC                    5689 Videopac_Subsong0DisarkPointerRegionEnd920:
                           5690 
                           5691  .globl _Videopac_Subsong0DisarkByteRegionStart921
   06CC                    5692 _Videopac_Subsong0DisarkByteRegionStart921:
   06CC 18                 5693 	.byte 24	; Duration.
                           5694  .globl Videopac_Subsong0DisarkByteRegionEnd921
   06CD                    5695 Videopac_Subsong0DisarkByteRegionEnd921:
                           5696  .globl _Videopac_Subsong0DisarkPointerRegionStart922
   06CD                    5697 _Videopac_Subsong0DisarkPointerRegionStart922:
   06CD 0A 05              5698 	.word _Videopac_Subsong0_RegisterBlock_80
                           5699  .globl Videopac_Subsong0DisarkPointerRegionEnd922
   06CF                    5700 Videopac_Subsong0DisarkPointerRegionEnd922:
                           5701 
                           5702  .globl _Videopac_Subsong0DisarkByteRegionStart923
   06CF                    5703 _Videopac_Subsong0DisarkByteRegionStart923:
   06CF 18                 5704 	.byte 24	; Duration.
                           5705  .globl Videopac_Subsong0DisarkByteRegionEnd923
   06D0                    5706 Videopac_Subsong0DisarkByteRegionEnd923:
                           5707  .globl _Videopac_Subsong0DisarkPointerRegionStart924
   06D0                    5708 _Videopac_Subsong0DisarkPointerRegionStart924:
   06D0 0E C6              5709 	.word _Videopac_Subsong0_RegisterBlock_247
                           5710  .globl Videopac_Subsong0DisarkPointerRegionEnd924
   06D2                    5711 Videopac_Subsong0DisarkPointerRegionEnd924:
                           5712 
                           5713  .globl _Videopac_Subsong0DisarkByteRegionStart925
   06D2                    5714 _Videopac_Subsong0DisarkByteRegionStart925:
   06D2 18                 5715 	.byte 24	; Duration.
                           5716  .globl Videopac_Subsong0DisarkByteRegionEnd925
   06D3                    5717 Videopac_Subsong0DisarkByteRegionEnd925:
                           5718  .globl _Videopac_Subsong0DisarkPointerRegionStart926
   06D3                    5719 _Videopac_Subsong0DisarkPointerRegionStart926:
   06D3 0D 31              5720 	.word _Videopac_Subsong0_RegisterBlock_113
                           5721  .globl Videopac_Subsong0DisarkPointerRegionEnd926
   06D5                    5722 Videopac_Subsong0DisarkPointerRegionEnd926:
                           5723 
                           5724  .globl _Videopac_Subsong0DisarkByteRegionStart927
   06D5                    5725 _Videopac_Subsong0DisarkByteRegionStart927:
   06D5 18                 5726 	.byte 24	; Duration.
                           5727  .globl Videopac_Subsong0DisarkByteRegionEnd927
   06D6                    5728 Videopac_Subsong0DisarkByteRegionEnd927:
                           5729  .globl _Videopac_Subsong0DisarkPointerRegionStart928
   06D6                    5730 _Videopac_Subsong0DisarkPointerRegionStart928:
   06D6 0F 98              5731 	.word _Videopac_Subsong0_RegisterBlock_344
                           5732  .globl Videopac_Subsong0DisarkPointerRegionEnd928
   06D8                    5733 Videopac_Subsong0DisarkPointerRegionEnd928:
                           5734 
                           5735  .globl _Videopac_Subsong0DisarkByteRegionStart929
   06D8                    5736 _Videopac_Subsong0DisarkByteRegionStart929:
   06D8 18                 5737 	.byte 24	; Duration.
                           5738  .globl Videopac_Subsong0DisarkByteRegionEnd929
   06D9                    5739 Videopac_Subsong0DisarkByteRegionEnd929:
                           5740  .globl _Videopac_Subsong0DisarkPointerRegionStart930
   06D9                    5741 _Videopac_Subsong0DisarkPointerRegionStart930:
   06D9 0D 5F              5742 	.word _Videopac_Subsong0_RegisterBlock_114
                           5743  .globl Videopac_Subsong0DisarkPointerRegionEnd930
   06DB                    5744 Videopac_Subsong0DisarkPointerRegionEnd930:
                           5745 
                           5746  .globl _Videopac_Subsong0DisarkByteRegionStart931
   06DB                    5747 _Videopac_Subsong0DisarkByteRegionStart931:
   06DB 18                 5748 	.byte 24	; Duration.
                           5749  .globl Videopac_Subsong0DisarkByteRegionEnd931
   06DC                    5750 Videopac_Subsong0DisarkByteRegionEnd931:
                           5751  .globl _Videopac_Subsong0DisarkPointerRegionStart932
   06DC                    5752 _Videopac_Subsong0DisarkPointerRegionStart932:
   06DC 0E C6              5753 	.word _Videopac_Subsong0_RegisterBlock_247
                           5754  .globl Videopac_Subsong0DisarkPointerRegionEnd932
   06DE                    5755 Videopac_Subsong0DisarkPointerRegionEnd932:
                           5756 
                           5757  .globl _Videopac_Subsong0DisarkByteRegionStart933
   06DE                    5758 _Videopac_Subsong0DisarkByteRegionStart933:
   06DE 18                 5759 	.byte 24	; Duration.
                           5760  .globl Videopac_Subsong0DisarkByteRegionEnd933
   06DF                    5761 Videopac_Subsong0DisarkByteRegionEnd933:
                           5762  .globl _Videopac_Subsong0DisarkPointerRegionStart934
   06DF                    5763 _Videopac_Subsong0DisarkPointerRegionStart934:
   06DF 0D 8D              5764 	.word _Videopac_Subsong0_RegisterBlock_115
                           5765  .globl Videopac_Subsong0DisarkPointerRegionEnd934
   06E1                    5766 Videopac_Subsong0DisarkPointerRegionEnd934:
                           5767 
                           5768  .globl _Videopac_Subsong0DisarkByteRegionStart935
   06E1                    5769 _Videopac_Subsong0DisarkByteRegionStart935:
   06E1 18                 5770 	.byte 24	; Duration.
                           5771  .globl Videopac_Subsong0DisarkByteRegionEnd935
   06E2                    5772 Videopac_Subsong0DisarkByteRegionEnd935:
                           5773  .globl _Videopac_Subsong0DisarkPointerRegionStart936
   06E2                    5774 _Videopac_Subsong0DisarkPointerRegionStart936:
   06E2 10 3C              5775 	.word _Videopac_Subsong0_RegisterBlock_429
                           5776  .globl Videopac_Subsong0DisarkPointerRegionEnd936
   06E4                    5777 Videopac_Subsong0DisarkPointerRegionEnd936:
                           5778 
                           5779  .globl _Videopac_Subsong0DisarkByteRegionStart937
   06E4                    5780 _Videopac_Subsong0DisarkByteRegionStart937:
   06E4 18                 5781 	.byte 24	; Duration.
                           5782  .globl Videopac_Subsong0DisarkByteRegionEnd937
   06E5                    5783 Videopac_Subsong0DisarkByteRegionEnd937:
                           5784  .globl _Videopac_Subsong0DisarkPointerRegionStart938
   06E5                    5785 _Videopac_Subsong0DisarkPointerRegionStart938:
   06E5 0D BB              5786 	.word _Videopac_Subsong0_RegisterBlock_116
                           5787  .globl Videopac_Subsong0DisarkPointerRegionEnd938
   06E7                    5788 Videopac_Subsong0DisarkPointerRegionEnd938:
                           5789 
                           5790  .globl _Videopac_Subsong0DisarkByteRegionStart939
   06E7                    5791 _Videopac_Subsong0DisarkByteRegionStart939:
   06E7 18                 5792 	.byte 24	; Duration.
                           5793  .globl Videopac_Subsong0DisarkByteRegionEnd939
   06E8                    5794 Videopac_Subsong0DisarkByteRegionEnd939:
                           5795  .globl _Videopac_Subsong0DisarkPointerRegionStart940
   06E8                    5796 _Videopac_Subsong0DisarkPointerRegionStart940:
   06E8 0E C6              5797 	.word _Videopac_Subsong0_RegisterBlock_247
                           5798  .globl Videopac_Subsong0DisarkPointerRegionEnd940
   06EA                    5799 Videopac_Subsong0DisarkPointerRegionEnd940:
                           5800 
                           5801  .globl _Videopac_Subsong0DisarkByteRegionStart941
   06EA                    5802 _Videopac_Subsong0DisarkByteRegionStart941:
   06EA 18                 5803 	.byte 24	; Duration.
                           5804  .globl Videopac_Subsong0DisarkByteRegionEnd941
   06EB                    5805 Videopac_Subsong0DisarkByteRegionEnd941:
                           5806  .globl _Videopac_Subsong0DisarkPointerRegionStart942
   06EB                    5807 _Videopac_Subsong0DisarkPointerRegionStart942:
   06EB 0D FF              5808 	.word _Videopac_Subsong0_RegisterBlock_117
                           5809  .globl Videopac_Subsong0DisarkPointerRegionEnd942
   06ED                    5810 Videopac_Subsong0DisarkPointerRegionEnd942:
                           5811 
                           5812  .globl _Videopac_Subsong0DisarkByteRegionStart943
   06ED                    5813 _Videopac_Subsong0DisarkByteRegionStart943:
   06ED 0C                 5814 	.byte 12	; Duration.
                           5815  .globl Videopac_Subsong0DisarkByteRegionEnd943
   06EE                    5816 Videopac_Subsong0DisarkByteRegionEnd943:
                           5817  .globl _Videopac_Subsong0DisarkPointerRegionStart944
   06EE                    5818 _Videopac_Subsong0DisarkPointerRegionStart944:
   06EE 10 84              5819 	.word _Videopac_Subsong0_RegisterBlock_316
                           5820  .globl Videopac_Subsong0DisarkPointerRegionEnd944
   06F0                    5821 Videopac_Subsong0DisarkPointerRegionEnd944:
                           5822 
                           5823 
                           5824 ; The RegisterBlocks.
                           5825  .globl Videopac_Subsong0DisarkByteRegionStart945
   06F0                    5826 Videopac_Subsong0DisarkByteRegionStart945:
                           5827  .globl _Videopac_Subsong0_RegisterBlock_20
   06F0                    5828 _Videopac_Subsong0_RegisterBlock_20:
   06F0 00                 5829 	.byte 0	; Initial State: no software, no hardware.
                           5830 
                           5831  .globl _Videopac_Subsong0_RegisterBlock_20_Loop
   06F1                    5832 _Videopac_Subsong0_RegisterBlock_20_Loop:
   06F1 04                 5833 	.byte 4	; Non-initial State, no software no hardware.
                           5834 
   06F2 08                 5835 	.byte 8	; Loop to index 1.
                           5836  .globl _Videopac_Subsong0DisarkPointerRegionStart946
   06F3                    5837 _Videopac_Subsong0DisarkPointerRegionStart946:
   06F3 06 F1              5838 	.word _Videopac_Subsong0_RegisterBlock_20_Loop
                           5839  .globl Videopac_Subsong0DisarkPointerRegionEnd946
   06F5                    5840 Videopac_Subsong0DisarkPointerRegionEnd946:
                           5841 
                           5842 
                           5843  .globl _Videopac_Subsong0_RegisterBlock_1
   06F5                    5844 _Videopac_Subsong0_RegisterBlock_1:
   06F5 09                 5845 	.byte 9	; Initial State: software only.
   06F6 1C 01              5846 	.byte 28, 1	; Software period.
                           5847 
   06F8 05                 5848 	.byte 5	; Non-initial State, software only.
                           5849 
   06F9 05                 5850 	.byte 5	; Non-initial State, software only.
                           5851 
   06FA 09                 5852 	.byte 9	; Non-initial State, software only.
                           5853 
   06FB 09                 5854 	.byte 9	; Non-initial State, software only.
                           5855 
   06FC 09                 5856 	.byte 9	; Non-initial State, software only.
                           5857 
   06FD 49                 5858 	.byte 73	; Non-initial State, software only.
   06FE 1D                 5859 	.byte 29	; New LSB for software period.
                           5860 
   06FF 09                 5861 	.byte 9	; Non-initial State, software only.
                           5862 
   0700 09                 5863 	.byte 9	; Non-initial State, software only.
                           5864 
   0701 49                 5865 	.byte 73	; Non-initial State, software only.
   0702 1C                 5866 	.byte 28	; New LSB for software period.
                           5867 
   0703 09                 5868 	.byte 9	; Non-initial State, software only.
                           5869 
   0704 09                 5870 	.byte 9	; Non-initial State, software only.
                           5871 
   0705 05                 5872 	.byte 5	; Non-initial State, software only.
                           5873 
   0706 05                 5874 	.byte 5	; Non-initial State, software only.
                           5875 
   0707 05                 5876 	.byte 5	; Non-initial State, software only.
                           5877 
   0708 45                 5878 	.byte 69	; Non-initial State, software only.
   0709 1B                 5879 	.byte 27	; New LSB for software period.
                           5880 
   070A 05                 5881 	.byte 5	; Non-initial State, software only.
                           5882 
   070B 05                 5883 	.byte 5	; Non-initial State, software only.
                           5884 
   070C 45                 5885 	.byte 69	; Non-initial State, software only.
   070D 1C                 5886 	.byte 28	; New LSB for software period.
                           5887 
   070E 05                 5888 	.byte 5	; Non-initial State, software only.
                           5889 
   070F 05                 5890 	.byte 5	; Non-initial State, software only.
                           5891 
   0710 41                 5892 	.byte 65	; Non-initial State, software only.
   0711 1D                 5893 	.byte 29	; New LSB for software period.
                           5894 
   0712 01                 5895 	.byte 1	; Non-initial State, software only.
                           5896 
   0713 01                 5897 	.byte 1	; Non-initial State, software only.
                           5898 
   0714 41                 5899 	.byte 65	; Non-initial State, software only.
   0715 1C                 5900 	.byte 28	; New LSB for software period.
                           5901 
   0716 01                 5902 	.byte 1	; Non-initial State, software only.
                           5903 
   0717 01                 5904 	.byte 1	; Non-initial State, software only.
                           5905 
   0718 41                 5906 	.byte 65	; Non-initial State, software only.
   0719 1B                 5907 	.byte 27	; New LSB for software period.
                           5908 
   071A 01                 5909 	.byte 1	; Non-initial State, software only.
                           5910 
   071B 01                 5911 	.byte 1	; Non-initial State, software only.
                           5912 
   071C 41                 5913 	.byte 65	; Non-initial State, software only.
   071D 1C                 5914 	.byte 28	; New LSB for software period.
                           5915 
   071E 01                 5916 	.byte 1	; Non-initial State, software only.
                           5917 
   071F 01                 5918 	.byte 1	; Non-initial State, software only.
                           5919 
   0720 41                 5920 	.byte 65	; Non-initial State, software only.
   0721 1D                 5921 	.byte 29	; New LSB for software period.
                           5922 
   0722 01                 5923 	.byte 1	; Non-initial State, software only.
                           5924 
   0723 01                 5925 	.byte 1	; Non-initial State, software only.
                           5926 
   0724 41                 5927 	.byte 65	; Non-initial State, software only.
   0725 1C                 5928 	.byte 28	; New LSB for software period.
                           5929 
   0726 01                 5930 	.byte 1	; Non-initial State, software only.
                           5931 
   0727 01                 5932 	.byte 1	; Non-initial State, software only.
                           5933 
   0728 41                 5934 	.byte 65	; Non-initial State, software only.
   0729 1B                 5935 	.byte 27	; New LSB for software period.
                           5936 
   072A 01                 5937 	.byte 1	; Non-initial State, software only.
                           5938 
   072B 01                 5939 	.byte 1	; Non-initial State, software only.
                           5940 
                           5941  .globl _Videopac_Subsong0_RegisterBlock_1_Loop
   072C                    5942 _Videopac_Subsong0_RegisterBlock_1_Loop:
   072C 41                 5943 	.byte 65	; Non-initial State, software only.
   072D 1C                 5944 	.byte 28	; New LSB for software period.
                           5945 
   072E 08                 5946 	.byte 8	; Loop to index 42.
                           5947  .globl _Videopac_Subsong0DisarkPointerRegionStart947
   072F                    5948 _Videopac_Subsong0DisarkPointerRegionStart947:
   072F 07 2C              5949 	.word _Videopac_Subsong0_RegisterBlock_1_Loop
                           5950  .globl Videopac_Subsong0DisarkPointerRegionEnd947
   0731                    5951 Videopac_Subsong0DisarkPointerRegionEnd947:
                           5952 
                           5953 
                           5954  .globl _Videopac_Subsong0_RegisterBlock_2
   0731                    5955 _Videopac_Subsong0_RegisterBlock_2:
   0731 09                 5956 	.byte 9	; Initial State: software only.
   0732 BE 00              5957 	.byte 190, 0	; Software period.
                           5958 
   0734 05                 5959 	.byte 5	; Non-initial State, software only.
                           5960 
   0735 05                 5961 	.byte 5	; Non-initial State, software only.
                           5962 
   0736 09                 5963 	.byte 9	; Non-initial State, software only.
                           5964 
   0737 09                 5965 	.byte 9	; Non-initial State, software only.
                           5966 
   0738 09                 5967 	.byte 9	; Non-initial State, software only.
                           5968 
   0739 49                 5969 	.byte 73	; Non-initial State, software only.
   073A BF                 5970 	.byte 191	; New LSB for software period.
                           5971 
   073B 09                 5972 	.byte 9	; Non-initial State, software only.
                           5973 
   073C 09                 5974 	.byte 9	; Non-initial State, software only.
                           5975 
   073D 49                 5976 	.byte 73	; Non-initial State, software only.
   073E BE                 5977 	.byte 190	; New LSB for software period.
                           5978 
   073F 09                 5979 	.byte 9	; Non-initial State, software only.
                           5980 
   0740 09                 5981 	.byte 9	; Non-initial State, software only.
                           5982 
   0741 05                 5983 	.byte 5	; Non-initial State, software only.
                           5984 
   0742 05                 5985 	.byte 5	; Non-initial State, software only.
                           5986 
   0743 05                 5987 	.byte 5	; Non-initial State, software only.
                           5988 
   0744 45                 5989 	.byte 69	; Non-initial State, software only.
   0745 BD                 5990 	.byte 189	; New LSB for software period.
                           5991 
   0746 05                 5992 	.byte 5	; Non-initial State, software only.
                           5993 
   0747 05                 5994 	.byte 5	; Non-initial State, software only.
                           5995 
   0748 45                 5996 	.byte 69	; Non-initial State, software only.
   0749 BE                 5997 	.byte 190	; New LSB for software period.
                           5998 
   074A 05                 5999 	.byte 5	; Non-initial State, software only.
                           6000 
   074B 05                 6001 	.byte 5	; Non-initial State, software only.
                           6002 
   074C 41                 6003 	.byte 65	; Non-initial State, software only.
   074D BF                 6004 	.byte 191	; New LSB for software period.
                           6005 
   074E 01                 6006 	.byte 1	; Non-initial State, software only.
                           6007 
   074F 01                 6008 	.byte 1	; Non-initial State, software only.
                           6009 
   0750 41                 6010 	.byte 65	; Non-initial State, software only.
   0751 BE                 6011 	.byte 190	; New LSB for software period.
                           6012 
   0752 01                 6013 	.byte 1	; Non-initial State, software only.
                           6014 
   0753 01                 6015 	.byte 1	; Non-initial State, software only.
                           6016 
   0754 41                 6017 	.byte 65	; Non-initial State, software only.
   0755 BD                 6018 	.byte 189	; New LSB for software period.
                           6019 
   0756 01                 6020 	.byte 1	; Non-initial State, software only.
                           6021 
   0757 01                 6022 	.byte 1	; Non-initial State, software only.
                           6023 
   0758 41                 6024 	.byte 65	; Non-initial State, software only.
   0759 BE                 6025 	.byte 190	; New LSB for software period.
                           6026 
   075A 01                 6027 	.byte 1	; Non-initial State, software only.
                           6028 
   075B 01                 6029 	.byte 1	; Non-initial State, software only.
                           6030 
   075C 41                 6031 	.byte 65	; Non-initial State, software only.
   075D BF                 6032 	.byte 191	; New LSB for software period.
                           6033 
   075E 01                 6034 	.byte 1	; Non-initial State, software only.
                           6035 
   075F 01                 6036 	.byte 1	; Non-initial State, software only.
                           6037 
   0760 41                 6038 	.byte 65	; Non-initial State, software only.
   0761 BE                 6039 	.byte 190	; New LSB for software period.
                           6040 
   0762 01                 6041 	.byte 1	; Non-initial State, software only.
                           6042 
   0763 01                 6043 	.byte 1	; Non-initial State, software only.
                           6044 
   0764 41                 6045 	.byte 65	; Non-initial State, software only.
   0765 BD                 6046 	.byte 189	; New LSB for software period.
                           6047 
   0766 01                 6048 	.byte 1	; Non-initial State, software only.
                           6049 
   0767 01                 6050 	.byte 1	; Non-initial State, software only.
                           6051 
                           6052  .globl _Videopac_Subsong0_RegisterBlock_2_Loop
   0768                    6053 _Videopac_Subsong0_RegisterBlock_2_Loop:
   0768 41                 6054 	.byte 65	; Non-initial State, software only.
   0769 BE                 6055 	.byte 190	; New LSB for software period.
                           6056 
   076A 08                 6057 	.byte 8	; Loop to index 42.
                           6058  .globl _Videopac_Subsong0DisarkPointerRegionStart948
   076B                    6059 _Videopac_Subsong0DisarkPointerRegionStart948:
   076B 07 68              6060 	.word _Videopac_Subsong0_RegisterBlock_2_Loop
                           6061  .globl Videopac_Subsong0DisarkPointerRegionEnd948
   076D                    6062 Videopac_Subsong0DisarkPointerRegionEnd948:
                           6063 
                           6064 
                           6065  .globl _Videopac_Subsong0_RegisterBlock_3
   076D                    6066 _Videopac_Subsong0_RegisterBlock_3:
   076D 09                 6067 	.byte 9	; Initial State: software only.
   076E 3F 01              6068 	.byte 63, 1	; Software period.
                           6069 
   0770 05                 6070 	.byte 5	; Non-initial State, software only.
                           6071 
   0771 05                 6072 	.byte 5	; Non-initial State, software only.
                           6073 
   0772 09                 6074 	.byte 9	; Non-initial State, software only.
                           6075 
   0773 09                 6076 	.byte 9	; Non-initial State, software only.
                           6077 
   0774 09                 6078 	.byte 9	; Non-initial State, software only.
                           6079 
   0775 49                 6080 	.byte 73	; Non-initial State, software only.
   0776 40                 6081 	.byte 64	; New LSB for software period.
                           6082 
   0777 09                 6083 	.byte 9	; Non-initial State, software only.
                           6084 
   0778 09                 6085 	.byte 9	; Non-initial State, software only.
                           6086 
   0779 49                 6087 	.byte 73	; Non-initial State, software only.
   077A 3F                 6088 	.byte 63	; New LSB for software period.
                           6089 
   077B 09                 6090 	.byte 9	; Non-initial State, software only.
                           6091 
   077C 09                 6092 	.byte 9	; Non-initial State, software only.
                           6093 
   077D 05                 6094 	.byte 5	; Non-initial State, software only.
                           6095 
   077E 05                 6096 	.byte 5	; Non-initial State, software only.
                           6097 
   077F 05                 6098 	.byte 5	; Non-initial State, software only.
                           6099 
   0780 45                 6100 	.byte 69	; Non-initial State, software only.
   0781 3E                 6101 	.byte 62	; New LSB for software period.
                           6102 
   0782 05                 6103 	.byte 5	; Non-initial State, software only.
                           6104 
   0783 05                 6105 	.byte 5	; Non-initial State, software only.
                           6106 
   0784 45                 6107 	.byte 69	; Non-initial State, software only.
   0785 3F                 6108 	.byte 63	; New LSB for software period.
                           6109 
   0786 05                 6110 	.byte 5	; Non-initial State, software only.
                           6111 
   0787 05                 6112 	.byte 5	; Non-initial State, software only.
                           6113 
   0788 41                 6114 	.byte 65	; Non-initial State, software only.
   0789 40                 6115 	.byte 64	; New LSB for software period.
                           6116 
   078A 01                 6117 	.byte 1	; Non-initial State, software only.
                           6118 
   078B 01                 6119 	.byte 1	; Non-initial State, software only.
                           6120 
   078C 41                 6121 	.byte 65	; Non-initial State, software only.
   078D 3F                 6122 	.byte 63	; New LSB for software period.
                           6123 
   078E 01                 6124 	.byte 1	; Non-initial State, software only.
                           6125 
   078F 01                 6126 	.byte 1	; Non-initial State, software only.
                           6127 
   0790 41                 6128 	.byte 65	; Non-initial State, software only.
   0791 3E                 6129 	.byte 62	; New LSB for software period.
                           6130 
   0792 01                 6131 	.byte 1	; Non-initial State, software only.
                           6132 
   0793 01                 6133 	.byte 1	; Non-initial State, software only.
                           6134 
   0794 41                 6135 	.byte 65	; Non-initial State, software only.
   0795 3F                 6136 	.byte 63	; New LSB for software period.
                           6137 
   0796 01                 6138 	.byte 1	; Non-initial State, software only.
                           6139 
   0797 01                 6140 	.byte 1	; Non-initial State, software only.
                           6141 
   0798 41                 6142 	.byte 65	; Non-initial State, software only.
   0799 40                 6143 	.byte 64	; New LSB for software period.
                           6144 
   079A 01                 6145 	.byte 1	; Non-initial State, software only.
                           6146 
   079B 01                 6147 	.byte 1	; Non-initial State, software only.
                           6148 
   079C 41                 6149 	.byte 65	; Non-initial State, software only.
   079D 3F                 6150 	.byte 63	; New LSB for software period.
                           6151 
   079E 01                 6152 	.byte 1	; Non-initial State, software only.
                           6153 
   079F 01                 6154 	.byte 1	; Non-initial State, software only.
                           6155 
   07A0 41                 6156 	.byte 65	; Non-initial State, software only.
   07A1 3E                 6157 	.byte 62	; New LSB for software period.
                           6158 
   07A2 01                 6159 	.byte 1	; Non-initial State, software only.
                           6160 
   07A3 01                 6161 	.byte 1	; Non-initial State, software only.
                           6162 
                           6163  .globl _Videopac_Subsong0_RegisterBlock_3_Loop
   07A4                    6164 _Videopac_Subsong0_RegisterBlock_3_Loop:
   07A4 41                 6165 	.byte 65	; Non-initial State, software only.
   07A5 3F                 6166 	.byte 63	; New LSB for software period.
                           6167 
   07A6 08                 6168 	.byte 8	; Loop to index 42.
                           6169  .globl _Videopac_Subsong0DisarkPointerRegionStart949
   07A7                    6170 _Videopac_Subsong0DisarkPointerRegionStart949:
   07A7 07 A4              6171 	.word _Videopac_Subsong0_RegisterBlock_3_Loop
                           6172  .globl Videopac_Subsong0DisarkPointerRegionEnd949
   07A9                    6173 Videopac_Subsong0DisarkPointerRegionEnd949:
                           6174 
                           6175 
                           6176  .globl _Videopac_Subsong0_RegisterBlock_5
   07A9                    6177 _Videopac_Subsong0_RegisterBlock_5:
   07A9 09                 6178 	.byte 9	; Initial State: software only.
   07AA 52 01              6179 	.byte 82, 1	; Software period.
                           6180 
   07AC 05                 6181 	.byte 5	; Non-initial State, software only.
                           6182 
   07AD 05                 6183 	.byte 5	; Non-initial State, software only.
                           6184 
   07AE 09                 6185 	.byte 9	; Non-initial State, software only.
                           6186 
   07AF 09                 6187 	.byte 9	; Non-initial State, software only.
                           6188 
   07B0 09                 6189 	.byte 9	; Non-initial State, software only.
                           6190 
   07B1 49                 6191 	.byte 73	; Non-initial State, software only.
   07B2 53                 6192 	.byte 83	; New LSB for software period.
                           6193 
   07B3 09                 6194 	.byte 9	; Non-initial State, software only.
                           6195 
   07B4 09                 6196 	.byte 9	; Non-initial State, software only.
                           6197 
   07B5 49                 6198 	.byte 73	; Non-initial State, software only.
   07B6 52                 6199 	.byte 82	; New LSB for software period.
                           6200 
   07B7 09                 6201 	.byte 9	; Non-initial State, software only.
                           6202 
   07B8 09                 6203 	.byte 9	; Non-initial State, software only.
                           6204 
   07B9 05                 6205 	.byte 5	; Non-initial State, software only.
                           6206 
   07BA 05                 6207 	.byte 5	; Non-initial State, software only.
                           6208 
   07BB 05                 6209 	.byte 5	; Non-initial State, software only.
                           6210 
   07BC 45                 6211 	.byte 69	; Non-initial State, software only.
   07BD 51                 6212 	.byte 81	; New LSB for software period.
                           6213 
   07BE 05                 6214 	.byte 5	; Non-initial State, software only.
                           6215 
   07BF 05                 6216 	.byte 5	; Non-initial State, software only.
                           6217 
   07C0 45                 6218 	.byte 69	; Non-initial State, software only.
   07C1 52                 6219 	.byte 82	; New LSB for software period.
                           6220 
   07C2 05                 6221 	.byte 5	; Non-initial State, software only.
                           6222 
   07C3 05                 6223 	.byte 5	; Non-initial State, software only.
                           6224 
   07C4 41                 6225 	.byte 65	; Non-initial State, software only.
   07C5 53                 6226 	.byte 83	; New LSB for software period.
                           6227 
   07C6 01                 6228 	.byte 1	; Non-initial State, software only.
                           6229 
   07C7 01                 6230 	.byte 1	; Non-initial State, software only.
                           6231 
   07C8 41                 6232 	.byte 65	; Non-initial State, software only.
   07C9 52                 6233 	.byte 82	; New LSB for software period.
                           6234 
   07CA 01                 6235 	.byte 1	; Non-initial State, software only.
                           6236 
   07CB 01                 6237 	.byte 1	; Non-initial State, software only.
                           6238 
   07CC 41                 6239 	.byte 65	; Non-initial State, software only.
   07CD 51                 6240 	.byte 81	; New LSB for software period.
                           6241 
   07CE 01                 6242 	.byte 1	; Non-initial State, software only.
                           6243 
   07CF 01                 6244 	.byte 1	; Non-initial State, software only.
                           6245 
   07D0 41                 6246 	.byte 65	; Non-initial State, software only.
   07D1 52                 6247 	.byte 82	; New LSB for software period.
                           6248 
   07D2 01                 6249 	.byte 1	; Non-initial State, software only.
                           6250 
   07D3 01                 6251 	.byte 1	; Non-initial State, software only.
                           6252 
   07D4 41                 6253 	.byte 65	; Non-initial State, software only.
   07D5 53                 6254 	.byte 83	; New LSB for software period.
                           6255 
   07D6 01                 6256 	.byte 1	; Non-initial State, software only.
                           6257 
   07D7 01                 6258 	.byte 1	; Non-initial State, software only.
                           6259 
   07D8 41                 6260 	.byte 65	; Non-initial State, software only.
   07D9 52                 6261 	.byte 82	; New LSB for software period.
                           6262 
   07DA 01                 6263 	.byte 1	; Non-initial State, software only.
                           6264 
   07DB 01                 6265 	.byte 1	; Non-initial State, software only.
                           6266 
   07DC 41                 6267 	.byte 65	; Non-initial State, software only.
   07DD 51                 6268 	.byte 81	; New LSB for software period.
                           6269 
   07DE 01                 6270 	.byte 1	; Non-initial State, software only.
                           6271 
   07DF 01                 6272 	.byte 1	; Non-initial State, software only.
                           6273 
                           6274  .globl _Videopac_Subsong0_RegisterBlock_5_Loop
   07E0                    6275 _Videopac_Subsong0_RegisterBlock_5_Loop:
   07E0 41                 6276 	.byte 65	; Non-initial State, software only.
   07E1 52                 6277 	.byte 82	; New LSB for software period.
                           6278 
   07E2 08                 6279 	.byte 8	; Loop to index 42.
                           6280  .globl _Videopac_Subsong0DisarkPointerRegionStart950
   07E3                    6281 _Videopac_Subsong0DisarkPointerRegionStart950:
   07E3 07 E0              6282 	.word _Videopac_Subsong0_RegisterBlock_5_Loop
                           6283  .globl Videopac_Subsong0DisarkPointerRegionEnd950
   07E5                    6284 Videopac_Subsong0DisarkPointerRegionEnd950:
                           6285 
                           6286 
                           6287  .globl _Videopac_Subsong0_RegisterBlock_7
   07E5                    6288 _Videopac_Subsong0_RegisterBlock_7:
   07E5 09                 6289 	.byte 9	; Initial State: software only.
   07E6 66 01              6290 	.byte 102, 1	; Software period.
                           6291 
   07E8 05                 6292 	.byte 5	; Non-initial State, software only.
                           6293 
   07E9 05                 6294 	.byte 5	; Non-initial State, software only.
                           6295 
   07EA 09                 6296 	.byte 9	; Non-initial State, software only.
                           6297 
   07EB 09                 6298 	.byte 9	; Non-initial State, software only.
                           6299 
   07EC 09                 6300 	.byte 9	; Non-initial State, software only.
                           6301 
   07ED 49                 6302 	.byte 73	; Non-initial State, software only.
   07EE 67                 6303 	.byte 103	; New LSB for software period.
                           6304 
   07EF 09                 6305 	.byte 9	; Non-initial State, software only.
                           6306 
   07F0 09                 6307 	.byte 9	; Non-initial State, software only.
                           6308 
   07F1 49                 6309 	.byte 73	; Non-initial State, software only.
   07F2 66                 6310 	.byte 102	; New LSB for software period.
                           6311 
   07F3 09                 6312 	.byte 9	; Non-initial State, software only.
                           6313 
   07F4 09                 6314 	.byte 9	; Non-initial State, software only.
                           6315 
   07F5 05                 6316 	.byte 5	; Non-initial State, software only.
                           6317 
   07F6 05                 6318 	.byte 5	; Non-initial State, software only.
                           6319 
   07F7 05                 6320 	.byte 5	; Non-initial State, software only.
                           6321 
   07F8 45                 6322 	.byte 69	; Non-initial State, software only.
   07F9 65                 6323 	.byte 101	; New LSB for software period.
                           6324 
   07FA 05                 6325 	.byte 5	; Non-initial State, software only.
                           6326 
   07FB 05                 6327 	.byte 5	; Non-initial State, software only.
                           6328 
   07FC 45                 6329 	.byte 69	; Non-initial State, software only.
   07FD 66                 6330 	.byte 102	; New LSB for software period.
                           6331 
   07FE 05                 6332 	.byte 5	; Non-initial State, software only.
                           6333 
   07FF 05                 6334 	.byte 5	; Non-initial State, software only.
                           6335 
   0800 41                 6336 	.byte 65	; Non-initial State, software only.
   0801 67                 6337 	.byte 103	; New LSB for software period.
                           6338 
   0802 01                 6339 	.byte 1	; Non-initial State, software only.
                           6340 
   0803 01                 6341 	.byte 1	; Non-initial State, software only.
                           6342 
   0804 41                 6343 	.byte 65	; Non-initial State, software only.
   0805 66                 6344 	.byte 102	; New LSB for software period.
                           6345 
   0806 01                 6346 	.byte 1	; Non-initial State, software only.
                           6347 
   0807 01                 6348 	.byte 1	; Non-initial State, software only.
                           6349 
   0808 41                 6350 	.byte 65	; Non-initial State, software only.
   0809 65                 6351 	.byte 101	; New LSB for software period.
                           6352 
   080A 01                 6353 	.byte 1	; Non-initial State, software only.
                           6354 
   080B 01                 6355 	.byte 1	; Non-initial State, software only.
                           6356 
   080C 41                 6357 	.byte 65	; Non-initial State, software only.
   080D 66                 6358 	.byte 102	; New LSB for software period.
                           6359 
   080E 01                 6360 	.byte 1	; Non-initial State, software only.
                           6361 
   080F 01                 6362 	.byte 1	; Non-initial State, software only.
                           6363 
   0810 41                 6364 	.byte 65	; Non-initial State, software only.
   0811 67                 6365 	.byte 103	; New LSB for software period.
                           6366 
   0812 01                 6367 	.byte 1	; Non-initial State, software only.
                           6368 
   0813 01                 6369 	.byte 1	; Non-initial State, software only.
                           6370 
   0814 41                 6371 	.byte 65	; Non-initial State, software only.
   0815 66                 6372 	.byte 102	; New LSB for software period.
                           6373 
   0816 01                 6374 	.byte 1	; Non-initial State, software only.
                           6375 
   0817 01                 6376 	.byte 1	; Non-initial State, software only.
                           6377 
   0818 41                 6378 	.byte 65	; Non-initial State, software only.
   0819 65                 6379 	.byte 101	; New LSB for software period.
                           6380 
   081A 01                 6381 	.byte 1	; Non-initial State, software only.
                           6382 
   081B 01                 6383 	.byte 1	; Non-initial State, software only.
                           6384 
                           6385  .globl _Videopac_Subsong0_RegisterBlock_7_Loop
   081C                    6386 _Videopac_Subsong0_RegisterBlock_7_Loop:
   081C 41                 6387 	.byte 65	; Non-initial State, software only.
   081D 66                 6388 	.byte 102	; New LSB for software period.
                           6389 
   081E 08                 6390 	.byte 8	; Loop to index 42.
                           6391  .globl _Videopac_Subsong0DisarkPointerRegionStart951
   081F                    6392 _Videopac_Subsong0DisarkPointerRegionStart951:
   081F 08 1C              6393 	.word _Videopac_Subsong0_RegisterBlock_7_Loop
                           6394  .globl Videopac_Subsong0DisarkPointerRegionEnd951
   0821                    6395 Videopac_Subsong0DisarkPointerRegionEnd951:
                           6396 
                           6397 
                           6398  .globl _Videopac_Subsong0_RegisterBlock_11
   0821                    6399 _Videopac_Subsong0_RegisterBlock_11:
   0821 39                 6400 	.byte 57	; Initial State: software only.
   0822 1C 01              6401 	.byte 28, 1	; Software period.
                           6402 
   0824 1D                 6403 	.byte 29	; Non-initial State, software only.
                           6404 
   0825 1D                 6405 	.byte 29	; Non-initial State, software only.
                           6406 
   0826 21                 6407 	.byte 33	; Non-initial State, software only.
                           6408 
   0827 21                 6409 	.byte 33	; Non-initial State, software only.
                           6410 
   0828 21                 6411 	.byte 33	; Non-initial State, software only.
                           6412 
   0829 61                 6413 	.byte 97	; Non-initial State, software only.
   082A 1D                 6414 	.byte 29	; New LSB for software period.
                           6415 
   082B 21                 6416 	.byte 33	; Non-initial State, software only.
                           6417 
   082C 21                 6418 	.byte 33	; Non-initial State, software only.
                           6419 
   082D 61                 6420 	.byte 97	; Non-initial State, software only.
   082E 1C                 6421 	.byte 28	; New LSB for software period.
                           6422 
   082F 21                 6423 	.byte 33	; Non-initial State, software only.
                           6424 
   0830 21                 6425 	.byte 33	; Non-initial State, software only.
                           6426 
   0831 1D                 6427 	.byte 29	; Non-initial State, software only.
                           6428 
   0832 1D                 6429 	.byte 29	; Non-initial State, software only.
                           6430 
   0833 1D                 6431 	.byte 29	; Non-initial State, software only.
                           6432 
   0834 5D                 6433 	.byte 93	; Non-initial State, software only.
   0835 1B                 6434 	.byte 27	; New LSB for software period.
                           6435 
   0836 1D                 6436 	.byte 29	; Non-initial State, software only.
                           6437 
   0837 1D                 6438 	.byte 29	; Non-initial State, software only.
                           6439 
   0838 5D                 6440 	.byte 93	; Non-initial State, software only.
   0839 1C                 6441 	.byte 28	; New LSB for software period.
                           6442 
   083A 1D                 6443 	.byte 29	; Non-initial State, software only.
                           6444 
   083B 1D                 6445 	.byte 29	; Non-initial State, software only.
                           6446 
   083C 59                 6447 	.byte 89	; Non-initial State, software only.
   083D 1D                 6448 	.byte 29	; New LSB for software period.
                           6449 
   083E 19                 6450 	.byte 25	; Non-initial State, software only.
                           6451 
   083F 19                 6452 	.byte 25	; Non-initial State, software only.
                           6453 
   0840 59                 6454 	.byte 89	; Non-initial State, software only.
   0841 1C                 6455 	.byte 28	; New LSB for software period.
                           6456 
   0842 19                 6457 	.byte 25	; Non-initial State, software only.
                           6458 
   0843 19                 6459 	.byte 25	; Non-initial State, software only.
                           6460 
   0844 55                 6461 	.byte 85	; Non-initial State, software only.
   0845 1B                 6462 	.byte 27	; New LSB for software period.
                           6463 
   0846 15                 6464 	.byte 21	; Non-initial State, software only.
                           6465 
   0847 15                 6466 	.byte 21	; Non-initial State, software only.
                           6467 
   0848 55                 6468 	.byte 85	; Non-initial State, software only.
   0849 1C                 6469 	.byte 28	; New LSB for software period.
                           6470 
   084A 15                 6471 	.byte 21	; Non-initial State, software only.
                           6472 
   084B 15                 6473 	.byte 21	; Non-initial State, software only.
                           6474 
   084C 51                 6475 	.byte 81	; Non-initial State, software only.
   084D 1D                 6476 	.byte 29	; New LSB for software period.
                           6477 
   084E 11                 6478 	.byte 17	; Non-initial State, software only.
                           6479 
   084F 11                 6480 	.byte 17	; Non-initial State, software only.
                           6481 
   0850 51                 6482 	.byte 81	; Non-initial State, software only.
   0851 1C                 6483 	.byte 28	; New LSB for software period.
                           6484 
   0852 11                 6485 	.byte 17	; Non-initial State, software only.
                           6486 
   0853 11                 6487 	.byte 17	; Non-initial State, software only.
                           6488 
   0854 4D                 6489 	.byte 77	; Non-initial State, software only.
   0855 1B                 6490 	.byte 27	; New LSB for software period.
                           6491 
   0856 0D                 6492 	.byte 13	; Non-initial State, software only.
                           6493 
   0857 0D                 6494 	.byte 13	; Non-initial State, software only.
                           6495 
                           6496  .globl _Videopac_Subsong0_RegisterBlock_11_Loop
   0858                    6497 _Videopac_Subsong0_RegisterBlock_11_Loop:
   0858 4D                 6498 	.byte 77	; Non-initial State, software only.
   0859 1C                 6499 	.byte 28	; New LSB for software period.
                           6500 
   085A 08                 6501 	.byte 8	; Loop to index 42.
                           6502  .globl _Videopac_Subsong0DisarkPointerRegionStart952
   085B                    6503 _Videopac_Subsong0DisarkPointerRegionStart952:
   085B 08 58              6504 	.word _Videopac_Subsong0_RegisterBlock_11_Loop
                           6505  .globl Videopac_Subsong0DisarkPointerRegionEnd952
   085D                    6506 Videopac_Subsong0DisarkPointerRegionEnd952:
                           6507 
                           6508 
                           6509  .globl _Videopac_Subsong0_RegisterBlock_12
   085D                    6510 _Videopac_Subsong0_RegisterBlock_12:
   085D 39                 6511 	.byte 57	; Initial State: software only.
   085E BE 00              6512 	.byte 190, 0	; Software period.
                           6513 
   0860 1D                 6514 	.byte 29	; Non-initial State, software only.
                           6515 
   0861 1D                 6516 	.byte 29	; Non-initial State, software only.
                           6517 
   0862 21                 6518 	.byte 33	; Non-initial State, software only.
                           6519 
   0863 21                 6520 	.byte 33	; Non-initial State, software only.
                           6521 
   0864 21                 6522 	.byte 33	; Non-initial State, software only.
                           6523 
   0865 61                 6524 	.byte 97	; Non-initial State, software only.
   0866 BF                 6525 	.byte 191	; New LSB for software period.
                           6526 
   0867 21                 6527 	.byte 33	; Non-initial State, software only.
                           6528 
   0868 21                 6529 	.byte 33	; Non-initial State, software only.
                           6530 
   0869 61                 6531 	.byte 97	; Non-initial State, software only.
   086A BE                 6532 	.byte 190	; New LSB for software period.
                           6533 
   086B 21                 6534 	.byte 33	; Non-initial State, software only.
                           6535 
   086C 21                 6536 	.byte 33	; Non-initial State, software only.
                           6537 
   086D 1D                 6538 	.byte 29	; Non-initial State, software only.
                           6539 
   086E 1D                 6540 	.byte 29	; Non-initial State, software only.
                           6541 
   086F 1D                 6542 	.byte 29	; Non-initial State, software only.
                           6543 
   0870 5D                 6544 	.byte 93	; Non-initial State, software only.
   0871 BD                 6545 	.byte 189	; New LSB for software period.
                           6546 
   0872 1D                 6547 	.byte 29	; Non-initial State, software only.
                           6548 
   0873 1D                 6549 	.byte 29	; Non-initial State, software only.
                           6550 
   0874 5D                 6551 	.byte 93	; Non-initial State, software only.
   0875 BE                 6552 	.byte 190	; New LSB for software period.
                           6553 
   0876 1D                 6554 	.byte 29	; Non-initial State, software only.
                           6555 
   0877 1D                 6556 	.byte 29	; Non-initial State, software only.
                           6557 
   0878 59                 6558 	.byte 89	; Non-initial State, software only.
   0879 BF                 6559 	.byte 191	; New LSB for software period.
                           6560 
   087A 19                 6561 	.byte 25	; Non-initial State, software only.
                           6562 
   087B 19                 6563 	.byte 25	; Non-initial State, software only.
                           6564 
   087C 59                 6565 	.byte 89	; Non-initial State, software only.
   087D BE                 6566 	.byte 190	; New LSB for software period.
                           6567 
   087E 19                 6568 	.byte 25	; Non-initial State, software only.
                           6569 
   087F 19                 6570 	.byte 25	; Non-initial State, software only.
                           6571 
   0880 55                 6572 	.byte 85	; Non-initial State, software only.
   0881 BD                 6573 	.byte 189	; New LSB for software period.
                           6574 
   0882 15                 6575 	.byte 21	; Non-initial State, software only.
                           6576 
   0883 15                 6577 	.byte 21	; Non-initial State, software only.
                           6578 
   0884 55                 6579 	.byte 85	; Non-initial State, software only.
   0885 BE                 6580 	.byte 190	; New LSB for software period.
                           6581 
   0886 15                 6582 	.byte 21	; Non-initial State, software only.
                           6583 
   0887 15                 6584 	.byte 21	; Non-initial State, software only.
                           6585 
   0888 51                 6586 	.byte 81	; Non-initial State, software only.
   0889 BF                 6587 	.byte 191	; New LSB for software period.
                           6588 
   088A 11                 6589 	.byte 17	; Non-initial State, software only.
                           6590 
   088B 11                 6591 	.byte 17	; Non-initial State, software only.
                           6592 
   088C 51                 6593 	.byte 81	; Non-initial State, software only.
   088D BE                 6594 	.byte 190	; New LSB for software period.
                           6595 
   088E 11                 6596 	.byte 17	; Non-initial State, software only.
                           6597 
   088F 11                 6598 	.byte 17	; Non-initial State, software only.
                           6599 
   0890 4D                 6600 	.byte 77	; Non-initial State, software only.
   0891 BD                 6601 	.byte 189	; New LSB for software period.
                           6602 
   0892 0D                 6603 	.byte 13	; Non-initial State, software only.
                           6604 
   0893 0D                 6605 	.byte 13	; Non-initial State, software only.
                           6606 
                           6607  .globl _Videopac_Subsong0_RegisterBlock_12_Loop
   0894                    6608 _Videopac_Subsong0_RegisterBlock_12_Loop:
   0894 4D                 6609 	.byte 77	; Non-initial State, software only.
   0895 BE                 6610 	.byte 190	; New LSB for software period.
                           6611 
   0896 08                 6612 	.byte 8	; Loop to index 42.
                           6613  .globl _Videopac_Subsong0DisarkPointerRegionStart953
   0897                    6614 _Videopac_Subsong0DisarkPointerRegionStart953:
   0897 08 94              6615 	.word _Videopac_Subsong0_RegisterBlock_12_Loop
                           6616  .globl Videopac_Subsong0DisarkPointerRegionEnd953
   0899                    6617 Videopac_Subsong0DisarkPointerRegionEnd953:
                           6618 
                           6619 
                           6620  .globl _Videopac_Subsong0_RegisterBlock_13
   0899                    6621 _Videopac_Subsong0_RegisterBlock_13:
   0899 39                 6622 	.byte 57	; Initial State: software only.
   089A 3F 01              6623 	.byte 63, 1	; Software period.
                           6624 
   089C 1D                 6625 	.byte 29	; Non-initial State, software only.
                           6626 
   089D 1D                 6627 	.byte 29	; Non-initial State, software only.
                           6628 
   089E 21                 6629 	.byte 33	; Non-initial State, software only.
                           6630 
   089F 21                 6631 	.byte 33	; Non-initial State, software only.
                           6632 
   08A0 21                 6633 	.byte 33	; Non-initial State, software only.
                           6634 
   08A1 61                 6635 	.byte 97	; Non-initial State, software only.
   08A2 40                 6636 	.byte 64	; New LSB for software period.
                           6637 
   08A3 21                 6638 	.byte 33	; Non-initial State, software only.
                           6639 
   08A4 21                 6640 	.byte 33	; Non-initial State, software only.
                           6641 
   08A5 61                 6642 	.byte 97	; Non-initial State, software only.
   08A6 3F                 6643 	.byte 63	; New LSB for software period.
                           6644 
   08A7 21                 6645 	.byte 33	; Non-initial State, software only.
                           6646 
   08A8 21                 6647 	.byte 33	; Non-initial State, software only.
                           6648 
   08A9 1D                 6649 	.byte 29	; Non-initial State, software only.
                           6650 
   08AA 1D                 6651 	.byte 29	; Non-initial State, software only.
                           6652 
   08AB 1D                 6653 	.byte 29	; Non-initial State, software only.
                           6654 
   08AC 5D                 6655 	.byte 93	; Non-initial State, software only.
   08AD 3E                 6656 	.byte 62	; New LSB for software period.
                           6657 
   08AE 1D                 6658 	.byte 29	; Non-initial State, software only.
                           6659 
   08AF 1D                 6660 	.byte 29	; Non-initial State, software only.
                           6661 
   08B0 5D                 6662 	.byte 93	; Non-initial State, software only.
   08B1 3F                 6663 	.byte 63	; New LSB for software period.
                           6664 
   08B2 1D                 6665 	.byte 29	; Non-initial State, software only.
                           6666 
   08B3 1D                 6667 	.byte 29	; Non-initial State, software only.
                           6668 
   08B4 59                 6669 	.byte 89	; Non-initial State, software only.
   08B5 40                 6670 	.byte 64	; New LSB for software period.
                           6671 
   08B6 19                 6672 	.byte 25	; Non-initial State, software only.
                           6673 
   08B7 19                 6674 	.byte 25	; Non-initial State, software only.
                           6675 
   08B8 59                 6676 	.byte 89	; Non-initial State, software only.
   08B9 3F                 6677 	.byte 63	; New LSB for software period.
                           6678 
   08BA 19                 6679 	.byte 25	; Non-initial State, software only.
                           6680 
   08BB 19                 6681 	.byte 25	; Non-initial State, software only.
                           6682 
   08BC 55                 6683 	.byte 85	; Non-initial State, software only.
   08BD 3E                 6684 	.byte 62	; New LSB for software period.
                           6685 
   08BE 15                 6686 	.byte 21	; Non-initial State, software only.
                           6687 
   08BF 15                 6688 	.byte 21	; Non-initial State, software only.
                           6689 
   08C0 55                 6690 	.byte 85	; Non-initial State, software only.
   08C1 3F                 6691 	.byte 63	; New LSB for software period.
                           6692 
   08C2 15                 6693 	.byte 21	; Non-initial State, software only.
                           6694 
   08C3 15                 6695 	.byte 21	; Non-initial State, software only.
                           6696 
   08C4 51                 6697 	.byte 81	; Non-initial State, software only.
   08C5 40                 6698 	.byte 64	; New LSB for software period.
                           6699 
   08C6 11                 6700 	.byte 17	; Non-initial State, software only.
                           6701 
   08C7 11                 6702 	.byte 17	; Non-initial State, software only.
                           6703 
   08C8 51                 6704 	.byte 81	; Non-initial State, software only.
   08C9 3F                 6705 	.byte 63	; New LSB for software period.
                           6706 
   08CA 11                 6707 	.byte 17	; Non-initial State, software only.
                           6708 
   08CB 11                 6709 	.byte 17	; Non-initial State, software only.
                           6710 
   08CC 4D                 6711 	.byte 77	; Non-initial State, software only.
   08CD 3E                 6712 	.byte 62	; New LSB for software period.
                           6713 
   08CE 0D                 6714 	.byte 13	; Non-initial State, software only.
                           6715 
   08CF 0D                 6716 	.byte 13	; Non-initial State, software only.
                           6717 
                           6718  .globl _Videopac_Subsong0_RegisterBlock_13_Loop
   08D0                    6719 _Videopac_Subsong0_RegisterBlock_13_Loop:
   08D0 4D                 6720 	.byte 77	; Non-initial State, software only.
   08D1 3F                 6721 	.byte 63	; New LSB for software period.
                           6722 
   08D2 08                 6723 	.byte 8	; Loop to index 42.
                           6724  .globl _Videopac_Subsong0DisarkPointerRegionStart954
   08D3                    6725 _Videopac_Subsong0DisarkPointerRegionStart954:
   08D3 08 D0              6726 	.word _Videopac_Subsong0_RegisterBlock_13_Loop
                           6727  .globl Videopac_Subsong0DisarkPointerRegionEnd954
   08D5                    6728 Videopac_Subsong0DisarkPointerRegionEnd954:
                           6729 
                           6730 
                           6731  .globl _Videopac_Subsong0_RegisterBlock_15
   08D5                    6732 _Videopac_Subsong0_RegisterBlock_15:
   08D5 39                 6733 	.byte 57	; Initial State: software only.
   08D6 52 01              6734 	.byte 82, 1	; Software period.
                           6735 
   08D8 1D                 6736 	.byte 29	; Non-initial State, software only.
                           6737 
   08D9 1D                 6738 	.byte 29	; Non-initial State, software only.
                           6739 
   08DA 21                 6740 	.byte 33	; Non-initial State, software only.
                           6741 
   08DB 21                 6742 	.byte 33	; Non-initial State, software only.
                           6743 
   08DC 21                 6744 	.byte 33	; Non-initial State, software only.
                           6745 
   08DD 61                 6746 	.byte 97	; Non-initial State, software only.
   08DE 53                 6747 	.byte 83	; New LSB for software period.
                           6748 
   08DF 21                 6749 	.byte 33	; Non-initial State, software only.
                           6750 
   08E0 21                 6751 	.byte 33	; Non-initial State, software only.
                           6752 
   08E1 61                 6753 	.byte 97	; Non-initial State, software only.
   08E2 52                 6754 	.byte 82	; New LSB for software period.
                           6755 
   08E3 21                 6756 	.byte 33	; Non-initial State, software only.
                           6757 
   08E4 21                 6758 	.byte 33	; Non-initial State, software only.
                           6759 
   08E5 1D                 6760 	.byte 29	; Non-initial State, software only.
                           6761 
   08E6 1D                 6762 	.byte 29	; Non-initial State, software only.
                           6763 
   08E7 1D                 6764 	.byte 29	; Non-initial State, software only.
                           6765 
   08E8 5D                 6766 	.byte 93	; Non-initial State, software only.
   08E9 51                 6767 	.byte 81	; New LSB for software period.
                           6768 
   08EA 1D                 6769 	.byte 29	; Non-initial State, software only.
                           6770 
   08EB 1D                 6771 	.byte 29	; Non-initial State, software only.
                           6772 
   08EC 5D                 6773 	.byte 93	; Non-initial State, software only.
   08ED 52                 6774 	.byte 82	; New LSB for software period.
                           6775 
   08EE 1D                 6776 	.byte 29	; Non-initial State, software only.
                           6777 
   08EF 1D                 6778 	.byte 29	; Non-initial State, software only.
                           6779 
   08F0 59                 6780 	.byte 89	; Non-initial State, software only.
   08F1 53                 6781 	.byte 83	; New LSB for software period.
                           6782 
   08F2 19                 6783 	.byte 25	; Non-initial State, software only.
                           6784 
   08F3 19                 6785 	.byte 25	; Non-initial State, software only.
                           6786 
   08F4 59                 6787 	.byte 89	; Non-initial State, software only.
   08F5 52                 6788 	.byte 82	; New LSB for software period.
                           6789 
   08F6 19                 6790 	.byte 25	; Non-initial State, software only.
                           6791 
   08F7 19                 6792 	.byte 25	; Non-initial State, software only.
                           6793 
   08F8 55                 6794 	.byte 85	; Non-initial State, software only.
   08F9 51                 6795 	.byte 81	; New LSB for software period.
                           6796 
   08FA 15                 6797 	.byte 21	; Non-initial State, software only.
                           6798 
   08FB 15                 6799 	.byte 21	; Non-initial State, software only.
                           6800 
   08FC 55                 6801 	.byte 85	; Non-initial State, software only.
   08FD 52                 6802 	.byte 82	; New LSB for software period.
                           6803 
   08FE 15                 6804 	.byte 21	; Non-initial State, software only.
                           6805 
   08FF 15                 6806 	.byte 21	; Non-initial State, software only.
                           6807 
   0900 51                 6808 	.byte 81	; Non-initial State, software only.
   0901 53                 6809 	.byte 83	; New LSB for software period.
                           6810 
   0902 11                 6811 	.byte 17	; Non-initial State, software only.
                           6812 
   0903 11                 6813 	.byte 17	; Non-initial State, software only.
                           6814 
   0904 51                 6815 	.byte 81	; Non-initial State, software only.
   0905 52                 6816 	.byte 82	; New LSB for software period.
                           6817 
   0906 11                 6818 	.byte 17	; Non-initial State, software only.
                           6819 
   0907 11                 6820 	.byte 17	; Non-initial State, software only.
                           6821 
   0908 4D                 6822 	.byte 77	; Non-initial State, software only.
   0909 51                 6823 	.byte 81	; New LSB for software period.
                           6824 
   090A 0D                 6825 	.byte 13	; Non-initial State, software only.
                           6826 
   090B 0D                 6827 	.byte 13	; Non-initial State, software only.
                           6828 
                           6829  .globl _Videopac_Subsong0_RegisterBlock_15_Loop
   090C                    6830 _Videopac_Subsong0_RegisterBlock_15_Loop:
   090C 4D                 6831 	.byte 77	; Non-initial State, software only.
   090D 52                 6832 	.byte 82	; New LSB for software period.
                           6833 
   090E 08                 6834 	.byte 8	; Loop to index 42.
                           6835  .globl _Videopac_Subsong0DisarkPointerRegionStart955
   090F                    6836 _Videopac_Subsong0DisarkPointerRegionStart955:
   090F 09 0C              6837 	.word _Videopac_Subsong0_RegisterBlock_15_Loop
                           6838  .globl Videopac_Subsong0DisarkPointerRegionEnd955
   0911                    6839 Videopac_Subsong0DisarkPointerRegionEnd955:
                           6840 
                           6841 
                           6842  .globl _Videopac_Subsong0_RegisterBlock_17
   0911                    6843 _Videopac_Subsong0_RegisterBlock_17:
   0911 39                 6844 	.byte 57	; Initial State: software only.
   0912 66 01              6845 	.byte 102, 1	; Software period.
                           6846 
   0914 1D                 6847 	.byte 29	; Non-initial State, software only.
                           6848 
   0915 1D                 6849 	.byte 29	; Non-initial State, software only.
                           6850 
   0916 21                 6851 	.byte 33	; Non-initial State, software only.
                           6852 
   0917 21                 6853 	.byte 33	; Non-initial State, software only.
                           6854 
   0918 21                 6855 	.byte 33	; Non-initial State, software only.
                           6856 
   0919 61                 6857 	.byte 97	; Non-initial State, software only.
   091A 67                 6858 	.byte 103	; New LSB for software period.
                           6859 
   091B 21                 6860 	.byte 33	; Non-initial State, software only.
                           6861 
   091C 21                 6862 	.byte 33	; Non-initial State, software only.
                           6863 
   091D 61                 6864 	.byte 97	; Non-initial State, software only.
   091E 66                 6865 	.byte 102	; New LSB for software period.
                           6866 
   091F 21                 6867 	.byte 33	; Non-initial State, software only.
                           6868 
   0920 21                 6869 	.byte 33	; Non-initial State, software only.
                           6870 
   0921 1D                 6871 	.byte 29	; Non-initial State, software only.
                           6872 
   0922 1D                 6873 	.byte 29	; Non-initial State, software only.
                           6874 
   0923 1D                 6875 	.byte 29	; Non-initial State, software only.
                           6876 
   0924 5D                 6877 	.byte 93	; Non-initial State, software only.
   0925 65                 6878 	.byte 101	; New LSB for software period.
                           6879 
   0926 1D                 6880 	.byte 29	; Non-initial State, software only.
                           6881 
   0927 1D                 6882 	.byte 29	; Non-initial State, software only.
                           6883 
   0928 5D                 6884 	.byte 93	; Non-initial State, software only.
   0929 66                 6885 	.byte 102	; New LSB for software period.
                           6886 
   092A 1D                 6887 	.byte 29	; Non-initial State, software only.
                           6888 
   092B 1D                 6889 	.byte 29	; Non-initial State, software only.
                           6890 
   092C 59                 6891 	.byte 89	; Non-initial State, software only.
   092D 67                 6892 	.byte 103	; New LSB for software period.
                           6893 
   092E 19                 6894 	.byte 25	; Non-initial State, software only.
                           6895 
   092F 19                 6896 	.byte 25	; Non-initial State, software only.
                           6897 
   0930 59                 6898 	.byte 89	; Non-initial State, software only.
   0931 66                 6899 	.byte 102	; New LSB for software period.
                           6900 
   0932 19                 6901 	.byte 25	; Non-initial State, software only.
                           6902 
   0933 19                 6903 	.byte 25	; Non-initial State, software only.
                           6904 
   0934 55                 6905 	.byte 85	; Non-initial State, software only.
   0935 65                 6906 	.byte 101	; New LSB for software period.
                           6907 
   0936 15                 6908 	.byte 21	; Non-initial State, software only.
                           6909 
   0937 15                 6910 	.byte 21	; Non-initial State, software only.
                           6911 
   0938 55                 6912 	.byte 85	; Non-initial State, software only.
   0939 66                 6913 	.byte 102	; New LSB for software period.
                           6914 
   093A 15                 6915 	.byte 21	; Non-initial State, software only.
                           6916 
   093B 15                 6917 	.byte 21	; Non-initial State, software only.
                           6918 
   093C 51                 6919 	.byte 81	; Non-initial State, software only.
   093D 67                 6920 	.byte 103	; New LSB for software period.
                           6921 
   093E 11                 6922 	.byte 17	; Non-initial State, software only.
                           6923 
   093F 11                 6924 	.byte 17	; Non-initial State, software only.
                           6925 
   0940 51                 6926 	.byte 81	; Non-initial State, software only.
   0941 66                 6927 	.byte 102	; New LSB for software period.
                           6928 
   0942 11                 6929 	.byte 17	; Non-initial State, software only.
                           6930 
   0943 11                 6931 	.byte 17	; Non-initial State, software only.
                           6932 
   0944 4D                 6933 	.byte 77	; Non-initial State, software only.
   0945 65                 6934 	.byte 101	; New LSB for software period.
                           6935 
   0946 0D                 6936 	.byte 13	; Non-initial State, software only.
                           6937 
   0947 0D                 6938 	.byte 13	; Non-initial State, software only.
                           6939 
                           6940  .globl _Videopac_Subsong0_RegisterBlock_17_Loop
   0948                    6941 _Videopac_Subsong0_RegisterBlock_17_Loop:
   0948 4D                 6942 	.byte 77	; Non-initial State, software only.
   0949 66                 6943 	.byte 102	; New LSB for software period.
                           6944 
   094A 08                 6945 	.byte 8	; Loop to index 42.
                           6946  .globl _Videopac_Subsong0DisarkPointerRegionStart956
   094B                    6947 _Videopac_Subsong0DisarkPointerRegionStart956:
   094B 09 48              6948 	.word _Videopac_Subsong0_RegisterBlock_17_Loop
                           6949  .globl Videopac_Subsong0DisarkPointerRegionEnd956
   094D                    6950 Videopac_Subsong0DisarkPointerRegionEnd956:
                           6951 
                           6952 
                           6953  .globl _Videopac_Subsong0_RegisterBlock_21
   094D                    6954 _Videopac_Subsong0_RegisterBlock_21:
   094D 19                 6955 	.byte 25	; Initial State: software only.
   094E 1C 01              6956 	.byte 28, 1	; Software period.
                           6957 
   0950 0D                 6958 	.byte 13	; Non-initial State, software only.
                           6959 
   0951 0D                 6960 	.byte 13	; Non-initial State, software only.
                           6961 
   0952 11                 6962 	.byte 17	; Non-initial State, software only.
                           6963 
   0953 11                 6964 	.byte 17	; Non-initial State, software only.
                           6965 
   0954 11                 6966 	.byte 17	; Non-initial State, software only.
                           6967 
   0955 51                 6968 	.byte 81	; Non-initial State, software only.
   0956 1D                 6969 	.byte 29	; New LSB for software period.
                           6970 
   0957 11                 6971 	.byte 17	; Non-initial State, software only.
                           6972 
   0958 11                 6973 	.byte 17	; Non-initial State, software only.
                           6974 
   0959 51                 6975 	.byte 81	; Non-initial State, software only.
   095A 1C                 6976 	.byte 28	; New LSB for software period.
                           6977 
   095B 11                 6978 	.byte 17	; Non-initial State, software only.
                           6979 
   095C 11                 6980 	.byte 17	; Non-initial State, software only.
                           6981 
   095D 0D                 6982 	.byte 13	; Non-initial State, software only.
                           6983 
   095E 0D                 6984 	.byte 13	; Non-initial State, software only.
                           6985 
   095F 0D                 6986 	.byte 13	; Non-initial State, software only.
                           6987 
   0960 4D                 6988 	.byte 77	; Non-initial State, software only.
   0961 1B                 6989 	.byte 27	; New LSB for software period.
                           6990 
   0962 0D                 6991 	.byte 13	; Non-initial State, software only.
                           6992 
   0963 0D                 6993 	.byte 13	; Non-initial State, software only.
                           6994 
   0964 4D                 6995 	.byte 77	; Non-initial State, software only.
   0965 1C                 6996 	.byte 28	; New LSB for software period.
                           6997 
   0966 0D                 6998 	.byte 13	; Non-initial State, software only.
                           6999 
   0967 0D                 7000 	.byte 13	; Non-initial State, software only.
                           7001 
   0968 49                 7002 	.byte 73	; Non-initial State, software only.
   0969 1D                 7003 	.byte 29	; New LSB for software period.
                           7004 
   096A 09                 7005 	.byte 9	; Non-initial State, software only.
                           7006 
   096B 09                 7007 	.byte 9	; Non-initial State, software only.
                           7008 
   096C 49                 7009 	.byte 73	; Non-initial State, software only.
   096D 1C                 7010 	.byte 28	; New LSB for software period.
                           7011 
   096E 09                 7012 	.byte 9	; Non-initial State, software only.
                           7013 
   096F 09                 7014 	.byte 9	; Non-initial State, software only.
                           7015 
   0970 45                 7016 	.byte 69	; Non-initial State, software only.
   0971 1B                 7017 	.byte 27	; New LSB for software period.
                           7018 
   0972 05                 7019 	.byte 5	; Non-initial State, software only.
                           7020 
   0973 05                 7021 	.byte 5	; Non-initial State, software only.
                           7022 
   0974 45                 7023 	.byte 69	; Non-initial State, software only.
   0975 1C                 7024 	.byte 28	; New LSB for software period.
                           7025 
   0976 05                 7026 	.byte 5	; Non-initial State, software only.
                           7027 
   0977 05                 7028 	.byte 5	; Non-initial State, software only.
                           7029 
   0978 08                 7030 	.byte 8
                           7031  .globl _Videopac_Subsong0DisarkPointerRegionStart957
   0979                    7032 _Videopac_Subsong0DisarkPointerRegionStart957:
   0979 07 20              7033 	.word _Videopac_Subsong0_RegisterBlock_1 + 43	; Optimization: goto common Block at index 33.
                           7034  .globl Videopac_Subsong0DisarkPointerRegionEnd957
   097B                    7035 Videopac_Subsong0DisarkPointerRegionEnd957:
                           7036 
                           7037  .globl _Videopac_Subsong0_RegisterBlock_22
   097B                    7038 _Videopac_Subsong0_RegisterBlock_22:
   097B 19                 7039 	.byte 25	; Initial State: software only.
   097C BE 00              7040 	.byte 190, 0	; Software period.
                           7041 
   097E 0D                 7042 	.byte 13	; Non-initial State, software only.
                           7043 
   097F 0D                 7044 	.byte 13	; Non-initial State, software only.
                           7045 
   0980 11                 7046 	.byte 17	; Non-initial State, software only.
                           7047 
   0981 11                 7048 	.byte 17	; Non-initial State, software only.
                           7049 
   0982 11                 7050 	.byte 17	; Non-initial State, software only.
                           7051 
   0983 51                 7052 	.byte 81	; Non-initial State, software only.
   0984 BF                 7053 	.byte 191	; New LSB for software period.
                           7054 
   0985 11                 7055 	.byte 17	; Non-initial State, software only.
                           7056 
   0986 11                 7057 	.byte 17	; Non-initial State, software only.
                           7058 
   0987 51                 7059 	.byte 81	; Non-initial State, software only.
   0988 BE                 7060 	.byte 190	; New LSB for software period.
                           7061 
   0989 11                 7062 	.byte 17	; Non-initial State, software only.
                           7063 
   098A 11                 7064 	.byte 17	; Non-initial State, software only.
                           7065 
   098B 0D                 7066 	.byte 13	; Non-initial State, software only.
                           7067 
   098C 0D                 7068 	.byte 13	; Non-initial State, software only.
                           7069 
   098D 0D                 7070 	.byte 13	; Non-initial State, software only.
                           7071 
   098E 4D                 7072 	.byte 77	; Non-initial State, software only.
   098F BD                 7073 	.byte 189	; New LSB for software period.
                           7074 
   0990 0D                 7075 	.byte 13	; Non-initial State, software only.
                           7076 
   0991 0D                 7077 	.byte 13	; Non-initial State, software only.
                           7078 
   0992 4D                 7079 	.byte 77	; Non-initial State, software only.
   0993 BE                 7080 	.byte 190	; New LSB for software period.
                           7081 
   0994 0D                 7082 	.byte 13	; Non-initial State, software only.
                           7083 
   0995 0D                 7084 	.byte 13	; Non-initial State, software only.
                           7085 
   0996 49                 7086 	.byte 73	; Non-initial State, software only.
   0997 BF                 7087 	.byte 191	; New LSB for software period.
                           7088 
   0998 09                 7089 	.byte 9	; Non-initial State, software only.
                           7090 
   0999 09                 7091 	.byte 9	; Non-initial State, software only.
                           7092 
   099A 49                 7093 	.byte 73	; Non-initial State, software only.
   099B BE                 7094 	.byte 190	; New LSB for software period.
                           7095 
   099C 09                 7096 	.byte 9	; Non-initial State, software only.
                           7097 
   099D 09                 7098 	.byte 9	; Non-initial State, software only.
                           7099 
   099E 45                 7100 	.byte 69	; Non-initial State, software only.
   099F BD                 7101 	.byte 189	; New LSB for software period.
                           7102 
   09A0 05                 7103 	.byte 5	; Non-initial State, software only.
                           7104 
   09A1 05                 7105 	.byte 5	; Non-initial State, software only.
                           7106 
   09A2 45                 7107 	.byte 69	; Non-initial State, software only.
   09A3 BE                 7108 	.byte 190	; New LSB for software period.
                           7109 
   09A4 05                 7110 	.byte 5	; Non-initial State, software only.
                           7111 
   09A5 05                 7112 	.byte 5	; Non-initial State, software only.
                           7113 
   09A6 08                 7114 	.byte 8
                           7115  .globl _Videopac_Subsong0DisarkPointerRegionStart958
   09A7                    7116 _Videopac_Subsong0DisarkPointerRegionStart958:
   09A7 07 5C              7117 	.word _Videopac_Subsong0_RegisterBlock_2 + 43	; Optimization: goto common Block at index 33.
                           7118  .globl Videopac_Subsong0DisarkPointerRegionEnd958
   09A9                    7119 Videopac_Subsong0DisarkPointerRegionEnd958:
                           7120 
                           7121  .globl _Videopac_Subsong0_RegisterBlock_23
   09A9                    7122 _Videopac_Subsong0_RegisterBlock_23:
   09A9 19                 7123 	.byte 25	; Initial State: software only.
   09AA 3F 01              7124 	.byte 63, 1	; Software period.
                           7125 
   09AC 0D                 7126 	.byte 13	; Non-initial State, software only.
                           7127 
   09AD 0D                 7128 	.byte 13	; Non-initial State, software only.
                           7129 
   09AE 11                 7130 	.byte 17	; Non-initial State, software only.
                           7131 
   09AF 11                 7132 	.byte 17	; Non-initial State, software only.
                           7133 
   09B0 11                 7134 	.byte 17	; Non-initial State, software only.
                           7135 
   09B1 51                 7136 	.byte 81	; Non-initial State, software only.
   09B2 40                 7137 	.byte 64	; New LSB for software period.
                           7138 
   09B3 11                 7139 	.byte 17	; Non-initial State, software only.
                           7140 
   09B4 11                 7141 	.byte 17	; Non-initial State, software only.
                           7142 
   09B5 51                 7143 	.byte 81	; Non-initial State, software only.
   09B6 3F                 7144 	.byte 63	; New LSB for software period.
                           7145 
   09B7 11                 7146 	.byte 17	; Non-initial State, software only.
                           7147 
   09B8 11                 7148 	.byte 17	; Non-initial State, software only.
                           7149 
   09B9 0D                 7150 	.byte 13	; Non-initial State, software only.
                           7151 
   09BA 0D                 7152 	.byte 13	; Non-initial State, software only.
                           7153 
   09BB 0D                 7154 	.byte 13	; Non-initial State, software only.
                           7155 
   09BC 4D                 7156 	.byte 77	; Non-initial State, software only.
   09BD 3E                 7157 	.byte 62	; New LSB for software period.
                           7158 
   09BE 0D                 7159 	.byte 13	; Non-initial State, software only.
                           7160 
   09BF 0D                 7161 	.byte 13	; Non-initial State, software only.
                           7162 
   09C0 4D                 7163 	.byte 77	; Non-initial State, software only.
   09C1 3F                 7164 	.byte 63	; New LSB for software period.
                           7165 
   09C2 0D                 7166 	.byte 13	; Non-initial State, software only.
                           7167 
   09C3 0D                 7168 	.byte 13	; Non-initial State, software only.
                           7169 
   09C4 49                 7170 	.byte 73	; Non-initial State, software only.
   09C5 40                 7171 	.byte 64	; New LSB for software period.
                           7172 
   09C6 09                 7173 	.byte 9	; Non-initial State, software only.
                           7174 
   09C7 09                 7175 	.byte 9	; Non-initial State, software only.
                           7176 
   09C8 49                 7177 	.byte 73	; Non-initial State, software only.
   09C9 3F                 7178 	.byte 63	; New LSB for software period.
                           7179 
   09CA 09                 7180 	.byte 9	; Non-initial State, software only.
                           7181 
   09CB 09                 7182 	.byte 9	; Non-initial State, software only.
                           7183 
   09CC 45                 7184 	.byte 69	; Non-initial State, software only.
   09CD 3E                 7185 	.byte 62	; New LSB for software period.
                           7186 
   09CE 05                 7187 	.byte 5	; Non-initial State, software only.
                           7188 
   09CF 05                 7189 	.byte 5	; Non-initial State, software only.
                           7190 
   09D0 45                 7191 	.byte 69	; Non-initial State, software only.
   09D1 3F                 7192 	.byte 63	; New LSB for software period.
                           7193 
   09D2 05                 7194 	.byte 5	; Non-initial State, software only.
                           7195 
   09D3 05                 7196 	.byte 5	; Non-initial State, software only.
                           7197 
   09D4 08                 7198 	.byte 8
                           7199  .globl _Videopac_Subsong0DisarkPointerRegionStart959
   09D5                    7200 _Videopac_Subsong0DisarkPointerRegionStart959:
   09D5 07 98              7201 	.word _Videopac_Subsong0_RegisterBlock_3 + 43	; Optimization: goto common Block at index 33.
                           7202  .globl Videopac_Subsong0DisarkPointerRegionEnd959
   09D7                    7203 Videopac_Subsong0DisarkPointerRegionEnd959:
                           7204 
                           7205  .globl _Videopac_Subsong0_RegisterBlock_25
   09D7                    7206 _Videopac_Subsong0_RegisterBlock_25:
   09D7 19                 7207 	.byte 25	; Initial State: software only.
   09D8 52 01              7208 	.byte 82, 1	; Software period.
                           7209 
   09DA 0D                 7210 	.byte 13	; Non-initial State, software only.
                           7211 
   09DB 0D                 7212 	.byte 13	; Non-initial State, software only.
                           7213 
   09DC 11                 7214 	.byte 17	; Non-initial State, software only.
                           7215 
   09DD 11                 7216 	.byte 17	; Non-initial State, software only.
                           7217 
   09DE 11                 7218 	.byte 17	; Non-initial State, software only.
                           7219 
   09DF 51                 7220 	.byte 81	; Non-initial State, software only.
   09E0 53                 7221 	.byte 83	; New LSB for software period.
                           7222 
   09E1 11                 7223 	.byte 17	; Non-initial State, software only.
                           7224 
   09E2 11                 7225 	.byte 17	; Non-initial State, software only.
                           7226 
   09E3 51                 7227 	.byte 81	; Non-initial State, software only.
   09E4 52                 7228 	.byte 82	; New LSB for software period.
                           7229 
   09E5 11                 7230 	.byte 17	; Non-initial State, software only.
                           7231 
   09E6 11                 7232 	.byte 17	; Non-initial State, software only.
                           7233 
   09E7 0D                 7234 	.byte 13	; Non-initial State, software only.
                           7235 
   09E8 0D                 7236 	.byte 13	; Non-initial State, software only.
                           7237 
   09E9 0D                 7238 	.byte 13	; Non-initial State, software only.
                           7239 
   09EA 4D                 7240 	.byte 77	; Non-initial State, software only.
   09EB 51                 7241 	.byte 81	; New LSB for software period.
                           7242 
   09EC 0D                 7243 	.byte 13	; Non-initial State, software only.
                           7244 
   09ED 0D                 7245 	.byte 13	; Non-initial State, software only.
                           7246 
   09EE 4D                 7247 	.byte 77	; Non-initial State, software only.
   09EF 52                 7248 	.byte 82	; New LSB for software period.
                           7249 
   09F0 0D                 7250 	.byte 13	; Non-initial State, software only.
                           7251 
   09F1 0D                 7252 	.byte 13	; Non-initial State, software only.
                           7253 
   09F2 49                 7254 	.byte 73	; Non-initial State, software only.
   09F3 53                 7255 	.byte 83	; New LSB for software period.
                           7256 
   09F4 09                 7257 	.byte 9	; Non-initial State, software only.
                           7258 
   09F5 09                 7259 	.byte 9	; Non-initial State, software only.
                           7260 
   09F6 49                 7261 	.byte 73	; Non-initial State, software only.
   09F7 52                 7262 	.byte 82	; New LSB for software period.
                           7263 
   09F8 09                 7264 	.byte 9	; Non-initial State, software only.
                           7265 
   09F9 09                 7266 	.byte 9	; Non-initial State, software only.
                           7267 
   09FA 45                 7268 	.byte 69	; Non-initial State, software only.
   09FB 51                 7269 	.byte 81	; New LSB for software period.
                           7270 
   09FC 05                 7271 	.byte 5	; Non-initial State, software only.
                           7272 
   09FD 05                 7273 	.byte 5	; Non-initial State, software only.
                           7274 
   09FE 45                 7275 	.byte 69	; Non-initial State, software only.
   09FF 52                 7276 	.byte 82	; New LSB for software period.
                           7277 
   0A00 05                 7278 	.byte 5	; Non-initial State, software only.
                           7279 
   0A01 05                 7280 	.byte 5	; Non-initial State, software only.
                           7281 
   0A02 08                 7282 	.byte 8
                           7283  .globl _Videopac_Subsong0DisarkPointerRegionStart960
   0A03                    7284 _Videopac_Subsong0DisarkPointerRegionStart960:
   0A03 07 D4              7285 	.word _Videopac_Subsong0_RegisterBlock_5 + 43	; Optimization: goto common Block at index 33.
                           7286  .globl Videopac_Subsong0DisarkPointerRegionEnd960
   0A05                    7287 Videopac_Subsong0DisarkPointerRegionEnd960:
                           7288 
                           7289  .globl _Videopac_Subsong0_RegisterBlock_80
   0A05                    7290 _Videopac_Subsong0_RegisterBlock_80:
   0A05 19                 7291 	.byte 25	; Initial State: software only.
   0A06 D5 00              7292 	.byte 213, 0	; Software period.
                           7293 
   0A08 0D                 7294 	.byte 13	; Non-initial State, software only.
                           7295 
   0A09 0D                 7296 	.byte 13	; Non-initial State, software only.
                           7297 
   0A0A 11                 7298 	.byte 17	; Non-initial State, software only.
                           7299 
   0A0B 11                 7300 	.byte 17	; Non-initial State, software only.
                           7301 
   0A0C 11                 7302 	.byte 17	; Non-initial State, software only.
                           7303 
   0A0D 51                 7304 	.byte 81	; Non-initial State, software only.
   0A0E D6                 7305 	.byte 214	; New LSB for software period.
                           7306 
   0A0F 11                 7307 	.byte 17	; Non-initial State, software only.
                           7308 
   0A10 11                 7309 	.byte 17	; Non-initial State, software only.
                           7310 
   0A11 51                 7311 	.byte 81	; Non-initial State, software only.
   0A12 D5                 7312 	.byte 213	; New LSB for software period.
                           7313 
   0A13 11                 7314 	.byte 17	; Non-initial State, software only.
                           7315 
   0A14 11                 7316 	.byte 17	; Non-initial State, software only.
                           7317 
   0A15 0D                 7318 	.byte 13	; Non-initial State, software only.
                           7319 
   0A16 0D                 7320 	.byte 13	; Non-initial State, software only.
                           7321 
   0A17 0D                 7322 	.byte 13	; Non-initial State, software only.
                           7323 
   0A18 4D                 7324 	.byte 77	; Non-initial State, software only.
   0A19 D4                 7325 	.byte 212	; New LSB for software period.
                           7326 
   0A1A 0D                 7327 	.byte 13	; Non-initial State, software only.
                           7328 
   0A1B 0D                 7329 	.byte 13	; Non-initial State, software only.
                           7330 
   0A1C 4D                 7331 	.byte 77	; Non-initial State, software only.
   0A1D D5                 7332 	.byte 213	; New LSB for software period.
                           7333 
   0A1E 0D                 7334 	.byte 13	; Non-initial State, software only.
                           7335 
   0A1F 0D                 7336 	.byte 13	; Non-initial State, software only.
                           7337 
   0A20 49                 7338 	.byte 73	; Non-initial State, software only.
   0A21 D6                 7339 	.byte 214	; New LSB for software period.
                           7340 
   0A22 09                 7341 	.byte 9	; Non-initial State, software only.
                           7342 
   0A23 09                 7343 	.byte 9	; Non-initial State, software only.
                           7344 
   0A24 49                 7345 	.byte 73	; Non-initial State, software only.
   0A25 D5                 7346 	.byte 213	; New LSB for software period.
                           7347 
   0A26 09                 7348 	.byte 9	; Non-initial State, software only.
                           7349 
   0A27 09                 7350 	.byte 9	; Non-initial State, software only.
                           7351 
   0A28 45                 7352 	.byte 69	; Non-initial State, software only.
   0A29 D4                 7353 	.byte 212	; New LSB for software period.
                           7354 
   0A2A 05                 7355 	.byte 5	; Non-initial State, software only.
                           7356 
   0A2B 05                 7357 	.byte 5	; Non-initial State, software only.
                           7358 
   0A2C 45                 7359 	.byte 69	; Non-initial State, software only.
   0A2D D5                 7360 	.byte 213	; New LSB for software period.
                           7361 
   0A2E 05                 7362 	.byte 5	; Non-initial State, software only.
                           7363 
   0A2F 05                 7364 	.byte 5	; Non-initial State, software only.
                           7365 
   0A30 41                 7366 	.byte 65	; Non-initial State, software only.
   0A31 D6                 7367 	.byte 214	; New LSB for software period.
                           7368 
   0A32 01                 7369 	.byte 1	; Non-initial State, software only.
                           7370 
   0A33 01                 7371 	.byte 1	; Non-initial State, software only.
                           7372 
   0A34 41                 7373 	.byte 65	; Non-initial State, software only.
   0A35 D5                 7374 	.byte 213	; New LSB for software period.
                           7375 
   0A36 01                 7376 	.byte 1	; Non-initial State, software only.
                           7377 
   0A37 01                 7378 	.byte 1	; Non-initial State, software only.
                           7379 
   0A38 41                 7380 	.byte 65	; Non-initial State, software only.
   0A39 D4                 7381 	.byte 212	; New LSB for software period.
                           7382 
   0A3A 01                 7383 	.byte 1	; Non-initial State, software only.
                           7384 
   0A3B 01                 7385 	.byte 1	; Non-initial State, software only.
                           7386 
                           7387  .globl _Videopac_Subsong0_RegisterBlock_80_Loop
   0A3C                    7388 _Videopac_Subsong0_RegisterBlock_80_Loop:
   0A3C 41                 7389 	.byte 65	; Non-initial State, software only.
   0A3D D5                 7390 	.byte 213	; New LSB for software period.
                           7391 
   0A3E 08                 7392 	.byte 8	; Loop to index 42.
                           7393  .globl _Videopac_Subsong0DisarkPointerRegionStart961
   0A3F                    7394 _Videopac_Subsong0DisarkPointerRegionStart961:
   0A3F 0A 3C              7395 	.word _Videopac_Subsong0_RegisterBlock_80_Loop
                           7396  .globl Videopac_Subsong0DisarkPointerRegionEnd961
   0A41                    7397 Videopac_Subsong0DisarkPointerRegionEnd961:
                           7398 
                           7399 
                           7400  .globl _Videopac_Subsong0_RegisterBlock_91
   0A41                    7401 _Videopac_Subsong0_RegisterBlock_91:
   0A41 09                 7402 	.byte 9	; Initial State: software only.
   0A42 D5 00              7403 	.byte 213, 0	; Software period.
                           7404 
   0A44 05                 7405 	.byte 5	; Non-initial State, software only.
                           7406 
   0A45 05                 7407 	.byte 5	; Non-initial State, software only.
                           7408 
   0A46 09                 7409 	.byte 9	; Non-initial State, software only.
                           7410 
   0A47 09                 7411 	.byte 9	; Non-initial State, software only.
                           7412 
   0A48 09                 7413 	.byte 9	; Non-initial State, software only.
                           7414 
   0A49 49                 7415 	.byte 73	; Non-initial State, software only.
   0A4A D6                 7416 	.byte 214	; New LSB for software period.
                           7417 
   0A4B 09                 7418 	.byte 9	; Non-initial State, software only.
                           7419 
   0A4C 09                 7420 	.byte 9	; Non-initial State, software only.
                           7421 
   0A4D 49                 7422 	.byte 73	; Non-initial State, software only.
   0A4E D5                 7423 	.byte 213	; New LSB for software period.
                           7424 
   0A4F 09                 7425 	.byte 9	; Non-initial State, software only.
                           7426 
   0A50 09                 7427 	.byte 9	; Non-initial State, software only.
                           7428 
   0A51 05                 7429 	.byte 5	; Non-initial State, software only.
                           7430 
   0A52 05                 7431 	.byte 5	; Non-initial State, software only.
                           7432 
   0A53 05                 7433 	.byte 5	; Non-initial State, software only.
                           7434 
   0A54 45                 7435 	.byte 69	; Non-initial State, software only.
   0A55 D4                 7436 	.byte 212	; New LSB for software period.
                           7437 
   0A56 05                 7438 	.byte 5	; Non-initial State, software only.
                           7439 
   0A57 05                 7440 	.byte 5	; Non-initial State, software only.
                           7441 
   0A58 45                 7442 	.byte 69	; Non-initial State, software only.
   0A59 D5                 7443 	.byte 213	; New LSB for software period.
                           7444 
   0A5A 05                 7445 	.byte 5	; Non-initial State, software only.
                           7446 
   0A5B 05                 7447 	.byte 5	; Non-initial State, software only.
                           7448 
   0A5C 41                 7449 	.byte 65	; Non-initial State, software only.
   0A5D D6                 7450 	.byte 214	; New LSB for software period.
                           7451 
   0A5E 01                 7452 	.byte 1	; Non-initial State, software only.
                           7453 
   0A5F 01                 7454 	.byte 1	; Non-initial State, software only.
                           7455 
   0A60 41                 7456 	.byte 65	; Non-initial State, software only.
   0A61 D5                 7457 	.byte 213	; New LSB for software period.
                           7458 
   0A62 01                 7459 	.byte 1	; Non-initial State, software only.
                           7460 
   0A63 01                 7461 	.byte 1	; Non-initial State, software only.
                           7462 
   0A64 41                 7463 	.byte 65	; Non-initial State, software only.
   0A65 D4                 7464 	.byte 212	; New LSB for software period.
                           7465 
   0A66 01                 7466 	.byte 1	; Non-initial State, software only.
                           7467 
   0A67 01                 7468 	.byte 1	; Non-initial State, software only.
                           7469 
   0A68 41                 7470 	.byte 65	; Non-initial State, software only.
   0A69 D5                 7471 	.byte 213	; New LSB for software period.
                           7472 
   0A6A 01                 7473 	.byte 1	; Non-initial State, software only.
                           7474 
   0A6B 01                 7475 	.byte 1	; Non-initial State, software only.
                           7476 
   0A6C 08                 7477 	.byte 8
                           7478  .globl _Videopac_Subsong0DisarkPointerRegionStart962
   0A6D                    7479 _Videopac_Subsong0DisarkPointerRegionStart962:
   0A6D 0A 30              7480 	.word _Videopac_Subsong0_RegisterBlock_80 + 43	; Optimization: goto common Block at index 33.
                           7481  .globl Videopac_Subsong0DisarkPointerRegionEnd962
   0A6F                    7482 Videopac_Subsong0DisarkPointerRegionEnd962:
                           7483 
                           7484  .globl _Videopac_Subsong0_RegisterBlock_92
   0A6F                    7485 _Videopac_Subsong0_RegisterBlock_92:
   0A6F 09                 7486 	.byte 9	; Initial State: software only.
   0A70 7B 01              7487 	.byte 123, 1	; Software period.
                           7488 
   0A72 05                 7489 	.byte 5	; Non-initial State, software only.
                           7490 
   0A73 05                 7491 	.byte 5	; Non-initial State, software only.
                           7492 
   0A74 09                 7493 	.byte 9	; Non-initial State, software only.
                           7494 
   0A75 09                 7495 	.byte 9	; Non-initial State, software only.
                           7496 
   0A76 09                 7497 	.byte 9	; Non-initial State, software only.
                           7498 
   0A77 49                 7499 	.byte 73	; Non-initial State, software only.
   0A78 7C                 7500 	.byte 124	; New LSB for software period.
                           7501 
   0A79 09                 7502 	.byte 9	; Non-initial State, software only.
                           7503 
   0A7A 09                 7504 	.byte 9	; Non-initial State, software only.
                           7505 
   0A7B 49                 7506 	.byte 73	; Non-initial State, software only.
   0A7C 7B                 7507 	.byte 123	; New LSB for software period.
                           7508 
   0A7D 09                 7509 	.byte 9	; Non-initial State, software only.
                           7510 
   0A7E 09                 7511 	.byte 9	; Non-initial State, software only.
                           7512 
   0A7F 05                 7513 	.byte 5	; Non-initial State, software only.
                           7514 
   0A80 05                 7515 	.byte 5	; Non-initial State, software only.
                           7516 
   0A81 05                 7517 	.byte 5	; Non-initial State, software only.
                           7518 
   0A82 45                 7519 	.byte 69	; Non-initial State, software only.
   0A83 7A                 7520 	.byte 122	; New LSB for software period.
                           7521 
   0A84 05                 7522 	.byte 5	; Non-initial State, software only.
                           7523 
   0A85 05                 7524 	.byte 5	; Non-initial State, software only.
                           7525 
   0A86 45                 7526 	.byte 69	; Non-initial State, software only.
   0A87 7B                 7527 	.byte 123	; New LSB for software period.
                           7528 
   0A88 05                 7529 	.byte 5	; Non-initial State, software only.
                           7530 
   0A89 05                 7531 	.byte 5	; Non-initial State, software only.
                           7532 
   0A8A 41                 7533 	.byte 65	; Non-initial State, software only.
   0A8B 7C                 7534 	.byte 124	; New LSB for software period.
                           7535 
   0A8C 01                 7536 	.byte 1	; Non-initial State, software only.
                           7537 
   0A8D 01                 7538 	.byte 1	; Non-initial State, software only.
                           7539 
   0A8E 41                 7540 	.byte 65	; Non-initial State, software only.
   0A8F 7B                 7541 	.byte 123	; New LSB for software period.
                           7542 
   0A90 01                 7543 	.byte 1	; Non-initial State, software only.
                           7544 
   0A91 01                 7545 	.byte 1	; Non-initial State, software only.
                           7546 
   0A92 41                 7547 	.byte 65	; Non-initial State, software only.
   0A93 7A                 7548 	.byte 122	; New LSB for software period.
                           7549 
   0A94 01                 7550 	.byte 1	; Non-initial State, software only.
                           7551 
   0A95 01                 7552 	.byte 1	; Non-initial State, software only.
                           7553 
   0A96 41                 7554 	.byte 65	; Non-initial State, software only.
   0A97 7B                 7555 	.byte 123	; New LSB for software period.
                           7556 
   0A98 01                 7557 	.byte 1	; Non-initial State, software only.
                           7558 
   0A99 01                 7559 	.byte 1	; Non-initial State, software only.
                           7560 
   0A9A 41                 7561 	.byte 65	; Non-initial State, software only.
   0A9B 7C                 7562 	.byte 124	; New LSB for software period.
                           7563 
   0A9C 01                 7564 	.byte 1	; Non-initial State, software only.
                           7565 
   0A9D 01                 7566 	.byte 1	; Non-initial State, software only.
                           7567 
   0A9E 41                 7568 	.byte 65	; Non-initial State, software only.
   0A9F 7B                 7569 	.byte 123	; New LSB for software period.
                           7570 
   0AA0 01                 7571 	.byte 1	; Non-initial State, software only.
                           7572 
   0AA1 01                 7573 	.byte 1	; Non-initial State, software only.
                           7574 
   0AA2 41                 7575 	.byte 65	; Non-initial State, software only.
   0AA3 7A                 7576 	.byte 122	; New LSB for software period.
                           7577 
   0AA4 01                 7578 	.byte 1	; Non-initial State, software only.
                           7579 
   0AA5 01                 7580 	.byte 1	; Non-initial State, software only.
                           7581 
                           7582  .globl _Videopac_Subsong0_RegisterBlock_92_Loop
   0AA6                    7583 _Videopac_Subsong0_RegisterBlock_92_Loop:
   0AA6 41                 7584 	.byte 65	; Non-initial State, software only.
   0AA7 7B                 7585 	.byte 123	; New LSB for software period.
                           7586 
   0AA8 08                 7587 	.byte 8	; Loop to index 42.
                           7588  .globl _Videopac_Subsong0DisarkPointerRegionStart963
   0AA9                    7589 _Videopac_Subsong0DisarkPointerRegionStart963:
   0AA9 0A A6              7590 	.word _Videopac_Subsong0_RegisterBlock_92_Loop
                           7591  .globl Videopac_Subsong0DisarkPointerRegionEnd963
   0AAB                    7592 Videopac_Subsong0DisarkPointerRegionEnd963:
                           7593 
                           7594 
                           7595  .globl _Videopac_Subsong0_RegisterBlock_93
   0AAB                    7596 _Videopac_Subsong0_RegisterBlock_93:
   0AAB 09                 7597 	.byte 9	; Initial State: software only.
   0AAC EF 00              7598 	.byte 239, 0	; Software period.
                           7599 
   0AAE 05                 7600 	.byte 5	; Non-initial State, software only.
                           7601 
   0AAF 05                 7602 	.byte 5	; Non-initial State, software only.
                           7603 
   0AB0 09                 7604 	.byte 9	; Non-initial State, software only.
                           7605 
   0AB1 09                 7606 	.byte 9	; Non-initial State, software only.
                           7607 
   0AB2 09                 7608 	.byte 9	; Non-initial State, software only.
                           7609 
   0AB3 49                 7610 	.byte 73	; Non-initial State, software only.
   0AB4 F0                 7611 	.byte 240	; New LSB for software period.
                           7612 
   0AB5 09                 7613 	.byte 9	; Non-initial State, software only.
                           7614 
   0AB6 09                 7615 	.byte 9	; Non-initial State, software only.
                           7616 
   0AB7 49                 7617 	.byte 73	; Non-initial State, software only.
   0AB8 EF                 7618 	.byte 239	; New LSB for software period.
                           7619 
   0AB9 09                 7620 	.byte 9	; Non-initial State, software only.
                           7621 
   0ABA 09                 7622 	.byte 9	; Non-initial State, software only.
                           7623 
   0ABB 05                 7624 	.byte 5	; Non-initial State, software only.
                           7625 
   0ABC 05                 7626 	.byte 5	; Non-initial State, software only.
                           7627 
   0ABD 05                 7628 	.byte 5	; Non-initial State, software only.
                           7629 
   0ABE 45                 7630 	.byte 69	; Non-initial State, software only.
   0ABF EE                 7631 	.byte 238	; New LSB for software period.
                           7632 
   0AC0 05                 7633 	.byte 5	; Non-initial State, software only.
                           7634 
   0AC1 05                 7635 	.byte 5	; Non-initial State, software only.
                           7636 
   0AC2 45                 7637 	.byte 69	; Non-initial State, software only.
   0AC3 EF                 7638 	.byte 239	; New LSB for software period.
                           7639 
   0AC4 05                 7640 	.byte 5	; Non-initial State, software only.
                           7641 
   0AC5 05                 7642 	.byte 5	; Non-initial State, software only.
                           7643 
   0AC6 41                 7644 	.byte 65	; Non-initial State, software only.
   0AC7 F0                 7645 	.byte 240	; New LSB for software period.
                           7646 
   0AC8 01                 7647 	.byte 1	; Non-initial State, software only.
                           7648 
   0AC9 01                 7649 	.byte 1	; Non-initial State, software only.
                           7650 
   0ACA 41                 7651 	.byte 65	; Non-initial State, software only.
   0ACB EF                 7652 	.byte 239	; New LSB for software period.
                           7653 
   0ACC 01                 7654 	.byte 1	; Non-initial State, software only.
                           7655 
   0ACD 01                 7656 	.byte 1	; Non-initial State, software only.
                           7657 
   0ACE 41                 7658 	.byte 65	; Non-initial State, software only.
   0ACF EE                 7659 	.byte 238	; New LSB for software period.
                           7660 
   0AD0 01                 7661 	.byte 1	; Non-initial State, software only.
                           7662 
   0AD1 01                 7663 	.byte 1	; Non-initial State, software only.
                           7664 
   0AD2 41                 7665 	.byte 65	; Non-initial State, software only.
   0AD3 EF                 7666 	.byte 239	; New LSB for software period.
                           7667 
   0AD4 01                 7668 	.byte 1	; Non-initial State, software only.
                           7669 
   0AD5 01                 7670 	.byte 1	; Non-initial State, software only.
                           7671 
   0AD6 41                 7672 	.byte 65	; Non-initial State, software only.
   0AD7 F0                 7673 	.byte 240	; New LSB for software period.
                           7674 
   0AD8 01                 7675 	.byte 1	; Non-initial State, software only.
                           7676 
   0AD9 01                 7677 	.byte 1	; Non-initial State, software only.
                           7678 
   0ADA 41                 7679 	.byte 65	; Non-initial State, software only.
   0ADB EF                 7680 	.byte 239	; New LSB for software period.
                           7681 
   0ADC 01                 7682 	.byte 1	; Non-initial State, software only.
                           7683 
   0ADD 01                 7684 	.byte 1	; Non-initial State, software only.
                           7685 
   0ADE 41                 7686 	.byte 65	; Non-initial State, software only.
   0ADF EE                 7687 	.byte 238	; New LSB for software period.
                           7688 
   0AE0 01                 7689 	.byte 1	; Non-initial State, software only.
                           7690 
   0AE1 01                 7691 	.byte 1	; Non-initial State, software only.
                           7692 
                           7693  .globl _Videopac_Subsong0_RegisterBlock_93_Loop
   0AE2                    7694 _Videopac_Subsong0_RegisterBlock_93_Loop:
   0AE2 41                 7695 	.byte 65	; Non-initial State, software only.
   0AE3 EF                 7696 	.byte 239	; New LSB for software period.
                           7697 
   0AE4 08                 7698 	.byte 8	; Loop to index 42.
                           7699  .globl _Videopac_Subsong0DisarkPointerRegionStart964
   0AE5                    7700 _Videopac_Subsong0DisarkPointerRegionStart964:
   0AE5 0A E2              7701 	.word _Videopac_Subsong0_RegisterBlock_93_Loop
                           7702  .globl Videopac_Subsong0DisarkPointerRegionEnd964
   0AE7                    7703 Videopac_Subsong0DisarkPointerRegionEnd964:
                           7704 
                           7705 
                           7706  .globl _Videopac_Subsong0_RegisterBlock_94
   0AE7                    7707 _Videopac_Subsong0_RegisterBlock_94:
   0AE7 09                 7708 	.byte 9	; Initial State: software only.
   0AE8 AA 01              7709 	.byte 170, 1	; Software period.
                           7710 
   0AEA 05                 7711 	.byte 5	; Non-initial State, software only.
                           7712 
   0AEB 05                 7713 	.byte 5	; Non-initial State, software only.
                           7714 
   0AEC 09                 7715 	.byte 9	; Non-initial State, software only.
                           7716 
   0AED 09                 7717 	.byte 9	; Non-initial State, software only.
                           7718 
   0AEE 09                 7719 	.byte 9	; Non-initial State, software only.
                           7720 
   0AEF 49                 7721 	.byte 73	; Non-initial State, software only.
   0AF0 AB                 7722 	.byte 171	; New LSB for software period.
                           7723 
   0AF1 09                 7724 	.byte 9	; Non-initial State, software only.
                           7725 
   0AF2 09                 7726 	.byte 9	; Non-initial State, software only.
                           7727 
   0AF3 49                 7728 	.byte 73	; Non-initial State, software only.
   0AF4 AA                 7729 	.byte 170	; New LSB for software period.
                           7730 
   0AF5 09                 7731 	.byte 9	; Non-initial State, software only.
                           7732 
   0AF6 09                 7733 	.byte 9	; Non-initial State, software only.
                           7734 
   0AF7 05                 7735 	.byte 5	; Non-initial State, software only.
                           7736 
   0AF8 05                 7737 	.byte 5	; Non-initial State, software only.
                           7738 
   0AF9 05                 7739 	.byte 5	; Non-initial State, software only.
                           7740 
   0AFA 45                 7741 	.byte 69	; Non-initial State, software only.
   0AFB A9                 7742 	.byte 169	; New LSB for software period.
                           7743 
   0AFC 05                 7744 	.byte 5	; Non-initial State, software only.
                           7745 
   0AFD 05                 7746 	.byte 5	; Non-initial State, software only.
                           7747 
   0AFE 45                 7748 	.byte 69	; Non-initial State, software only.
   0AFF AA                 7749 	.byte 170	; New LSB for software period.
                           7750 
   0B00 05                 7751 	.byte 5	; Non-initial State, software only.
                           7752 
   0B01 05                 7753 	.byte 5	; Non-initial State, software only.
                           7754 
   0B02 41                 7755 	.byte 65	; Non-initial State, software only.
   0B03 AB                 7756 	.byte 171	; New LSB for software period.
                           7757 
   0B04 01                 7758 	.byte 1	; Non-initial State, software only.
                           7759 
   0B05 01                 7760 	.byte 1	; Non-initial State, software only.
                           7761 
   0B06 41                 7762 	.byte 65	; Non-initial State, software only.
   0B07 AA                 7763 	.byte 170	; New LSB for software period.
                           7764 
   0B08 01                 7765 	.byte 1	; Non-initial State, software only.
                           7766 
   0B09 01                 7767 	.byte 1	; Non-initial State, software only.
                           7768 
   0B0A 41                 7769 	.byte 65	; Non-initial State, software only.
   0B0B A9                 7770 	.byte 169	; New LSB for software period.
                           7771 
   0B0C 01                 7772 	.byte 1	; Non-initial State, software only.
                           7773 
   0B0D 01                 7774 	.byte 1	; Non-initial State, software only.
                           7775 
   0B0E 41                 7776 	.byte 65	; Non-initial State, software only.
   0B0F AA                 7777 	.byte 170	; New LSB for software period.
                           7778 
   0B10 01                 7779 	.byte 1	; Non-initial State, software only.
                           7780 
   0B11 01                 7781 	.byte 1	; Non-initial State, software only.
                           7782 
   0B12 41                 7783 	.byte 65	; Non-initial State, software only.
   0B13 AB                 7784 	.byte 171	; New LSB for software period.
                           7785 
   0B14 01                 7786 	.byte 1	; Non-initial State, software only.
                           7787 
   0B15 01                 7788 	.byte 1	; Non-initial State, software only.
                           7789 
   0B16 41                 7790 	.byte 65	; Non-initial State, software only.
   0B17 AA                 7791 	.byte 170	; New LSB for software period.
                           7792 
   0B18 01                 7793 	.byte 1	; Non-initial State, software only.
                           7794 
   0B19 01                 7795 	.byte 1	; Non-initial State, software only.
                           7796 
   0B1A 41                 7797 	.byte 65	; Non-initial State, software only.
   0B1B A9                 7798 	.byte 169	; New LSB for software period.
                           7799 
   0B1C 01                 7800 	.byte 1	; Non-initial State, software only.
                           7801 
   0B1D 01                 7802 	.byte 1	; Non-initial State, software only.
                           7803 
                           7804  .globl _Videopac_Subsong0_RegisterBlock_94_Loop
   0B1E                    7805 _Videopac_Subsong0_RegisterBlock_94_Loop:
   0B1E 41                 7806 	.byte 65	; Non-initial State, software only.
   0B1F AA                 7807 	.byte 170	; New LSB for software period.
                           7808 
   0B20 08                 7809 	.byte 8	; Loop to index 42.
                           7810  .globl _Videopac_Subsong0DisarkPointerRegionStart965
   0B21                    7811 _Videopac_Subsong0DisarkPointerRegionStart965:
   0B21 0B 1E              7812 	.word _Videopac_Subsong0_RegisterBlock_94_Loop
                           7813  .globl Videopac_Subsong0DisarkPointerRegionEnd965
   0B23                    7814 Videopac_Subsong0DisarkPointerRegionEnd965:
                           7815 
                           7816 
                           7817  .globl _Videopac_Subsong0_RegisterBlock_95
   0B23                    7818 _Videopac_Subsong0_RegisterBlock_95:
   0B23 09                 7819 	.byte 9	; Initial State: software only.
   0B24 FD 00              7820 	.byte 253, 0	; Software period.
                           7821 
   0B26 05                 7822 	.byte 5	; Non-initial State, software only.
                           7823 
   0B27 05                 7824 	.byte 5	; Non-initial State, software only.
                           7825 
   0B28 09                 7826 	.byte 9	; Non-initial State, software only.
                           7827 
   0B29 09                 7828 	.byte 9	; Non-initial State, software only.
                           7829 
   0B2A 09                 7830 	.byte 9	; Non-initial State, software only.
                           7831 
   0B2B 49                 7832 	.byte 73	; Non-initial State, software only.
   0B2C FE                 7833 	.byte 254	; New LSB for software period.
                           7834 
   0B2D 09                 7835 	.byte 9	; Non-initial State, software only.
                           7836 
   0B2E 09                 7837 	.byte 9	; Non-initial State, software only.
                           7838 
   0B2F 49                 7839 	.byte 73	; Non-initial State, software only.
   0B30 FD                 7840 	.byte 253	; New LSB for software period.
                           7841 
   0B31 09                 7842 	.byte 9	; Non-initial State, software only.
                           7843 
   0B32 09                 7844 	.byte 9	; Non-initial State, software only.
                           7845 
   0B33 05                 7846 	.byte 5	; Non-initial State, software only.
                           7847 
   0B34 05                 7848 	.byte 5	; Non-initial State, software only.
                           7849 
   0B35 05                 7850 	.byte 5	; Non-initial State, software only.
                           7851 
   0B36 45                 7852 	.byte 69	; Non-initial State, software only.
   0B37 FC                 7853 	.byte 252	; New LSB for software period.
                           7854 
   0B38 05                 7855 	.byte 5	; Non-initial State, software only.
                           7856 
   0B39 05                 7857 	.byte 5	; Non-initial State, software only.
                           7858 
   0B3A 45                 7859 	.byte 69	; Non-initial State, software only.
   0B3B FD                 7860 	.byte 253	; New LSB for software period.
                           7861 
   0B3C 05                 7862 	.byte 5	; Non-initial State, software only.
                           7863 
   0B3D 05                 7864 	.byte 5	; Non-initial State, software only.
                           7865 
   0B3E 41                 7866 	.byte 65	; Non-initial State, software only.
   0B3F FE                 7867 	.byte 254	; New LSB for software period.
                           7868 
   0B40 01                 7869 	.byte 1	; Non-initial State, software only.
                           7870 
   0B41 01                 7871 	.byte 1	; Non-initial State, software only.
                           7872 
   0B42 41                 7873 	.byte 65	; Non-initial State, software only.
   0B43 FD                 7874 	.byte 253	; New LSB for software period.
                           7875 
   0B44 01                 7876 	.byte 1	; Non-initial State, software only.
                           7877 
   0B45 01                 7878 	.byte 1	; Non-initial State, software only.
                           7879 
   0B46 41                 7880 	.byte 65	; Non-initial State, software only.
   0B47 FC                 7881 	.byte 252	; New LSB for software period.
                           7882 
   0B48 01                 7883 	.byte 1	; Non-initial State, software only.
                           7884 
   0B49 01                 7885 	.byte 1	; Non-initial State, software only.
                           7886 
   0B4A 41                 7887 	.byte 65	; Non-initial State, software only.
   0B4B FD                 7888 	.byte 253	; New LSB for software period.
                           7889 
   0B4C 01                 7890 	.byte 1	; Non-initial State, software only.
                           7891 
   0B4D 01                 7892 	.byte 1	; Non-initial State, software only.
                           7893 
   0B4E 41                 7894 	.byte 65	; Non-initial State, software only.
   0B4F FE                 7895 	.byte 254	; New LSB for software period.
                           7896 
   0B50 01                 7897 	.byte 1	; Non-initial State, software only.
                           7898 
   0B51 01                 7899 	.byte 1	; Non-initial State, software only.
                           7900 
   0B52 41                 7901 	.byte 65	; Non-initial State, software only.
   0B53 FD                 7902 	.byte 253	; New LSB for software period.
                           7903 
   0B54 01                 7904 	.byte 1	; Non-initial State, software only.
                           7905 
   0B55 01                 7906 	.byte 1	; Non-initial State, software only.
                           7907 
   0B56 41                 7908 	.byte 65	; Non-initial State, software only.
   0B57 FC                 7909 	.byte 252	; New LSB for software period.
                           7910 
   0B58 01                 7911 	.byte 1	; Non-initial State, software only.
                           7912 
   0B59 01                 7913 	.byte 1	; Non-initial State, software only.
                           7914 
                           7915  .globl _Videopac_Subsong0_RegisterBlock_95_Loop
   0B5A                    7916 _Videopac_Subsong0_RegisterBlock_95_Loop:
   0B5A 41                 7917 	.byte 65	; Non-initial State, software only.
   0B5B FD                 7918 	.byte 253	; New LSB for software period.
                           7919 
   0B5C 08                 7920 	.byte 8	; Loop to index 42.
                           7921  .globl _Videopac_Subsong0DisarkPointerRegionStart966
   0B5D                    7922 _Videopac_Subsong0DisarkPointerRegionStart966:
   0B5D 0B 5A              7923 	.word _Videopac_Subsong0_RegisterBlock_95_Loop
                           7924  .globl Videopac_Subsong0DisarkPointerRegionEnd966
   0B5F                    7925 Videopac_Subsong0DisarkPointerRegionEnd966:
                           7926 
                           7927 
                           7928  .globl _Videopac_Subsong0_RegisterBlock_96
   0B5F                    7929 _Videopac_Subsong0_RegisterBlock_96:
   0B5F 09                 7930 	.byte 9	; Initial State: software only.
   0B60 DE 01              7931 	.byte 222, 1	; Software period.
                           7932 
   0B62 05                 7933 	.byte 5	; Non-initial State, software only.
                           7934 
   0B63 05                 7935 	.byte 5	; Non-initial State, software only.
                           7936 
   0B64 09                 7937 	.byte 9	; Non-initial State, software only.
                           7938 
   0B65 09                 7939 	.byte 9	; Non-initial State, software only.
                           7940 
   0B66 09                 7941 	.byte 9	; Non-initial State, software only.
                           7942 
   0B67 49                 7943 	.byte 73	; Non-initial State, software only.
   0B68 DF                 7944 	.byte 223	; New LSB for software period.
                           7945 
   0B69 09                 7946 	.byte 9	; Non-initial State, software only.
                           7947 
   0B6A 09                 7948 	.byte 9	; Non-initial State, software only.
                           7949 
   0B6B 49                 7950 	.byte 73	; Non-initial State, software only.
   0B6C DE                 7951 	.byte 222	; New LSB for software period.
                           7952 
   0B6D 09                 7953 	.byte 9	; Non-initial State, software only.
                           7954 
   0B6E 09                 7955 	.byte 9	; Non-initial State, software only.
                           7956 
   0B6F 05                 7957 	.byte 5	; Non-initial State, software only.
                           7958 
   0B70 05                 7959 	.byte 5	; Non-initial State, software only.
                           7960 
   0B71 05                 7961 	.byte 5	; Non-initial State, software only.
                           7962 
   0B72 45                 7963 	.byte 69	; Non-initial State, software only.
   0B73 DD                 7964 	.byte 221	; New LSB for software period.
                           7965 
   0B74 05                 7966 	.byte 5	; Non-initial State, software only.
                           7967 
   0B75 05                 7968 	.byte 5	; Non-initial State, software only.
                           7969 
   0B76 45                 7970 	.byte 69	; Non-initial State, software only.
   0B77 DE                 7971 	.byte 222	; New LSB for software period.
                           7972 
   0B78 05                 7973 	.byte 5	; Non-initial State, software only.
                           7974 
   0B79 05                 7975 	.byte 5	; Non-initial State, software only.
                           7976 
   0B7A 41                 7977 	.byte 65	; Non-initial State, software only.
   0B7B DF                 7978 	.byte 223	; New LSB for software period.
                           7979 
   0B7C 01                 7980 	.byte 1	; Non-initial State, software only.
                           7981 
   0B7D 01                 7982 	.byte 1	; Non-initial State, software only.
                           7983 
   0B7E 41                 7984 	.byte 65	; Non-initial State, software only.
   0B7F DE                 7985 	.byte 222	; New LSB for software period.
                           7986 
   0B80 01                 7987 	.byte 1	; Non-initial State, software only.
                           7988 
   0B81 01                 7989 	.byte 1	; Non-initial State, software only.
                           7990 
   0B82 41                 7991 	.byte 65	; Non-initial State, software only.
   0B83 DD                 7992 	.byte 221	; New LSB for software period.
                           7993 
   0B84 01                 7994 	.byte 1	; Non-initial State, software only.
                           7995 
   0B85 01                 7996 	.byte 1	; Non-initial State, software only.
                           7997 
   0B86 41                 7998 	.byte 65	; Non-initial State, software only.
   0B87 DE                 7999 	.byte 222	; New LSB for software period.
                           8000 
   0B88 01                 8001 	.byte 1	; Non-initial State, software only.
                           8002 
   0B89 01                 8003 	.byte 1	; Non-initial State, software only.
                           8004 
   0B8A 41                 8005 	.byte 65	; Non-initial State, software only.
   0B8B DF                 8006 	.byte 223	; New LSB for software period.
                           8007 
   0B8C 01                 8008 	.byte 1	; Non-initial State, software only.
                           8009 
   0B8D 01                 8010 	.byte 1	; Non-initial State, software only.
                           8011 
   0B8E 41                 8012 	.byte 65	; Non-initial State, software only.
   0B8F DE                 8013 	.byte 222	; New LSB for software period.
                           8014 
   0B90 01                 8015 	.byte 1	; Non-initial State, software only.
                           8016 
   0B91 01                 8017 	.byte 1	; Non-initial State, software only.
                           8018 
   0B92 41                 8019 	.byte 65	; Non-initial State, software only.
   0B93 DD                 8020 	.byte 221	; New LSB for software period.
                           8021 
   0B94 01                 8022 	.byte 1	; Non-initial State, software only.
                           8023 
   0B95 01                 8024 	.byte 1	; Non-initial State, software only.
                           8025 
                           8026  .globl _Videopac_Subsong0_RegisterBlock_96_Loop
   0B96                    8027 _Videopac_Subsong0_RegisterBlock_96_Loop:
   0B96 41                 8028 	.byte 65	; Non-initial State, software only.
   0B97 DE                 8029 	.byte 222	; New LSB for software period.
                           8030 
   0B98 08                 8031 	.byte 8	; Loop to index 42.
                           8032  .globl _Videopac_Subsong0DisarkPointerRegionStart967
   0B99                    8033 _Videopac_Subsong0DisarkPointerRegionStart967:
   0B99 0B 96              8034 	.word _Videopac_Subsong0_RegisterBlock_96_Loop
                           8035  .globl Videopac_Subsong0DisarkPointerRegionEnd967
   0B9B                    8036 Videopac_Subsong0DisarkPointerRegionEnd967:
                           8037 
                           8038 
                           8039  .globl _Videopac_Subsong0_RegisterBlock_101
   0B9B                    8040 _Videopac_Subsong0_RegisterBlock_101:
   0B9B 39                 8041 	.byte 57	; Initial State: software only.
   0B9C D5 00              8042 	.byte 213, 0	; Software period.
                           8043 
   0B9E 1D                 8044 	.byte 29	; Non-initial State, software only.
                           8045 
   0B9F 1D                 8046 	.byte 29	; Non-initial State, software only.
                           8047 
   0BA0 21                 8048 	.byte 33	; Non-initial State, software only.
                           8049 
   0BA1 21                 8050 	.byte 33	; Non-initial State, software only.
                           8051 
   0BA2 21                 8052 	.byte 33	; Non-initial State, software only.
                           8053 
   0BA3 61                 8054 	.byte 97	; Non-initial State, software only.
   0BA4 D6                 8055 	.byte 214	; New LSB for software period.
                           8056 
   0BA5 21                 8057 	.byte 33	; Non-initial State, software only.
                           8058 
   0BA6 21                 8059 	.byte 33	; Non-initial State, software only.
                           8060 
   0BA7 61                 8061 	.byte 97	; Non-initial State, software only.
   0BA8 D5                 8062 	.byte 213	; New LSB for software period.
                           8063 
   0BA9 21                 8064 	.byte 33	; Non-initial State, software only.
                           8065 
   0BAA 21                 8066 	.byte 33	; Non-initial State, software only.
                           8067 
   0BAB 1D                 8068 	.byte 29	; Non-initial State, software only.
                           8069 
   0BAC 1D                 8070 	.byte 29	; Non-initial State, software only.
                           8071 
   0BAD 1D                 8072 	.byte 29	; Non-initial State, software only.
                           8073 
   0BAE 5D                 8074 	.byte 93	; Non-initial State, software only.
   0BAF D4                 8075 	.byte 212	; New LSB for software period.
                           8076 
   0BB0 1D                 8077 	.byte 29	; Non-initial State, software only.
                           8078 
   0BB1 1D                 8079 	.byte 29	; Non-initial State, software only.
                           8080 
   0BB2 5D                 8081 	.byte 93	; Non-initial State, software only.
   0BB3 D5                 8082 	.byte 213	; New LSB for software period.
                           8083 
   0BB4 1D                 8084 	.byte 29	; Non-initial State, software only.
                           8085 
   0BB5 1D                 8086 	.byte 29	; Non-initial State, software only.
                           8087 
   0BB6 59                 8088 	.byte 89	; Non-initial State, software only.
   0BB7 D6                 8089 	.byte 214	; New LSB for software period.
                           8090 
   0BB8 19                 8091 	.byte 25	; Non-initial State, software only.
                           8092 
   0BB9 19                 8093 	.byte 25	; Non-initial State, software only.
                           8094 
   0BBA 59                 8095 	.byte 89	; Non-initial State, software only.
   0BBB D5                 8096 	.byte 213	; New LSB for software period.
                           8097 
   0BBC 19                 8098 	.byte 25	; Non-initial State, software only.
                           8099 
   0BBD 19                 8100 	.byte 25	; Non-initial State, software only.
                           8101 
   0BBE 55                 8102 	.byte 85	; Non-initial State, software only.
   0BBF D4                 8103 	.byte 212	; New LSB for software period.
                           8104 
   0BC0 15                 8105 	.byte 21	; Non-initial State, software only.
                           8106 
   0BC1 15                 8107 	.byte 21	; Non-initial State, software only.
                           8108 
   0BC2 55                 8109 	.byte 85	; Non-initial State, software only.
   0BC3 D5                 8110 	.byte 213	; New LSB for software period.
                           8111 
   0BC4 15                 8112 	.byte 21	; Non-initial State, software only.
                           8113 
   0BC5 15                 8114 	.byte 21	; Non-initial State, software only.
                           8115 
   0BC6 51                 8116 	.byte 81	; Non-initial State, software only.
   0BC7 D6                 8117 	.byte 214	; New LSB for software period.
                           8118 
   0BC8 11                 8119 	.byte 17	; Non-initial State, software only.
                           8120 
   0BC9 11                 8121 	.byte 17	; Non-initial State, software only.
                           8122 
   0BCA 51                 8123 	.byte 81	; Non-initial State, software only.
   0BCB D5                 8124 	.byte 213	; New LSB for software period.
                           8125 
   0BCC 11                 8126 	.byte 17	; Non-initial State, software only.
                           8127 
   0BCD 11                 8128 	.byte 17	; Non-initial State, software only.
                           8129 
   0BCE 4D                 8130 	.byte 77	; Non-initial State, software only.
   0BCF D4                 8131 	.byte 212	; New LSB for software period.
                           8132 
   0BD0 0D                 8133 	.byte 13	; Non-initial State, software only.
                           8134 
   0BD1 0D                 8135 	.byte 13	; Non-initial State, software only.
                           8136 
                           8137  .globl _Videopac_Subsong0_RegisterBlock_101_Loop
   0BD2                    8138 _Videopac_Subsong0_RegisterBlock_101_Loop:
   0BD2 4D                 8139 	.byte 77	; Non-initial State, software only.
   0BD3 D5                 8140 	.byte 213	; New LSB for software period.
                           8141 
   0BD4 08                 8142 	.byte 8	; Loop to index 42.
                           8143  .globl _Videopac_Subsong0DisarkPointerRegionStart968
   0BD5                    8144 _Videopac_Subsong0DisarkPointerRegionStart968:
   0BD5 0B D2              8145 	.word _Videopac_Subsong0_RegisterBlock_101_Loop
                           8146  .globl Videopac_Subsong0DisarkPointerRegionEnd968
   0BD7                    8147 Videopac_Subsong0DisarkPointerRegionEnd968:
                           8148 
                           8149 
                           8150  .globl _Videopac_Subsong0_RegisterBlock_102
   0BD7                    8151 _Videopac_Subsong0_RegisterBlock_102:
   0BD7 39                 8152 	.byte 57	; Initial State: software only.
   0BD8 7B 01              8153 	.byte 123, 1	; Software period.
                           8154 
   0BDA 1D                 8155 	.byte 29	; Non-initial State, software only.
                           8156 
   0BDB 1D                 8157 	.byte 29	; Non-initial State, software only.
                           8158 
   0BDC 21                 8159 	.byte 33	; Non-initial State, software only.
                           8160 
   0BDD 21                 8161 	.byte 33	; Non-initial State, software only.
                           8162 
   0BDE 21                 8163 	.byte 33	; Non-initial State, software only.
                           8164 
   0BDF 61                 8165 	.byte 97	; Non-initial State, software only.
   0BE0 7C                 8166 	.byte 124	; New LSB for software period.
                           8167 
   0BE1 21                 8168 	.byte 33	; Non-initial State, software only.
                           8169 
   0BE2 21                 8170 	.byte 33	; Non-initial State, software only.
                           8171 
   0BE3 61                 8172 	.byte 97	; Non-initial State, software only.
   0BE4 7B                 8173 	.byte 123	; New LSB for software period.
                           8174 
   0BE5 21                 8175 	.byte 33	; Non-initial State, software only.
                           8176 
   0BE6 21                 8177 	.byte 33	; Non-initial State, software only.
                           8178 
   0BE7 1D                 8179 	.byte 29	; Non-initial State, software only.
                           8180 
   0BE8 1D                 8181 	.byte 29	; Non-initial State, software only.
                           8182 
   0BE9 1D                 8183 	.byte 29	; Non-initial State, software only.
                           8184 
   0BEA 5D                 8185 	.byte 93	; Non-initial State, software only.
   0BEB 7A                 8186 	.byte 122	; New LSB for software period.
                           8187 
   0BEC 1D                 8188 	.byte 29	; Non-initial State, software only.
                           8189 
   0BED 1D                 8190 	.byte 29	; Non-initial State, software only.
                           8191 
   0BEE 5D                 8192 	.byte 93	; Non-initial State, software only.
   0BEF 7B                 8193 	.byte 123	; New LSB for software period.
                           8194 
   0BF0 1D                 8195 	.byte 29	; Non-initial State, software only.
                           8196 
   0BF1 1D                 8197 	.byte 29	; Non-initial State, software only.
                           8198 
   0BF2 59                 8199 	.byte 89	; Non-initial State, software only.
   0BF3 7C                 8200 	.byte 124	; New LSB for software period.
                           8201 
   0BF4 19                 8202 	.byte 25	; Non-initial State, software only.
                           8203 
   0BF5 19                 8204 	.byte 25	; Non-initial State, software only.
                           8205 
   0BF6 59                 8206 	.byte 89	; Non-initial State, software only.
   0BF7 7B                 8207 	.byte 123	; New LSB for software period.
                           8208 
   0BF8 19                 8209 	.byte 25	; Non-initial State, software only.
                           8210 
   0BF9 19                 8211 	.byte 25	; Non-initial State, software only.
                           8212 
   0BFA 55                 8213 	.byte 85	; Non-initial State, software only.
   0BFB 7A                 8214 	.byte 122	; New LSB for software period.
                           8215 
   0BFC 15                 8216 	.byte 21	; Non-initial State, software only.
                           8217 
   0BFD 15                 8218 	.byte 21	; Non-initial State, software only.
                           8219 
   0BFE 55                 8220 	.byte 85	; Non-initial State, software only.
   0BFF 7B                 8221 	.byte 123	; New LSB for software period.
                           8222 
   0C00 15                 8223 	.byte 21	; Non-initial State, software only.
                           8224 
   0C01 15                 8225 	.byte 21	; Non-initial State, software only.
                           8226 
   0C02 51                 8227 	.byte 81	; Non-initial State, software only.
   0C03 7C                 8228 	.byte 124	; New LSB for software period.
                           8229 
   0C04 11                 8230 	.byte 17	; Non-initial State, software only.
                           8231 
   0C05 11                 8232 	.byte 17	; Non-initial State, software only.
                           8233 
   0C06 51                 8234 	.byte 81	; Non-initial State, software only.
   0C07 7B                 8235 	.byte 123	; New LSB for software period.
                           8236 
   0C08 11                 8237 	.byte 17	; Non-initial State, software only.
                           8238 
   0C09 11                 8239 	.byte 17	; Non-initial State, software only.
                           8240 
   0C0A 4D                 8241 	.byte 77	; Non-initial State, software only.
   0C0B 7A                 8242 	.byte 122	; New LSB for software period.
                           8243 
   0C0C 0D                 8244 	.byte 13	; Non-initial State, software only.
                           8245 
   0C0D 0D                 8246 	.byte 13	; Non-initial State, software only.
                           8247 
                           8248  .globl _Videopac_Subsong0_RegisterBlock_102_Loop
   0C0E                    8249 _Videopac_Subsong0_RegisterBlock_102_Loop:
   0C0E 4D                 8250 	.byte 77	; Non-initial State, software only.
   0C0F 7B                 8251 	.byte 123	; New LSB for software period.
                           8252 
   0C10 08                 8253 	.byte 8	; Loop to index 42.
                           8254  .globl _Videopac_Subsong0DisarkPointerRegionStart969
   0C11                    8255 _Videopac_Subsong0DisarkPointerRegionStart969:
   0C11 0C 0E              8256 	.word _Videopac_Subsong0_RegisterBlock_102_Loop
                           8257  .globl Videopac_Subsong0DisarkPointerRegionEnd969
   0C13                    8258 Videopac_Subsong0DisarkPointerRegionEnd969:
                           8259 
                           8260 
                           8261  .globl _Videopac_Subsong0_RegisterBlock_103
   0C13                    8262 _Videopac_Subsong0_RegisterBlock_103:
   0C13 39                 8263 	.byte 57	; Initial State: software only.
   0C14 EF 00              8264 	.byte 239, 0	; Software period.
                           8265 
   0C16 1D                 8266 	.byte 29	; Non-initial State, software only.
                           8267 
   0C17 1D                 8268 	.byte 29	; Non-initial State, software only.
                           8269 
   0C18 21                 8270 	.byte 33	; Non-initial State, software only.
                           8271 
   0C19 21                 8272 	.byte 33	; Non-initial State, software only.
                           8273 
   0C1A 21                 8274 	.byte 33	; Non-initial State, software only.
                           8275 
   0C1B 61                 8276 	.byte 97	; Non-initial State, software only.
   0C1C F0                 8277 	.byte 240	; New LSB for software period.
                           8278 
   0C1D 21                 8279 	.byte 33	; Non-initial State, software only.
                           8280 
   0C1E 21                 8281 	.byte 33	; Non-initial State, software only.
                           8282 
   0C1F 61                 8283 	.byte 97	; Non-initial State, software only.
   0C20 EF                 8284 	.byte 239	; New LSB for software period.
                           8285 
   0C21 21                 8286 	.byte 33	; Non-initial State, software only.
                           8287 
   0C22 21                 8288 	.byte 33	; Non-initial State, software only.
                           8289 
   0C23 1D                 8290 	.byte 29	; Non-initial State, software only.
                           8291 
   0C24 1D                 8292 	.byte 29	; Non-initial State, software only.
                           8293 
   0C25 1D                 8294 	.byte 29	; Non-initial State, software only.
                           8295 
   0C26 5D                 8296 	.byte 93	; Non-initial State, software only.
   0C27 EE                 8297 	.byte 238	; New LSB for software period.
                           8298 
   0C28 1D                 8299 	.byte 29	; Non-initial State, software only.
                           8300 
   0C29 1D                 8301 	.byte 29	; Non-initial State, software only.
                           8302 
   0C2A 5D                 8303 	.byte 93	; Non-initial State, software only.
   0C2B EF                 8304 	.byte 239	; New LSB for software period.
                           8305 
   0C2C 1D                 8306 	.byte 29	; Non-initial State, software only.
                           8307 
   0C2D 1D                 8308 	.byte 29	; Non-initial State, software only.
                           8309 
   0C2E 59                 8310 	.byte 89	; Non-initial State, software only.
   0C2F F0                 8311 	.byte 240	; New LSB for software period.
                           8312 
   0C30 19                 8313 	.byte 25	; Non-initial State, software only.
                           8314 
   0C31 19                 8315 	.byte 25	; Non-initial State, software only.
                           8316 
   0C32 59                 8317 	.byte 89	; Non-initial State, software only.
   0C33 EF                 8318 	.byte 239	; New LSB for software period.
                           8319 
   0C34 19                 8320 	.byte 25	; Non-initial State, software only.
                           8321 
   0C35 19                 8322 	.byte 25	; Non-initial State, software only.
                           8323 
   0C36 55                 8324 	.byte 85	; Non-initial State, software only.
   0C37 EE                 8325 	.byte 238	; New LSB for software period.
                           8326 
   0C38 15                 8327 	.byte 21	; Non-initial State, software only.
                           8328 
   0C39 15                 8329 	.byte 21	; Non-initial State, software only.
                           8330 
   0C3A 55                 8331 	.byte 85	; Non-initial State, software only.
   0C3B EF                 8332 	.byte 239	; New LSB for software period.
                           8333 
   0C3C 15                 8334 	.byte 21	; Non-initial State, software only.
                           8335 
   0C3D 15                 8336 	.byte 21	; Non-initial State, software only.
                           8337 
   0C3E 51                 8338 	.byte 81	; Non-initial State, software only.
   0C3F F0                 8339 	.byte 240	; New LSB for software period.
                           8340 
   0C40 11                 8341 	.byte 17	; Non-initial State, software only.
                           8342 
   0C41 11                 8343 	.byte 17	; Non-initial State, software only.
                           8344 
   0C42 51                 8345 	.byte 81	; Non-initial State, software only.
   0C43 EF                 8346 	.byte 239	; New LSB for software period.
                           8347 
   0C44 11                 8348 	.byte 17	; Non-initial State, software only.
                           8349 
   0C45 11                 8350 	.byte 17	; Non-initial State, software only.
                           8351 
   0C46 4D                 8352 	.byte 77	; Non-initial State, software only.
   0C47 EE                 8353 	.byte 238	; New LSB for software period.
                           8354 
   0C48 0D                 8355 	.byte 13	; Non-initial State, software only.
                           8356 
   0C49 0D                 8357 	.byte 13	; Non-initial State, software only.
                           8358 
                           8359  .globl _Videopac_Subsong0_RegisterBlock_103_Loop
   0C4A                    8360 _Videopac_Subsong0_RegisterBlock_103_Loop:
   0C4A 4D                 8361 	.byte 77	; Non-initial State, software only.
   0C4B EF                 8362 	.byte 239	; New LSB for software period.
                           8363 
   0C4C 08                 8364 	.byte 8	; Loop to index 42.
                           8365  .globl _Videopac_Subsong0DisarkPointerRegionStart970
   0C4D                    8366 _Videopac_Subsong0DisarkPointerRegionStart970:
   0C4D 0C 4A              8367 	.word _Videopac_Subsong0_RegisterBlock_103_Loop
                           8368  .globl Videopac_Subsong0DisarkPointerRegionEnd970
   0C4F                    8369 Videopac_Subsong0DisarkPointerRegionEnd970:
                           8370 
                           8371 
                           8372  .globl _Videopac_Subsong0_RegisterBlock_104
   0C4F                    8373 _Videopac_Subsong0_RegisterBlock_104:
   0C4F 39                 8374 	.byte 57	; Initial State: software only.
   0C50 AA 01              8375 	.byte 170, 1	; Software period.
                           8376 
   0C52 1D                 8377 	.byte 29	; Non-initial State, software only.
                           8378 
   0C53 1D                 8379 	.byte 29	; Non-initial State, software only.
                           8380 
   0C54 21                 8381 	.byte 33	; Non-initial State, software only.
                           8382 
   0C55 21                 8383 	.byte 33	; Non-initial State, software only.
                           8384 
   0C56 21                 8385 	.byte 33	; Non-initial State, software only.
                           8386 
   0C57 61                 8387 	.byte 97	; Non-initial State, software only.
   0C58 AB                 8388 	.byte 171	; New LSB for software period.
                           8389 
   0C59 21                 8390 	.byte 33	; Non-initial State, software only.
                           8391 
   0C5A 21                 8392 	.byte 33	; Non-initial State, software only.
                           8393 
   0C5B 61                 8394 	.byte 97	; Non-initial State, software only.
   0C5C AA                 8395 	.byte 170	; New LSB for software period.
                           8396 
   0C5D 21                 8397 	.byte 33	; Non-initial State, software only.
                           8398 
   0C5E 21                 8399 	.byte 33	; Non-initial State, software only.
                           8400 
   0C5F 1D                 8401 	.byte 29	; Non-initial State, software only.
                           8402 
   0C60 1D                 8403 	.byte 29	; Non-initial State, software only.
                           8404 
   0C61 1D                 8405 	.byte 29	; Non-initial State, software only.
                           8406 
   0C62 5D                 8407 	.byte 93	; Non-initial State, software only.
   0C63 A9                 8408 	.byte 169	; New LSB for software period.
                           8409 
   0C64 1D                 8410 	.byte 29	; Non-initial State, software only.
                           8411 
   0C65 1D                 8412 	.byte 29	; Non-initial State, software only.
                           8413 
   0C66 5D                 8414 	.byte 93	; Non-initial State, software only.
   0C67 AA                 8415 	.byte 170	; New LSB for software period.
                           8416 
   0C68 1D                 8417 	.byte 29	; Non-initial State, software only.
                           8418 
   0C69 1D                 8419 	.byte 29	; Non-initial State, software only.
                           8420 
   0C6A 59                 8421 	.byte 89	; Non-initial State, software only.
   0C6B AB                 8422 	.byte 171	; New LSB for software period.
                           8423 
   0C6C 19                 8424 	.byte 25	; Non-initial State, software only.
                           8425 
   0C6D 19                 8426 	.byte 25	; Non-initial State, software only.
                           8427 
   0C6E 59                 8428 	.byte 89	; Non-initial State, software only.
   0C6F AA                 8429 	.byte 170	; New LSB for software period.
                           8430 
   0C70 19                 8431 	.byte 25	; Non-initial State, software only.
                           8432 
   0C71 19                 8433 	.byte 25	; Non-initial State, software only.
                           8434 
   0C72 55                 8435 	.byte 85	; Non-initial State, software only.
   0C73 A9                 8436 	.byte 169	; New LSB for software period.
                           8437 
   0C74 15                 8438 	.byte 21	; Non-initial State, software only.
                           8439 
   0C75 15                 8440 	.byte 21	; Non-initial State, software only.
                           8441 
   0C76 55                 8442 	.byte 85	; Non-initial State, software only.
   0C77 AA                 8443 	.byte 170	; New LSB for software period.
                           8444 
   0C78 15                 8445 	.byte 21	; Non-initial State, software only.
                           8446 
   0C79 15                 8447 	.byte 21	; Non-initial State, software only.
                           8448 
   0C7A 51                 8449 	.byte 81	; Non-initial State, software only.
   0C7B AB                 8450 	.byte 171	; New LSB for software period.
                           8451 
   0C7C 11                 8452 	.byte 17	; Non-initial State, software only.
                           8453 
   0C7D 11                 8454 	.byte 17	; Non-initial State, software only.
                           8455 
   0C7E 51                 8456 	.byte 81	; Non-initial State, software only.
   0C7F AA                 8457 	.byte 170	; New LSB for software period.
                           8458 
   0C80 11                 8459 	.byte 17	; Non-initial State, software only.
                           8460 
   0C81 11                 8461 	.byte 17	; Non-initial State, software only.
                           8462 
   0C82 4D                 8463 	.byte 77	; Non-initial State, software only.
   0C83 A9                 8464 	.byte 169	; New LSB for software period.
                           8465 
   0C84 0D                 8466 	.byte 13	; Non-initial State, software only.
                           8467 
   0C85 0D                 8468 	.byte 13	; Non-initial State, software only.
                           8469 
                           8470  .globl _Videopac_Subsong0_RegisterBlock_104_Loop
   0C86                    8471 _Videopac_Subsong0_RegisterBlock_104_Loop:
   0C86 4D                 8472 	.byte 77	; Non-initial State, software only.
   0C87 AA                 8473 	.byte 170	; New LSB for software period.
                           8474 
   0C88 08                 8475 	.byte 8	; Loop to index 42.
                           8476  .globl _Videopac_Subsong0DisarkPointerRegionStart971
   0C89                    8477 _Videopac_Subsong0DisarkPointerRegionStart971:
   0C89 0C 86              8478 	.word _Videopac_Subsong0_RegisterBlock_104_Loop
                           8479  .globl Videopac_Subsong0DisarkPointerRegionEnd971
   0C8B                    8480 Videopac_Subsong0DisarkPointerRegionEnd971:
                           8481 
                           8482 
                           8483  .globl _Videopac_Subsong0_RegisterBlock_105
   0C8B                    8484 _Videopac_Subsong0_RegisterBlock_105:
   0C8B 39                 8485 	.byte 57	; Initial State: software only.
   0C8C FD 00              8486 	.byte 253, 0	; Software period.
                           8487 
   0C8E 1D                 8488 	.byte 29	; Non-initial State, software only.
                           8489 
   0C8F 1D                 8490 	.byte 29	; Non-initial State, software only.
                           8491 
   0C90 21                 8492 	.byte 33	; Non-initial State, software only.
                           8493 
   0C91 21                 8494 	.byte 33	; Non-initial State, software only.
                           8495 
   0C92 21                 8496 	.byte 33	; Non-initial State, software only.
                           8497 
   0C93 61                 8498 	.byte 97	; Non-initial State, software only.
   0C94 FE                 8499 	.byte 254	; New LSB for software period.
                           8500 
   0C95 21                 8501 	.byte 33	; Non-initial State, software only.
                           8502 
   0C96 21                 8503 	.byte 33	; Non-initial State, software only.
                           8504 
   0C97 61                 8505 	.byte 97	; Non-initial State, software only.
   0C98 FD                 8506 	.byte 253	; New LSB for software period.
                           8507 
   0C99 21                 8508 	.byte 33	; Non-initial State, software only.
                           8509 
   0C9A 21                 8510 	.byte 33	; Non-initial State, software only.
                           8511 
   0C9B 1D                 8512 	.byte 29	; Non-initial State, software only.
                           8513 
   0C9C 1D                 8514 	.byte 29	; Non-initial State, software only.
                           8515 
   0C9D 1D                 8516 	.byte 29	; Non-initial State, software only.
                           8517 
   0C9E 5D                 8518 	.byte 93	; Non-initial State, software only.
   0C9F FC                 8519 	.byte 252	; New LSB for software period.
                           8520 
   0CA0 1D                 8521 	.byte 29	; Non-initial State, software only.
                           8522 
   0CA1 1D                 8523 	.byte 29	; Non-initial State, software only.
                           8524 
   0CA2 5D                 8525 	.byte 93	; Non-initial State, software only.
   0CA3 FD                 8526 	.byte 253	; New LSB for software period.
                           8527 
   0CA4 1D                 8528 	.byte 29	; Non-initial State, software only.
                           8529 
   0CA5 1D                 8530 	.byte 29	; Non-initial State, software only.
                           8531 
   0CA6 59                 8532 	.byte 89	; Non-initial State, software only.
   0CA7 FE                 8533 	.byte 254	; New LSB for software period.
                           8534 
   0CA8 19                 8535 	.byte 25	; Non-initial State, software only.
                           8536 
   0CA9 19                 8537 	.byte 25	; Non-initial State, software only.
                           8538 
   0CAA 59                 8539 	.byte 89	; Non-initial State, software only.
   0CAB FD                 8540 	.byte 253	; New LSB for software period.
                           8541 
   0CAC 19                 8542 	.byte 25	; Non-initial State, software only.
                           8543 
   0CAD 19                 8544 	.byte 25	; Non-initial State, software only.
                           8545 
   0CAE 55                 8546 	.byte 85	; Non-initial State, software only.
   0CAF FC                 8547 	.byte 252	; New LSB for software period.
                           8548 
   0CB0 15                 8549 	.byte 21	; Non-initial State, software only.
                           8550 
   0CB1 15                 8551 	.byte 21	; Non-initial State, software only.
                           8552 
   0CB2 55                 8553 	.byte 85	; Non-initial State, software only.
   0CB3 FD                 8554 	.byte 253	; New LSB for software period.
                           8555 
   0CB4 15                 8556 	.byte 21	; Non-initial State, software only.
                           8557 
   0CB5 15                 8558 	.byte 21	; Non-initial State, software only.
                           8559 
   0CB6 51                 8560 	.byte 81	; Non-initial State, software only.
   0CB7 FE                 8561 	.byte 254	; New LSB for software period.
                           8562 
   0CB8 11                 8563 	.byte 17	; Non-initial State, software only.
                           8564 
   0CB9 11                 8565 	.byte 17	; Non-initial State, software only.
                           8566 
   0CBA 51                 8567 	.byte 81	; Non-initial State, software only.
   0CBB FD                 8568 	.byte 253	; New LSB for software period.
                           8569 
   0CBC 11                 8570 	.byte 17	; Non-initial State, software only.
                           8571 
   0CBD 11                 8572 	.byte 17	; Non-initial State, software only.
                           8573 
   0CBE 4D                 8574 	.byte 77	; Non-initial State, software only.
   0CBF FC                 8575 	.byte 252	; New LSB for software period.
                           8576 
   0CC0 0D                 8577 	.byte 13	; Non-initial State, software only.
                           8578 
   0CC1 0D                 8579 	.byte 13	; Non-initial State, software only.
                           8580 
                           8581  .globl _Videopac_Subsong0_RegisterBlock_105_Loop
   0CC2                    8582 _Videopac_Subsong0_RegisterBlock_105_Loop:
   0CC2 4D                 8583 	.byte 77	; Non-initial State, software only.
   0CC3 FD                 8584 	.byte 253	; New LSB for software period.
                           8585 
   0CC4 08                 8586 	.byte 8	; Loop to index 42.
                           8587  .globl _Videopac_Subsong0DisarkPointerRegionStart972
   0CC5                    8588 _Videopac_Subsong0DisarkPointerRegionStart972:
   0CC5 0C C2              8589 	.word _Videopac_Subsong0_RegisterBlock_105_Loop
                           8590  .globl Videopac_Subsong0DisarkPointerRegionEnd972
   0CC7                    8591 Videopac_Subsong0DisarkPointerRegionEnd972:
                           8592 
                           8593 
                           8594  .globl _Videopac_Subsong0_RegisterBlock_106
   0CC7                    8595 _Videopac_Subsong0_RegisterBlock_106:
   0CC7 39                 8596 	.byte 57	; Initial State: software only.
   0CC8 DE 01              8597 	.byte 222, 1	; Software period.
                           8598 
   0CCA 1D                 8599 	.byte 29	; Non-initial State, software only.
                           8600 
   0CCB 1D                 8601 	.byte 29	; Non-initial State, software only.
                           8602 
   0CCC 21                 8603 	.byte 33	; Non-initial State, software only.
                           8604 
   0CCD 21                 8605 	.byte 33	; Non-initial State, software only.
                           8606 
   0CCE 21                 8607 	.byte 33	; Non-initial State, software only.
                           8608 
   0CCF 61                 8609 	.byte 97	; Non-initial State, software only.
   0CD0 DF                 8610 	.byte 223	; New LSB for software period.
                           8611 
   0CD1 21                 8612 	.byte 33	; Non-initial State, software only.
                           8613 
   0CD2 21                 8614 	.byte 33	; Non-initial State, software only.
                           8615 
   0CD3 61                 8616 	.byte 97	; Non-initial State, software only.
   0CD4 DE                 8617 	.byte 222	; New LSB for software period.
                           8618 
   0CD5 21                 8619 	.byte 33	; Non-initial State, software only.
                           8620 
   0CD6 21                 8621 	.byte 33	; Non-initial State, software only.
                           8622 
   0CD7 1D                 8623 	.byte 29	; Non-initial State, software only.
                           8624 
   0CD8 1D                 8625 	.byte 29	; Non-initial State, software only.
                           8626 
   0CD9 1D                 8627 	.byte 29	; Non-initial State, software only.
                           8628 
   0CDA 5D                 8629 	.byte 93	; Non-initial State, software only.
   0CDB DD                 8630 	.byte 221	; New LSB for software period.
                           8631 
   0CDC 1D                 8632 	.byte 29	; Non-initial State, software only.
                           8633 
   0CDD 1D                 8634 	.byte 29	; Non-initial State, software only.
                           8635 
   0CDE 5D                 8636 	.byte 93	; Non-initial State, software only.
   0CDF DE                 8637 	.byte 222	; New LSB for software period.
                           8638 
   0CE0 1D                 8639 	.byte 29	; Non-initial State, software only.
                           8640 
   0CE1 1D                 8641 	.byte 29	; Non-initial State, software only.
                           8642 
   0CE2 59                 8643 	.byte 89	; Non-initial State, software only.
   0CE3 DF                 8644 	.byte 223	; New LSB for software period.
                           8645 
   0CE4 19                 8646 	.byte 25	; Non-initial State, software only.
                           8647 
   0CE5 19                 8648 	.byte 25	; Non-initial State, software only.
                           8649 
   0CE6 59                 8650 	.byte 89	; Non-initial State, software only.
   0CE7 DE                 8651 	.byte 222	; New LSB for software period.
                           8652 
   0CE8 19                 8653 	.byte 25	; Non-initial State, software only.
                           8654 
   0CE9 19                 8655 	.byte 25	; Non-initial State, software only.
                           8656 
   0CEA 55                 8657 	.byte 85	; Non-initial State, software only.
   0CEB DD                 8658 	.byte 221	; New LSB for software period.
                           8659 
   0CEC 15                 8660 	.byte 21	; Non-initial State, software only.
                           8661 
   0CED 15                 8662 	.byte 21	; Non-initial State, software only.
                           8663 
   0CEE 55                 8664 	.byte 85	; Non-initial State, software only.
   0CEF DE                 8665 	.byte 222	; New LSB for software period.
                           8666 
   0CF0 15                 8667 	.byte 21	; Non-initial State, software only.
                           8668 
   0CF1 15                 8669 	.byte 21	; Non-initial State, software only.
                           8670 
   0CF2 51                 8671 	.byte 81	; Non-initial State, software only.
   0CF3 DF                 8672 	.byte 223	; New LSB for software period.
                           8673 
   0CF4 11                 8674 	.byte 17	; Non-initial State, software only.
                           8675 
   0CF5 11                 8676 	.byte 17	; Non-initial State, software only.
                           8677 
   0CF6 51                 8678 	.byte 81	; Non-initial State, software only.
   0CF7 DE                 8679 	.byte 222	; New LSB for software period.
                           8680 
   0CF8 11                 8681 	.byte 17	; Non-initial State, software only.
                           8682 
   0CF9 11                 8683 	.byte 17	; Non-initial State, software only.
                           8684 
   0CFA 4D                 8685 	.byte 77	; Non-initial State, software only.
   0CFB DD                 8686 	.byte 221	; New LSB for software period.
                           8687 
   0CFC 0D                 8688 	.byte 13	; Non-initial State, software only.
                           8689 
   0CFD 0D                 8690 	.byte 13	; Non-initial State, software only.
                           8691 
                           8692  .globl _Videopac_Subsong0_RegisterBlock_106_Loop
   0CFE                    8693 _Videopac_Subsong0_RegisterBlock_106_Loop:
   0CFE 4D                 8694 	.byte 77	; Non-initial State, software only.
   0CFF DE                 8695 	.byte 222	; New LSB for software period.
                           8696 
   0D00 08                 8697 	.byte 8	; Loop to index 42.
                           8698  .globl _Videopac_Subsong0DisarkPointerRegionStart973
   0D01                    8699 _Videopac_Subsong0DisarkPointerRegionStart973:
   0D01 0C FE              8700 	.word _Videopac_Subsong0_RegisterBlock_106_Loop
                           8701  .globl Videopac_Subsong0DisarkPointerRegionEnd973
   0D03                    8702 Videopac_Subsong0DisarkPointerRegionEnd973:
                           8703 
                           8704 
                           8705  .globl _Videopac_Subsong0_RegisterBlock_111
   0D03                    8706 _Videopac_Subsong0_RegisterBlock_111:
   0D03 19                 8707 	.byte 25	; Initial State: software only.
   0D04 66 01              8708 	.byte 102, 1	; Software period.
                           8709 
   0D06 0D                 8710 	.byte 13	; Non-initial State, software only.
                           8711 
   0D07 0D                 8712 	.byte 13	; Non-initial State, software only.
                           8713 
   0D08 11                 8714 	.byte 17	; Non-initial State, software only.
                           8715 
   0D09 11                 8716 	.byte 17	; Non-initial State, software only.
                           8717 
   0D0A 11                 8718 	.byte 17	; Non-initial State, software only.
                           8719 
   0D0B 51                 8720 	.byte 81	; Non-initial State, software only.
   0D0C 67                 8721 	.byte 103	; New LSB for software period.
                           8722 
   0D0D 11                 8723 	.byte 17	; Non-initial State, software only.
                           8724 
   0D0E 11                 8725 	.byte 17	; Non-initial State, software only.
                           8726 
   0D0F 51                 8727 	.byte 81	; Non-initial State, software only.
   0D10 66                 8728 	.byte 102	; New LSB for software period.
                           8729 
   0D11 11                 8730 	.byte 17	; Non-initial State, software only.
                           8731 
   0D12 11                 8732 	.byte 17	; Non-initial State, software only.
                           8733 
   0D13 0D                 8734 	.byte 13	; Non-initial State, software only.
                           8735 
   0D14 0D                 8736 	.byte 13	; Non-initial State, software only.
                           8737 
   0D15 0D                 8738 	.byte 13	; Non-initial State, software only.
                           8739 
   0D16 4D                 8740 	.byte 77	; Non-initial State, software only.
   0D17 65                 8741 	.byte 101	; New LSB for software period.
                           8742 
   0D18 0D                 8743 	.byte 13	; Non-initial State, software only.
                           8744 
   0D19 0D                 8745 	.byte 13	; Non-initial State, software only.
                           8746 
   0D1A 4D                 8747 	.byte 77	; Non-initial State, software only.
   0D1B 66                 8748 	.byte 102	; New LSB for software period.
                           8749 
   0D1C 0D                 8750 	.byte 13	; Non-initial State, software only.
                           8751 
   0D1D 0D                 8752 	.byte 13	; Non-initial State, software only.
                           8753 
   0D1E 49                 8754 	.byte 73	; Non-initial State, software only.
   0D1F 67                 8755 	.byte 103	; New LSB for software period.
                           8756 
   0D20 09                 8757 	.byte 9	; Non-initial State, software only.
                           8758 
   0D21 09                 8759 	.byte 9	; Non-initial State, software only.
                           8760 
   0D22 49                 8761 	.byte 73	; Non-initial State, software only.
   0D23 66                 8762 	.byte 102	; New LSB for software period.
                           8763 
   0D24 09                 8764 	.byte 9	; Non-initial State, software only.
                           8765 
   0D25 09                 8766 	.byte 9	; Non-initial State, software only.
                           8767 
   0D26 45                 8768 	.byte 69	; Non-initial State, software only.
   0D27 65                 8769 	.byte 101	; New LSB for software period.
                           8770 
   0D28 05                 8771 	.byte 5	; Non-initial State, software only.
                           8772 
   0D29 05                 8773 	.byte 5	; Non-initial State, software only.
                           8774 
   0D2A 45                 8775 	.byte 69	; Non-initial State, software only.
   0D2B 66                 8776 	.byte 102	; New LSB for software period.
                           8777 
   0D2C 05                 8778 	.byte 5	; Non-initial State, software only.
                           8779 
   0D2D 05                 8780 	.byte 5	; Non-initial State, software only.
                           8781 
   0D2E 08                 8782 	.byte 8
                           8783  .globl _Videopac_Subsong0DisarkPointerRegionStart974
   0D2F                    8784 _Videopac_Subsong0DisarkPointerRegionStart974:
   0D2F 08 10              8785 	.word _Videopac_Subsong0_RegisterBlock_7 + 43	; Optimization: goto common Block at index 33.
                           8786  .globl Videopac_Subsong0DisarkPointerRegionEnd974
   0D31                    8787 Videopac_Subsong0DisarkPointerRegionEnd974:
                           8788 
                           8789  .globl _Videopac_Subsong0_RegisterBlock_113
   0D31                    8790 _Videopac_Subsong0_RegisterBlock_113:
   0D31 19                 8791 	.byte 25	; Initial State: software only.
   0D32 7B 01              8792 	.byte 123, 1	; Software period.
                           8793 
   0D34 0D                 8794 	.byte 13	; Non-initial State, software only.
                           8795 
   0D35 0D                 8796 	.byte 13	; Non-initial State, software only.
                           8797 
   0D36 11                 8798 	.byte 17	; Non-initial State, software only.
                           8799 
   0D37 11                 8800 	.byte 17	; Non-initial State, software only.
                           8801 
   0D38 11                 8802 	.byte 17	; Non-initial State, software only.
                           8803 
   0D39 51                 8804 	.byte 81	; Non-initial State, software only.
   0D3A 7C                 8805 	.byte 124	; New LSB for software period.
                           8806 
   0D3B 11                 8807 	.byte 17	; Non-initial State, software only.
                           8808 
   0D3C 11                 8809 	.byte 17	; Non-initial State, software only.
                           8810 
   0D3D 51                 8811 	.byte 81	; Non-initial State, software only.
   0D3E 7B                 8812 	.byte 123	; New LSB for software period.
                           8813 
   0D3F 11                 8814 	.byte 17	; Non-initial State, software only.
                           8815 
   0D40 11                 8816 	.byte 17	; Non-initial State, software only.
                           8817 
   0D41 0D                 8818 	.byte 13	; Non-initial State, software only.
                           8819 
   0D42 0D                 8820 	.byte 13	; Non-initial State, software only.
                           8821 
   0D43 0D                 8822 	.byte 13	; Non-initial State, software only.
                           8823 
   0D44 4D                 8824 	.byte 77	; Non-initial State, software only.
   0D45 7A                 8825 	.byte 122	; New LSB for software period.
                           8826 
   0D46 0D                 8827 	.byte 13	; Non-initial State, software only.
                           8828 
   0D47 0D                 8829 	.byte 13	; Non-initial State, software only.
                           8830 
   0D48 4D                 8831 	.byte 77	; Non-initial State, software only.
   0D49 7B                 8832 	.byte 123	; New LSB for software period.
                           8833 
   0D4A 0D                 8834 	.byte 13	; Non-initial State, software only.
                           8835 
   0D4B 0D                 8836 	.byte 13	; Non-initial State, software only.
                           8837 
   0D4C 49                 8838 	.byte 73	; Non-initial State, software only.
   0D4D 7C                 8839 	.byte 124	; New LSB for software period.
                           8840 
   0D4E 09                 8841 	.byte 9	; Non-initial State, software only.
                           8842 
   0D4F 09                 8843 	.byte 9	; Non-initial State, software only.
                           8844 
   0D50 49                 8845 	.byte 73	; Non-initial State, software only.
   0D51 7B                 8846 	.byte 123	; New LSB for software period.
                           8847 
   0D52 09                 8848 	.byte 9	; Non-initial State, software only.
                           8849 
   0D53 09                 8850 	.byte 9	; Non-initial State, software only.
                           8851 
   0D54 45                 8852 	.byte 69	; Non-initial State, software only.
   0D55 7A                 8853 	.byte 122	; New LSB for software period.
                           8854 
   0D56 05                 8855 	.byte 5	; Non-initial State, software only.
                           8856 
   0D57 05                 8857 	.byte 5	; Non-initial State, software only.
                           8858 
   0D58 45                 8859 	.byte 69	; Non-initial State, software only.
   0D59 7B                 8860 	.byte 123	; New LSB for software period.
                           8861 
   0D5A 05                 8862 	.byte 5	; Non-initial State, software only.
                           8863 
   0D5B 05                 8864 	.byte 5	; Non-initial State, software only.
                           8865 
   0D5C 08                 8866 	.byte 8
                           8867  .globl _Videopac_Subsong0DisarkPointerRegionStart975
   0D5D                    8868 _Videopac_Subsong0DisarkPointerRegionStart975:
   0D5D 0A 9A              8869 	.word _Videopac_Subsong0_RegisterBlock_92 + 43	; Optimization: goto common Block at index 33.
                           8870  .globl Videopac_Subsong0DisarkPointerRegionEnd975
   0D5F                    8871 Videopac_Subsong0DisarkPointerRegionEnd975:
                           8872 
                           8873  .globl _Videopac_Subsong0_RegisterBlock_114
   0D5F                    8874 _Videopac_Subsong0_RegisterBlock_114:
   0D5F 19                 8875 	.byte 25	; Initial State: software only.
   0D60 EF 00              8876 	.byte 239, 0	; Software period.
                           8877 
   0D62 0D                 8878 	.byte 13	; Non-initial State, software only.
                           8879 
   0D63 0D                 8880 	.byte 13	; Non-initial State, software only.
                           8881 
   0D64 11                 8882 	.byte 17	; Non-initial State, software only.
                           8883 
   0D65 11                 8884 	.byte 17	; Non-initial State, software only.
                           8885 
   0D66 11                 8886 	.byte 17	; Non-initial State, software only.
                           8887 
   0D67 51                 8888 	.byte 81	; Non-initial State, software only.
   0D68 F0                 8889 	.byte 240	; New LSB for software period.
                           8890 
   0D69 11                 8891 	.byte 17	; Non-initial State, software only.
                           8892 
   0D6A 11                 8893 	.byte 17	; Non-initial State, software only.
                           8894 
   0D6B 51                 8895 	.byte 81	; Non-initial State, software only.
   0D6C EF                 8896 	.byte 239	; New LSB for software period.
                           8897 
   0D6D 11                 8898 	.byte 17	; Non-initial State, software only.
                           8899 
   0D6E 11                 8900 	.byte 17	; Non-initial State, software only.
                           8901 
   0D6F 0D                 8902 	.byte 13	; Non-initial State, software only.
                           8903 
   0D70 0D                 8904 	.byte 13	; Non-initial State, software only.
                           8905 
   0D71 0D                 8906 	.byte 13	; Non-initial State, software only.
                           8907 
   0D72 4D                 8908 	.byte 77	; Non-initial State, software only.
   0D73 EE                 8909 	.byte 238	; New LSB for software period.
                           8910 
   0D74 0D                 8911 	.byte 13	; Non-initial State, software only.
                           8912 
   0D75 0D                 8913 	.byte 13	; Non-initial State, software only.
                           8914 
   0D76 4D                 8915 	.byte 77	; Non-initial State, software only.
   0D77 EF                 8916 	.byte 239	; New LSB for software period.
                           8917 
   0D78 0D                 8918 	.byte 13	; Non-initial State, software only.
                           8919 
   0D79 0D                 8920 	.byte 13	; Non-initial State, software only.
                           8921 
   0D7A 49                 8922 	.byte 73	; Non-initial State, software only.
   0D7B F0                 8923 	.byte 240	; New LSB for software period.
                           8924 
   0D7C 09                 8925 	.byte 9	; Non-initial State, software only.
                           8926 
   0D7D 09                 8927 	.byte 9	; Non-initial State, software only.
                           8928 
   0D7E 49                 8929 	.byte 73	; Non-initial State, software only.
   0D7F EF                 8930 	.byte 239	; New LSB for software period.
                           8931 
   0D80 09                 8932 	.byte 9	; Non-initial State, software only.
                           8933 
   0D81 09                 8934 	.byte 9	; Non-initial State, software only.
                           8935 
   0D82 45                 8936 	.byte 69	; Non-initial State, software only.
   0D83 EE                 8937 	.byte 238	; New LSB for software period.
                           8938 
   0D84 05                 8939 	.byte 5	; Non-initial State, software only.
                           8940 
   0D85 05                 8941 	.byte 5	; Non-initial State, software only.
                           8942 
   0D86 45                 8943 	.byte 69	; Non-initial State, software only.
   0D87 EF                 8944 	.byte 239	; New LSB for software period.
                           8945 
   0D88 05                 8946 	.byte 5	; Non-initial State, software only.
                           8947 
   0D89 05                 8948 	.byte 5	; Non-initial State, software only.
                           8949 
   0D8A 08                 8950 	.byte 8
                           8951  .globl _Videopac_Subsong0DisarkPointerRegionStart976
   0D8B                    8952 _Videopac_Subsong0DisarkPointerRegionStart976:
   0D8B 0A D6              8953 	.word _Videopac_Subsong0_RegisterBlock_93 + 43	; Optimization: goto common Block at index 33.
                           8954  .globl Videopac_Subsong0DisarkPointerRegionEnd976
   0D8D                    8955 Videopac_Subsong0DisarkPointerRegionEnd976:
                           8956 
                           8957  .globl _Videopac_Subsong0_RegisterBlock_115
   0D8D                    8958 _Videopac_Subsong0_RegisterBlock_115:
   0D8D 19                 8959 	.byte 25	; Initial State: software only.
   0D8E AA 01              8960 	.byte 170, 1	; Software period.
                           8961 
   0D90 0D                 8962 	.byte 13	; Non-initial State, software only.
                           8963 
   0D91 0D                 8964 	.byte 13	; Non-initial State, software only.
                           8965 
   0D92 11                 8966 	.byte 17	; Non-initial State, software only.
                           8967 
   0D93 11                 8968 	.byte 17	; Non-initial State, software only.
                           8969 
   0D94 11                 8970 	.byte 17	; Non-initial State, software only.
                           8971 
   0D95 51                 8972 	.byte 81	; Non-initial State, software only.
   0D96 AB                 8973 	.byte 171	; New LSB for software period.
                           8974 
   0D97 11                 8975 	.byte 17	; Non-initial State, software only.
                           8976 
   0D98 11                 8977 	.byte 17	; Non-initial State, software only.
                           8978 
   0D99 51                 8979 	.byte 81	; Non-initial State, software only.
   0D9A AA                 8980 	.byte 170	; New LSB for software period.
                           8981 
   0D9B 11                 8982 	.byte 17	; Non-initial State, software only.
                           8983 
   0D9C 11                 8984 	.byte 17	; Non-initial State, software only.
                           8985 
   0D9D 0D                 8986 	.byte 13	; Non-initial State, software only.
                           8987 
   0D9E 0D                 8988 	.byte 13	; Non-initial State, software only.
                           8989 
   0D9F 0D                 8990 	.byte 13	; Non-initial State, software only.
                           8991 
   0DA0 4D                 8992 	.byte 77	; Non-initial State, software only.
   0DA1 A9                 8993 	.byte 169	; New LSB for software period.
                           8994 
   0DA2 0D                 8995 	.byte 13	; Non-initial State, software only.
                           8996 
   0DA3 0D                 8997 	.byte 13	; Non-initial State, software only.
                           8998 
   0DA4 4D                 8999 	.byte 77	; Non-initial State, software only.
   0DA5 AA                 9000 	.byte 170	; New LSB for software period.
                           9001 
   0DA6 0D                 9002 	.byte 13	; Non-initial State, software only.
                           9003 
   0DA7 0D                 9004 	.byte 13	; Non-initial State, software only.
                           9005 
   0DA8 49                 9006 	.byte 73	; Non-initial State, software only.
   0DA9 AB                 9007 	.byte 171	; New LSB for software period.
                           9008 
   0DAA 09                 9009 	.byte 9	; Non-initial State, software only.
                           9010 
   0DAB 09                 9011 	.byte 9	; Non-initial State, software only.
                           9012 
   0DAC 49                 9013 	.byte 73	; Non-initial State, software only.
   0DAD AA                 9014 	.byte 170	; New LSB for software period.
                           9015 
   0DAE 09                 9016 	.byte 9	; Non-initial State, software only.
                           9017 
   0DAF 09                 9018 	.byte 9	; Non-initial State, software only.
                           9019 
   0DB0 45                 9020 	.byte 69	; Non-initial State, software only.
   0DB1 A9                 9021 	.byte 169	; New LSB for software period.
                           9022 
   0DB2 05                 9023 	.byte 5	; Non-initial State, software only.
                           9024 
   0DB3 05                 9025 	.byte 5	; Non-initial State, software only.
                           9026 
   0DB4 45                 9027 	.byte 69	; Non-initial State, software only.
   0DB5 AA                 9028 	.byte 170	; New LSB for software period.
                           9029 
   0DB6 05                 9030 	.byte 5	; Non-initial State, software only.
                           9031 
   0DB7 05                 9032 	.byte 5	; Non-initial State, software only.
                           9033 
   0DB8 08                 9034 	.byte 8
                           9035  .globl _Videopac_Subsong0DisarkPointerRegionStart977
   0DB9                    9036 _Videopac_Subsong0DisarkPointerRegionStart977:
   0DB9 0B 12              9037 	.word _Videopac_Subsong0_RegisterBlock_94 + 43	; Optimization: goto common Block at index 33.
                           9038  .globl Videopac_Subsong0DisarkPointerRegionEnd977
   0DBB                    9039 Videopac_Subsong0DisarkPointerRegionEnd977:
                           9040 
                           9041  .globl _Videopac_Subsong0_RegisterBlock_116
   0DBB                    9042 _Videopac_Subsong0_RegisterBlock_116:
   0DBB 19                 9043 	.byte 25	; Initial State: software only.
   0DBC FD 00              9044 	.byte 253, 0	; Software period.
                           9045 
   0DBE 0D                 9046 	.byte 13	; Non-initial State, software only.
                           9047 
   0DBF 0D                 9048 	.byte 13	; Non-initial State, software only.
                           9049 
   0DC0 11                 9050 	.byte 17	; Non-initial State, software only.
                           9051 
   0DC1 11                 9052 	.byte 17	; Non-initial State, software only.
                           9053 
   0DC2 11                 9054 	.byte 17	; Non-initial State, software only.
                           9055 
   0DC3 51                 9056 	.byte 81	; Non-initial State, software only.
   0DC4 FE                 9057 	.byte 254	; New LSB for software period.
                           9058 
   0DC5 11                 9059 	.byte 17	; Non-initial State, software only.
                           9060 
   0DC6 11                 9061 	.byte 17	; Non-initial State, software only.
                           9062 
   0DC7 51                 9063 	.byte 81	; Non-initial State, software only.
   0DC8 FD                 9064 	.byte 253	; New LSB for software period.
                           9065 
   0DC9 11                 9066 	.byte 17	; Non-initial State, software only.
                           9067 
   0DCA 11                 9068 	.byte 17	; Non-initial State, software only.
                           9069 
   0DCB 0D                 9070 	.byte 13	; Non-initial State, software only.
                           9071 
   0DCC 0D                 9072 	.byte 13	; Non-initial State, software only.
                           9073 
   0DCD 0D                 9074 	.byte 13	; Non-initial State, software only.
                           9075 
   0DCE 4D                 9076 	.byte 77	; Non-initial State, software only.
   0DCF FC                 9077 	.byte 252	; New LSB for software period.
                           9078 
   0DD0 0D                 9079 	.byte 13	; Non-initial State, software only.
                           9080 
   0DD1 0D                 9081 	.byte 13	; Non-initial State, software only.
                           9082 
   0DD2 4D                 9083 	.byte 77	; Non-initial State, software only.
   0DD3 FD                 9084 	.byte 253	; New LSB for software period.
                           9085 
   0DD4 0D                 9086 	.byte 13	; Non-initial State, software only.
                           9087 
   0DD5 0D                 9088 	.byte 13	; Non-initial State, software only.
                           9089 
   0DD6 49                 9090 	.byte 73	; Non-initial State, software only.
   0DD7 FE                 9091 	.byte 254	; New LSB for software period.
                           9092 
   0DD8 09                 9093 	.byte 9	; Non-initial State, software only.
                           9094 
   0DD9 09                 9095 	.byte 9	; Non-initial State, software only.
                           9096 
   0DDA 49                 9097 	.byte 73	; Non-initial State, software only.
   0DDB FD                 9098 	.byte 253	; New LSB for software period.
                           9099 
   0DDC 09                 9100 	.byte 9	; Non-initial State, software only.
                           9101 
   0DDD 09                 9102 	.byte 9	; Non-initial State, software only.
                           9103 
   0DDE 45                 9104 	.byte 69	; Non-initial State, software only.
   0DDF FC                 9105 	.byte 252	; New LSB for software period.
                           9106 
   0DE0 05                 9107 	.byte 5	; Non-initial State, software only.
                           9108 
   0DE1 05                 9109 	.byte 5	; Non-initial State, software only.
                           9110 
   0DE2 45                 9111 	.byte 69	; Non-initial State, software only.
   0DE3 FD                 9112 	.byte 253	; New LSB for software period.
                           9113 
   0DE4 05                 9114 	.byte 5	; Non-initial State, software only.
                           9115 
   0DE5 05                 9116 	.byte 5	; Non-initial State, software only.
                           9117 
   0DE6 08                 9118 	.byte 8
                           9119  .globl _Videopac_Subsong0DisarkPointerRegionStart978
   0DE7                    9120 _Videopac_Subsong0DisarkPointerRegionStart978:
   0DE7 0B 4E              9121 	.word _Videopac_Subsong0_RegisterBlock_95 + 43	; Optimization: goto common Block at index 33.
                           9122  .globl Videopac_Subsong0DisarkPointerRegionEnd978
   0DE9                    9123 Videopac_Subsong0DisarkPointerRegionEnd978:
                           9124 
                           9125  .globl _Videopac_Subsong0_RegisterBlock_0
   0DE9                    9126 _Videopac_Subsong0_RegisterBlock_0:
   0DE9 00                 9127 	.byte 0	; Initial State: no software, no hardware.
                           9128 
   0DEA 08                 9129 	.byte 8
                           9130  .globl _Videopac_Subsong0DisarkPointerRegionStart979
   0DEB                    9131 _Videopac_Subsong0DisarkPointerRegionStart979:
   0DEB 06 F1              9132 	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
                           9133  .globl Videopac_Subsong0DisarkPointerRegionEnd979
   0DED                    9134 Videopac_Subsong0DisarkPointerRegionEnd979:
                           9135 
                           9136  .globl _Videopac_Subsong0_RegisterBlock_29
   0DED                    9137 _Videopac_Subsong0_RegisterBlock_29:
   0DED 11                 9138 	.byte 17	; Initial State: software only.
   0DEE 1D 01              9139 	.byte 29, 1	; Software period.
                           9140 
   0DF0 08                 9141 	.byte 8
                           9142  .globl _Videopac_Subsong0DisarkPointerRegionStart980
   0DF1                    9143 _Videopac_Subsong0DisarkPointerRegionStart980:
   0DF1 06 FF              9144 	.word _Videopac_Subsong0_RegisterBlock_1 + 10	; Optimization: goto common Block at index 7.
                           9145  .globl Videopac_Subsong0DisarkPointerRegionEnd980
   0DF3                    9146 Videopac_Subsong0DisarkPointerRegionEnd980:
                           9147 
                           9148  .globl _Videopac_Subsong0_RegisterBlock_59
   0DF3                    9149 _Videopac_Subsong0_RegisterBlock_59:
   0DF3 11                 9150 	.byte 17	; Initial State: software only.
   0DF4 D6 00              9151 	.byte 214, 0	; Software period.
                           9152 
   0DF6 08                 9153 	.byte 8
                           9154  .globl _Videopac_Subsong0DisarkPointerRegionStart981
   0DF7                    9155 _Videopac_Subsong0DisarkPointerRegionStart981:
   0DF7 0A 4B              9156 	.word _Videopac_Subsong0_RegisterBlock_91 + 10	; Optimization: goto common Block at index 7.
                           9157  .globl Videopac_Subsong0DisarkPointerRegionEnd981
   0DF9                    9158 Videopac_Subsong0DisarkPointerRegionEnd981:
                           9159 
                           9160  .globl _Videopac_Subsong0_RegisterBlock_27
   0DF9                    9161 _Videopac_Subsong0_RegisterBlock_27:
   0DF9 19                 9162 	.byte 25	; Initial State: software only.
   0DFA 66 01              9163 	.byte 102, 1	; Software period.
                           9164 
   0DFC 08                 9165 	.byte 8
                           9166  .globl _Videopac_Subsong0DisarkPointerRegionStart982
   0DFD                    9167 _Videopac_Subsong0DisarkPointerRegionStart982:
   0DFD 0D 06              9168 	.word _Videopac_Subsong0_RegisterBlock_111 + 3	; Optimization: goto common Block at index 1.
                           9169  .globl Videopac_Subsong0DisarkPointerRegionEnd982
   0DFF                    9170 Videopac_Subsong0DisarkPointerRegionEnd982:
                           9171 
                           9172  .globl _Videopac_Subsong0_RegisterBlock_117
   0DFF                    9173 _Videopac_Subsong0_RegisterBlock_117:
   0DFF 19                 9174 	.byte 25	; Initial State: software only.
   0E00 DE 01              9175 	.byte 222, 1	; Software period.
                           9176 
   0E02 0D                 9177 	.byte 13	; Non-initial State, software only.
                           9178 
   0E03 0D                 9179 	.byte 13	; Non-initial State, software only.
                           9180 
   0E04 11                 9181 	.byte 17	; Non-initial State, software only.
                           9182 
   0E05 11                 9183 	.byte 17	; Non-initial State, software only.
                           9184 
   0E06 11                 9185 	.byte 17	; Non-initial State, software only.
                           9186 
   0E07 51                 9187 	.byte 81	; Non-initial State, software only.
   0E08 DF                 9188 	.byte 223	; New LSB for software period.
                           9189 
   0E09 11                 9190 	.byte 17	; Non-initial State, software only.
                           9191 
   0E0A 11                 9192 	.byte 17	; Non-initial State, software only.
                           9193 
   0E0B 51                 9194 	.byte 81	; Non-initial State, software only.
   0E0C DE                 9195 	.byte 222	; New LSB for software period.
                           9196 
   0E0D 11                 9197 	.byte 17	; Non-initial State, software only.
                           9198 
   0E0E 11                 9199 	.byte 17	; Non-initial State, software only.
                           9200 
   0E0F 0D                 9201 	.byte 13	; Non-initial State, software only.
                           9202 
   0E10 0D                 9203 	.byte 13	; Non-initial State, software only.
                           9204 
   0E11 0D                 9205 	.byte 13	; Non-initial State, software only.
                           9206 
   0E12 4D                 9207 	.byte 77	; Non-initial State, software only.
   0E13 DD                 9208 	.byte 221	; New LSB for software period.
                           9209 
   0E14 0D                 9210 	.byte 13	; Non-initial State, software only.
                           9211 
   0E15 0D                 9212 	.byte 13	; Non-initial State, software only.
                           9213 
   0E16 4D                 9214 	.byte 77	; Non-initial State, software only.
   0E17 DE                 9215 	.byte 222	; New LSB for software period.
                           9216 
   0E18 0D                 9217 	.byte 13	; Non-initial State, software only.
                           9218 
   0E19 0D                 9219 	.byte 13	; Non-initial State, software only.
                           9220 
   0E1A 49                 9221 	.byte 73	; Non-initial State, software only.
   0E1B DF                 9222 	.byte 223	; New LSB for software period.
                           9223 
   0E1C 09                 9224 	.byte 9	; Non-initial State, software only.
                           9225 
   0E1D 09                 9226 	.byte 9	; Non-initial State, software only.
                           9227 
   0E1E 49                 9228 	.byte 73	; Non-initial State, software only.
   0E1F DE                 9229 	.byte 222	; New LSB for software period.
                           9230 
   0E20 09                 9231 	.byte 9	; Non-initial State, software only.
                           9232 
   0E21 09                 9233 	.byte 9	; Non-initial State, software only.
                           9234 
   0E22 08                 9235 	.byte 8
                           9236  .globl _Videopac_Subsong0DisarkPointerRegionStart983
   0E23                    9237 _Videopac_Subsong0DisarkPointerRegionStart983:
   0E23 0B 72              9238 	.word _Videopac_Subsong0_RegisterBlock_96 + 19	; Optimization: goto common Block at index 15.
                           9239  .globl Videopac_Subsong0DisarkPointerRegionEnd983
   0E25                    9240 Videopac_Subsong0DisarkPointerRegionEnd983:
                           9241 
                           9242  .globl _Videopac_Subsong0_RegisterBlock_149
   0E25                    9243 _Videopac_Subsong0_RegisterBlock_149:
   0E25 01                 9244 	.byte 1	; Initial State: software only.
   0E26 DE 01              9245 	.byte 222, 1	; Software period.
                           9246 
   0E28 01                 9247 	.byte 1	; Non-initial State, software only.
                           9248 
   0E29 01                 9249 	.byte 1	; Non-initial State, software only.
                           9250 
   0E2A 41                 9251 	.byte 65	; Non-initial State, software only.
   0E2B DD                 9252 	.byte 221	; New LSB for software period.
                           9253 
   0E2C 01                 9254 	.byte 1	; Non-initial State, software only.
                           9255 
   0E2D 01                 9256 	.byte 1	; Non-initial State, software only.
                           9257 
                           9258  .globl _Videopac_Subsong0_RegisterBlock_149_Loop
   0E2E                    9259 _Videopac_Subsong0_RegisterBlock_149_Loop:
   0E2E 41                 9260 	.byte 65	; Non-initial State, software only.
   0E2F DE                 9261 	.byte 222	; New LSB for software period.
                           9262 
   0E30 08                 9263 	.byte 8	; Loop to index 6.
                           9264  .globl _Videopac_Subsong0DisarkPointerRegionStart984
   0E31                    9265 _Videopac_Subsong0DisarkPointerRegionStart984:
   0E31 0E 2E              9266 	.word _Videopac_Subsong0_RegisterBlock_149_Loop
                           9267  .globl Videopac_Subsong0DisarkPointerRegionEnd984
   0E33                    9268 Videopac_Subsong0DisarkPointerRegionEnd984:
                           9269 
                           9270 
                           9271  .globl _Videopac_Subsong0_RegisterBlock_18
   0E33                    9272 _Videopac_Subsong0_RegisterBlock_18:
   0E33 39                 9273 	.byte 57	; Initial State: software only.
   0E34 D5 00              9274 	.byte 213, 0	; Software period.
                           9275 
   0E36 08                 9276 	.byte 8
                           9277  .globl _Videopac_Subsong0DisarkPointerRegionStart985
   0E37                    9278 _Videopac_Subsong0DisarkPointerRegionStart985:
   0E37 0B 9E              9279 	.word _Videopac_Subsong0_RegisterBlock_101 + 3	; Optimization: goto common Block at index 1.
                           9280  .globl Videopac_Subsong0DisarkPointerRegionEnd985
   0E39                    9281 Videopac_Subsong0DisarkPointerRegionEnd985:
                           9282 
                           9283  .globl _Videopac_Subsong0_RegisterBlock_39
   0E39                    9284 _Videopac_Subsong0_RegisterBlock_39:
   0E39 31                 9285 	.byte 49	; Initial State: software only.
   0E3A 1C 01              9286 	.byte 28, 1	; Software period.
                           9287 
   0E3C 08                 9288 	.byte 8
                           9289  .globl _Videopac_Subsong0DisarkPointerRegionStart986
   0E3D                    9290 _Videopac_Subsong0DisarkPointerRegionStart986:
   0E3D 08 42              9291 	.word _Videopac_Subsong0_RegisterBlock_11 + 33	; Optimization: goto common Block at index 25.
                           9292  .globl Videopac_Subsong0DisarkPointerRegionEnd986
   0E3F                    9293 Videopac_Subsong0DisarkPointerRegionEnd986:
                           9294 
                           9295  .globl _Videopac_Subsong0_RegisterBlock_69
   0E3F                    9296 _Videopac_Subsong0_RegisterBlock_69:
   0E3F 31                 9297 	.byte 49	; Initial State: software only.
   0E40 D5 00              9298 	.byte 213, 0	; Software period.
                           9299 
   0E42 08                 9300 	.byte 8
                           9301  .globl _Videopac_Subsong0DisarkPointerRegionStart987
   0E43                    9302 _Videopac_Subsong0DisarkPointerRegionStart987:
   0E43 0B BC              9303 	.word _Videopac_Subsong0_RegisterBlock_101 + 33	; Optimization: goto common Block at index 25.
                           9304  .globl Videopac_Subsong0DisarkPointerRegionEnd987
   0E45                    9305 Videopac_Subsong0DisarkPointerRegionEnd987:
                           9306 
                           9307  .globl _Videopac_Subsong0_RegisterBlock_150
   0E45                    9308 _Videopac_Subsong0_RegisterBlock_150:
   0E45 35                 9309 	.byte 53	; Initial State: software only.
   0E46 01                 9310 	.byte 1	; Noise.
   0E47 1C 01              9311 	.byte 28, 1	; Software period.
                           9312 
   0E49 DD                 9313 	.byte 221	; Non-initial State, software only.
   0E4A 38                 9314 	.byte 56	; New LSB for software period.
   0E4B 02                 9315 	.byte 2	; New MSB for software period, maybe with noise.
                           9316 
   0E4C 19                 9317 	.byte 25	; Non-initial State, software only.
                           9318 
   0E4D 15                 9319 	.byte 21	; Non-initial State, software only.
                           9320 
   0E4E 11                 9321 	.byte 17	; Non-initial State, software only.
                           9322 
   0E4F 51                 9323 	.byte 81	; Non-initial State, software only.
   0E50 36                 9324 	.byte 54	; New LSB for software period.
                           9325 
   0E51 51                 9326 	.byte 81	; Non-initial State, software only.
   0E52 38                 9327 	.byte 56	; New LSB for software period.
                           9328 
   0E53 51                 9329 	.byte 81	; Non-initial State, software only.
   0E54 3A                 9330 	.byte 58	; New LSB for software period.
                           9331 
   0E55 51                 9332 	.byte 81	; Non-initial State, software only.
   0E56 38                 9333 	.byte 56	; New LSB for software period.
                           9334 
   0E57 51                 9335 	.byte 81	; Non-initial State, software only.
   0E58 36                 9336 	.byte 54	; New LSB for software period.
                           9337 
   0E59 51                 9338 	.byte 81	; Non-initial State, software only.
   0E5A 38                 9339 	.byte 56	; New LSB for software period.
                           9340 
   0E5B 51                 9341 	.byte 81	; Non-initial State, software only.
   0E5C 3A                 9342 	.byte 58	; New LSB for software period.
                           9343 
   0E5D 51                 9344 	.byte 81	; Non-initial State, software only.
   0E5E 38                 9345 	.byte 56	; New LSB for software period.
                           9346 
   0E5F 0D                 9347 	.byte 13	; Non-initial State, software only.
                           9348 
   0E60 0D                 9349 	.byte 13	; Non-initial State, software only.
                           9350 
   0E61 09                 9351 	.byte 9	; Non-initial State, software only.
                           9352 
   0E62 05                 9353 	.byte 5	; Non-initial State, software only.
                           9354 
                           9355  .globl _Videopac_Subsong0_RegisterBlock_150_Loop
   0E63                    9356 _Videopac_Subsong0_RegisterBlock_150_Loop:
   0E63 01                 9357 	.byte 1	; Non-initial State, software only.
                           9358 
   0E64 08                 9359 	.byte 8	; Loop to index 17.
                           9360  .globl _Videopac_Subsong0DisarkPointerRegionStart988
   0E65                    9361 _Videopac_Subsong0DisarkPointerRegionStart988:
   0E65 0E 63              9362 	.word _Videopac_Subsong0_RegisterBlock_150_Loop
                           9363  .globl Videopac_Subsong0DisarkPointerRegionEnd988
   0E67                    9364 Videopac_Subsong0DisarkPointerRegionEnd988:
                           9365 
                           9366 
                           9367  .globl _Videopac_Subsong0_RegisterBlock_163
   0E67                    9368 _Videopac_Subsong0_RegisterBlock_163:
   0E67 25                 9369 	.byte 37	; Initial State: software only.
   0E68 01                 9370 	.byte 1	; Noise.
   0E69 1C 01              9371 	.byte 28, 1	; Software period.
                           9372 
   0E6B D5                 9373 	.byte 213	; Non-initial State, software only.
   0E6C 38                 9374 	.byte 56	; New LSB for software period.
   0E6D 02                 9375 	.byte 2	; New MSB for software period, maybe with noise.
                           9376 
   0E6E 11                 9377 	.byte 17	; Non-initial State, software only.
                           9378 
   0E6F 0D                 9379 	.byte 13	; Non-initial State, software only.
                           9380 
   0E70 09                 9381 	.byte 9	; Non-initial State, software only.
                           9382 
   0E71 49                 9383 	.byte 73	; Non-initial State, software only.
   0E72 36                 9384 	.byte 54	; New LSB for software period.
                           9385 
   0E73 49                 9386 	.byte 73	; Non-initial State, software only.
   0E74 38                 9387 	.byte 56	; New LSB for software period.
                           9388 
   0E75 49                 9389 	.byte 73	; Non-initial State, software only.
   0E76 3A                 9390 	.byte 58	; New LSB for software period.
                           9391 
   0E77 49                 9392 	.byte 73	; Non-initial State, software only.
   0E78 38                 9393 	.byte 56	; New LSB for software period.
                           9394 
   0E79 49                 9395 	.byte 73	; Non-initial State, software only.
   0E7A 36                 9396 	.byte 54	; New LSB for software period.
                           9397 
   0E7B 49                 9398 	.byte 73	; Non-initial State, software only.
   0E7C 38                 9399 	.byte 56	; New LSB for software period.
                           9400 
   0E7D 49                 9401 	.byte 73	; Non-initial State, software only.
   0E7E 3A                 9402 	.byte 58	; New LSB for software period.
                           9403 
   0E7F 49                 9404 	.byte 73	; Non-initial State, software only.
   0E80 38                 9405 	.byte 56	; New LSB for software period.
                           9406 
   0E81 05                 9407 	.byte 5	; Non-initial State, software only.
                           9408 
   0E82 05                 9409 	.byte 5	; Non-initial State, software only.
                           9410 
                           9411  .globl _Videopac_Subsong0_RegisterBlock_163_Loop
   0E83                    9412 _Videopac_Subsong0_RegisterBlock_163_Loop:
   0E83 01                 9413 	.byte 1	; Non-initial State, software only.
                           9414 
   0E84 08                 9415 	.byte 8	; Loop to index 15.
                           9416  .globl _Videopac_Subsong0DisarkPointerRegionStart989
   0E85                    9417 _Videopac_Subsong0DisarkPointerRegionStart989:
   0E85 0E 83              9418 	.word _Videopac_Subsong0_RegisterBlock_163_Loop
                           9419  .globl Videopac_Subsong0DisarkPointerRegionEnd989
   0E87                    9420 Videopac_Subsong0DisarkPointerRegionEnd989:
                           9421 
                           9422 
                           9423  .globl _Videopac_Subsong0_RegisterBlock_204
   0E87                    9424 _Videopac_Subsong0_RegisterBlock_204:
   0E87 55                 9425 	.byte 85	; Initial State: software only.
   0E88 01                 9426 	.byte 1	; Noise.
   0E89 1C 01              9427 	.byte 28, 1	; Software period.
                           9428 
   0E8B ED                 9429 	.byte 237	; Non-initial State, software only.
   0E8C 38                 9430 	.byte 56	; New LSB for software period.
   0E8D 02                 9431 	.byte 2	; New MSB for software period, maybe with noise.
                           9432 
   0E8E 29                 9433 	.byte 41	; Non-initial State, software only.
                           9434 
   0E8F 25                 9435 	.byte 37	; Non-initial State, software only.
                           9436 
   0E90 21                 9437 	.byte 33	; Non-initial State, software only.
                           9438 
   0E91 61                 9439 	.byte 97	; Non-initial State, software only.
   0E92 36                 9440 	.byte 54	; New LSB for software period.
                           9441 
   0E93 61                 9442 	.byte 97	; Non-initial State, software only.
   0E94 38                 9443 	.byte 56	; New LSB for software period.
                           9444 
   0E95 61                 9445 	.byte 97	; Non-initial State, software only.
   0E96 3A                 9446 	.byte 58	; New LSB for software period.
                           9447 
   0E97 61                 9448 	.byte 97	; Non-initial State, software only.
   0E98 38                 9449 	.byte 56	; New LSB for software period.
                           9450 
   0E99 61                 9451 	.byte 97	; Non-initial State, software only.
   0E9A 36                 9452 	.byte 54	; New LSB for software period.
                           9453 
   0E9B 61                 9454 	.byte 97	; Non-initial State, software only.
   0E9C 38                 9455 	.byte 56	; New LSB for software period.
                           9456 
   0E9D 61                 9457 	.byte 97	; Non-initial State, software only.
   0E9E 3A                 9458 	.byte 58	; New LSB for software period.
                           9459 
   0E9F 61                 9460 	.byte 97	; Non-initial State, software only.
   0EA0 38                 9461 	.byte 56	; New LSB for software period.
                           9462 
   0EA1 1D                 9463 	.byte 29	; Non-initial State, software only.
                           9464 
   0EA2 1D                 9465 	.byte 29	; Non-initial State, software only.
                           9466 
   0EA3 19                 9467 	.byte 25	; Non-initial State, software only.
                           9468 
   0EA4 15                 9469 	.byte 21	; Non-initial State, software only.
                           9470 
   0EA5 11                 9471 	.byte 17	; Non-initial State, software only.
                           9472 
   0EA6 08                 9473 	.byte 8
                           9474  .globl _Videopac_Subsong0DisarkPointerRegionStart990
   0EA7                    9475 _Videopac_Subsong0DisarkPointerRegionStart990:
   0EA7 0E 60              9476 	.word _Videopac_Subsong0_RegisterBlock_150 + 27	; Optimization: goto common Block at index 14.
                           9477  .globl Videopac_Subsong0DisarkPointerRegionEnd990
   0EA9                    9478 Videopac_Subsong0DisarkPointerRegionEnd990:
                           9479 
                           9480  .globl _Videopac_Subsong0_RegisterBlock_232
   0EA9                    9481 _Videopac_Subsong0_RegisterBlock_232:
   0EA9 25                 9482 	.byte 37	; Initial State: software only.
   0EAA 01                 9483 	.byte 1	; Noise.
   0EAB AA 01              9484 	.byte 170, 1	; Software period.
                           9485 
   0EAD D5                 9486 	.byte 213	; Non-initial State, software only.
   0EAE 53                 9487 	.byte 83	; New LSB for software period.
   0EAF 03                 9488 	.byte 3	; New MSB for software period, maybe with noise.
                           9489 
   0EB0 11                 9490 	.byte 17	; Non-initial State, software only.
                           9491 
   0EB1 0D                 9492 	.byte 13	; Non-initial State, software only.
                           9493 
   0EB2 09                 9494 	.byte 9	; Non-initial State, software only.
                           9495 
   0EB3 49                 9496 	.byte 73	; Non-initial State, software only.
   0EB4 51                 9497 	.byte 81	; New LSB for software period.
                           9498 
   0EB5 49                 9499 	.byte 73	; Non-initial State, software only.
   0EB6 53                 9500 	.byte 83	; New LSB for software period.
                           9501 
   0EB7 49                 9502 	.byte 73	; Non-initial State, software only.
   0EB8 55                 9503 	.byte 85	; New LSB for software period.
                           9504 
   0EB9 49                 9505 	.byte 73	; Non-initial State, software only.
   0EBA 53                 9506 	.byte 83	; New LSB for software period.
                           9507 
   0EBB 49                 9508 	.byte 73	; Non-initial State, software only.
   0EBC 51                 9509 	.byte 81	; New LSB for software period.
                           9510 
   0EBD 49                 9511 	.byte 73	; Non-initial State, software only.
   0EBE 53                 9512 	.byte 83	; New LSB for software period.
                           9513 
   0EBF 49                 9514 	.byte 73	; Non-initial State, software only.
   0EC0 55                 9515 	.byte 85	; New LSB for software period.
                           9516 
   0EC1 49                 9517 	.byte 73	; Non-initial State, software only.
   0EC2 53                 9518 	.byte 83	; New LSB for software period.
                           9519 
   0EC3 08                 9520 	.byte 8
                           9521  .globl _Videopac_Subsong0DisarkPointerRegionStart991
   0EC4                    9522 _Videopac_Subsong0DisarkPointerRegionStart991:
   0EC4 0E 81              9523 	.word _Videopac_Subsong0_RegisterBlock_163 + 26	; Optimization: goto common Block at index 13.
                           9524  .globl Videopac_Subsong0DisarkPointerRegionEnd991
   0EC6                    9525 Videopac_Subsong0DisarkPointerRegionEnd991:
                           9526 
                           9527  .globl _Videopac_Subsong0_RegisterBlock_247
   0EC6                    9528 _Videopac_Subsong0_RegisterBlock_247:
   0EC6 35                 9529 	.byte 53	; Initial State: software only.
   0EC7 01                 9530 	.byte 1	; Noise.
   0EC8 AA 01              9531 	.byte 170, 1	; Software period.
                           9532 
   0ECA DD                 9533 	.byte 221	; Non-initial State, software only.
   0ECB 53                 9534 	.byte 83	; New LSB for software period.
   0ECC 03                 9535 	.byte 3	; New MSB for software period, maybe with noise.
                           9536 
   0ECD 19                 9537 	.byte 25	; Non-initial State, software only.
                           9538 
   0ECE 15                 9539 	.byte 21	; Non-initial State, software only.
                           9540 
   0ECF 11                 9541 	.byte 17	; Non-initial State, software only.
                           9542 
   0ED0 51                 9543 	.byte 81	; Non-initial State, software only.
   0ED1 51                 9544 	.byte 81	; New LSB for software period.
                           9545 
   0ED2 51                 9546 	.byte 81	; Non-initial State, software only.
   0ED3 53                 9547 	.byte 83	; New LSB for software period.
                           9548 
   0ED4 51                 9549 	.byte 81	; Non-initial State, software only.
   0ED5 55                 9550 	.byte 85	; New LSB for software period.
                           9551 
   0ED6 51                 9552 	.byte 81	; Non-initial State, software only.
   0ED7 53                 9553 	.byte 83	; New LSB for software period.
                           9554 
   0ED8 51                 9555 	.byte 81	; Non-initial State, software only.
   0ED9 51                 9556 	.byte 81	; New LSB for software period.
                           9557 
   0EDA 51                 9558 	.byte 81	; Non-initial State, software only.
   0EDB 53                 9559 	.byte 83	; New LSB for software period.
                           9560 
   0EDC 51                 9561 	.byte 81	; Non-initial State, software only.
   0EDD 55                 9562 	.byte 85	; New LSB for software period.
                           9563 
   0EDE 51                 9564 	.byte 81	; Non-initial State, software only.
   0EDF 53                 9565 	.byte 83	; New LSB for software period.
                           9566 
   0EE0 08                 9567 	.byte 8
                           9568  .globl _Videopac_Subsong0DisarkPointerRegionStart992
   0EE1                    9569 _Videopac_Subsong0DisarkPointerRegionStart992:
   0EE1 0E 5F              9570 	.word _Videopac_Subsong0_RegisterBlock_150 + 26	; Optimization: goto common Block at index 13.
                           9571  .globl Videopac_Subsong0DisarkPointerRegionEnd992
   0EE3                    9572 Videopac_Subsong0DisarkPointerRegionEnd992:
                           9573 
                           9574  .globl _Videopac_Subsong0_RegisterBlock_273
   0EE3                    9575 _Videopac_Subsong0_RegisterBlock_273:
   0EE3 55                 9576 	.byte 85	; Initial State: software only.
   0EE4 01                 9577 	.byte 1	; Noise.
   0EE5 AA 01              9578 	.byte 170, 1	; Software period.
                           9579 
   0EE7 ED                 9580 	.byte 237	; Non-initial State, software only.
   0EE8 53                 9581 	.byte 83	; New LSB for software period.
   0EE9 03                 9582 	.byte 3	; New MSB for software period, maybe with noise.
                           9583 
   0EEA 29                 9584 	.byte 41	; Non-initial State, software only.
                           9585 
   0EEB 25                 9586 	.byte 37	; Non-initial State, software only.
                           9587 
   0EEC 21                 9588 	.byte 33	; Non-initial State, software only.
                           9589 
   0EED 61                 9590 	.byte 97	; Non-initial State, software only.
   0EEE 51                 9591 	.byte 81	; New LSB for software period.
                           9592 
   0EEF 61                 9593 	.byte 97	; Non-initial State, software only.
   0EF0 53                 9594 	.byte 83	; New LSB for software period.
                           9595 
   0EF1 61                 9596 	.byte 97	; Non-initial State, software only.
   0EF2 55                 9597 	.byte 85	; New LSB for software period.
                           9598 
   0EF3 61                 9599 	.byte 97	; Non-initial State, software only.
   0EF4 53                 9600 	.byte 83	; New LSB for software period.
                           9601 
   0EF5 61                 9602 	.byte 97	; Non-initial State, software only.
   0EF6 51                 9603 	.byte 81	; New LSB for software period.
                           9604 
   0EF7 61                 9605 	.byte 97	; Non-initial State, software only.
   0EF8 53                 9606 	.byte 83	; New LSB for software period.
                           9607 
   0EF9 61                 9608 	.byte 97	; Non-initial State, software only.
   0EFA 55                 9609 	.byte 85	; New LSB for software period.
                           9610 
   0EFB 61                 9611 	.byte 97	; Non-initial State, software only.
   0EFC 53                 9612 	.byte 83	; New LSB for software period.
                           9613 
   0EFD 08                 9614 	.byte 8
                           9615  .globl _Videopac_Subsong0DisarkPointerRegionStart993
   0EFE                    9616 _Videopac_Subsong0DisarkPointerRegionStart993:
   0EFE 0E A1              9617 	.word _Videopac_Subsong0_RegisterBlock_204 + 26	; Optimization: goto common Block at index 13.
                           9618  .globl Videopac_Subsong0DisarkPointerRegionEnd993
   0F00                    9619 Videopac_Subsong0DisarkPointerRegionEnd993:
                           9620 
                           9621  .globl _Videopac_Subsong0_RegisterBlock_304
   0F00                    9622 _Videopac_Subsong0_RegisterBlock_304:
   0F00 29                 9623 	.byte 41	; Initial State: software only.
   0F01 8E 00              9624 	.byte 142, 0	; Software period.
                           9625 
   0F03 15                 9626 	.byte 21	; Non-initial State, software only.
                           9627 
   0F04 4D                 9628 	.byte 77	; Non-initial State, software only.
   0F05 BE                 9629 	.byte 190	; New LSB for software period.
                           9630 
   0F06 0D                 9631 	.byte 13	; Non-initial State, software only.
                           9632 
   0F07 51                 9633 	.byte 81	; Non-initial State, software only.
   0F08 EF                 9634 	.byte 239	; New LSB for software period.
                           9635 
   0F09 11                 9636 	.byte 17	; Non-initial State, software only.
                           9637 
   0F0A C9                 9638 	.byte 201	; Non-initial State, software only.
   0F0B 1C                 9639 	.byte 28	; New LSB for software period.
   0F0C 01                 9640 	.byte 1	; New MSB for software period, maybe with noise.
                           9641 
   0F0D 09                 9642 	.byte 9	; Non-initial State, software only.
                           9643 
   0F0E 0D                 9644 	.byte 13	; Non-initial State, software only.
                           9645 
   0F0F 0D                 9646 	.byte 13	; Non-initial State, software only.
                           9647 
   0F10 0D                 9648 	.byte 13	; Non-initial State, software only.
                           9649 
   0F11 0D                 9650 	.byte 13	; Non-initial State, software only.
                           9651 
   0F12 C5                 9652 	.byte 197	; Non-initial State, software only.
   0F13 8F                 9653 	.byte 143	; New LSB for software period.
   0F14 00                 9654 	.byte 0	; New MSB for software period, maybe with noise.
                           9655 
   0F15 05                 9656 	.byte 5	; Non-initial State, software only.
                           9657 
   0F16 49                 9658 	.byte 73	; Non-initial State, software only.
   0F17 BF                 9659 	.byte 191	; New LSB for software period.
                           9660 
   0F18 09                 9661 	.byte 9	; Non-initial State, software only.
                           9662 
   0F19 41                 9663 	.byte 65	; Non-initial State, software only.
   0F1A F0                 9664 	.byte 240	; New LSB for software period.
                           9665 
   0F1B 01                 9666 	.byte 1	; Non-initial State, software only.
                           9667 
   0F1C C5                 9668 	.byte 197	; Non-initial State, software only.
   0F1D 1D                 9669 	.byte 29	; New LSB for software period.
   0F1E 01                 9670 	.byte 1	; New MSB for software period, maybe with noise.
                           9671 
   0F1F 05                 9672 	.byte 5	; Non-initial State, software only.
                           9673 
   0F20 08                 9674 	.byte 8
                           9675  .globl _Videopac_Subsong0DisarkPointerRegionStart994
   0F21                    9676 _Videopac_Subsong0DisarkPointerRegionStart994:
   0F21 0E 81              9677 	.word _Videopac_Subsong0_RegisterBlock_163 + 26	; Optimization: goto common Block at index 13.
                           9678  .globl Videopac_Subsong0DisarkPointerRegionEnd994
   0F23                    9679 Videopac_Subsong0DisarkPointerRegionEnd994:
                           9680 
                           9681  .globl _Videopac_Subsong0_RegisterBlock_308
   0F23                    9682 _Videopac_Subsong0_RegisterBlock_308:
   0F23 11                 9683 	.byte 17	; Initial State: software only.
   0F24 FC 04              9684 	.byte 252, 4	; Software period.
                           9685 
   0F26 49                 9686 	.byte 73	; Non-initial State, software only.
   0F27 31                 9687 	.byte 49	; New LSB for software period.
                           9688 
   0F28 C9                 9689 	.byte 201	; Non-initial State, software only.
   0F29 53                 9690 	.byte 83	; New LSB for software period.
   0F2A 03                 9691 	.byte 3	; New MSB for software period, maybe with noise.
                           9692 
   0F2B C9                 9693 	.byte 201	; Non-initial State, software only.
   0F2C 7E                 9694 	.byte 126	; New LSB for software period.
   0F2D 02                 9695 	.byte 2	; New MSB for software period, maybe with noise.
                           9696 
   0F2E 49                 9697 	.byte 73	; Non-initial State, software only.
   0F2F 18                 9698 	.byte 24	; New LSB for software period.
                           9699 
   0F30 C9                 9700 	.byte 201	; Non-initial State, software only.
   0F31 AA                 9701 	.byte 170	; New LSB for software period.
   0F32 01                 9702 	.byte 1	; New MSB for software period, maybe with noise.
                           9703 
   0F33 49                 9704 	.byte 73	; Non-initial State, software only.
   0F34 40                 9705 	.byte 64	; New LSB for software period.
                           9706 
   0F35 09                 9707 	.byte 9	; Non-initial State, software only.
                           9708 
   0F36 09                 9709 	.byte 9	; Non-initial State, software only.
                           9710 
   0F37 05                 9711 	.byte 5	; Non-initial State, software only.
                           9712 
   0F38 05                 9713 	.byte 5	; Non-initial State, software only.
                           9714 
   0F39 01                 9715 	.byte 1	; Non-initial State, software only.
                           9716 
   0F3A 08                 9717 	.byte 8
                           9718  .globl _Videopac_Subsong0DisarkPointerRegionStart995
   0F3B                    9719 _Videopac_Subsong0DisarkPointerRegionStart995:
   0F3B 06 F1              9720 	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
                           9721  .globl Videopac_Subsong0DisarkPointerRegionEnd995
   0F3D                    9722 Videopac_Subsong0DisarkPointerRegionEnd995:
                           9723 
                           9724  .globl _Videopac_Subsong0_RegisterBlock_321
   0F3D                    9725 _Videopac_Subsong0_RegisterBlock_321:
   0F3D 19                 9726 	.byte 25	; Initial State: software only.
   0F3E 8E 00              9727 	.byte 142, 0	; Software period.
                           9728 
   0F40 0D                 9729 	.byte 13	; Non-initial State, software only.
                           9730 
   0F41 45                 9731 	.byte 69	; Non-initial State, software only.
   0F42 BE                 9732 	.byte 190	; New LSB for software period.
                           9733 
   0F43 05                 9734 	.byte 5	; Non-initial State, software only.
                           9735 
   0F44 49                 9736 	.byte 73	; Non-initial State, software only.
   0F45 EF                 9737 	.byte 239	; New LSB for software period.
                           9738 
   0F46 09                 9739 	.byte 9	; Non-initial State, software only.
                           9740 
   0F47 C1                 9741 	.byte 193	; Non-initial State, software only.
   0F48 1C                 9742 	.byte 28	; New LSB for software period.
   0F49 01                 9743 	.byte 1	; New MSB for software period, maybe with noise.
                           9744 
   0F4A 01                 9745 	.byte 1	; Non-initial State, software only.
                           9746 
   0F4B 05                 9747 	.byte 5	; Non-initial State, software only.
                           9748 
   0F4C 05                 9749 	.byte 5	; Non-initial State, software only.
                           9750 
   0F4D 05                 9751 	.byte 5	; Non-initial State, software only.
                           9752 
   0F4E 05                 9753 	.byte 5	; Non-initial State, software only.
                           9754 
   0F4F C1                 9755 	.byte 193	; Non-initial State, software only.
   0F50 8F                 9756 	.byte 143	; New LSB for software period.
   0F51 00                 9757 	.byte 0	; New MSB for software period, maybe with noise.
                           9758 
   0F52 01                 9759 	.byte 1	; Non-initial State, software only.
                           9760 
   0F53 41                 9761 	.byte 65	; Non-initial State, software only.
   0F54 BF                 9762 	.byte 191	; New LSB for software period.
                           9763 
   0F55 01                 9764 	.byte 1	; Non-initial State, software only.
                           9765 
   0F56 41                 9766 	.byte 65	; Non-initial State, software only.
   0F57 F0                 9767 	.byte 240	; New LSB for software period.
                           9768 
   0F58 01                 9769 	.byte 1	; Non-initial State, software only.
                           9770 
                           9771  .globl _Videopac_Subsong0_RegisterBlock_321_Loop
   0F59                    9772 _Videopac_Subsong0_RegisterBlock_321_Loop:
   0F59 C1                 9773 	.byte 193	; Non-initial State, software only.
   0F5A 1D                 9774 	.byte 29	; New LSB for software period.
   0F5B 01                 9775 	.byte 1	; New MSB for software period, maybe with noise.
                           9776 
   0F5C 08                 9777 	.byte 8	; Loop to index 18.
                           9778  .globl _Videopac_Subsong0DisarkPointerRegionStart996
   0F5D                    9779 _Videopac_Subsong0DisarkPointerRegionStart996:
   0F5D 0F 59              9780 	.word _Videopac_Subsong0_RegisterBlock_321_Loop
                           9781  .globl Videopac_Subsong0DisarkPointerRegionEnd996
   0F5F                    9782 Videopac_Subsong0DisarkPointerRegionEnd996:
                           9783 
                           9784 
                           9785  .globl _Videopac_Subsong0_RegisterBlock_325
   0F5F                    9786 _Videopac_Subsong0_RegisterBlock_325:
   0F5F 01                 9787 	.byte 1	; Initial State: software only.
   0F60 FC 04              9788 	.byte 252, 4	; Software period.
                           9789 
   0F62 41                 9790 	.byte 65	; Non-initial State, software only.
   0F63 31                 9791 	.byte 49	; New LSB for software period.
                           9792 
   0F64 C1                 9793 	.byte 193	; Non-initial State, software only.
   0F65 53                 9794 	.byte 83	; New LSB for software period.
   0F66 03                 9795 	.byte 3	; New MSB for software period, maybe with noise.
                           9796 
   0F67 C1                 9797 	.byte 193	; Non-initial State, software only.
   0F68 7E                 9798 	.byte 126	; New LSB for software period.
   0F69 02                 9799 	.byte 2	; New MSB for software period, maybe with noise.
                           9800 
   0F6A 41                 9801 	.byte 65	; Non-initial State, software only.
   0F6B 18                 9802 	.byte 24	; New LSB for software period.
                           9803 
   0F6C C1                 9804 	.byte 193	; Non-initial State, software only.
   0F6D AA                 9805 	.byte 170	; New LSB for software period.
   0F6E 01                 9806 	.byte 1	; New MSB for software period, maybe with noise.
                           9807 
   0F6F 41                 9808 	.byte 65	; Non-initial State, software only.
   0F70 40                 9809 	.byte 64	; New LSB for software period.
                           9810 
   0F71 01                 9811 	.byte 1	; Non-initial State, software only.
                           9812 
   0F72 01                 9813 	.byte 1	; Non-initial State, software only.
                           9814 
   0F73 01                 9815 	.byte 1	; Non-initial State, software only.
                           9816 
   0F74 01                 9817 	.byte 1	; Non-initial State, software only.
                           9818 
   0F75 01                 9819 	.byte 1	; Non-initial State, software only.
                           9820 
                           9821  .globl _Videopac_Subsong0_RegisterBlock_325_Loop
   0F76                    9822 _Videopac_Subsong0_RegisterBlock_325_Loop:
   0F76 00                 9823 	.byte 0	; Non-initial State, no software no hardware.
                           9824 
   0F77 08                 9825 	.byte 8	; Loop to index 12.
                           9826  .globl _Videopac_Subsong0DisarkPointerRegionStart997
   0F78                    9827 _Videopac_Subsong0DisarkPointerRegionStart997:
   0F78 0F 76              9828 	.word _Videopac_Subsong0_RegisterBlock_325_Loop
                           9829  .globl Videopac_Subsong0DisarkPointerRegionEnd997
   0F7A                    9830 Videopac_Subsong0DisarkPointerRegionEnd997:
                           9831 
                           9832 
                           9833  .globl _Videopac_Subsong0_RegisterBlock_333
   0F7A                    9834 _Videopac_Subsong0_RegisterBlock_333:
   0F7A 09                 9835 	.byte 9	; Initial State: software only.
   0F7B 38 02              9836 	.byte 56, 2	; Software period.
                           9837 
   0F7D 05                 9838 	.byte 5	; Non-initial State, software only.
                           9839 
   0F7E 05                 9840 	.byte 5	; Non-initial State, software only.
                           9841 
   0F7F 05                 9842 	.byte 5	; Non-initial State, software only.
                           9843 
   0F80 05                 9844 	.byte 5	; Non-initial State, software only.
                           9845 
   0F81 C5                 9846 	.byte 197	; Non-initial State, software only.
   0F82 1C                 9847 	.byte 28	; New LSB for software period.
   0F83 01                 9848 	.byte 1	; New MSB for software period, maybe with noise.
                           9849 
   0F84 05                 9850 	.byte 5	; Non-initial State, software only.
                           9851 
   0F85 05                 9852 	.byte 5	; Non-initial State, software only.
                           9853 
   0F86 05                 9854 	.byte 5	; Non-initial State, software only.
                           9855 
   0F87 05                 9856 	.byte 5	; Non-initial State, software only.
                           9857 
   0F88 C5                 9858 	.byte 197	; Non-initial State, software only.
   0F89 8E                 9859 	.byte 142	; New LSB for software period.
   0F8A 00                 9860 	.byte 0	; New MSB for software period, maybe with noise.
                           9861 
   0F8B 05                 9862 	.byte 5	; Non-initial State, software only.
                           9863 
   0F8C 05                 9864 	.byte 5	; Non-initial State, software only.
                           9865 
   0F8D 05                 9866 	.byte 5	; Non-initial State, software only.
                           9867 
   0F8E 05                 9868 	.byte 5	; Non-initial State, software only.
                           9869 
   0F8F 45                 9870 	.byte 69	; Non-initial State, software only.
   0F90 47                 9871 	.byte 71	; New LSB for software period.
                           9872 
   0F91 05                 9873 	.byte 5	; Non-initial State, software only.
                           9874 
   0F92 05                 9875 	.byte 5	; Non-initial State, software only.
                           9876 
   0F93 05                 9877 	.byte 5	; Non-initial State, software only.
                           9878 
   0F94 05                 9879 	.byte 5	; Non-initial State, software only.
                           9880 
   0F95 08                 9881 	.byte 8
                           9882  .globl _Videopac_Subsong0DisarkPointerRegionStart998
   0F96                    9883 _Videopac_Subsong0DisarkPointerRegionStart998:
   0F96 06 F1              9884 	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
                           9885  .globl Videopac_Subsong0DisarkPointerRegionEnd998
   0F98                    9886 Videopac_Subsong0DisarkPointerRegionEnd998:
                           9887 
                           9888  .globl _Videopac_Subsong0_RegisterBlock_344
   0F98                    9889 _Videopac_Subsong0_RegisterBlock_344:
   0F98 11                 9890 	.byte 17	; Initial State: software only.
   0F99 70 04              9891 	.byte 112, 4	; Software period.
                           9892 
   0F9B C9                 9893 	.byte 201	; Non-initial State, software only.
   0F9C BC                 9894 	.byte 188	; New LSB for software period.
   0F9D 03                 9895 	.byte 3	; New MSB for software period, maybe with noise.
                           9896 
   0F9E C9                 9897 	.byte 201	; Non-initial State, software only.
   0F9F F6                 9898 	.byte 246	; New LSB for software period.
   0FA0 02                 9899 	.byte 2	; New MSB for software period, maybe with noise.
                           9900 
   0FA1 49                 9901 	.byte 73	; Non-initial State, software only.
   0FA2 38                 9902 	.byte 56	; New LSB for software period.
                           9903 
   0FA3 C9                 9904 	.byte 201	; Non-initial State, software only.
   0FA4 DE                 9905 	.byte 222	; New LSB for software period.
   0FA5 01                 9906 	.byte 1	; New MSB for software period, maybe with noise.
                           9907 
   0FA6 49                 9908 	.byte 73	; Non-initial State, software only.
   0FA7 7B                 9909 	.byte 123	; New LSB for software period.
                           9910 
   0FA8 49                 9911 	.byte 73	; Non-initial State, software only.
   0FA9 1D                 9912 	.byte 29	; New LSB for software period.
                           9913 
   0FAA 08                 9914 	.byte 8
                           9915  .globl _Videopac_Subsong0DisarkPointerRegionStart999
   0FAB                    9916 _Videopac_Subsong0DisarkPointerRegionStart999:
   0FAB 0F 35              9917 	.word _Videopac_Subsong0_RegisterBlock_308 + 18	; Optimization: goto common Block at index 7.
                           9918  .globl Videopac_Subsong0DisarkPointerRegionEnd999
   0FAD                    9919 Videopac_Subsong0DisarkPointerRegionEnd999:
                           9920 
                           9921  .globl _Videopac_Subsong0_RegisterBlock_374
   0FAD                    9922 _Videopac_Subsong0_RegisterBlock_374:
   0FAD 49                 9923 	.byte 73	; Initial State: software only.
   0FAE 8E 00              9924 	.byte 142, 0	; Software period.
                           9925 
   0FB0 25                 9926 	.byte 37	; Non-initial State, software only.
                           9927 
   0FB1 5D                 9928 	.byte 93	; Non-initial State, software only.
   0FB2 BE                 9929 	.byte 190	; New LSB for software period.
                           9930 
   0FB3 1D                 9931 	.byte 29	; Non-initial State, software only.
                           9932 
   0FB4 61                 9933 	.byte 97	; Non-initial State, software only.
   0FB5 EF                 9934 	.byte 239	; New LSB for software period.
                           9935 
   0FB6 21                 9936 	.byte 33	; Non-initial State, software only.
                           9937 
   0FB7 D9                 9938 	.byte 217	; Non-initial State, software only.
   0FB8 1C                 9939 	.byte 28	; New LSB for software period.
   0FB9 01                 9940 	.byte 1	; New MSB for software period, maybe with noise.
                           9941 
   0FBA 19                 9942 	.byte 25	; Non-initial State, software only.
                           9943 
   0FBB 1D                 9944 	.byte 29	; Non-initial State, software only.
                           9945 
   0FBC 1D                 9946 	.byte 29	; Non-initial State, software only.
                           9947 
   0FBD 1D                 9948 	.byte 29	; Non-initial State, software only.
                           9949 
   0FBE 1D                 9950 	.byte 29	; Non-initial State, software only.
                           9951 
   0FBF D5                 9952 	.byte 213	; Non-initial State, software only.
   0FC0 8F                 9953 	.byte 143	; New LSB for software period.
   0FC1 00                 9954 	.byte 0	; New MSB for software period, maybe with noise.
                           9955 
   0FC2 15                 9956 	.byte 21	; Non-initial State, software only.
                           9957 
   0FC3 59                 9958 	.byte 89	; Non-initial State, software only.
   0FC4 BF                 9959 	.byte 191	; New LSB for software period.
                           9960 
   0FC5 19                 9961 	.byte 25	; Non-initial State, software only.
                           9962 
   0FC6 51                 9963 	.byte 81	; Non-initial State, software only.
   0FC7 F0                 9964 	.byte 240	; New LSB for software period.
                           9965 
   0FC8 11                 9966 	.byte 17	; Non-initial State, software only.
                           9967 
   0FC9 D5                 9968 	.byte 213	; Non-initial State, software only.
   0FCA 1D                 9969 	.byte 29	; New LSB for software period.
   0FCB 01                 9970 	.byte 1	; New MSB for software period, maybe with noise.
                           9971 
   0FCC 15                 9972 	.byte 21	; Non-initial State, software only.
                           9973 
   0FCD 15                 9974 	.byte 21	; Non-initial State, software only.
                           9975 
   0FCE 15                 9976 	.byte 21	; Non-initial State, software only.
                           9977 
   0FCF 0D                 9978 	.byte 13	; Non-initial State, software only.
                           9979 
   0FD0 0D                 9980 	.byte 13	; Non-initial State, software only.
                           9981 
                           9982 
                           9983  .globl _Videopac_Subsong0_RegisterBlock_378
   0FD1                    9984 _Videopac_Subsong0_RegisterBlock_378:
   0FD1 31                 9985 	.byte 49	; Initial State: software only.
   0FD2 70 04              9986 	.byte 112, 4	; Software period.
                           9987 
   0FD4 D9                 9988 	.byte 217	; Non-initial State, software only.
   0FD5 BC                 9989 	.byte 188	; New LSB for software period.
   0FD6 03                 9990 	.byte 3	; New MSB for software period, maybe with noise.
                           9991 
   0FD7 D9                 9992 	.byte 217	; Non-initial State, software only.
   0FD8 F6                 9993 	.byte 246	; New LSB for software period.
   0FD9 02                 9994 	.byte 2	; New MSB for software period, maybe with noise.
                           9995 
   0FDA 59                 9996 	.byte 89	; Non-initial State, software only.
   0FDB 38                 9997 	.byte 56	; New LSB for software period.
                           9998 
   0FDC D9                 9999 	.byte 217	; Non-initial State, software only.
   0FDD DE                10000 	.byte 222	; New LSB for software period.
   0FDE 01                10001 	.byte 1	; New MSB for software period, maybe with noise.
                          10002 
   0FDF 59                10003 	.byte 89	; Non-initial State, software only.
   0FE0 7B                10004 	.byte 123	; New LSB for software period.
                          10005 
   0FE1 59                10006 	.byte 89	; Non-initial State, software only.
   0FE2 1D                10007 	.byte 29	; New LSB for software period.
                          10008 
   0FE3 19                10009 	.byte 25	; Non-initial State, software only.
                          10010 
   0FE4 19                10011 	.byte 25	; Non-initial State, software only.
                          10012 
   0FE5 15                10013 	.byte 21	; Non-initial State, software only.
                          10014 
   0FE6 15                10015 	.byte 21	; Non-initial State, software only.
                          10016 
   0FE7 11                10017 	.byte 17	; Non-initial State, software only.
                          10018 
   0FE8 08                10019 	.byte 8
                          10020  .globl _Videopac_Subsong0DisarkPointerRegionStart1000
   0FE9                   10021 _Videopac_Subsong0DisarkPointerRegionStart1000:
   0FE9 06 F1             10022 	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
                          10023  .globl Videopac_Subsong0DisarkPointerRegionEnd1000
   0FEB                   10024 Videopac_Subsong0DisarkPointerRegionEnd1000:
                          10025 
                          10026  .globl _Videopac_Subsong0_RegisterBlock_386
   0FEB                   10027 _Videopac_Subsong0_RegisterBlock_386:
   0FEB 39                10028 	.byte 57	; Initial State: software only.
   0FEC 38 02             10029 	.byte 56, 2	; Software period.
                          10030 
   0FEE 1D                10031 	.byte 29	; Non-initial State, software only.
                          10032 
   0FEF 1D                10033 	.byte 29	; Non-initial State, software only.
                          10034 
   0FF0 1D                10035 	.byte 29	; Non-initial State, software only.
                          10036 
   0FF1 1D                10037 	.byte 29	; Non-initial State, software only.
                          10038 
   0FF2 DD                10039 	.byte 221	; Non-initial State, software only.
   0FF3 1C                10040 	.byte 28	; New LSB for software period.
   0FF4 01                10041 	.byte 1	; New MSB for software period, maybe with noise.
                          10042 
   0FF5 1D                10043 	.byte 29	; Non-initial State, software only.
                          10044 
   0FF6 1D                10045 	.byte 29	; Non-initial State, software only.
                          10046 
   0FF7 1D                10047 	.byte 29	; Non-initial State, software only.
                          10048 
   0FF8 1D                10049 	.byte 29	; Non-initial State, software only.
                          10050 
   0FF9 DD                10051 	.byte 221	; Non-initial State, software only.
   0FFA 8E                10052 	.byte 142	; New LSB for software period.
   0FFB 00                10053 	.byte 0	; New MSB for software period, maybe with noise.
                          10054 
   0FFC 1D                10055 	.byte 29	; Non-initial State, software only.
                          10056 
   0FFD 1D                10057 	.byte 29	; Non-initial State, software only.
                          10058 
   0FFE 1D                10059 	.byte 29	; Non-initial State, software only.
                          10060 
   0FFF 1D                10061 	.byte 29	; Non-initial State, software only.
                          10062 
   1000 5D                10063 	.byte 93	; Non-initial State, software only.
   1001 47                10064 	.byte 71	; New LSB for software period.
                          10065 
   1002 1D                10066 	.byte 29	; Non-initial State, software only.
                          10067 
   1003 1D                10068 	.byte 29	; Non-initial State, software only.
                          10069 
   1004 1D                10070 	.byte 29	; Non-initial State, software only.
                          10071 
   1005 1D                10072 	.byte 29	; Non-initial State, software only.
                          10073 
   1006 08                10074 	.byte 8
                          10075  .globl _Videopac_Subsong0DisarkPointerRegionStart1001
   1007                   10076 _Videopac_Subsong0DisarkPointerRegionStart1001:
   1007 06 F1             10077 	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
                          10078  .globl Videopac_Subsong0DisarkPointerRegionEnd1001
   1009                   10079 Videopac_Subsong0DisarkPointerRegionEnd1001:
                          10080 
                          10081  .globl _Videopac_Subsong0_RegisterBlock_410
   1009                   10082 _Videopac_Subsong0_RegisterBlock_410:
   1009 19                10083 	.byte 25	; Initial State: software only.
   100A 8E 00             10084 	.byte 142, 0	; Software period.
                          10085 
   100C 0D                10086 	.byte 13	; Non-initial State, software only.
                          10087 
   100D 45                10088 	.byte 69	; Non-initial State, software only.
   100E B3                10089 	.byte 179	; New LSB for software period.
                          10090 
   100F 05                10091 	.byte 5	; Non-initial State, software only.
                          10092 
   1010 49                10093 	.byte 73	; Non-initial State, software only.
   1011 D5                10094 	.byte 213	; New LSB for software period.
                          10095 
   1012 09                10096 	.byte 9	; Non-initial State, software only.
                          10097 
   1013 C1                10098 	.byte 193	; Non-initial State, software only.
   1014 1C                10099 	.byte 28	; New LSB for software period.
   1015 01                10100 	.byte 1	; New MSB for software period, maybe with noise.
                          10101 
   1016 01                10102 	.byte 1	; Non-initial State, software only.
                          10103 
   1017 05                10104 	.byte 5	; Non-initial State, software only.
                          10105 
   1018 05                10106 	.byte 5	; Non-initial State, software only.
                          10107 
   1019 05                10108 	.byte 5	; Non-initial State, software only.
                          10109 
   101A 05                10110 	.byte 5	; Non-initial State, software only.
                          10111 
   101B C1                10112 	.byte 193	; Non-initial State, software only.
   101C 8F                10113 	.byte 143	; New LSB for software period.
   101D 00                10114 	.byte 0	; New MSB for software period, maybe with noise.
                          10115 
   101E 01                10116 	.byte 1	; Non-initial State, software only.
                          10117 
   101F 41                10118 	.byte 65	; Non-initial State, software only.
   1020 B4                10119 	.byte 180	; New LSB for software period.
                          10120 
   1021 01                10121 	.byte 1	; Non-initial State, software only.
                          10122 
   1022 41                10123 	.byte 65	; Non-initial State, software only.
   1023 E2                10124 	.byte 226	; New LSB for software period.
                          10125 
   1024 08                10126 	.byte 8
                          10127  .globl _Videopac_Subsong0DisarkPointerRegionStart1002
   1025                   10128 _Videopac_Subsong0DisarkPointerRegionStart1002:
   1025 0F 58             10129 	.word _Videopac_Subsong0_RegisterBlock_321 + 27	; Optimization: goto common Block at index 17.
                          10130  .globl Videopac_Subsong0DisarkPointerRegionEnd1002
   1027                   10131 Videopac_Subsong0DisarkPointerRegionEnd1002:
                          10132 
                          10133  .globl _Videopac_Subsong0_RegisterBlock_414
   1027                   10134 _Videopac_Subsong0_RegisterBlock_414:
   1027 01                10135 	.byte 1	; Initial State: software only.
   1028 70 04             10136 	.byte 112, 4	; Software period.
                          10137 
   102A C1                10138 	.byte 193	; Non-initial State, software only.
   102B BC                10139 	.byte 188	; New LSB for software period.
   102C 03                10140 	.byte 3	; New MSB for software period, maybe with noise.
                          10141 
   102D C1                10142 	.byte 193	; Non-initial State, software only.
   102E F6                10143 	.byte 246	; New LSB for software period.
   102F 02                10144 	.byte 2	; New MSB for software period, maybe with noise.
                          10145 
   1030 41                10146 	.byte 65	; Non-initial State, software only.
   1031 38                10147 	.byte 56	; New LSB for software period.
                          10148 
   1032 C1                10149 	.byte 193	; Non-initial State, software only.
   1033 DE                10150 	.byte 222	; New LSB for software period.
   1034 01                10151 	.byte 1	; New MSB for software period, maybe with noise.
                          10152 
   1035 41                10153 	.byte 65	; Non-initial State, software only.
   1036 7B                10154 	.byte 123	; New LSB for software period.
                          10155 
   1037 41                10156 	.byte 65	; Non-initial State, software only.
   1038 1D                10157 	.byte 29	; New LSB for software period.
                          10158 
   1039 08                10159 	.byte 8
                          10160  .globl _Videopac_Subsong0DisarkPointerRegionStart1003
   103A                   10161 _Videopac_Subsong0DisarkPointerRegionStart1003:
   103A 0F 71             10162 	.word _Videopac_Subsong0_RegisterBlock_325 + 18	; Optimization: goto common Block at index 7.
                          10163  .globl Videopac_Subsong0DisarkPointerRegionEnd1003
   103C                   10164 Videopac_Subsong0DisarkPointerRegionEnd1003:
                          10165 
                          10166  .globl _Videopac_Subsong0_RegisterBlock_429
   103C                   10167 _Videopac_Subsong0_RegisterBlock_429:
   103C 29                10168 	.byte 41	; Initial State: software only.
   103D 8E 00             10169 	.byte 142, 0	; Software period.
                          10170 
   103F 15                10171 	.byte 21	; Non-initial State, software only.
                          10172 
   1040 4D                10173 	.byte 77	; Non-initial State, software only.
   1041 B3                10174 	.byte 179	; New LSB for software period.
                          10175 
   1042 0D                10176 	.byte 13	; Non-initial State, software only.
                          10177 
   1043 51                10178 	.byte 81	; Non-initial State, software only.
   1044 D5                10179 	.byte 213	; New LSB for software period.
                          10180 
   1045 11                10181 	.byte 17	; Non-initial State, software only.
                          10182 
   1046 C9                10183 	.byte 201	; Non-initial State, software only.
   1047 1C                10184 	.byte 28	; New LSB for software period.
   1048 01                10185 	.byte 1	; New MSB for software period, maybe with noise.
                          10186 
   1049 09                10187 	.byte 9	; Non-initial State, software only.
                          10188 
   104A 0D                10189 	.byte 13	; Non-initial State, software only.
                          10190 
   104B 0D                10191 	.byte 13	; Non-initial State, software only.
                          10192 
   104C 0D                10193 	.byte 13	; Non-initial State, software only.
                          10194 
   104D 0D                10195 	.byte 13	; Non-initial State, software only.
                          10196 
   104E C5                10197 	.byte 197	; Non-initial State, software only.
   104F 8F                10198 	.byte 143	; New LSB for software period.
   1050 00                10199 	.byte 0	; New MSB for software period, maybe with noise.
                          10200 
   1051 05                10201 	.byte 5	; Non-initial State, software only.
                          10202 
   1052 49                10203 	.byte 73	; Non-initial State, software only.
   1053 B4                10204 	.byte 180	; New LSB for software period.
                          10205 
   1054 09                10206 	.byte 9	; Non-initial State, software only.
                          10207 
   1055 41                10208 	.byte 65	; Non-initial State, software only.
   1056 E2                10209 	.byte 226	; New LSB for software period.
                          10210 
   1057 08                10211 	.byte 8
                          10212  .globl _Videopac_Subsong0DisarkPointerRegionStart1004
   1058                   10213 _Videopac_Subsong0DisarkPointerRegionStart1004:
   1058 0F 1B             10214 	.word _Videopac_Subsong0_RegisterBlock_304 + 27	; Optimization: goto common Block at index 17.
                          10215  .globl Videopac_Subsong0DisarkPointerRegionEnd1004
   105A                   10216 Videopac_Subsong0DisarkPointerRegionEnd1004:
                          10217 
                          10218  .globl _Videopac_Subsong0_RegisterBlock_463
   105A                   10219 _Videopac_Subsong0_RegisterBlock_463:
   105A 49                10220 	.byte 73	; Initial State: software only.
   105B 8E 00             10221 	.byte 142, 0	; Software period.
                          10222 
   105D 25                10223 	.byte 37	; Non-initial State, software only.
                          10224 
   105E 5D                10225 	.byte 93	; Non-initial State, software only.
   105F B3                10226 	.byte 179	; New LSB for software period.
                          10227 
   1060 1D                10228 	.byte 29	; Non-initial State, software only.
                          10229 
   1061 61                10230 	.byte 97	; Non-initial State, software only.
   1062 D5                10231 	.byte 213	; New LSB for software period.
                          10232 
   1063 21                10233 	.byte 33	; Non-initial State, software only.
                          10234 
   1064 D9                10235 	.byte 217	; Non-initial State, software only.
   1065 1C                10236 	.byte 28	; New LSB for software period.
   1066 01                10237 	.byte 1	; New MSB for software period, maybe with noise.
                          10238 
   1067 19                10239 	.byte 25	; Non-initial State, software only.
                          10240 
   1068 1D                10241 	.byte 29	; Non-initial State, software only.
                          10242 
   1069 1D                10243 	.byte 29	; Non-initial State, software only.
                          10244 
   106A 1D                10245 	.byte 29	; Non-initial State, software only.
                          10246 
   106B 1D                10247 	.byte 29	; Non-initial State, software only.
                          10248 
   106C D5                10249 	.byte 213	; Non-initial State, software only.
   106D 8F                10250 	.byte 143	; New LSB for software period.
   106E 00                10251 	.byte 0	; New MSB for software period, maybe with noise.
                          10252 
   106F 15                10253 	.byte 21	; Non-initial State, software only.
                          10254 
   1070 59                10255 	.byte 89	; Non-initial State, software only.
   1071 B4                10256 	.byte 180	; New LSB for software period.
                          10257 
   1072 19                10258 	.byte 25	; Non-initial State, software only.
                          10259 
   1073 51                10260 	.byte 81	; Non-initial State, software only.
   1074 E2                10261 	.byte 226	; New LSB for software period.
                          10262 
   1075 08                10263 	.byte 8
                          10264  .globl _Videopac_Subsong0DisarkPointerRegionStart1005
   1076                   10265 _Videopac_Subsong0DisarkPointerRegionStart1005:
   1076 0F C8             10266 	.word _Videopac_Subsong0_RegisterBlock_374 + 27	; Optimization: goto common Block at index 17.
                          10267  .globl Videopac_Subsong0DisarkPointerRegionEnd1005
   1078                   10268 Videopac_Subsong0DisarkPointerRegionEnd1005:
                          10269 
                          10270  .globl _Videopac_Subsong0_RegisterBlock_49
   1078                   10271 _Videopac_Subsong0_RegisterBlock_49:
   1078 01                10272 	.byte 1	; Initial State: software only.
   1079 DE 01             10273 	.byte 222, 1	; Software period.
                          10274 
   107B 08                10275 	.byte 8
                          10276  .globl _Videopac_Subsong0DisarkPointerRegionStart1006
   107C                   10277 _Videopac_Subsong0DisarkPointerRegionStart1006:
   107C 0B 90             10278 	.word _Videopac_Subsong0_RegisterBlock_96 + 49	; Optimization: goto common Block at index 37.
                          10279  .globl Videopac_Subsong0DisarkPointerRegionEnd1006
   107E                   10280 Videopac_Subsong0DisarkPointerRegionEnd1006:
                          10281 
                          10282  .globl _Videopac_Subsong0_RegisterBlock_79
   107E                   10283 _Videopac_Subsong0_RegisterBlock_79:
   107E 01                10284 	.byte 1	; Initial State: software only.
   107F 66 01             10285 	.byte 102, 1	; Software period.
                          10286 
   1081 08                10287 	.byte 8
                          10288  .globl _Videopac_Subsong0DisarkPointerRegionStart1007
   1082                   10289 _Videopac_Subsong0DisarkPointerRegionStart1007:
   1082 08 16             10290 	.word _Videopac_Subsong0_RegisterBlock_7 + 49	; Optimization: goto common Block at index 37.
                          10291  .globl Videopac_Subsong0DisarkPointerRegionEnd1007
   1084                   10292 Videopac_Subsong0DisarkPointerRegionEnd1007:
                          10293 
                          10294  .globl _Videopac_Subsong0_RegisterBlock_316
   1084                   10295 _Videopac_Subsong0_RegisterBlock_316:
   1084 19                10296 	.byte 25	; Initial State: software only.
   1085 38 02             10297 	.byte 56, 2	; Software period.
                          10298 
   1087 0D                10299 	.byte 13	; Non-initial State, software only.
                          10300 
   1088 0D                10301 	.byte 13	; Non-initial State, software only.
                          10302 
   1089 0D                10303 	.byte 13	; Non-initial State, software only.
                          10304 
   108A 0D                10305 	.byte 13	; Non-initial State, software only.
                          10306 
   108B CD                10307 	.byte 205	; Non-initial State, software only.
   108C 1C                10308 	.byte 28	; New LSB for software period.
   108D 01                10309 	.byte 1	; New MSB for software period, maybe with noise.
                          10310 
   108E 0D                10311 	.byte 13	; Non-initial State, software only.
                          10312 
   108F 0D                10313 	.byte 13	; Non-initial State, software only.
                          10314 
   1090 0D                10315 	.byte 13	; Non-initial State, software only.
                          10316 
   1091 0D                10317 	.byte 13	; Non-initial State, software only.
                          10318 
   1092 CD                10319 	.byte 205	; Non-initial State, software only.
   1093 8E                10320 	.byte 142	; New LSB for software period.
   1094 00                10321 	.byte 0	; New MSB for software period, maybe with noise.
                          10322 
   1095 0D                10323 	.byte 13	; Non-initial State, software only.
                          10324 
                          10325 
                          10326  .globl _Videopac_Subsong0_RegisterBlock_336
   1096                   10327 _Videopac_Subsong0_RegisterBlock_336:
   1096 19                10328 	.byte 25	; Initial State: software only.
   1097 8E 00             10329 	.byte 142, 0	; Software period.
                          10330 
   1099 0D                10331 	.byte 13	; Non-initial State, software only.
                          10332 
   109A 0D                10333 	.byte 13	; Non-initial State, software only.
                          10334 
   109B 4D                10335 	.byte 77	; Non-initial State, software only.
   109C 47                10336 	.byte 71	; New LSB for software period.
                          10337 
   109D 0D                10338 	.byte 13	; Non-initial State, software only.
                          10339 
   109E 0D                10340 	.byte 13	; Non-initial State, software only.
                          10341 
   109F 0D                10342 	.byte 13	; Non-initial State, software only.
                          10343 
   10A0 0D                10344 	.byte 13	; Non-initial State, software only.
                          10345 
   10A1 08                10346 	.byte 8
                          10347  .globl _Videopac_Subsong0DisarkPointerRegionStart1008
   10A2                   10348 _Videopac_Subsong0DisarkPointerRegionStart1008:
   10A2 06 F1             10349 	.word _Videopac_Subsong0_RegisterBlock_20 + 1	; Optimization: goto common Block at index 1.
                          10350  .globl Videopac_Subsong0DisarkPointerRegionEnd1008
   10A4                   10351 Videopac_Subsong0DisarkPointerRegionEnd1008:
                          10352 
                          10353  .globl _Videopac_Subsong0_RegisterBlock_8
   10A4                   10354 _Videopac_Subsong0_RegisterBlock_8:
   10A4 09                10355 	.byte 9	; Initial State: software only.
   10A5 D5 00             10356 	.byte 213, 0	; Software period.
                          10357 
   10A7 08                10358 	.byte 8
                          10359  .globl _Videopac_Subsong0DisarkPointerRegionStart1009
   10A8                   10360 _Videopac_Subsong0DisarkPointerRegionStart1009:
   10A8 06 F8             10361 	.word _Videopac_Subsong0_RegisterBlock_1 + 3	; Optimization: goto common Block at index 1.
                          10362  .globl Videopac_Subsong0DisarkPointerRegionEnd1009
   10AA                   10363 Videopac_Subsong0DisarkPointerRegionEnd1009:
                          10364 
                          10365  .globl Videopac_Subsong0DisarkByteRegionEnd945
   10AA                   10366 Videopac_Subsong0DisarkByteRegionEnd945:
                          10367 ; include line ->                     include  "Videopac_aky_playerconfig.asm"
                          10368 
                          10369 ; include line ->                     include  "aky_player_c.i"
                          10370 ; ARKOS TRACKER II 
                          10371 ; Player for the Vectrex of the AKY format
                          10372 ; inspite of the 6809 being a BIG ENDIAN
                          10373 ;
                          10374 ; the AKY must be saved as sources for little ENDIAN, because that is
                          10375 ; what the code below interprets!
                          10376 ;
                          10377 ; Plays at an average of about 2000 cycles
                          10378 ; spikes up to 2500 have been seen.
                          10379 ; it uses 32 bytes of RAM, starting at "arkosRamStart"
                          10380 ;
                          10381 ; This is a manual transcode from the 6502 player, there has been no
                          10382 ; effort taken, to performance enhance this player.
                          10383 ;
                          10384 ;
                          10385 ; MACROS for shadow register setting
                          10386 ; macros assumes; register U pointing to Vec_Music_Work (this is a shadow)
                          10387 ; assumes var register is positive (always...)
                          10388 ;
                          10389 ; destroys a 
                          10390 ; destroys d
                          10391 ; destroys a, b
                          10392 ; destroys a, b
                          10393 ;
                          10394 ;
                          10395                     .area .bss      
                          10396 ; Warning - org line found, my be countering relocatable code!
                          10397 ;                    org      arkosRamStart 
                     0000 10398 NO_ERROR            =      0 
                     0001 10399 NO_3_CHANNELS_ERROR  =     1 
                          10400 ; -------------------------------------
                          10401 
                          10402 ; =============================================================================
                          10403 ;Is there a loaded Player Configuration source? If no, use a default configuration.
                          10404 ; => to generate Player Configuration, see export option in Arkos Tracker 2 
                          10405 ; simplified version...
                     0001 10406 PLY_CFG_UseHardwareSounds  =  1 
                     0001 10407 PLY_CFG_UseRetrig   =        1 
                     0001 10408 PLY_CFG_NoSoftNoHard  =      1                            ; not used 
                     0001 10409 PLY_CFG_NoSoftNoHard_Noise  =  1                          ; not used 
                     0001 10410 PLY_CFG_SoftOnly    =        1                            ; not used 
                     0001 10411 PLY_CFG_SoftOnly_Noise  =    1                            ; not used 
                     0001 10412 PLY_CFG_SoftToHard  =        1 
                     0001 10413 PLY_CFG_SoftToHard_Noise  =  1 
                     0001 10414 PLY_CFG_SoftToHard_Retrig  =  1                           ; not used 
                     0001 10415 PLY_CFG_HardOnly    =        1 
                     0001 10416 PLY_CFG_HardOnly_Noise  =    1                            ; not used 
                     0001 10417 PLY_CFG_HardOnly_Retrig  =   1                            ; not used 
                     0001 10418 PLY_CFG_SoftAndHard  =       1                            ; not used 
                     0001 10419 PLY_CFG_SoftAndHard_Noise  =  1 
                     0001 10420 PLY_CFG_SoftAndHard_Retrig  =  1                          ; not used 
                          10421 ;Agglomerates the hardware sound configuration flags, because they are treated the same in this player.
                     0001 10422 _PLY_AKY_USE_SoftAndHard_Agglomerated  =  1 
                     0001 10423                     _PLY_AKY_USE_SoftAndHard_Agglomerated  = 1 
                     0001 10424 _PLY_AKY_USE_SoftAndHard_Agglomerated  =  1 
                     0001 10425 _PLY_AKY_USE_SoftAndHard_Noise_Agglomerated  =  1 
                     0001 10426 _PLY_AKY_USE_SoftAndHard_Noise_Agglomerated  =  1 
                          10427 ;Any noise?
                     0001 10428 _PLY_AKY_USE_Noise   =        1 
                     0001 10429 _PLY_AKY_USE_Noise   =        1 
                     0001 10430 _PLY_AKY_USE_Noise   =        1 
                          10431 ; =============================================================================
                          10432                     .area .text     
                          10433 ; NOTE!!!
                          10434 ; THIS MIGHT BE INCORRECT FOR YOUR NEEDS!
                          10435 ; MOST OF THE TIME FOR MALBAN THIS IS GOOD!
                          10436  .setdp   0xd000,_DATA
                          10437 ; Initializes the player.
                          10438 ; expected in regY the song address, usually something like "Main_Subsong0"
                          10439 ; y is our main "pointer" register
                          10440  .globl _initThroneSong
   10AA                   10441 _initThroneSong:
   10AA 10 8E 46 4F   [ 4]10442                     ldy      #Throne_Subsong0               ; song to be played 
   10AE 20 04         [ 3]10443  bra _PLY_AKY_INIT
                          10444  .globl _initSong
   10B0                   10445 _initSong:
   10B0 10 8E 00 C5   [ 4]10446                     ldy      #Videopac_Subsong0               ; song to be played 
                          10447 
                          10448  .globl _PLY_AKY_INIT
   10B4                   10449 _PLY_AKY_INIT: 
   10B4 86 01         [ 2]10450  lda #1
   10B6 B7 CA F7      [ 5]10451  sta _PLY_SONG_PLAYING
   10B9 7F CA D6      [ 7]10452                     clr      _PLY_error                    ; initially no error! 
                          10453                                                           ; Skips the header. 
                          10454                                                           ; Skips the format version. 
   10BC EC A4         [ 5]10455                     LDD      ,y                           ; d now a format, b = channel count 
   10BE C1 03         [ 2]10456                     cmpb     #3                           ; channel count 
   10C0 26 1B         [ 3]10457                     BNE      channelError 
                          10458                                                           ; two bytes: format version and channel count 
                          10459                                                           ; four bytes: frequency (should for Vectrex hopefully 1500000Hz 
   10C2 31 26         [ 5]10460                     leay     6,y 
                          10461                                                           ; y/pcData now pointing to subsong 0 linker 
                          10462                                                           ; save current linker pointer, this is the 
                          10463                                                           ; address of the the next pattern to be initialized! 
   10C4 10 BF CA DF   [ 7]10464                     sty      _PLY_AKY_PATTERNFRAMECOUNTER_OVER 
                          10465                                                           ; initial state = 0 
   10C8 7F CA DC      [ 7]10466                     clr      _initFlag1 
   10CB 7F CA DD      [ 7]10467                     clr      _initFlag2 
   10CE 7F CA DE      [ 7]10468                     clr      _initFlag3 
                          10469                                                           ; init frame counter with 1, so it gets count down immediately to 0 
                          10470                                                           ; and reinits the next (FIRST) pattern! 
   10D1 CC 00 01      [ 3]10471                     ldd      #1 
   10D4 FD CA E1      [ 6]10472                     std      _PLY_AKY_PATTERNFRAMECOUNTER 
   10D7 86 FF         [ 2]10473                     lda      #0xff                         ; malban add, default retrigger 
   10D9 B7 CA F2      [ 5]10474                     sta      _PLY_AKY_PSGREGISTER13_RETRIG 
                          10475  .globl errorRTS
   10DC                   10476 errorRTS: 
   10DC 39            [ 5]10477                     RTS      
                          10478 
                          10479  .globl channelError
   10DD                   10480 channelError: 
                          10481 ; don't really know what the original player is 
                          10482 ; trying to acomplish here (6502)
                          10483 ; if not 3 it goes back to before the frequency skip
                          10484 ; ->looks wrong (checked with z80 code, 6502 is wrong!)
                          10485 ; for now I just exit!
   10DD 86 01         [ 2]10486                     lda      #NO_3_CHANNELS_ERROR 
   10DF B7 CA D6      [ 5]10487                     sta      _PLY_error 
   10E2 39            [ 5]10488                     rts      
   10E3                   10489 end_ofSong:
   10E3 7F CA F7      [ 7]10490  clr _PLY_SONG_PLAYING
   10E6 39            [ 5]10491  rts
                          10492 ;-----------
                          10493 ;       Plays the music. It must have been initialized before.
                          10494  .globl _PLY_AKY_PLAY
   10E7                   10495 _PLY_AKY_PLAY: 
   10E7 F6 CA F7      [ 5]10496  ldb _PLY_SONG_PLAYING
   10EA 27 F7         [ 3]10497  beq end_ofSong
   10EC CE C8 3F      [ 3]10498                     ldu      #Vec_Music_Work              ; prerequisite for writing to PSG shadow register 
   10EF FC CA E1      [ 6]10499                     ldd      _PLY_AKY_PATTERNFRAMECOUNTER 
   10F2 83 00 01      [ 4]10500                     subd     #1 
   10F5 FD CA E1      [ 6]10501                     std      _PLY_AKY_PATTERNFRAMECOUNTER 
   10F8 26 2F         [ 3]10502                     bne      read_the_tracks              ;The pattern is not over. go on reading the track 
                          10503 ; The pattern is over. Reads the next one.  
                          10504  .globl _PLY_AKY_PTLINKER
   10FA                   10505 _PLY_AKY_PTLINKER: 
   10FA 10 BE CA DF   [ 7]10506                     ldy      _PLY_AKY_PATTERNFRAMECOUNTER_OVER ; get the address of the next frame 
   10FE EC A1         [ 8]10507                     ldd      ,y++                         ;Gets the duration of the Pattern, or 0 if end of the song. 
   1100 26 07         [ 3]10508                     BNE      _PLY_AKY_LINKERNOTENDSONG 
   1102 10 AE A1      [ 9]10509                     ldy      ,y++                         ; End of the song. Where to loop? 
   1105 27 DC         [ 3]10510  beq end_ofSong
                          10511                                                           ;Gets the duration again. No need to check the end of the song, 
                          10512                                                           ;we know it contains at least one pattern. 
   1107 EC A1         [ 8]10513                     ldd      ,y++                         ;Gets the duration of the Pattern, or 0 if end of the song. 
                          10514  .globl _PLY_AKY_LINKERNOTENDSONG
   1109                   10515 _PLY_AKY_LINKERNOTENDSONG: 
   1109 FD CA E1      [ 6]10516                     std      _PLY_AKY_PATTERNFRAMECOUNTER 
   110C EC A1         [ 8]10517                     ldd      ,y++ 
   110E FD CA E3      [ 6]10518                     std      _PLY_AKY_CHANNEL1_PTTRACK 
   1111 EC A1         [ 8]10519                     ldd      ,y++ 
   1113 FD CA E5      [ 6]10520                     std      _PLY_AKY_CHANNEL2_PTTRACK 
   1116 EC A1         [ 8]10521                     ldd      ,y++ 
   1118 FD CA E7      [ 6]10522                     std      _PLY_AKY_CHANNEL3_PTTRACK 
   111B 10 BF CA DF   [ 7]10523                     sty      _PLY_AKY_PATTERNFRAMECOUNTER_OVER 
   111F 86 01         [ 2]10524                     lda      #01                          ;Resets the RegisterBlocks of the channel >1. The first one is skipped so there is no need to do so. 
   1121 B7 CA EA      [ 5]10525                     sta      _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK 
   1124 B7 CA EB      [ 5]10526                     sta      _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK 
   1127 20 05         [ 3]10527                     bra      in_read_the_tracks1 
                          10528 
                          10529 ; =====================================
                          10530 ;Reading the Tracks.
                          10531 ; =====================================
                          10532  .globl read_the_tracks
   1129                   10533 read_the_tracks: 
                          10534 ; Channel 1
   1129 7A CA E9      [ 7]10535                     dec      _PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK ;Frames to wait before reading the next RegisterBlock. 0 = finished. 
   112C 26 15         [ 3]10536                     bne      _PLY_AKY_CHANNEL1_REGISTERBLOCK_PROCESS 
                          10537  .globl in_read_the_tracks1
   112E                   10538 in_read_the_tracks1: 
                          10539                                                           ;This RegisterBlock is finished. Reads the next one from the Track. 
   112E 7F CA DC      [ 7]10540                     clr      _initFlag1                    ;Obviously, starts at the initial state. 
   1131 10 BE CA E3   [ 7]10541                     ldy      _PLY_AKY_CHANNEL1_PTTRACK 
   1135 A6 A0         [ 6]10542                     lda      ,y+                          ; A is the duration of the block. 
   1137 B7 CA E9      [ 5]10543                     sta      _PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK 
   113A EC A1         [ 8]10544                     ldd      ,y++ 
   113C FD CA EC      [ 6]10545                     std      _PLY_AKY_CHANNEL1_PTREGISTERBLOCK 
   113F 10 BF CA E3   [ 7]10546                     sty      _PLY_AKY_CHANNEL1_PTTRACK 
                          10547  .globl _PLY_AKY_CHANNEL1_REGISTERBLOCK_PROCESS
   1143                   10548 _PLY_AKY_CHANNEL1_REGISTERBLOCK_PROCESS: 
                          10549 ;
                          10550 ; Channel 2
   1143 7A CA EA      [ 7]10551                     dec      _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK ;Frames to wait before reading the next RegisterBlock. 0 = finished. 
   1146 26 15         [ 3]10552                     bne      _PLY_AKY_CHANNEL2_REGISTERBLOCK_PROCESS 
                          10553                                                           ;This RegisterBlock is finished. Reads the next one from the Track. 
   1148 7F CA DD      [ 7]10554                     clr      _initFlag2                    ;Obviously, starts at the initial state. 
   114B 10 BE CA E5   [ 7]10555                     ldy      _PLY_AKY_CHANNEL2_PTTRACK 
   114F A6 A0         [ 6]10556                     lda      ,y+                          ;A is the duration of the block. 
   1151 B7 CA EA      [ 5]10557                     sta      _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK 
   1154 EC A1         [ 8]10558                     ldd      ,y++ 
   1156 FD CA EE      [ 6]10559                     std      _PLY_AKY_CHANNEL2_PTREGISTERBLOCK 
   1159 10 BF CA E5   [ 7]10560                     sty      _PLY_AKY_CHANNEL2_PTTRACK 
                          10561  .globl _PLY_AKY_CHANNEL2_REGISTERBLOCK_PROCESS
   115D                   10562 _PLY_AKY_CHANNEL2_REGISTERBLOCK_PROCESS: 
                          10563 ;
                          10564 ; channel 3
   115D 7A CA EB      [ 7]10565                     dec      _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK ;Frames to wait before reading the next RegisterBlock. 0 = finished. 
   1160 26 15         [ 3]10566                     bne      _PLY_AKY_CHANNEL3_REGISTERBLOCK_PROCESS 
                          10567                                                           ;This RegisterBlock is finished. Reads the next one from the Track. 
   1162 7F CA DE      [ 7]10568                     clr      _initFlag3                    ;Obviously, starts at the initial state. 
   1165 10 BE CA E7   [ 7]10569                     ldy      _PLY_AKY_CHANNEL3_PTTRACK 
   1169 A6 A0         [ 6]10570                     lda      ,y+                          ;a is the duration of the block. 
   116B B7 CA EB      [ 5]10571                     sta      _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK 
   116E EC A1         [ 8]10572                     ldd      ,y++ 
   1170 FD CA F0      [ 6]10573                     std      _PLY_AKY_CHANNEL3_PTREGISTERBLOCK 
   1173 10 BF CA E7   [ 7]10574                     sty      _PLY_AKY_CHANNEL3_PTTRACK 
                          10575  .globl _PLY_AKY_CHANNEL3_REGISTERBLOCK_PROCESS
   1177                   10576 _PLY_AKY_CHANNEL3_REGISTERBLOCK_PROCESS: 
                          10577 ; =====================================
                          10578 ;Reading the RegisterBlock.
                          10579 ; =====================================
   1177 86 08         [ 2]10580                     LDA      #08 
   1179 B7 CA D9      [ 5]10581                     STA      _volumeRegister               ; first volume register 
   117C 7F CA DA      [ 7]10582                     clr      _frequencyRegister 
                          10583                                                           ; Register 7 with default values: fully sound-open but noise-close. 
                          10584                                                           ;R7 has been shift twice to the left, it will be shifted back as the channels are treated. 
   117F 86 E0         [ 2]10585                     LDA      #0xE0 
   1181 B7 CA DB      [ 5]10586                     STA      _r7 
                          10587 ;
                          10588 ;Channel 1 
   1184 10 BE CA EC   [ 7]10589                     ldy      _PLY_AKY_CHANNEL1_PTREGISTERBLOCK 
   1188 F6 CA DC      [ 5]10590                     ldb      _initFlag1 
   118B 8D 58         [ 7]10591                     bSR      _PLY_AKY_READREGISTERBLOCK 
   118D 86 01         [ 2]10592                     lda      #1 
   118F B7 CA DC      [ 5]10593                     sta      _initFlag1 
   1192 10 BF CA EC   [ 7]10594                     sty      _PLY_AKY_CHANNEL1_PTREGISTERBLOCK 
                          10595 ;
                          10596 ; Channel 2 
   1196 74 CA DB      [ 7]10597                     LSR      _r7                           ;Shifts the R7 for the next channels. 
   1199 10 BE CA EE   [ 7]10598                     ldy      _PLY_AKY_CHANNEL2_PTREGISTERBLOCK 
   119D F6 CA DD      [ 5]10599                     ldb      _initFlag2 
   11A0 8D 43         [ 7]10600                     bSR      _PLY_AKY_READREGISTERBLOCK 
   11A2 86 01         [ 2]10601                     lda      #1 
   11A4 B7 CA DD      [ 5]10602                     sta      _initFlag2 
   11A7 10 BF CA EE   [ 7]10603                     sty      _PLY_AKY_CHANNEL2_PTREGISTERBLOCK 
                          10604 ;
                          10605 ; Channel 3 
   11AB 76 CA DB      [ 7]10606                     ROR      _r7                           ;Shifts the R7 for the next channels. 
   11AE 10 BE CA F0   [ 7]10607                     ldy      _PLY_AKY_CHANNEL3_PTREGISTERBLOCK 
   11B2 F6 CA DE      [ 5]10608                     ldb      _initFlag3 
   11B5 8D 2E         [ 7]10609                     bSR      _PLY_AKY_READREGISTERBLOCK 
   11B7 86 01         [ 2]10610                     lda      #1 
   11B9 B7 CA DE      [ 5]10611                     sta      _initFlag3 
   11BC 10 BF CA F0   [ 7]10612                     sty      _PLY_AKY_CHANNEL3_PTREGISTERBLOCK 
                          10613 ;
                          10614 ;Almost all the channel specific registers have been sent. Now sends the remaining registers (6, 7, 11, 12, 13).
                          10615 ;Register 7. Note that managing register 7 before 6/11/12 is done on purpose.
                          10616 ; macro call ->                     SET_PSG_DIR_VAR  7, _r7 
   11C0 B6 CA DB      [ 5]10617                     lda      _r7 
   11C3 A7 47         [ 5]10618                     sta      7, u 
                          10619 ; macro call ->                     SET_PSG_DIR_VAR  6, _PLY_AKY_PSGREGISTER6 
   11C5 B6 CA F3      [ 5]10620                     lda      _PLY_AKY_PSGREGISTER6 
   11C8 A7 46         [ 5]10621                     sta      6, u 
                          10622 ; macro call ->                     SET_PSG_DIR_VAR  11, _PLY_AKY_PSGREGISTER11 
   11CA B6 CA F4      [ 5]10623                     lda      _PLY_AKY_PSGREGISTER11 
   11CD A7 4B         [ 5]10624                     sta      11, u 
                          10625 ; macro call ->                     SET_PSG_DIR_VAR  12, _PLY_AKY_PSGREGISTER12 
   11CF B6 CA F5      [ 5]10626                     lda      _PLY_AKY_PSGREGISTER12 
   11D2 A7 4C         [ 5]10627                     sta      12, u 
   11D4 B6 CA F6      [ 5]10628                     lda      _PLY_AKY_PSGREGISTER13 
   11D7 B1 CA F2      [ 5]10629                     cmpa     _PLY_AKY_PSGREGISTER13_RETRIG ;If IsRetrig?, force the R13 to be triggered. 
   11DA 27 08         [ 3]10630                     beq      _PLY_AKY_PSGREGISTER13_END 
   11DC B7 CA F2      [ 5]10631                     sta      _PLY_AKY_PSGREGISTER13_RETRIG 
                          10632 ; macro call ->                     SET_PSG_DIR_VAR  13, _PLY_AKY_PSGREGISTER13 
   11DF B6 CA F6      [ 5]10633                     lda      _PLY_AKY_PSGREGISTER13 
   11E2 A7 4D         [ 5]10634                     sta      13, u 
                          10635  .globl _PLY_AKY_PSGREGISTER13_END
   11E4                   10636 _PLY_AKY_PSGREGISTER13_END: 
                          10637  .globl _PLY_AKY_EXIT
   11E4                   10638 _PLY_AKY_EXIT: 
   11E4 39            [ 5]10639                     RTS      
                          10640 
                          10641 ; ****************************************************************************************
                          10642 ; -----------------------------------------------------------------------------
                          10643 ;Generic code interpreting the RegisterBlock
                          10644 ; IN:   regY = First Byte
                          10645 ;       regB = 0 = initial state, 1 = non-initial state. 
                          10646 ; -----------------------------------------------------------------------------
                          10647  .globl _PLY_AKY_READREGISTERBLOCK
   11E5                   10648 _PLY_AKY_READREGISTERBLOCK: 
   11E5 A6 A0         [ 6]10649                     lda      ,y+ 
   11E7 B7 CA D7      [ 5]10650                     sta      _ACCA 
   11EA 5D            [ 2]10651                     tstb     
   11EB 10 26 01 0B   [ 6]10652                     lbne     _PLY_AKY_RRB_NONINITIALSTATE 
                          10653 ;Initial state. 
   11EF 76 CA D7      [ 7]10654                     ror      _ACCA 
   11F2 25 79         [ 3]10655                     bcs      _PLY_AKY_RRB_IS_SOFTWAREONLYORSOFTWAREANDHARDWARE 
   11F4 76 CA D7      [ 7]10656                     ror      _ACCA 
   11F7 25 2C         [ 3]10657                     bcs      _PLY_AKY_RRB_IS_HARDWAREONLY 
                          10658 ; -----------------------------------------------------------------------------
                          10659 ;Generic code interpreting the RegisterBlock - Initial state.
                          10660 ; IN:   regY = Points after the first byte.
                          10661 ;       _ACCA (A) = First byte, twice shifted to the right (type removed).
                          10662 ;       r7 = Register 7. All sounds are open (0) by default, all noises closed (1).
                          10663 ;       _volumeRegister = Volume register.
                          10664 ;       _frequencyRegister = LSB frequency register.
                          10665 ;
                          10666 ; OUT:  regY MUST point after the structure.
                          10667 ;       r7 = updated (ONLY bit 2 and 5).
                          10668 ;       _volumeRegister = Volume register increased of 1 (*** IMPORTANT! The code MUST increase it, even if not using it! ***)
                          10669 ;       _frequencyRegister = LSB frequency register, increased of 2.
                          10670 ; -----------------------------------------------------------------------------
                          10671  .globl _PLY_AKY_RRB_IS_NOSOFTWARENOHARDWARE
   11F9                   10672 _PLY_AKY_RRB_IS_NOSOFTWARENOHARDWARE: 
   11F9 76 CA D7      [ 7]10673                     ror      _ACCA                         ;Noise? 
   11FC 24 0D         [ 3]10674                     bcc      _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_READVOLUME 
   11FE A6 A0         [ 6]10675                     lda      ,y+                          ;There is a noise. Reads it. 
   1200 B7 CA F3      [ 5]10676                     STA      _PLY_AKY_PSGREGISTER6 
   1203 B6 CA DB      [ 5]10677                     LDA      _r7                           ;Opens the noise channel. 
   1206 84 DF         [ 2]10678                     anda     #0b11011111                   ; reset bit 5 (open) 
   1208 B7 CA DB      [ 5]10679                     STA      _r7 
                          10680 ;------------
                          10681  .globl _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_READVOLUME
   120B                   10682 _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_READVOLUME: 
                          10683 ;The volume is now in b0-b3. 
                          10684 ;and %1111 ;No need, the bit 7 was 0. 
                          10685 ; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
   120B B6 CA D7      [ 5]10686                     lda      _ACCA 
   120E F6 CA D9      [ 5]10687                     ldb      _volumeRegister 
   1211 A7 C5         [ 5]10688                     sta      b,u 
   1213 7C CA D9      [ 7]10689                     inc      _volumeRegister               ;Increases the volume register. 
   1216 7C CA DA      [ 7]10690                     inc      _frequencyRegister 
   1219 7C CA DA      [ 7]10691                     inc      _frequencyRegister 
   121C B6 CA DB      [ 5]10692                     LDA      _r7                           ;Closes the sound channel. 
   121F 8A 04         [ 2]10693                     ORA      #0b00000100                   ; set bit 2 (close) 
   1221 B7 CA DB      [ 5]10694                     STA      _r7 
   1224 39            [ 5]10695                     RTS      
                          10696 
                          10697 ; -------------------------------------
                          10698  .globl _PLY_AKY_RRB_IS_HARDWAREONLY
   1225                   10699 _PLY_AKY_RRB_IS_HARDWAREONLY: 
   1225 76 CA D7      [ 7]10700                     ROR      _ACCA                         ;Retrig? 
   1228 24 0B         [ 3]10701                     BCC      _PLY_AKY_RRB_IS_HO_NORETRIG 
   122A B6 CA D7      [ 5]10702                     LDA      _ACCA 
   122D 8A 80         [ 2]10703                     ORA      #0b10000000 
   122F B7 CA D7      [ 5]10704                     STA      _ACCA 
   1232 B7 CA F2      [ 5]10705                     STA      _PLY_AKY_PSGREGISTER13_RETRIG ;A value to make sure the retrig is performed, yet A can still be use. 
                          10706  .globl _PLY_AKY_RRB_IS_HO_NORETRIG
   1235                   10707 _PLY_AKY_RRB_IS_HO_NORETRIG: 
   1235 76 CA D7      [ 7]10708                     ROR      _ACCA                         ;Noise? 
   1238 24 0D         [ 3]10709                     BCC      _PLY_AKY_RRB_IS_HO_NONOISE 
   123A A6 A0         [ 6]10710                     lda      ,y+                          ;Reads the noise. 
   123C B7 CA F3      [ 5]10711                     STA      _PLY_AKY_PSGREGISTER6 
   123F B6 CA DB      [ 5]10712                     LDA      _r7                           ;Opens the noise channel. 
   1242 84 DF         [ 2]10713                     ANDA     #0b11011111                   ; reset bit 5 (open) 
   1244 B7 CA DB      [ 5]10714                     STA      _r7 
                          10715  .globl _PLY_AKY_RRB_IS_HO_NONOISE
   1247                   10716 _PLY_AKY_RRB_IS_HO_NONOISE: 
   1247 B6 CA D7      [ 5]10717                     LDA      _ACCA                         ;The envelope. 
   124A 84 0F         [ 2]10718                     ANDA     #15 
   124C B7 CA F6      [ 5]10719                     STA      _PLY_AKY_PSGREGISTER13 
   124F EC A1         [ 8]10720                     ldd      ,y++                         ;Copies the hardware period. 
   1251 FD CA F4      [ 6]10721                     STD      _PLY_AKY_PSGREGISTER11        ;+12 
   1254 B6 CA DB      [ 5]10722                     LDA      _r7                           ;Closes the sound channel. 
   1257 8A 04         [ 2]10723                     ORA      #0b00000100                   ; set bit 2 (close) 
   1259 B7 CA DB      [ 5]10724                     STA      _r7 
                          10725 ; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff 
   125C 86 FF         [ 2]10726                     lda      #0xff 
   125E F6 CA D9      [ 5]10727                     ldb      _volumeRegister 
   1261 A7 C5         [ 5]10728                     sta      b, u 
   1263 7C CA D9      [ 7]10729                     inc      _volumeRegister               ;Increases the volume register. 
   1266 7C CA DA      [ 7]10730                     inc      _frequencyRegister 
   1269 7C CA DA      [ 7]10731                     inc      _frequencyRegister 
   126C 39            [ 5]10732                     RTS      
                          10733 
                          10734 ; -------------------------------------
                          10735  .globl _PLY_AKY_RRB_IS_SOFTWAREONLYORSOFTWAREANDHARDWARE
   126D                   10736 _PLY_AKY_RRB_IS_SOFTWAREONLYORSOFTWAREANDHARDWARE: 
   126D 76 CA D7      [ 7]10737                     ROR      _ACCA                         ;Another decision to make about the sound type. 
   1270 25 32         [ 3]10738                     BCS      _PLY_AKY_RRB_IS_SOFTWAREANDHARDWARE 
                          10739 ;Software only. Structure: 0vvvvntt. 
   1272 76 CA D7      [ 7]10740                     ROR      _ACCA                         ;Noise? 
   1275 24 0D         [ 3]10741                     BCC      _PLY_AKY_RRB_IS_SOFTWAREONLY_NONOISE 
                          10742                                                           ;Noise. Reads it. 
   1277 A6 A0         [ 6]10743                     lda      ,y+ 
   1279 B7 CA F3      [ 5]10744                     STA      _PLY_AKY_PSGREGISTER6 
   127C B6 CA DB      [ 5]10745                     LDA      _r7                           ;Opens the noise channel. 
   127F 84 DF         [ 2]10746                     ANDA     #0b11011111                   ; reset bit 5 (open) 
   1281 B7 CA DB      [ 5]10747                     STA      _r7 
                          10748  .globl _PLY_AKY_RRB_IS_SOFTWAREONLY_NONOISE
   1284                   10749 _PLY_AKY_RRB_IS_SOFTWAREONLY_NONOISE: 
                          10750 ;Reads the volume (now b0-b3). 
                          10751 ;Note: we do NOT peform a "and %1111" because we know the bit 7 of the original byte is 0, so the bit 4 is currently 0. Else the hardware volume would be on! 
                          10752 ; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
   1284 B6 CA D7      [ 5]10753                     lda      _ACCA 
   1287 F6 CA D9      [ 5]10754                     ldb      _volumeRegister 
   128A A7 C5         [ 5]10755                     sta      b,u 
   128C 7C CA D9      [ 7]10756                     INC      _volumeRegister               ;Increases the volume register. 
                          10757 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
   128F F6 CA DA      [ 5]10758                     ldb      _frequencyRegister 
   1292 A6 A0         [ 6]10759                     lda      ,y+ 
   1294 A7 C5         [ 5]10760                     sta      b, u 
   1296 7C CA DA      [ 7]10761                     inc      _frequencyRegister 
                          10762 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the MSB software frequency. 
   1299 F6 CA DA      [ 5]10763                     ldb      _frequencyRegister 
   129C A6 A0         [ 6]10764                     lda      ,y+ 
   129E A7 C5         [ 5]10765                     sta      b, u 
   12A0 7C CA DA      [ 7]10766                     inc      _frequencyRegister 
   12A3 39            [ 5]10767                     RTS      
                          10768 
                          10769 ; -------------------------------------
                          10770  .globl _PLY_AKY_RRB_IS_SOFTWAREANDHARDWARE
   12A4                   10771 _PLY_AKY_RRB_IS_SOFTWAREANDHARDWARE: 
   12A4 76 CA D7      [ 7]10772                     ROR      _ACCA                         ;Retrig? 
   12A7 24 0B         [ 3]10773                     BCC      _PLY_AKY_RRB_IS_SAH_NORETRIG 
   12A9 B6 CA D7      [ 5]10774                     LDA      _ACCA 
   12AC 8A 80         [ 2]10775                     ORA      #0b10000000 
   12AE B7 CA F2      [ 5]10776                     STA      _PLY_AKY_PSGREGISTER13_RETRIG ;A value to make sure the retrig is performed, yet A can still be use. 
   12B1 B7 CA D7      [ 5]10777                     STA      _ACCA 
                          10778  .globl _PLY_AKY_RRB_IS_SAH_NORETRIG
   12B4                   10779 _PLY_AKY_RRB_IS_SAH_NORETRIG: 
   12B4 76 CA D7      [ 7]10780                     ROR      _ACCA                         ;Noise? 
   12B7 24 0D         [ 3]10781                     BCC      _PLY_AKY_RRB_IS_SAH_NONOISE 
   12B9 A6 A0         [ 6]10782                     lda      ,y+                          ;Reads the noise. 
   12BB B7 CA F3      [ 5]10783                     STA      _PLY_AKY_PSGREGISTER6 
   12BE B6 CA DB      [ 5]10784                     LDA      _r7                           ;Opens the noise channel. 
   12C1 84 DF         [ 2]10785                     ANDA     #0b11011111                   ; reset bit 5 (open noise) 
   12C3 B7 CA DB      [ 5]10786                     STA      _r7 
                          10787  .globl _PLY_AKY_RRB_IS_SAH_NONOISE
   12C6                   10788 _PLY_AKY_RRB_IS_SAH_NONOISE: 
   12C6 B6 CA D7      [ 5]10789                     LDA      _ACCA                         ;The envelope. 
   12C9 84 0F         [ 2]10790                     ANDA     #15 
   12CB B7 CA F6      [ 5]10791                     STA      _PLY_AKY_PSGREGISTER13 
                          10792 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
   12CE F6 CA DA      [ 5]10793                     ldb      _frequencyRegister 
   12D1 A6 A0         [ 6]10794                     lda      ,y+ 
   12D3 A7 C5         [ 5]10795                     sta      b, u 
   12D5 7C CA DA      [ 7]10796                     inc      _frequencyRegister 
                          10797 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the MSB software frequency. 
   12D8 F6 CA DA      [ 5]10798                     ldb      _frequencyRegister 
   12DB A6 A0         [ 6]10799                     lda      ,y+ 
   12DD A7 C5         [ 5]10800                     sta      b, u 
   12DF 7C CA DA      [ 7]10801                     inc      _frequencyRegister 
                          10802 ; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff  ;Sets the hardware volume. 
   12E2 86 FF         [ 2]10803                     lda      #0xff 
   12E4 F6 CA D9      [ 5]10804                     ldb      _volumeRegister 
   12E7 A7 C5         [ 5]10805                     sta      b, u 
   12E9 7C CA D9      [ 7]10806                     inc      _volumeRegister               ;Increases the volume register. 
   12EC EC A1         [ 8]10807                     ldd      ,y++                         ;Copies the hardware period. 
   12EE FD CA F4      [ 6]10808                     std      _PLY_AKY_PSGREGISTER11        ; 11+12 
   12F1 39            [ 5]10809                     RTS      
                          10810 
                          10811 ; -------------------------------------
                          10812 ;Manages the loop. This code is put here so that no jump needs to be coded when its job is done. 
                          10813  .globl _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_LOOP
   12F2                   10814 _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_LOOP: 
                          10815 ;Loops. Reads the next pointer to this RegisterBlock. 
   12F2 10 AE A4      [ 6]10816                     ldy      ,y 
   12F5 A6 A0         [ 6]10817                     lda      ,y+ 
   12F7 B7 CA D7      [ 5]10818                     sta      _ACCA 
                          10819 ; -----------------------------------------------------------------------------
                          10820 ;Generic code interpreting the RegisterBlock - Non initial state. See comment about the Initial state for the registers ins/outs.
                          10821 ; -----------------------------------------------------------------------------
                          10822  .globl _PLY_AKY_RRB_NONINITIALSTATE
   12FA                   10823 _PLY_AKY_RRB_NONINITIALSTATE: 
   12FA 76 CA D7      [ 7]10824                     ROR      _ACCA 
   12FD 25 4D         [ 3]10825                     BCS      _PLY_AKY_RRB_NIS_SOFTWAREONLYORSOFTWAREANDHARDWARE 
   12FF 76 CA D7      [ 7]10826                     ROR      _ACCA 
   1302 10 25 00 AC   [ 6]10827                     LBCS     _PLY_AKY_RRB_NIS_HARDWAREONLY 
   1306 B6 CA D7      [ 5]10828                     LDA      _ACCA                         ;No software, no hardware, OR loop. 
   1309 B7 CA D8      [ 5]10829                     STA      _ACCB 
   130C 84 03         [ 2]10830                     ANDA     #03                          ;Bit 3:loop?/volume bit 0, bit 2: volume? 
   130E 81 02         [ 2]10831                     CMPA     #02                          ;If no volume, yet the volume is >0, it means loop. 
   1310 27 E0         [ 3]10832                     BEQ      _PLY_AKY_RRB_NIS_NOSOFTWARENOHARDWARE_LOOP 
                          10833 ;No loop: so "no software no hardware". 
   1312 B6 CA DB      [ 5]10834                     LDA      _r7                           ;Closes the sound channel. 
   1315 8A 04         [ 2]10835                     ORA      #0b00000100                   ; set bit 2 (close sound) 
   1317 B7 CA DB      [ 5]10836                     STA      _r7                           ;Volume? bit 2 - 2. 
   131A B6 CA D8      [ 5]10837                     LDA      _ACCB 
   131D 46            [ 2]10838                     RORA     
   131E 24 0D         [ 3]10839                     BCC      _PLY_AKY_RRB_NIS_NOVOLUME 
   1320 84 0F         [ 2]10840                     ANDA     #15 
   1322 B7 CA D7      [ 5]10841                     STA      _ACCA 
                          10842 ; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
   1325 B6 CA D7      [ 5]10843                     lda      _ACCA 
   1328 F6 CA D9      [ 5]10844                     ldb      _volumeRegister 
   132B A7 C5         [ 5]10845                     sta      b,u 
                          10846  .globl _PLY_AKY_RRB_NIS_NOVOLUME
   132D                   10847 _PLY_AKY_RRB_NIS_NOVOLUME: 
                          10848 ;Sadly, have to lose a bit of CPU here, as this must be done in all cases. 
   132D 7C CA D9      [ 7]10849                     INC      _volumeRegister               ;Next volume register. 
   1330 7C CA DA      [ 7]10850                     inc      _frequencyRegister 
   1333 7C CA DA      [ 7]10851                     inc      _frequencyRegister 
                          10852 ;Noise? Was on bit 7, but there has been two shifts. We can't use A, it may have been modified by the volume AND. 
   1336 86 20         [ 2]10853                     LDA      #0b00100000                   ; bit 7-2 
   1338 B5 CA D8      [ 5]10854                     BITA     _ACCB 
   133B 26 01         [ 3]10855                     BNE      isNoise 
   133D 39            [ 5]10856                     RTS      
                          10857 
                          10858  .globl isNoise
   133E                   10859 isNoise: 
   133E A6 A0         [ 6]10860                     lda      ,y+                          ;Noise. 
   1340 B7 CA F3      [ 5]10861                     STA      _PLY_AKY_PSGREGISTER6 
   1343 B6 CA DB      [ 5]10862                     LDA      _r7                           ;Opens the noise channel. 
   1346 84 DF         [ 2]10863                     ANDA     #0b11011111                   ; reset bit 5 (open noise) 
   1348 B7 CA DB      [ 5]10864                     STA      _r7 
   134B 39            [ 5]10865                     RTS      
                          10866 
                          10867 ; -------------------------------------
                          10868  .globl _PLY_AKY_RRB_NIS_SOFTWAREONLYORSOFTWAREANDHARDWARE
   134C                   10869 _PLY_AKY_RRB_NIS_SOFTWAREONLYORSOFTWAREANDHARDWARE: 
                          10870 ;Another decision to make about the sound type. 
   134C 76 CA D7      [ 7]10871                     ROR      _ACCA 
   134F 10 25 00 A4   [ 6]10872                     LBCS     _PLY_AKY_RRB_NIS_SOFTWAREANDHARDWARE 
                          10873 ;Software only. Structure: mspnoise lsp v v v v (0 1). 
   1353 B6 CA D7      [ 5]10874                     LDA      _ACCA 
   1356 B7 CA D8      [ 5]10875                     STA      _ACCB 
   1359 84 0F         [ 2]10876                     ANDA     #15                          ;Gets the volume (already shifted). 
   135B B7 CA D7      [ 5]10877                     STA      _ACCA 
                          10878 ; macro call ->                     SET_PSG_VAR_VAR  _volumeRegister, _ACCA ;Sends the volume. 
   135E B6 CA D7      [ 5]10879                     lda      _ACCA 
   1361 F6 CA D9      [ 5]10880                     ldb      _volumeRegister 
   1364 A7 C5         [ 5]10881                     sta      b,u 
   1366 7C CA D9      [ 7]10882                     INC      _volumeRegister               ;Increases the volume register. 
                          10883                                                           ;LSP? (Least Significant byte of Period). Was bit 6, but now shifted. 
   1369 86 10         [ 2]10884                     LDA      #0b00010000                   ; bit 6-2 
   136B B5 CA D8      [ 5]10885                     BITA     _ACCB 
   136E 27 07         [ 3]10886                     BEQ      _PLY_AKY_RRB_NIS_SOFTWAREONLY_NOLSP 
                          10887 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
   1370 F6 CA DA      [ 5]10888                     ldb      _frequencyRegister 
   1373 A6 A0         [ 6]10889                     lda      ,y+ 
   1375 A7 C5         [ 5]10890                     sta      b, u 
                          10891 ; frequency register is not incremented on purpose. 
                          10892  .globl _PLY_AKY_RRB_NIS_SOFTWAREONLY_NOLSP
   1377                   10893 _PLY_AKY_RRB_NIS_SOFTWAREONLY_NOLSP: 
                          10894 ;MSP AND/OR (Noise and/or new Noise)? (Most Significant byte of Period). 
   1377 86 20         [ 2]10895                     LDA      #0b00100000                   ; bit 7-2 
   1379 B5 CA D8      [ 5]10896                     BITA     _ACCB 
   137C 26 07         [ 3]10897                     BNE      _PLY_AKY_RRB_NIS_SOFTWAREONLY_MSPANDMAYBENOISE 
                          10898 ;Bit of loss of CPU, but has to be done in all cases. 
   137E 7C CA DA      [ 7]10899                     inc      _frequencyRegister 
   1381 7C CA DA      [ 7]10900                     inc      _frequencyRegister 
   1384 39            [ 5]10901                     RTS      
                          10902 
                          10903 ; -------------------------------------
                          10904  .globl _PLY_AKY_RRB_NIS_SOFTWAREONLY_MSPANDMAYBENOISE
   1385                   10905 _PLY_AKY_RRB_NIS_SOFTWAREONLY_MSPANDMAYBENOISE: 
                          10906 ;MSP and noise?, in the next byte. nipppp (n = newNoise? i = isNoise? p = MSB period). 
   1385 A6 A0         [ 6]10907                     lda      ,y+                          ;Useless bits at the end, not a problem. 
   1387 B7 CA D7      [ 5]10908                     sta      _ACCA 
   138A 7C CA DA      [ 7]10909                     inc      _frequencyRegister            ;Sends the MSB software frequency. 
                          10910 ; macro call ->                     SET_PSG_VAR_VAR  _frequencyRegister, _ACCA 
   138D B6 CA D7      [ 5]10911                     lda      _ACCA 
   1390 F6 CA DA      [ 5]10912                     ldb      _frequencyRegister 
   1393 A7 C5         [ 5]10913                     sta      b,u 
   1395 7C CA DA      [ 7]10914                     inc      _frequencyRegister 
   1398 79 CA D7      [ 7]10915                     ROL      _ACCA                         ;Carry is isNoise? 
   139B 25 01         [ 3]10916                     BCS      isNoise2 
   139D 39            [ 5]10917                     RTS      
                          10918 
                          10919  .globl isNoise2
   139E                   10920 isNoise2:                                                  ;Opens   the noise channel. 
   139E B6 CA DB      [ 5]10921                     LDA      _r7                           ; reset bit 5 (open) 
   13A1 84 DF         [ 2]10922                     ANDA     #0b11011111 
   13A3 B7 CA DB      [ 5]10923                     STA      _r7 
   13A6 79 CA D7      [ 7]10924                     ROL      _ACCA                         ;Is there a new noise value? If yes, gets the noise. 
   13A9 25 01         [ 3]10925                     BCS      newNoise2 
   13AB 39            [ 5]10926                     RTS      
                          10927 
                          10928  .globl newNoise2
   13AC                   10929 newNoise2: 
   13AC A6 A0         [ 6]10930                     lda      ,y+                          ;Gets the noise. 
   13AE B7 CA F3      [ 5]10931                     STA      _PLY_AKY_PSGREGISTER6 
   13B1 39            [ 5]10932                     RTS      
                          10933 
                          10934 ; -------------------------------------
                          10935  .globl _PLY_AKY_RRB_NIS_HARDWAREONLY
   13B2                   10936 _PLY_AKY_RRB_NIS_HARDWAREONLY: 
                          10937 ;Gets the envelope (initially on b2-b4, but currently on b0-b2). It is on 3 bits, must be encoded on 4. Bit 0 must be 0. 
   13B2 79 CA D7      [ 7]10938                     ROL      _ACCA 
   13B5 B6 CA D7      [ 5]10939                     LDA      _ACCA 
   13B8 B7 CA D8      [ 5]10940                     STA      _ACCB 
   13BB 84 0E         [ 2]10941                     ANDA     #14 
   13BD B7 CA F6      [ 5]10942                     STA      _PLY_AKY_PSGREGISTER13 
   13C0 B6 CA DB      [ 5]10943                     LDA      _r7                           ;Closes the sound channel. 
   13C3 8A 04         [ 2]10944                     ORA      #0b00000100                   ; set bit 2 (close) 
   13C5 B7 CA DB      [ 5]10945                     STA      _r7 
                          10946 ;            ;Hardware volume.
                          10947 ; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff 
   13C8 86 FF         [ 2]10948                     lda      #0xff 
   13CA F6 CA D9      [ 5]10949                     ldb      _volumeRegister 
   13CD A7 C5         [ 5]10950                     sta      b, u 
   13CF 7C CA D9      [ 7]10951                     inc      _volumeRegister               ;Increases the volume register. 
   13D2 7C CA DA      [ 7]10952                     inc      _frequencyRegister 
   13D5 7C CA DA      [ 7]10953                     inc      _frequencyRegister 
   13D8 B6 CA D8      [ 5]10954                     LDA      _ACCB                         ;LSB for hardware period? Currently on b6. 
   13DB 49            [ 2]10955                     ROLA     
   13DC 49            [ 2]10956                     ROLA     
   13DD B7 CA D7      [ 5]10957                     STA      _ACCA 
   13E0 24 05         [ 3]10958                     BCC      _PLY_AKY_RRB_NIS_HARDWAREONLY_NOLSB 
   13E2 A6 A0         [ 6]10959                     lda      ,y+ 
   13E4 B7 CA F4      [ 5]10960                     sta      _PLY_AKY_PSGREGISTER11 
                          10961  .globl _PLY_AKY_RRB_NIS_HARDWAREONLY_NOLSB
   13E7                   10962 _PLY_AKY_RRB_NIS_HARDWAREONLY_NOLSB: 
   13E7 79 CA D7      [ 7]10963                     ROL      _ACCA                         ;MSB for hardware period? 
   13EA 24 05         [ 3]10964                     BCC      _PLY_AKY_RRB_NIS_HARDWAREONLY_NOMSB 
   13EC A6 A0         [ 6]10965                     lda      ,y+ 
   13EE B7 CA F5      [ 5]10966                     sta      _PLY_AKY_PSGREGISTER12 
                          10967  .globl _PLY_AKY_RRB_NIS_HARDWAREONLY_NOMSB
   13F1                   10968 _PLY_AKY_RRB_NIS_HARDWAREONLY_NOMSB: 
   13F1 79 CA D7      [ 7]10969                     ROL      _ACCA                         ;Noise or retrig? 
   13F4 25 60         [ 3]10970                     BCS      _PLY_AKY_RRB_NIS_HARDWARE_SHARED_NOISEORRETRIG_ANDSTOP 
   13F6 39            [ 5]10971                     RTS      
                          10972 
                          10973 ; -------------------------------------
                          10974  .globl _PLY_AKY_RRB_NIS_SOFTWAREANDHARDWARE
   13F7                   10975 _PLY_AKY_RRB_NIS_SOFTWAREANDHARDWARE: 
                          10976 ; macro call ->                     SET_PSG_VAR_DIR  _volumeRegister, 0xff  ;Hardware volume. 
   13F7 86 FF         [ 2]10977                     lda      #0xff 
   13F9 F6 CA D9      [ 5]10978                     ldb      _volumeRegister 
   13FC A7 C5         [ 5]10979                     sta      b, u 
   13FE 7C CA D9      [ 7]10980                     inc      _volumeRegister               ;Increases the volume register. 
   1401 76 CA D7      [ 7]10981                     ROR      _ACCA                         ;LSB of hardware period? 
   1404 24 05         [ 3]10982                     BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERLSBH 
   1406 A6 A0         [ 6]10983                     lda      ,y+ 
   1408 B7 CA F4      [ 5]10984                     sta      _PLY_AKY_PSGREGISTER11 
                          10985  .globl _PLY_AKY_RRB_NIS_SAHH_AFTERLSBH
   140B                   10986 _PLY_AKY_RRB_NIS_SAHH_AFTERLSBH: 
   140B 76 CA D7      [ 7]10987                     ROR      _ACCA                         ;MSB of hardware period? 
   140E 24 05         [ 3]10988                     BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERMSBH 
   1410 A6 A0         [ 6]10989                     lda      ,y+ 
   1412 B7 CA F5      [ 5]10990                     sta      _PLY_AKY_PSGREGISTER12 
                          10991  .globl _PLY_AKY_RRB_NIS_SAHH_AFTERMSBH
   1415                   10992 _PLY_AKY_RRB_NIS_SAHH_AFTERMSBH: 
   1415 B6 CA D7      [ 5]10993                     LDA      _ACCA                         ;LSB of software period? 
   1418 46            [ 2]10994                     RORA     
   1419 24 0D         [ 3]10995                     BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERLSBS 
   141B B7 CA D8      [ 5]10996                     STA      _ACCB 
                          10997 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister ;Sends the LSB software frequency. 
   141E F6 CA DA      [ 5]10998                     ldb      _frequencyRegister 
   1421 A6 A0         [ 6]10999                     lda      ,y+ 
   1423 A7 C5         [ 5]11000                     sta      b, u 
                          11001 ; frequency register not increased on purpose. 
   1425 B6 CA D8      [ 5]11002                     LDA      _ACCB 
                          11003  .globl _PLY_AKY_RRB_NIS_SAHH_AFTERLSBS
   1428                   11004 _PLY_AKY_RRB_NIS_SAHH_AFTERLSBS: 
   1428 46            [ 2]11005                     RORA                                  ;MSB of software period? 
   1429 24 13         [ 3]11006                     BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERMSBS 
   142B B7 CA D8      [ 5]11007                     STA      _ACCB 
   142E 7C CA DA      [ 7]11008                     inc      _frequencyRegister            ;Sends the MSB software frequency. 
                          11009 ; macro call ->                     SET_PSG_VAR_DATA_Y_INC  _frequencyRegister 
   1431 F6 CA DA      [ 5]11010                     ldb      _frequencyRegister 
   1434 A6 A0         [ 6]11011                     lda      ,y+ 
   1436 A7 C5         [ 5]11012                     sta      b, u 
   1438 7A CA DA      [ 7]11013                     dec      _frequencyRegister 
   143B B6 CA D8      [ 5]11014                     LDA      _ACCB 
                          11015  .globl _PLY_AKY_RRB_NIS_SAHH_AFTERMSBS
   143E                   11016 _PLY_AKY_RRB_NIS_SAHH_AFTERMSBS: 
                          11017 ;A bit of loss of CPU, but this has to be done every time! 
   143E 7C CA DA      [ 7]11018                     inc      _frequencyRegister 
   1441 7C CA DA      [ 7]11019                     inc      _frequencyRegister 
   1444 46            [ 2]11020                     RORa                                  ;New hardware envelope? 
   1445 B7 CA D7      [ 5]11021                     STA      _ACCA 
   1448 24 05         [ 3]11022                     BCC      _PLY_AKY_RRB_NIS_SAHH_AFTERENVELOPE 
   144A A6 A0         [ 6]11023                     lda      ,y+ 
   144C B7 CA F6      [ 5]11024                     STA      _PLY_AKY_PSGREGISTER13 
                          11025  .globl _PLY_AKY_RRB_NIS_SAHH_AFTERENVELOPE
   144F                   11026 _PLY_AKY_RRB_NIS_SAHH_AFTERENVELOPE: 
   144F B6 CA D7      [ 5]11027                     LDA      _ACCA                         ;Retrig and/or noise? 
   1452 46            [ 2]11028                     RORA     
   1453 25 01         [ 3]11029                     BCS      isNoise3 
   1455 39            [ 5]11030                     RTS      
                          11031 
                          11032  .globl isNoise3
   1456                   11033 isNoise3: 
                          11034 ;This code is shared with the HardwareOnly. It reads the Noise/Retrig byte, interprets it and exits. 
                          11035  .globl _PLY_AKY_RRB_NIS_HARDWARE_SHARED_NOISEORRETRIG_ANDSTOP
   1456                   11036 _PLY_AKY_RRB_NIS_HARDWARE_SHARED_NOISEORRETRIG_ANDSTOP: 
   1456 A6 A0         [ 6]11037                     lda      ,y+                          ;Noise or retrig. Reads the next byte. 
   1458 46            [ 2]11038                     RORA                                  ;Retrig? 
   1459 24 05         [ 3]11039                     BCC      _PLY_AKY_RRB_NIS_S_NOR_NORETRIG 
   145B 8A 80         [ 2]11040                     ORA      #0b10000000 
   145D B7 CA F2      [ 5]11041                     STA      _PLY_AKY_PSGREGISTER13_RETRIG ;A value to make sure the retrig is performed, yet A can still be use. 
                          11042  .globl _PLY_AKY_RRB_NIS_S_NOR_NORETRIG
   1460                   11043 _PLY_AKY_RRB_NIS_S_NOR_NORETRIG: 
   1460 46            [ 2]11044                     RORA                                  ;Noise? If no, nothing more to do. 
   1461 B7 CA D7      [ 5]11045                     STA      _ACCA 
   1464 25 01         [ 3]11046                     BCS      isNoise4 
   1466 39            [ 5]11047                     RTS      
                          11048 
                          11049  .globl isNoise4
   1467                   11050 isNoise4: 
   1467 B6 CA DB      [ 5]11051                     LDA      _r7                           ;Noise. Opens the noise channel. 
   146A 84 DF         [ 2]11052                     ANDA     #0b11011111                   ; reset bit 5 (open) 
   146C B7 CA DB      [ 5]11053                     STA      _r7 
   146F B6 CA D7      [ 5]11054                     LDA      _ACCA 
   1472 46            [ 2]11055                     RORA                                  ;Is there a new noise value? If yes, gets the noise. 
   1473 25 01         [ 3]11056                     BCS      isNoise5 
   1475 39            [ 5]11057                     RTS      
                          11058 
                          11059  .globl isNoise5
   1476                   11060 isNoise5: 
   1476 B7 CA F3      [ 5]11061                     STA      _PLY_AKY_PSGREGISTER6         ;Sets the noise. 
   1479 39            [ 5]11062                     RTS      
                          11063 
                          11064 ; -------------------------------------
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$aky_song$104     1012 GR  |   2 A$aky_song$104     1012 GR
  2 A$aky_song$104     1016 GR  |   2 A$aky_song$104     1018 GR
  2 A$aky_song$104     101C GR  |   2 A$aky_song$104     101E GR
  2 A$aky_song$104     1021 GR  |   2 A$aky_song$104     1024 GR
  2 A$aky_song$104     1026 GR  |   2 A$aky_song$104     1028 GR
  2 A$aky_song$104     102A GR  |   2 A$aky_song$104     102C GR
  2 A$aky_song$104     1030 GR  |   2 A$aky_song$104     1033 GR
  2 A$aky_song$104     1036 GR  |   2 A$aky_song$104     1039 GR
  2 A$aky_song$104     103C GR  |   2 A$aky_song$104     103F GR
  2 A$aky_song$104     1041 GR  |   2 A$aky_song$104     1044 GR
  2 A$aky_song$104     1045 GR  |   2 A$aky_song$104     1047 GR
  2 A$aky_song$104     104A GR  |   2 A$aky_song$104     104B GR
  2 A$aky_song$104     104E GR  |   2 A$aky_song$104     104F GR
  2 A$aky_song$104     1052 GR  |   2 A$aky_song$104     1054 GR
  2 A$aky_song$104     1057 GR  |   2 A$aky_song$105     105A GR
  2 A$aky_song$105     105D GR  |   2 A$aky_song$105     1060 GR
  2 A$aky_song$105     1062 GR  |   2 A$aky_song$105     1066 GR
  2 A$aky_song$105     1068 GR  |   2 A$aky_song$105     106A GR
  2 A$aky_song$105     106D GR  |   2 A$aky_song$105     106F GR
  2 A$aky_song$105     1071 GR  |   2 A$aky_song$105     1074 GR
  2 A$aky_song$105     1076 GR  |   2 A$aky_song$105     1079 GR
  2 A$aky_song$105     107B GR  |   2 A$aky_song$105     107E GR
  2 A$aky_song$105     1080 GR  |   2 A$aky_song$105     1083 GR
  2 A$aky_song$105     1087 GR  |   2 A$aky_song$105     1089 GR
  2 A$aky_song$105     108C GR  |   2 A$aky_song$105     108F GR
  2 A$aky_song$105     1091 GR  |   2 A$aky_song$105     1094 GR
  2 A$aky_song$105     1096 GR  |   2 A$aky_song$105     1099 GR
  2 A$aky_song$105     109D GR  |   2 A$aky_song$105     109F GR
  2 A$aky_song$105     10A2 GR  |   2 A$aky_song$105     10A4 GR
  2 A$aky_song$105     10A7 GR  |   2 A$aky_song$105     10AB GR
  2 A$aky_song$105     10AE GR  |   2 A$aky_song$105     10B0 GR
  2 A$aky_song$105     10B3 GR  |   2 A$aky_song$105     10B7 GR
  2 A$aky_song$105     10B9 GR  |   2 A$aky_song$105     10BC GR
  2 A$aky_song$105     10BE GR  |   2 A$aky_song$105     10C1 GR
  2 A$aky_song$105     10C5 GR  |   2 A$aky_song$105     10C8 GR
  2 A$aky_song$105     10CA GR  |   2 A$aky_song$105     10CD GR
  2 A$aky_song$105     10D1 GR  |   2 A$aky_song$105     10D3 GR
  2 A$aky_song$105     10D6 GR  |   2 A$aky_song$105     10D8 GR
  2 A$aky_song$105     10DB GR  |   2 A$aky_song$105     10DF GR
  2 A$aky_song$105     10E1 GR  |   2 A$aky_song$105     10E4 GR
  2 A$aky_song$105     10E7 GR  |   2 A$aky_song$105     10E9 GR
  2 A$aky_song$105     10EC GR  |   2 A$aky_song$105     10F0 GR
  2 A$aky_song$105     10F3 GR  |   2 A$aky_song$105     10F5 GR
  2 A$aky_song$105     10F7 GR  |   2 A$aky_song$105     10FA GR
  2 A$aky_song$105     10FE GR  |   2 A$aky_song$105     1101 GR
  2 A$aky_song$105     1105 GR  |   2 A$aky_song$106     1108 GR
  2 A$aky_song$106     110A GR  |   2 A$aky_song$106     110C GR
  2 A$aky_song$106     110F GR  |   2 A$aky_song$106     1113 GR
  2 A$aky_song$106     1116 GR  |   2 A$aky_song$106     111A GR
  2 A$aky_song$106     111D GR  |   2 A$aky_song$106     111F GR
  2 A$aky_song$106     1121 GR  |   2 A$aky_song$106     1124 GR
  2 A$aky_song$106     1128 GR  |   2 A$aky_song$106     112B GR
  2 A$aky_song$106     112D GR  |   2 A$aky_song$106     1130 GR
  2 A$aky_song$106     1132 GR  |   2 A$aky_song$106     1135 GR
  2 A$aky_song$106     1137 GR  |   2 A$aky_song$106     113A GR
  2 A$aky_song$106     113C GR  |   2 A$aky_song$106     113F GR
  2 A$aky_song$106     1142 GR  |   2 A$aky_song$106     1144 GR
  2 A$aky_song$106     1147 GR  |   2 A$aky_song$106     114A GR
  2 A$aky_song$106     114C GR  |   2 A$aky_song$106     114D GR
  2 A$aky_song$106     114F GR  |   2 A$aky_song$106     1152 GR
  2 A$aky_song$106     1153 GR  |   2 A$aky_song$106     1157 GR
  2 A$aky_song$106     115A GR  |   2 A$aky_song$106     115C GR
  2 A$aky_song$106     115F GR  |   2 A$aky_song$106     1161 GR
  2 A$aky_song$106     1164 GR  |   2 A$aky_song$106     1166 GR
  2 A$aky_song$106     1168 GR  |   2 A$aky_song$106     116B GR
  2 A$aky_song$106     116E GR  |   2 A$aky_song$106     1170 GR
  2 A$aky_song$106     1173 GR  |   2 A$aky_song$106     1176 GR
  2 A$aky_song$106     1179 GR  |   2 A$aky_song$106     117B GR
  2 A$aky_song$106     117E GR  |   2 A$aky_song$106     1181 GR
  2 A$aky_song$106     1184 GR  |   2 A$aky_song$106     1187 GR
  2 A$aky_song$106     1189 GR  |   2 A$aky_song$106     118C GR
  2 A$aky_song$107     118D GR  |   2 A$aky_song$107     1190 GR
  2 A$aky_song$107     1192 GR  |   2 A$aky_song$107     1195 GR
  2 A$aky_song$107     1197 GR  |   2 A$aky_song$107     119A GR
  2 A$aky_song$107     119D GR  |   2 A$aky_song$107     11A0 GR
  2 A$aky_song$107     11A2 GR  |   2 A$aky_song$107     11A4 GR
  2 A$aky_song$107     11A7 GR  |   2 A$aky_song$107     11AA GR
  2 A$aky_song$107     11AC GR  |   2 A$aky_song$107     11AF GR
  2 A$aky_song$107     11B2 GR  |   2 A$aky_song$107     11B4 GR
  2 A$aky_song$107     11B7 GR  |   2 A$aky_song$107     11B9 GR
  2 A$aky_song$107     11BC GR  |   2 A$aky_song$107     11BF GR
  2 A$aky_song$107     11C1 GR  |   2 A$aky_song$107     11C4 GR
  2 A$aky_song$107     11C6 GR  |   2 A$aky_song$107     11C9 GR
  2 A$aky_song$107     11CB GR  |   2 A$aky_song$107     11CE GR
  2 A$aky_song$107     11D1 GR  |   2 A$aky_song$107     11D4 GR
  2 A$aky_song$107     11D5 GR  |   2 A$aky_song$107     11D8 GR
  2 A$aky_song$107     11DA GR  |   2 A$aky_song$107     11DD GR
  2 A$aky_song$107     11DF GR  |   2 A$aky_song$107     11E1 GR
  2 A$aky_song$107     11E4 GR  |   2 A$aky_song$107     11E7 GR
  2 A$aky_song$107     11E9 GR  |   2 A$aky_song$107     11EC GR
  2 A$aky_song$107     11EF GR  |   2 A$aky_song$107     11F2 GR
  2 A$aky_song$107     11F4 GR  |   2 A$aky_song$107     11F7 GR
  2 A$aky_song$107     11FA GR  |   2 A$aky_song$107     11FC GR
  2 A$aky_song$107     11FE GR  |   2 A$aky_song$107     1201 GR
  2 A$aky_song$107     1204 GR  |   2 A$aky_song$107     1206 GR
  2 A$aky_song$107     1208 GR  |   2 A$aky_song$107     120B GR
  2 A$aky_song$107     120C GR  |   2 A$aky_song$107     120F GR
  2 A$aky_song$107     1211 GR  |   2 A$aky_song$107     1214 GR
  2 A$aky_song$107     1216 GR  |   2 A$aky_song$107     1219 GR
  2 A$aky_song$107     121C GR  |   2 A$aky_song$107     121F GR
  2 A$aky_song$107     1221 GR  |   2 A$aky_song$107     1223 GR
  2 A$aky_song$107     1226 GR  |   2 A$aky_song$107     1229 GR
  2 A$aky_song$107     122B GR  |   2 A$aky_song$107     122E GR
  2 A$aky_song$107     1231 GR  |   2 A$aky_song$107     1233 GR
  2 A$aky_song$107     1236 GR  |   2 A$aky_song$107     1239 GR
  2 A$aky_song$107     123B GR  |   2 A$aky_song$107     123D GR
  2 A$aky_song$107     1240 GR  |   2 A$aky_song$107     1243 GR
  2 A$aky_song$108     1245 GR  |   2 A$aky_song$108     1247 GR
  2 A$aky_song$108     124A GR  |   2 A$aky_song$108     124C GR
  2 A$aky_song$108     124F GR  |   2 A$aky_song$108     1251 GR
  2 A$aky_song$108     1254 GR  |   2 A$aky_song$108     1256 GR
  2 A$aky_song$108     1259 GR  |   2 A$aky_song$108     125A GR
  2 A$aky_song$108     125D GR  |   2 A$aky_song$108     125F GR
  2 A$aky_song$108     1262 GR  |   2 A$aky_song$108     1265 GR
  2 A$aky_song$108     1267 GR  |   2 A$aky_song$108     126A GR
  2 A$aky_song$108     126E GR  |   2 A$aky_song$108     1271 GR
  2 A$aky_song$108     1274 GR  |   2 A$aky_song$108     1276 GR
  2 A$aky_song$108     1278 GR  |   2 A$aky_song$108     127A GR
  2 A$aky_song$108     127D GR  |   2 A$aky_song$108     127F GR
  2 A$aky_song$108     1282 GR  |   2 A$aky_song$108     1285 GR
  2 A$aky_song$108     1286 GR  |   2 A$aky_song$108     1288 GR
  2 A$aky_song$108     128A GR  |   2 A$aky_song$108     128D GR
  2 A$aky_song$108     1290 GR  |   2 A$aky_song$108     1293 GR
  2 A$aky_song$108     1295 GR  |   2 A$aky_song$108     1298 GR
  2 A$aky_song$108     129B GR  |   2 A$aky_song$108     129E GR
  2 A$aky_song$108     12A0 GR  |   2 A$aky_song$108     12A3 GR
  2 A$aky_song$108     12A5 GR  |   2 A$aky_song$108     12A6 GR
  2 A$aky_song$108     12A8 GR  |   2 A$aky_song$108     12AB GR
  2 A$aky_song$108     12AE GR  |   2 A$aky_song$108     12B0 GR
  2 A$aky_song$108     12B3 GR  |   2 A$aky_song$108     12B4 GR
  2 A$aky_song$108     12B7 GR  |   2 A$aky_song$108     12BB GR
  2 A$aky_song$108     12BE GR  |   2 A$aky_song$108     12C1 GR
  2 A$aky_song$108     12C3 GR  |   2 A$aky_song$108     12C6 GR
  2 A$aky_song$108     12C9 GR  |   2 A$aky_song$108     12CC GR
  2 A$aky_song$108     12CE GR  |   2 A$aky_song$108     12D1 GR
  2 A$aky_song$108     12D3 GR  |   2 A$aky_song$108     12D6 GR
  2 A$aky_song$108     12D8 GR  |   2 A$aky_song$108     12DB GR
  2 A$aky_song$108     12DD GR  |   2 A$aky_song$108     12DF GR
  2 A$aky_song$108     12E1 GR  |   2 A$aky_song$108     12E4 GR
  2 A$aky_song$108     12E6 GR  |   2 A$aky_song$109     12E9 GR
  2 A$aky_song$109     12EC GR  |   2 A$aky_song$109     12ED GR
  2 A$aky_song$109     12EF GR  |   2 A$aky_song$109     12F2 GR
  2 A$aky_song$109     12F5 GR  |   2 A$aky_song$109     12F8 GR
  2 A$aky_song$109     12FB GR  |   2 A$aky_song$109     12FD GR
  2 A$aky_song$109     1300 GR  |   2 A$aky_song$109     1303 GR
  2 A$aky_song$109     1305 GR  |   2 A$aky_song$109     1306 GR
  2 A$aky_song$109     1309 GR  |   2 A$aky_song$109     130B GR
  2 A$aky_song$109     130E GR  |   2 A$aky_song$109     1311 GR
  2 A$aky_song$109     1313 GR  |   2 A$aky_song$109     1314 GR
  2 A$aky_song$109     1316 GR  |   2 A$aky_song$109     1319 GR
  2 A$aky_song$109     131A GR  |   2 A$aky_song$109     131D GR
  2 A$aky_song$109     1320 GR  |   2 A$aky_song$109     1323 GR
  2 A$aky_song$109     1325 GR  |   2 A$aky_song$109     1328 GR
  2 A$aky_song$109     132B GR  |   2 A$aky_song$109     132D GR
  2 A$aky_song$109     1330 GR  |   2 A$aky_song$109     1332 GR
  2 A$aky_song$109     1335 GR  |   2 A$aky_song$109     1337 GR
  2 A$aky_song$109     133A GR  |   2 A$aky_song$109     133D GR
  2 A$aky_song$109     1340 GR  |   2 A$aky_song$109     1343 GR
  2 A$aky_song$109     1344 GR  |   2 A$aky_song$109     1345 GR
  2 A$aky_song$109     1348 GR  |   2 A$aky_song$109     134A GR
  2 A$aky_song$109     134C GR  |   2 A$aky_song$109     134F GR
  2 A$aky_song$109     1352 GR  |   2 A$aky_song$109     1354 GR
  2 A$aky_song$109     1356 GR  |   2 A$aky_song$109     1359 GR
  2 A$aky_song$109     135C GR  |   2 A$aky_song$109     135E GR
  2 A$aky_song$109     135F GR  |   2 A$aky_song$109     1361 GR
  2 A$aky_song$109     1364 GR  |   2 A$aky_song$109     1366 GR
  2 A$aky_song$109     1369 GR  |   2 A$aky_song$109     136C GR
  2 A$aky_song$109     136E GR  |   2 A$aky_song$109     1370 GR
  2 A$aky_song$109     1373 GR  |   2 A$aky_song$109     1376 GR
  2 A$aky_song$109     1378 GR  |   2 A$aky_song$109     137A GR
  2 A$aky_song$109     137D GR  |   2 A$aky_song$109     1380 GR
  2 A$aky_song$109     1381 GR  |   2 A$aky_song$109     1383 GR
  2 A$aky_song$109     1386 GR  |   2 A$aky_song$109     1389 GR
  2 A$aky_song$110     138B GR  |   2 A$aky_song$110     138D GR
  2 A$aky_song$110     1390 GR  |   2 A$aky_song$110     1391 GR
  2 A$aky_song$110     1393 GR  |   2 A$aky_song$110     1396 GR
  2 A$aky_song$110     1399 GR  |   2 A$aky_song$110     139C GR
  2 A$aky_song$110     139E GR  |   2 A$aky_song$110     13A0 GR
  2 A$aky_song$110     13A3 GR  |   2 A$aky_song$110     13A6 GR
  2 A$aky_song$110     13A9 GR  |   2 A$aky_song$110     13AC GR
  2 A$aky_song$110     13AD GR  |   2 A$aky_song$110     13B0 GR
  2 A$aky_song$110     13B2 GR  |   2 A$aky_song$110     13B4 GR
  2 A$aky_song$110     13B7 GR  |   2 A$aky_song$110     13BA GR
  2 A$aky_song$110     13BB GR  |   2 A$aky_song$110     13BD GR
  2 A$aky_song$110     13BE GR  |   2 A$aky_song$110     13C0 GR
  2 A$aky_song$110     13C1 GR  |   2 A$aky_song$110     13C3 GR
  2 A$aky_song$110     13C5 GR  |   2 A$aky_song$110     13C8 GR
  2 A$aky_song$110     13C9 GR  |   2 A$aky_song$110     13CC GR
  2 A$aky_song$110     13CE GR  |   2 A$aky_song$110     13CF GR
  2 A$aky_song$110     13D2 GR  |   2 A$aky_song$110     13D4 GR
  2 A$aky_song$110     13D7 GR  |   2 A$aky_song$110     13DA GR
  2 A$aky_song$110     13DB GR  |   2 A$aky_song$110     13DD GR
  2 A$aky_song$110     13DE GR  |   2 A$aky_song$110     13E1 GR
  2 A$aky_song$431     0000 GR  |   2 A$aky_song$442     0003 GR
  2 A$aky_song$443     0005 GR  |   2 A$aky_song$444     0008 GR
  2 A$aky_song$447     000B GR  |   2 A$aky_song$448     000D GR
  2 A$aky_song$449     000F GR  |   2 A$aky_song$451     0011 GR
  2 A$aky_song$454     0013 GR  |   2 A$aky_song$455     0015 GR
  2 A$aky_song$456     0017 GR  |   2 A$aky_song$457     0019 GR
  2 A$aky_song$458     001B GR  |   2 A$aky_song$459     001D GR
  2 A$aky_song$460     001F GR  |   2 A$aky_song$461     0021 GR
  2 A$aky_song$462     0023 GR  |   2 A$aky_song$463     0025 GR
  2 A$aky_song$464     0027 GR  |   2 A$aky_song$467     0029 GR
  2 A$aky_song$468     002A GR  |   2 A$aky_song$471     002C GR
  2 A$aky_song$8       0000 GR  |     Abs_a_b        =   F584 
    Abs_b          =   F58B     |     Add_Score_a    =   F85E 
    Add_Score_d    =   F87C     |     Bitmask_a      =   F57E 
    CORRECTION     =   000A     |     Char_Table     =   F9F4 
    Char_Table_End =   FBD4     |     Check0Ref      =   F34F 
    Clear_C8_RAM   =   F542     |     Clear_Score    =   F84F 
    Clear_Sound    =   F272     |     Clear_x_256    =   F545 
    Clear_x_b      =   F53F     |     Clear_x_b_80   =   F550 
    Clear_x_b_a    =   F552     |     Clear_x_d      =   F548 
    Cold_Start     =   F000     |     Compare_Score  =   F8C7 
    DP_to_C8       =   F1AF     |     DP_to_D0       =   F1AA 
    Dec_3_Counters =   F55A     |     Dec_6_Counters =   F55E 
    Dec_Counters   =   F563     |     Delay_0        =   F579 
    Delay_1        =   F575     |     Delay_2        =   F571 
    Delay_3        =   F56D     |     Delay_RTS      =   F57D 
    Delay_b        =   F57A     |     Do_Sound       =   F289 
    Do_Sound_x     =   F28C     |     Dot_List       =   F2D5 
    Dot_List_Reset =   F2DE     |     Dot_d          =   F2C3 
    Dot_here       =   F2C5     |     Dot_ix         =   F2C1 
    Dot_ix_b       =   F2BE     |     Draw_Grid_VL   =   FF9F 
    Draw_Line_d    =   F3DF     |     Draw_Pat_VL    =   F437 
    Draw_Pat_VL_a  =   F434     |     Draw_Pat_VL_d  =   F439 
    Draw_VL        =   F3DD     |     Draw_VL_a      =   F3DA 
    Draw_VL_ab     =   F3D8     |     Draw_VL_b      =   F3D2 
    Draw_VL_mode   =   F46E     |     Draw_VLc       =   F3CE 
    Draw_VLcs      =   F3D6     |     Draw_VLp       =   F410 
    Draw_VLp_7F    =   F408     |     Draw_VLp_FF    =   F404 
    Draw_VLp_b     =   F40E     |     Draw_VLp_scale =   F40C 
    Explosion_Snd  =   F92E     |     Get_Rise_Idx   =   F5D9 
    Get_Rise_Run   =   F5EF     |     Get_Run_Idx    =   F5DB 
    INCLUDE_I      =   0001     |     Init_Music     =   F68D 
    Init_Music_Buf =   F533     |     Init_Music_chk =   F687 
    Init_Music_x   =   F692     |     Init_OS        =   F18B 
    Init_OS_RAM    =   F164     |     Init_VIA       =   F14C 
    Intensity_1F   =   F29D     |     Intensity_3F   =   F2A1 
    Intensity_5F   =   F2A5     |     Intensity_7F   =   F2A9 
    Intensity_a    =   F2AB     |     Joy_Analog     =   F1F5 
    Joy_Digital    =   F1F8     |     Mov_Draw_VL    =   F3BC 
    Mov_Draw_VL_a  =   F3B9     |     Mov_Draw_VL_ab =   F3B7 
    Mov_Draw_VL_b  =   F3B1     |     Mov_Draw_VL_d  =   F3BE 
    Mov_Draw_VLc_a =   F3AD     |     Mov_Draw_VLcs  =   F3B5 
    Move_Mem_a     =   F683     |     Move_Mem_a_1   =   F67F 
    Moveto_d       =   F312     |     Moveto_d_7F    =   F2FC 
    Moveto_ix      =   F310     |     Moveto_ix_7F   =   F30C 
    Moveto_ix_FF   =   F308     |     Moveto_ix_b    =   F30E 
    Moveto_x_7F    =   F2F2     |     NO_3_CHANNELS_ =   0001 
    NO_ERROR       =   0000     |     New_High_Score =   F8D8 
    Obj_Hit        =   F8FF     |     Obj_Will_Hit   =   F8F3 
    Obj_Will_Hit_u =   F8E5     |     PLY_CFG_HardOn =   0001 
    PLY_CFG_HardOn =   0001     |     PLY_CFG_HardOn =   0001 
    PLY_CFG_NoSoft =   0001     |     PLY_CFG_NoSoft =   0001 
    PLY_CFG_SoftAn =   0001     |     PLY_CFG_SoftAn =   0001 
    PLY_CFG_SoftAn =   0001     |     PLY_CFG_SoftOn =   0001 
    PLY_CFG_SoftOn =   0001     |     PLY_CFG_SoftTo =   0001 
    PLY_CFG_SoftTo =   0001     |     PLY_CFG_SoftTo =   0001 
    PLY_CFG_UseHar =   0001     |     PLY_CFG_UseRet =   0001 
    Print_List     =   F38A     |     Print_List_chk =   F38C 
    Print_List_hw  =   F385     |     Print_Ships    =   F393 
    Print_Ships_x  =   F391     |     Print_Str      =   F495 
    Print_Str_d    =   F37A     |     Print_Str_hwyx =   F373 
    Print_Str_yx   =   F378     |     Random         =   F517 
    Random_3       =   F511     |     Read_Btns      =   F1BA 
    Read_Btns_Mask =   F1B4     |     Recalibrate    =   F2E6 
    Reset0Int      =   F36B     |     Reset0Ref      =   F354 
    Reset0Ref_D0   =   F34A     |     Reset_Pen      =   F35B 
    Rise_Run_Angle =   F593     |     Rise_Run_Len   =   F603 
    Rise_Run_X     =   F5FF     |     Rise_Run_Y     =   F601 
    Rot_VL         =   F616     |     Rot_VL_M_dft   =   F62B 
    Rot_VL_Mode    =   F61F     |     Rot_VL_ab      =   F610 
    SCOOP_INTERVAL =   0006     |     Select_Game    =   F7A9 
    Set_Refresh    =   F1A2     |     Sound_Byte     =   F256 
    Sound_Byte_raw =   F25B     |     Sound_Byte_x   =   F259 
    Sound_Bytes    =   F27D     |     Sound_Bytes_x  =   F284 
    Strip_Zeros    =   F8B7     |     Throne_Subsong     **** GX
    UNIVERSAL_PLAY =   000A     |     VIA_DDR_a      =   D003 
    VIA_DDR_b      =   D002     |     VIA_aux_cntl   =   D00B 
    VIA_cntl       =   D00C     |     VIA_int_enable =   D00E 
    VIA_int_flags  =   D00D     |     VIA_port_a     =   D001 
    VIA_port_a_noh =   D00F     |     VIA_port_b     =   D000 
    VIA_shift_reg  =   D00A     |     VIA_t1_cnt_hi  =   D005 
    VIA_t1_cnt_lo  =   D004     |     VIA_t1_lch_hi  =   D007 
    VIA_t1_lch_lo  =   D006     |     VIA_t2_hi      =   D009 
    VIA_t2_lo      =   D008     |     Vec_0Ref_Enabl =   C824 
    Vec_ADSR_Table =   C84F     |     Vec_ADSR_Timer =   C85E 
    Vec_Angle      =   C836     |     Vec_Brightness =   C827 
    Vec_Btn_State  =   C80F     |     Vec_Button_1_1 =   C812 
    Vec_Button_1_2 =   C813     |     Vec_Button_1_3 =   C814 
    Vec_Button_1_4 =   C815     |     Vec_Button_2_1 =   C816 
    Vec_Button_2_2 =   C817     |     Vec_Button_2_3 =   C818 
    Vec_Button_2_4 =   C819     |     Vec_Buttons    =   C811 
    Vec_Cold_Flag  =   CBFE     |     Vec_Counter_1  =   C82E 
    Vec_Counter_2  =   C82F     |     Vec_Counter_3  =   C830 
    Vec_Counter_4  =   C831     |     Vec_Counter_5  =   C832 
    Vec_Counter_6  =   C833     |     Vec_Counters   =   C82E 
    Vec_Default_St =   CBEA     |     Vec_Dot_Dwell  =   C828 
    Vec_Duration   =   C857     |     Vec_Expl_1     =   C858 
    Vec_Expl_2     =   C859     |     Vec_Expl_3     =   C85A 
    Vec_Expl_4     =   C85B     |     Vec_Expl_Chan  =   C85C 
    Vec_Expl_ChanA =   C853     |     Vec_Expl_ChanB =   C85D 
    Vec_Expl_Chans =   C854     |     Vec_Expl_Flag  =   C867 
    Vec_Expl_Timer =   C877     |     Vec_FIRQ_Vecto =   CBF5 
    Vec_Freq_Table =   C84D     |     Vec_High_Score =   CBEB 
    Vec_IRQ_Vector =   CBF8     |     Vec_Joy_1_X    =   C81B 
    Vec_Joy_1_Y    =   C81C     |     Vec_Joy_2_X    =   C81D 
    Vec_Joy_2_Y    =   C81E     |     Vec_Joy_Mux    =   C81F 
    Vec_Joy_Mux_1_ =   C81F     |     Vec_Joy_Mux_1_ =   C820 
    Vec_Joy_Mux_2_ =   C821     |     Vec_Joy_Mux_2_ =   C822 
    Vec_Joy_Resltn =   C81A     |     Vec_Loop_Count =   C825 
    Vec_Max_Games  =   C850     |     Vec_Max_Player =   C84F 
    Vec_Misc_Count =   C823     |     Vec_Music_Chan =   C855 
    Vec_Music_Flag =   C856     |     Vec_Music_Freq =   C861 
    Vec_Music_Ptr  =   C853     |     Vec_Music_Twan =   C858 
    Vec_Music_Wk_1 =   C84B     |     Vec_Music_Wk_5 =   C847 
    Vec_Music_Wk_6 =   C846     |     Vec_Music_Wk_7 =   C845 
    Vec_Music_Wk_A =   C842     |     Vec_Music_Work =   C83F 
    Vec_NMI_Vector =   CBFB     |     Vec_Num_Game   =   C87A 
    Vec_Num_Player =   C879     |     Vec_Pattern    =   C829 
    Vec_Prev_Btns  =   C810     |     Vec_Random_See =   C87D 
    Vec_Rfrsh      =   C83D     |     Vec_Rfrsh_hi   =   C83E 
    Vec_Rfrsh_lo   =   C83D     |     Vec_RiseRun_Le =   C83B 
    Vec_RiseRun_Tm =   C834     |     Vec_Rise_Index =   C839 
    Vec_Run_Index  =   C837     |     Vec_SWI2_Vecto =   CBF2 
    Vec_SWI3_Vecto =   CBF2     |     Vec_SWI_Vector =   CBFB 
    Vec_Seed_Ptr   =   C87B     |     Vec_Snd_Shadow =   C800 
    Vec_Str_Ptr    =   C82C     |     Vec_Text_HW    =   C82A 
    Vec_Text_Heigh =   C82A     |     Vec_Text_Width =   C82B 
    Vec_Twang_Tabl =   C851     |   2 Videopac_Subso     002D GR
  2 Videopac_Subso     0033 GR  |   2 Videopac_Subso     0167 GR
  2 Videopac_Subso     016A GR  |   2 Videopac_Subso     016D GR
  2 Videopac_Subso     0170 GR  |   2 Videopac_Subso     0173 GR
  2 Videopac_Subso     0176 GR  |   2 Videopac_Subso     0179 GR
  2 Videopac_Subso     017C GR  |   2 Videopac_Subso     017F GR
  2 Videopac_Subso     0182 GR  |   2 Videopac_Subso     0185 GR
  2 Videopac_Subso     0188 GR  |   2 Videopac_Subso     018B GR
  2 Videopac_Subso     018E GR  |   2 Videopac_Subso     0191 GR
  2 Videopac_Subso     0194 GR  |   2 Videopac_Subso     0197 GR
  2 Videopac_Subso     019A GR  |   2 Videopac_Subso     019D GR
  2 Videopac_Subso     01A0 GR  |   2 Videopac_Subso     01A3 GR
  2 Videopac_Subso     01A6 GR  |   2 Videopac_Subso     01A9 GR
  2 Videopac_Subso     01AC GR  |   2 Videopac_Subso     01AF GR
  2 Videopac_Subso     01B2 GR  |   2 Videopac_Subso     01B5 GR
  2 Videopac_Subso     01B8 GR  |   2 Videopac_Subso     01BB GR
  2 Videopac_Subso     01BE GR  |   2 Videopac_Subso     01C1 GR
  2 Videopac_Subso     01C4 GR  |   2 Videopac_Subso     01C7 GR
  2 Videopac_Subso     01CA GR  |   2 Videopac_Subso     01CD GR
  2 Videopac_Subso     01D0 GR  |   2 Videopac_Subso     01D3 GR
  2 Videopac_Subso     01D6 GR  |   2 Videopac_Subso     01D9 GR
  2 Videopac_Subso     01DC GR  |   2 Videopac_Subso     01DF GR
  2 Videopac_Subso     01E2 GR  |   2 Videopac_Subso     01E5 GR
  2 Videopac_Subso     01E8 GR  |   2 Videopac_Subso     01EB GR
  2 Videopac_Subso     01EE GR  |   2 Videopac_Subso     01F1 GR
  2 Videopac_Subso     01F4 GR  |   2 Videopac_Subso     01F7 GR
  2 Videopac_Subso     01FA GR  |   2 Videopac_Subso     01FD GR
  2 Videopac_Subso     0200 GR  |   2 Videopac_Subso     0203 GR
  2 Videopac_Subso     0206 GR  |   2 Videopac_Subso     0209 GR
  2 Videopac_Subso     020C GR  |   2 Videopac_Subso     020F GR
  2 Videopac_Subso     0212 GR  |   2 Videopac_Subso     0215 GR
  2 Videopac_Subso     0218 GR  |   2 Videopac_Subso     021B GR
  2 Videopac_Subso     021E GR  |   2 Videopac_Subso     0221 GR
  2 Videopac_Subso     0224 GR  |   2 Videopac_Subso     0227 GR
  2 Videopac_Subso     022A GR  |   2 Videopac_Subso     022D GR
  2 Videopac_Subso     0230 GR  |   2 Videopac_Subso     0233 GR
  2 Videopac_Subso     0236 GR  |   2 Videopac_Subso     0239 GR
  2 Videopac_Subso     023C GR  |   2 Videopac_Subso     023F GR
  2 Videopac_Subso     0242 GR  |   2 Videopac_Subso     0245 GR
  2 Videopac_Subso     0248 GR  |   2 Videopac_Subso     024B GR
  2 Videopac_Subso     024E GR  |   2 Videopac_Subso     0251 GR
  2 Videopac_Subso     0254 GR  |   2 Videopac_Subso     0257 GR
  2 Videopac_Subso     025A GR  |   2 Videopac_Subso     025D GR
  2 Videopac_Subso     0260 GR  |   2 Videopac_Subso     0263 GR
  2 Videopac_Subso     00F8 GR  |   2 Videopac_Subso     0266 GR
  2 Videopac_Subso     0269 GR  |   2 Videopac_Subso     026C GR
  2 Videopac_Subso     026F GR  |   2 Videopac_Subso     0272 GR
  2 Videopac_Subso     0275 GR  |   2 Videopac_Subso     0278 GR
  2 Videopac_Subso     027B GR  |   2 Videopac_Subso     027E GR
  2 Videopac_Subso     0281 GR  |   2 Videopac_Subso     00FB GR
  2 Videopac_Subso     0284 GR  |   2 Videopac_Subso     0287 GR
  2 Videopac_Subso     028A GR  |   2 Videopac_Subso     028D GR
  2 Videopac_Subso     0290 GR  |   2 Videopac_Subso     0293 GR
  2 Videopac_Subso     0296 GR  |   2 Videopac_Subso     0299 GR
  2 Videopac_Subso     029C GR  |   2 Videopac_Subso     029F GR
  2 Videopac_Subso     00FE GR  |   2 Videopac_Subso     02A2 GR
  2 Videopac_Subso     02A5 GR  |   2 Videopac_Subso     02A8 GR
  2 Videopac_Subso     02AB GR  |   2 Videopac_Subso     02AE GR
  2 Videopac_Subso     02B1 GR  |   2 Videopac_Subso     02B4 GR
  2 Videopac_Subso     02B7 GR  |   2 Videopac_Subso     02BA GR
  2 Videopac_Subso     02BD GR  |   2 Videopac_Subso     0101 GR
  2 Videopac_Subso     02C0 GR  |   2 Videopac_Subso     02C3 GR
  2 Videopac_Subso     02C6 GR  |   2 Videopac_Subso     02C9 GR
  2 Videopac_Subso     02CC GR  |   2 Videopac_Subso     02CF GR
  2 Videopac_Subso     02D2 GR  |   2 Videopac_Subso     02D5 GR
  2 Videopac_Subso     02D8 GR  |   2 Videopac_Subso     02DB GR
  2 Videopac_Subso     0104 GR  |   2 Videopac_Subso     02DE GR
  2 Videopac_Subso     02E1 GR  |   2 Videopac_Subso     02E4 GR
  2 Videopac_Subso     02E7 GR  |   2 Videopac_Subso     02EA GR
  2 Videopac_Subso     02ED GR  |   2 Videopac_Subso     02F0 GR
  2 Videopac_Subso     02F3 GR  |   2 Videopac_Subso     02F6 GR
  2 Videopac_Subso     02F9 GR  |   2 Videopac_Subso     0107 GR
  2 Videopac_Subso     02FC GR  |   2 Videopac_Subso     02FF GR
  2 Videopac_Subso     0302 GR  |   2 Videopac_Subso     0305 GR
  2 Videopac_Subso     0308 GR  |   2 Videopac_Subso     030B GR
  2 Videopac_Subso     030E GR  |   2 Videopac_Subso     0311 GR
  2 Videopac_Subso     0314 GR  |   2 Videopac_Subso     0317 GR
  2 Videopac_Subso     010A GR  |   2 Videopac_Subso     031A GR
  2 Videopac_Subso     031D GR  |   2 Videopac_Subso     0320 GR
  2 Videopac_Subso     0323 GR  |   2 Videopac_Subso     0326 GR
  2 Videopac_Subso     0329 GR  |   2 Videopac_Subso     032C GR
  2 Videopac_Subso     032F GR  |   2 Videopac_Subso     0332 GR
  2 Videopac_Subso     0335 GR  |   2 Videopac_Subso     010D GR
  2 Videopac_Subso     0338 GR  |   2 Videopac_Subso     033B GR
  2 Videopac_Subso     033E GR  |   2 Videopac_Subso     0341 GR
  2 Videopac_Subso     0344 GR  |   2 Videopac_Subso     0347 GR
  2 Videopac_Subso     034A GR  |   2 Videopac_Subso     034D GR
  2 Videopac_Subso     0350 GR  |   2 Videopac_Subso     0353 GR
  2 Videopac_Subso     0110 GR  |   2 Videopac_Subso     0356 GR
  2 Videopac_Subso     0359 GR  |   2 Videopac_Subso     035C GR
  2 Videopac_Subso     035F GR  |   2 Videopac_Subso     0362 GR
  2 Videopac_Subso     0365 GR  |   2 Videopac_Subso     0368 GR
  2 Videopac_Subso     036B GR  |   2 Videopac_Subso     036E GR
  2 Videopac_Subso     0371 GR  |   2 Videopac_Subso     0113 GR
  2 Videopac_Subso     0374 GR  |   2 Videopac_Subso     0377 GR
  2 Videopac_Subso     037A GR  |   2 Videopac_Subso     037D GR
  2 Videopac_Subso     0380 GR  |   2 Videopac_Subso     0383 GR
  2 Videopac_Subso     0386 GR  |   2 Videopac_Subso     0389 GR
  2 Videopac_Subso     038C GR  |   2 Videopac_Subso     038F GR
  2 Videopac_Subso     0116 GR  |   2 Videopac_Subso     0392 GR
  2 Videopac_Subso     0395 GR  |   2 Videopac_Subso     0398 GR
  2 Videopac_Subso     039B GR  |   2 Videopac_Subso     039E GR
  2 Videopac_Subso     03A1 GR  |   2 Videopac_Subso     03A4 GR
  2 Videopac_Subso     03A7 GR  |   2 Videopac_Subso     03AA GR
  2 Videopac_Subso     03AD GR  |   2 Videopac_Subso     0119 GR
  2 Videopac_Subso     03B0 GR  |   2 Videopac_Subso     03B3 GR
  2 Videopac_Subso     03B6 GR  |   2 Videopac_Subso     03B9 GR
  2 Videopac_Subso     03BC GR  |   2 Videopac_Subso     03BF GR
  2 Videopac_Subso     03C2 GR  |   2 Videopac_Subso     03C5 GR
  2 Videopac_Subso     03C8 GR  |   2 Videopac_Subso     03CB GR
  2 Videopac_Subso     011C GR  |   2 Videopac_Subso     03CE GR
  2 Videopac_Subso     03D1 GR  |   2 Videopac_Subso     03D4 GR
  2 Videopac_Subso     03D7 GR  |   2 Videopac_Subso     03DA GR
  2 Videopac_Subso     03DD GR  |   2 Videopac_Subso     03E0 GR
  2 Videopac_Subso     03E3 GR  |   2 Videopac_Subso     03E6 GR
  2 Videopac_Subso     03E9 GR  |   2 Videopac_Subso     011F GR
  2 Videopac_Subso     03EC GR  |   2 Videopac_Subso     03EF GR
  2 Videopac_Subso     03F2 GR  |   2 Videopac_Subso     03F5 GR
  2 Videopac_Subso     03F8 GR  |   2 Videopac_Subso     03FB GR
  2 Videopac_Subso     03FE GR  |   2 Videopac_Subso     0401 GR
  2 Videopac_Subso     0404 GR  |   2 Videopac_Subso     0407 GR
  2 Videopac_Subso     0122 GR  |   2 Videopac_Subso     040A GR
  2 Videopac_Subso     040D GR  |   2 Videopac_Subso     0410 GR
  2 Videopac_Subso     0413 GR  |   2 Videopac_Subso     0416 GR
  2 Videopac_Subso     0419 GR  |   2 Videopac_Subso     041C GR
  2 Videopac_Subso     041F GR  |   2 Videopac_Subso     0422 GR
  2 Videopac_Subso     0425 GR  |   2 Videopac_Subso     0125 GR
  2 Videopac_Subso     0428 GR  |   2 Videopac_Subso     042B GR
  2 Videopac_Subso     042E GR  |   2 Videopac_Subso     0431 GR
  2 Videopac_Subso     0434 GR  |   2 Videopac_Subso     0437 GR
  2 Videopac_Subso     043A GR  |   2 Videopac_Subso     043D GR
  2 Videopac_Subso     0440 GR  |   2 Videopac_Subso     0443 GR
  2 Videopac_Subso     0128 GR  |   2 Videopac_Subso     0446 GR
  2 Videopac_Subso     0449 GR  |   2 Videopac_Subso     044C GR
  2 Videopac_Subso     044F GR  |   2 Videopac_Subso     0452 GR
  2 Videopac_Subso     0455 GR  |   2 Videopac_Subso     0458 GR
  2 Videopac_Subso     045B GR  |   2 Videopac_Subso     045E GR
  2 Videopac_Subso     0461 GR  |   2 Videopac_Subso     012B GR
  2 Videopac_Subso     0464 GR  |   2 Videopac_Subso     0467 GR
  2 Videopac_Subso     046A GR  |   2 Videopac_Subso     046D GR
  2 Videopac_Subso     0470 GR  |   2 Videopac_Subso     0473 GR
  2 Videopac_Subso     0476 GR  |   2 Videopac_Subso     0479 GR
  2 Videopac_Subso     047C GR  |   2 Videopac_Subso     047F GR
  2 Videopac_Subso     012E GR  |   2 Videopac_Subso     0482 GR
  2 Videopac_Subso     0485 GR  |   2 Videopac_Subso     0488 GR
  2 Videopac_Subso     048B GR  |   2 Videopac_Subso     048E GR
  2 Videopac_Subso     0491 GR  |   2 Videopac_Subso     0494 GR
  2 Videopac_Subso     0497 GR  |   2 Videopac_Subso     049A GR
  2 Videopac_Subso     049D GR  |   2 Videopac_Subso     0131 GR
  2 Videopac_Subso     04A0 GR  |   2 Videopac_Subso     04A3 GR
  2 Videopac_Subso     04A6 GR  |   2 Videopac_Subso     04A9 GR
  2 Videopac_Subso     04AC GR  |   2 Videopac_Subso     04AF GR
  2 Videopac_Subso     04B2 GR  |   2 Videopac_Subso     04B5 GR
  2 Videopac_Subso     04B8 GR  |   2 Videopac_Subso     04BB GR
  2 Videopac_Subso     0134 GR  |   2 Videopac_Subso     04BE GR
  2 Videopac_Subso     04C1 GR  |   2 Videopac_Subso     04C4 GR
  2 Videopac_Subso     04C7 GR  |   2 Videopac_Subso     04CA GR
  2 Videopac_Subso     04CD GR  |   2 Videopac_Subso     04D0 GR
  2 Videopac_Subso     04D3 GR  |   2 Videopac_Subso     04D6 GR
  2 Videopac_Subso     04D9 GR  |   2 Videopac_Subso     0137 GR
  2 Videopac_Subso     04DC GR  |   2 Videopac_Subso     04DF GR
  2 Videopac_Subso     04E2 GR  |   2 Videopac_Subso     04E5 GR
  2 Videopac_Subso     04E8 GR  |   2 Videopac_Subso     04EB GR
  2 Videopac_Subso     04EE GR  |   2 Videopac_Subso     04F1 GR
  2 Videopac_Subso     04F4 GR  |   2 Videopac_Subso     04F7 GR
  2 Videopac_Subso     013A GR  |   2 Videopac_Subso     04FA GR
  2 Videopac_Subso     04FD GR  |   2 Videopac_Subso     0500 GR
  2 Videopac_Subso     0503 GR  |   2 Videopac_Subso     0506 GR
  2 Videopac_Subso     0509 GR  |   2 Videopac_Subso     050C GR
  2 Videopac_Subso     050F GR  |   2 Videopac_Subso     0512 GR
  2 Videopac_Subso     0515 GR  |   2 Videopac_Subso     013D GR
  2 Videopac_Subso     0518 GR  |   2 Videopac_Subso     051B GR
  2 Videopac_Subso     051E GR  |   2 Videopac_Subso     0521 GR
  2 Videopac_Subso     0524 GR  |   2 Videopac_Subso     0527 GR
  2 Videopac_Subso     052A GR  |   2 Videopac_Subso     052D GR
  2 Videopac_Subso     0530 GR  |   2 Videopac_Subso     0533 GR
  2 Videopac_Subso     0140 GR  |   2 Videopac_Subso     0536 GR
  2 Videopac_Subso     0539 GR  |   2 Videopac_Subso     053C GR
  2 Videopac_Subso     053F GR  |   2 Videopac_Subso     0542 GR
  2 Videopac_Subso     0545 GR  |   2 Videopac_Subso     0548 GR
  2 Videopac_Subso     054B GR  |   2 Videopac_Subso     054E GR
  2 Videopac_Subso     0551 GR  |   2 Videopac_Subso     0143 GR
  2 Videopac_Subso     0554 GR  |   2 Videopac_Subso     0557 GR
  2 Videopac_Subso     055A GR  |   2 Videopac_Subso     055D GR
  2 Videopac_Subso     0560 GR  |   2 Videopac_Subso     0563 GR
  2 Videopac_Subso     0566 GR  |   2 Videopac_Subso     0569 GR
  2 Videopac_Subso     056C GR  |   2 Videopac_Subso     056F GR
  2 Videopac_Subso     0146 GR  |   2 Videopac_Subso     0572 GR
  2 Videopac_Subso     0575 GR  |   2 Videopac_Subso     0578 GR
  2 Videopac_Subso     057B GR  |   2 Videopac_Subso     057E GR
  2 Videopac_Subso     0581 GR  |   2 Videopac_Subso     0584 GR
  2 Videopac_Subso     0587 GR  |   2 Videopac_Subso     058A GR
  2 Videopac_Subso     058D GR  |   2 Videopac_Subso     0149 GR
  2 Videopac_Subso     0590 GR  |   2 Videopac_Subso     0593 GR
  2 Videopac_Subso     0596 GR  |   2 Videopac_Subso     0599 GR
  2 Videopac_Subso     059C GR  |   2 Videopac_Subso     059F GR
  2 Videopac_Subso     05A2 GR  |   2 Videopac_Subso     05A5 GR
  2 Videopac_Subso     05A8 GR  |   2 Videopac_Subso     05AB GR
  2 Videopac_Subso     014C GR  |   2 Videopac_Subso     05AE GR
  2 Videopac_Subso     05B1 GR  |   2 Videopac_Subso     05B4 GR
  2 Videopac_Subso     05B7 GR  |   2 Videopac_Subso     05BA GR
  2 Videopac_Subso     05BD GR  |   2 Videopac_Subso     05C0 GR
  2 Videopac_Subso     05C3 GR  |   2 Videopac_Subso     05C6 GR
  2 Videopac_Subso     05C9 GR  |   2 Videopac_Subso     014F GR
  2 Videopac_Subso     05CC GR  |   2 Videopac_Subso     05CF GR
  2 Videopac_Subso     05D2 GR  |   2 Videopac_Subso     05D5 GR
  2 Videopac_Subso     05D8 GR  |   2 Videopac_Subso     05DB GR
  2 Videopac_Subso     05DE GR  |   2 Videopac_Subso     05E1 GR
  2 Videopac_Subso     05E4 GR  |   2 Videopac_Subso     05E7 GR
  2 Videopac_Subso     0152 GR  |   2 Videopac_Subso     05EA GR
  2 Videopac_Subso     05ED GR  |   2 Videopac_Subso     05F0 GR
  2 Videopac_Subso     05F3 GR  |   2 Videopac_Subso     05F6 GR
  2 Videopac_Subso     05F9 GR  |   2 Videopac_Subso     05FC GR
  2 Videopac_Subso     05FF GR  |   2 Videopac_Subso     0602 GR
  2 Videopac_Subso     0605 GR  |   2 Videopac_Subso     0155 GR
  2 Videopac_Subso     0608 GR  |   2 Videopac_Subso     060B GR
  2 Videopac_Subso     060E GR  |   2 Videopac_Subso     0611 GR
  2 Videopac_Subso     0614 GR  |   2 Videopac_Subso     0617 GR
  2 Videopac_Subso     061A GR  |   2 Videopac_Subso     061D GR
  2 Videopac_Subso     0620 GR  |   2 Videopac_Subso     0623 GR
  2 Videopac_Subso     0158 GR  |   2 Videopac_Subso     0626 GR
  2 Videopac_Subso     0629 GR  |   2 Videopac_Subso     062C GR
  2 Videopac_Subso     062F GR  |   2 Videopac_Subso     0632 GR
  2 Videopac_Subso     0635 GR  |   2 Videopac_Subso     0638 GR
  2 Videopac_Subso     063B GR  |   2 Videopac_Subso     063E GR
  2 Videopac_Subso     0641 GR  |   2 Videopac_Subso     015B GR
  2 Videopac_Subso     0644 GR  |   2 Videopac_Subso     0647 GR
  2 Videopac_Subso     064A GR  |   2 Videopac_Subso     064D GR
  2 Videopac_Subso     0650 GR  |   2 Videopac_Subso     0653 GR
  2 Videopac_Subso     0656 GR  |   2 Videopac_Subso     1012 GR
  2 Videopac_Subso     015E GR  |   2 Videopac_Subso     0161 GR
  2 Videopac_Subso     0164 GR  |   2 Videopac_Subso     0658 GR
  2 Videopac_Subso     002D GR  |   2 Videopac_Subso     00F7 GR
  2 Videopac_Subso     0166 GR  |   2 Videopac_Subso     0F53 GR
  2 Videopac_Subso     0F71 GR  |   2 Videopac_Subso     0F8F GR
  2 Videopac_Subso     0FA4 GR  |   2 Videopac_Subso     0FC2 GR
  2 Videopac_Subso     0FE0 GR  |   2 Videopac_Subso     0FE6 GR
  2 Videopac_Subso     0FEC GR  |   2 Videopac_Subso     100C GR
  2 Videopac_Subso     1012 GR  |   2 Videopac_Subso     0169 GR
  2 Videopac_Subso     016C GR  |   2 Videopac_Subso     016F GR
  2 Videopac_Subso     0172 GR  |   2 Videopac_Subso     0175 GR
  2 Videopac_Subso     0178 GR  |   2 Videopac_Subso     017B GR
  2 Videopac_Subso     017E GR  |   2 Videopac_Subso     0181 GR
  2 Videopac_Subso     0184 GR  |   2 Videopac_Subso     0187 GR
  2 Videopac_Subso     018A GR  |   2 Videopac_Subso     018D GR
  2 Videopac_Subso     0190 GR  |   2 Videopac_Subso     0193 GR
  2 Videopac_Subso     0196 GR  |   2 Videopac_Subso     0199 GR
  2 Videopac_Subso     019C GR  |   2 Videopac_Subso     019F GR
  2 Videopac_Subso     01A2 GR  |   2 Videopac_Subso     01A5 GR
  2 Videopac_Subso     01A8 GR  |   2 Videopac_Subso     01AB GR
  2 Videopac_Subso     01AE GR  |   2 Videopac_Subso     01B1 GR
  2 Videopac_Subso     01B4 GR  |   2 Videopac_Subso     01B7 GR
  2 Videopac_Subso     01BA GR  |   2 Videopac_Subso     01BD GR
  2 Videopac_Subso     01C0 GR  |   2 Videopac_Subso     01C3 GR
  2 Videopac_Subso     01C6 GR  |   2 Videopac_Subso     01C9 GR
  2 Videopac_Subso     01CC GR  |   2 Videopac_Subso     01CF GR
  2 Videopac_Subso     01D2 GR  |   2 Videopac_Subso     01D5 GR
  2 Videopac_Subso     01D8 GR  |   2 Videopac_Subso     01DB GR
  2 Videopac_Subso     01DE GR  |   2 Videopac_Subso     01E1 GR
  2 Videopac_Subso     01E4 GR  |   2 Videopac_Subso     01E7 GR
  2 Videopac_Subso     01EA GR  |   2 Videopac_Subso     01ED GR
  2 Videopac_Subso     01F0 GR  |   2 Videopac_Subso     01F3 GR
  2 Videopac_Subso     01F6 GR  |   2 Videopac_Subso     01F9 GR
  2 Videopac_Subso     01FC GR  |   2 Videopac_Subso     01FF GR
  2 Videopac_Subso     0202 GR  |   2 Videopac_Subso     0205 GR
  2 Videopac_Subso     0208 GR  |   2 Videopac_Subso     020B GR
  2 Videopac_Subso     020E GR  |   2 Videopac_Subso     0211 GR
  2 Videopac_Subso     0214 GR  |   2 Videopac_Subso     0217 GR
  2 Videopac_Subso     021A GR  |   2 Videopac_Subso     021D GR
  2 Videopac_Subso     0220 GR  |   2 Videopac_Subso     0223 GR
  2 Videopac_Subso     0226 GR  |   2 Videopac_Subso     0229 GR
  2 Videopac_Subso     022C GR  |   2 Videopac_Subso     022F GR
  2 Videopac_Subso     0232 GR  |   2 Videopac_Subso     0235 GR
  2 Videopac_Subso     0238 GR  |   2 Videopac_Subso     023B GR
  2 Videopac_Subso     023E GR  |   2 Videopac_Subso     0241 GR
  2 Videopac_Subso     0244 GR  |   2 Videopac_Subso     0247 GR
  2 Videopac_Subso     024A GR  |   2 Videopac_Subso     024D GR
  2 Videopac_Subso     0250 GR  |   2 Videopac_Subso     0253 GR
  2 Videopac_Subso     0256 GR  |   2 Videopac_Subso     0259 GR
  2 Videopac_Subso     025C GR  |   2 Videopac_Subso     025F GR
  2 Videopac_Subso     0262 GR  |   2 Videopac_Subso     0265 GR
  2 Videopac_Subso     0268 GR  |   2 Videopac_Subso     026B GR
  2 Videopac_Subso     026E GR  |   2 Videopac_Subso     0271 GR
  2 Videopac_Subso     00FA GR  |   2 Videopac_Subso     0274 GR
  2 Videopac_Subso     0277 GR  |   2 Videopac_Subso     027A GR
  2 Videopac_Subso     027D GR  |   2 Videopac_Subso     0280 GR
  2 Videopac_Subso     0283 GR  |   2 Videopac_Subso     0286 GR
  2 Videopac_Subso     0289 GR  |   2 Videopac_Subso     028C GR
  2 Videopac_Subso     028F GR  |   2 Videopac_Subso     00FD GR
  2 Videopac_Subso     0292 GR  |   2 Videopac_Subso     0295 GR
  2 Videopac_Subso     0298 GR  |   2 Videopac_Subso     029B GR
  2 Videopac_Subso     029E GR  |   2 Videopac_Subso     02A1 GR
  2 Videopac_Subso     02A4 GR  |   2 Videopac_Subso     02A7 GR
  2 Videopac_Subso     02AA GR  |   2 Videopac_Subso     02AD GR
  2 Videopac_Subso     0100 GR  |   2 Videopac_Subso     02B0 GR
  2 Videopac_Subso     02B3 GR  |   2 Videopac_Subso     02B6 GR
  2 Videopac_Subso     02B9 GR  |   2 Videopac_Subso     02BC GR
  2 Videopac_Subso     02BF GR  |   2 Videopac_Subso     02C2 GR
  2 Videopac_Subso     02C5 GR  |   2 Videopac_Subso     02C8 GR
  2 Videopac_Subso     02CB GR  |   2 Videopac_Subso     0103 GR
  2 Videopac_Subso     02CE GR  |   2 Videopac_Subso     02D1 GR
  2 Videopac_Subso     02D4 GR  |   2 Videopac_Subso     02D7 GR
  2 Videopac_Subso     02DA GR  |   2 Videopac_Subso     02DD GR
  2 Videopac_Subso     02E0 GR  |   2 Videopac_Subso     02E3 GR
  2 Videopac_Subso     02E6 GR  |   2 Videopac_Subso     02E9 GR
  2 Videopac_Subso     0106 GR  |   2 Videopac_Subso     02EC GR
  2 Videopac_Subso     02EF GR  |   2 Videopac_Subso     02F2 GR
  2 Videopac_Subso     02F5 GR  |   2 Videopac_Subso     02F8 GR
  2 Videopac_Subso     02FB GR  |   2 Videopac_Subso     02FE GR
  2 Videopac_Subso     0301 GR  |   2 Videopac_Subso     0304 GR
  2 Videopac_Subso     0307 GR  |   2 Videopac_Subso     0109 GR
  2 Videopac_Subso     030A GR  |   2 Videopac_Subso     030D GR
  2 Videopac_Subso     0310 GR  |   2 Videopac_Subso     0313 GR
  2 Videopac_Subso     0316 GR  |   2 Videopac_Subso     0319 GR
  2 Videopac_Subso     031C GR  |   2 Videopac_Subso     031F GR
  2 Videopac_Subso     0322 GR  |   2 Videopac_Subso     0325 GR
  2 Videopac_Subso     010C GR  |   2 Videopac_Subso     0328 GR
  2 Videopac_Subso     032B GR  |   2 Videopac_Subso     032E GR
  2 Videopac_Subso     0331 GR  |   2 Videopac_Subso     0334 GR
  2 Videopac_Subso     0337 GR  |   2 Videopac_Subso     033A GR
  2 Videopac_Subso     033D GR  |   2 Videopac_Subso     0340 GR
  2 Videopac_Subso     0343 GR  |   2 Videopac_Subso     010F GR
  2 Videopac_Subso     0346 GR  |   2 Videopac_Subso     0349 GR
  2 Videopac_Subso     034C GR  |   2 Videopac_Subso     034F GR
  2 Videopac_Subso     0352 GR  |   2 Videopac_Subso     0355 GR
  2 Videopac_Subso     0358 GR  |   2 Videopac_Subso     035B GR
  2 Videopac_Subso     035E GR  |   2 Videopac_Subso     0361 GR
  2 Videopac_Subso     0112 GR  |   2 Videopac_Subso     0364 GR
  2 Videopac_Subso     0367 GR  |   2 Videopac_Subso     036A GR
  2 Videopac_Subso     036D GR  |   2 Videopac_Subso     0370 GR
  2 Videopac_Subso     0373 GR  |   2 Videopac_Subso     0376 GR
  2 Videopac_Subso     0379 GR  |   2 Videopac_Subso     037C GR
  2 Videopac_Subso     037F GR  |   2 Videopac_Subso     0115 GR
  2 Videopac_Subso     0382 GR  |   2 Videopac_Subso     0385 GR
  2 Videopac_Subso     0388 GR  |   2 Videopac_Subso     038B GR
  2 Videopac_Subso     038E GR  |   2 Videopac_Subso     0391 GR
  2 Videopac_Subso     0394 GR  |   2 Videopac_Subso     0397 GR
  2 Videopac_Subso     039A GR  |   2 Videopac_Subso     039D GR
  2 Videopac_Subso     0118 GR  |   2 Videopac_Subso     03A0 GR
  2 Videopac_Subso     03A3 GR  |   2 Videopac_Subso     03A6 GR
  2 Videopac_Subso     03A9 GR  |   2 Videopac_Subso     03AC GR
  2 Videopac_Subso     03AF GR  |   2 Videopac_Subso     03B2 GR
  2 Videopac_Subso     03B5 GR  |   2 Videopac_Subso     03B8 GR
  2 Videopac_Subso     03BB GR  |   2 Videopac_Subso     011B GR
  2 Videopac_Subso     03BE GR  |   2 Videopac_Subso     03C1 GR
  2 Videopac_Subso     03C4 GR  |   2 Videopac_Subso     03C7 GR
  2 Videopac_Subso     03CA GR  |   2 Videopac_Subso     03CD GR
  2 Videopac_Subso     03D0 GR  |   2 Videopac_Subso     03D3 GR
  2 Videopac_Subso     03D6 GR  |   2 Videopac_Subso     03D9 GR
  2 Videopac_Subso     011E GR  |   2 Videopac_Subso     03DC GR
  2 Videopac_Subso     03DF GR  |   2 Videopac_Subso     03E2 GR
  2 Videopac_Subso     03E5 GR  |   2 Videopac_Subso     03E8 GR
  2 Videopac_Subso     03EB GR  |   2 Videopac_Subso     03EE GR
  2 Videopac_Subso     03F1 GR  |   2 Videopac_Subso     03F4 GR
  2 Videopac_Subso     03F7 GR  |   2 Videopac_Subso     0121 GR
  2 Videopac_Subso     03FA GR  |   2 Videopac_Subso     03FD GR
  2 Videopac_Subso     0400 GR  |   2 Videopac_Subso     0403 GR
  2 Videopac_Subso     0406 GR  |   2 Videopac_Subso     0409 GR
  2 Videopac_Subso     040C GR  |   2 Videopac_Subso     040F GR
  2 Videopac_Subso     0412 GR  |   2 Videopac_Subso     0415 GR
  2 Videopac_Subso     0124 GR  |   2 Videopac_Subso     0418 GR
  2 Videopac_Subso     041B GR  |   2 Videopac_Subso     041E GR
  2 Videopac_Subso     0421 GR  |   2 Videopac_Subso     0424 GR
  2 Videopac_Subso     0427 GR  |   2 Videopac_Subso     042A GR
  2 Videopac_Subso     042D GR  |   2 Videopac_Subso     0430 GR
  2 Videopac_Subso     0433 GR  |   2 Videopac_Subso     0127 GR
  2 Videopac_Subso     0436 GR  |   2 Videopac_Subso     0439 GR
  2 Videopac_Subso     043C GR  |   2 Videopac_Subso     043F GR
  2 Videopac_Subso     0442 GR  |   2 Videopac_Subso     0445 GR
  2 Videopac_Subso     0448 GR  |   2 Videopac_Subso     044B GR
  2 Videopac_Subso     044E GR  |   2 Videopac_Subso     0451 GR
  2 Videopac_Subso     012A GR  |   2 Videopac_Subso     0454 GR
  2 Videopac_Subso     0457 GR  |   2 Videopac_Subso     045A GR
  2 Videopac_Subso     045D GR  |   2 Videopac_Subso     0460 GR
  2 Videopac_Subso     0463 GR  |   2 Videopac_Subso     0466 GR
  2 Videopac_Subso     0469 GR  |   2 Videopac_Subso     046C GR
  2 Videopac_Subso     046F GR  |   2 Videopac_Subso     012D GR
  2 Videopac_Subso     0472 GR  |   2 Videopac_Subso     0475 GR
  2 Videopac_Subso     0478 GR  |   2 Videopac_Subso     047B GR
  2 Videopac_Subso     047E GR  |   2 Videopac_Subso     0481 GR
  2 Videopac_Subso     0484 GR  |   2 Videopac_Subso     0487 GR
  2 Videopac_Subso     048A GR  |   2 Videopac_Subso     048D GR
  2 Videopac_Subso     0130 GR  |   2 Videopac_Subso     0490 GR
  2 Videopac_Subso     0493 GR  |   2 Videopac_Subso     0496 GR
  2 Videopac_Subso     0499 GR  |   2 Videopac_Subso     049C GR
  2 Videopac_Subso     049F GR  |   2 Videopac_Subso     04A2 GR
  2 Videopac_Subso     04A5 GR  |   2 Videopac_Subso     04A8 GR
  2 Videopac_Subso     04AB GR  |   2 Videopac_Subso     0133 GR
  2 Videopac_Subso     04AE GR  |   2 Videopac_Subso     04B1 GR
  2 Videopac_Subso     04B4 GR  |   2 Videopac_Subso     04B7 GR
  2 Videopac_Subso     04BA GR  |   2 Videopac_Subso     04BD GR
  2 Videopac_Subso     04C0 GR  |   2 Videopac_Subso     04C3 GR
  2 Videopac_Subso     04C6 GR  |   2 Videopac_Subso     04C9 GR
  2 Videopac_Subso     0136 GR  |   2 Videopac_Subso     04CC GR
  2 Videopac_Subso     04CF GR  |   2 Videopac_Subso     04D2 GR
  2 Videopac_Subso     04D5 GR  |   2 Videopac_Subso     04D8 GR
  2 Videopac_Subso     04DB GR  |   2 Videopac_Subso     04DE GR
  2 Videopac_Subso     04E1 GR  |   2 Videopac_Subso     04E4 GR
  2 Videopac_Subso     04E7 GR  |   2 Videopac_Subso     0139 GR
  2 Videopac_Subso     04EA GR  |   2 Videopac_Subso     04ED GR
  2 Videopac_Subso     04F0 GR  |   2 Videopac_Subso     04F3 GR
  2 Videopac_Subso     04F6 GR  |   2 Videopac_Subso     04F9 GR
  2 Videopac_Subso     04FC GR  |   2 Videopac_Subso     04FF GR
  2 Videopac_Subso     0502 GR  |   2 Videopac_Subso     0505 GR
  2 Videopac_Subso     013C GR  |   2 Videopac_Subso     0508 GR
  2 Videopac_Subso     050B GR  |   2 Videopac_Subso     050E GR
  2 Videopac_Subso     0511 GR  |   2 Videopac_Subso     0514 GR
  2 Videopac_Subso     0517 GR  |   2 Videopac_Subso     051A GR
  2 Videopac_Subso     051D GR  |   2 Videopac_Subso     0520 GR
  2 Videopac_Subso     0523 GR  |   2 Videopac_Subso     013F GR
  2 Videopac_Subso     0526 GR  |   2 Videopac_Subso     0529 GR
  2 Videopac_Subso     052C GR  |   2 Videopac_Subso     052F GR
  2 Videopac_Subso     0532 GR  |   2 Videopac_Subso     0535 GR
  2 Videopac_Subso     0538 GR  |   2 Videopac_Subso     053B GR
  2 Videopac_Subso     053E GR  |   2 Videopac_Subso     0541 GR
  2 Videopac_Subso     0142 GR  |   2 Videopac_Subso     0544 GR
  2 Videopac_Subso     0547 GR  |   2 Videopac_Subso     054A GR
  2 Videopac_Subso     054D GR  |   2 Videopac_Subso     0550 GR
  2 Videopac_Subso     0553 GR  |   2 Videopac_Subso     0556 GR
  2 Videopac_Subso     0559 GR  |   2 Videopac_Subso     055C GR
  2 Videopac_Subso     055F GR  |   2 Videopac_Subso     0145 GR
  2 Videopac_Subso     0562 GR  |   2 Videopac_Subso     0565 GR
  2 Videopac_Subso     0568 GR  |   2 Videopac_Subso     056B GR
  2 Videopac_Subso     056E GR  |   2 Videopac_Subso     0571 GR
  2 Videopac_Subso     0574 GR  |   2 Videopac_Subso     0577 GR
  2 Videopac_Subso     057A GR  |   2 Videopac_Subso     057D GR
  2 Videopac_Subso     0148 GR  |   2 Videopac_Subso     0580 GR
  2 Videopac_Subso     0583 GR  |   2 Videopac_Subso     0586 GR
  2 Videopac_Subso     0589 GR  |   2 Videopac_Subso     058C GR
  2 Videopac_Subso     058F GR  |   2 Videopac_Subso     0592 GR
  2 Videopac_Subso     0595 GR  |   2 Videopac_Subso     0598 GR
  2 Videopac_Subso     059B GR  |   2 Videopac_Subso     014B GR
  2 Videopac_Subso     059E GR  |   2 Videopac_Subso     05A1 GR
  2 Videopac_Subso     05A4 GR  |   2 Videopac_Subso     05A7 GR
  2 Videopac_Subso     05AA GR  |   2 Videopac_Subso     05AD GR
  2 Videopac_Subso     05B0 GR  |   2 Videopac_Subso     05B3 GR
  2 Videopac_Subso     05B6 GR  |   2 Videopac_Subso     05B9 GR
  2 Videopac_Subso     014E GR  |   2 Videopac_Subso     05BC GR
  2 Videopac_Subso     05BF GR  |   2 Videopac_Subso     05C2 GR
  2 Videopac_Subso     05C5 GR  |   2 Videopac_Subso     05C8 GR
  2 Videopac_Subso     05CB GR  |   2 Videopac_Subso     05CE GR
  2 Videopac_Subso     05D1 GR  |   2 Videopac_Subso     05D4 GR
  2 Videopac_Subso     05D7 GR  |   2 Videopac_Subso     0151 GR
  2 Videopac_Subso     05DA GR  |   2 Videopac_Subso     05DD GR
  2 Videopac_Subso     05E0 GR  |   2 Videopac_Subso     05E3 GR
  2 Videopac_Subso     05E6 GR  |   2 Videopac_Subso     05E9 GR
  2 Videopac_Subso     05EC GR  |   2 Videopac_Subso     05EF GR
  2 Videopac_Subso     05F2 GR  |   2 Videopac_Subso     05F5 GR
  2 Videopac_Subso     0154 GR  |   2 Videopac_Subso     05F8 GR
  2 Videopac_Subso     05FB GR  |   2 Videopac_Subso     05FE GR
  2 Videopac_Subso     0601 GR  |   2 Videopac_Subso     0604 GR
  2 Videopac_Subso     0607 GR  |   2 Videopac_Subso     060A GR
  2 Videopac_Subso     060D GR  |   2 Videopac_Subso     0610 GR
  2 Videopac_Subso     0613 GR  |   2 Videopac_Subso     0157 GR
  2 Videopac_Subso     0616 GR  |   2 Videopac_Subso     0619 GR
  2 Videopac_Subso     061C GR  |   2 Videopac_Subso     061F GR
  2 Videopac_Subso     0622 GR  |   2 Videopac_Subso     0625 GR
  2 Videopac_Subso     0628 GR  |   2 Videopac_Subso     062B GR
  2 Videopac_Subso     062E GR  |   2 Videopac_Subso     0631 GR
  2 Videopac_Subso     015A GR  |   2 Videopac_Subso     0634 GR
  2 Videopac_Subso     0637 GR  |   2 Videopac_Subso     063A GR
  2 Videopac_Subso     063D GR  |   2 Videopac_Subso     0640 GR
  2 Videopac_Subso     0643 GR  |   2 Videopac_Subso     0646 GR
  2 Videopac_Subso     0649 GR  |   2 Videopac_Subso     064C GR
  2 Videopac_Subso     064F GR  |   2 Videopac_Subso     015D GR
  2 Videopac_Subso     0652 GR  |   2 Videopac_Subso     0655 GR
  2 Videopac_Subso     0658 GR  |   2 Videopac_Subso     065D GR
  2 Videopac_Subso     0699 GR  |   2 Videopac_Subso     06D5 GR
  2 Videopac_Subso     0711 GR  |   2 Videopac_Subso     074D GR
  2 Videopac_Subso     0789 GR  |   2 Videopac_Subso     07C5 GR
  2 Videopac_Subso     0801 GR  |   2 Videopac_Subso     083D GR
  2 Videopac_Subso     0879 GR  |   2 Videopac_Subso     08B5 GR
  2 Videopac_Subso     08E3 GR  |   2 Videopac_Subso     0911 GR
  2 Videopac_Subso     093F GR  |   2 Videopac_Subso     0160 GR
  2 Videopac_Subso     096D GR  |   2 Videopac_Subso     09A9 GR
  2 Videopac_Subso     09D7 GR  |   2 Videopac_Subso     0A13 GR
  2 Videopac_Subso     0A4F GR  |   2 Videopac_Subso     0A8B GR
  2 Videopac_Subso     0AC7 GR  |   2 Videopac_Subso     0B03 GR
  2 Videopac_Subso     0B3F GR  |   2 Videopac_Subso     0B7B GR
  2 Videopac_Subso     0BB7 GR  |   2 Videopac_Subso     0BF3 GR
  2 Videopac_Subso     0C2F GR  |   2 Videopac_Subso     0C6B GR
  2 Videopac_Subso     0C99 GR  |   2 Videopac_Subso     0CC7 GR
  2 Videopac_Subso     0CF5 GR  |   2 Videopac_Subso     0D23 GR
  2 Videopac_Subso     0D51 GR  |   2 Videopac_Subso     0D55 GR
  2 Videopac_Subso     0163 GR  |   2 Videopac_Subso     0D5B GR
  2 Videopac_Subso     0D61 GR  |   2 Videopac_Subso     0D67 GR
  2 Videopac_Subso     0D8D GR  |   2 Videopac_Subso     0D9B GR
  2 Videopac_Subso     0DA1 GR  |   2 Videopac_Subso     0DA7 GR
  2 Videopac_Subso     0DAD GR  |   2 Videopac_Subso     0DCF GR
  2 Videopac_Subso     0DEF GR  |   2 Videopac_Subso     0E11 GR
  2 Videopac_Subso     0E2E GR  |   2 Videopac_Subso     0E4B GR
  2 Videopac_Subso     0E68 GR  |   2 Videopac_Subso     0E8B GR
  2 Videopac_Subso     0EA5 GR  |   2 Videopac_Subso     0EC7 GR
  2 Videopac_Subso     0EE2 GR  |   2 Videopac_Subso     0F00 GR
  2 Videopac_Subso     0F15 GR  |   2 Videopac_Subso     0033 GR
  2 Videopac_Subso     0033 GR  |   2 Videopac_Subso     0033 GR
  2 Videopac_Subso     00F7 GR  |   2 Videopac_Subso     0112 GR
  2 Videopac_Subso     0145 GR  |   2 Videopac_Subso     0160 GR
  2 Videopac_Subso     017B GR  |   2 Videopac_Subso     0196 GR
  2 Videopac_Subso     01B1 GR  |   2 Videopac_Subso     01CC GR
  2 Videopac_Subso     01E7 GR  |   2 Videopac_Subso     0202 GR
  2 Videopac_Subso     012D GR  |   2 Videopac_Subso     021D GR
  2 Videopac_Subso     0238 GR  |   2 Videopac_Subso     0253 GR
  2 Videopac_Subso     026E GR  |   2 Videopac_Subso     0289 GR
  2 Videopac_Subso     02AD GR  |   2 Videopac_Subso     02D4 GR
  2 Videopac_Subso     02FB GR  |   2 Videopac_Subso     0322 GR
  2 Videopac_Subso     0346 GR  |   2 Videopac_Subso     036D GR
  2 Videopac_Subso     0394 GR  |   2 Videopac_Subso     03BB GR
  2 Videopac_Subso     03E2 GR  |   2 Videopac_Subso     0406 GR
  2 Videopac_Subso     042D GR  |   2 Videopac_Subso     0460 GR
  2 Videopac_Subso     0493 GR  |   2 Videopac_Subso     04C6 GR
  2 Videopac_Subso     04F9 GR  |   2 Videopac_Subso     0529 GR
  2 Videopac_Subso     055C GR  |   2 Videopac_Subso     058F GR
  2 Videopac_Subso     05C2 GR  |   2 Videopac_Subso     05F5 GR
  2 Videopac_Subso     0625 GR  |     Wait_Recal     =   F192 
    Warm_Start     =   F06C     |     Xform_Rise     =   F663 
    Xform_Rise_a   =   F661     |     Xform_Run      =   F65D 
    Xform_Run_a    =   F65B     |     _ACCA              **** GX
    _ACCB              **** GX  |     _PLY_AKY_CHANN     **** GX
    _PLY_AKY_CHANN     **** GX  |   2 _PLY_AKY_CHANN     10AB GR
    _PLY_AKY_CHANN     **** GX  |     _PLY_AKY_CHANN     **** GX
    _PLY_AKY_CHANN     **** GX  |   2 _PLY_AKY_CHANN     10C5 GR
    _PLY_AKY_CHANN     **** GX  |     _PLY_AKY_CHANN     **** GX
    _PLY_AKY_CHANN     **** GX  |   2 _PLY_AKY_CHANN     10DF GR
    _PLY_AKY_CHANN     **** GX  |   2 _PLY_AKY_EXIT      114C GR
  2 _PLY_AKY_INIT      101C GR  |   2 _PLY_AKY_LINKE     1071 GR
    _PLY_AKY_PATTE     **** GX  |     _PLY_AKY_PATTE     **** GX
  2 _PLY_AKY_PLAY      104F GR  |     _PLY_AKY_PSGRE     **** GX
    _PLY_AKY_PSGRE     **** GX  |     _PLY_AKY_PSGRE     **** GX
  2 _PLY_AKY_PSGRE     114C GR  |     _PLY_AKY_PSGRE     **** GX
    _PLY_AKY_PSGRE     **** GX  |   2 _PLY_AKY_PTLIN     1062 GR
  2 _PLY_AKY_READR     114D GR  |   2 _PLY_AKY_RRB_I     118D GR
  2 _PLY_AKY_RRB_I     11AF GR  |   2 _PLY_AKY_RRB_I     119D GR
  2 _PLY_AKY_RRB_I     1161 GR  |   2 _PLY_AKY_RRB_I     122E GR
  2 _PLY_AKY_RRB_I     121C GR  |   2 _PLY_AKY_RRB_I     120C GR
  2 _PLY_AKY_RRB_I     11D5 GR  |   2 _PLY_AKY_RRB_I     11EC GR
  2 _PLY_AKY_RRB_N     131A GR  |   2 _PLY_AKY_RRB_N     134F GR
  2 _PLY_AKY_RRB_N     1359 GR  |   2 _PLY_AKY_RRB_N     13BE GR
  2 _PLY_AKY_RRB_N     125A GR  |   2 _PLY_AKY_RRB_N     1173 GR
  2 _PLY_AKY_RRB_N     1295 GR  |   2 _PLY_AKY_RRB_N     13B7 GR
  2 _PLY_AKY_RRB_N     1373 GR  |   2 _PLY_AKY_RRB_N     1390 GR
  2 _PLY_AKY_RRB_N     137D GR  |   2 _PLY_AKY_RRB_N     13A6 GR
  2 _PLY_AKY_RRB_N     135F GR  |   2 _PLY_AKY_RRB_N     12B4 GR
  2 _PLY_AKY_RRB_N     12ED GR  |   2 _PLY_AKY_RRB_N     12DF GR
  2 _PLY_AKY_RRB_N     13C8 GR  |   2 _PLY_AKY_RRB_N     1262 GR
    _PLY_AKY_USE_N =   0001     |     _PLY_AKY_USE_S =   0001 
    _PLY_AKY_USE_S =   0001     |     _PLY_SONG_PLAY     **** GX
    _PLY_error         **** GX  |   2 _Videopac_Subs     002D GR
  2 _Videopac_Subs     0166 GR  |   2 _Videopac_Subs     0169 GR
  2 _Videopac_Subs     016C GR  |   2 _Videopac_Subs     016F GR
  2 _Videopac_Subs     0172 GR  |   2 _Videopac_Subs     0175 GR
  2 _Videopac_Subs     0178 GR  |   2 _Videopac_Subs     017B GR
  2 _Videopac_Subs     017E GR  |   2 _Videopac_Subs     0181 GR
  2 _Videopac_Subs     0184 GR  |   2 _Videopac_Subs     0187 GR
  2 _Videopac_Subs     018A GR  |   2 _Videopac_Subs     018D GR
  2 _Videopac_Subs     0190 GR  |   2 _Videopac_Subs     0193 GR
  2 _Videopac_Subs     0196 GR  |   2 _Videopac_Subs     0199 GR
  2 _Videopac_Subs     019C GR  |   2 _Videopac_Subs     019F GR
  2 _Videopac_Subs     01A2 GR  |   2 _Videopac_Subs     01A5 GR
  2 _Videopac_Subs     01A8 GR  |   2 _Videopac_Subs     01AB GR
  2 _Videopac_Subs     01AE GR  |   2 _Videopac_Subs     01B1 GR
  2 _Videopac_Subs     01B4 GR  |   2 _Videopac_Subs     01B7 GR
  2 _Videopac_Subs     01BA GR  |   2 _Videopac_Subs     01BD GR
  2 _Videopac_Subs     01C0 GR  |   2 _Videopac_Subs     01C3 GR
  2 _Videopac_Subs     01C6 GR  |   2 _Videopac_Subs     01C9 GR
  2 _Videopac_Subs     01CC GR  |   2 _Videopac_Subs     01CF GR
  2 _Videopac_Subs     01D2 GR  |   2 _Videopac_Subs     01D5 GR
  2 _Videopac_Subs     01D8 GR  |   2 _Videopac_Subs     01DB GR
  2 _Videopac_Subs     01DE GR  |   2 _Videopac_Subs     01E1 GR
  2 _Videopac_Subs     01E4 GR  |   2 _Videopac_Subs     01E7 GR
  2 _Videopac_Subs     01EA GR  |   2 _Videopac_Subs     01ED GR
  2 _Videopac_Subs     01F0 GR  |   2 _Videopac_Subs     01F3 GR
  2 _Videopac_Subs     01F6 GR  |   2 _Videopac_Subs     01F9 GR
  2 _Videopac_Subs     01FC GR  |   2 _Videopac_Subs     01FF GR
  2 _Videopac_Subs     0202 GR  |   2 _Videopac_Subs     0205 GR
  2 _Videopac_Subs     0208 GR  |   2 _Videopac_Subs     020B GR
  2 _Videopac_Subs     020E GR  |   2 _Videopac_Subs     0211 GR
  2 _Videopac_Subs     0214 GR  |   2 _Videopac_Subs     0217 GR
  2 _Videopac_Subs     021A GR  |   2 _Videopac_Subs     021D GR
  2 _Videopac_Subs     0220 GR  |   2 _Videopac_Subs     0223 GR
  2 _Videopac_Subs     0226 GR  |   2 _Videopac_Subs     0229 GR
  2 _Videopac_Subs     022C GR  |   2 _Videopac_Subs     022F GR
  2 _Videopac_Subs     0232 GR  |   2 _Videopac_Subs     0235 GR
  2 _Videopac_Subs     0238 GR  |   2 _Videopac_Subs     023B GR
  2 _Videopac_Subs     023E GR  |   2 _Videopac_Subs     0241 GR
  2 _Videopac_Subs     0244 GR  |   2 _Videopac_Subs     0247 GR
  2 _Videopac_Subs     024A GR  |   2 _Videopac_Subs     024D GR
  2 _Videopac_Subs     0250 GR  |   2 _Videopac_Subs     0253 GR
  2 _Videopac_Subs     0256 GR  |   2 _Videopac_Subs     0259 GR
  2 _Videopac_Subs     025C GR  |   2 _Videopac_Subs     025F GR
  2 _Videopac_Subs     0262 GR  |   2 _Videopac_Subs     00F7 GR
  2 _Videopac_Subs     0265 GR  |   2 _Videopac_Subs     0268 GR
  2 _Videopac_Subs     026B GR  |   2 _Videopac_Subs     026E GR
  2 _Videopac_Subs     0271 GR  |   2 _Videopac_Subs     0274 GR
  2 _Videopac_Subs     0277 GR  |   2 _Videopac_Subs     027A GR
  2 _Videopac_Subs     027D GR  |   2 _Videopac_Subs     0280 GR
  2 _Videopac_Subs     00FA GR  |   2 _Videopac_Subs     0283 GR
  2 _Videopac_Subs     0286 GR  |   2 _Videopac_Subs     0289 GR
  2 _Videopac_Subs     028C GR  |   2 _Videopac_Subs     028F GR
  2 _Videopac_Subs     0292 GR  |   2 _Videopac_Subs     0295 GR
  2 _Videopac_Subs     0298 GR  |   2 _Videopac_Subs     029B GR
  2 _Videopac_Subs     029E GR  |   2 _Videopac_Subs     00FD GR
  2 _Videopac_Subs     02A1 GR  |   2 _Videopac_Subs     02A4 GR
  2 _Videopac_Subs     02A7 GR  |   2 _Videopac_Subs     02AA GR
  2 _Videopac_Subs     02AD GR  |   2 _Videopac_Subs     02B0 GR
  2 _Videopac_Subs     02B3 GR  |   2 _Videopac_Subs     02B6 GR
  2 _Videopac_Subs     02B9 GR  |   2 _Videopac_Subs     02BC GR
  2 _Videopac_Subs     0100 GR  |   2 _Videopac_Subs     02BF GR
  2 _Videopac_Subs     02C2 GR  |   2 _Videopac_Subs     02C5 GR
  2 _Videopac_Subs     02C8 GR  |   2 _Videopac_Subs     02CB GR
  2 _Videopac_Subs     02CE GR  |   2 _Videopac_Subs     02D1 GR
  2 _Videopac_Subs     02D4 GR  |   2 _Videopac_Subs     02D7 GR
  2 _Videopac_Subs     02DA GR  |   2 _Videopac_Subs     0103 GR
  2 _Videopac_Subs     02DD GR  |   2 _Videopac_Subs     02E0 GR
  2 _Videopac_Subs     02E3 GR  |   2 _Videopac_Subs     02E6 GR
  2 _Videopac_Subs     02E9 GR  |   2 _Videopac_Subs     02EC GR
  2 _Videopac_Subs     02EF GR  |   2 _Videopac_Subs     02F2 GR
  2 _Videopac_Subs     02F5 GR  |   2 _Videopac_Subs     02F8 GR
  2 _Videopac_Subs     0106 GR  |   2 _Videopac_Subs     02FB GR
  2 _Videopac_Subs     02FE GR  |   2 _Videopac_Subs     0301 GR
  2 _Videopac_Subs     0304 GR  |   2 _Videopac_Subs     0307 GR
  2 _Videopac_Subs     030A GR  |   2 _Videopac_Subs     030D GR
  2 _Videopac_Subs     0310 GR  |   2 _Videopac_Subs     0313 GR
  2 _Videopac_Subs     0316 GR  |   2 _Videopac_Subs     0109 GR
  2 _Videopac_Subs     0319 GR  |   2 _Videopac_Subs     031C GR
  2 _Videopac_Subs     031F GR  |   2 _Videopac_Subs     0322 GR
  2 _Videopac_Subs     0325 GR  |   2 _Videopac_Subs     0328 GR
  2 _Videopac_Subs     032B GR  |   2 _Videopac_Subs     032E GR
  2 _Videopac_Subs     0331 GR  |   2 _Videopac_Subs     0334 GR
  2 _Videopac_Subs     010C GR  |   2 _Videopac_Subs     0337 GR
  2 _Videopac_Subs     033A GR  |   2 _Videopac_Subs     033D GR
  2 _Videopac_Subs     0340 GR  |   2 _Videopac_Subs     0343 GR
  2 _Videopac_Subs     0346 GR  |   2 _Videopac_Subs     0349 GR
  2 _Videopac_Subs     034C GR  |   2 _Videopac_Subs     034F GR
  2 _Videopac_Subs     0352 GR  |   2 _Videopac_Subs     010F GR
  2 _Videopac_Subs     0355 GR  |   2 _Videopac_Subs     0358 GR
  2 _Videopac_Subs     035B GR  |   2 _Videopac_Subs     035E GR
  2 _Videopac_Subs     0361 GR  |   2 _Videopac_Subs     0364 GR
  2 _Videopac_Subs     0367 GR  |   2 _Videopac_Subs     036A GR
  2 _Videopac_Subs     036D GR  |   2 _Videopac_Subs     0370 GR
  2 _Videopac_Subs     0112 GR  |   2 _Videopac_Subs     0373 GR
  2 _Videopac_Subs     0376 GR  |   2 _Videopac_Subs     0379 GR
  2 _Videopac_Subs     037C GR  |   2 _Videopac_Subs     037F GR
  2 _Videopac_Subs     0382 GR  |   2 _Videopac_Subs     0385 GR
  2 _Videopac_Subs     0388 GR  |   2 _Videopac_Subs     038B GR
  2 _Videopac_Subs     038E GR  |   2 _Videopac_Subs     0115 GR
  2 _Videopac_Subs     0391 GR  |   2 _Videopac_Subs     0394 GR
  2 _Videopac_Subs     0397 GR  |   2 _Videopac_Subs     039A GR
  2 _Videopac_Subs     039D GR  |   2 _Videopac_Subs     03A0 GR
  2 _Videopac_Subs     03A3 GR  |   2 _Videopac_Subs     03A6 GR
  2 _Videopac_Subs     03A9 GR  |   2 _Videopac_Subs     03AC GR
  2 _Videopac_Subs     0118 GR  |   2 _Videopac_Subs     03AF GR
  2 _Videopac_Subs     03B2 GR  |   2 _Videopac_Subs     03B5 GR
  2 _Videopac_Subs     03B8 GR  |   2 _Videopac_Subs     03BB GR
  2 _Videopac_Subs     03BE GR  |   2 _Videopac_Subs     03C1 GR
  2 _Videopac_Subs     03C4 GR  |   2 _Videopac_Subs     03C7 GR
  2 _Videopac_Subs     03CA GR  |   2 _Videopac_Subs     011B GR
  2 _Videopac_Subs     03CD GR  |   2 _Videopac_Subs     03D0 GR
  2 _Videopac_Subs     03D3 GR  |   2 _Videopac_Subs     03D6 GR
  2 _Videopac_Subs     03D9 GR  |   2 _Videopac_Subs     03DC GR
  2 _Videopac_Subs     03DF GR  |   2 _Videopac_Subs     03E2 GR
  2 _Videopac_Subs     03E5 GR  |   2 _Videopac_Subs     03E8 GR
  2 _Videopac_Subs     011E GR  |   2 _Videopac_Subs     03EB GR
  2 _Videopac_Subs     03EE GR  |   2 _Videopac_Subs     03F1 GR
  2 _Videopac_Subs     03F4 GR  |   2 _Videopac_Subs     03F7 GR
  2 _Videopac_Subs     03FA GR  |   2 _Videopac_Subs     03FD GR
  2 _Videopac_Subs     0400 GR  |   2 _Videopac_Subs     0403 GR
  2 _Videopac_Subs     0406 GR  |   2 _Videopac_Subs     0121 GR
  2 _Videopac_Subs     0409 GR  |   2 _Videopac_Subs     040C GR
  2 _Videopac_Subs     040F GR  |   2 _Videopac_Subs     0412 GR
  2 _Videopac_Subs     0415 GR  |   2 _Videopac_Subs     0418 GR
  2 _Videopac_Subs     041B GR  |   2 _Videopac_Subs     041E GR
  2 _Videopac_Subs     0421 GR  |   2 _Videopac_Subs     0424 GR
  2 _Videopac_Subs     0124 GR  |   2 _Videopac_Subs     0427 GR
  2 _Videopac_Subs     042A GR  |   2 _Videopac_Subs     042D GR
  2 _Videopac_Subs     0430 GR  |   2 _Videopac_Subs     0433 GR
  2 _Videopac_Subs     0436 GR  |   2 _Videopac_Subs     0439 GR
  2 _Videopac_Subs     043C GR  |   2 _Videopac_Subs     043F GR
  2 _Videopac_Subs     0442 GR  |   2 _Videopac_Subs     0127 GR
  2 _Videopac_Subs     0445 GR  |   2 _Videopac_Subs     0448 GR
  2 _Videopac_Subs     044B GR  |   2 _Videopac_Subs     044E GR
  2 _Videopac_Subs     0451 GR  |   2 _Videopac_Subs     0454 GR
  2 _Videopac_Subs     0457 GR  |   2 _Videopac_Subs     045A GR
  2 _Videopac_Subs     045D GR  |   2 _Videopac_Subs     0460 GR
  2 _Videopac_Subs     012A GR  |   2 _Videopac_Subs     0463 GR
  2 _Videopac_Subs     0466 GR  |   2 _Videopac_Subs     0469 GR
  2 _Videopac_Subs     046C GR  |   2 _Videopac_Subs     046F GR
  2 _Videopac_Subs     0472 GR  |   2 _Videopac_Subs     0475 GR
  2 _Videopac_Subs     0478 GR  |   2 _Videopac_Subs     047B GR
  2 _Videopac_Subs     047E GR  |   2 _Videopac_Subs     012D GR
  2 _Videopac_Subs     0481 GR  |   2 _Videopac_Subs     0484 GR
  2 _Videopac_Subs     0487 GR  |   2 _Videopac_Subs     048A GR
  2 _Videopac_Subs     048D GR  |   2 _Videopac_Subs     0490 GR
  2 _Videopac_Subs     0493 GR  |   2 _Videopac_Subs     0496 GR
  2 _Videopac_Subs     0499 GR  |   2 _Videopac_Subs     049C GR
  2 _Videopac_Subs     0130 GR  |   2 _Videopac_Subs     049F GR
  2 _Videopac_Subs     04A2 GR  |   2 _Videopac_Subs     04A5 GR
  2 _Videopac_Subs     04A8 GR  |   2 _Videopac_Subs     04AB GR
  2 _Videopac_Subs     04AE GR  |   2 _Videopac_Subs     04B1 GR
  2 _Videopac_Subs     04B4 GR  |   2 _Videopac_Subs     04B7 GR
  2 _Videopac_Subs     04BA GR  |   2 _Videopac_Subs     0133 GR
  2 _Videopac_Subs     04BD GR  |   2 _Videopac_Subs     04C0 GR
  2 _Videopac_Subs     04C3 GR  |   2 _Videopac_Subs     04C6 GR
  2 _Videopac_Subs     04C9 GR  |   2 _Videopac_Subs     04CC GR
  2 _Videopac_Subs     04CF GR  |   2 _Videopac_Subs     04D2 GR
  2 _Videopac_Subs     04D5 GR  |   2 _Videopac_Subs     04D8 GR
  2 _Videopac_Subs     0136 GR  |   2 _Videopac_Subs     04DB GR
  2 _Videopac_Subs     04DE GR  |   2 _Videopac_Subs     04E1 GR
  2 _Videopac_Subs     04E4 GR  |   2 _Videopac_Subs     04E7 GR
  2 _Videopac_Subs     04EA GR  |   2 _Videopac_Subs     04ED GR
  2 _Videopac_Subs     04F0 GR  |   2 _Videopac_Subs     04F3 GR
  2 _Videopac_Subs     04F6 GR  |   2 _Videopac_Subs     0139 GR
  2 _Videopac_Subs     04F9 GR  |   2 _Videopac_Subs     04FC GR
  2 _Videopac_Subs     04FF GR  |   2 _Videopac_Subs     0502 GR
  2 _Videopac_Subs     0505 GR  |   2 _Videopac_Subs     0508 GR
  2 _Videopac_Subs     050B GR  |   2 _Videopac_Subs     050E GR
  2 _Videopac_Subs     0511 GR  |   2 _Videopac_Subs     0514 GR
  2 _Videopac_Subs     013C GR  |   2 _Videopac_Subs     0517 GR
  2 _Videopac_Subs     051A GR  |   2 _Videopac_Subs     051D GR
  2 _Videopac_Subs     0520 GR  |   2 _Videopac_Subs     0523 GR
  2 _Videopac_Subs     0526 GR  |   2 _Videopac_Subs     0529 GR
  2 _Videopac_Subs     052C GR  |   2 _Videopac_Subs     052F GR
  2 _Videopac_Subs     0532 GR  |   2 _Videopac_Subs     013F GR
  2 _Videopac_Subs     0535 GR  |   2 _Videopac_Subs     0538 GR
  2 _Videopac_Subs     053B GR  |   2 _Videopac_Subs     053E GR
  2 _Videopac_Subs     0541 GR  |   2 _Videopac_Subs     0544 GR
  2 _Videopac_Subs     0547 GR  |   2 _Videopac_Subs     054A GR
  2 _Videopac_Subs     054D GR  |   2 _Videopac_Subs     0550 GR
  2 _Videopac_Subs     0142 GR  |   2 _Videopac_Subs     0553 GR
  2 _Videopac_Subs     0556 GR  |   2 _Videopac_Subs     0559 GR
  2 _Videopac_Subs     055C GR  |   2 _Videopac_Subs     055F GR
  2 _Videopac_Subs     0562 GR  |   2 _Videopac_Subs     0565 GR
  2 _Videopac_Subs     0568 GR  |   2 _Videopac_Subs     056B GR
  2 _Videopac_Subs     056E GR  |   2 _Videopac_Subs     0145 GR
  2 _Videopac_Subs     0571 GR  |   2 _Videopac_Subs     0574 GR
  2 _Videopac_Subs     0577 GR  |   2 _Videopac_Subs     057A GR
  2 _Videopac_Subs     057D GR  |   2 _Videopac_Subs     0580 GR
  2 _Videopac_Subs     0583 GR  |   2 _Videopac_Subs     0586 GR
  2 _Videopac_Subs     0589 GR  |   2 _Videopac_Subs     058C GR
  2 _Videopac_Subs     0148 GR  |   2 _Videopac_Subs     058F GR
  2 _Videopac_Subs     0592 GR  |   2 _Videopac_Subs     0595 GR
  2 _Videopac_Subs     0598 GR  |   2 _Videopac_Subs     059B GR
  2 _Videopac_Subs     059E GR  |   2 _Videopac_Subs     05A1 GR
  2 _Videopac_Subs     05A4 GR  |   2 _Videopac_Subs     05A7 GR
  2 _Videopac_Subs     05AA GR  |   2 _Videopac_Subs     014B GR
  2 _Videopac_Subs     05AD GR  |   2 _Videopac_Subs     05B0 GR
  2 _Videopac_Subs     05B3 GR  |   2 _Videopac_Subs     05B6 GR
  2 _Videopac_Subs     05B9 GR  |   2 _Videopac_Subs     05BC GR
  2 _Videopac_Subs     05BF GR  |   2 _Videopac_Subs     05C2 GR
  2 _Videopac_Subs     05C5 GR  |   2 _Videopac_Subs     05C8 GR
  2 _Videopac_Subs     014E GR  |   2 _Videopac_Subs     05CB GR
  2 _Videopac_Subs     05CE GR  |   2 _Videopac_Subs     05D1 GR
  2 _Videopac_Subs     05D4 GR  |   2 _Videopac_Subs     05D7 GR
  2 _Videopac_Subs     05DA GR  |   2 _Videopac_Subs     05DD GR
  2 _Videopac_Subs     05E0 GR  |   2 _Videopac_Subs     05E3 GR
  2 _Videopac_Subs     05E6 GR  |   2 _Videopac_Subs     0151 GR
  2 _Videopac_Subs     05E9 GR  |   2 _Videopac_Subs     05EC GR
  2 _Videopac_Subs     05EF GR  |   2 _Videopac_Subs     05F2 GR
  2 _Videopac_Subs     05F5 GR  |   2 _Videopac_Subs     05F8 GR
  2 _Videopac_Subs     05FB GR  |   2 _Videopac_Subs     05FE GR
  2 _Videopac_Subs     0601 GR  |   2 _Videopac_Subs     0604 GR
  2 _Videopac_Subs     0154 GR  |   2 _Videopac_Subs     0607 GR
  2 _Videopac_Subs     060A GR  |   2 _Videopac_Subs     060D GR
  2 _Videopac_Subs     0610 GR  |   2 _Videopac_Subs     0613 GR
  2 _Videopac_Subs     0616 GR  |   2 _Videopac_Subs     0619 GR
  2 _Videopac_Subs     061C GR  |   2 _Videopac_Subs     061F GR
  2 _Videopac_Subs     0622 GR  |   2 _Videopac_Subs     0157 GR
  2 _Videopac_Subs     0625 GR  |   2 _Videopac_Subs     0628 GR
  2 _Videopac_Subs     062B GR  |   2 _Videopac_Subs     062E GR
  2 _Videopac_Subs     0631 GR  |   2 _Videopac_Subs     0634 GR
  2 _Videopac_Subs     0637 GR  |   2 _Videopac_Subs     063A GR
  2 _Videopac_Subs     063D GR  |   2 _Videopac_Subs     0640 GR
  2 _Videopac_Subs     015A GR  |   2 _Videopac_Subs     0643 GR
  2 _Videopac_Subs     0646 GR  |   2 _Videopac_Subs     0649 GR
  2 _Videopac_Subs     064C GR  |   2 _Videopac_Subs     064F GR
  2 _Videopac_Subs     0652 GR  |   2 _Videopac_Subs     0655 GR
  2 _Videopac_Subs     015D GR  |   2 _Videopac_Subs     0160 GR
  2 _Videopac_Subs     0163 GR  |   2 _Videopac_Subs     0164 GR
  2 _Videopac_Subs     0F51 GR  |   2 _Videopac_Subs     0F6F GR
  2 _Videopac_Subs     0F8D GR  |   2 _Videopac_Subs     0FA2 GR
  2 _Videopac_Subs     0FC0 GR  |   2 _Videopac_Subs     0FDE GR
  2 _Videopac_Subs     0FE4 GR  |   2 _Videopac_Subs     0FEA GR
  2 _Videopac_Subs     100A GR  |   2 _Videopac_Subs     1010 GR
  2 _Videopac_Subs     0167 GR  |   2 _Videopac_Subs     016A GR
  2 _Videopac_Subs     016D GR  |   2 _Videopac_Subs     0170 GR
  2 _Videopac_Subs     0173 GR  |   2 _Videopac_Subs     0176 GR
  2 _Videopac_Subs     0179 GR  |   2 _Videopac_Subs     017C GR
  2 _Videopac_Subs     017F GR  |   2 _Videopac_Subs     0182 GR
  2 _Videopac_Subs     0185 GR  |   2 _Videopac_Subs     0188 GR
  2 _Videopac_Subs     018B GR  |   2 _Videopac_Subs     018E GR
  2 _Videopac_Subs     0191 GR  |   2 _Videopac_Subs     0194 GR
  2 _Videopac_Subs     0197 GR  |   2 _Videopac_Subs     019A GR
  2 _Videopac_Subs     019D GR  |   2 _Videopac_Subs     01A0 GR
  2 _Videopac_Subs     01A3 GR  |   2 _Videopac_Subs     01A6 GR
  2 _Videopac_Subs     01A9 GR  |   2 _Videopac_Subs     01AC GR
  2 _Videopac_Subs     01AF GR  |   2 _Videopac_Subs     01B2 GR
  2 _Videopac_Subs     01B5 GR  |   2 _Videopac_Subs     01B8 GR
  2 _Videopac_Subs     01BB GR  |   2 _Videopac_Subs     01BE GR
  2 _Videopac_Subs     01C1 GR  |   2 _Videopac_Subs     01C4 GR
  2 _Videopac_Subs     01C7 GR  |   2 _Videopac_Subs     01CA GR
  2 _Videopac_Subs     01CD GR  |   2 _Videopac_Subs     01D0 GR
  2 _Videopac_Subs     01D3 GR  |   2 _Videopac_Subs     01D6 GR
  2 _Videopac_Subs     01D9 GR  |   2 _Videopac_Subs     01DC GR
  2 _Videopac_Subs     01DF GR  |   2 _Videopac_Subs     01E2 GR
  2 _Videopac_Subs     01E5 GR  |   2 _Videopac_Subs     01E8 GR
  2 _Videopac_Subs     01EB GR  |   2 _Videopac_Subs     01EE GR
  2 _Videopac_Subs     01F1 GR  |   2 _Videopac_Subs     01F4 GR
  2 _Videopac_Subs     01F7 GR  |   2 _Videopac_Subs     01FA GR
  2 _Videopac_Subs     01FD GR  |   2 _Videopac_Subs     0200 GR
  2 _Videopac_Subs     0203 GR  |   2 _Videopac_Subs     0206 GR
  2 _Videopac_Subs     0209 GR  |   2 _Videopac_Subs     020C GR
  2 _Videopac_Subs     020F GR  |   2 _Videopac_Subs     0212 GR
  2 _Videopac_Subs     0215 GR  |   2 _Videopac_Subs     0218 GR
  2 _Videopac_Subs     021B GR  |   2 _Videopac_Subs     021E GR
  2 _Videopac_Subs     0221 GR  |   2 _Videopac_Subs     0224 GR
  2 _Videopac_Subs     0227 GR  |   2 _Videopac_Subs     022A GR
  2 _Videopac_Subs     022D GR  |   2 _Videopac_Subs     0230 GR
  2 _Videopac_Subs     0233 GR  |   2 _Videopac_Subs     0236 GR
  2 _Videopac_Subs     0239 GR  |   2 _Videopac_Subs     023C GR
  2 _Videopac_Subs     023F GR  |   2 _Videopac_Subs     0242 GR
  2 _Videopac_Subs     0245 GR  |   2 _Videopac_Subs     0248 GR
  2 _Videopac_Subs     024B GR  |   2 _Videopac_Subs     024E GR
  2 _Videopac_Subs     0251 GR  |   2 _Videopac_Subs     0254 GR
  2 _Videopac_Subs     0257 GR  |   2 _Videopac_Subs     025A GR
  2 _Videopac_Subs     025D GR  |   2 _Videopac_Subs     0260 GR
  2 _Videopac_Subs     0263 GR  |   2 _Videopac_Subs     0266 GR
  2 _Videopac_Subs     0269 GR  |   2 _Videopac_Subs     026C GR
  2 _Videopac_Subs     026F GR  |   2 _Videopac_Subs     00F8 GR
  2 _Videopac_Subs     0272 GR  |   2 _Videopac_Subs     0275 GR
  2 _Videopac_Subs     0278 GR  |   2 _Videopac_Subs     027B GR
  2 _Videopac_Subs     027E GR  |   2 _Videopac_Subs     0281 GR
  2 _Videopac_Subs     0284 GR  |   2 _Videopac_Subs     0287 GR
  2 _Videopac_Subs     028A GR  |   2 _Videopac_Subs     028D GR
  2 _Videopac_Subs     00FB GR  |   2 _Videopac_Subs     0290 GR
  2 _Videopac_Subs     0293 GR  |   2 _Videopac_Subs     0296 GR
  2 _Videopac_Subs     0299 GR  |   2 _Videopac_Subs     029C GR
  2 _Videopac_Subs     029F GR  |   2 _Videopac_Subs     02A2 GR
  2 _Videopac_Subs     02A5 GR  |   2 _Videopac_Subs     02A8 GR
  2 _Videopac_Subs     02AB GR  |   2 _Videopac_Subs     00FE GR
  2 _Videopac_Subs     02AE GR  |   2 _Videopac_Subs     02B1 GR
  2 _Videopac_Subs     02B4 GR  |   2 _Videopac_Subs     02B7 GR
  2 _Videopac_Subs     02BA GR  |   2 _Videopac_Subs     02BD GR
  2 _Videopac_Subs     02C0 GR  |   2 _Videopac_Subs     02C3 GR
  2 _Videopac_Subs     02C6 GR  |   2 _Videopac_Subs     02C9 GR
  2 _Videopac_Subs     0101 GR  |   2 _Videopac_Subs     02CC GR
  2 _Videopac_Subs     02CF GR  |   2 _Videopac_Subs     02D2 GR
  2 _Videopac_Subs     02D5 GR  |   2 _Videopac_Subs     02D8 GR
  2 _Videopac_Subs     02DB GR  |   2 _Videopac_Subs     02DE GR
  2 _Videopac_Subs     02E1 GR  |   2 _Videopac_Subs     02E4 GR
  2 _Videopac_Subs     02E7 GR  |   2 _Videopac_Subs     0104 GR
  2 _Videopac_Subs     02EA GR  |   2 _Videopac_Subs     02ED GR
  2 _Videopac_Subs     02F0 GR  |   2 _Videopac_Subs     02F3 GR
  2 _Videopac_Subs     02F6 GR  |   2 _Videopac_Subs     02F9 GR
  2 _Videopac_Subs     02FC GR  |   2 _Videopac_Subs     02FF GR
  2 _Videopac_Subs     0302 GR  |   2 _Videopac_Subs     0305 GR
  2 _Videopac_Subs     0107 GR  |   2 _Videopac_Subs     0308 GR
  2 _Videopac_Subs     030B GR  |   2 _Videopac_Subs     030E GR
  2 _Videopac_Subs     0311 GR  |   2 _Videopac_Subs     0314 GR
  2 _Videopac_Subs     0317 GR  |   2 _Videopac_Subs     031A GR
  2 _Videopac_Subs     031D GR  |   2 _Videopac_Subs     0320 GR
  2 _Videopac_Subs     0323 GR  |   2 _Videopac_Subs     010A GR
  2 _Videopac_Subs     0326 GR  |   2 _Videopac_Subs     0329 GR
  2 _Videopac_Subs     032C GR  |   2 _Videopac_Subs     032F GR
  2 _Videopac_Subs     0332 GR  |   2 _Videopac_Subs     0335 GR
  2 _Videopac_Subs     0338 GR  |   2 _Videopac_Subs     033B GR
  2 _Videopac_Subs     033E GR  |   2 _Videopac_Subs     0341 GR
  2 _Videopac_Subs     010D GR  |   2 _Videopac_Subs     0344 GR
  2 _Videopac_Subs     0347 GR  |   2 _Videopac_Subs     034A GR
  2 _Videopac_Subs     034D GR  |   2 _Videopac_Subs     0350 GR
  2 _Videopac_Subs     0353 GR  |   2 _Videopac_Subs     0356 GR
  2 _Videopac_Subs     0359 GR  |   2 _Videopac_Subs     035C GR
  2 _Videopac_Subs     035F GR  |   2 _Videopac_Subs     0110 GR
  2 _Videopac_Subs     0362 GR  |   2 _Videopac_Subs     0365 GR
  2 _Videopac_Subs     0368 GR  |   2 _Videopac_Subs     036B GR
  2 _Videopac_Subs     036E GR  |   2 _Videopac_Subs     0371 GR
  2 _Videopac_Subs     0374 GR  |   2 _Videopac_Subs     0377 GR
  2 _Videopac_Subs     037A GR  |   2 _Videopac_Subs     037D GR
  2 _Videopac_Subs     0113 GR  |   2 _Videopac_Subs     0380 GR
  2 _Videopac_Subs     0383 GR  |   2 _Videopac_Subs     0386 GR
  2 _Videopac_Subs     0389 GR  |   2 _Videopac_Subs     038C GR
  2 _Videopac_Subs     038F GR  |   2 _Videopac_Subs     0392 GR
  2 _Videopac_Subs     0395 GR  |   2 _Videopac_Subs     0398 GR
  2 _Videopac_Subs     039B GR  |   2 _Videopac_Subs     0116 GR
  2 _Videopac_Subs     039E GR  |   2 _Videopac_Subs     03A1 GR
  2 _Videopac_Subs     03A4 GR  |   2 _Videopac_Subs     03A7 GR
  2 _Videopac_Subs     03AA GR  |   2 _Videopac_Subs     03AD GR
  2 _Videopac_Subs     03B0 GR  |   2 _Videopac_Subs     03B3 GR
  2 _Videopac_Subs     03B6 GR  |   2 _Videopac_Subs     03B9 GR
  2 _Videopac_Subs     0119 GR  |   2 _Videopac_Subs     03BC GR
  2 _Videopac_Subs     03BF GR  |   2 _Videopac_Subs     03C2 GR
  2 _Videopac_Subs     03C5 GR  |   2 _Videopac_Subs     03C8 GR
  2 _Videopac_Subs     03CB GR  |   2 _Videopac_Subs     03CE GR
  2 _Videopac_Subs     03D1 GR  |   2 _Videopac_Subs     03D4 GR
  2 _Videopac_Subs     03D7 GR  |   2 _Videopac_Subs     011C GR
  2 _Videopac_Subs     03DA GR  |   2 _Videopac_Subs     03DD GR
  2 _Videopac_Subs     03E0 GR  |   2 _Videopac_Subs     03E3 GR
  2 _Videopac_Subs     03E6 GR  |   2 _Videopac_Subs     03E9 GR
  2 _Videopac_Subs     03EC GR  |   2 _Videopac_Subs     03EF GR
  2 _Videopac_Subs     03F2 GR  |   2 _Videopac_Subs     03F5 GR
  2 _Videopac_Subs     011F GR  |   2 _Videopac_Subs     03F8 GR
  2 _Videopac_Subs     03FB GR  |   2 _Videopac_Subs     03FE GR
  2 _Videopac_Subs     0401 GR  |   2 _Videopac_Subs     0404 GR
  2 _Videopac_Subs     0407 GR  |   2 _Videopac_Subs     040A GR
  2 _Videopac_Subs     040D GR  |   2 _Videopac_Subs     0410 GR
  2 _Videopac_Subs     0413 GR  |   2 _Videopac_Subs     0122 GR
  2 _Videopac_Subs     0416 GR  |   2 _Videopac_Subs     0419 GR
  2 _Videopac_Subs     041C GR  |   2 _Videopac_Subs     041F GR
  2 _Videopac_Subs     0422 GR  |   2 _Videopac_Subs     0425 GR
  2 _Videopac_Subs     0428 GR  |   2 _Videopac_Subs     042B GR
  2 _Videopac_Subs     042E GR  |   2 _Videopac_Subs     0431 GR
  2 _Videopac_Subs     0125 GR  |   2 _Videopac_Subs     0434 GR
  2 _Videopac_Subs     0437 GR  |   2 _Videopac_Subs     043A GR
  2 _Videopac_Subs     043D GR  |   2 _Videopac_Subs     0440 GR
  2 _Videopac_Subs     0443 GR  |   2 _Videopac_Subs     0446 GR
  2 _Videopac_Subs     0449 GR  |   2 _Videopac_Subs     044C GR
  2 _Videopac_Subs     044F GR  |   2 _Videopac_Subs     0128 GR
  2 _Videopac_Subs     0452 GR  |   2 _Videopac_Subs     0455 GR
  2 _Videopac_Subs     0458 GR  |   2 _Videopac_Subs     045B GR
  2 _Videopac_Subs     045E GR  |   2 _Videopac_Subs     0461 GR
  2 _Videopac_Subs     0464 GR  |   2 _Videopac_Subs     0467 GR
  2 _Videopac_Subs     046A GR  |   2 _Videopac_Subs     046D GR
  2 _Videopac_Subs     012B GR  |   2 _Videopac_Subs     0470 GR
  2 _Videopac_Subs     0473 GR  |   2 _Videopac_Subs     0476 GR
  2 _Videopac_Subs     0479 GR  |   2 _Videopac_Subs     047C GR
  2 _Videopac_Subs     047F GR  |   2 _Videopac_Subs     0482 GR
  2 _Videopac_Subs     0485 GR  |   2 _Videopac_Subs     0488 GR
  2 _Videopac_Subs     048B GR  |   2 _Videopac_Subs     012E GR
  2 _Videopac_Subs     048E GR  |   2 _Videopac_Subs     0491 GR
  2 _Videopac_Subs     0494 GR  |   2 _Videopac_Subs     0497 GR
  2 _Videopac_Subs     049A GR  |   2 _Videopac_Subs     049D GR
  2 _Videopac_Subs     04A0 GR  |   2 _Videopac_Subs     04A3 GR
  2 _Videopac_Subs     04A6 GR  |   2 _Videopac_Subs     04A9 GR
  2 _Videopac_Subs     0131 GR  |   2 _Videopac_Subs     04AC GR
  2 _Videopac_Subs     04AF GR  |   2 _Videopac_Subs     04B2 GR
  2 _Videopac_Subs     04B5 GR  |   2 _Videopac_Subs     04B8 GR
  2 _Videopac_Subs     04BB GR  |   2 _Videopac_Subs     04BE GR
  2 _Videopac_Subs     04C1 GR  |   2 _Videopac_Subs     04C4 GR
  2 _Videopac_Subs     04C7 GR  |   2 _Videopac_Subs     0134 GR
  2 _Videopac_Subs     04CA GR  |   2 _Videopac_Subs     04CD GR
  2 _Videopac_Subs     04D0 GR  |   2 _Videopac_Subs     04D3 GR
  2 _Videopac_Subs     04D6 GR  |   2 _Videopac_Subs     04D9 GR
  2 _Videopac_Subs     04DC GR  |   2 _Videopac_Subs     04DF GR
  2 _Videopac_Subs     04E2 GR  |   2 _Videopac_Subs     04E5 GR
  2 _Videopac_Subs     0137 GR  |   2 _Videopac_Subs     04E8 GR
  2 _Videopac_Subs     04EB GR  |   2 _Videopac_Subs     04EE GR
  2 _Videopac_Subs     04F1 GR  |   2 _Videopac_Subs     04F4 GR
  2 _Videopac_Subs     04F7 GR  |   2 _Videopac_Subs     04FA GR
  2 _Videopac_Subs     04FD GR  |   2 _Videopac_Subs     0500 GR
  2 _Videopac_Subs     0503 GR  |   2 _Videopac_Subs     013A GR
  2 _Videopac_Subs     0506 GR  |   2 _Videopac_Subs     0509 GR
  2 _Videopac_Subs     050C GR  |   2 _Videopac_Subs     050F GR
  2 _Videopac_Subs     0512 GR  |   2 _Videopac_Subs     0515 GR
  2 _Videopac_Subs     0518 GR  |   2 _Videopac_Subs     051B GR
  2 _Videopac_Subs     051E GR  |   2 _Videopac_Subs     0521 GR
  2 _Videopac_Subs     013D GR  |   2 _Videopac_Subs     0524 GR
  2 _Videopac_Subs     0527 GR  |   2 _Videopac_Subs     052A GR
  2 _Videopac_Subs     052D GR  |   2 _Videopac_Subs     0530 GR
  2 _Videopac_Subs     0533 GR  |   2 _Videopac_Subs     0536 GR
  2 _Videopac_Subs     0539 GR  |   2 _Videopac_Subs     053C GR
  2 _Videopac_Subs     053F GR  |   2 _Videopac_Subs     0140 GR
  2 _Videopac_Subs     0542 GR  |   2 _Videopac_Subs     0545 GR
  2 _Videopac_Subs     0548 GR  |   2 _Videopac_Subs     054B GR
  2 _Videopac_Subs     054E GR  |   2 _Videopac_Subs     0551 GR
  2 _Videopac_Subs     0554 GR  |   2 _Videopac_Subs     0557 GR
  2 _Videopac_Subs     055A GR  |   2 _Videopac_Subs     055D GR
  2 _Videopac_Subs     0143 GR  |   2 _Videopac_Subs     0560 GR
  2 _Videopac_Subs     0563 GR  |   2 _Videopac_Subs     0566 GR
  2 _Videopac_Subs     0569 GR  |   2 _Videopac_Subs     056C GR
  2 _Videopac_Subs     056F GR  |   2 _Videopac_Subs     0572 GR
  2 _Videopac_Subs     0575 GR  |   2 _Videopac_Subs     0578 GR
  2 _Videopac_Subs     057B GR  |   2 _Videopac_Subs     0146 GR
  2 _Videopac_Subs     057E GR  |   2 _Videopac_Subs     0581 GR
  2 _Videopac_Subs     0584 GR  |   2 _Videopac_Subs     0587 GR
  2 _Videopac_Subs     058A GR  |   2 _Videopac_Subs     058D GR
  2 _Videopac_Subs     0590 GR  |   2 _Videopac_Subs     0593 GR
  2 _Videopac_Subs     0596 GR  |   2 _Videopac_Subs     0599 GR
  2 _Videopac_Subs     0149 GR  |   2 _Videopac_Subs     059C GR
  2 _Videopac_Subs     059F GR  |   2 _Videopac_Subs     05A2 GR
  2 _Videopac_Subs     05A5 GR  |   2 _Videopac_Subs     05A8 GR
  2 _Videopac_Subs     05AB GR  |   2 _Videopac_Subs     05AE GR
  2 _Videopac_Subs     05B1 GR  |   2 _Videopac_Subs     05B4 GR
  2 _Videopac_Subs     05B7 GR  |   2 _Videopac_Subs     014C GR
  2 _Videopac_Subs     05BA GR  |   2 _Videopac_Subs     05BD GR
  2 _Videopac_Subs     05C0 GR  |   2 _Videopac_Subs     05C3 GR
  2 _Videopac_Subs     05C6 GR  |   2 _Videopac_Subs     05C9 GR
  2 _Videopac_Subs     05CC GR  |   2 _Videopac_Subs     05CF GR
  2 _Videopac_Subs     05D2 GR  |   2 _Videopac_Subs     05D5 GR
  2 _Videopac_Subs     014F GR  |   2 _Videopac_Subs     05D8 GR
  2 _Videopac_Subs     05DB GR  |   2 _Videopac_Subs     05DE GR
  2 _Videopac_Subs     05E1 GR  |   2 _Videopac_Subs     05E4 GR
  2 _Videopac_Subs     05E7 GR  |   2 _Videopac_Subs     05EA GR
  2 _Videopac_Subs     05ED GR  |   2 _Videopac_Subs     05F0 GR
  2 _Videopac_Subs     05F3 GR  |   2 _Videopac_Subs     0152 GR
  2 _Videopac_Subs     05F6 GR  |   2 _Videopac_Subs     05F9 GR
  2 _Videopac_Subs     05FC GR  |   2 _Videopac_Subs     05FF GR
  2 _Videopac_Subs     0602 GR  |   2 _Videopac_Subs     0605 GR
  2 _Videopac_Subs     0608 GR  |   2 _Videopac_Subs     060B GR
  2 _Videopac_Subs     060E GR  |   2 _Videopac_Subs     0611 GR
  2 _Videopac_Subs     0155 GR  |   2 _Videopac_Subs     0614 GR
  2 _Videopac_Subs     0617 GR  |   2 _Videopac_Subs     061A GR
  2 _Videopac_Subs     061D GR  |   2 _Videopac_Subs     0620 GR
  2 _Videopac_Subs     0623 GR  |   2 _Videopac_Subs     0626 GR
  2 _Videopac_Subs     0629 GR  |   2 _Videopac_Subs     062C GR
  2 _Videopac_Subs     062F GR  |   2 _Videopac_Subs     0158 GR
  2 _Videopac_Subs     0632 GR  |   2 _Videopac_Subs     0635 GR
  2 _Videopac_Subs     0638 GR  |   2 _Videopac_Subs     063B GR
  2 _Videopac_Subs     063E GR  |   2 _Videopac_Subs     0641 GR
  2 _Videopac_Subs     0644 GR  |   2 _Videopac_Subs     0647 GR
  2 _Videopac_Subs     064A GR  |   2 _Videopac_Subs     064D GR
  2 _Videopac_Subs     015B GR  |   2 _Videopac_Subs     0650 GR
  2 _Videopac_Subs     0653 GR  |   2 _Videopac_Subs     0656 GR
  2 _Videopac_Subs     065B GR  |   2 _Videopac_Subs     0697 GR
  2 _Videopac_Subs     06D3 GR  |   2 _Videopac_Subs     070F GR
  2 _Videopac_Subs     074B GR  |   2 _Videopac_Subs     0787 GR
  2 _Videopac_Subs     07C3 GR  |   2 _Videopac_Subs     07FF GR
  2 _Videopac_Subs     083B GR  |   2 _Videopac_Subs     0877 GR
  2 _Videopac_Subs     08B3 GR  |   2 _Videopac_Subs     08E1 GR
  2 _Videopac_Subs     090F GR  |   2 _Videopac_Subs     093D GR
  2 _Videopac_Subs     015E GR  |   2 _Videopac_Subs     096B GR
  2 _Videopac_Subs     09A7 GR  |   2 _Videopac_Subs     09D5 GR
  2 _Videopac_Subs     0A11 GR  |   2 _Videopac_Subs     0A4D GR
  2 _Videopac_Subs     0A89 GR  |   2 _Videopac_Subs     0AC5 GR
  2 _Videopac_Subs     0B01 GR  |   2 _Videopac_Subs     0B3D GR
  2 _Videopac_Subs     0B79 GR  |   2 _Videopac_Subs     0BB5 GR
  2 _Videopac_Subs     0BF1 GR  |   2 _Videopac_Subs     0C2D GR
  2 _Videopac_Subs     0C69 GR  |   2 _Videopac_Subs     0C97 GR
  2 _Videopac_Subs     0CC5 GR  |   2 _Videopac_Subs     0CF3 GR
  2 _Videopac_Subs     0D21 GR  |   2 _Videopac_Subs     0D4F GR
  2 _Videopac_Subs     0D53 GR  |   2 _Videopac_Subs     0161 GR
  2 _Videopac_Subs     0D59 GR  |   2 _Videopac_Subs     0D5F GR
  2 _Videopac_Subs     0D65 GR  |   2 _Videopac_Subs     0D8B GR
  2 _Videopac_Subs     0D99 GR  |   2 _Videopac_Subs     0D9F GR
  2 _Videopac_Subs     0DA5 GR  |   2 _Videopac_Subs     0DAB GR
  2 _Videopac_Subs     0DCD GR  |   2 _Videopac_Subs     0DED GR
  2 _Videopac_Subs     0E0F GR  |   2 _Videopac_Subs     0E2C GR
  2 _Videopac_Subs     0E49 GR  |   2 _Videopac_Subs     0E66 GR
  2 _Videopac_Subs     0E89 GR  |   2 _Videopac_Subs     0EA3 GR
  2 _Videopac_Subs     0EC5 GR  |   2 _Videopac_Subs     0EE0 GR
  2 _Videopac_Subs     0EFE GR  |   2 _Videopac_Subs     0F13 GR
  2 _Videopac_Subs     0073 GR  |   2 _Videopac_Subs     007B GR
  2 _Videopac_Subs     0083 GR  |   2 _Videopac_Subs     008B GR
  2 _Videopac_Subs     0093 GR  |   2 _Videopac_Subs     009B GR
  2 _Videopac_Subs     00A3 GR  |   2 _Videopac_Subs     00AB GR
  2 _Videopac_Subs     00B3 GR  |   2 _Videopac_Subs     00BB GR
  2 _Videopac_Subs     0033 GR  |   2 _Videopac_Subs     00C3 GR
  2 _Videopac_Subs     00CB GR  |   2 _Videopac_Subs     00D3 GR
  2 _Videopac_Subs     00DB GR  |   2 _Videopac_Subs     00E3 GR
  2 _Videopac_Subs     00EB GR  |   2 _Videopac_Subs     00F3 GR
  2 _Videopac_Subs     003B GR  |   2 _Videopac_Subs     0043 GR
  2 _Videopac_Subs     004B GR  |   2 _Videopac_Subs     0053 GR
  2 _Videopac_Subs     005B GR  |   2 _Videopac_Subs     0063 GR
  2 _Videopac_Subs     006B GR  |   2 _Videopac_Subs     0D51 GR
  2 _Videopac_Subs     065D GR  |   2 _Videopac_Subs     0B03 GR
  2 _Videopac_Subs     0B3A GR  |   2 _Videopac_Subs     0B3F GR
  2 _Videopac_Subs     0B76 GR  |   2 _Videopac_Subs     0B7B GR
  2 _Videopac_Subs     0BB2 GR  |   2 _Videopac_Subs     0BB7 GR
  2 _Videopac_Subs     0BEE GR  |   2 _Videopac_Subs     0BF3 GR
  2 _Videopac_Subs     0C2A GR  |   2 _Videopac_Subs     0C2F GR
  2 _Videopac_Subs     0C66 GR  |   2 _Videopac_Subs     0789 GR
  2 _Videopac_Subs     0C6B GR  |   2 _Videopac_Subs     0C99 GR
  2 _Videopac_Subs     0CC7 GR  |   2 _Videopac_Subs     0CF5 GR
  2 _Videopac_Subs     0D23 GR  |   2 _Videopac_Subs     0D67 GR
  2 _Videopac_Subs     07C0 GR  |   2 _Videopac_Subs     07C5 GR
  2 _Videopac_Subs     07FC GR  |   2 _Videopac_Subs     0801 GR
  2 _Videopac_Subs     0838 GR  |   2 _Videopac_Subs     0D8D GR
  2 _Videopac_Subs     0D96 GR  |   2 _Videopac_Subs     083D GR
  2 _Videopac_Subs     0DAD GR  |   2 _Videopac_Subs     0DCB GR
  2 _Videopac_Subs     0874 GR  |   2 _Videopac_Subs     0DCF GR
  2 _Videopac_Subs     0DEB GR  |   2 _Videopac_Subs     0879 GR
  2 _Videopac_Subs     08B0 GR  |   2 _Videopac_Subs     0D9B GR
  2 _Videopac_Subs     0694 GR  |   2 _Videopac_Subs     0699 GR
  2 _Videopac_Subs     0658 GR  |   2 _Videopac_Subs     0DEF GR
  2 _Videopac_Subs     0659 GR  |   2 _Videopac_Subs     08B5 GR
  2 _Videopac_Subs     08E3 GR  |   2 _Videopac_Subs     0911 GR
  2 _Videopac_Subs     0E11 GR  |   2 _Videopac_Subs     0E2E GR
  2 _Videopac_Subs     093F GR  |   2 _Videopac_Subs     0D61 GR
  2 _Videopac_Subs     0E4B GR  |   2 _Videopac_Subs     0D55 GR
  2 _Videopac_Subs     06D0 GR  |   2 _Videopac_Subs     06D5 GR
  2 _Videopac_Subs     0E68 GR  |   2 _Videopac_Subs     0E8B GR
  2 _Videopac_Subs     0FEC GR  |   2 _Videopac_Subs     0EA5 GR
  2 _Videopac_Subs     0EC1 GR  |   2 _Videopac_Subs     0EC7 GR
  2 _Videopac_Subs     0EDE GR  |   2 _Videopac_Subs     0EE2 GR
  2 _Videopac_Subs     0FFE GR  |   2 _Videopac_Subs     0F00 GR
  2 _Videopac_Subs     0F15 GR  |   2 _Videopac_Subs     0F39 GR
  2 _Videopac_Subs     0F53 GR  |   2 _Videopac_Subs     0DA1 GR
  2 _Videopac_Subs     070C GR  |   2 _Videopac_Subs     0F71 GR
  2 _Videopac_Subs     0F8F GR  |   2 _Videopac_Subs     0FA4 GR
  2 _Videopac_Subs     0FC2 GR  |   2 _Videopac_Subs     0FE0 GR
  2 _Videopac_Subs     0711 GR  |   2 _Videopac_Subs     0D5B GR
  2 _Videopac_Subs     0748 GR  |   2 _Videopac_Subs     0DA7 GR
  2 _Videopac_Subs     074D GR  |   2 _Videopac_Subs     0FE6 GR
  2 _Videopac_Subs     0784 GR  |   2 _Videopac_Subs     100C GR
  2 _Videopac_Subs     096D GR  |   2 _Videopac_Subs     09A4 GR
  2 _Videopac_Subs     09A9 GR  |   2 _Videopac_Subs     09D7 GR
  2 _Videopac_Subs     0A0E GR  |   2 _Videopac_Subs     0A13 GR
  2 _Videopac_Subs     0A4A GR  |   2 _Videopac_Subs     0A4F GR
  2 _Videopac_Subs     0A86 GR  |   2 _Videopac_Subs     0A8B GR
  2 _Videopac_Subs     0AC2 GR  |   2 _Videopac_Subs     0AC7 GR
  2 _Videopac_Subs     0AFE GR  |     _frequencyRegi     **** GX
    _initFlag1         **** GX  |     _initFlag2         **** GX
    _initFlag3         **** GX  |   2 _initSong          1018 GR
  2 _initThroneSon     1012 GR  |   2 _playSong          0000 GR
    _r7                **** GX  |     _volumeRegiste     **** GX
  2 channelError       1045 GR  |   2 copySoundRegs      0003 GR
  2 do_ym_sound2       0003 GR  |   2 doneSound_2        002C GR
  2 doymsound100       0003 GR  |   2 end_ofSong         104B R
  2 errorRTS           1044 GR  |   2 in_read_the_tr     1096 GR
  2 inc_reg_dsy        0029 GR  |   2 isNoise            12A6 GR
  2 isNoise2           1306 GR  |   2 isNoise3           13BE GR
  2 isNoise4           13CF GR  |   2 isNoise5           13DE GR
    music1         =   FD0D     |     music2         =   FD1D 
    music3         =   FD81     |     music4         =   FDD3 
    music5         =   FE38     |     music6         =   FE76 
    music7         =   FEC6     |     music8         =   FEF8 
    music9         =   FF26     |     musica         =   FF44 
    musicb         =   FF62     |     musicc         =   FF7A 
    musicd         =   FF8F     |   2 newNoise2          1314 GR
  2 next_reg_dsy       000B GR  |   2 read_the_track     1091 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 13E2   flags  100
   3 .bss             size    0   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

