                              1 ; NOTE!!!
                              2 ; IF USED IN 'C' YOU MIGHT NEED TO SAVE SOME REGS WHEN CALLING
                              3 ; YOUR FUNCTIONS, LIKE REG 'U' and 'Y'!
                              4 ; ALSO CHECK YOUR DP SETTINGS, BELOW DP = D0 is assumed!
                              5  .module vlists.asx.s
                              6  .area .text
                     0001     7 INCLUDE_I           =      1 
                     C800     8 Vec_Snd_Shadow      =      0xC800                        ;Shadow of sound chip registers (15 bytes) 
                     C80F     9 Vec_Btn_State       =      0xC80F                        ;Current state of all joystick buttons 
                     C810    10 Vec_Prev_Btns       =      0xC810                        ;Previous state of all joystick buttons 
                     C811    11 Vec_Buttons         =      0xC811                        ;Current toggle state of all buttons 
                     C812    12 Vec_Button_1_1      =      0xC812                        ;Current toggle state of stick 1 button 1 
                     C813    13 Vec_Button_1_2      =      0xC813                        ;Current toggle state of stick 1 button 2 
                     C814    14 Vec_Button_1_3      =      0xC814                        ;Current toggle state of stick 1 button 3 
                     C815    15 Vec_Button_1_4      =      0xC815                        ;Current toggle state of stick 1 button 4 
                     C816    16 Vec_Button_2_1      =      0xC816                        ;Current toggle state of stick 2 button 1 
                     C817    17 Vec_Button_2_2      =      0xC817                        ;Current toggle state of stick 2 button 2 
                     C818    18 Vec_Button_2_3      =      0xC818                        ;Current toggle state of stick 2 button 3 
                     C819    19 Vec_Button_2_4      =      0xC819                        ;Current toggle state of stick 2 button 4 
                     C81A    20 Vec_Joy_Resltn      =      0xC81A                        ;Joystick A/D resolution (0x80=min 0x00=max) 
                     C81B    21 Vec_Joy_1_X         =      0xC81B                        ;Joystick 1 left/right 
                     C81C    22 Vec_Joy_1_Y         =      0xC81C                        ;Joystick 1 up/down 
                     C81D    23 Vec_Joy_2_X         =      0xC81D                        ;Joystick 2 left/right 
                     C81E    24 Vec_Joy_2_Y         =      0xC81E                        ;Joystick 2 up/down 
                     C81F    25 Vec_Joy_Mux         =      0xC81F                        ;Joystick enable/mux flags (4 bytes) 
                     C81F    26 Vec_Joy_Mux_1_X     =      0xC81F                        ;Joystick 1 X enable/mux flag (=1) 
                     C820    27 Vec_Joy_Mux_1_Y     =      0xC820                        ;Joystick 1 Y enable/mux flag (=3) 
                     C821    28 Vec_Joy_Mux_2_X     =      0xC821                        ;Joystick 2 X enable/mux flag (=5) 
                     C822    29 Vec_Joy_Mux_2_Y     =      0xC822                        ;Joystick 2 Y enable/mux flag (=7) 
                     C823    30 Vec_Misc_Count      =      0xC823                        ;Misc counter/flag byte, zero when not in use 
                     C824    31 Vec_0Ref_Enable     =      0xC824                        ;Check0Ref enable flag 
                     C825    32 Vec_Loop_Count      =      0xC825                        ;Loop counter word (incremented in Wait_Recal) 
                     C827    33 Vec_Brightness      =      0xC827                        ;Default brightness 
                     C828    34 Vec_Dot_Dwell       =      0xC828                        ;Dot dwell time? 
                     C829    35 Vec_Pattern         =      0xC829                        ;Dot pattern (bits) 
                     C82A    36 Vec_Text_HW         =      0xC82A                        ;Default text height and width 
                     C82A    37 Vec_Text_Height     =      0xC82A                        ;Default text height 
                     C82B    38 Vec_Text_Width      =      0xC82B                        ;Default text width 
                     C82C    39 Vec_Str_Ptr         =      0xC82C                        ;Temporary string pointer for Print_Str 
                     C82E    40 Vec_Counters        =      0xC82E                        ;Six bytes of counters 
                     C82E    41 Vec_Counter_1       =      0xC82E                        ;First counter byte 
                     C82F    42 Vec_Counter_2       =      0xC82F                        ;Second counter byte 
                     C830    43 Vec_Counter_3       =      0xC830                        ;Third counter byte 
                     C831    44 Vec_Counter_4       =      0xC831                        ;Fourth counter byte 
                     C832    45 Vec_Counter_5       =      0xC832                        ;Fifth counter byte 
                     C833    46 Vec_Counter_6       =      0xC833                        ;Sixth counter byte 
                     C834    47 Vec_RiseRun_Tmp     =      0xC834                        ;Temp storage word for rise/run 
                     C836    48 Vec_Angle           =      0xC836                        ;Angle for rise/run and rotation calculations 
                     C837    49 Vec_Run_Index       =      0xC837                        ;Index pair for run 
                             50 ;                       0xC839   ;Pointer to copyright string during startup
                     C839    51 Vec_Rise_Index      =      0xC839                        ;Index pair for rise 
                             52 ;                       0xC83B   ;High score cold-start flag (=0 if valid)
                     C83B    53 Vec_RiseRun_Len     =      0xC83B                        ;length for rise/run 
                             54 ;                       0xC83C   ;temp byte
                     C83D    55 Vec_Rfrsh           =      0xC83D                        ;Refresh time (divided by 1.5MHz) 
                     C83D    56 Vec_Rfrsh_lo        =      0xC83D                        ;Refresh time low byte 
                     C83E    57 Vec_Rfrsh_hi        =      0xC83E                        ;Refresh time high byte 
                     C83F    58 Vec_Music_Work      =      0xC83F                        ;Music work buffer (14 bytes, backwards?) 
                     C842    59 Vec_Music_Wk_A      =      0xC842                        ; register 10 
                             60 ;                       0xC843   ;        register 9
                             61 ;                       0xC844   ;        register 8
                     C845    62 Vec_Music_Wk_7      =      0xC845                        ; register 7 
                     C846    63 Vec_Music_Wk_6      =      0xC846                        ; register 6 
                     C847    64 Vec_Music_Wk_5      =      0xC847                        ; register 5 
                             65 ;                       0xC848   ;        register 4
                             66 ;                       0xC849   ;        register 3
                             67 ;                       0xC84A   ;        register 2
                     C84B    68 Vec_Music_Wk_1      =      0xC84B                        ; register 1 
                             69 ;                       0xC84C   ;        register 0
                     C84D    70 Vec_Freq_Table      =      0xC84D                        ;Pointer to note-to-frequency table (normally 0xFC8D) 
                     C84F    71 Vec_Max_Players     =      0xC84F                        ;Maximum number of players for Select_Game 
                     C850    72 Vec_Max_Games       =      0xC850                        ;Maximum number of games for Select_Game 
                     C84F    73 Vec_ADSR_Table      =      0xC84F                        ;Storage for first music header word (ADSR table) 
                     C851    74 Vec_Twang_Table     =      0xC851                        ;Storage for second music header word ('twang' table) 
                     C853    75 Vec_Music_Ptr       =      0xC853                        ;Music data pointer 
                     C853    76 Vec_Expl_ChanA      =      0xC853                        ;Used by Explosion_Snd - bit for first channel used? 
                     C854    77 Vec_Expl_Chans      =      0xC854                        ;Used by Explosion_Snd - bits for all channels used? 
                     C855    78 Vec_Music_Chan      =      0xC855                        ;Current sound channel number for Init_Music 
                     C856    79 Vec_Music_Flag      =      0xC856                        ;Music active flag (0x00=off 0x01=start 0x80=on) 
                     C857    80 Vec_Duration        =      0xC857                        ;Duration counter for Init_Music 
                     C858    81 Vec_Music_Twang     =      0xC858                        ;3 word 'twang' table used by Init_Music 
                     C858    82 Vec_Expl_1          =      0xC858                        ;Four bytes copied from Explosion_Snd's U-reg parameters 
                     C859    83 Vec_Expl_2          =      0xC859                        ; 
                     C85A    84 Vec_Expl_3          =      0xC85A                        ; 
                     C85B    85 Vec_Expl_4          =      0xC85B                        ; 
                     C85C    86 Vec_Expl_Chan       =      0xC85C                        ;Used by Explosion_Snd - channel number in use? 
                     C85D    87 Vec_Expl_ChanB      =      0xC85D                        ;Used by Explosion_Snd - bit for second channel used? 
                     C85E    88 Vec_ADSR_Timers     =      0xC85E                        ;ADSR timers for each sound channel (3 bytes) 
                     C861    89 Vec_Music_Freq      =      0xC861                        ;Storage for base frequency of each channel (3 words) 
                             90 ;                       0xC85E   ;Scratch 'score' storage for Display_Option (7 bytes)
                     C867    91 Vec_Expl_Flag       =      0xC867                        ;Explosion_Snd initialization flag? 
                             92 ;               0xC868...0xC876   ;Unused?
                     C877    93 Vec_Expl_Timer      =      0xC877                        ;Used by Explosion_Snd 
                             94 ;                       0xC878   ;Unused?
                     C879    95 Vec_Num_Players     =      0xC879                        ;Number of players selected in Select_Game 
                     C87A    96 Vec_Num_Game        =      0xC87A                        ;Game number selected in Select_Game 
                     C87B    97 Vec_Seed_Ptr        =      0xC87B                        ;Pointer to 3-byte random number seed (=0xC87D) 
                     C87D    98 Vec_Random_Seed     =      0xC87D                        ;Default 3-byte random number seed 
                             99                                 ;
                            100 ;    0xC880 - 0xCBEA is user RAM  ;
                            101                                 ;
                     CBEA   102 Vec_Default_Stk     =      0xCBEA                        ;Default top-of-stack 
                     CBEB   103 Vec_High_Score      =      0xCBEB                        ;High score storage (7 bytes) 
                     CBF2   104 Vec_SWI3_Vector     =      0xCBF2                        ;SWI2/SWI3 interrupt vector (3 bytes) 
                     CBF2   105 Vec_SWI2_Vector     =      0xCBF2                        ;SWI2/SWI3 interrupt vector (3 bytes) 
                     CBF5   106 Vec_FIRQ_Vector     =      0xCBF5                        ;FIRQ interrupt vector (3 bytes) 
                     CBF8   107 Vec_IRQ_Vector      =      0xCBF8                        ;IRQ interrupt vector (3 bytes) 
                     CBFB   108 Vec_SWI_Vector      =      0xCBFB                        ;SWI/NMI interrupt vector (3 bytes) 
                     CBFB   109 Vec_NMI_Vector      =      0xCBFB                        ;SWI/NMI interrupt vector (3 bytes) 
                     CBFE   110 Vec_Cold_Flag       =      0xCBFE                        ;Cold start flag (warm start if = 0x7321) 
                            111                                 ;
                     D000   112 VIA_port_b          =      0xD000                        ;VIA port B data I/O register 
                            113 ;       0 sample/hold (0=enable  mux 1=disable mux)
                            114 ;       1 mux sel 0
                            115 ;       2 mux sel 1
                            116 ;       3 sound BC1
                            117 ;       4 sound BDIR
                            118 ;       5 comparator input
                            119 ;       6 external device (slot pin 35) initialized to input
                            120 ;       7 /RAMP
                     D001   121 VIA_port_a          =      0xD001                        ;VIA port A data I/O register (handshaking) 
                     D002   122 VIA_DDR_b           =      0xD002                        ;VIA port B data direction register (0=input 1=output) 
                     D003   123 VIA_DDR_a           =      0xD003                        ;VIA port A data direction register (0=input 1=output) 
                     D004   124 VIA_t1_cnt_lo       =      0xD004                        ;VIA timer 1 count register lo (scale factor) 
                     D005   125 VIA_t1_cnt_hi       =      0xD005                        ;VIA timer 1 count register hi 
                     D006   126 VIA_t1_lch_lo       =      0xD006                        ;VIA timer 1 latch register lo 
                     D007   127 VIA_t1_lch_hi       =      0xD007                        ;VIA timer 1 latch register hi 
                     D008   128 VIA_t2_lo           =      0xD008                        ;VIA timer 2 count/latch register lo (refresh) 
                     D009   129 VIA_t2_hi           =      0xD009                        ;VIA timer 2 count/latch register hi 
                     D00A   130 VIA_shift_reg       =      0xD00A                        ;VIA shift register 
                     D00B   131 VIA_aux_cntl        =      0xD00B                        ;VIA auxiliary control register 
                            132 ;       0 PA latch enable
                            133 ;       1 PB latch enable
                            134 ;       2 \                     110=output to CB2 under control of phase 2 clock
                            135 ;       3  > shift register control     (110 is the only mode used by the Vectrex ROM)
                            136 ;       4 /
                            137 ;       5 0=t2 one shot                 1=t2 free running
                            138 ;       6 0=t1 one shot                 1=t1 free running
                            139 ;       7 0=t1 disable PB7 output       1=t1 enable PB7 output
                     D00C   140 VIA_cntl            =      0xD00C                        ;VIA control register 
                            141 ;       0 CA1 control     CA1 -> SW7    0=IRQ on low 1=IRQ on high
                            142 ;       1 \
                            143 ;       2  > CA2 control  CA2 -> /ZERO  110=low 111=high
                            144 ;       3 /
                            145 ;       4 CB1 control     CB1 -> NC     0=IRQ on low 1=IRQ on high
                            146 ;       5 \
                            147 ;       6  > CB2 control  CB2 -> /BLANK 110=low 111=high
                            148 ;       7 /
                     D00D   149 VIA_int_flags       =      0xD00D                        ;VIA interrupt flags register 
                            150 ;               bit                             cleared by
                            151 ;       0 CA2 interrupt flag            reading or writing port A I/O
                            152 ;       1 CA1 interrupt flag            reading or writing port A I/O
                            153 ;       2 shift register interrupt flag reading or writing shift register
                            154 ;       3 CB2 interrupt flag            reading or writing port B I/O
                            155 ;       4 CB1 interrupt flag            reading or writing port A I/O
                            156 ;       5 timer 2 interrupt flag        read t2 low or write t2 high
                            157 ;       6 timer 1 interrupt flag        read t1 count low or write t1 high
                            158 ;       7 IRQ status flag               write logic 0 to IER or IFR bit
                     D00E   159 VIA_int_enable      =      0xD00E                        ;VIA interrupt enable register 
                            160 ;       0 CA2 interrupt enable
                            161 ;       1 CA1 interrupt enable
                            162 ;       2 shift register interrupt enable
                            163 ;       3 CB2 interrupt enable
                            164 ;       4 CB1 interrupt enable
                            165 ;       5 timer 2 interrupt enable
                            166 ;       6 timer 1 interrupt enable
                            167 ;       7 IER set/clear control
                     D00F   168 VIA_port_a_nohs     =      0xD00F                        ;VIA port A data I/O register (no handshaking) 
                     F000   169 Cold_Start          =      0xF000                        ; 
                     F06C   170 Warm_Start          =      0xF06C                        ; 
                     F14C   171 Init_VIA            =      0xF14C                        ; 
                     F164   172 Init_OS_RAM         =      0xF164                        ; 
                     F18B   173 Init_OS             =      0xF18B                        ; 
                     F192   174 Wait_Recal          =      0xF192                        ; 
                     F1A2   175 Set_Refresh         =      0xF1A2                        ; 
                     F1AA   176 DP_to_D0            =      0xF1AA                        ; 
                     F1AF   177 DP_to_C8            =      0xF1AF                        ; 
                     F1B4   178 Read_Btns_Mask      =      0xF1B4                        ; 
                     F1BA   179 Read_Btns           =      0xF1BA                        ; 
                     F1F5   180 Joy_Analog          =      0xF1F5                        ; 
                     F1F8   181 Joy_Digital         =      0xF1F8                        ; 
                     F256   182 Sound_Byte          =      0xF256                        ; 
                     F259   183 Sound_Byte_x        =      0xF259                        ; 
                     F25B   184 Sound_Byte_raw      =      0xF25B                        ; 
                     F272   185 Clear_Sound         =      0xF272                        ; 
                     F27D   186 Sound_Bytes         =      0xF27D                        ; 
                     F284   187 Sound_Bytes_x       =      0xF284                        ; 
                     F289   188 Do_Sound            =      0xF289                        ; 
                     F28C   189 Do_Sound_x          =      0xF28C                        ; 
                     F29D   190 Intensity_1F        =      0xF29D                        ; 
                     F2A1   191 Intensity_3F        =      0xF2A1                        ; 
                     F2A5   192 Intensity_5F        =      0xF2A5                        ; 
                     F2A9   193 Intensity_7F        =      0xF2A9                        ; 
                     F2AB   194 Intensity_a         =      0xF2AB                        ; 
                     F2BE   195 Dot_ix_b            =      0xF2BE                        ; 
                     F2C1   196 Dot_ix              =      0xF2C1                        ; 
                     F2C3   197 Dot_d               =      0xF2C3                        ; 
                     F2C5   198 Dot_here            =      0xF2C5                        ; 
                     F2D5   199 Dot_List            =      0xF2D5                        ; 
                     F2DE   200 Dot_List_Reset      =      0xF2DE                        ; 
                     F2E6   201 Recalibrate         =      0xF2E6                        ; 
                     F2F2   202 Moveto_x_7F         =      0xF2F2                        ; 
                     F2FC   203 Moveto_d_7F         =      0xF2FC                        ; 
                     F308   204 Moveto_ix_FF        =      0xF308                        ; 
                     F30C   205 Moveto_ix_7F        =      0xF30C                        ; 
                     F30E   206 Moveto_ix_a         =      0xF30E                        ; 
                     F310   207 Moveto_ix           =      0xF310                        ; 
                     F312   208 Moveto_d            =      0xF312                        ; 
                     F34A   209 Reset0Ref_D0        =      0xF34A                        ; 
                     F34F   210 Check0Ref           =      0xF34F                        ; 
                     F354   211 Reset0Ref           =      0xF354                        ; 
                     F35B   212 Reset_Pen           =      0xF35B                        ; 
                     F36B   213 Reset0Int           =      0xF36B                        ; 
                     F373   214 Print_Str_hwyx      =      0xF373                        ; 
                     F378   215 Print_Str_yx        =      0xF378                        ; 
                     F37A   216 Print_Str_d         =      0xF37A                        ; 
                     F385   217 Print_List_hw       =      0xF385                        ; 
                     F38A   218 Print_List          =      0xF38A                        ; 
                     F38C   219 Print_List_chk      =      0xF38C                        ; 
                     F391   220 Print_Ships_x       =      0xF391                        ; 
                     F393   221 Print_Ships         =      0xF393                        ; 
                     F3AD   222 Mov_Draw_VLc_a      =      0xF3AD                        ;count y x y x ... 
                     F3B1   223 Mov_Draw_VL_b       =      0xF3B1                        ;y x y x ... 
                     F3B5   224 Mov_Draw_VLcs       =      0xF3B5                        ;count scale y x y x ... 
                     F3B7   225 Mov_Draw_VL_ab      =      0xF3B7                        ;y x y x ... 
                     F3B9   226 Mov_Draw_VL_a       =      0xF3B9                        ;y x y x ... 
                     F3BC   227 Mov_Draw_VL         =      0xF3BC                        ;y x y x ... 
                     F3BE   228 Mov_Draw_VL_d       =      0xF3BE                        ;y x y x ... 
                     F3CE   229 Draw_VLc            =      0xF3CE                        ;count y x y x ... 
                     F3D2   230 Draw_VL_b           =      0xF3D2                        ;y x y x ... 
                     F3D6   231 Draw_VLcs           =      0xF3D6                        ;count scale y x y x ... 
                     F3D8   232 Draw_VL_ab          =      0xF3D8                        ;y x y x ... 
                     F3DA   233 Draw_VL_a           =      0xF3DA                        ;y x y x ... 
                     F3DD   234 Draw_VL             =      0xF3DD                        ;y x y x ... 
                     F3DF   235 Draw_Line_d         =      0xF3DF                        ;y x y x ... 
                     F404   236 Draw_VLp_FF         =      0xF404                        ;pattern y x pattern y x ... 0x01 
                     F408   237 Draw_VLp_7F         =      0xF408                        ;pattern y x pattern y x ... 0x01 
                     F40C   238 Draw_VLp_scale      =      0xF40C                        ;scale pattern y x pattern y x ... 0x01 
                     F40E   239 Draw_VLp_b          =      0xF40E                        ;pattern y x pattern y x ... 0x01 
                     F410   240 Draw_VLp            =      0xF410                        ;pattern y x pattern y x ... 0x01 
                     F434   241 Draw_Pat_VL_a       =      0xF434                        ;y x y x ... 
                     F437   242 Draw_Pat_VL         =      0xF437                        ;y x y x ... 
                     F439   243 Draw_Pat_VL_d       =      0xF439                        ;y x y x ... 
                     F46E   244 Draw_VL_mode        =      0xF46E                        ;mode y x mode y x ... 0x01 
                     F495   245 Print_Str           =      0xF495                        ; 
                     F511   246 Random_3            =      0xF511                        ; 
                     F517   247 Random              =      0xF517                        ; 
                     F533   248 Init_Music_Buf      =      0xF533                        ; 
                     F53F   249 Clear_x_b           =      0xF53F                        ; 
                     F542   250 Clear_C8_RAM        =      0xF542                        ;never used by GCE carts? 
                     F545   251 Clear_x_256         =      0xF545                        ; 
                     F548   252 Clear_x_d           =      0xF548                        ; 
                     F550   253 Clear_x_b_80        =      0xF550                        ; 
                     F552   254 Clear_x_b_a         =      0xF552                        ; 
                     F55A   255 Dec_3_Counters      =      0xF55A                        ; 
                     F55E   256 Dec_6_Counters      =      0xF55E                        ; 
                     F563   257 Dec_Counters        =      0xF563                        ; 
                     F56D   258 Delay_3             =      0xF56D                        ;30 cycles 
                     F571   259 Delay_2             =      0xF571                        ;25 cycles 
                     F575   260 Delay_1             =      0xF575                        ;20 cycles 
                     F579   261 Delay_0             =      0xF579                        ;12 cycles 
                     F57A   262 Delay_b             =      0xF57A                        ;5*B + 10 cycles 
                     F57D   263 Delay_RTS           =      0xF57D                        ;5 cycles 
                     F57E   264 Bitmask_a           =      0xF57E                        ; 
                     F584   265 Abs_a_b             =      0xF584                        ; 
                     F58B   266 Abs_b               =      0xF58B                        ; 
                     F593   267 Rise_Run_Angle      =      0xF593                        ; 
                     F5D9   268 Get_Rise_Idx        =      0xF5D9                        ; 
                     F5DB   269 Get_Run_Idx         =      0xF5DB                        ; 
                     F5EF   270 Get_Rise_Run        =      0xF5EF                        ; 
                     F5FF   271 Rise_Run_X          =      0xF5FF                        ; 
                     F601   272 Rise_Run_Y          =      0xF601                        ; 
                     F603   273 Rise_Run_Len        =      0xF603                        ; 
                     F610   274 Rot_VL_ab           =      0xF610                        ; 
                     F616   275 Rot_VL              =      0xF616                        ; 
                     F61F   276 Rot_VL_Mode         =      0xF61F                        ; 
                     F62B   277 Rot_VL_M_dft        =      0xF62B                        ; 
                            278 ;Rot_VL_dft      EQU     0xF637   ;
                            279 ;Rot_VL_ab       EQU     0xF610   ;
                            280 ;Rot_VL          EQU     0xF616   ;
                            281 ;Rot_VL_Mode_a   EQU     0xF61F   ;
                            282 ;Rot_VL_Mode     EQU     0xF62B   ;
                            283 ;Rot_VL_dft      EQU     0xF637   ;
                     F65B   284 Xform_Run_a         =      0xF65B                        ; 
                     F65D   285 Xform_Run           =      0xF65D                        ; 
                     F661   286 Xform_Rise_a        =      0xF661                        ; 
                     F663   287 Xform_Rise          =      0xF663                        ; 
                     F67F   288 Move_Mem_a_1        =      0xF67F                        ; 
                     F683   289 Move_Mem_a          =      0xF683                        ; 
                     F687   290 Init_Music_chk      =      0xF687                        ; 
                     F68D   291 Init_Music          =      0xF68D                        ; 
                     F692   292 Init_Music_x        =      0xF692                        ; 
                     F7A9   293 Select_Game         =      0xF7A9                        ; 
                     F84F   294 Clear_Score         =      0xF84F                        ; 
                     F85E   295 Add_Score_a         =      0xF85E                        ; 
                     F87C   296 Add_Score_d         =      0xF87C                        ; 
                     F8B7   297 Strip_Zeros         =      0xF8B7                        ; 
                     F8C7   298 Compare_Score       =      0xF8C7                        ; 
                     F8D8   299 New_High_Score      =      0xF8D8                        ; 
                     F8E5   300 Obj_Will_Hit_u      =      0xF8E5                        ; 
                     F8F3   301 Obj_Will_Hit        =      0xF8F3                        ; 
                     F8FF   302 Obj_Hit             =      0xF8FF                        ; 
                     F92E   303 Explosion_Snd       =      0xF92E                        ; 
                     FF9F   304 Draw_Grid_VL        =      0xFF9F                        ; 
                            305                                 ;
                     FD0D   306 music1              =      0xFD0D                        ; 
                     FD1D   307 music2              =      0xFD1D                        ; 
                     FD81   308 music3              =      0xFD81                        ; 
                     FDD3   309 music4              =      0xFDD3                        ; 
                     FE38   310 music5              =      0xFE38                        ; 
                     FE76   311 music6              =      0xFE76                        ; 
                     FEC6   312 music7              =      0xFEC6                        ; 
                     FEF8   313 music8              =      0xFEF8                        ; 
                     FF26   314 music9              =      0xFF26                        ; 
                     FF44   315 musica              =      0xFF44                        ; 
                     FF62   316 musicb              =      0xFF62                        ; 
                     FF7A   317 musicc              =      0xFF7A                        ; 
                     FF8F   318 musicd              =      0xFF8F                        ; 
                     F9F4   319 Char_Table          =      0xF9F4 
                     FBD4   320 Char_Table_End      =      0xFBD4 
                     0001   321 SHITREG_POKE_VALUE  =        0x01 
                            322 ;////////////////////////////////////////////////
                            323 ;/DUNGEON DRAWS
                            324 ;////////////////////////////////////////////////
                            325  .globl _drawUpWall
   527B                     326 _drawUpWall: 
   527B 34 40         [ 6]  327                     pshs     u 
   527D CE 54 3F      [ 3]  328                     ldu      #_ScenList_18 
   5280 4F            [ 2]  329                     clra     
                            330 ; macro call ->                     MY_MOVE_TO_B_END
   5281 C6 40         [ 2]  331                     LDB      #0x40                         ; 
   5283 D5 0D         [ 4]  332                     BITB     *0x0D               ; 
   5285 27 FC         [ 3]  333                     BEQ      .-2
   5287 37 94         [ 8]  334                     pulu     b,x,pc 
                            335  .globl _drawUpDoor
   5289                     336 _drawUpDoor: 
   5289 34 40         [ 6]  337                     pshs     u 
   528B CE 54 AD      [ 3]  338                     ldu      #_ScenList_20 
   528E 4F            [ 2]  339                     clra     
                            340 ; macro call ->                     MY_MOVE_TO_B_END
   528F C6 40         [ 2]  341                     LDB      #0x40                         ; 
   5291 D5 0D         [ 4]  342                     BITB     *0x0D               ; 
   5293 27 FC         [ 3]  343                     BEQ      .-2
   5295 37 94         [ 8]  344                     pulu     b,x,pc 
                            345  .globl _drawLeftWall
   5297                     346 _drawLeftWall: 
   5297 34 40         [ 6]  347                     pshs     u 
   5299 CE 54 1C      [ 3]  348                     ldu      #_ScenList_17 
   529C 4F            [ 2]  349                     clra     
                            350 ; macro call ->                     MY_MOVE_TO_B_END
   529D C6 40         [ 2]  351                     LDB      #0x40                         ; 
   529F D5 0D         [ 4]  352                     BITB     *0x0D               ; 
   52A1 27 FC         [ 3]  353                     BEQ      .-2
   52A3 37 94         [ 8]  354                     pulu     b,x,pc 
                            355  .globl _drawLeftWall_noZero
   52A5                     356 _drawLeftWall_noZero:
   52A5 34 40         [ 6]  357                     pshs     u 
   52A7 CE 54 1C      [ 3]  358                     ldu      #_ScenList_17 
   52AA 4F            [ 2]  359                     clra     
   52AB 37 94         [ 8]  360                     pulu     b,x,pc 
                            361  .globl _drawLeftDoor
   52AD                     362 _drawLeftDoor: 
   52AD 34 40         [ 6]  363                     pshs     u 
   52AF CE 54 62      [ 3]  364                     ldu      #_ScenList_19 
   52B2 4F            [ 2]  365                     clra     
                            366 ; macro call ->                     MY_MOVE_TO_B_END
   52B3 C6 40         [ 2]  367                     LDB      #0x40                         ; 
   52B5 D5 0D         [ 4]  368                     BITB     *0x0D               ; 
   52B7 27 FC         [ 3]  369                     BEQ      .-2
   52B9 37 94         [ 8]  370                     pulu     b,x,pc 
                            371  .globl _drawLeftDoor_noZero
   52BB                     372 _drawLeftDoor_noZero: 
   52BB 34 40         [ 6]  373                     pshs     u 
   52BD CE 54 62      [ 3]  374                     ldu      #_ScenList_19 
   52C0 4F            [ 2]  375                     clra     
   52C1 37 94         [ 8]  376                     pulu     b,x,pc 
                            377  .globl _drawUnkown
   52C3                     378 _drawUnkown: 
   52C3 34 40         [ 6]  379                     pshs     u 
   52C5 CE 54 F8      [ 3]  380                     ldu      #_UnkownList 
   52C8 4F            [ 2]  381                     clra     
                            382 ; macro call ->                     MY_MOVE_TO_B_END
   52C9 C6 40         [ 2]  383                     LDB      #0x40                         ; 
   52CB D5 0D         [ 4]  384                     BITB     *0x0D               ; 
   52CD 27 FC         [ 3]  385                     BEQ      .-2
   52CF 37 94         [ 8]  386                     pulu     b,x,pc 
                            387  .globl _drawUnkown_noZero
   52D1                     388 _drawUnkown_noZero: 
   52D1 34 40         [ 6]  389                     pshs     u 
   52D3 CE 54 F8      [ 3]  390                     ldu      #_UnkownList 
   52D6 4F            [ 2]  391                     clra     
   52D7 37 94         [ 8]  392                     pulu     b,x,pc 
                            393 ;////////////////////////////////////////////////
                            394 ;////////////////////////////////////////////////
                            395 ;////////////////////////////////////////////////
                            396 ;////////////////////////////////////////////////
                            397 ;/CHARACTER DRAWS
                            398 ;////////////////////////////////////////////////
                            399  .globl _drawDot
   52D9                     400 _drawDot:
   52D9 34 40         [ 6]  401                     pshs     u 
   52DB CE 70 77      [ 3]  402                     ldu      #_DotList 
   52DE 4F            [ 2]  403                     clra     
                            404 ; macro call ->                     MY_MOVE_TO_B_END
   52DF C6 40         [ 2]  405                     LDB      #0x40                         ; 
   52E1 D5 0D         [ 4]  406                     BITB     *0x0D               ; 
   52E3 27 FC         [ 3]  407                     BEQ      .-2
   52E5 37 94         [ 8]  408                     pulu     b,x,pc 
                            409  .globl _drawPlayer
   52E7                     410 _drawPlayer: 
   52E7 34 40         [ 6]  411                     pshs     u 
   52E9 CE 55 3F      [ 3]  412                     ldu      #_PlayerList 
   52EC 4F            [ 2]  413                     clra     
   52ED 37 94         [ 8]  414                     pulu     b,x,pc 
                            415  .globl _drawGnoll
   52EF                     416 _drawGnoll:
   52EF 34 40         [ 6]  417                     pshs     u 
   52F1 CE 57 45      [ 3]  418                     ldu      #_GnollList
   52F4 4F            [ 2]  419                     clra     
   52F5 37 94         [ 8]  420                     pulu     b,x,pc 
                            421  .globl _drawKobold
   52F7                     422 _drawKobold:
   52F7 34 40         [ 6]  423                     pshs     u 
   52F9 CE 58 03      [ 3]  424                     ldu      #_KoboldList
   52FC 4F            [ 2]  425                     clra     
   52FD 37 94         [ 8]  426                     pulu     b,x,pc 
                            427  .globl _drawSkeleton
   52FF                     428 _drawSkeleton:
   52FF 34 40         [ 6]  429                     pshs     u 
   5301 CE 58 94      [ 3]  430                     ldu      #_SkeletonList
   5304 4F            [ 2]  431                     clra     
   5305 37 94         [ 8]  432                     pulu     b,x,pc 
                            433  .globl _drawHobbit
   5307                     434 _drawHobbit:
   5307 34 40         [ 6]  435                     pshs     u 
   5309 CE 5A 0A      [ 3]  436                     ldu      #_HobbitList
   530C 4F            [ 2]  437                     clra     
   530D 37 94         [ 8]  438                     pulu     b,x,pc 
                            439  .globl _drawZomnbie
   530F                     440 _drawZomnbie:
   530F 34 40         [ 6]  441                     pshs     u 
   5311 CE 5A F2      [ 3]  442                     ldu      #_ZombieList
   5314 4F            [ 2]  443                     clra     
   5315 37 94         [ 8]  444                     pulu     b,x,pc 
                            445  .globl _drawOrc
   5317                     446 _drawOrc:
   5317 34 40         [ 6]  447                     pshs     u 
   5319 CE 5C 1E      [ 3]  448                     ldu      #_OrcList
   531C 4F            [ 2]  449                     clra     
   531D 37 94         [ 8]  450                     pulu     b,x,pc 
                            451  .globl _drawFighter
   531F                     452 _drawFighter:
   531F 34 40         [ 6]  453                     pshs     u 
   5321 CE 5C D1      [ 3]  454                     ldu      #_FighterList
   5324 4F            [ 2]  455                     clra     
   5325 37 94         [ 8]  456                     pulu     b,x,pc 
                            457  .globl _drawMummy
   5327                     458 _drawMummy:
   5327 34 40         [ 6]  459                     pshs     u 
   5329 CE 5D A2      [ 3]  460                     ldu      #_MummyList
   532C 4F            [ 2]  461                     clra     
   532D 37 94         [ 8]  462                     pulu     b,x,pc 
                            463  .globl _drawElf
   532F                     464 _drawElf:
   532F 34 40         [ 6]  465                     pshs     u 
   5331 CE 5F 21      [ 3]  466                     ldu      #_ElfList
   5334 4F            [ 2]  467                     clra     
   5335 37 94         [ 8]  468                     pulu     b,x,pc 
                            469  .globl _drawGhoul
   5337                     470 _drawGhoul:
   5337 34 40         [ 6]  471                     pshs     u 
   5339 CE 60 7D      [ 3]  472                     ldu      #_GhoulList
   533C 4F            [ 2]  473                     clra     
   533D 37 94         [ 8]  474                     pulu     b,x,pc 
                            475  .globl _drawDwarf
   533F                     476 _drawDwarf:
   533F 34 40         [ 6]  477                     pshs     u 
   5341 CE 61 AD      [ 3]  478                     ldu      #_DwarfList
   5344 4F            [ 2]  479                     clra     
   5345 37 94         [ 8]  480                     pulu     b,x,pc 
                            481  .globl _drawTroll
   5347                     482 _drawTroll: 
   5347 34 40         [ 6]  483                     pshs     u 
   5349 CE 63 2B      [ 3]  484                     ldu      #_TrollList 
   534C 4F            [ 2]  485                     clra     
   534D 37 94         [ 8]  486                     pulu     b,x,pc 
                            487  .globl _drawWraith
   534F                     488 _drawWraith: 
   534F 34 40         [ 6]  489                     pshs     u 
   5351 CE 63 E9      [ 3]  490                     ldu      #_WraithList 
   5354 4F            [ 2]  491                     clra     
   5355 37 94         [ 8]  492                     pulu     b,x,pc 
                            493  .globl _drawOgre
   5357                     494 _drawOgre: 
   5357 34 40         [ 6]  495                     pshs     u 
   5359 CE 64 BA      [ 3]  496                     ldu      #_OgreList 
   535C 4F            [ 2]  497                     clra     
   535D 37 94         [ 8]  498                     pulu     b,x,pc 
                            499  .globl _drawMinotaur
   535F                     500 _drawMinotaur: 
   535F 34 40         [ 6]  501                     pshs     u 
   5361 CE 66 1F      [ 3]  502                     ldu      #_MinotaurList 
   5364 4F            [ 2]  503                     clra     
   5365 37 94         [ 8]  504                     pulu     b,x,pc 
                            505  .globl _drawGiant
   5367                     506 _drawGiant: 
   5367 34 40         [ 6]  507                     pshs     u 
   5369 CE 67 56      [ 3]  508                     ldu      #_GiantList 
   536C 4F            [ 2]  509                     clra     
   536D 37 94         [ 8]  510                     pulu     b,x,pc 
                            511  .globl _drawSpecter
   536F                     512 _drawSpecter: 
   536F 34 40         [ 6]  513                     pshs     u 
   5371 CE 68 B3      [ 3]  514                     ldu      #_SpecterList 
   5374 4F            [ 2]  515                     clra     
   5375 37 94         [ 8]  516                     pulu     b,x,pc 
                            517  .globl _drawVampire
   5377                     518 _drawVampire: 
   5377 34 40         [ 6]  519                     pshs     u 
   5379 CE 6A 09      [ 3]  520                     ldu      #_VampireList 
   537C 4F            [ 2]  521                     clra     
   537D 37 94         [ 8]  522                     pulu     b,x,pc 
                            523  .globl _drawDemon
   537F                     524 _drawDemon: 
   537F 34 40         [ 6]  525                     pshs     u 
   5381 CE 6A FD      [ 3]  526                     ldu      #_DemonList 
   5384 4F            [ 2]  527                     clra     
   5385 37 94         [ 8]  528                     pulu     b,x,pc 
                            529  .globl _drawDragon
   5387                     530 _drawDragon: 
   5387 34 40         [ 6]  531                     pshs     u 
   5389 CE 6C 80      [ 3]  532                     ldu      #_DragonList 
   538C 4F            [ 2]  533                     clra     
   538D 37 94         [ 8]  534                     pulu     b,x,pc 
                            535  .globl _drawStaircase
   538F                     536 _drawStaircase: 
   538F 34 40         [ 6]  537                     pshs     u 
   5391 CE 56 83      [ 3]  538                     ldu      #_StaircaseList 
   5394 4F            [ 2]  539                     clra     
   5395 37 94         [ 8]  540                     pulu     b,x,pc 
                            541  .globl _drawHome
   5397                     542 _drawHome: 
   5397 34 40         [ 6]  543                     pshs     u 
   5399 CE 56 10      [ 3]  544                     ldu      #_HomeList 
   539C 4F            [ 2]  545                     clra     
   539D 37 94         [ 8]  546                     pulu     b,x,pc 
                            547  .globl _drawInn
   539F                     548 _drawInn: 
   539F 34 40         [ 6]  549                     pshs     u 
   53A1 CE 74 DB      [ 3]  550                     ldu      #_InnList
   53A4 4F            [ 2]  551                     clra     
   53A5 37 94         [ 8]  552                     pulu     b,x,pc 
                            553  .globl _drawFountain
   53A7                     554 _drawFountain: 
   53A7 34 40         [ 6]  555                     pshs     u 
   53A9 CE 7A 95      [ 3]  556                     ldu      #_FountainList
   53AC 4F            [ 2]  557                     clra     
   53AD 37 94         [ 8]  558                     pulu     b,x,pc 
                            559  .globl _drawAltar
   53AF                     560 _drawAltar:
   53AF 34 40         [ 6]  561                     pshs     u 
   53B1 CE 7B 5B      [ 3]  562                     ldu      #_AltarList
   53B4 4F            [ 2]  563                     clra     
   53B5 37 94         [ 8]  564                     pulu     b,x,pc 
                            565  .globl _drawElevator
   53B7                     566 _drawElevator:
   53B7 34 40         [ 6]  567                     pshs     u 
   53B9 CE 7C 66      [ 3]  568                     ldu      #_ElevatorList
   53BC 4F            [ 2]  569                     clra     
   53BD 37 94         [ 8]  570                     pulu     b,x,pc 
                            571  .globl _drawNone
   53BF                     572 _drawNone:
   53BF 39            [ 5]  573     rts
                            574  .globl _drawThrone
   53C0                     575 _drawThrone:
   53C0 34 40         [ 6]  576                     pshs     u 
   53C2 CE 76 19      [ 3]  577                     ldu      #_ThroneList
   53C5 B6 C8 26      [ 5]  578  lda Vec_Loop_Count+1
   53C8 84 06         [ 2]  579  anda #6
                            580 ; lsla
   53CA EE C6         [ 6]  581  ldu a,u
   53CC 4F            [ 2]  582                     clra     
   53CD 37 94         [ 8]  583                     pulu     b,x,pc 
                            584  .globl _drawFlame
   53CF                     585 _drawFlame:
   53CF 34 40         [ 6]  586                     pshs     u 
   53D1 CE 7E 18      [ 3]  587                     ldu      #_DragonFlameList
   53D4 B6 C8 26      [ 5]  588  lda Vec_Loop_Count+1
   53D7 84 06         [ 2]  589  anda #6
                            590 ; lsla
   53D9 EE C6         [ 6]  591  ldu a,u
   53DB 4F            [ 2]  592                     clra     
   53DC 37 94         [ 8]  593                     pulu     b,x,pc 
                            594  .globl _drawCube
   53DE                     595 _drawCube:
   53DE 34 40         [ 6]  596                     pshs     u 
   53E0 CE 7A 11      [ 3]  597                     ldu      #_CubeList
   53E3 B6 C8 26      [ 5]  598  lda Vec_Loop_Count+1
   53E6 84 08         [ 2]  599  anda #8
   53E8 44            [ 2]  600  lsra
   53E9 44            [ 2]  601  lsra
   53EA EE C6         [ 6]  602  ldu a,u
   53EC 4F            [ 2]  603                     clra     
   53ED 37 94         [ 8]  604                     pulu     b,x,pc 
                            605  .globl _drawBox
   53EF                     606 _drawBox:
   53EF 34 40         [ 6]  607                     pshs     u 
   53F1 CE 7D A6      [ 3]  608                     ldu      #_BoxList
   53F4 B6 C8 26      [ 5]  609  lda Vec_Loop_Count+1
   53F7 84 08         [ 2]  610  anda #8
   53F9 44            [ 2]  611  lsra
   53FA 44            [ 2]  612  lsra
   53FB EE C6         [ 6]  613  ldu a,u
   53FD 4F            [ 2]  614                     clra     
   53FE 37 94         [ 8]  615                     pulu     b,x,pc 
                            616  .globl _drawTreasure
   5400                     617 _drawTreasure:
   5400 34 40         [ 6]  618                     pshs     u 
   5402 CE 70 9D      [ 3]  619                     ldu      #_TreasureList
   5405 58            [ 2]  620                     aslb
   5406 EE C5         [ 6]  621                     ldu     b,u
   5408 4F            [ 2]  622                     clra     
   5409 37 94         [ 8]  623                     pulu     b,x,pc 
                            624  .globl _drawSpell
   540B                     625 _drawSpell:
   540B 34 40         [ 6]  626                     pshs     u 
   540D CE 6E 27      [ 3]  627                     ldu      #_SpellIcons
   5410 58            [ 2]  628                     aslb
   5411 EE C5         [ 6]  629                     ldu     b,u
   5413 4F            [ 2]  630                     clra     
                            631 ; macro call ->                     MY_MOVE_TO_B_END
   5414 C6 40         [ 2]  632                     LDB      #0x40                         ; 
   5416 D5 0D         [ 4]  633                     BITB     *0x0D               ; 
   5418 27 FC         [ 3]  634                     BEQ      .-2
   541A 37 94         [ 8]  635                     pulu     b,x,pc 
                            636  .globl _ScenList_17
   541C                     637 _ScenList_17: 
   541C D8 01 D8            638                     .byte       -0x28, 0x01, -0x28 
   541F 4B 9B               639                     .word       SMVB_continue_yEqx_single    ; y is -0x28 
   5421 00 01 50            640                     .byte       0x00, 0x01, 0x50 
   5424 4D BA               641                     .word       SMVB_startDraw_single 
   5426 88 01 00            642                     .byte       -0x78, 0x01, 0x00 
   5429 4C 54               643                     .word       SMVB_continue_yd4_quadro 
   542B 00 01 B0            644                     .byte       0x00, 0x01, -0x50 
   542E 4B 68               645                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   5430 78 01 00            646                     .byte       0x78, 0x01, 0x00 
   5433 4B B5               647                     .word       SMVB_continue_quadro 
   5435 28 01 28            648                     .byte       0x28, 0x01, 0x28 
   5438 4E 44               649                     .word       SMVB_startMove_yd4_yEqx_single ; y is 0x28 
   543A 00 00 00            650                     .byte       0x00, 0x00, 0x00 
   543D 4E CF               651                     .word       SMVB_lastMove_rts_stay 
                            652  .globl _ScenList_18
   543F                     653 _ScenList_18: 
   543F D9 01 28            654                     .byte       -0x27, 0x01, 0x28 
   5442 4B 66               655                     .word       SMVB_continue_single 
   5444 4E 01 00            656                     .byte       0x4E, 0x01, 0x00 
   5447 4D BA               657                     .word       SMVB_startDraw_single 
   5449 00 01 78            658                     .byte       0x00, 0x01, 0x78 
   544C 4C 54               659                     .word       SMVB_continue_yd4_quadro 
   544E B2 01 00            660                     .byte       -0x4E, 0x01, 0x00 
   5451 4B 73               661                     .word       SMVB_continue_yd4_single 
   5453 00 01 88            662                     .byte       0x00, 0x01, -0x78 
   5456 4B B5               663                     .word       SMVB_continue_quadro 
   5458 28 01 D8            664                     .byte       0x28, 0x01, -0x28 
   545B 4C 70               665                     .word       SMVB_startMove_single 
   545D 00 00 00            666                     .byte       0x00, 0x00, 0x00 
   5460 4E CF               667                     .word       SMVB_lastMove_rts_stay 
                            668  .globl _ScenList_19
   5462                     669 _ScenList_19: 
   5462 D8 01 D8            670                     .byte       -0x28, 0x01, -0x28 
   5465 4B 9B               671                     .word       SMVB_continue_yEqx_single    ; y is -0x28 
   5467 00 01 50            672                     .byte       0x00, 0x01, 0x50 
   546A 4D BA               673                     .word       SMVB_startDraw_single 
   546C B7 01 00            674                     .byte       -0x49, 0x01, 0x00 
   546F 4C 2A               675                     .word       SMVB_continue_yd4_double 
   5471 00 01 AF            676                     .byte       0x00, 0x01, -0x51 
   5474 4B 68               677                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   5476 A3 01 28            678                     .byte       -0x5D, 0x01, 0x28 
   5479 4C 9D               679                     .word       SMVB_startMove_yd4_double 
   547B FF 01 B0            680                     .byte       -0x01, 0x01, -0x50 
   547E 4D BA               681                     .word       SMVB_startDraw_single 
   5480 B7 01 00            682                     .byte       -0x49, 0x01, 0x00 
   5483 4C 2A               683                     .word       SMVB_continue_yd4_double 
   5485 00 01 50            684                     .byte       0x00, 0x01, 0x50 
   5488 4B 68               685                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   548A 49 01 00            686                     .byte       0x49, 0x01, 0x00 
   548D 4C 1C               687                     .word       SMVB_continue_double 
   548F 00 01 D8            688                     .byte       0x00, 0x01, -0x28 
   5492 4E 7A               689                     .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
   5494 5D 01 00            690                     .byte       0x5D, 0x01, 0x00 
   5497 4C BD               691                     .word       SMVB_startDraw_double 
   5499 00 01 D8            692                     .byte       0x00, 0x01, -0x28 
   549C 4E 7A               693                     .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
   549E 49 01 00            694                     .byte       0x49, 0x01, 0x00 
   54A1 4C BD               695                     .word       SMVB_startDraw_double 
   54A3 28 01 28            696                     .byte       0x28, 0x01, 0x28 
   54A6 4D FA               697                     .word       SMVB_startMove_yEqx_single   ; y is 0x28 
   54A8 00 00 00            698                     .byte       0x00, 0x00, 0x00 
   54AB 4E CF               699                     .word       SMVB_lastMove_rts_stay 
                            700  .globl _ScenList_20
   54AD                     701 _ScenList_20: 
   54AD D9 01 28            702                     .byte       -0x27, 0x01, 0x28 
   54B0 4B 66               703                     .word       SMVB_continue_single 
   54B2 4E 01 00            704                     .byte       0x4E, 0x01, 0x00 
   54B5 4D BA               705                     .word       SMVB_startDraw_single 
   54B7 00 01 49            706                     .byte       0x00, 0x01, 0x49 
   54BA 4C 2A               707                     .word       SMVB_continue_yd4_double 
   54BC B1 01 00            708                     .byte       -0x4F, 0x01, 0x00 
   54BF 4B 73               709                     .word       SMVB_continue_yd4_single 
   54C1 28 01 00            710                     .byte       0x28, 0x01, 0x00 
   54C4 4C 70               711                     .word       SMVB_startMove_single 
   54C6 00 01 5D            712                     .byte       0x00, 0x01, 0x5D 
   54C9 4C BD               713                     .word       SMVB_startDraw_double 
   54CB D9 01 FF            714                     .byte       -0x27, 0x01, -0x01 
   54CE 4C 70               715                     .word       SMVB_startMove_single 
   54D0 00 01 49            716                     .byte       0x00, 0x01, 0x49 
   54D3 4C BD               717                     .word       SMVB_startDraw_double 
   54D5 4E 01 00            718                     .byte       0x4E, 0x01, 0x00 
   54D8 4B 66               719                     .word       SMVB_continue_single 
   54DA 00 01 B7            720                     .byte       0x00, 0x01, -0x49 
   54DD 4C 2A               721                     .word       SMVB_continue_yd4_double 
   54DF B2 01 00            722                     .byte       -0x4E, 0x01, 0x00 
   54E2 4B 73               723                     .word       SMVB_continue_yd4_single 
   54E4 00 01 A3            724                     .byte       0x00, 0x01, -0x5D 
   54E7 4C 9D               725                     .word       SMVB_startMove_double 
   54E9 00 01 B7            726                     .byte       0x00, 0x01, -0x49 
   54EC 4C BD               727                     .word       SMVB_startDraw_double 
   54EE 28 01 D8            728                     .byte       0x28, 0x01, -0x28 
   54F1 4C 70               729                     .word       SMVB_startMove_single 
   54F3 00 00 00            730                     .byte       0x00, 0x00, 0x00 
   54F6 4E CF               731                     .word       SMVB_lastMove_rts_stay 
                            732  .globl _UnkownList
   54F8                     733 _UnkownList:
   54F8 8F 01 6C            734 	.byte -0x71, 0x01,  0x6C
   54FB 4C 2A               735 	.word SMVB_continue_yd4_double
   54FD 1A 01 0A            736 	.byte  0x1A, 0x01,  0x0A
   5500 4D BA               737 	.word SMVB_startDraw_single
   5502 14 01 2B            738 	.byte  0x14, 0x01,  0x2B
   5505 4B 18               739 	.word SMVB_continue7_single
   5507 F2 01 24            740 	.byte -0x0E, 0x01,  0x24
   550A E9 01 0C            741 	.byte -0x17, 0x01,  0x0C
   550D E2 01 F8            742 	.byte -0x1E, 0x01, -0x08
   5510 F4 01 DE            743 	.byte -0x0C, 0x01, -0x22
   5513 E0 01 F6            744 	.byte -0x20, 0x01, -0x0A
   5516 C5 01 00            745 	.byte -0x3B, 0x01,  0x00
   5519 DC 01 0A            746 	.byte -0x24, 0x01,  0x0A
   551C 4C 70               747 	.word SMVB_startMove_single
   551E 08 01 03            748 	.byte  0x08, 0x01,  0x03
   5521 4D BA               749 	.word SMVB_startDraw_single
   5523 05 01 FD            750 	.byte  0x05, 0x01, -0x03
   5526 4B 18               751 	.word SMVB_continue7_single
   5528 04 01 FA            752 	.byte  0x04, 0x01, -0x06
   552B FD 01 F8            753 	.byte -0x03, 0x01, -0x08
   552E F9 01 FE            754 	.byte -0x07, 0x01, -0x02
   5531 F9 01 02            755 	.byte -0x07, 0x01,  0x02
   5534 FD 01 08            756 	.byte -0x03, 0x01,  0x08
   5537 02 01 07            757 	.byte  0x02, 0x01,  0x07
   553A FE 00 00            758 	.byte  0xfe, 0x00,  0x00
   553D 4E CF               759 	.word SMVB_lastMove_rts_stay
                            760  .globl _PlayerList
   553F                     761 _PlayerList:
   553F E4 01 44            762 	.byte -0x1C, 0x01,  0x44
   5542 4C 1C               763 	.word SMVB_continue_double
   5544 F6 01 00            764 	.byte -0x0A, 0x01,  0x00
   5547 4D BA               765 	.word SMVB_startDraw_single
   5549 00 01 18            766 	.byte  0x00, 0x01,  0x18
   554C 4B 4C               767 	.word SMVB_continue3_single
   554E 0A 01 00            768 	.byte  0x0A, 0x01,  0x00
   5551 00 01 E8            769 	.byte  0x00, 0x01, -0x18
   5554 27 01 31            770 	.byte  0x27, 0x01,  0x31
   5557 4C 70               771 	.word SMVB_startMove_single
   5559 F7 01 00            772 	.byte -0x09, 0x01,  0x00
   555C 4D BA               773 	.word SMVB_startDraw_single
   555E 00 01 E7            774 	.byte  0x00, 0x01, -0x19
   5561 4B 18               775 	.word SMVB_continue7_single
   5563 EC 01 00            776 	.byte -0x14, 0x01,  0x00
   5566 00 01 25            777 	.byte  0x00, 0x01,  0x25
   5569 D0 01 00            778 	.byte -0x30, 0x01,  0x00
   556C FB 01 F1            779 	.byte -0x05, 0x01, -0x0F
   556F EC 01 1B            780 	.byte -0x14, 0x01,  0x1B
   5572 DE 01 00            781 	.byte -0x22, 0x01,  0x00
   5575 F2 01 E8            782 	.byte -0x0E, 0x01, -0x18
   5578 4B 18               783 	.word SMVB_continue7_single
   557A C7 01 00            784 	.byte -0x39, 0x01,  0x00
   557D 00 01 C3            785 	.byte  0x00, 0x01, -0x3D
   5580 05 01 00            786 	.byte  0x05, 0x01,  0x00
   5583 0F 01 11            787 	.byte  0x0F, 0x01,  0x11
   5586 00 01 13            788 	.byte  0x00, 0x01,  0x13
   5589 27 01 00            789 	.byte  0x27, 0x01,  0x00
   558C 00 01 F8            790 	.byte  0x00, 0x01, -0x08
   558F 4B 18               791 	.word SMVB_continue7_single
   5591 EB 01 EB            792 	.byte -0x15, 0x01, -0x15
   5594 23 01 D4            793 	.byte  0x23, 0x01, -0x2C
   5597 10 01 00            794 	.byte  0x10, 0x01,  0x00
   559A 00 01 F4            795 	.byte  0x00, 0x01, -0x0C
   559D EC 01 00            796 	.byte -0x14, 0x01,  0x00
   55A0 00 01 E8            797 	.byte  0x00, 0x01, -0x18
   55A3 14 01 00            798 	.byte  0x14, 0x01,  0x00
   55A6 4B 18               799 	.word SMVB_continue7_single
   55A8 00 01 F5            800 	.byte  0x00, 0x01, -0x0B
   55AB 13 01 00            801 	.byte  0x13, 0x01,  0x00
   55AE 00 01 0B            802 	.byte  0x00, 0x01,  0x0B
   55B1 41 01 00            803 	.byte  0x41, 0x01,  0x00
   55B4 0F 01 12            804 	.byte  0x0F, 0x01,  0x12
   55B7 00 01 06            805 	.byte  0x00, 0x01,  0x06
   55BA B0 01 00            806 	.byte -0x50, 0x01,  0x00
   55BD 4B 73               807 	.word SMVB_continue_yd4_single
   55BF 00 01 0C            808 	.byte  0x00, 0x01,  0x0C
   55C2 4B 18               809 	.word SMVB_continue7_single
   55C4 1E 01 00            810 	.byte  0x1E, 0x01,  0x00
   55C7 00 01 25            811 	.byte  0x00, 0x01,  0x25
   55CA 27 01 00            812 	.byte  0x27, 0x01,  0x00
   55CD 00 01 0C            813 	.byte  0x00, 0x01,  0x0C
   55D0 0F 01 00            814 	.byte  0x0F, 0x01,  0x00
   55D3 0E 01 0F            815 	.byte  0x0E, 0x01,  0x0F
   55D6 00 01 22            816 	.byte  0x00, 0x01,  0x22
   55D9 4B 66               817 	.word SMVB_continue_single
   55DB 9C 01 B8            818 	.byte -0x64, 0x01, -0x48
   55DE 4C 70               819 	.word SMVB_startMove_yd4_single
   55E0 14 01 00            820 	.byte  0x14, 0x01,  0x00
   55E3 4D BA               821 	.word SMVB_startDraw_single
   55E5 00 01 30            822 	.byte  0x00, 0x01,  0x30
   55E8 4B 3F               823 	.word SMVB_continue4_single
   55EA FA 01 00            824 	.byte -0x06, 0x01,  0x00
   55ED F2 01 EF            825 	.byte -0x0E, 0x01, -0x11
   55F0 00 01 E2            826 	.byte  0x00, 0x01, -0x1E
   55F3 DC 01 00            827 	.byte -0x24, 0x01,  0x00
   55F6 4C 70               828 	.word SMVB_startMove_single
   55F8 10 01 00            829 	.byte  0x10, 0x01,  0x00
   55FB 4D BA               830 	.word SMVB_startDraw_single
   55FD 00 01 18            831 	.byte  0x00, 0x01,  0x18
   5600 4B 3F               832 	.word SMVB_continue4_single
   5602 E2 01 00            833 	.byte -0x1E, 0x01,  0x00
   5605 00 01 F9            834 	.byte  0x00, 0x01, -0x07
   5608 0E 01 EF            835 	.byte  0x0E, 0x01, -0x11
   560B FE 00 00            836 	.byte  0xfe, 0x00,  0x00
   560E 4E D9               837 	.word SMVB_lastDraw_rts2
                            838  .globl _HomeList
   5610                     839 _HomeList: 
   5610 6C 01 08            840                     .byte       0x6C, 0x01, 0x08 
   5613 4B A7               841                     .word       SMVB_continue_tripple 
   5615 9C 01 84            842                     .byte       -0x64, 0x01, -0x7C 
   5618 4D 9A               843                     .word       SMVB_startDraw_yd4_double 
   561A F8 01 00            844                     .byte       -0x08, 0x01, 0x00 
   561D 4B 66               845                     .word       SMVB_continue_single 
   561F 00 01 56            846                     .byte       0x00, 0x01, 0x56 
   5622 4B C3               847                     .word       SMVB_continue_hex 
   5624 08 01 00            848                     .byte       0x08, 0x01, 0x00 
   5627 4B 66               849                     .word       SMVB_continue_single 
   5629 64 01 82            850                     .byte       0x64, 0x01, -0x7E 
   562C 4C 1C               851                     .word       SMVB_continue_double 
   562E 00 01 EC            852                     .byte       0x00, 0x01, -0x14 
   5631 4B 73               853                     .word       SMVB_continue_yd4_single 
   5633 A6 01 02            854                     .byte       -0x5A, 0x01, 0x02 
   5636 4E 08               855                     .word       SMVB_startMove_yd4_hex 
   5638 00 01 5C            856                     .byte       0x00, 0x01, 0x5C 
   563B 4C AD               857                     .word       SMVB_startDraw_tripple 
   563D 70 01 00            858                     .byte       0x70, 0x01, 0x00 
   5640 4C 1C               859                     .word       SMVB_continue_double 
   5642 00 01 A4            860                     .byte       0x00, 0x01, -0x5C 
   5645 4C 46               861                     .word       SMVB_continue_yd4_hex 
   5647 90 01 00            862                     .byte       -0x70, 0x01, 0x00 
   564A 4C 2A               863                     .word       SMVB_continue_yd4_double 
   564C 00 01 44            864                     .byte       0x00, 0x01, 0x44 
   564F 4C 1C               865                     .word       SMVB_continue_double 
   5651 70 01 00            866                     .byte       0x70, 0x01, 0x00 
   5654 4B 66               867                     .word       SMVB_continue_single 
   5656 00 01 46            868                     .byte       0x00, 0x01, 0x46 
   5659 4C 2A               869                     .word       SMVB_continue_yd4_double 
   565B 90 01 00            870                     .byte       -0x70, 0x01, 0x00 
   565E 4B 73               871                     .word       SMVB_continue_yd4_single 
   5660 E4 01 68            872                     .byte       -0x1C, 0x01, 0x68 
   5663 4D 0C               873                     .word       SMVB_startMove_quadro 
   5665 00 01 98            874                     .byte       0x00, 0x01, -0x68 
   5668 4C CD               875                     .word       SMVB_startDraw_octo 
   566A 6E 01 00            876                     .byte       0x6E, 0x01, 0x00 
   566D 4B B5               877                     .word       SMVB_continue_quadro 
   566F 53 01 67            878                     .byte       0x53, 0x01, 0x67 
   5672 4B B5               879                     .word       SMVB_continue_quadro 
   5674 AD 01 69            880                     .byte       -0x53, 0x01, 0x69 
   5677 4C 54               881                     .word       SMVB_continue_yd4_quadro 
   5679 92 01 00            882                     .byte       -0x6E, 0x01, 0x00 
   567C 4B B5               883                     .word       SMVB_continue_quadro 
   567E FE 00 00            884                     .byte       0xfe, 0x00, 0x00 
   5681 4E D9               885                     .word       SMVB_lastDraw_rts2 
                            886  .globl _StaircaseList
   5683                     887 _StaircaseList:
   5683 6A 01 BE            888 	.byte  0x6A, 0x01, -0x42
   5686 4B 66               889 	.word SMVB_continue_single
   5688 00 01 42            890 	.byte  0x00, 0x01,  0x42
   568B 4D 9A               891 	.word SMVB_startDraw_yd4_double
   568D 14 01 00            892 	.byte  0x14, 0x01,  0x00
   5690 4B 66               893 	.word SMVB_continue_single
   5692 00 01 BE            894 	.byte  0x00, 0x01, -0x42
   5695 4C 1C               895 	.word SMVB_continue_double
   5697 EC 01 00            896 	.byte -0x14, 0x01,  0x00
   569A 4B 66               897 	.word SMVB_continue_single
   569C D5 01 E5            898 	.byte -0x2B, 0x01, -0x1B
   569F 4C 70               899 	.word SMVB_startMove_single
   56A1 00 01 5D            900 	.byte  0x00, 0x01,  0x5D
   56A4 4C BD               901 	.word SMVB_startDraw_double
   56A6 13 01 00            902 	.byte  0x13, 0x01,  0x00
   56A9 4B 66               903 	.word SMVB_continue_single
   56AB 00 01 A3            904 	.byte  0x00, 0x01, -0x5D
   56AE 4C 1C               905 	.word SMVB_continue_double
   56B0 ED 01 00            906 	.byte -0x13, 0x01,  0x00
   56B3 4B 66               907 	.word SMVB_continue_single
   56B5 5D 01 74            908 	.byte  0x5D, 0x01,  0x74
   56B8 4C 9D               909 	.word SMVB_startMove_double
   56BA 92 01 00            910 	.byte -0x6E, 0x01,  0x00
   56BD 4D 9A               911 	.word SMVB_startDraw_yd4_double
   56BF 00 01 A3            912 	.byte  0x00, 0x01, -0x5D
   56C2 4B A7               913 	.word SMVB_continue_tripple
   56C4 6E 01 00            914 	.byte  0x6E, 0x01,  0x00
   56C7 4C 1C               915 	.word SMVB_continue_double
   56C9 00 01 5D            916 	.byte  0x00, 0x01,  0x5D
   56CC 4C 62               917 	.word SMVB_continue_yd4_tripple
   56CE F7 01 B6            918 	.byte -0x09, 0x01, -0x4A
   56D1 4C 70               919 	.word SMVB_startMove_single
   56D3 A0 01 00            920 	.byte -0x60, 0x01,  0x00
   56D6 4D BA               921 	.word SMVB_startDraw_yd4_single
   56D8 00 01 1B            922 	.byte  0x00, 0x01,  0x1B
   56DB 4B 4C               923 	.word SMVB_continue3_single
   56DD D9 01 00            924 	.byte -0x27, 0x01,  0x00
   56E0 00 01 15            925 	.byte  0x00, 0x01,  0x15
   56E3 43 01 00            926 	.byte  0x43, 0x01,  0x00
   56E6 4C 1C               927 	.word SMVB_continue_double
   56E8 00 01 D0            928 	.byte  0x00, 0x01, -0x30
   56EB 4B 75               929 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   56ED B3 01 90            930 	.byte -0x4D, 0x01, -0x70
   56F0 4C 70               931 	.word SMVB_startMove_yd4_single
   56F2 ED 01 00            932 	.byte -0x13, 0x01,  0x00
   56F5 4D BA               933 	.word SMVB_startDraw_single
   56F7 00 01 55            934 	.byte  0x00, 0x01,  0x55
   56FA 4B 4C               935 	.word SMVB_continue3_single
   56FC 13 01 00            936 	.byte  0x13, 0x01,  0x00
   56FF 00 01 AB            937 	.byte  0x00, 0x01, -0x55
   5702 0A 01 00            938 	.byte  0x0A, 0x01,  0x00
   5705 4C 70               939 	.word SMVB_startMove_single
   5707 43 01 00            940 	.byte  0x43, 0x01,  0x00
   570A 4D BA               941 	.word SMVB_startDraw_single
   570C 00 01 2E            942 	.byte  0x00, 0x01,  0x2E
   570F 4B 75               943 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   5711 F6 01 00            944 	.byte -0x0A, 0x01,  0x00
   5714 4B 59               945 	.word SMVB_continue2_single
   5716 00 01 13            946 	.byte  0x00, 0x01,  0x13
   5719 C7 01 00            947 	.byte -0x39, 0x01,  0x00
   571C 4B 73               948 	.word SMVB_continue_yd4_single
   571E 00 01 BF            949 	.byte  0x00, 0x01, -0x41
   5721 4B 68               950 	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
   5723 43 01 B6            951 	.byte  0x43, 0x01, -0x4A
   5726 4C 70               952 	.word SMVB_startMove_single
   5728 BD 01 00            953 	.byte -0x43, 0x01,  0x00
   572B 4D 9A               954 	.word SMVB_startDraw_yd4_double
   572D 00 01 1B            955 	.byte  0x00, 0x01,  0x1B
   5730 4B 3F               956 	.word SMVB_continue4_single
   5732 27 01 00            957 	.byte  0x27, 0x01,  0x00
   5735 00 01 1B            958 	.byte  0x00, 0x01,  0x1B
   5738 60 01 00            959 	.byte  0x60, 0x01,  0x00
   573B 00 01 CA            960 	.byte  0x00, 0x01, -0x36
   573E 4B 75               961 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   5740 FE 00 00            962 	.byte  0xfe, 0x00,  0x00
   5743 4E D9               963 	.word SMVB_lastDraw_rts2
                            964  .globl _GnollList
   5745                     965 _GnollList:
   5745 5E 01 D2            966 	.byte  0x5E, 0x01, -0x2E
   5748 4C 1C               967 	.word SMVB_continue_double
   574A 05 01 00            968 	.byte  0x05, 0x01,  0x00
   574D 4D BA               969 	.word SMVB_startDraw_yd4_single
   574F 00 01 CD            970 	.byte  0x00, 0x01, -0x33
   5752 4B 25               971 	.word SMVB_continue6_single
   5754 F6 01 EF            972 	.byte -0x0A, 0x01, -0x11
   5757 E1 01 00            973 	.byte -0x1F, 0x01,  0x00
   575A 00 01 22            974 	.byte  0x00, 0x01,  0x22
   575D EC 01 00            975 	.byte -0x14, 0x01,  0x00
   5760 F7 01 DE            976 	.byte -0x09, 0x01, -0x22
   5763 C2 01 00            977 	.byte -0x3E, 0x01,  0x00
   5766 4B 73               978 	.word SMVB_continue_yd4_single
   5768 F8 01 10            979 	.byte -0x08, 0x01,  0x10
   576B 4B 18               980 	.word SMVB_continue7_single
   576D CB 01 01            981 	.byte -0x35, 0x01,  0x01
   5770 00 01 3E            982 	.byte  0x00, 0x01,  0x3E
   5773 11 01 F9            983 	.byte  0x11, 0x01, -0x07
   5776 04 01 EC            984 	.byte  0x04, 0x01, -0x14
   5779 28 01 00            985 	.byte  0x28, 0x01,  0x00
   577C 07 01 13            986 	.byte  0x07, 0x01,  0x13
   577F 08 01 11            987 	.byte  0x08, 0x01,  0x11
   5782 4B 4C               988 	.word SMVB_continue3_single
   5784 10 01 0E            989 	.byte  0x10, 0x01,  0x0E
   5787 00 01 54            990 	.byte  0x00, 0x01,  0x54
   578A A4 01 00            991 	.byte -0x5C, 0x01,  0x00
   578D 4B 73               992 	.word SMVB_continue_yd4_single
   578F 00 01 10            993 	.byte  0x00, 0x01,  0x10
   5792 4B 59               994 	.word SMVB_continue2_single
   5794 5C 01 00            995 	.byte  0x5C, 0x01,  0x00
   5797 00 01 11            996 	.byte  0x00, 0x01,  0x11
   579A 4B 75               997 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   579C 14 01 00            998 	.byte  0x14, 0x01,  0x00
   579F 4B 18               999 	.word SMVB_continue7_single
   57A1 00 01 EF           1000 	.byte  0x00, 0x01, -0x11
   57A4 14 01 00           1001 	.byte  0x14, 0x01,  0x00
   57A7 00 01 11           1002 	.byte  0x00, 0x01,  0x11
   57AA 14 01 00           1003 	.byte  0x14, 0x01,  0x00
   57AD 0A 01 EF           1004 	.byte  0x0A, 0x01, -0x11
   57B0 00 01 F0           1005 	.byte  0x00, 0x01, -0x10
   57B3 F6 01 F0           1006 	.byte -0x0A, 0x01, -0x10
   57B6 4B 18              1007 	.word SMVB_continue7_single
   57B8 EC 01 00           1008 	.byte -0x14, 0x01,  0x00
   57BB 00 01 10           1009 	.byte  0x00, 0x01,  0x10
   57BE EC 01 00           1010 	.byte -0x14, 0x01,  0x00
   57C1 00 01 AC           1011 	.byte  0x00, 0x01, -0x54
   57C4 0B 01 EF           1012 	.byte  0x0B, 0x01, -0x11
   57C7 09 01 EF           1013 	.byte  0x09, 0x01, -0x11
   57CA 0A 01 00           1014 	.byte  0x0A, 0x01,  0x00
   57CD 4B 18              1015 	.word SMVB_continue7_single
   57CF 00 01 44           1016 	.byte  0x00, 0x01,  0x44
   57D2 0A 01 00           1017 	.byte  0x0A, 0x01,  0x00
   57D5 00 01 CD           1018 	.byte  0x00, 0x01, -0x33
   57D8 0A 01 33           1019 	.byte  0x0A, 0x01,  0x33
   57DB 15 01 00           1020 	.byte  0x15, 0x01,  0x00
   57DE 00 01 BC           1021 	.byte  0x00, 0x01, -0x44
   57E1 05 01 00           1022 	.byte  0x05, 0x01,  0x00
   57E4 4B 66              1023 	.word SMVB_continue_single
   57E6 F7 01 DE           1024 	.byte -0x09, 0x01, -0x22
   57E9 4C 70              1025 	.word SMVB_startMove_single
   57EB 05 01 00           1026 	.byte  0x05, 0x01,  0x00
   57EE 4D BA              1027 	.word SMVB_startDraw_single
   57F0 00 01 11           1028 	.byte  0x00, 0x01,  0x11
   57F3 4B 3F              1029 	.word SMVB_continue4_single
   57F5 F6 01 00           1030 	.byte -0x0A, 0x01,  0x00
   57F8 00 01 EF           1031 	.byte  0x00, 0x01, -0x11
   57FB 05 01 00           1032 	.byte  0x05, 0x01,  0x00
   57FE FE 00 00           1033 	.byte  0xfe, 0x00,  0x00
   5801 4E D9              1034 	.word SMVB_lastDraw_rts2
                           1035  .globl _KoboldList
   5803                    1036 _KoboldList:
   5803 41 01 C7           1037 	.byte  0x41, 0x01, -0x39
   5806 4C 1C              1038 	.word SMVB_continue_double
   5808 0F 01 06           1039 	.byte  0x0F, 0x01,  0x06
   580B 4D BA              1040 	.word SMVB_startDraw_single
   580D 0B 01 0B           1041 	.byte  0x0B, 0x01,  0x0B
   5810 4B 18              1042 	.word SMVB_continue7_single
   5812 00 01 25           1043 	.byte  0x00, 0x01,  0x25
   5815 F4 01 0B           1044 	.byte -0x0C, 0x01,  0x0B
   5818 00 01 2A           1045 	.byte  0x00, 0x01,  0x2A
   581B E7 01 00           1046 	.byte -0x19, 0x01,  0x00
   581E F3 01 DC           1047 	.byte -0x0D, 0x01, -0x24
   5821 00 01 24           1048 	.byte  0x00, 0x01,  0x24
   5824 F3 01 FC           1049 	.byte -0x0D, 0x01, -0x04
   5827 4B 18              1050 	.word SMVB_continue7_single
   5829 FF 01 CA           1051 	.byte -0x01, 0x01, -0x36
   582C F5 01 09           1052 	.byte -0x0B, 0x01,  0x09
   582F FF 01 0E           1053 	.byte -0x01, 0x01,  0x0E
   5832 F6 01 04           1054 	.byte -0x0A, 0x01,  0x04
   5835 00 01 35           1055 	.byte  0x00, 0x01,  0x35
   5838 29 01 36           1056 	.byte  0x29, 0x01,  0x36
   583B 09 01 0E           1057 	.byte  0x09, 0x01,  0x0E
   583E 4B 18              1058 	.word SMVB_continue7_single
   5840 EA 01 F3           1059 	.byte -0x16, 0x01, -0x0D
   5843 D6 01 CB           1060 	.byte -0x2A, 0x01, -0x35
   5846 00 01 C9           1061 	.byte  0x00, 0x01, -0x37
   5849 F1 01 FC           1062 	.byte -0x0F, 0x01, -0x04
   584C F6 01 E1           1063 	.byte -0x0A, 0x01, -0x1F
   584F E7 01 00           1064 	.byte -0x19, 0x01,  0x00
   5852 00 01 0F           1065 	.byte  0x00, 0x01,  0x0F
   5855 4B 18              1066 	.word SMVB_continue7_single
   5857 F3 01 04           1067 	.byte -0x0D, 0x01,  0x04
   585A 00 01 C8           1068 	.byte  0x00, 0x01, -0x38
   585D 15 01 06           1069 	.byte  0x15, 0x01,  0x06
   5860 0A 01 F5           1070 	.byte  0x0A, 0x01, -0x0B
   5863 0D 01 F9           1071 	.byte  0x0D, 0x01, -0x07
   5866 1F 01 FC           1072 	.byte  0x1F, 0x01, -0x04
   5869 0B 01 0F           1073 	.byte  0x0B, 0x01,  0x0F
   586C 4B 32              1074 	.word SMVB_continue5_single
   586E 02 01 0E           1075 	.byte  0x02, 0x01,  0x0E
   5871 07 01 FF           1076 	.byte  0x07, 0x01, -0x01
   5874 02 01 EF           1077 	.byte  0x02, 0x01, -0x11
   5877 26 01 00           1078 	.byte  0x26, 0x01,  0x00
   587A 0C 01 36           1079 	.byte  0x0C, 0x01,  0x36
   587D 4C 70              1080 	.word SMVB_startMove_single
   587F 00 01 EE           1081 	.byte  0x00, 0x01, -0x12
   5882 4D BA              1082 	.word SMVB_startDraw_single
   5884 F3 01 00           1083 	.byte -0x0D, 0x01,  0x00
   5887 4B 4C              1084 	.word SMVB_continue3_single
   5889 00 01 12           1085 	.byte  0x00, 0x01,  0x12
   588C 0C 01 00           1086 	.byte  0x0C, 0x01,  0x00
   588F FE 00 00           1087 	.byte  0xfe, 0x00,  0x00
   5892 4E D9              1088 	.word SMVB_lastDraw_rts2
                           1089  .globl _SkeletonList
   5894                    1090 _SkeletonList:
   5894 6A 01 C7           1091 	.byte  0x6A, 0x01, -0x39
   5897 4C 1C              1092 	.word SMVB_continue_double
   5899 F3 01 00           1093 	.byte -0x0D, 0x01,  0x00
   589C 4D BA              1094 	.word SMVB_startDraw_yd4_single
   589E 00 01 12           1095 	.byte  0x00, 0x01,  0x12
   58A1 4C 1C              1096 	.word SMVB_continue_double
   58A3 0C 01 00           1097 	.byte  0x0C, 0x01,  0x00
   58A6 4B 18              1098 	.word SMVB_continue7_single
   58A8 01 01 13           1099 	.byte  0x01, 0x01,  0x13
   58AB F3 01 00           1100 	.byte -0x0D, 0x01,  0x00
   58AE 00 01 ED           1101 	.byte  0x00, 0x01, -0x13
   58B1 F2 01 FB           1102 	.byte -0x0E, 0x01, -0x05
   58B4 00 01 F8           1103 	.byte  0x00, 0x01, -0x08
   58B7 0E 01 FB           1104 	.byte  0x0E, 0x01, -0x05
   58BA 0C 01 FF           1105 	.byte  0x0C, 0x01, -0x01
   58BD 4B 59              1106 	.word SMVB_continue2_single
   58BF 01 01 EF           1107 	.byte  0x01, 0x01, -0x11
   58C2 C3 01 10           1108 	.byte -0x3D, 0x01,  0x10
   58C5 4C 70              1109 	.word SMVB_startMove_yd4_single
   58C7 A1 01 09           1110 	.byte -0x5F, 0x01,  0x09
   58CA 4D BA              1111 	.word SMVB_startDraw_single
   58CC 60 01 0A           1112 	.byte  0x60, 0x01,  0x0A
   58CF 4B 66              1113 	.word SMVB_continue_single
   58D1 E3 01 27           1114 	.byte -0x1D, 0x01,  0x27
   58D4 4C 70              1115 	.word SMVB_startMove_yd4_single
   58D6 07 01 DB           1116 	.byte  0x07, 0x01, -0x25
   58D9 4D BA              1117 	.word SMVB_startDraw_single
   58DB 05 01 FE           1118 	.byte  0x05, 0x01, -0x02
   58DE 4B 66              1119 	.word SMVB_continue_single
   58E0 FF 01 EC           1120 	.byte -0x01, 0x01, -0x14
   58E3 4C 70              1121 	.word SMVB_startMove_single
   58E5 FC 01 FF           1122 	.byte -0x04, 0x01, -0x01
   58E8 4D BA              1123 	.word SMVB_startDraw_single
   58EA FA 01 DC           1124 	.byte -0x06, 0x01, -0x24
   58ED 4B 66              1125 	.word SMVB_continue_single
   58EF D5 01 A7           1126 	.byte -0x2B, 0x01, -0x59
   58F2 4C 70              1127 	.word SMVB_startMove_single
   58F4 09 01 13           1128 	.byte  0x09, 0x01,  0x13
   58F7 4D BA              1129 	.word SMVB_startDraw_single
   58F9 04 01 11           1130 	.byte  0x04, 0x01,  0x11
   58FC 4B 4C              1131 	.word SMVB_continue3_single
   58FE F1 01 F6           1132 	.byte -0x0F, 0x01, -0x0A
   5901 F5 01 F8           1133 	.byte -0x0B, 0x01, -0x08
   5904 08 01 16           1134 	.byte  0x08, 0x01,  0x16
   5907 4C 70              1135 	.word SMVB_startMove_single
   5909 12 01 FB           1136 	.byte  0x12, 0x01, -0x05
   590C 4D BA              1137 	.word SMVB_startDraw_single
   590E 0C 01 04           1138 	.byte  0x0C, 0x01,  0x04
   5911 4B 18              1139 	.word SMVB_continue7_single
   5913 18 01 11           1140 	.byte  0x18, 0x01,  0x11
   5916 1A 01 1C           1141 	.byte  0x1A, 0x01,  0x1C
   5919 00 01 2A           1142 	.byte  0x00, 0x01,  0x2A
   591C 08 01 FE           1143 	.byte  0x08, 0x01, -0x02
   591F 24 01 E4           1144 	.byte  0x24, 0x01, -0x1C
   5922 1A 01 00           1145 	.byte  0x1A, 0x01,  0x00
   5925 0C 01 0D           1146 	.byte  0x0C, 0x01,  0x0D
   5928 4B 18              1147 	.word SMVB_continue7_single
   592A 00 01 37           1148 	.byte  0x00, 0x01,  0x37
   592D F5 01 0E           1149 	.byte -0x0B, 0x01,  0x0E
   5930 E6 01 00           1150 	.byte -0x1A, 0x01,  0x00
   5933 DD 01 E2           1151 	.byte -0x23, 0x01, -0x1E
   5936 F6 01 FC           1152 	.byte -0x0A, 0x01, -0x04
   5939 00 01 25           1153 	.byte  0x00, 0x01,  0x25
   593C E5 01 15           1154 	.byte -0x1B, 0x01,  0x15
   593F 4B 3F              1155 	.word SMVB_continue4_single
   5941 F1 01 24           1156 	.byte -0x0F, 0x01,  0x24
   5944 11 01 11           1157 	.byte  0x11, 0x01,  0x11
   5947 14 01 0F           1158 	.byte  0x14, 0x01,  0x0F
   594A F5 01 13           1159 	.byte -0x0B, 0x01,  0x13
   594D 4C 70              1160 	.word SMVB_startMove_single
   594F F4 01 F4           1161 	.byte -0x0C, 0x01, -0x0C
   5952 4D EB              1162 	.word SMVB_startDraw_yEqx_single; y is -0x0C
   5954 04 01 E9           1163 	.byte  0x04, 0x01, -0x17
   5957 4B 59              1164 	.word SMVB_continue2_single
   5959 F4 01 08           1165 	.byte -0x0C, 0x01,  0x08
   595C F8 01 AE           1166 	.byte -0x08, 0x01, -0x52
   595F 4C 70              1167 	.word SMVB_startMove_single
   5961 03 01 E2           1168 	.byte  0x03, 0x01, -0x1E
   5964 4D BA              1169 	.word SMVB_startDraw_single
   5966 09 01 FD           1170 	.byte  0x09, 0x01, -0x03
   5969 4B 66              1171 	.word SMVB_continue_single
   596B 00 01 EB           1172 	.byte  0x00, 0x01, -0x15
   596E 4C 70              1173 	.word SMVB_startMove_single
   5970 FB 01 01           1174 	.byte -0x05, 0x01,  0x01
   5973 4D BA              1175 	.word SMVB_startDraw_single
   5975 FA 01 E2           1176 	.byte -0x06, 0x01, -0x1E
   5978 4B 66              1177 	.word SMVB_continue_single
   597A EF 01 02           1178 	.byte -0x11, 0x01,  0x02
   597D 4C 70              1179 	.word SMVB_startMove_single
   597F 05 01 1E           1180 	.byte  0x05, 0x01,  0x1E
   5982 4D BA              1181 	.word SMVB_startDraw_single
   5984 DA 01 FD           1182 	.byte -0x26, 0x01, -0x03
   5987 4C 70              1183 	.word SMVB_startMove_single
   5989 DD 01 E7           1184 	.byte -0x23, 0x01, -0x19
   598C 4D BA              1185 	.word SMVB_startDraw_single
   598E D8 01 F1           1186 	.byte -0x28, 0x01, -0x0F
   5991 4B 66              1187 	.word SMVB_continue_single
   5993 0E 01 D6           1188 	.byte  0x0E, 0x01, -0x2A
   5996 4C 70              1189 	.word SMVB_startMove_single
   5998 F8 01 07           1190 	.byte -0x08, 0x01,  0x07
   599B 4D BA              1191 	.word SMVB_startDraw_single
   599D F9 01 0E           1192 	.byte -0x07, 0x01,  0x0E
   59A0 4B 32              1193 	.word SMVB_continue5_single
   59A2 00 01 10           1194 	.byte  0x00, 0x01,  0x10
   59A5 2C 01 09           1195 	.byte  0x2C, 0x01,  0x09
   59A8 28 01 1B           1196 	.byte  0x28, 0x01,  0x1B
   59AB 05 01 0B           1197 	.byte  0x05, 0x01,  0x0B
   59AE 07 01 FD           1198 	.byte  0x07, 0x01, -0x03
   59B1 4C 70              1199 	.word SMVB_startMove_single
   59B3 01 01 EE           1200 	.byte SHITREG_POKE_VALUE, 0x01, -0x12
   59B6 4E 95              1201 	.word SMVB_startDraw_newY_eq_oldX_single ; y was -0x03, now SHIFT
   59B8 13 01 27           1202 	.byte  0x13, 0x01,  0x27
   59BB 4C 70              1203 	.word SMVB_startMove_single
   59BD FB 01 1B           1204 	.byte -0x05, 0x01,  0x1B
   59C0 4D BA              1205 	.word SMVB_startDraw_single
   59C2 F3 01 F9           1206 	.byte -0x0D, 0x01, -0x07
   59C5 4C 70              1207 	.word SMVB_startMove_single
   59C7 03 01 EE           1208 	.byte  0x03, 0x01, -0x12
   59CA 4D BA              1209 	.word SMVB_startDraw_single
   59CC A2 01 1D           1210 	.byte -0x5E, 0x01,  0x1D
   59CF 4C 70              1211 	.word SMVB_startMove_yd4_single
   59D1 2B 01 F5           1212 	.byte  0x2B, 0x01, -0x0B
   59D4 4D BA              1213 	.word SMVB_startDraw_single
   59D6 1F 01 EB           1214 	.byte  0x1F, 0x01, -0x15
   59D9 4B 66              1215 	.word SMVB_continue_single
   59DB 0D 01 00           1216 	.byte  0x0D, 0x01,  0x00
   59DE 4C 70              1217 	.word SMVB_startMove_single
   59E0 FA 01 08           1218 	.byte -0x06, 0x01,  0x08
   59E3 4D BA              1219 	.word SMVB_startDraw_single
   59E5 DE 01 18           1220 	.byte -0x22, 0x01,  0x18
   59E8 4B 32              1221 	.word SMVB_continue5_single
   59EA D1 01 05           1222 	.byte -0x2F, 0x01,  0x05
   59ED 00 01 13           1223 	.byte  0x00, 0x01,  0x13
   59F0 05 01 0E           1224 	.byte  0x05, 0x01,  0x0E
   59F3 06 01 07           1225 	.byte  0x06, 0x01,  0x07
   59F6 5C 01 CE           1226 	.byte  0x5C, 0x01, -0x32
   59F9 4C 9D              1227 	.word SMVB_startMove_double
   59FB 02 01 0E           1228 	.byte  0x02, 0x01,  0x0E
   59FE 4D BA              1229 	.word SMVB_startDraw_yd4_single
   5A00 FE 01 0F           1230 	.byte -0x02, 0x01,  0x0F
   5A03 4B 66              1231 	.word SMVB_continue_single
   5A05 FE 00 00           1232 	.byte  0xfe, 0x00,  0x00
   5A08 4E D9              1233 	.word SMVB_lastDraw_rts2
                           1234  .globl _HobbitList
   5A0A                    1235 _HobbitList:
   5A0A 27 01 27           1236 	.byte  0x27, 0x01,  0x27
   5A0D 4B 9B              1237 	.word SMVB_continue_yEqx_single; y is  0x27
   5A0F 0C 01 1E           1238 	.byte  0x0C, 0x01,  0x1E
   5A12 4D BA              1239 	.word SMVB_startDraw_single
   5A14 0D 01 E4           1240 	.byte  0x0D, 0x01, -0x1C
   5A17 4B 66              1241 	.word SMVB_continue_single
   5A19 F4 01 1A           1242 	.byte -0x0C, 0x01,  0x1A
   5A1C 4C 70              1243 	.word SMVB_startMove_single
   5A1E 08 01 9E           1244 	.byte  0x08, 0x01, -0x62
   5A21 4D BA              1245 	.word SMVB_startDraw_single
   5A23 06 01 EA           1246 	.byte  0x06, 0x01, -0x16
   5A26 4C 70              1247 	.word SMVB_startMove_single
   5A28 4D 01 08           1248 	.byte  0x4D, 0x01,  0x08
   5A2B 4D BA              1249 	.word SMVB_startDraw_single
   5A2D F6 01 1B           1250 	.byte -0x0A, 0x01,  0x1B
   5A30 4B 73              1251 	.word SMVB_continue_yd4_single
   5A32 E5 01 19           1252 	.byte -0x1B, 0x01,  0x19
   5A35 4B 32              1253 	.word SMVB_continue5_single
   5A37 B9 01 F7           1254 	.byte -0x47, 0x01, -0x09
   5A3A EB 01 E9           1255 	.byte -0x15, 0x01, -0x17
   5A3D FC 01 DC           1256 	.byte -0x04, 0x01, -0x24
   5A40 2B 01 06           1257 	.byte  0x2B, 0x01,  0x06
   5A43 14 01 E3           1258 	.byte  0x14, 0x01, -0x1D
   5A46 4C 70              1259 	.word SMVB_startMove_single
   5A48 0F 01 FC           1260 	.byte  0x0F, 0x01, -0x04
   5A4B 4D BA              1261 	.word SMVB_startDraw_single
   5A4D 04 01 F1           1262 	.byte  0x04, 0x01, -0x0F
   5A50 4B 18              1263 	.word SMVB_continue7_single
   5A52 0E 01 00           1264 	.byte  0x0E, 0x01,  0x00
   5A55 04 01 0E           1265 	.byte  0x04, 0x01,  0x0E
   5A58 12 01 FE           1266 	.byte  0x12, 0x01, -0x02
   5A5B 00 01 11           1267 	.byte  0x00, 0x01,  0x11
   5A5E 0F 01 EE           1268 	.byte  0x0F, 0x01, -0x12
   5A61 0A 01 FF           1269 	.byte  0x0A, 0x01, -0x01
   5A64 00 01 E5           1270 	.byte  0x00, 0x01, -0x1B
   5A67 4B 18              1271 	.word SMVB_continue7_single
   5A69 08 01 00           1272 	.byte  0x08, 0x01,  0x00
   5A6C 00 01 17           1273 	.byte  0x00, 0x01,  0x17
   5A6F 09 01 00           1274 	.byte  0x09, 0x01,  0x00
   5A72 00 01 D3           1275 	.byte  0x00, 0x01, -0x2D
   5A75 FA 01 F0           1276 	.byte -0x06, 0x01, -0x10
   5A78 E8 01 FE           1277 	.byte -0x18, 0x01, -0x02
   5A7B D5 01 0F           1278 	.byte -0x2B, 0x01,  0x0F
   5A7E 4C 70              1279 	.word SMVB_startMove_single
   5A80 00 01 29           1280 	.byte  0x00, 0x01,  0x29
   5A83 4D BA              1281 	.word SMVB_startDraw_single
   5A85 F3 01 00           1282 	.byte -0x0D, 0x01,  0x00
   5A88 4C 70              1283 	.word SMVB_startMove_single
   5A8A F4 01 15           1284 	.byte -0x0C, 0x01,  0x15
   5A8D 4D BA              1285 	.word SMVB_startDraw_single
   5A8F F9 01 26           1286 	.byte -0x07, 0x01,  0x26
   5A92 4B 18              1287 	.word SMVB_continue7_single
   5A94 03 01 10           1288 	.byte  0x03, 0x01,  0x10
   5A97 F4 01 F9           1289 	.byte -0x0C, 0x01, -0x07
   5A9A F2 01 05           1290 	.byte -0x0E, 0x01,  0x05
   5A9D 0A 01 F1           1291 	.byte  0x0A, 0x01, -0x0F
   5AA0 03 01 D8           1292 	.byte  0x03, 0x01, -0x28
   5AA3 09 01 DE           1293 	.byte  0x09, 0x01, -0x22
   5AA6 E6 01 E1           1294 	.byte -0x1A, 0x01, -0x1F
   5AA9 4C 70              1295 	.word SMVB_startMove_single
   5AAB 00 01 3D           1296 	.byte  0x00, 0x01,  0x3D
   5AAE 4D BA              1297 	.word SMVB_startDraw_single
   5AB0 0F 01 03           1298 	.byte  0x0F, 0x01,  0x03
   5AB3 4C 70              1299 	.word SMVB_startMove_single
   5AB5 CA 01 F5           1300 	.byte -0x36, 0x01, -0x0B
   5AB8 4D BA              1301 	.word SMVB_startDraw_yd4_single
   5ABA 00 01 1C           1302 	.byte  0x00, 0x01,  0x1C
   5ABD 4B 18              1303 	.word SMVB_continue7_single
   5ABF F4 01 0D           1304 	.byte -0x0C, 0x01,  0x0D
   5AC2 00 01 A0           1305 	.byte  0x00, 0x01, -0x60
   5AC5 16 01 12           1306 	.byte  0x16, 0x01,  0x12
   5AC8 18 01 F4           1307 	.byte  0x18, 0x01, -0x0C
   5ACB 0A 01 F1           1308 	.byte  0x0A, 0x01, -0x0F
   5ACE 28 01 03           1309 	.byte  0x28, 0x01,  0x03
   5AD1 06 01 0E           1310 	.byte  0x06, 0x01,  0x0E
   5AD4 4B 18              1311 	.word SMVB_continue7_single
   5AD6 0E 01 00           1312 	.byte  0x0E, 0x01,  0x00
   5AD9 00 01 E9           1313 	.byte  0x00, 0x01, -0x17
   5ADC 0D 01 F6           1314 	.byte  0x0D, 0x01, -0x0A
   5ADF 32 01 00           1315 	.byte  0x32, 0x01,  0x00
   5AE2 09 01 1D           1316 	.byte  0x09, 0x01,  0x1D
   5AE5 00 01 2B           1317 	.byte  0x00, 0x01,  0x2B
   5AE8 FB 01 0D           1318 	.byte -0x05, 0x01,  0x0D
   5AEB 4B 66              1319 	.word SMVB_continue_single
   5AED FE 00 00           1320 	.byte  0xfe, 0x00,  0x00
   5AF0 4E D9              1321 	.word SMVB_lastDraw_rts2
                           1322  .globl _ZombieList
   5AF2                    1323 _ZombieList:
   5AF2 36 01 A2           1324 	.byte  0x36, 0x01, -0x5E
   5AF5 4B 66              1325 	.word SMVB_continue_single
   5AF7 A7 01 FC           1326 	.byte -0x59, 0x01, -0x04
   5AFA 4D BA              1327 	.word SMVB_startDraw_yd4_single
   5AFC 00 01 D5           1328 	.byte  0x00, 0x01, -0x2B
   5AFF 4B 3F              1329 	.word SMVB_continue4_single
   5B01 0F 01 00           1330 	.byte  0x0F, 0x01,  0x00
   5B04 04 01 15           1331 	.byte  0x04, 0x01,  0x15
   5B07 46 01 06           1332 	.byte  0x46, 0x01,  0x06
   5B0A 00 01 14           1333 	.byte  0x00, 0x01,  0x14
   5B0D 4B 73              1334 	.word SMVB_continue_yd4_single
   5B0F 00 01 20           1335 	.byte  0x00, 0x01,  0x20
   5B12 4D 69              1336 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   5B14 B6 01 08           1337 	.byte -0x4A, 0x01,  0x08
   5B17 4D BA              1338 	.word SMVB_startDraw_yd4_single
   5B19 00 01 14           1339 	.byte  0x00, 0x01,  0x14
   5B1C 4B 3F              1340 	.word SMVB_continue4_single
   5B1E F1 01 00           1341 	.byte -0x0F, 0x01,  0x00
   5B21 00 01 D7           1342 	.byte  0x00, 0x01, -0x29
   5B24 59 01 FA           1343 	.byte  0x59, 0x01, -0x06
   5B27 00 01 13           1344 	.byte  0x00, 0x01,  0x13
   5B2A 4B 73              1345 	.word SMVB_continue_yd4_single
   5B2C 0E 01 00           1346 	.byte  0x0E, 0x01,  0x00
   5B2F 4C 70              1347 	.word SMVB_startMove_single
   5B31 01 01 E0           1348 	.byte SHITREG_POKE_VALUE, 0x01, -0x20
   5B34 4E 95              1349 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   5B36 16 01 00           1350 	.byte  0x16, 0x01,  0x00
   5B39 4B 3F              1351 	.word SMVB_continue4_single
   5B3B 16 01 11           1352 	.byte  0x16, 0x01,  0x11
   5B3E 00 01 13           1353 	.byte  0x00, 0x01,  0x13
   5B41 D4 01 FC           1354 	.byte -0x2C, 0x01, -0x04
   5B44 22 01 E2           1355 	.byte  0x22, 0x01, -0x1E
   5B47 4C 70              1356 	.word SMVB_startMove_single
   5B49 F9 01 F2           1357 	.byte -0x07, 0x01, -0x0E
   5B4C 4D BA              1358 	.word SMVB_startDraw_single
   5B4E E4 01 04           1359 	.byte -0x1C, 0x01,  0x04
   5B51 4B 4C              1360 	.word SMVB_continue3_single
   5B53 00 01 F4           1361 	.byte  0x00, 0x01, -0x0C
   5B56 3B 01 FD           1362 	.byte  0x3B, 0x01, -0x03
   5B59 00 01 EE           1363 	.byte  0x00, 0x01, -0x12
   5B5C 4B 73              1364 	.word SMVB_continue_yd4_single
   5B5E CF 01 D8           1365 	.byte -0x31, 0x01, -0x28
   5B61 4B 18              1366 	.word SMVB_continue7_single
   5B63 E9 01 F4           1367 	.byte -0x17, 0x01, -0x0C
   5B66 0E 01 FD           1368 	.byte  0x0E, 0x01, -0x03
   5B69 00 01 EE           1369 	.byte  0x00, 0x01, -0x12
   5B6C 0E 01 FD           1370 	.byte  0x0E, 0x01, -0x03
   5B6F 02 01 15           1371 	.byte  0x02, 0x01,  0x15
   5B72 3A 01 2A           1372 	.byte  0x3A, 0x01,  0x2A
   5B75 FF 01 1D           1373 	.byte -0x01, 0x01,  0x1D
   5B78 4B 73              1374 	.word SMVB_continue_yd4_single
   5B7A DA 01 1C           1375 	.byte -0x26, 0x01,  0x1C
   5B7D 4B 66              1376 	.word SMVB_continue_single
   5B7F 71 01 DB           1377 	.byte  0x71, 0x01, -0x25
   5B82 4C 70              1378 	.word SMVB_startMove_single
   5B84 F2 01 00           1379 	.byte -0x0E, 0x01,  0x00
   5B87 4D BA              1380 	.word SMVB_startDraw_yd4_single
   5B89 00 01 17           1381 	.byte  0x00, 0x01,  0x17
   5B8C 4B 59              1382 	.word SMVB_continue2_single
   5B8E 0E 01 E9           1383 	.byte  0x0E, 0x01, -0x17
   5B91 EA 01 22           1384 	.byte -0x16, 0x01,  0x22
   5B94 4C 70              1385 	.word SMVB_startMove_single
   5B96 F4 01 F0           1386 	.byte -0x0C, 0x01, -0x10
   5B99 4D BA              1387 	.word SMVB_startDraw_single
   5B9B F8 01 FC           1388 	.byte -0x08, 0x01, -0x04
   5B9E 4B 32              1389 	.word SMVB_continue5_single
   5BA0 00 01 39           1390 	.byte  0x00, 0x01,  0x39
   5BA3 07 01 FB           1391 	.byte  0x07, 0x01, -0x05
   5BA6 0D 01 EF           1392 	.byte  0x0D, 0x01, -0x11
   5BA9 00 01 F3           1393 	.byte  0x00, 0x01, -0x0D
   5BAC 09 01 19           1394 	.byte  0x09, 0x01,  0x19
   5BAF 4C 70              1395 	.word SMVB_startMove_single
   5BB1 00 01 17           1396 	.byte  0x00, 0x01,  0x17
   5BB4 4D BA              1397 	.word SMVB_startDraw_single
   5BB6 0E 01 00           1398 	.byte  0x0E, 0x01,  0x00
   5BB9 4B 59              1399 	.word SMVB_continue2_single
   5BBB F2 01 E9           1400 	.byte -0x0E, 0x01, -0x17
   5BBE 1E 01 12           1401 	.byte  0x1E, 0x01,  0x12
   5BC1 4C 70              1402 	.word SMVB_startMove_single
   5BC3 E9 01 11           1403 	.byte -0x17, 0x01,  0x11
   5BC6 4D BA              1404 	.word SMVB_startDraw_yd4_single
   5BC8 E1 01 00           1405 	.byte -0x1F, 0x01,  0x00
   5BCB 4B 32              1406 	.word SMVB_continue5_single
   5BCD EB 01 EF           1407 	.byte -0x15, 0x01, -0x11
   5BD0 FB 01 E6           1408 	.byte -0x05, 0x01, -0x1A
   5BD3 F4 01 02           1409 	.byte -0x0C, 0x01,  0x02
   5BD6 04 01 2E           1410 	.byte  0x04, 0x01,  0x2E
   5BD9 C4 01 2E           1411 	.byte -0x3C, 0x01,  0x2E
   5BDC 4B 73              1412 	.word SMVB_continue_yd4_single
   5BDE 00 01 12           1413 	.byte  0x00, 0x01,  0x12
   5BE1 4B 25              1414 	.word SMVB_continue6_single
   5BE3 F5 01 F8           1415 	.byte -0x0B, 0x01, -0x08
   5BE6 FD 01 F3           1416 	.byte -0x03, 0x01, -0x0D
   5BE9 F3 01 FD           1417 	.byte -0x0D, 0x01, -0x03
   5BEC 16 01 F5           1418 	.byte  0x16, 0x01, -0x0B
   5BEF 33 01 D7           1419 	.byte  0x33, 0x01, -0x29
   5BF2 00 01 D7           1420 	.byte  0x00, 0x01, -0x29
   5BF5 4B 73              1421 	.word SMVB_continue_yd4_single
   5BF7 ED 01 FB           1422 	.byte -0x13, 0x01, -0x05
   5BFA 4B 18              1423 	.word SMVB_continue7_single
   5BFC 19 01 EC           1424 	.byte  0x19, 0x01, -0x14
   5BFF 0D 01 FF           1425 	.byte  0x0D, 0x01, -0x01
   5C02 09 01 F0           1426 	.byte  0x09, 0x01, -0x10
   5C05 15 01 EF           1427 	.byte  0x15, 0x01, -0x11
   5C08 1F 01 00           1428 	.byte  0x1F, 0x01,  0x00
   5C0B 17 01 11           1429 	.byte  0x17, 0x01,  0x11
   5C0E 0E 01 12           1430 	.byte  0x0E, 0x01,  0x12
   5C11 4B 4C              1431 	.word SMVB_continue3_single
   5C13 00 01 25           1432 	.byte  0x00, 0x01,  0x25
   5C16 F2 01 12           1433 	.byte -0x0E, 0x01,  0x12
   5C19 FE 00 00           1434 	.byte  0xfe, 0x00,  0x00
   5C1C 4E D9              1435 	.word SMVB_lastDraw_rts2
                           1436  .globl _OrcList
   5C1E                    1437 _OrcList:
   5C1E 55 01 C1           1438 	.byte  0x55, 0x01, -0x3F
   5C21 4C 1C              1439 	.word SMVB_continue_double
   5C23 0D 01 05           1440 	.byte  0x0D, 0x01,  0x05
   5C26 4D BA              1441 	.word SMVB_startDraw_yd4_single
   5C28 F9 01 15           1442 	.byte -0x07, 0x01,  0x15
   5C2B 4B 4C              1443 	.word SMVB_continue3_single
   5C2D F7 01 F9           1444 	.byte -0x09, 0x01, -0x07
   5C30 03 01 ED           1445 	.byte  0x03, 0x01, -0x13
   5C33 B7 01 01           1446 	.byte -0x49, 0x01,  0x01
   5C36 4C 70              1447 	.word SMVB_startMove_yd4_single
   5C38 F4 01 30           1448 	.byte -0x0C, 0x01,  0x30
   5C3B 4D BA              1449 	.word SMVB_startDraw_single
   5C3D 01 01 27           1450 	.byte  0x01, 0x01,  0x27
   5C40 4B 18              1451 	.word SMVB_continue7_single
   5C42 EE 01 FB           1452 	.byte -0x12, 0x01, -0x05
   5C45 05 01 1B           1453 	.byte  0x05, 0x01,  0x1B
   5C48 0D 01 00           1454 	.byte  0x0D, 0x01,  0x00
   5C4B 00 01 15           1455 	.byte  0x00, 0x01,  0x15
   5C4E 0E 01 00           1456 	.byte  0x0E, 0x01,  0x00
   5C51 00 01 EB           1457 	.byte  0x00, 0x01, -0x15
   5C54 53 01 FA           1458 	.byte  0x53, 0x01, -0x06
   5C57 4B 66              1459 	.word SMVB_continue_single
   5C59 AD 01 F0           1460 	.byte -0x53, 0x01, -0x10
   5C5C 4B 73              1461 	.word SMVB_continue_yd4_single
   5C5E FE 01 E1           1462 	.byte -0x02, 0x01, -0x1F
   5C61 4B 59              1463 	.word SMVB_continue2_single
   5C63 06 01 DC           1464 	.byte  0x06, 0x01, -0x24
   5C66 EE 01 12           1465 	.byte -0x12, 0x01,  0x12
   5C69 4C 70              1466 	.word SMVB_startMove_single
   5C6B EB 01 F5           1467 	.byte -0x15, 0x01, -0x0B
   5C6E 4D BA              1468 	.word SMVB_startDraw_single
   5C70 FB 01 E9           1469 	.byte -0x05, 0x01, -0x17
   5C73 4B 18              1470 	.word SMVB_continue7_single
   5C75 F0 01 04           1471 	.byte -0x10, 0x01,  0x04
   5C78 F4 01 F7           1472 	.byte -0x0C, 0x01, -0x09
   5C7B FB 01 1A           1473 	.byte -0x05, 0x01,  0x1A
   5C7E F6 01 FF           1474 	.byte -0x0A, 0x01, -0x01
   5C81 00 01 C5           1475 	.byte  0x00, 0x01, -0x3B
   5C84 14 01 07           1476 	.byte  0x14, 0x01,  0x07
   5C87 16 01 F9           1477 	.byte  0x16, 0x01, -0x07
   5C8A 4B 18              1478 	.word SMVB_continue7_single
   5C8C 0B 01 F6           1479 	.byte  0x0B, 0x01, -0x0A
   5C8F 1F 01 FE           1480 	.byte  0x1F, 0x01, -0x02
   5C92 0D 01 0C           1481 	.byte  0x0D, 0x01,  0x0C
   5C95 03 01 13           1482 	.byte  0x03, 0x01,  0x13
   5C98 09 01 02           1483 	.byte  0x09, 0x01,  0x02
   5C9B 10 01 F0           1484 	.byte  0x10, 0x01, -0x10
   5C9E 28 01 FB           1485 	.byte  0x28, 0x01, -0x05
   5CA1 4B 18              1486 	.word SMVB_continue7_single
   5CA3 0F 01 15           1487 	.byte  0x0F, 0x01,  0x15
   5CA6 00 01 28           1488 	.byte  0x00, 0x01,  0x28
   5CA9 F3 01 04           1489 	.byte -0x0D, 0x01,  0x04
   5CAC F9 01 2C           1490 	.byte -0x07, 0x01,  0x2C
   5CAF F0 01 F2           1491 	.byte -0x10, 0x01, -0x0E
   5CB2 F9 01 F2           1492 	.byte -0x07, 0x01, -0x0E
   5CB5 F3 01 F9           1493 	.byte -0x0D, 0x01, -0x07
   5CB8 4B 18              1494 	.word SMVB_continue7_single
   5CBA 00 01 1C           1495 	.byte  0x00, 0x01,  0x1C
   5CBD F6 01 FA           1496 	.byte -0x0A, 0x01, -0x06
   5CC0 FB 01 DA           1497 	.byte -0x05, 0x01, -0x26
   5CC3 F3 01 00           1498 	.byte -0x0D, 0x01,  0x00
   5CC6 FF 01 10           1499 	.byte -0x01, 0x01,  0x10
   5CC9 F5 01 07           1500 	.byte -0x0B, 0x01,  0x07
   5CCC FE 00 00           1501 	.byte  0xfe, 0x00,  0x00
   5CCF 4E D9              1502 	.word SMVB_lastDraw_rts2
                           1503  .globl _FighterList
   5CD1                    1504 _FighterList:
   5CD1 5B 01 CF           1505 	.byte  0x5B, 0x01, -0x31
   5CD4 4C 1C              1506 	.word SMVB_continue_double
   5CD6 F6 01 00           1507 	.byte -0x0A, 0x01,  0x00
   5CD9 4D BA              1508 	.word SMVB_startDraw_yd4_single
   5CDB 00 01 E8           1509 	.byte  0x00, 0x01, -0x18
   5CDE 4B 4C              1510 	.word SMVB_continue3_single
   5CE0 0A 01 00           1511 	.byte  0x0A, 0x01,  0x00
   5CE3 00 01 18           1512 	.byte  0x00, 0x01,  0x18
   5CE6 28 01 CF           1513 	.byte  0x28, 0x01, -0x31
   5CE9 4C 70              1514 	.word SMVB_startMove_single
   5CEB F6 01 00           1515 	.byte -0x0A, 0x01,  0x00
   5CEE 4D BA              1516 	.word SMVB_startDraw_single
   5CF0 00 01 19           1517 	.byte  0x00, 0x01,  0x19
   5CF3 4B 18              1518 	.word SMVB_continue7_single
   5CF5 EC 01 00           1519 	.byte -0x14, 0x01,  0x00
   5CF8 00 01 DB           1520 	.byte  0x00, 0x01, -0x25
   5CFB CF 01 00           1521 	.byte -0x31, 0x01,  0x00
   5CFE FB 01 0F           1522 	.byte -0x05, 0x01,  0x0F
   5D01 EC 01 E5           1523 	.byte -0x14, 0x01, -0x1B
   5D04 DF 01 00           1524 	.byte -0x21, 0x01,  0x00
   5D07 F2 01 18           1525 	.byte -0x0E, 0x01,  0x18
   5D0A 4B 18              1526 	.word SMVB_continue7_single
   5D0C C6 01 00           1527 	.byte -0x3A, 0x01,  0x00
   5D0F 00 01 3D           1528 	.byte  0x00, 0x01,  0x3D
   5D12 05 01 00           1529 	.byte  0x05, 0x01,  0x00
   5D15 0F 01 EF           1530 	.byte  0x0F, 0x01, -0x11
   5D18 00 01 EE           1531 	.byte  0x00, 0x01, -0x12
   5D1B 28 01 00           1532 	.byte  0x28, 0x01,  0x00
   5D1E 00 01 08           1533 	.byte  0x00, 0x01,  0x08
   5D21 4B 18              1534 	.word SMVB_continue7_single
   5D23 EB 01 15           1535 	.byte -0x15, 0x01,  0x15
   5D26 23 01 2C           1536 	.byte  0x23, 0x01,  0x2C
   5D29 10 01 00           1537 	.byte  0x10, 0x01,  0x00
   5D2C 00 01 0C           1538 	.byte  0x00, 0x01,  0x0C
   5D2F EC 01 00           1539 	.byte -0x14, 0x01,  0x00
   5D32 00 01 18           1540 	.byte  0x00, 0x01,  0x18
   5D35 14 01 00           1541 	.byte  0x14, 0x01,  0x00
   5D38 4B 18              1542 	.word SMVB_continue7_single
   5D3A 00 01 0C           1543 	.byte  0x00, 0x01,  0x0C
   5D3D 13 01 00           1544 	.byte  0x13, 0x01,  0x00
   5D40 00 01 F4           1545 	.byte  0x00, 0x01, -0x0C
   5D43 41 01 00           1546 	.byte  0x41, 0x01,  0x00
   5D46 0F 01 EE           1547 	.byte  0x0F, 0x01, -0x12
   5D49 00 01 FA           1548 	.byte  0x00, 0x01, -0x06
   5D4C B0 01 00           1549 	.byte -0x50, 0x01,  0x00
   5D4F 4B 73              1550 	.word SMVB_continue_yd4_single
   5D51 00 01 F4           1551 	.byte  0x00, 0x01, -0x0C
   5D54 4B 18              1552 	.word SMVB_continue7_single
   5D56 1E 01 00           1553 	.byte  0x1E, 0x01,  0x00
   5D59 00 01 DB           1554 	.byte  0x00, 0x01, -0x25
   5D5C 28 01 00           1555 	.byte  0x28, 0x01,  0x00
   5D5F 00 01 F4           1556 	.byte  0x00, 0x01, -0x0C
   5D62 0F 01 00           1557 	.byte  0x0F, 0x01,  0x00
   5D65 0F 01 F1           1558 	.byte  0x0F, 0x01, -0x0F
   5D68 00 01 DE           1559 	.byte  0x00, 0x01, -0x22
   5D6B 4B 66              1560 	.word SMVB_continue_single
   5D6D 9D 01 48           1561 	.byte -0x63, 0x01,  0x48
   5D70 4C 70              1562 	.word SMVB_startMove_yd4_single
   5D72 14 01 00           1563 	.byte  0x14, 0x01,  0x00
   5D75 4D BA              1564 	.word SMVB_startDraw_single
   5D77 00 01 D0           1565 	.byte  0x00, 0x01, -0x30
   5D7A 4B 3F              1566 	.word SMVB_continue4_single
   5D7C FA 01 00           1567 	.byte -0x06, 0x01,  0x00
   5D7F F2 01 11           1568 	.byte -0x0E, 0x01,  0x11
   5D82 00 01 1F           1569 	.byte  0x00, 0x01,  0x1F
   5D85 DD 01 00           1570 	.byte -0x23, 0x01,  0x00
   5D88 4C 70              1571 	.word SMVB_startMove_single
   5D8A 10 01 00           1572 	.byte  0x10, 0x01,  0x00
   5D8D 4D BA              1573 	.word SMVB_startDraw_single
   5D8F 00 01 E8           1574 	.byte  0x00, 0x01, -0x18
   5D92 4B 3F              1575 	.word SMVB_continue4_single
   5D94 E2 01 00           1576 	.byte -0x1E, 0x01,  0x00
   5D97 00 01 07           1577 	.byte  0x00, 0x01,  0x07
   5D9A 0E 01 11           1578 	.byte  0x0E, 0x01,  0x11
   5D9D FE 00 00           1579 	.byte  0xfe, 0x00,  0x00
   5DA0 4E D9              1580 	.word SMVB_lastDraw_rts2
                           1581  .globl _MummyList
   5DA2                    1582 _MummyList:
   5DA2 69 01 E8           1583 	.byte  0x69, 0x01, -0x18
   5DA5 4C 1C              1584 	.word SMVB_continue_double
   5DA7 B4 01 B7           1585 	.byte -0x4C, 0x01, -0x49
   5DAA 4D BA              1586 	.word SMVB_startDraw_yd4_single
   5DAC 07 01 F9           1587 	.byte  0x07, 0x01, -0x07
   5DAF 4C 70              1588 	.word SMVB_startMove_single
   5DB1 4D 01 4A           1589 	.byte  0x4D, 0x01,  0x4A
   5DB4 4D BA              1590 	.word SMVB_startDraw_single
   5DB6 18 01 DD           1591 	.byte  0x18, 0x01, -0x23
   5DB9 4C 70              1592 	.word SMVB_startMove_yd4_single
   5DBB B5 01 B5           1593 	.byte -0x4B, 0x01, -0x4B
   5DBE 4D EB              1594 	.word SMVB_startDraw_yd4_yEqx_single; y is -0x4B
   5DC0 08 01 FA           1595 	.byte  0x08, 0x01, -0x06
   5DC3 4C 70              1596 	.word SMVB_startMove_single
   5DC5 3E 01 3E           1597 	.byte  0x3E, 0x01,  0x3E
   5DC8 4D EB              1598 	.word SMVB_startDraw_yEqx_single; y is  0x3E
   5DCA A1 01 D7           1599 	.byte -0x5F, 0x01, -0x29
   5DCD 4C 70              1600 	.word SMVB_startMove_yd4_single
   5DCF B6 01 5C           1601 	.byte -0x4A, 0x01,  0x5C
   5DD2 4D BA              1602 	.word SMVB_startDraw_single
   5DD4 0C 01 01           1603 	.byte  0x0C, 0x01,  0x01
   5DD7 4C 70              1604 	.word SMVB_startMove_single
   5DD9 3F 01 B3           1605 	.byte  0x3F, 0x01, -0x4D
   5DDC 4D BA              1606 	.word SMVB_startDraw_single
   5DDE 00 01 EA           1607 	.byte  0x00, 0x01, -0x16
   5DE1 4B 73              1608 	.word SMVB_continue_yd4_single
   5DE3 F2 01 00           1609 	.byte -0x0E, 0x01,  0x00
   5DE6 4B 18              1610 	.word SMVB_continue7_single
   5DE8 00 01 DF           1611 	.byte  0x00, 0x01, -0x21
   5DEB E8 01 F1           1612 	.byte -0x18, 0x01, -0x0F
   5DEE E8 01 E2           1613 	.byte -0x18, 0x01, -0x1E
   5DF1 F9 01 E6           1614 	.byte -0x07, 0x01, -0x1A
   5DF4 FC 01 0D           1615 	.byte -0x04, 0x01,  0x0D
   5DF7 E4 01 FF           1616 	.byte -0x1C, 0x01, -0x01
   5DFA 1B 01 13           1617 	.byte  0x1B, 0x01,  0x13
   5DFD 4B 3F              1618 	.word SMVB_continue4_single
   5DFF 19 01 29           1619 	.byte  0x19, 0x01,  0x29
   5E02 14 01 11           1620 	.byte  0x14, 0x01,  0x11
   5E05 00 01 0F           1621 	.byte  0x00, 0x01,  0x0F
   5E08 BB 01 FF           1622 	.byte -0x45, 0x01, -0x01
   5E0B 4B 73              1623 	.word SMVB_continue_yd4_single
   5E0D CD 01 00           1624 	.byte -0x33, 0x01,  0x00
   5E10 4B 25              1625 	.word SMVB_continue6_single
   5E12 FC 01 E0           1626 	.byte -0x04, 0x01, -0x20
   5E15 F3 01 00           1627 	.byte -0x0D, 0x01,  0x00
   5E18 00 01 43           1628 	.byte  0x00, 0x01,  0x43
   5E1B 1F 01 FD           1629 	.byte  0x1F, 0x01, -0x03
   5E1E 3A 01 0E           1630 	.byte  0x3A, 0x01,  0x0E
   5E21 08 01 0B           1631 	.byte  0x08, 0x01,  0x0B
   5E24 4C 70              1632 	.word SMVB_startMove_single
   5E26 00 01 1B           1633 	.byte  0x00, 0x01,  0x1B
   5E29 4D BA              1634 	.word SMVB_startDraw_single
   5E2B F2 01 00           1635 	.byte -0x0E, 0x01,  0x00
   5E2E 4B 18              1636 	.word SMVB_continue7_single
   5E30 F7 01 EE           1637 	.byte -0x09, 0x01, -0x12
   5E33 D5 01 08           1638 	.byte -0x2B, 0x01,  0x08
   5E36 E1 01 F9           1639 	.byte -0x1F, 0x01, -0x07
   5E39 00 01 41           1640 	.byte  0x00, 0x01,  0x41
   5E3C 0D 01 00           1641 	.byte  0x0D, 0x01,  0x00
   5E3F 09 01 E0           1642 	.byte  0x09, 0x01, -0x20
   5E42 73 01 02           1643 	.byte  0x73, 0x01,  0x02
   5E45 4B 66              1644 	.word SMVB_continue_single
   5E47 20 01 3A           1645 	.byte  0x20, 0x01,  0x3A
   5E4A 4C 70              1646 	.word SMVB_startMove_yd4_single
   5E4C F0 01 E1           1647 	.byte -0x10, 0x01, -0x1F
   5E4F 4D BA              1648 	.word SMVB_startDraw_single
   5E51 29 01 32           1649 	.byte  0x29, 0x01,  0x32
   5E54 4C 70              1650 	.word SMVB_startMove_single
   5E56 E7 01 ED           1651 	.byte -0x19, 0x01, -0x13
   5E59 4D BA              1652 	.word SMVB_startDraw_yd4_single
   5E5B 40 01 17           1653 	.byte  0x40, 0x01,  0x17
   5E5E 4C 70              1654 	.word SMVB_startMove_single
   5E60 D9 01 FC           1655 	.byte -0x27, 0x01, -0x04
   5E63 4D BA              1656 	.word SMVB_startDraw_yd4_single
   5E65 0C 01 17           1657 	.byte  0x0C, 0x01,  0x17
   5E68 4C 70              1658 	.word SMVB_startMove_single
   5E6A 1B 01 ED           1659 	.byte  0x1B, 0x01, -0x13
   5E6D 4D BA              1660 	.word SMVB_startDraw_single
   5E6F EE 01 1F           1661 	.byte -0x12, 0x01,  0x1F
   5E72 4C 70              1662 	.word SMVB_startMove_single
   5E74 F7 01 F4           1663 	.byte -0x09, 0x01, -0x0C
   5E77 4D BA              1664 	.word SMVB_startDraw_single
   5E79 F5 01 23           1665 	.byte -0x0B, 0x01,  0x23
   5E7C 4C 70              1666 	.word SMVB_startMove_single
   5E7E 14 01 E9           1667 	.byte  0x14, 0x01, -0x17
   5E81 4D BA              1668 	.word SMVB_startDraw_single
   5E83 F0 01 01           1669 	.byte -0x10, 0x01,  0x01
   5E86 4C 70              1670 	.word SMVB_startMove_single
   5E88 FC 01 16           1671 	.byte -0x04, 0x01,  0x16
   5E8B 4D BA              1672 	.word SMVB_startDraw_single
   5E8D F9 01 DA           1673 	.byte -0x07, 0x01, -0x26
   5E90 4C 70              1674 	.word SMVB_startMove_single
   5E92 0B 01 10           1675 	.byte  0x0B, 0x01,  0x10
   5E95 4D BA              1676 	.word SMVB_startDraw_single
   5E97 D7 01 D5           1677 	.byte -0x29, 0x01, -0x2B
   5E9A 4C 70              1678 	.word SMVB_startMove_yd4_single
   5E9C 1E 01 1B           1679 	.byte  0x1E, 0x01,  0x1B
   5E9F 4D BA              1680 	.word SMVB_startDraw_single
   5EA1 CD 01 C3           1681 	.byte -0x33, 0x01, -0x3D
   5EA4 4C 70              1682 	.word SMVB_startMove_yd4_single
   5EA6 15 01 22           1683 	.byte  0x15, 0x01,  0x22
   5EA9 4D BA              1684 	.word SMVB_startDraw_single
   5EAB EB 01 BA           1685 	.byte -0x15, 0x01, -0x46
   5EAE 4C 70              1686 	.word SMVB_startMove_single
   5EB0 00 01 24           1687 	.byte  0x00, 0x01,  0x24
   5EB3 4D BA              1688 	.word SMVB_startDraw_single
   5EB5 10 01 F7           1689 	.byte  0x10, 0x01, -0x09
   5EB8 4C 70              1690 	.word SMVB_startMove_single
   5EBA 00 01 E3           1691 	.byte  0x00, 0x01, -0x1D
   5EBD 4D BA              1692 	.word SMVB_startDraw_single
   5EBF 00 01 F2           1693 	.byte  0x00, 0x01, -0x0E
   5EC2 4D 69              1694 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   5EC4 FF 01 ED           1695 	.byte -0x01, 0x01, -0x13
   5EC7 4D BA              1696 	.word SMVB_startDraw_single
   5EC9 12 01 FD           1697 	.byte  0x12, 0x01, -0x03
   5ECC 4B 66              1698 	.word SMVB_continue_single
   5ECE 0A 01 07           1699 	.byte  0x0A, 0x01,  0x07
   5ED1 4C 70              1700 	.word SMVB_startMove_single
   5ED3 01 01 1D           1701 	.byte  0x01, 0x01,  0x1D
   5ED6 4D BA              1702 	.word SMVB_startDraw_single
   5ED8 0C 01 11           1703 	.byte  0x0C, 0x01,  0x11
   5EDB 4B 18              1704 	.word SMVB_continue7_single
   5EDD 1B 01 02           1705 	.byte  0x1B, 0x01,  0x02
   5EE0 2C 01 E4           1706 	.byte  0x2C, 0x01, -0x1C
   5EE3 FF 01 BB           1707 	.byte -0x01, 0x01, -0x45
   5EE6 D5 01 D8           1708 	.byte -0x2B, 0x01, -0x28
   5EE9 E5 01 04           1709 	.byte -0x1B, 0x01,  0x04
   5EEC F4 01 0F           1710 	.byte -0x0C, 0x01,  0x0F
   5EEF FD 01 24           1711 	.byte -0x03, 0x01,  0x24
   5EF2 4B 66              1712 	.word SMVB_continue_single
   5EF4 A4 01 22           1713 	.byte -0x5C, 0x01,  0x22
   5EF7 4C 70              1714 	.word SMVB_startMove_yd4_single
   5EF9 31 01 C3           1715 	.byte  0x31, 0x01, -0x3D
   5EFC 4D BA              1716 	.word SMVB_startDraw_single
   5EFE F6 01 FA           1717 	.byte -0x0A, 0x01, -0x06
   5F01 4C 70              1718 	.word SMVB_startMove_yd4_single
   5F03 CD 01 3E           1719 	.byte -0x33, 0x01,  0x3E
   5F06 4D BA              1720 	.word SMVB_startDraw_single
   5F08 03 01 E6           1721 	.byte  0x03, 0x01, -0x1A
   5F0B 4C 70              1722 	.word SMVB_startMove_single
   5F0D F0 01 D8           1723 	.byte -0x10, 0x01, -0x28
   5F10 4D BA              1724 	.word SMVB_startDraw_single
   5F12 F5 01 02           1725 	.byte -0x0B, 0x01,  0x02
   5F15 4C 70              1726 	.word SMVB_startMove_single
   5F17 0B 01 20           1727 	.byte  0x0B, 0x01,  0x20
   5F1A 4D BA              1728 	.word SMVB_startDraw_single
   5F1C FE 00 00           1729 	.byte  0xfe, 0x00,  0x00
   5F1F 4E D9              1730 	.word SMVB_lastDraw_rts2
                           1731  .globl _ElfList
   5F21                    1732 _ElfList:
   5F21 38 01 4C           1733 	.byte  0x38, 0x01,  0x4C
   5F24 4C 1C              1734 	.word SMVB_continue_double
   5F26 09 01 15           1735 	.byte  0x09, 0x01,  0x15
   5F29 4D BA              1736 	.word SMVB_startDraw_single
   5F2B 09 01 EE           1737 	.byte  0x09, 0x01, -0x12
   5F2E 4B 11              1738 	.word SMVB_continue_yStays_single; y is  0x09
   5F30 F8 01 0F           1739 	.byte -0x08, 0x01,  0x0F
   5F33 4C 70              1740 	.word SMVB_startMove_single
   5F35 00 01 BB           1741 	.byte  0x00, 0x01, -0x45
   5F38 4C BD              1742 	.word SMVB_startDraw_double
   5F3A F6 01 F7           1743 	.byte -0x0A, 0x01, -0x09
   5F3D 4C 70              1744 	.word SMVB_startMove_single
   5F3F A4 01 FF           1745 	.byte -0x5C, 0x01, -0x01
   5F42 4D BA              1746 	.word SMVB_startDraw_yd4_single
   5F44 0B 01 14           1747 	.byte  0x0B, 0x01,  0x14
   5F47 4B 3F              1748 	.word SMVB_continue4_single
   5F49 0D 01 0F           1749 	.byte  0x0D, 0x01,  0x0F
   5F4C FE 01 12           1750 	.byte -0x02, 0x01,  0x12
   5F4F 02 01 0D           1751 	.byte  0x02, 0x01,  0x0D
   5F52 4A 01 00           1752 	.byte  0x4A, 0x01,  0x00
   5F55 4C 1C              1753 	.word SMVB_continue_double
   5F57 03 01 F5           1754 	.byte  0x03, 0x01, -0x0B
   5F5A 4B 73              1755 	.word SMVB_continue_yd4_single
   5F5C FC 01 EA           1756 	.byte -0x04, 0x01, -0x16
   5F5F 4B 4C              1757 	.word SMVB_continue3_single
   5F61 13 01 F5           1758 	.byte  0x13, 0x01, -0x0B
   5F64 10 01 EF           1759 	.byte  0x10, 0x01, -0x11
   5F67 A4 01 FD           1760 	.byte -0x5C, 0x01, -0x03
   5F6A 4B 73              1761 	.word SMVB_continue_yd4_single
   5F6C 23 01 B6           1762 	.byte  0x23, 0x01, -0x4A
   5F6F 4C 70              1763 	.word SMVB_startMove_single
   5F71 FB 01 EF           1764 	.byte -0x05, 0x01, -0x11
   5F74 4D BA              1765 	.word SMVB_startDraw_single
   5F76 F8 01 00           1766 	.byte -0x08, 0x01,  0x00
   5F79 4B 59              1767 	.word SMVB_continue2_single
   5F7B 04 01 11           1768 	.byte  0x04, 0x01,  0x11
   5F7E E6 01 EF           1769 	.byte -0x1A, 0x01, -0x11
   5F81 4C 70              1770 	.word SMVB_startMove_single
   5F83 FB 01 36           1771 	.byte -0x05, 0x01,  0x36
   5F86 4D BA              1772 	.word SMVB_startDraw_single
   5F88 08 01 3E           1773 	.byte  0x08, 0x01,  0x3E
   5F8B 4B 18              1774 	.word SMVB_continue7_single
   5F8D F4 01 F0           1775 	.byte -0x0C, 0x01, -0x10
   5F90 FC 01 16           1776 	.byte -0x04, 0x01,  0x16
   5F93 F1 01 E9           1777 	.byte -0x0F, 0x01, -0x17
   5F96 09 01 FA           1778 	.byte  0x09, 0x01, -0x06
   5F99 FE 01 E3           1779 	.byte -0x02, 0x01, -0x1D
   5F9C 02 01 CC           1780 	.byte  0x02, 0x01, -0x34
   5F9F FF 01 07           1781 	.byte -0x01, 0x01,  0x07
   5FA2 4C 70              1782 	.word SMVB_startMove_single
   5FA4 CA 01 F8           1783 	.byte -0x36, 0x01, -0x08
   5FA7 4D BA              1784 	.word SMVB_startDraw_yd4_single
   5FA9 9D 01 07           1785 	.byte -0x63, 0x01,  0x07
   5FAC 4B 32              1786 	.word SMVB_continue5_single
   5FAE FC 01 0F           1787 	.byte -0x04, 0x01,  0x0F
   5FB1 F8 01 05           1788 	.byte -0x08, 0x01,  0x05
   5FB4 00 01 DA           1789 	.byte  0x00, 0x01, -0x26
   5FB7 35 01 01           1790 	.byte  0x35, 0x01,  0x01
   5FBA FD 01 0A           1791 	.byte -0x03, 0x01,  0x0A
   5FBD 4C 70              1792 	.word SMVB_startMove_yd4_single
   5FBF 06 01 F4           1793 	.byte  0x06, 0x01, -0x0C
   5FC2 4D BA              1794 	.word SMVB_startDraw_single
   5FC4 21 01 FE           1795 	.byte  0x21, 0x01, -0x02
   5FC7 4B 3F              1796 	.word SMVB_continue4_single
   5FC9 00 01 F7           1797 	.byte  0x00, 0x01, -0x09
   5FCC DF 01 F8           1798 	.byte -0x21, 0x01, -0x08
   5FCF FB 01 F3           1799 	.byte -0x05, 0x01, -0x0D
   5FD2 01 01 09           1800 	.byte  0x01, 0x01,  0x09
   5FD5 4C 70              1801 	.word SMVB_startMove_single
   5FD7 CA 01 02           1802 	.byte -0x36, 0x01,  0x02
   5FDA 4D BA              1803 	.word SMVB_startDraw_yd4_single
   5FDC 0A 01 EC           1804 	.byte  0x0A, 0x01, -0x14
   5FDF 4C 70              1805 	.word SMVB_startMove_single
   5FE1 63 01 0A           1806 	.byte  0x63, 0x01,  0x0A
   5FE4 4D BA              1807 	.word SMVB_startDraw_single
   5FE6 9C 01 E8           1808 	.byte -0x64, 0x01, -0x18
   5FE9 4C 70              1809 	.word SMVB_startMove_yd4_single
   5FEB 01 01 0D           1810 	.byte  0x01, 0x01,  0x0D
   5FEE 4D BA              1811 	.word SMVB_startDraw_single
   5FF0 F5 01 ED           1812 	.byte -0x0B, 0x01, -0x13
   5FF3 4C 70              1813 	.word SMVB_startMove_single
   5FF5 09 01 05           1814 	.byte  0x09, 0x01,  0x05
   5FF8 4D BA              1815 	.word SMVB_startDraw_single
   5FFA F7 01 20           1816 	.byte -0x09, 0x01,  0x20
   5FFD 4C 70              1817 	.word SMVB_startMove_single
   5FFF 00 01 DA           1818 	.byte  0x00, 0x01, -0x26
   6002 4D BA              1819 	.word SMVB_startDraw_single
   6004 71 01 0A           1820 	.byte  0x71, 0x01,  0x0A
   6007 4C 9D              1821 	.word SMVB_startMove_double
   6009 F8 01 10           1822 	.byte -0x08, 0x01,  0x10
   600C 4D BA              1823 	.word SMVB_startDraw_yd4_single
   600E FB 01 00           1824 	.byte -0x05, 0x01,  0x00
   6011 4B 59              1825 	.word SMVB_continue2_single
   6013 04 01 EF           1826 	.byte  0x04, 0x01, -0x11
   6016 EE 01 0F           1827 	.byte -0x12, 0x01,  0x0F
   6019 4C 70              1828 	.word SMVB_startMove_single
   601B EF 01 00           1829 	.byte -0x11, 0x01,  0x00
   601E 4D BA              1830 	.word SMVB_startDraw_single
   6020 FF 01 15           1831 	.byte -0x01, 0x01,  0x15
   6023 4B 18              1832 	.word SMVB_continue7_single
   6025 12 01 FE           1833 	.byte  0x12, 0x01, -0x02
   6028 01 01 0E           1834 	.byte  0x01, 0x01,  0x0E
   602B 24 01 08           1835 	.byte  0x24, 0x01,  0x08
   602E 0C 01 E2           1836 	.byte  0x0C, 0x01, -0x1E
   6031 F4 01 E1           1837 	.byte -0x0C, 0x01, -0x1F
   6034 E1 01 04           1838 	.byte -0x1F, 0x01,  0x04
   6037 F9 01 0E           1839 	.byte -0x07, 0x01,  0x0E
   603A 4B 66              1840 	.word SMVB_continue_single
   603C AF 01 F3           1841 	.byte -0x51, 0x01, -0x0D
   603F 4C 70              1842 	.word SMVB_startMove_yd4_single
   6041 06 01 EE           1843 	.byte  0x06, 0x01, -0x12
   6044 4D BA              1844 	.word SMVB_startDraw_single
   6046 16 01 FC           1845 	.byte  0x16, 0x01, -0x04
   6049 4B 4C              1846 	.word SMVB_continue3_single
   604B 13 01 FB           1847 	.byte  0x13, 0x01, -0x05
   604E F9 01 17           1848 	.byte -0x07, 0x01,  0x17
   6051 20 01 11           1849 	.byte  0x20, 0x01,  0x11
   6054 4C 70              1850 	.word SMVB_startMove_single
   6056 FA 01 B6           1851 	.byte -0x06, 0x01, -0x4A
   6059 4D BA              1852 	.word SMVB_startDraw_single
   605B 11 01 00           1853 	.byte  0x11, 0x01,  0x00
   605E 4B 3F              1854 	.word SMVB_continue4_single
   6060 00 01 EB           1855 	.byte  0x00, 0x01, -0x15
   6063 DF 01 06           1856 	.byte -0x21, 0x01,  0x06
   6066 00 01 47           1857 	.byte  0x00, 0x01,  0x47
   6069 C6 01 0A           1858 	.byte -0x3A, 0x01,  0x0A
   606C 4B 73              1859 	.word SMVB_continue_yd4_single
   606E 02 01 00           1860 	.byte  0x02, 0x01,  0x00
   6071 4C 70              1861 	.word SMVB_startMove_single
   6073 01 01 25           1862 	.byte SHITREG_POKE_VALUE, 0x01,  0x25
   6076 4E 95              1863 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   6078 FE 00 00           1864 	.byte  0xfe, 0x00,  0x00
   607B 4E D9              1865 	.word SMVB_lastDraw_rts2
                           1866  .globl _GhoulList
   607D                    1867 _GhoulList:
   607D 77 01 B9           1868 	.byte  0x77, 0x01, -0x47
   6080 4B 66              1869 	.word SMVB_continue_single
   6082 F4 01 F4           1870 	.byte -0x0C, 0x01, -0x0C
   6085 4D EB              1871 	.word SMVB_startDraw_yd4_yEqx_single; y is -0x0C
   6087 D7 01 00           1872 	.byte -0x29, 0x01,  0x00
   608A 4B 18              1873 	.word SMVB_continue7_single
   608C 00 01 33           1874 	.byte  0x00, 0x01,  0x33
   608F F2 01 0E           1875 	.byte -0x0E, 0x01,  0x0E
   6092 E5 01 00           1876 	.byte -0x1B, 0x01,  0x00
   6095 F4 01 0C           1877 	.byte -0x0C, 0x01,  0x0C
   6098 00 01 15           1878 	.byte  0x00, 0x01,  0x15
   609B F2 01 00           1879 	.byte -0x0E, 0x01,  0x00
   609E 00 01 D1           1880 	.byte  0x00, 0x01, -0x2F
   60A1 4B 18              1881 	.word SMVB_continue7_single
   60A3 1A 01 F3           1882 	.byte  0x1A, 0x01, -0x0D
   60A6 0E 01 00           1883 	.byte  0x0E, 0x01,  0x00
   60A9 0D 01 F2           1884 	.byte  0x0D, 0x01, -0x0E
   60AC 00 01 DA           1885 	.byte  0x00, 0x01, -0x26
   60AF F3 01 00           1886 	.byte -0x0D, 0x01,  0x00
   60B2 00 01 0E           1887 	.byte  0x00, 0x01,  0x0E
   60B5 F2 01 0C           1888 	.byte -0x0E, 0x01,  0x0C
   60B8 4B 18              1889 	.word SMVB_continue7_single
   60BA F4 01 00           1890 	.byte -0x0C, 0x01,  0x00
   60BD F2 01 F4           1891 	.byte -0x0E, 0x01, -0x0C
   60C0 00 01 E5           1892 	.byte  0x00, 0x01, -0x1B
   60C3 E5 01 00           1893 	.byte -0x1B, 0x01,  0x00
   60C6 00 01 E6           1894 	.byte  0x00, 0x01, -0x1A
   60C9 29 01 00           1895 	.byte  0x29, 0x01,  0x00
   60CC 00 01 27           1896 	.byte  0x00, 0x01,  0x27
   60CF 4B 3F              1897 	.word SMVB_continue4_single
   60D1 0C 01 00           1898 	.byte  0x0C, 0x01,  0x00
   60D4 0E 01 E5           1899 	.byte  0x0E, 0x01, -0x1B
   60D7 44 01 00           1900 	.byte  0x44, 0x01,  0x00
   60DA 00 01 F4           1901 	.byte  0x00, 0x01, -0x0C
   60DD 4B 75              1902 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   60DF C5 01 E1           1903 	.byte -0x3B, 0x01, -0x1F
   60E2 4B 73              1904 	.word SMVB_continue_yd4_single
   60E4 F3 01 00           1905 	.byte -0x0D, 0x01,  0x00
   60E7 4B 32              1906 	.word SMVB_continue5_single
   60E9 DC 01 11           1907 	.byte -0x24, 0x01,  0x11
   60EC 10 01 F1           1908 	.byte  0x10, 0x01, -0x0F
   60EF E8 01 F4           1909 	.byte -0x18, 0x01, -0x0C
   60F2 23 01 01           1910 	.byte  0x23, 0x01,  0x01
   60F5 E2 01 EC           1911 	.byte -0x1E, 0x01, -0x14
   60F8 4B 73              1912 	.word SMVB_continue_yd4_single
   60FA 00 01 F5           1913 	.byte  0x00, 0x01, -0x0B
   60FD 4B 18              1914 	.word SMVB_continue7_single
   60FF 19 01 15           1915 	.byte  0x19, 0x01,  0x15
   6102 F9 01 E6           1916 	.byte -0x07, 0x01, -0x1A
   6105 1A 01 1A           1917 	.byte  0x1A, 0x01,  0x1A
   6108 0D 01 FF           1918 	.byte  0x0D, 0x01, -0x01
   610B 2C 01 10           1919 	.byte  0x2C, 0x01,  0x10
   610E 28 01 15           1920 	.byte  0x28, 0x01,  0x15
   6111 09 01 1B           1921 	.byte  0x09, 0x01,  0x1B
   6114 4B 18              1922 	.word SMVB_continue7_single
   6116 00 01 0E           1923 	.byte  0x00, 0x01,  0x0E
   6119 0D 01 00           1924 	.byte  0x0D, 0x01,  0x00
   611C 00 01 F2           1925 	.byte  0x00, 0x01, -0x0E
   611F 1C 01 E6           1926 	.byte  0x1C, 0x01, -0x1A
   6122 35 01 00           1927 	.byte  0x35, 0x01,  0x00
   6125 0E 01 1A           1928 	.byte  0x0E, 0x01,  0x1A
   6128 00 01 35           1929 	.byte  0x00, 0x01,  0x35
   612B 4B 18              1930 	.word SMVB_continue7_single
   612D F2 01 21           1931 	.byte -0x0E, 0x01,  0x21
   6130 CD 01 00           1932 	.byte -0x33, 0x01,  0x00
   6133 E4 01 E6           1933 	.byte -0x1C, 0x01, -0x1A
   6136 FF 01 EE           1934 	.byte -0x01, 0x01, -0x12
   6139 F3 01 00           1935 	.byte -0x0D, 0x01,  0x00
   613C FD 01 3A           1936 	.byte -0x03, 0x01,  0x3A
   613F DD 01 2D           1937 	.byte -0x23, 0x01,  0x2D
   6142 4B 25              1938 	.word SMVB_continue6_single
   6144 FA 01 21           1939 	.byte -0x06, 0x01,  0x21
   6147 DB 01 12           1940 	.byte -0x25, 0x01,  0x12
   614A 14 01 EA           1941 	.byte  0x14, 0x01, -0x16
   614D E3 01 FC           1942 	.byte -0x1D, 0x01, -0x04
   6150 1E 01 F6           1943 	.byte  0x1E, 0x01, -0x0A
   6153 E3 01 F9           1944 	.byte -0x1D, 0x01, -0x07
   6156 4B 73              1945 	.word SMVB_continue_yd4_single
   6158 0F 01 F9           1946 	.byte  0x0F, 0x01, -0x07
   615B 4B 32              1947 	.word SMVB_continue5_single
   615D EA 01 FC           1948 	.byte -0x16, 0x01, -0x04
   6160 2C 01 F8           1949 	.byte  0x2C, 0x01, -0x08
   6163 17 01 E3           1950 	.byte  0x17, 0x01, -0x1D
   6166 02 01 CF           1951 	.byte  0x02, 0x01, -0x31
   6169 5F 01 F8           1952 	.byte  0x5F, 0x01, -0x08
   616C 4C 70              1953 	.word SMVB_startMove_single
   616E 00 01 17           1954 	.byte  0x00, 0x01,  0x17
   6171 4D BA              1955 	.word SMVB_startDraw_yd4_single
   6173 14 01 03           1956 	.byte  0x14, 0x01,  0x03
   6176 4B 4C              1957 	.word SMVB_continue3_single
   6178 FF 01 E6           1958 	.byte -0x01, 0x01, -0x1A
   617B ED 01 00           1959 	.byte -0x13, 0x01,  0x00
   617E 00 01 D3           1960 	.byte  0x00, 0x01, -0x2D
   6181 4E 7A              1961 	.word SMVB_startMove_newY_eq_oldX_single ; y was  0x00, now 0
   6183 01 01 17           1962 	.byte  SHITREG_POKE_VALUE, 0x01,  0x17
   6186 4D 7F              1963 	.word SMVB_startDraw_yStays_single; y was  0x00, now SHIFT Poke
   6188 13 01 03           1964 	.byte  0x13, 0x01,  0x03
   618B 4B 4C              1965 	.word SMVB_continue3_single
   618D 02 01 E0           1966 	.byte  0x02, 0x01, -0x20
   6190 EA 01 05           1967 	.byte -0x16, 0x01,  0x05
   6193 EF 01 FC           1968 	.byte -0x11, 0x01, -0x04
   6196 4C 70              1969 	.word SMVB_startMove_single
   6198 02 01 4D           1970 	.byte  0x02, 0x01,  0x4D
   619B 4D BA              1971 	.word SMVB_startDraw_single
   619D F0 01 FC           1972 	.byte -0x10, 0x01, -0x04
   61A0 4B 4C              1973 	.word SMVB_continue3_single
   61A2 F4 01 CB           1974 	.byte -0x0C, 0x01, -0x35
   61A5 1A 01 EC           1975 	.byte  0x1A, 0x01, -0x14
   61A8 FE 00 00           1976 	.byte  0xfe, 0x00,  0x00
   61AB 4E D9              1977 	.word SMVB_lastDraw_rts2
                           1978  .globl _DwarfList
   61AD                    1979 _DwarfList:
   61AD 44 01 1E           1980 	.byte  0x44, 0x01,  0x1E
   61B0 4B 66              1981 	.word SMVB_continue_single
   61B2 6A 01 1C           1982 	.byte  0x6A, 0x01,  0x1C
   61B5 4D BA              1983 	.word SMVB_startDraw_single
   61B7 01 01 E3           1984 	.byte  0x01, 0x01, -0x1D
   61BA 4B 73              1985 	.word SMVB_continue_yd4_single
   61BC F5 01 FC           1986 	.byte -0x0B, 0x01, -0x04
   61BF 4B 18              1987 	.word SMVB_continue7_single
   61C1 06 01 EF           1988 	.byte  0x06, 0x01, -0x11
   61C4 2B 01 11           1989 	.byte  0x2B, 0x01,  0x11
   61C7 FD 01 10           1990 	.byte -0x03, 0x01,  0x10
   61CA F5 01 FB           1991 	.byte -0x0B, 0x01, -0x05
   61CD 00 01 1B           1992 	.byte  0x00, 0x01,  0x1B
   61D0 0C 01 02           1993 	.byte  0x0C, 0x01,  0x02
   61D3 FF 01 16           1994 	.byte -0x01, 0x01,  0x16
   61D6 4B 18              1995 	.word SMVB_continue7_single
   61D8 F5 01 FD           1996 	.byte -0x0B, 0x01, -0x03
   61DB FC 01 14           1997 	.byte -0x04, 0x01,  0x14
   61DE 10 01 05           1998 	.byte  0x10, 0x01,  0x05
   61E1 FE 01 14           1999 	.byte -0x02, 0x01,  0x14
   61E4 D1 01 F1           2000 	.byte -0x2F, 0x01, -0x0F
   61E7 04 01 EF           2001 	.byte  0x04, 0x01, -0x11
   61EA 09 01 03           2002 	.byte  0x09, 0x01,  0x03
   61ED 4B 59              2003 	.word SMVB_continue2_single
   61EF 03 01 EE           2004 	.byte  0x03, 0x01, -0x12
   61F2 96 01 E7           2005 	.byte -0x6A, 0x01, -0x19
   61F5 4B 73              2006 	.word SMVB_continue_yd4_single
   61F7 63 01 AA           2007 	.byte  0x63, 0x01, -0x56
   61FA 4C 70              2008 	.word SMVB_startMove_single
   61FC D4 01 05           2009 	.byte -0x2C, 0x01,  0x05
   61FF 4D BA              2010 	.word SMVB_startDraw_yd4_single
   6201 EB 01 E7           2011 	.byte -0x15, 0x01, -0x19
   6204 4B 18              2012 	.word SMVB_continue7_single
   6206 E8 01 00           2013 	.byte -0x18, 0x01,  0x00
   6209 F6 01 3A           2014 	.byte -0x0A, 0x01,  0x3A
   620C 05 01 3E           2015 	.byte  0x05, 0x01,  0x3E
   620F F5 01 07           2016 	.byte -0x0B, 0x01,  0x07
   6212 F1 01 F2           2017 	.byte -0x0F, 0x01, -0x0E
   6215 05 01 E4           2018 	.byte  0x05, 0x01, -0x1C
   6218 F8 01 D9           2019 	.byte -0x08, 0x01, -0x27
   621B 4B 59              2020 	.word SMVB_continue2_single
   621D 0A 01 BD           2021 	.byte  0x0A, 0x01, -0x43
   6220 FC 01 11           2022 	.byte -0x04, 0x01,  0x11
   6223 4C 70              2023 	.word SMVB_startMove_single
   6225 DE 01 F8           2024 	.byte -0x22, 0x01, -0x08
   6228 4D BA              2025 	.word SMVB_startDraw_single
   622A E6 01 10           2026 	.byte -0x1A, 0x01,  0x10
   622D 4B 18              2027 	.word SMVB_continue7_single
   622F E7 01 FC           2028 	.byte -0x19, 0x01, -0x04
   6232 00 01 18           2029 	.byte  0x00, 0x01,  0x18
   6235 F5 01 00           2030 	.byte -0x0B, 0x01,  0x00
   6238 00 01 D0           2031 	.byte  0x00, 0x01, -0x30
   623B 1C 01 FF           2032 	.byte  0x1C, 0x01, -0x01
   623E 16 01 F7           2033 	.byte  0x16, 0x01, -0x09
   6241 FB 01 F0           2034 	.byte -0x05, 0x01, -0x10
   6244 4B 18              2035 	.word SMVB_continue7_single
   6246 F0 01 FB           2036 	.byte -0x10, 0x01, -0x05
   6249 EE 01 EF           2037 	.byte -0x12, 0x01, -0x11
   624C 00 01 19           2038 	.byte  0x00, 0x01,  0x19
   624F F5 01 00           2039 	.byte -0x0B, 0x01,  0x00
   6252 00 01 CE           2040 	.byte  0x00, 0x01, -0x32
   6255 1C 01 09           2041 	.byte  0x1C, 0x01,  0x09
   6258 17 01 03           2042 	.byte  0x17, 0x01,  0x03
   625B 4B 66              2043 	.word SMVB_continue_single
   625D 0E 01 F8           2044 	.byte  0x0E, 0x01, -0x08
   6260 4C 70              2045 	.word SMVB_startMove_single
   6262 13 01 F8           2046 	.byte  0x13, 0x01, -0x08
   6265 4D BA              2047 	.word SMVB_startDraw_single
   6267 14 01 04           2048 	.byte  0x14, 0x01,  0x04
   626A 4B 18              2049 	.word SMVB_continue7_single
   626C 05 01 14           2050 	.byte  0x05, 0x01,  0x14
   626F FD 01 11           2051 	.byte -0x03, 0x01,  0x11
   6272 EC 01 0B           2052 	.byte -0x14, 0x01,  0x0B
   6275 EF 01 F9           2053 	.byte -0x11, 0x01, -0x07
   6278 F6 01 F0           2054 	.byte -0x0A, 0x01, -0x10
   627B 06 01 EB           2055 	.byte  0x06, 0x01, -0x15
   627E 29 01 ED           2056 	.byte  0x29, 0x01, -0x13
   6281 4C 70              2057 	.word SMVB_startMove_single
   6283 08 01 F7           2058 	.byte  0x08, 0x01, -0x09
   6286 4D BA              2059 	.word SMVB_startDraw_single
   6288 0B 01 0E           2060 	.byte  0x0B, 0x01,  0x0E
   628B 4B 3F              2061 	.word SMVB_continue4_single
   628D 0A 01 23           2062 	.byte  0x0A, 0x01,  0x23
   6290 F6 01 21           2063 	.byte -0x0A, 0x01,  0x21
   6293 0A 01 27           2064 	.byte  0x0A, 0x01,  0x27
   6296 EB 01 D0           2065 	.byte -0x15, 0x01, -0x30
   6299 4C 70              2066 	.word SMVB_startMove_single
   629B E7 01 0C           2067 	.byte -0x19, 0x01,  0x0C
   629E 4D BA              2068 	.word SMVB_startDraw_single
   62A0 E7 01 FD           2069 	.byte -0x19, 0x01, -0x03
   62A3 4B 18              2070 	.word SMVB_continue7_single
   62A5 F1 01 E7           2071 	.byte -0x0F, 0x01, -0x19
   62A8 04 01 E1           2072 	.byte  0x04, 0x01, -0x1F
   62AB 0F 01 EF           2073 	.byte  0x0F, 0x01, -0x11
   62AE 1B 01 FD           2074 	.byte  0x1B, 0x01, -0x03
   62B1 17 01 11           2075 	.byte  0x17, 0x01,  0x11
   62B4 04 01 1E           2076 	.byte  0x04, 0x01,  0x1E
   62B7 F8 01 14           2077 	.byte -0x08, 0x01,  0x14
   62BA 4B 66              2078 	.word SMVB_continue_single
   62BC 38 01 18           2079 	.byte  0x38, 0x01,  0x18
   62BF 4C 70              2080 	.word SMVB_startMove_single
   62C1 17 01 00           2081 	.byte  0x17, 0x01,  0x00
   62C4 4D BA              2082 	.word SMVB_startDraw_single
   62C6 F8 01 18           2083 	.byte -0x08, 0x01,  0x18
   62C9 4B 4C              2084 	.word SMVB_continue3_single
   62CB F1 01 00           2085 	.byte -0x0F, 0x01,  0x00
   62CE 00 01 E8           2086 	.byte  0x00, 0x01, -0x18
   62D1 F4 01 15           2087 	.byte -0x0C, 0x01,  0x15
   62D4 4C 70              2088 	.word SMVB_startMove_single
   62D6 F2 01 E1           2089 	.byte -0x0E, 0x01, -0x1F
   62D9 4D BA              2090 	.word SMVB_startDraw_single
   62DB 05 01 E9           2091 	.byte  0x05, 0x01, -0x17
   62DE 4B 59              2092 	.word SMVB_continue2_single
   62E0 0A 01 FD           2093 	.byte  0x0A, 0x01, -0x03
   62E3 0B 01 F4           2094 	.byte  0x0B, 0x01, -0x0C
   62E6 4C 70              2095 	.word SMVB_startMove_single
   62E8 0D 01 FF           2096 	.byte  0x0D, 0x01, -0x01
   62EB 4D BA              2097 	.word SMVB_startDraw_single
   62ED 0A 01 1A           2098 	.byte  0x0A, 0x01,  0x1A
   62F0 4B 4C              2099 	.word SMVB_continue3_single
   62F2 E9 01 00           2100 	.byte -0x17, 0x01,  0x00
   62F5 00 01 E7           2101 	.byte  0x00, 0x01, -0x19
   62F8 09 01 D0           2102 	.byte  0x09, 0x01, -0x30
   62FB 4C 70              2103 	.word SMVB_startMove_single
   62FD 14 01 4E           2104 	.byte  0x14, 0x01,  0x4E
   6300 4C BD              2105 	.word SMVB_startDraw_double
   6302 10 01 01           2106 	.byte  0x10, 0x01,  0x01
   6305 4B 59              2107 	.word SMVB_continue2_single
   6307 04 01 A6           2108 	.byte  0x04, 0x01, -0x5A
   630A CC 01 B1           2109 	.byte -0x34, 0x01, -0x4F
   630D 4B 73              2110 	.word SMVB_continue_yd4_single
   630F F8 01 0D           2111 	.byte -0x08, 0x01,  0x0D
   6312 4B 66              2112 	.word SMVB_continue_single
   6314 00 01 11           2113 	.byte  0x00, 0x01,  0x11
   6317 4C 70              2114 	.word SMVB_startMove_single
   6319 E0 01 06           2115 	.byte -0x20, 0x01,  0x06
   631C 4D BA              2116 	.word SMVB_startDraw_single
   631E 00 01 19           2117 	.byte  0x00, 0x01,  0x19
   6321 4B 59              2118 	.word SMVB_continue2_single
   6323 F4 01 00           2119 	.byte -0x0C, 0x01,  0x00
   6326 FE 00 00           2120 	.byte  0xfe, 0x00,  0x00
   6329 4E D9              2121 	.word SMVB_lastDraw_rts2
                           2122  .globl _TrollList
   632B                    2123 _TrollList:
   632B 48 01 1F           2124 	.byte  0x48, 0x01,  0x1F
   632E 4B 66              2125 	.word SMVB_continue_single
   6330 11 01 F8           2126 	.byte  0x11, 0x01, -0x08
   6333 4D BA              2127 	.word SMVB_startDraw_yd4_single
   6335 EF 01 F7           2128 	.byte -0x11, 0x01, -0x09
   6338 4B 18              2129 	.word SMVB_continue7_single
   633A FA 01 F5           2130 	.byte -0x06, 0x01, -0x0B
   633D 1A 01 07           2131 	.byte  0x1A, 0x01,  0x07
   6340 0A 01 0A           2132 	.byte  0x0A, 0x01,  0x0A
   6343 16 01 00           2133 	.byte  0x16, 0x01,  0x00
   6346 0E 01 F3           2134 	.byte  0x0E, 0x01, -0x0D
   6349 07 01 ED           2135 	.byte  0x07, 0x01, -0x13
   634C DA 01 F8           2136 	.byte -0x26, 0x01, -0x08
   634F 4B 18              2137 	.word SMVB_continue7_single
   6351 E7 01 F3           2138 	.byte -0x19, 0x01, -0x0D
   6354 CA 01 05           2139 	.byte -0x36, 0x01,  0x05
   6357 E6 01 0F           2140 	.byte -0x1A, 0x01,  0x0F
   635A FD 01 1D           2141 	.byte -0x03, 0x01,  0x1D
   635D F4 01 EF           2142 	.byte -0x0C, 0x01, -0x11
   6360 04 01 DE           2143 	.byte  0x04, 0x01, -0x22
   6363 14 01 F4           2144 	.byte  0x14, 0x01, -0x0C
   6366 4B 18              2145 	.word SMVB_continue7_single
   6368 24 01 F3           2146 	.byte  0x24, 0x01, -0x0D
   636B 24 01 02           2147 	.byte  0x24, 0x01,  0x02
   636E F3 01 EA           2148 	.byte -0x0D, 0x01, -0x16
   6371 EA 01 FE           2149 	.byte -0x16, 0x01, -0x02
   6374 DC 01 F4           2150 	.byte -0x24, 0x01, -0x0C
   6377 EC 01 E7           2151 	.byte -0x14, 0x01, -0x19
   637A FE 01 DD           2152 	.byte -0x02, 0x01, -0x23
   637D 4B 18              2153 	.word SMVB_continue7_single
   637F 09 01 F7           2154 	.byte  0x09, 0x01, -0x09
   6382 06 01 23           2155 	.byte  0x06, 0x01,  0x23
   6385 1F 01 0A           2156 	.byte  0x1F, 0x01,  0x0A
   6388 30 01 13           2157 	.byte  0x30, 0x01,  0x13
   638B 12 01 F3           2158 	.byte  0x12, 0x01, -0x0D
   638E 2A 01 F8           2159 	.byte  0x2A, 0x01, -0x08
   6391 FD 01 DE           2160 	.byte -0x03, 0x01, -0x22
   6394 4B 18              2161 	.word SMVB_continue7_single
   6396 ED 01 F3           2162 	.byte -0x13, 0x01, -0x0D
   6399 F4 01 02           2163 	.byte -0x0C, 0x01,  0x02
   639C F6 01 0B           2164 	.byte -0x0A, 0x01,  0x0B
   639F EF 01 02           2165 	.byte -0x11, 0x01,  0x02
   63A2 EE 01 FB           2166 	.byte -0x12, 0x01, -0x05
   63A5 17 01 FA           2167 	.byte  0x17, 0x01, -0x06
   63A8 E9 01 EF           2168 	.byte -0x17, 0x01, -0x11
   63AB 4B 18              2169 	.word SMVB_continue7_single
   63AD 11 01 F9           2170 	.byte  0x11, 0x01, -0x07
   63B0 29 01 FC           2171 	.byte  0x29, 0x01, -0x04
   63B3 19 01 0B           2172 	.byte  0x19, 0x01,  0x0B
   63B6 17 01 18           2173 	.byte  0x17, 0x01,  0x18
   63B9 09 01 4B           2174 	.byte  0x09, 0x01,  0x4B
   63BC 0D 01 F4           2175 	.byte  0x0D, 0x01, -0x0C
   63BF 18 01 00           2176 	.byte  0x18, 0x01,  0x00
   63C2 4B 18              2177 	.word SMVB_continue7_single
   63C4 0A 01 0C           2178 	.byte  0x0A, 0x01,  0x0C
   63C7 00 01 16           2179 	.byte  0x00, 0x01,  0x16
   63CA F6 01 0D           2180 	.byte -0x0A, 0x01,  0x0D
   63CD E8 01 00           2181 	.byte -0x18, 0x01,  0x00
   63D0 F3 01 F4           2182 	.byte -0x0D, 0x01, -0x0C
   63D3 FB 01 44           2183 	.byte -0x05, 0x01,  0x44
   63D6 E9 01 18           2184 	.byte -0x17, 0x01,  0x18
   63D9 4B 3F              2185 	.word SMVB_continue4_single
   63DB E7 01 0C           2186 	.byte -0x19, 0x01,  0x0C
   63DE C6 01 00           2187 	.byte -0x3A, 0x01,  0x00
   63E1 05 01 F2           2188 	.byte  0x05, 0x01, -0x0E
   63E4 FE 00 00           2189 	.byte  0xfe, 0x00,  0x00
   63E7 4E D9              2190 	.word SMVB_lastDraw_rts2
                           2191  .globl _WraithList
   63E9                    2192 _WraithList:
   63E9 5A 01 D5           2193 	.byte  0x5A, 0x01, -0x2B
   63EC 4C 1C              2194 	.word SMVB_continue_double
   63EE 05 01 EE           2195 	.byte  0x05, 0x01, -0x12
   63F1 4D BA              2196 	.word SMVB_startDraw_yd4_single
   63F3 E5 01 00           2197 	.byte -0x1B, 0x01,  0x00
   63F6 4B 59              2198 	.word SMVB_continue2_single
   63F8 15 01 12           2199 	.byte  0x15, 0x01,  0x12
   63FB EC 01 24           2200 	.byte -0x14, 0x01,  0x24
   63FE 4C 70              2201 	.word SMVB_startMove_single
   6400 19 01 03           2202 	.byte  0x19, 0x01,  0x03
   6403 4D BA              2203 	.word SMVB_startDraw_single
   6405 FC 01 ED           2204 	.byte -0x04, 0x01, -0x13
   6408 4B 59              2205 	.word SMVB_continue2_single
   640A EB 01 10           2206 	.byte -0x15, 0x01,  0x10
   640D E1 01 C7           2207 	.byte -0x1F, 0x01, -0x39
   6410 4C 70              2208 	.word SMVB_startMove_single
   6412 08 01 CE           2209 	.byte  0x08, 0x01, -0x32
   6415 4D BA              2210 	.word SMVB_startDraw_single
   6417 0A 01 FA           2211 	.byte  0x0A, 0x01, -0x06
   641A 4B 59              2212 	.word SMVB_continue2_single
   641C 27 01 0C           2213 	.byte  0x27, 0x01,  0x0C
   641F E7 01 ED           2214 	.byte -0x19, 0x01, -0x13
   6422 4B 73              2215 	.word SMVB_continue_yd4_single
   6424 FD 01 F2           2216 	.byte -0x03, 0x01, -0x0E
   6427 4B 59              2217 	.word SMVB_continue2_single
   6429 1A 01 F1           2218 	.byte  0x1A, 0x01, -0x0F
   642C CE 01 0B           2219 	.byte -0x32, 0x01,  0x0B
   642F 4B 73              2220 	.word SMVB_continue_yd4_single
   6431 F0 01 0B           2221 	.byte -0x10, 0x01,  0x0B
   6434 4B 18              2222 	.word SMVB_continue7_single
   6436 F4 01 19           2223 	.byte -0x0C, 0x01,  0x19
   6439 F2 01 15           2224 	.byte -0x0E, 0x01,  0x15
   643C E8 01 07           2225 	.byte -0x18, 0x01,  0x07
   643F F4 01 14           2226 	.byte -0x0C, 0x01,  0x14
   6442 F2 01 09           2227 	.byte -0x0E, 0x01,  0x09
   6445 EC 01 F9           2228 	.byte -0x14, 0x01, -0x07
   6448 F4 01 F3           2229 	.byte -0x0C, 0x01, -0x0D
   644B 4B 18              2230 	.word SMVB_continue7_single
   644D ED 01 F9           2231 	.byte -0x13, 0x01, -0x07
   6450 E2 01 13           2232 	.byte -0x1E, 0x01,  0x13
   6453 F3 01 18           2233 	.byte -0x0D, 0x01,  0x18
   6456 00 01 17           2234 	.byte  0x00, 0x01,  0x17
   6459 0B 01 EF           2235 	.byte  0x0B, 0x01, -0x11
   645C 0C 01 FD           2236 	.byte  0x0C, 0x01, -0x03
   645F 1E 01 0C           2237 	.byte  0x1E, 0x01,  0x0C
   6462 4B 18              2238 	.word SMVB_continue7_single
   6464 0F 01 14           2239 	.byte  0x0F, 0x01,  0x14
   6467 0A 01 18           2240 	.byte  0x0A, 0x01,  0x18
   646A 1B 01 05           2241 	.byte  0x1B, 0x01,  0x05
   646D 13 01 F1           2242 	.byte  0x13, 0x01, -0x0F
   6470 1D 01 0B           2243 	.byte  0x1D, 0x01,  0x0B
   6473 06 01 15           2244 	.byte  0x06, 0x01,  0x15
   6476 0B 01 1B           2245 	.byte  0x0B, 0x01,  0x1B
   6479 4B 4C              2246 	.word SMVB_continue3_single
   647B 13 01 09           2247 	.byte  0x13, 0x01,  0x09
   647E 2E 01 03           2248 	.byte  0x2E, 0x01,  0x03
   6481 E6 01 F3           2249 	.byte -0x1A, 0x01, -0x0D
   6484 4B 73              2250 	.word SMVB_continue_yd4_single
   6486 00 01 F6           2251 	.byte  0x00, 0x01, -0x0A
   6489 4B 59              2252 	.word SMVB_continue2_single
   648B 1D 01 F2           2253 	.byte  0x1D, 0x01, -0x0E
   648E D3 01 04           2254 	.byte -0x2D, 0x01,  0x04
   6491 4B 73              2255 	.word SMVB_continue_yd4_single
   6493 F2 01 F4           2256 	.byte -0x0E, 0x01, -0x0C
   6496 4B 18              2257 	.word SMVB_continue7_single
   6498 06 01 C7           2258 	.byte  0x06, 0x01, -0x39
   649B 0E 01 1D           2259 	.byte  0x0E, 0x01,  0x1D
   649E 18 01 00           2260 	.byte  0x18, 0x01,  0x00
   64A1 25 01 F4           2261 	.byte  0x25, 0x01, -0x0C
   64A4 0D 01 DC           2262 	.byte  0x0D, 0x01, -0x24
   64A7 F3 01 DC           2263 	.byte -0x0D, 0x01, -0x24
   64AA DB 01 F5           2264 	.byte -0x25, 0x01, -0x0B
   64AD 4B 4C              2265 	.word SMVB_continue3_single
   64AF E8 01 00           2266 	.byte -0x18, 0x01,  0x00
   64B2 EE 01 13           2267 	.byte -0x12, 0x01,  0x13
   64B5 FE 00 00           2268 	.byte  0xfe, 0x00,  0x00
   64B8 4E D9              2269 	.word SMVB_lastDraw_rts2
                           2270  .globl _OgreList
   64BA                    2271 _OgreList:
   64BA 6C 01 BA           2272 	.byte  0x6C, 0x01, -0x46
   64BD 4B 66              2273 	.word SMVB_continue_single
   64BF F2 01 24           2274 	.byte -0x0E, 0x01,  0x24
   64C2 4D BA              2275 	.word SMVB_startDraw_yd4_single
   64C4 07 01 15           2276 	.byte  0x07, 0x01,  0x15
   64C7 4B 59              2277 	.word SMVB_continue2_single
   64C9 FD 01 3E           2278 	.byte -0x03, 0x01,  0x3E
   64CC 2A 01 F9           2279 	.byte  0x2A, 0x01, -0x07
   64CF 4C 70              2280 	.word SMVB_startMove_single
   64D1 07 01 B9           2281 	.byte  0x07, 0x01, -0x47
   64D4 4D BA              2282 	.word SMVB_startDraw_single
   64D6 F9 01 D8           2283 	.byte -0x07, 0x01, -0x28
   64D9 4B 66              2284 	.word SMVB_continue_single
   64DB 00 01 FF           2285 	.byte  0x00, 0x01, -0x01
   64DE 4C 70              2286 	.word SMVB_startMove_single
   64E0 21 01 23           2287 	.byte  0x21, 0x01,  0x23
   64E3 4D BA              2288 	.word SMVB_startDraw_single
   64E5 2B 01 00           2289 	.byte  0x2B, 0x01,  0x00
   64E8 4B 18              2290 	.word SMVB_continue7_single
   64EA 19 01 EA           2291 	.byte  0x19, 0x01, -0x16
   64ED 03 01 CA           2292 	.byte  0x03, 0x01, -0x36
   64F0 E4 01 E2           2293 	.byte -0x1C, 0x01, -0x1E
   64F3 D5 01 00           2294 	.byte -0x2B, 0x01,  0x00
   64F6 E4 01 23           2295 	.byte -0x1C, 0x01,  0x23
   64F9 E6 01 00           2296 	.byte -0x1A, 0x01,  0x00
   64FC D8 01 CB           2297 	.byte -0x28, 0x01, -0x35
   64FF 4B 59              2298 	.word SMVB_continue2_single
   6501 1A 01 EF           2299 	.byte  0x1A, 0x01, -0x11
   6504 D4 01 0B           2300 	.byte -0x2C, 0x01,  0x0B
   6507 4B 73              2301 	.word SMVB_continue_yd4_single
   6509 02 01 0D           2302 	.byte  0x02, 0x01,  0x0D
   650C 4B 25              2303 	.word SMVB_continue6_single
   650E E4 01 17           2304 	.byte -0x1C, 0x01,  0x17
   6511 F2 01 16           2305 	.byte -0x0E, 0x01,  0x16
   6514 C8 01 00           2306 	.byte -0x38, 0x01,  0x00
   6517 F7 01 C6           2307 	.byte -0x09, 0x01, -0x3A
   651A 49 01 F8           2308 	.byte  0x49, 0x01, -0x08
   651D 0C 01 E7           2309 	.byte  0x0C, 0x01, -0x19
   6520 4B 73              2310 	.word SMVB_continue_yd4_single
   6522 64 01 F3           2311 	.byte  0x64, 0x01, -0x0D
   6525 4B 66              2312 	.word SMVB_continue_single
   6527 0D 01 33           2313 	.byte  0x0D, 0x01,  0x33
   652A 4B 73              2314 	.word SMVB_continue_yd4_single
   652C F8 01 34           2315 	.byte -0x08, 0x01,  0x34
   652F 4B 66              2316 	.word SMVB_continue_single
   6531 BD 01 DF           2317 	.byte -0x43, 0x01, -0x21
   6534 4C 70              2318 	.word SMVB_startMove_yd4_single
   6536 1C 01 2F           2319 	.byte  0x1C, 0x01,  0x2F
   6539 4D BA              2320 	.word SMVB_startDraw_single
   653B 0F 01 00           2321 	.byte  0x0F, 0x01,  0x00
   653E 4B 25              2322 	.word SMVB_continue6_single
   6540 FE 01 0D           2323 	.byte -0x02, 0x01,  0x0D
   6543 F4 01 FF           2324 	.byte -0x0C, 0x01, -0x01
   6546 E4 01 2F           2325 	.byte -0x1C, 0x01,  0x2F
   6549 F0 01 CB           2326 	.byte -0x10, 0x01, -0x35
   654C 10 01 CB           2327 	.byte  0x10, 0x01, -0x35
   654F 41 01 0B           2328 	.byte  0x41, 0x01,  0x0B
   6552 4C 9D              2329 	.word SMVB_startMove_double
   6554 10 01 00           2330 	.byte  0x10, 0x01,  0x00
   6557 4D BA              2331 	.word SMVB_startDraw_single
   6559 FA 01 17           2332 	.byte -0x06, 0x01,  0x17
   655C 4B 4C              2333 	.word SMVB_continue3_single
   655E F1 01 00           2334 	.byte -0x0F, 0x01,  0x00
   6561 05 01 E9           2335 	.byte  0x05, 0x01, -0x17
   6564 EE 01 0B           2336 	.byte -0x12, 0x01,  0x0B
   6567 4C 70              2337 	.word SMVB_startMove_single
   6569 FA 01 24           2338 	.byte -0x06, 0x01,  0x24
   656C 4D BA              2339 	.word SMVB_startDraw_single
   656E F1 01 00           2340 	.byte -0x0F, 0x01,  0x00
   6571 4B 4C              2341 	.word SMVB_continue3_single
   6573 07 01 DC           2342 	.byte  0x07, 0x01, -0x24
   6576 0E 01 00           2343 	.byte  0x0E, 0x01,  0x00
   6579 00 01 18           2344 	.byte  0x00, 0x01,  0x18
   657C 4D 69              2345 	.word SMVB_startMove_yStays_single; y was  0x0E, now 0
   657E 06 01 17           2346 	.byte  0x06, 0x01,  0x17
   6581 4D BA              2347 	.word SMVB_startDraw_single
   6583 10 01 03           2348 	.byte  0x10, 0x01,  0x03
   6586 4B 4C              2349 	.word SMVB_continue3_single
   6588 F9 01 E6           2350 	.byte -0x07, 0x01, -0x1A
   658B F1 01 00           2351 	.byte -0x0F, 0x01,  0x00
   658E C4 01 58           2352 	.byte -0x3C, 0x01,  0x58
   6591 4C 70              2353 	.word SMVB_startMove_single
   6593 12 01 FA           2354 	.byte  0x12, 0x01, -0x06
   6596 4D BA              2355 	.word SMVB_startDraw_single
   6598 05 01 F4           2356 	.byte  0x05, 0x01, -0x0C
   659B 4B 18              2357 	.word SMVB_continue7_single
   659D 0C 01 01           2358 	.byte  0x0C, 0x01,  0x01
   65A0 FD 01 0A           2359 	.byte -0x03, 0x01,  0x0A
   65A3 0E 01 01           2360 	.byte  0x0E, 0x01,  0x01
   65A6 05 01 EC           2361 	.byte  0x05, 0x01, -0x14
   65A9 0E 01 00           2362 	.byte  0x0E, 0x01,  0x00
   65AC FC 01 0E           2363 	.byte -0x04, 0x01,  0x0E
   65AF 12 01 01           2364 	.byte  0x12, 0x01,  0x01
   65B2 4B 18              2365 	.word SMVB_continue7_single
   65B4 01 01 F1           2366 	.byte  0x01, 0x01, -0x0F
   65B7 0E 01 00           2367 	.byte  0x0E, 0x01,  0x00
   65BA FB 01 20           2368 	.byte -0x05, 0x01,  0x20
   65BD 0D 01 00           2369 	.byte  0x0D, 0x01,  0x00
   65C0 FB 01 18           2370 	.byte -0x05, 0x01,  0x18
   65C3 F3 01 00           2371 	.byte -0x0D, 0x01,  0x00
   65C6 FB 01 25           2372 	.byte -0x05, 0x01,  0x25
   65C9 4B 18              2373 	.word SMVB_continue7_single
   65CB F5 01 FE           2374 	.byte -0x0B, 0x01, -0x02
   65CE 02 01 F5           2375 	.byte  0x02, 0x01, -0x0B
   65D1 F1 01 00           2376 	.byte -0x0F, 0x01,  0x00
   65D4 FF 01 0B           2377 	.byte -0x01, 0x01,  0x0B
   65D7 F1 01 FE           2378 	.byte -0x0F, 0x01, -0x02
   65DA 02 01 EB           2379 	.byte  0x02, 0x01, -0x15
   65DD F2 01 00           2380 	.byte -0x0E, 0x01,  0x00
   65E0 4B 18              2381 	.word SMVB_continue7_single
   65E2 FC 01 0C           2382 	.byte -0x04, 0x01,  0x0C
   65E5 F3 01 FF           2383 	.byte -0x0D, 0x01, -0x01
   65E8 03 01 F5           2384 	.byte  0x03, 0x01, -0x0B
   65EB F2 01 00           2385 	.byte -0x0E, 0x01,  0x00
   65EE FD 01 0E           2386 	.byte -0x03, 0x01,  0x0E
   65F1 DB 01 FE           2387 	.byte -0x25, 0x01, -0x02
   65F4 FC 01 F6           2388 	.byte -0x04, 0x01, -0x0A
   65F7 4B 3F              2389 	.word SMVB_continue4_single
   65F9 F6 01 FF           2390 	.byte -0x0A, 0x01, -0x01
   65FC 05 01 DD           2391 	.byte  0x05, 0x01, -0x23
   65FF 0A 01 00           2392 	.byte  0x0A, 0x01,  0x00
   6602 FD 01 E0           2393 	.byte -0x03, 0x01, -0x20
   6605 4C 70              2394 	.word SMVB_startMove_single
   6607 BB 01 00           2395 	.byte -0x45, 0x01,  0x00
   660A 4D 9A              2396 	.word SMVB_startDraw_yd4_double
   660C 05 01 C3           2397 	.byte  0x05, 0x01, -0x3D
   660F 4B 3F              2398 	.word SMVB_continue4_single
   6611 38 01 00           2399 	.byte  0x38, 0x01,  0x00
   6614 0E 01 17           2400 	.byte  0x0E, 0x01,  0x17
   6617 1D 01 22           2401 	.byte  0x1D, 0x01,  0x22
   661A FE 00 00           2402 	.byte  0xfe, 0x00,  0x00
   661D 4E D9              2403 	.word SMVB_lastDraw_rts2
                           2404  .globl _MinotaurList
   661F                    2405 _MinotaurList:
   661F 66 01 CE           2406 	.byte  0x66, 0x01, -0x32
   6622 4C 1C              2407 	.word SMVB_continue_double
   6624 00 01 0D           2408 	.byte  0x00, 0x01,  0x0D
   6627 4D BA              2409 	.word SMVB_startDraw_yd4_single
   6629 E8 01 04           2410 	.byte -0x18, 0x01,  0x04
   662C 4B 4C              2411 	.word SMVB_continue3_single
   662E 0C 01 EF           2412 	.byte  0x0C, 0x01, -0x11
   6631 0C 01 00           2413 	.byte  0x0C, 0x01,  0x00
   6634 01 01 35           2414 	.byte  0x01, 0x01,  0x35
   6637 4C 70              2415 	.word SMVB_startMove_single
   6639 00 01 0B           2416 	.byte  0x00, 0x01,  0x0B
   663C 4D BA              2417 	.word SMVB_startDraw_single
   663E F4 01 00           2418 	.byte -0x0C, 0x01,  0x00
   6641 4B 4C              2419 	.word SMVB_continue3_single
   6643 F4 01 F0           2420 	.byte -0x0C, 0x01, -0x10
   6646 18 01 05           2421 	.byte  0x18, 0x01,  0x05
   6649 DB 01 FA           2422 	.byte -0x25, 0x01, -0x06
   664C 4C 70              2423 	.word SMVB_startMove_yd4_single
   664E 01 01 EA           2424 	.byte  0x01, 0x01, -0x16
   6651 4D BA              2425 	.word SMVB_startDraw_single
   6653 F5 01 F3           2426 	.byte -0x0B, 0x01, -0x0D
   6656 4B 4C              2427 	.word SMVB_continue3_single
   6658 00 01 31           2428 	.byte  0x00, 0x01,  0x31
   665B 0A 01 F3           2429 	.byte  0x0A, 0x01, -0x0D
   665E A6 01 11           2430 	.byte -0x5A, 0x01,  0x11
   6661 4C 70              2431 	.word SMVB_startMove_yd4_single
   6663 D9 01 0C           2432 	.byte -0x27, 0x01,  0x0C
   6666 4D BA              2433 	.word SMVB_startDraw_single
   6668 CC 01 FF           2434 	.byte -0x34, 0x01, -0x01
   666B 4B 18              2435 	.word SMVB_continue7_single
   666D 01 01 E8           2436 	.byte  0x01, 0x01, -0x18
   6670 31 01 FF           2437 	.byte  0x31, 0x01, -0x01
   6673 12 01 F7           2438 	.byte  0x12, 0x01, -0x09
   6676 00 01 F0           2439 	.byte  0x00, 0x01, -0x10
   6679 E3 01 EA           2440 	.byte -0x1D, 0x01, -0x16
   667C E5 01 DF           2441 	.byte -0x1B, 0x01, -0x21
   667F FF 01 EC           2442 	.byte -0x01, 0x01, -0x14
   6682 4B 3F              2443 	.word SMVB_continue4_single
   6684 14 01 FF           2444 	.byte  0x14, 0x01, -0x01
   6687 17 01 22           2445 	.byte  0x17, 0x01,  0x22
   668A 29 01 0F           2446 	.byte  0x29, 0x01,  0x0F
   668D 0D 01 00           2447 	.byte  0x0D, 0x01,  0x00
   6690 4C 70              2448 	.word SMVB_startMove_single
   6692 0B 01 00           2449 	.byte  0x0B, 0x01,  0x00
   6695 4D BA              2450 	.word SMVB_startDraw_single
   6697 00 01 D5           2451 	.byte  0x00, 0x01, -0x2B
   669A 4B 3F              2452 	.word SMVB_continue4_single
   669C DB 01 F8           2453 	.byte -0x25, 0x01, -0x08
   669F FE 01 E5           2454 	.byte -0x02, 0x01, -0x1B
   66A2 42 01 10           2455 	.byte  0x42, 0x01,  0x10
   66A5 FC 01 3D           2456 	.byte -0x04, 0x01,  0x3D
   66A8 4B 73              2457 	.word SMVB_continue_yd4_single
   66AA 0B 01 20           2458 	.byte  0x0B, 0x01,  0x20
   66AD 4B 18              2459 	.word SMVB_continue7_single
   66AF 05 01 EB           2460 	.byte  0x05, 0x01, -0x15
   66B2 1F 01 F0           2461 	.byte  0x1F, 0x01, -0x10
   66B5 07 01 E2           2462 	.byte  0x07, 0x01, -0x1E
   66B8 14 01 F2           2463 	.byte  0x14, 0x01, -0x0E
   66BB 0C 01 F1           2464 	.byte  0x0C, 0x01, -0x0F
   66BE 12 01 04           2465 	.byte  0x12, 0x01,  0x04
   66C1 12 01 0E           2466 	.byte  0x12, 0x01,  0x0E
   66C4 4B 18              2467 	.word SMVB_continue7_single
   66C6 0A 01 43           2468 	.byte  0x0A, 0x01,  0x43
   66C9 E4 01 D3           2469 	.byte -0x1C, 0x01, -0x2D
   66CC F3 01 00           2470 	.byte -0x0D, 0x01,  0x00
   66CF FC 01 3C           2471 	.byte -0x04, 0x01,  0x3C
   66D2 06 01 3F           2472 	.byte  0x06, 0x01,  0x3F
   66D5 0B 01 0B           2473 	.byte  0x0B, 0x01,  0x0B
   66D8 1F 01 D2           2474 	.byte  0x1F, 0x01, -0x2E
   66DB 4B 18              2475 	.word SMVB_continue7_single
   66DD F4 01 38           2476 	.byte -0x0C, 0x01,  0x38
   66E0 F1 01 10           2477 	.byte -0x0F, 0x01,  0x10
   66E3 F2 01 03           2478 	.byte -0x0E, 0x01,  0x03
   66E6 F1 01 F2           2479 	.byte -0x0F, 0x01, -0x0E
   66E9 E8 01 F7           2480 	.byte -0x18, 0x01, -0x09
   66EC FE 01 E1           2481 	.byte -0x02, 0x01, -0x1F
   66EF DC 01 FA           2482 	.byte -0x24, 0x01, -0x06
   66F2 4B 3F              2483 	.word SMVB_continue4_single
   66F4 FC 01 E8           2484 	.byte -0x04, 0x01, -0x18
   66F7 F6 01 20           2485 	.byte -0x0A, 0x01,  0x20
   66FA FE 01 1C           2486 	.byte -0x02, 0x01,  0x1C
   66FD BF 01 03           2487 	.byte -0x41, 0x01,  0x03
   6700 4B 73              2488 	.word SMVB_continue_yd4_single
   6702 FE 01 EC           2489 	.byte -0x02, 0x01, -0x14
   6705 4B 59              2490 	.word SMVB_continue2_single
   6707 30 01 FA           2491 	.byte  0x30, 0x01, -0x06
   670A F1 01 00           2492 	.byte -0x0F, 0x01,  0x00
   670D 4C 70              2493 	.word SMVB_startMove_yd4_single
   670F 04 01 BE           2494 	.byte  0x04, 0x01, -0x42
   6712 4C BD              2495 	.word SMVB_startDraw_double
   6714 02 01 E3           2496 	.byte  0x02, 0x01, -0x1D
   6717 4C 70              2497 	.word SMVB_startMove_single
   6719 01 01 DC           2498 	.byte  SHITREG_POKE_VALUE, 0x01, -0x24
   671C 4D 7F              2499 	.word SMVB_startDraw_yStays_single; y was  0x02, now SHIFT Poke
   671E F3 01 00           2500 	.byte -0x0D, 0x01,  0x00
   6721 4B 59              2501 	.word SMVB_continue2_single
   6723 FE 01 22           2502 	.byte -0x02, 0x01,  0x22
   6726 FC 01 53           2503 	.byte -0x04, 0x01,  0x53
   6729 4C 9D              2504 	.word SMVB_startMove_double
   672B 04 01 BB           2505 	.byte  0x04, 0x01, -0x45
   672E 4C BD              2506 	.word SMVB_startDraw_double
   6730 F9 01 51           2507 	.byte -0x07, 0x01,  0x51
   6733 4C 9D              2508 	.word SMVB_startMove_double
   6735 E8 01 0E           2509 	.byte -0x18, 0x01,  0x0E
   6738 4D BA              2510 	.word SMVB_startDraw_single
   673A E9 01 4B           2511 	.byte -0x17, 0x01,  0x4B
   673D 4B 18              2512 	.word SMVB_continue7_single
   673F 23 01 CA           2513 	.byte  0x23, 0x01, -0x36
   6742 05 01 31           2514 	.byte  0x05, 0x01,  0x31
   6745 13 01 CF           2515 	.byte  0x13, 0x01, -0x31
   6748 18 01 3F           2516 	.byte  0x18, 0x01,  0x3F
   674B FC 01 AC           2517 	.byte -0x04, 0x01, -0x54
   674E EF 01 F1           2518 	.byte -0x11, 0x01, -0x0F
   6751 FE 00 00           2519 	.byte  0xfe, 0x00,  0x00
   6754 4E D9              2520 	.word SMVB_lastDraw_rts2
                           2521  .globl _GiantList
   6756                    2522 _GiantList:
   6756 D9 01 97           2523 	.byte -0x27, 0x01, -0x69
   6759 4B 66              2524 	.word SMVB_continue_single
   675B 02 01 E0           2525 	.byte  0x02, 0x01, -0x20
   675E 4D BA              2526 	.word SMVB_startDraw_single
   6760 6E 01 00           2527 	.byte  0x6E, 0x01,  0x00
   6763 4B 66              2528 	.word SMVB_continue_single
   6765 01 01 0C           2529 	.byte  0x01, 0x01,  0x0C
   6768 4B 73              2530 	.word SMVB_continue_yd4_single
   676A BE 01 0A           2531 	.byte -0x42, 0x01,  0x0A
   676D 4C 2A              2532 	.word SMVB_continue_yd4_double
   676F 7E 01 EA           2533 	.byte  0x7E, 0x01, -0x16
   6772 4C FD              2534 	.word SMVB_startMove_tripple
   6774 00 01 16           2535 	.byte  0x00, 0x01,  0x16
   6777 4D BA              2536 	.word SMVB_startDraw_yd4_single
   6779 16 01 00           2537 	.byte  0x16, 0x01,  0x00
   677C 4B 4C              2538 	.word SMVB_continue3_single
   677E 00 01 EA           2539 	.byte  0x00, 0x01, -0x16
   6781 EA 01 00           2540 	.byte -0x16, 0x01,  0x00
   6784 E8 01 1B           2541 	.byte -0x18, 0x01,  0x1B
   6787 4C 70              2542 	.word SMVB_startMove_single
   6789 15 01 06           2543 	.byte  0x15, 0x01,  0x06
   678C 4D BA              2544 	.word SMVB_startDraw_single
   678E 00 01 0A           2545 	.byte  0x00, 0x01,  0x0A
   6791 4B 59              2546 	.word SMVB_continue2_single
   6793 EA 01 00           2547 	.byte -0x16, 0x01,  0x00
   6796 1A 01 0C           2548 	.byte  0x1A, 0x01,  0x0C
   6799 4C 70              2549 	.word SMVB_startMove_single
   679B 16 01 00           2550 	.byte  0x16, 0x01,  0x00
   679E 4D BA              2551 	.word SMVB_startDraw_single
   67A0 00 01 16           2552 	.byte  0x00, 0x01,  0x16
   67A3 4B 4C              2553 	.word SMVB_continue3_single
   67A5 EA 01 00           2554 	.byte -0x16, 0x01,  0x00
   67A8 00 01 EB           2555 	.byte  0x00, 0x01, -0x15
   67AB 1F 01 29           2556 	.byte  0x1F, 0x01,  0x29
   67AE 4C 70              2557 	.word SMVB_startMove_single
   67B0 0E 01 EB           2558 	.byte  0x0E, 0x01, -0x15
   67B3 4D BA              2559 	.word SMVB_startDraw_single
   67B5 00 01 E8           2560 	.byte  0x00, 0x01, -0x18
   67B8 4B 18              2561 	.word SMVB_continue7_single
   67BA 0B 01 EF           2562 	.byte  0x0B, 0x01, -0x11
   67BD F7 01 E9           2563 	.byte -0x09, 0x01, -0x17
   67C0 01 01 E7           2564 	.byte  0x01, 0x01, -0x19
   67C3 D3 01 F3           2565 	.byte -0x2D, 0x01, -0x0D
   67C6 D1 01 00           2566 	.byte -0x2F, 0x01,  0x00
   67C9 F2 01 1B           2567 	.byte -0x0E, 0x01,  0x1B
   67CC EA 01 15           2568 	.byte -0x16, 0x01,  0x15
   67CF 4B 66              2569 	.word SMVB_continue_single
   67D1 25 01 35           2570 	.byte  0x25, 0x01,  0x35
   67D4 4C 70              2571 	.word SMVB_startMove_single
   67D6 F4 01 C9           2572 	.byte -0x0C, 0x01, -0x37
   67D9 4D BA              2573 	.word SMVB_startDraw_single
   67DB 16 01 EF           2574 	.byte  0x16, 0x01, -0x11
   67DE 4B 59              2575 	.word SMVB_continue2_single
   67E0 F7 01 49           2576 	.byte -0x09, 0x01,  0x49
   67E3 B2 01 07           2577 	.byte -0x4E, 0x01,  0x07
   67E6 4C 70              2578 	.word SMVB_startMove_yd4_single
   67E8 E6 01 1A           2579 	.byte -0x1A, 0x01,  0x1A
   67EB 4D BA              2580 	.word SMVB_startDraw_single
   67ED C8 01 E3           2581 	.byte -0x38, 0x01, -0x1D
   67F0 4B 66              2582 	.word SMVB_continue_single
   67F2 EB 01 11           2583 	.byte -0x15, 0x01,  0x11
   67F5 4C 70              2584 	.word SMVB_startMove_single
   67F7 1E 01 DB           2585 	.byte  0x1E, 0x01, -0x25
   67FA 4D BA              2586 	.word SMVB_startDraw_single
   67FC F6 01 AC           2587 	.byte -0x0A, 0x01, -0x54
   67FF 4B 66              2588 	.word SMVB_continue_single
   6801 06 01 B4           2589 	.byte  0x06, 0x01, -0x4C
   6804 4C 70              2590 	.word SMVB_startMove_single
   6806 A2 01 0A           2591 	.byte -0x5E, 0x01,  0x0A
   6809 4D BA              2592 	.word SMVB_startDraw_yd4_single
   680B FD 01 F2           2593 	.byte -0x03, 0x01, -0x0E
   680E 4B 18              2594 	.word SMVB_continue7_single
   6810 F1 01 00           2595 	.byte -0x0F, 0x01,  0x00
   6813 E8 01 E2           2596 	.byte -0x18, 0x01, -0x1E
   6816 02 01 1C           2597 	.byte  0x02, 0x01,  0x1C
   6819 E4 01 01           2598 	.byte -0x1C, 0x01,  0x01
   681C 06 01 16           2599 	.byte  0x06, 0x01,  0x16
   681F EA 01 0A           2600 	.byte -0x16, 0x01,  0x0A
   6822 18 01 0B           2601 	.byte  0x18, 0x01,  0x0B
   6825 4B 18              2602 	.word SMVB_continue7_single
   6827 02 01 14           2603 	.byte  0x02, 0x01,  0x14
   682A 14 01 00           2604 	.byte  0x14, 0x01,  0x00
   682D 12 01 17           2605 	.byte  0x12, 0x01,  0x17
   6830 06 01 EC           2606 	.byte  0x06, 0x01, -0x14
   6833 18 01 FE           2607 	.byte  0x18, 0x01, -0x02
   6836 FB 01 E9           2608 	.byte -0x05, 0x01, -0x17
   6839 5D 01 EC           2609 	.byte  0x5D, 0x01, -0x14
   683C 4B 66              2610 	.word SMVB_continue_single
   683E 3B 01 11           2611 	.byte  0x3B, 0x01,  0x11
   6841 4C 70              2612 	.word SMVB_startMove_single
   6843 16 01 17           2613 	.byte  0x16, 0x01,  0x17
   6846 4D BA              2614 	.word SMVB_startDraw_single
   6848 D6 01 FA           2615 	.byte -0x2A, 0x01, -0x06
   684B 4B 73              2616 	.word SMVB_continue_yd4_single
   684D D1 01 10           2617 	.byte -0x2F, 0x01,  0x10
   6850 4B 66              2618 	.word SMVB_continue_single
   6852 A8 01 08           2619 	.byte -0x58, 0x01,  0x08
   6855 4C 1C              2620 	.word SMVB_continue_double
   6857 00 01 57           2621 	.byte  0x00, 0x01,  0x57
   685A 4C 1C              2622 	.word SMVB_continue_double
   685C 16 01 E3           2623 	.byte  0x16, 0x01, -0x1D
   685F 4B 59              2624 	.word SMVB_continue2_single
   6861 00 01 E0           2625 	.byte  0x00, 0x01, -0x20
   6864 42 01 00           2626 	.byte  0x42, 0x01,  0x00
   6867 4C 1C              2627 	.word SMVB_continue_double
   6869 00 01 17           2628 	.byte  0x00, 0x01,  0x17
   686C 4B 75              2629 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   686E 2C 01 13           2630 	.byte  0x2C, 0x01,  0x13
   6871 4B 18              2631 	.word SMVB_continue7_single
   6873 36 01 04           2632 	.byte  0x36, 0x01,  0x04
   6876 20 01 E5           2633 	.byte  0x20, 0x01, -0x1B
   6879 08 01 D2           2634 	.byte  0x08, 0x01, -0x2E
   687C 16 01 05           2635 	.byte  0x16, 0x01,  0x05
   687F 10 01 16           2636 	.byte  0x10, 0x01,  0x16
   6882 64 01 00           2637 	.byte  0x64, 0x01,  0x00
   6885 12 01 EF           2638 	.byte  0x12, 0x01, -0x11
   6888 4B 73              2639 	.word SMVB_continue_yd4_single
   688A 09 01 E4           2640 	.byte  0x09, 0x01, -0x1C
   688D 4B 3F              2641 	.word SMVB_continue4_single
   688F 00 01 B2           2642 	.byte  0x00, 0x01, -0x4E
   6892 F6 01 E8           2643 	.byte -0x0A, 0x01, -0x18
   6895 E9 01 F7           2644 	.byte -0x17, 0x01, -0x09
   6898 A3 01 FA           2645 	.byte -0x5D, 0x01, -0x06
   689B 4B 73              2646 	.word SMVB_continue_yd4_single
   689D ED 01 1C           2647 	.byte -0x13, 0x01,  0x1C
   68A0 4B 32              2648 	.word SMVB_continue5_single
   68A2 C7 01 C4           2649 	.byte -0x39, 0x01, -0x3C
   68A5 B0 01 F0           2650 	.byte -0x50, 0x01, -0x10
   68A8 10 01 29           2651 	.byte  0x10, 0x01,  0x29
   68AB 33 01 08           2652 	.byte  0x33, 0x01,  0x08
   68AE FE 00 00           2653 	.byte  0xfe, 0x00,  0x00
   68B1 4E D9              2654 	.word SMVB_lastDraw_rts2
                           2655  .globl _SpecterList
   68B3                    2656 _SpecterList:
   68B3 3E 01 A4           2657 	.byte  0x3E, 0x01, -0x5C
   68B6 4B 66              2658 	.word SMVB_continue_single
   68B8 CE 01 FB           2659 	.byte -0x32, 0x01, -0x05
   68BB 4D BA              2660 	.word SMVB_startDraw_yd4_single
   68BD F4 01 0C           2661 	.byte -0x0C, 0x01,  0x0C
   68C0 4B 32              2662 	.word SMVB_continue5_single
   68C2 FB 01 13           2663 	.byte -0x05, 0x01,  0x13
   68C5 F9 01 0D           2664 	.byte -0x07, 0x01,  0x0D
   68C8 16 01 1E           2665 	.byte  0x16, 0x01,  0x1E
   68CB 71 01 21           2666 	.byte  0x71, 0x01,  0x21
   68CE 25 01 00           2667 	.byte  0x25, 0x01,  0x00
   68D1 4B 73              2668 	.word SMVB_continue_yd4_single
   68D3 11 01 EC           2669 	.byte  0x11, 0x01, -0x14
   68D6 4B 18              2670 	.word SMVB_continue7_single
   68D8 21 01 06           2671 	.byte  0x21, 0x01,  0x06
   68DB 01 01 10           2672 	.byte  0x01, 0x01,  0x10
   68DE F1 01 14           2673 	.byte -0x0F, 0x01,  0x14
   68E1 05 01 0E           2674 	.byte  0x05, 0x01,  0x0E
   68E4 10 01 FF           2675 	.byte  0x10, 0x01, -0x01
   68E7 0C 01 EB           2676 	.byte  0x0C, 0x01, -0x15
   68EA 01 01 BC           2677 	.byte  0x01, 0x01, -0x44
   68ED 4B 18              2678 	.word SMVB_continue7_single
   68EF 09 01 F9           2679 	.byte  0x09, 0x01, -0x07
   68F2 00 01 B1           2680 	.byte  0x00, 0x01, -0x4F
   68F5 F5 01 F5           2681 	.byte -0x0B, 0x01, -0x0B
   68F8 DE 01 FD           2682 	.byte -0x22, 0x01, -0x03
   68FB E6 01 0B           2683 	.byte -0x1A, 0x01,  0x0B
   68FE 08 01 E1           2684 	.byte  0x08, 0x01, -0x1F
   6901 00 01 DE           2685 	.byte  0x00, 0x01, -0x22
   6904 4B 18              2686 	.word SMVB_continue7_single
   6906 F3 01 F6           2687 	.byte -0x0D, 0x01, -0x0A
   6909 DA 01 05           2688 	.byte -0x26, 0x01,  0x05
   690C FF 01 39           2689 	.byte -0x01, 0x01,  0x39
   690F F3 01 F6           2690 	.byte -0x0D, 0x01, -0x0A
   6912 D1 01 ED           2691 	.byte -0x2F, 0x01, -0x13
   6915 CE 01 01           2692 	.byte -0x32, 0x01,  0x01
   6918 F4 01 F5           2693 	.byte -0x0C, 0x01, -0x0B
   691B 4B 18              2694 	.word SMVB_continue7_single
   691D FC 01 F3           2695 	.byte -0x04, 0x01, -0x0D
   6920 F8 01 00           2696 	.byte -0x08, 0x01,  0x00
   6923 01 01 2A           2697 	.byte  0x01, 0x01,  0x2A
   6926 07 01 09           2698 	.byte  0x07, 0x01,  0x09
   6929 04 01 1B           2699 	.byte  0x04, 0x01,  0x1B
   692C 0C 01 0C           2700 	.byte  0x0C, 0x01,  0x0C
   692F 23 01 FA           2701 	.byte  0x23, 0x01, -0x06
   6932 4B 59              2702 	.word SMVB_continue2_single
   6934 0E 01 16           2703 	.byte  0x0E, 0x01,  0x16
   6937 75 01 ED           2704 	.byte  0x75, 0x01, -0x13
   693A 4C 70              2705 	.word SMVB_startMove_single
   693C 0A 01 F6           2706 	.byte  0x0A, 0x01, -0x0A
   693F 4D BA              2707 	.word SMVB_startDraw_yd4_single
   6941 14 01 FF           2708 	.byte  0x14, 0x01, -0x01
   6944 4B 18              2709 	.word SMVB_continue7_single
   6946 11 01 08           2710 	.byte  0x11, 0x01,  0x08
   6949 FF 01 2D           2711 	.byte -0x01, 0x01,  0x2D
   694C F1 01 0B           2712 	.byte -0x0F, 0x01,  0x0B
   694F E5 01 F5           2713 	.byte -0x1B, 0x01, -0x0B
   6952 EC 01 FB           2714 	.byte -0x14, 0x01, -0x05
   6955 F4 01 0B           2715 	.byte -0x0C, 0x01,  0x0B
   6958 00 01 22           2716 	.byte  0x00, 0x01,  0x22
   695B 4B 18              2717 	.word SMVB_continue7_single
   695D 07 01 0C           2718 	.byte  0x07, 0x01,  0x0C
   6960 EB 01 04           2719 	.byte -0x15, 0x01,  0x04
   6963 00 01 CC           2720 	.byte  0x00, 0x01, -0x34
   6966 F3 01 F6           2721 	.byte -0x0D, 0x01, -0x0A
   6969 DA 01 00           2722 	.byte -0x26, 0x01,  0x00
   696C DA 01 0F           2723 	.byte -0x26, 0x01,  0x0F
   696F DC 01 06           2724 	.byte -0x24, 0x01,  0x06
   6972 4B 18              2725 	.word SMVB_continue7_single
   6974 02 01 EF           2726 	.byte  0x02, 0x01, -0x11
   6977 23 01 FC           2727 	.byte  0x23, 0x01, -0x04
   697A 1B 01 F1           2728 	.byte  0x1B, 0x01, -0x0F
   697D FC 01 E8           2729 	.byte -0x04, 0x01, -0x18
   6980 E9 01 F0           2730 	.byte -0x17, 0x01, -0x10
   6983 DF 01 FB           2731 	.byte -0x21, 0x01, -0x05
   6986 FC 01 EF           2732 	.byte -0x04, 0x01, -0x11
   6989 4B 18              2733 	.word SMVB_continue7_single
   698B 33 01 02           2734 	.byte  0x33, 0x01,  0x02
   698E 1C 01 0A           2735 	.byte  0x1C, 0x01,  0x0A
   6991 17 01 0C           2736 	.byte  0x17, 0x01,  0x0C
   6994 10 01 00           2737 	.byte  0x10, 0x01,  0x00
   6997 0A 01 CB           2738 	.byte  0x0A, 0x01, -0x35
   699A 0F 01 FA           2739 	.byte  0x0F, 0x01, -0x06
   699D 05 01 0C           2740 	.byte  0x05, 0x01,  0x0C
   69A0 4B 3F              2741 	.word SMVB_continue4_single
   69A2 F4 01 35           2742 	.byte -0x0C, 0x01,  0x35
   69A5 0A 01 0C           2743 	.byte  0x0A, 0x01,  0x0C
   69A8 11 01 00           2744 	.byte  0x11, 0x01,  0x00
   69AB 24 01 02           2745 	.byte  0x24, 0x01,  0x02
   69AE 4C 70              2746 	.word SMVB_startMove_single
   69B0 F3 01 00           2747 	.byte -0x0D, 0x01,  0x00
   69B3 4D BA              2748 	.word SMVB_startDraw_single
   69B5 F8 01 07           2749 	.byte -0x08, 0x01,  0x07
   69B8 4B 18              2750 	.word SMVB_continue7_single
   69BA F7 01 02           2751 	.byte -0x09, 0x01,  0x02
   69BD 01 01 0E           2752 	.byte  0x01, 0x01,  0x0E
   69C0 0D 01 02           2753 	.byte  0x0D, 0x01,  0x02
   69C3 04 01 06           2754 	.byte  0x04, 0x01,  0x06
   69C6 0D 01 00           2755 	.byte  0x0D, 0x01,  0x00
   69C9 03 01 EF           2756 	.byte  0x03, 0x01, -0x11
   69CC FD 01 F1           2757 	.byte -0x03, 0x01, -0x0F
   69CF 4B 66              2758 	.word SMVB_continue_single
   69D1 00 01 3E           2759 	.byte  0x00, 0x01,  0x3E
   69D4 4D 69              2760 	.word SMVB_startMove_yStays_single; y was -0x03, now 0
   69D6 FF 01 0A           2761 	.byte -0x01, 0x01,  0x0A
   69D9 4D BA              2762 	.word SMVB_startDraw_single
   69DB D6 01 00           2763 	.byte -0x2A, 0x01,  0x00
   69DE 4B 3F              2764 	.word SMVB_continue4_single
   69E0 01 01 ED           2765 	.byte  0x01, 0x01, -0x13
   69E3 14 01 00           2766 	.byte  0x14, 0x01,  0x00
   69E6 16 01 08           2767 	.byte  0x16, 0x01,  0x08
   69E9 AB 01 01           2768 	.byte -0x55, 0x01,  0x01
   69EC 4C 70              2769 	.word SMVB_startMove_yd4_single
   69EE F4 01 F6           2770 	.byte -0x0C, 0x01, -0x0A
   69F1 4D BA              2771 	.word SMVB_startDraw_single
   69F3 E7 01 00           2772 	.byte -0x19, 0x01,  0x00
   69F6 4B 32              2773 	.word SMVB_continue5_single
   69F8 E7 01 0A           2774 	.byte -0x19, 0x01,  0x0A
   69FB 07 01 0B           2775 	.byte  0x07, 0x01,  0x0B
   69FE 32 01 00           2776 	.byte  0x32, 0x01,  0x00
   6A01 04 01 F5           2777 	.byte  0x04, 0x01, -0x0B
   6A04 FE 00 00           2778 	.byte  0xfe, 0x00,  0x00
   6A07 4E D9              2779 	.word SMVB_lastDraw_rts2
                           2780  .globl _VampireList
   6A09                    2781 _VampireList:
   6A09 4D 01 E4           2782 	.byte  0x4D, 0x01, -0x1C
   6A0C 4C 1C              2783 	.word SMVB_continue_double
   6A0E F2 01 0D           2784 	.byte -0x0E, 0x01,  0x0D
   6A11 4D BA              2785 	.word SMVB_startDraw_yd4_single
   6A13 F6 01 0E           2786 	.byte -0x0A, 0x01,  0x0E
   6A16 4B 18              2787 	.word SMVB_continue7_single
   6A18 00 01 39           2788 	.byte  0x00, 0x01,  0x39
   6A1B 0B 01 0C           2789 	.byte  0x0B, 0x01,  0x0C
   6A1E 02 01 2F           2790 	.byte  0x02, 0x01,  0x2F
   6A21 F1 01 E2           2791 	.byte -0x0F, 0x01, -0x1E
   6A24 EA 01 05           2792 	.byte -0x16, 0x01,  0x05
   6A27 F5 01 0C           2793 	.byte -0x0B, 0x01,  0x0C
   6A2A 00 01 EA           2794 	.byte  0x00, 0x01, -0x16
   6A2D 4B 4C              2795 	.word SMVB_continue3_single
   6A2F 0B 01 F4           2796 	.byte  0x0B, 0x01, -0x0C
   6A32 00 01 D1           2797 	.byte  0x00, 0x01, -0x2F
   6A35 9D 01 00           2798 	.byte -0x63, 0x01,  0x00
   6A38 4B 73              2799 	.word SMVB_continue_yd4_single
   6A3A F3 01 FA           2800 	.byte -0x0D, 0x01, -0x06
   6A3D 4B 18              2801 	.word SMVB_continue7_single
   6A3F F4 01 F0           2802 	.byte -0x0C, 0x01, -0x10
   6A42 00 01 D7           2803 	.byte  0x00, 0x01, -0x29
   6A45 0C 01 FB           2804 	.byte  0x0C, 0x01, -0x05
   6A48 0D 01 0C           2805 	.byte  0x0D, 0x01,  0x0C
   6A4B 32 01 0B           2806 	.byte  0x32, 0x01,  0x0B
   6A4E 1D 01 03           2807 	.byte  0x1D, 0x01,  0x03
   6A51 21 01 FD           2808 	.byte  0x21, 0x01, -0x03
   6A54 4B 4C              2809 	.word SMVB_continue3_single
   6A56 18 01 F5           2810 	.byte  0x18, 0x01, -0x0B
   6A59 FD 01 F1           2811 	.byte -0x03, 0x01, -0x0F
   6A5C AC 01 FA           2812 	.byte -0x54, 0x01, -0x06
   6A5F 4B 73              2813 	.word SMVB_continue_yd4_single
   6A61 D9 01 F5           2814 	.byte -0x27, 0x01, -0x0B
   6A64 4B 18              2815 	.word SMVB_continue7_single
   6A66 DE 01 F6           2816 	.byte -0x22, 0x01, -0x0A
   6A69 FD 01 C6           2817 	.byte -0x03, 0x01, -0x3A
   6A6C 0D 01 00           2818 	.byte  0x0D, 0x01,  0x00
   6A6F 18 01 17           2819 	.byte  0x18, 0x01,  0x17
   6A72 21 01 12           2820 	.byte  0x21, 0x01,  0x12
   6A75 26 01 0C           2821 	.byte  0x26, 0x01,  0x0C
   6A78 0E 01 FD           2822 	.byte  0x0E, 0x01, -0x03
   6A7B 4B 18              2823 	.word SMVB_continue7_single
   6A7D F7 01 F2           2824 	.byte -0x09, 0x01, -0x0E
   6A80 EB 01 FC           2825 	.byte -0x15, 0x01, -0x04
   6A83 E9 01 E6           2826 	.byte -0x17, 0x01, -0x1A
   6A86 FE 01 E5           2827 	.byte -0x02, 0x01, -0x1B
   6A89 17 01 FD           2828 	.byte  0x17, 0x01, -0x03
   6A8C 18 01 18           2829 	.byte  0x18, 0x01,  0x18
   6A8F 0B 01 0B           2830 	.byte  0x0B, 0x01,  0x0B
   6A92 4B 18              2831 	.word SMVB_continue7_single
   6A94 19 01 0C           2832 	.byte  0x19, 0x01,  0x0C
   6A97 4B 01 00           2833 	.byte  0x4B, 0x01,  0x00
   6A9A 1A 01 17           2834 	.byte  0x1A, 0x01,  0x17
   6A9D 0D 01 16           2835 	.byte  0x0D, 0x01,  0x16
   6AA0 00 01 4F           2836 	.byte  0x00, 0x01,  0x4F
   6AA3 F3 01 16           2837 	.byte -0x0D, 0x01,  0x16
   6AA6 F3 01 0C           2838 	.byte -0x0D, 0x01,  0x0C
   6AA9 4B 18              2839 	.word SMVB_continue7_single
   6AAB DB 01 00           2840 	.byte -0x25, 0x01,  0x00
   6AAE E6 01 E8           2841 	.byte -0x1A, 0x01, -0x18
   6AB1 00 01 A6           2842 	.byte  0x00, 0x01, -0x5A
   6AB4 0D 01 F5           2843 	.byte  0x0D, 0x01, -0x0B
   6AB7 1C 01 FA           2844 	.byte  0x1C, 0x01, -0x06
   6ABA 15 01 0B           2845 	.byte  0x15, 0x01,  0x0B
   6ABD 05 01 2E           2846 	.byte  0x05, 0x01,  0x2E
   6AC0 4B 32              2847 	.word SMVB_continue5_single
   6AC2 FB 01 32           2848 	.byte -0x05, 0x01,  0x32
   6AC5 E4 01 07           2849 	.byte -0x1C, 0x01,  0x07
   6AC8 EA 01 EC           2850 	.byte -0x16, 0x01, -0x14
   6ACB F2 01 DD           2851 	.byte -0x0E, 0x01, -0x23
   6ACE 33 01 1A           2852 	.byte  0x33, 0x01,  0x1A
   6AD1 4C 70              2853 	.word SMVB_startMove_single
   6AD3 00 01 E9           2854 	.byte  0x00, 0x01, -0x17
   6AD6 4D BA              2855 	.word SMVB_startDraw_yd4_single
   6AD8 F5 01 00           2856 	.byte -0x0B, 0x01,  0x00
   6ADB 4B 4C              2857 	.word SMVB_continue3_single
   6ADD 00 01 17           2858 	.byte  0x00, 0x01,  0x17
   6AE0 0B 01 00           2859 	.byte  0x0B, 0x01,  0x00
   6AE3 F6 01 DE           2860 	.byte -0x0A, 0x01, -0x22
   6AE6 4C 70              2861 	.word SMVB_startMove_single
   6AE8 0B 01 00           2862 	.byte  0x0B, 0x01,  0x00
   6AEB 4D BA              2863 	.word SMVB_startDraw_single
   6AED 00 01 EB           2864 	.byte  0x00, 0x01, -0x15
   6AF0 4B 4C              2865 	.word SMVB_continue3_single
   6AF2 F5 01 00           2866 	.byte -0x0B, 0x01,  0x00
   6AF5 00 01 15           2867 	.byte  0x00, 0x01,  0x15
   6AF8 FE 00 00           2868 	.byte  0xfe, 0x00,  0x00
   6AFB 4E D9              2869 	.word SMVB_lastDraw_rts2
                           2870  .globl _DemonList
   6AFD                    2871 _DemonList:
   6AFD 5B 01 BE           2872 	.byte  0x5B, 0x01, -0x42
   6B00 4C 1C              2873 	.word SMVB_continue_double
   6B02 ED 01 14           2874 	.byte -0x13, 0x01,  0x14
   6B05 4D BA              2875 	.word SMVB_startDraw_yd4_single
   6B07 1B 01 3D           2876 	.byte  0x1B, 0x01,  0x3D
   6B0A 4B 66              2877 	.word SMVB_continue_single
   6B0C F5 01 16           2878 	.byte -0x0B, 0x01,  0x16
   6B0F 4C 70              2879 	.word SMVB_startMove_single
   6B11 DF 01 19           2880 	.byte -0x21, 0x01,  0x19
   6B14 4D BA              2881 	.word SMVB_startDraw_single
   6B16 F3 01 1A           2882 	.byte -0x0D, 0x01,  0x1A
   6B19 4B 25              2883 	.word SMVB_continue6_single
   6B1B EF 01 2E           2884 	.byte -0x11, 0x01,  0x2E
   6B1E E4 01 00           2885 	.byte -0x1C, 0x01,  0x00
   6B21 02 01 DE           2886 	.byte  0x02, 0x01, -0x22
   6B24 0F 01 E3           2887 	.byte  0x0F, 0x01, -0x1D
   6B27 06 01 D7           2888 	.byte  0x06, 0x01, -0x29
   6B2A C4 01 1C           2889 	.byte -0x3C, 0x01,  0x1C
   6B2D 4B 73              2890 	.word SMVB_continue_yd4_single
   6B2F AE 01 0D           2891 	.byte -0x52, 0x01,  0x0D
   6B32 4B 3F              2892 	.word SMVB_continue4_single
   6B34 EE 01 1D           2893 	.byte -0x12, 0x01,  0x1D
   6B37 00 01 B5           2894 	.byte  0x00, 0x01, -0x4B
   6B3A 5D 01 EE           2895 	.byte  0x5D, 0x01, -0x12
   6B3D BE 01 0A           2896 	.byte -0x42, 0x01,  0x0A
   6B40 4C 70              2897 	.word SMVB_startMove_yd4_single
   6B42 15 01 E9           2898 	.byte  0x15, 0x01, -0x17
   6B45 4D BA              2899 	.word SMVB_startDraw_single
   6B47 21 01 F0           2900 	.byte  0x21, 0x01, -0x10
   6B4A 4B 32              2901 	.word SMVB_continue5_single
   6B4C 0E 01 EF           2902 	.byte  0x0E, 0x01, -0x11
   6B4F F3 01 EB           2903 	.byte -0x0D, 0x01, -0x15
   6B52 D2 01 FF           2904 	.byte -0x2E, 0x01, -0x01
   6B55 FD 01 E9           2905 	.byte -0x03, 0x01, -0x17
   6B58 FE 01 C4           2906 	.byte -0x02, 0x01, -0x3C
   6B5B 4C 70              2907 	.word SMVB_startMove_single
   6B5D FF 01 D6           2908 	.byte -0x01, 0x01, -0x2A
   6B60 4D BA              2909 	.word SMVB_startDraw_single
   6B62 0B 01 E6           2910 	.byte  0x0B, 0x01, -0x1A
   6B65 4B 66              2911 	.word SMVB_continue_single
   6B67 40 01 12           2912 	.byte  0x40, 0x01,  0x12
   6B6A 4C 1C              2913 	.word SMVB_continue_double
   6B6C 27 01 F4           2914 	.byte  0x27, 0x01, -0x0C
   6B6F 4C 70              2915 	.word SMVB_startMove_single
   6B71 14 01 1A           2916 	.byte  0x14, 0x01,  0x1A
   6B74 4D BA              2917 	.word SMVB_startDraw_single
   6B76 ED 01 FD           2918 	.byte -0x13, 0x01, -0x03
   6B79 4C 70              2919 	.word SMVB_startMove_single
   6B7B 12 01 0B           2920 	.byte  0x12, 0x01,  0x0B
   6B7E 4D BA              2921 	.word SMVB_startDraw_single
   6B80 12 01 13           2922 	.byte  0x12, 0x01,  0x13
   6B83 4B 32              2923 	.word SMVB_continue5_single
   6B85 1C 01 00           2924 	.byte  0x1C, 0x01,  0x00
   6B88 1A 01 D0           2925 	.byte  0x1A, 0x01, -0x30
   6B8B 1D 01 F5           2926 	.byte  0x1D, 0x01, -0x0B
   6B8E 35 01 2E           2927 	.byte  0x35, 0x01,  0x2E
   6B91 E8 01 DD           2928 	.byte -0x18, 0x01, -0x23
   6B94 4B 73              2929 	.word SMVB_continue_yd4_single
   6B96 EB 01 E6           2930 	.byte -0x15, 0x01, -0x1A
   6B99 4B 18              2931 	.word SMVB_continue7_single
   6B9B CD 01 12           2932 	.byte -0x33, 0x01,  0x12
   6B9E EA 01 25           2933 	.byte -0x16, 0x01,  0x25
   6BA1 E9 01 F3           2934 	.byte -0x17, 0x01, -0x0D
   6BA4 F9 01 E8           2935 	.byte -0x07, 0x01, -0x18
   6BA7 EC 01 EB           2936 	.byte -0x14, 0x01, -0x15
   6BAA DB 01 20           2937 	.byte -0x25, 0x01,  0x20
   6BAD EB 01 1D           2938 	.byte -0x15, 0x01,  0x1D
   6BB0 4B 59              2939 	.word SMVB_continue2_single
   6BB2 17 01 13           2940 	.byte  0x17, 0x01,  0x13
   6BB5 B4 01 0B           2941 	.byte -0x4C, 0x01,  0x0B
   6BB8 4B 73              2942 	.word SMVB_continue_yd4_single
   6BBA AD 01 E7           2943 	.byte -0x53, 0x01, -0x19
   6BBD 4B 3F              2944 	.word SMVB_continue4_single
   6BBF EE 01 DB           2945 	.byte -0x12, 0x01, -0x25
   6BC2 00 01 56           2946 	.byte  0x00, 0x01,  0x56
   6BC5 5C 01 1E           2947 	.byte  0x5C, 0x01,  0x1E
   6BC8 0D 01 FB           2948 	.byte  0x0D, 0x01, -0x05
   6BCB 4C 70              2949 	.word SMVB_startMove_yd4_single
   6BCD 42 01 48           2950 	.byte  0x42, 0x01,  0x48
   6BD0 4D BA              2951 	.word SMVB_startDraw_single
   6BD2 F2 01 A9           2952 	.byte -0x0E, 0x01, -0x57
   6BD5 4B 73              2953 	.word SMVB_continue_yd4_single
   6BD7 2F 01 42           2954 	.byte  0x2F, 0x01,  0x42
   6BDA 4B 66              2955 	.word SMVB_continue_single
   6BDC 44 01 07           2956 	.byte  0x44, 0x01,  0x07
   6BDF 4C 70              2957 	.word SMVB_startMove_single
   6BE1 00 01 E4           2958 	.byte  0x00, 0x01, -0x1C
   6BE4 4D BA              2959 	.word SMVB_startDraw_yd4_single
   6BE6 10 01 00           2960 	.byte  0x10, 0x01,  0x00
   6BE9 4B 4C              2961 	.word SMVB_continue3_single
   6BEB 00 01 1C           2962 	.byte  0x00, 0x01,  0x1C
   6BEE F0 01 00           2963 	.byte -0x10, 0x01,  0x00
   6BF1 86 01 2A           2964 	.byte -0x7A, 0x01,  0x2A
   6BF4 4C 9D              2965 	.word SMVB_startMove_yd4_double
   6BF6 FF 01 26           2966 	.byte -0x01, 0x01,  0x26
   6BF9 4D BA              2967 	.word SMVB_startDraw_single
   6BFB 6F 01 F5           2968 	.byte  0x6F, 0x01, -0x0B
   6BFE 4B 66              2969 	.word SMVB_continue_single
   6C00 00 01 0C           2970 	.byte  0x00, 0x01,  0x0C
   6C03 4C 70              2971 	.word SMVB_startMove_yd4_single
   6C05 DD 01 F9           2972 	.byte -0x23, 0x01, -0x07
   6C08 4D BA              2973 	.word SMVB_startDraw_single
   6C0A FD 01 20           2974 	.byte -0x03, 0x01,  0x20
   6C0D 4B 59              2975 	.word SMVB_continue2_single
   6C0F 25 01 F4           2976 	.byte  0x25, 0x01, -0x0C
   6C12 21 01 01           2977 	.byte  0x21, 0x01,  0x01
   6C15 4C 70              2978 	.word SMVB_startMove_single
   6C17 32 01 03           2979 	.byte  0x32, 0x01,  0x03
   6C1A 4D BA              2980 	.word SMVB_startDraw_single
   6C1C 7F 01 F3           2981 	.byte  0x7F, 0x01, -0x0D
   6C1F 4B 66              2982 	.word SMVB_continue_single
   6C21 AB 01 FE           2983 	.byte -0x55, 0x01, -0x02
   6C24 4C 2A              2984 	.word SMVB_continue_yd4_double
   6C26 04 01 F4           2985 	.byte  0x04, 0x01, -0x0C
   6C29 4C 70              2986 	.word SMVB_startMove_single
   6C2B 59 01 ED           2987 	.byte  0x59, 0x01, -0x13
   6C2E 4D BA              2988 	.word SMVB_startDraw_single
   6C30 29 01 D8           2989 	.byte  0x29, 0x01, -0x28
   6C33 4B 32              2990 	.word SMVB_continue5_single
   6C35 1E 01 D0           2991 	.byte  0x1E, 0x01, -0x30
   6C38 0C 01 D6           2992 	.byte  0x0C, 0x01, -0x2A
   6C3B E2 01 CA           2993 	.byte -0x1E, 0x01, -0x36
   6C3E C3 01 E5           2994 	.byte -0x3D, 0x01, -0x1B
   6C41 CB 01 C9           2995 	.byte -0x35, 0x01, -0x37
   6C44 4C 70              2996 	.word SMVB_startMove_single
   6C46 FF 01 23           2997 	.byte -0x01, 0x01,  0x23
   6C49 4D BA              2998 	.word SMVB_startDraw_single
   6C4B 24 01 2E           2999 	.byte  0x24, 0x01,  0x2E
   6C4E 4B 59              3000 	.word SMVB_continue2_single
   6C50 49 01 16           3001 	.byte  0x49, 0x01,  0x16
   6C53 0B 01 32           3002 	.byte  0x0B, 0x01,  0x32
   6C56 4B 73              3003 	.word SMVB_continue_yd4_single
   6C58 EE 01 27           3004 	.byte -0x12, 0x01,  0x27
   6C5B 4B 3F              3005 	.word SMVB_continue4_single
   6C5D DA 01 0B           3006 	.byte -0x26, 0x01,  0x0B
   6C60 E6 01 24           3007 	.byte -0x1A, 0x01,  0x24
   6C63 C7 01 1B           3008 	.byte -0x39, 0x01,  0x1B
   6C66 32 01 AF           3009 	.byte  0x32, 0x01, -0x51
   6C69 4C 9D              3010 	.word SMVB_startMove_double
   6C6B 00 01 1C           3011 	.byte  0x00, 0x01,  0x1C
   6C6E 4D BA              3012 	.word SMVB_startDraw_single
   6C70 F0 01 00           3013 	.byte -0x10, 0x01,  0x00
   6C73 4B 4C              3014 	.word SMVB_continue3_single
   6C75 00 01 E4           3015 	.byte  0x00, 0x01, -0x1C
   6C78 10 01 00           3016 	.byte  0x10, 0x01,  0x00
   6C7B FE 00 00           3017 	.byte  0xfe, 0x00,  0x00
   6C7E 4E D9              3018 	.word SMVB_lastDraw_rts2
                           3019  .globl _DragonList
   6C80                    3020 _DragonList:
   6C80 D9 01 F6           3021 	.byte -0x27, 0x01, -0x0A
   6C83 4B 66              3022 	.word SMVB_continue_single
   6C85 F3 01 03           3023 	.byte -0x0D, 0x01,  0x03
   6C88 4D BA              3024 	.word SMVB_startDraw_single
   6C8A FA 01 10           3025 	.byte -0x06, 0x01,  0x10
   6C8D 4B 4C              3026 	.word SMVB_continue3_single
   6C8F 03 01 09           3027 	.byte  0x03, 0x01,  0x09
   6C92 10 01 E4           3028 	.byte  0x10, 0x01, -0x1C
   6C95 E7 01 A3           3029 	.byte -0x19, 0x01, -0x5D
   6C98 4C FD              3030 	.word SMVB_startMove_tripple
   6C9A 0C 01 0E           3031 	.byte  0x0C, 0x01,  0x0E
   6C9D 4D BA              3032 	.word SMVB_startDraw_single
   6C9F 0B 01 0D           3033 	.byte  0x0B, 0x01,  0x0D
   6CA2 4B 3F              3034 	.word SMVB_continue4_single
   6CA4 0D 01 15           3035 	.byte  0x0D, 0x01,  0x15
   6CA7 0A 01 18           3036 	.byte  0x0A, 0x01,  0x18
   6CAA 09 01 19           3037 	.byte  0x09, 0x01,  0x19
   6CAD D5 01 0E           3038 	.byte -0x2B, 0x01,  0x0E
   6CB0 4C 70              3039 	.word SMVB_startMove_yd4_single
   6CB2 12 01 10           3040 	.byte  0x12, 0x01,  0x10
   6CB5 4D BA              3041 	.word SMVB_startDraw_single
   6CB7 DE 01 9D           3042 	.byte -0x22, 0x01, -0x63
   6CBA 4C 70              3043 	.word SMVB_startMove_yd4_single
   6CBC 0F 01 2C           3044 	.byte  0x0F, 0x01,  0x2C
   6CBF 4D BA              3045 	.word SMVB_startDraw_single
   6CC1 00 01 25           3046 	.byte  0x00, 0x01,  0x25
   6CC4 4B 66              3047 	.word SMVB_continue_single
   6CC6 11 01 10           3048 	.byte  0x11, 0x01,  0x10
   6CC9 4C 70              3049 	.word SMVB_startMove_single
   6CCB 1B 01 01           3050 	.byte  0x1B, 0x01,  0x01
   6CCE 4D BA              3051 	.word SMVB_startDraw_single
   6CD0 19 01 FE           3052 	.byte  0x19, 0x01, -0x02
   6CD3 4B 18              3053 	.word SMVB_continue7_single
   6CD5 1C 01 F1           3054 	.byte  0x1C, 0x01, -0x0F
   6CD8 09 01 F1           3055 	.byte  0x09, 0x01, -0x0F
   6CDB 00 01 EA           3056 	.byte  0x00, 0x01, -0x16
   6CDE EB 01 D0           3057 	.byte -0x15, 0x01, -0x30
   6CE1 DF 01 BC           3058 	.byte -0x21, 0x01, -0x44
   6CE4 ED 01 DB           3059 	.byte -0x13, 0x01, -0x25
   6CE7 F3 01 ED           3060 	.byte -0x0D, 0x01, -0x13
   6CEA 4B 59              3061 	.word SMVB_continue2_single
   6CEC F5 01 F5           3062 	.byte -0x0B, 0x01, -0x0B
   6CEF EF 01 1F           3063 	.byte -0x11, 0x01,  0x1F
   6CF2 4C 70              3064 	.word SMVB_startMove_single
   6CF4 F4 01 F0           3065 	.byte -0x0C, 0x01, -0x10
   6CF7 4D BA              3066 	.word SMVB_startDraw_single
   6CF9 F3 01 E8           3067 	.byte -0x0D, 0x01, -0x18
   6CFC 4B 18              3068 	.word SMVB_continue7_single
   6CFE F5 01 E2           3069 	.byte -0x0B, 0x01, -0x1E
   6D01 F1 01 ED           3070 	.byte -0x0F, 0x01, -0x13
   6D04 DF 01 F5           3071 	.byte -0x21, 0x01, -0x0B
   6D07 F5 01 35           3072 	.byte -0x0B, 0x01,  0x35
   6D0A 07 01 40           3073 	.byte  0x07, 0x01,  0x40
   6D0D 04 01 CF           3074 	.byte  0x04, 0x01, -0x31
   6D10 0C 01 E9           3075 	.byte  0x0C, 0x01, -0x17
   6D13 4B 3F              3076 	.word SMVB_continue4_single
   6D15 0A 01 00           3077 	.byte  0x0A, 0x01,  0x00
   6D18 0C 01 17           3078 	.byte  0x0C, 0x01,  0x17
   6D1B 02 01 2C           3079 	.byte  0x02, 0x01,  0x2C
   6D1E 05 01 FB           3080 	.byte  0x05, 0x01, -0x05
   6D21 4C 70              3081 	.word SMVB_startMove_single
   6D23 E1 01 1A           3082 	.byte -0x1F, 0x01,  0x1A
   6D26 4D BA              3083 	.word SMVB_startDraw_single
   6D28 F6 01 0F           3084 	.byte -0x0A, 0x01,  0x0F
   6D2B 4B 25              3085 	.word SMVB_continue6_single
   6D2D FF 01 36           3086 	.byte -0x01, 0x01,  0x36
   6D30 09 01 01           3087 	.byte  0x09, 0x01,  0x01
   6D33 03 01 E8           3088 	.byte  0x03, 0x01, -0x18
   6D36 0A 01 F4           3089 	.byte  0x0A, 0x01, -0x0C
   6D39 0E 01 16           3090 	.byte  0x0E, 0x01,  0x16
   6D3C FC 01 FA           3091 	.byte -0x04, 0x01, -0x06
   6D3F 4C 70              3092 	.word SMVB_startMove_single
   6D41 01 01 4E           3093 	.byte  0x01, 0x01,  0x4E
   6D44 4D BA              3094 	.word SMVB_startDraw_single
   6D46 10 01 F9           3095 	.byte  0x10, 0x01, -0x07
   6D49 4C 70              3096 	.word SMVB_startMove_single
   6D4B E6 01 0B           3097 	.byte -0x1A, 0x01,  0x0B
   6D4E 4D BA              3098 	.word SMVB_startDraw_single
   6D50 EA 01 16           3099 	.byte -0x16, 0x01,  0x16
   6D53 4B 18              3100 	.word SMVB_continue7_single
   6D55 FF 01 43           3101 	.byte -0x01, 0x01,  0x43
   6D58 09 01 FC           3102 	.byte  0x09, 0x01, -0x04
   6D5B 0C 01 DC           3103 	.byte  0x0C, 0x01, -0x24
   6D5E 24 01 11           3104 	.byte  0x24, 0x01,  0x11
   6D61 16 01 17           3105 	.byte  0x16, 0x01,  0x17
   6D64 16 01 16           3106 	.byte  0x16, 0x01,  0x16
   6D67 16 01 17           3107 	.byte  0x16, 0x01,  0x17
   6D6A 4B 18              3108 	.word SMVB_continue7_single
   6D6C 07 01 0C           3109 	.byte  0x07, 0x01,  0x0C
   6D6F 03 01 0A           3110 	.byte  0x03, 0x01,  0x0A
   6D72 E0 01 15           3111 	.byte -0x20, 0x01,  0x15
   6D75 F9 01 14           3112 	.byte -0x07, 0x01,  0x14
   6D78 E4 01 30           3113 	.byte -0x1C, 0x01,  0x30
   6D7B 28 01 FC           3114 	.byte  0x28, 0x01, -0x04
   6D7E 32 01 F3           3115 	.byte  0x32, 0x01, -0x0D
   6D81 4B 18              3116 	.word SMVB_continue7_single
   6D83 0A 01 CD           3117 	.byte  0x0A, 0x01, -0x33
   6D86 07 01 FB           3118 	.byte  0x07, 0x01, -0x05
   6D89 08 01 1D           3119 	.byte  0x08, 0x01,  0x1D
   6D8C 07 01 FF           3120 	.byte  0x07, 0x01, -0x01
   6D8F 0B 01 E9           3121 	.byte  0x0B, 0x01, -0x17
   6D92 01 01 D5           3122 	.byte  0x01, 0x01, -0x2B
   6D95 09 01 FC           3123 	.byte  0x09, 0x01, -0x04
   6D98 4B 18              3124 	.word SMVB_continue7_single
   6D9A 0B 01 ED           3125 	.byte  0x0B, 0x01, -0x13
   6D9D 00 01 E9           3126 	.byte  0x00, 0x01, -0x17
   6DA0 00 01 EF           3127 	.byte  0x00, 0x01, -0x11
   6DA3 FC 01 F8           3128 	.byte -0x04, 0x01, -0x08
   6DA6 F0 01 ED           3129 	.byte -0x10, 0x01, -0x13
   6DA9 0C 01 EA           3130 	.byte  0x0C, 0x01, -0x16
   6DAC 08 01 EA           3131 	.byte  0x08, 0x01, -0x16
   6DAF 4B 18              3132 	.word SMVB_continue7_single
   6DB1 00 01 EC           3133 	.byte  0x00, 0x01, -0x14
   6DB4 EF 01 D5           3134 	.byte -0x11, 0x01, -0x2B
   6DB7 DD 01 BB           3135 	.byte -0x23, 0x01, -0x45
   6DBA DF 01 BF           3136 	.byte -0x21, 0x01, -0x41
   6DBD E1 01 C6           3137 	.byte -0x1F, 0x01, -0x3A
   6DC0 D4 01 DA           3138 	.byte -0x2C, 0x01, -0x26
   6DC3 10 01 32           3139 	.byte  0x10, 0x01,  0x32
   6DC6 4B 59              3140 	.word SMVB_continue2_single
   6DC8 06 01 4D           3141 	.byte  0x06, 0x01,  0x4D
   6DCB 05 01 06           3142 	.byte  0x05, 0x01,  0x06
   6DCE 4C 70              3143 	.word SMVB_startMove_single
   6DD0 09 01 09           3144 	.byte  0x09, 0x01,  0x09
   6DD3 4D EB              3145 	.word SMVB_startDraw_yEqx_single; y is  0x09
   6DD5 18 01 2A           3146 	.byte  0x18, 0x01,  0x2A
   6DD8 4B 3F              3147 	.word SMVB_continue4_single
   6DDA 15 01 2D           3148 	.byte  0x15, 0x01,  0x2D
   6DDD 12 01 2D           3149 	.byte  0x12, 0x01,  0x2D
   6DE0 05 01 12           3150 	.byte  0x05, 0x01,  0x12
   6DE3 11 01 38           3151 	.byte  0x11, 0x01,  0x38
   6DE6 4C 70              3152 	.word SMVB_startMove_single
   6DE8 EF 01 14           3153 	.byte -0x11, 0x01,  0x14
   6DEB 4D BA              3154 	.word SMVB_startDraw_single
   6DED F3 01 06           3155 	.byte -0x0D, 0x01,  0x06
   6DF0 4B 3F              3156 	.word SMVB_continue4_single
   6DF2 ED 01 02           3157 	.byte -0x13, 0x01,  0x02
   6DF5 EA 01 F3           3158 	.byte -0x16, 0x01, -0x0D
   6DF8 F3 01 F6           3159 	.byte -0x0D, 0x01, -0x0A
   6DFB 14 01 10           3160 	.byte  0x14, 0x01,  0x10
   6DFE 4C 70              3161 	.word SMVB_startMove_single
   6E00 13 01 0A           3162 	.byte  0x13, 0x01,  0x0A
   6E03 4D BA              3163 	.word SMVB_startDraw_single
   6E05 05 01 04           3164 	.byte  0x05, 0x01,  0x04
   6E08 4B 59              3165 	.word SMVB_continue2_single
   6E0A 10 01 21           3166 	.byte  0x10, 0x01,  0x21
   6E0D 12 01 0F           3167 	.byte  0x12, 0x01,  0x0F
   6E10 4C 70              3168 	.word SMVB_startMove_single
   6E12 0A 01 EE           3169 	.byte  0x0A, 0x01, -0x12
   6E15 4D BA              3170 	.word SMVB_startDraw_single
   6E17 05 01 F1           3171 	.byte  0x05, 0x01, -0x0F
   6E1A 4B 4C              3172 	.word SMVB_continue3_single
   6E1C 02 01 EC           3173 	.byte  0x02, 0x01, -0x14
   6E1F 02 01 DE           3174 	.byte  0x02, 0x01, -0x22
   6E22 FE 00 00           3175 	.byte  0xfe, 0x00,  0x00
   6E25 4E D9              3176 	.word SMVB_lastDraw_rts2
                           3177  .globl _SpellIcons
   6E27                    3178 _SpellIcons:
   6E27 6E 3D              3179  .word _SpellIcons_0 ; list of all single vectorlists in this
   6E29 6E 60              3180  .word _SpellIcons_1
   6E2B 6E 80              3181  .word _SpellIcons_2
   6E2D 6E D0              3182  .word _SpellIcons_3
   6E2F 6E F2              3183  .word _SpellIcons_4
   6E31 6F 24              3184  .word _SpellIcons_5
   6E33 6F 47              3185  .word _SpellIcons_6
   6E35 6F 6A              3186  .word _SpellIcons_7
   6E37 6F 8E              3187  .word _SpellIcons_8
   6E39 6F D4              3188  .word _SpellIcons_9
   6E3B 70 00              3189  .word _SpellIcons_10
                           3190  .globl _SpellIcons_0
   6E3D                    3191 _SpellIcons_0:
   6E3D 14 01 18           3192 	.byte  0x14, 0x01,  0x18
   6E40 4B 66              3193 	.word SMVB_continue_single
   6E42 01 01 F1           3194 	.byte  SHITREG_POKE_VALUE, 0x01, -0x0F
   6E45 4D 7F              3195 	.word SMVB_startDraw_yStays_single; y was  0x14, now SHIFT Poke
   6E47 00 01 E3           3196 	.byte  0x00, 0x01, -0x1D
   6E4A 4B 25              3197 	.word SMVB_continue6_single
   6E4C E3 01 F2           3198 	.byte -0x1D, 0x01, -0x0E
   6E4F E8 01 37           3199 	.byte -0x18, 0x01,  0x37
   6E52 E3 01 FB           3200 	.byte -0x1D, 0x01, -0x05
   6E55 00 01 D8           3201 	.byte  0x00, 0x01, -0x28
   6E58 1F 01 F1           3202 	.byte  0x1F, 0x01, -0x0F
   6E5B FE 00 00           3203 	.byte  0xfe, 0x00,  0x00 
   6E5E 4E D9              3204 	.word SMVB_lastDraw_rts2
                           3205  .globl _SpellIcons_1
   6E60                    3206 _SpellIcons_1:
   6E60 26 01 F2           3207 	.byte  0x26, 0x01, -0x0E
   6E63 4B 66              3208 	.word SMVB_continue_single
   6E65 00 01 1A           3209 	.byte  0x00, 0x01,  0x1A
   6E68 4D BA              3210 	.word SMVB_startDraw_single
   6E6A E8 01 12           3211 	.byte -0x18, 0x01,  0x12
   6E6D 4B 32              3212 	.word SMVB_continue5_single
   6E6F E3 01 00           3213 	.byte -0x1D, 0x01,  0x00
   6E72 E7 01 F2           3214 	.byte -0x19, 0x01, -0x0E
   6E75 00 01 E2           3215 	.byte  0x00, 0x01, -0x1E
   6E78 4E 01 00           3216 	.byte  0x4E, 0x01,  0x00
   6E7B FE 00 00           3217 	.byte  0xfe, 0x00,  0x00 
   6E7E 4E D9              3218 	.word SMVB_lastDraw_rts2
                           3219  .globl _SpellIcons_2
   6E80                    3220 _SpellIcons_2:
   6E80 14 01 F1           3221 	.byte  0x14, 0x01, -0x0F
   6E83 4B 66              3222 	.word SMVB_continue_single
   6E85 C7 01 00           3223 	.byte -0x39, 0x01,  0x00
   6E88 4D BA              3224 	.word SMVB_startDraw_yd4_single
   6E8A 00 01 24           3225 	.byte  0x00, 0x01,  0x24
   6E8D 4B 68              3226 	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
   6E8F 43 01 DC           3227 	.byte  0x43, 0x01, -0x24
   6E92 4C 70              3228 	.word SMVB_startMove_single
   6E94 17 01 00           3229 	.byte  0x17, 0x01,  0x00
   6E97 4D BA              3230 	.word SMVB_startDraw_single
   6E99 D6 01 0B           3231 	.byte -0x2A, 0x01,  0x0B
   6E9C 4C 70              3232 	.word SMVB_startMove_yd4_single
   6E9E 0E 01 11           3233 	.byte  0x0E, 0x01,  0x11
   6EA1 4D BA              3234 	.word SMVB_startDraw_single
   6EA3 ED 01 CE           3235 	.byte -0x13, 0x01, -0x32
   6EA6 4C 70              3236 	.word SMVB_startMove_single
   6EA8 F6 01 0B           3237 	.byte -0x0A, 0x01,  0x0B
   6EAB 4D BA              3238 	.word SMVB_startDraw_single
   6EAD 0A 01 28           3239 	.byte  0x0A, 0x01,  0x28
   6EB0 4C 70              3240 	.word SMVB_startMove_single
   6EB2 F7 01 F0           3241 	.byte -0x09, 0x01, -0x10
   6EB5 4D BA              3242 	.word SMVB_startDraw_single
   6EB7 2C 01 03           3243 	.byte  0x2C, 0x01,  0x03
   6EBA 4C 70              3244 	.word SMVB_startMove_single
   6EBC F0 01 F9           3245 	.byte -0x10, 0x01, -0x07
   6EBF 4D BA              3246 	.word SMVB_startDraw_yd4_single
   6EC1 F8 01 ED           3247 	.byte -0x08, 0x01, -0x13
   6EC4 4C 70              3248 	.word SMVB_startMove_single
   6EC6 0A 01 F9           3249 	.byte  0x0A, 0x01, -0x07
   6EC9 4D BA              3250 	.word SMVB_startDraw_single
   6ECB FE 00 00           3251 	.byte  0xfe, 0x00,  0x00 
   6ECE 4E D9              3252 	.word SMVB_lastDraw_rts2
                           3253  .globl _SpellIcons_3
   6ED0                    3254 _SpellIcons_3:
   6ED0 D7 01 F5           3255 	.byte -0x29, 0x01, -0x0B
   6ED3 4B 66              3256 	.word SMVB_continue_single
   6ED5 53 01 00           3257 	.byte  0x53, 0x01,  0x00
   6ED8 4D BA              3258 	.word SMVB_startDraw_single
   6EDA 00 01 15           3259 	.byte  0x00, 0x01,  0x15
   6EDD 4B 75              3260 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   6EDF F4 01 0E           3261 	.byte -0x0C, 0x01,  0x0E
   6EE2 4B 3F              3262 	.word SMVB_continue4_single
   6EE4 EC 01 00           3263 	.byte -0x14, 0x01,  0x00
   6EE7 F2 01 F4           3264 	.byte -0x0E, 0x01, -0x0C
   6EEA 00 01 E9           3265 	.byte  0x00, 0x01, -0x17
   6EED FE 00 00           3266 	.byte  0xfe, 0x00,  0x00 
   6EF0 4E D9              3267 	.word SMVB_lastDraw_rts2
                           3268  .globl _SpellIcons_4
   6EF2                    3269 _SpellIcons_4:
   6EF2 25 01 EE           3270 	.byte  0x25, 0x01, -0x12
   6EF5 4B 66              3271 	.word SMVB_continue_single
   6EF7 C7 01 00           3272 	.byte -0x39, 0x01,  0x00
   6EFA 4D BA              3273 	.word SMVB_startDraw_yd4_single
   6EFC 00 01 24           3274 	.byte  0x00, 0x01,  0x24
   6EFF 4B 68              3275 	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
   6F01 ED 01 E3           3276 	.byte -0x13, 0x01, -0x1D
   6F04 4C 70              3277 	.word SMVB_startMove_single
   6F06 00 01 1A           3278 	.byte  0x00, 0x01,  0x1A
   6F09 4D BA              3279 	.word SMVB_startDraw_single
   6F0B 05 01 E9           3280 	.byte  0x05, 0x01, -0x17
   6F0E 4C 70              3281 	.word SMVB_startMove_single
   6F10 00 01 11           3282 	.byte  0x00, 0x01,  0x11
   6F13 4D BA              3283 	.word SMVB_startDraw_single
   6F15 06 01 F1           3284 	.byte  0x06, 0x01, -0x0F
   6F18 4C 70              3285 	.word SMVB_startMove_single
   6F1A 00 01 0C           3286 	.byte  0x00, 0x01,  0x0C
   6F1D 4D BA              3287 	.word SMVB_startDraw_single
   6F1F FE 00 00           3288 	.byte  0xfe, 0x00,  0x00 
   6F22 4E D9              3289 	.word SMVB_lastDraw_rts2
                           3290  .globl _SpellIcons_5
   6F24                    3291 _SpellIcons_5:
   6F24 22 01 F0           3292 	.byte  0x22, 0x01, -0x10
   6F27 4B 66              3293 	.word SMVB_continue_single
   6F29 00 01 20           3294 	.byte  0x00, 0x01,  0x20
   6F2C 4D BA              3295 	.word SMVB_startDraw_single
   6F2E 00 01 F0           3296 	.byte  0x00, 0x01, -0x10
   6F31 4D 69              3297 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   6F33 BA 01 00           3298 	.byte -0x46, 0x01,  0x00
   6F36 4D BA              3299 	.word SMVB_startDraw_yd4_single
   6F38 00 01 EF           3300 	.byte  0x00, 0x01, -0x11
   6F3B 4E 7A              3301 	.word SMVB_startMove_newY_eq_oldX_single ; y was  0x00, now 0
   6F3D 01 01 21           3302 	.byte  SHITREG_POKE_VALUE, 0x01,  0x21
   6F40 4D 7F              3303 	.word SMVB_startDraw_yStays_single; y was  0x00, now SHIFT Poke
   6F42 FE 00 00           3304 	.byte  0xfe, 0x00,  0x00 
   6F45 4E D9              3305 	.word SMVB_lastDraw_rts2
                           3306  .globl _SpellIcons_6
   6F47                    3307 _SpellIcons_6:
   6F47 DA 01 F4           3308 	.byte -0x26, 0x01, -0x0C
   6F4A 4B 66              3309 	.word SMVB_continue_single
   6F4C 4B 01 00           3310 	.byte  0x4B, 0x01,  0x00
   6F4F 4D BA              3311 	.word SMVB_startDraw_single
   6F51 00 01 01           3312 	.byte  0x00, 0x01,  0x01
   6F54 4E 7A              3313 	.word SMVB_startMove_yd4_newY_eq_oldX_single ; y was  0x00, now 0
   6F56 01 01 21           3314 	.byte  SHITREG_POKE_VALUE, 0x01,  0x21
   6F59 4D 7F              3315 	.word SMVB_startDraw_yStays_single; y was  0x00, now SHIFT Poke
   6F5B DB 01 DD           3316 	.byte -0x25, 0x01, -0x23
   6F5E 4C 70              3317 	.word SMVB_startMove_single
   6F60 00 01 14           3318 	.byte  0x00, 0x01,  0x14
   6F63 4D BA              3319 	.word SMVB_startDraw_single
   6F65 FE 00 00           3320 	.byte  0xfe, 0x00,  0x00 
   6F68 4E D9              3321 	.word SMVB_lastDraw_rts2
                           3322  .globl _SpellIcons_7
   6F6A                    3323 _SpellIcons_7:
   6F6A D6 01 EB           3324 	.byte -0x2A, 0x01, -0x15
   6F6D 4B 66              3325 	.word SMVB_continue_single
   6F6F 3D 01 00           3326 	.byte  0x3D, 0x01,  0x00
   6F72 4D BA              3327 	.word SMVB_startDraw_single
   6F74 17 01 15           3328 	.byte  0x17, 0x01,  0x15
   6F77 4B 4C              3329 	.word SMVB_continue3_single
   6F79 E9 01 14           3330 	.byte -0x17, 0x01,  0x14
   6F7C C3 01 00           3331 	.byte -0x3D, 0x01,  0x00
   6F7F 1E 01 D7           3332 	.byte  0x1E, 0x01, -0x29
   6F82 4C 70              3333 	.word SMVB_startMove_single
   6F84 00 01 29           3334 	.byte  0x00, 0x01,  0x29
   6F87 4D BA              3335 	.word SMVB_startDraw_single
   6F89 FE 00 00           3336 	.byte  0xfe, 0x00,  0x00 
   6F8C 4E D9              3337 	.word SMVB_lastDraw_rts2
                           3338  .globl _SpellIcons_8
   6F8E                    3339 _SpellIcons_8:
   6F8E D7 01 E4           3340 	.byte -0x29, 0x01, -0x1C
   6F91 4B 66              3341 	.word SMVB_continue_single
   6F93 00 01 38           3342 	.byte  0x00, 0x01,  0x38
   6F96 4D BA              3343 	.word SMVB_startDraw_single
   6F98 52 01 CB           3344 	.byte  0x52, 0x01, -0x35
   6F9B 4C 70              3345 	.word SMVB_startMove_single
   6F9D 00 01 32           3346 	.byte  0x00, 0x01,  0x32
   6FA0 4D BA              3347 	.word SMVB_startDraw_yd4_single
   6FA2 AE 01 CB           3348 	.byte -0x52, 0x01, -0x35
   6FA5 4B 73              3349 	.word SMVB_continue_yd4_single
   6FA7 52 01 03           3350 	.byte  0x52, 0x01,  0x03
   6FAA 4C 70              3351 	.word SMVB_startMove_single
   6FAC AE 01 35           3352 	.byte -0x52, 0x01,  0x35
   6FAF 4D BA              3353 	.word SMVB_startDraw_yd4_single
   6FB1 3B 01 DA           3354 	.byte  0x3B, 0x01, -0x26
   6FB4 4C 70              3355 	.word SMVB_startMove_single
   6FB6 00 01 14           3356 	.byte  0x00, 0x01,  0x14
   6FB9 4D BA              3357 	.word SMVB_startDraw_yd4_single
   6FBB DB 01 CD           3358 	.byte -0x25, 0x01, -0x33
   6FBE 4C 70              3359 	.word SMVB_startMove_single
   6FC0 33 01 50           3360 	.byte  0x33, 0x01,  0x50
   6FC3 4D BA              3361 	.word SMVB_startDraw_single
   6FC5 C6 01 B5           3362 	.byte -0x3A, 0x01, -0x4B
   6FC8 4C 70              3363 	.word SMVB_startMove_yd4_single
   6FCA 32 01 4F           3364 	.byte  0x32, 0x01,  0x4F
   6FCD 4D BA              3365 	.word SMVB_startDraw_single
   6FCF FE 00 00           3366 	.byte  0xfe, 0x00,  0x00 
   6FD2 4E D9              3367 	.word SMVB_lastDraw_rts2
                           3368  .globl _SpellIcons_9
   6FD4                    3369 _SpellIcons_9:
   6FD4 D7 01 F5           3370 	.byte -0x29, 0x01, -0x0B
   6FD7 4B 66              3371 	.word SMVB_continue_single
   6FD9 53 01 00           3372 	.byte  0x53, 0x01,  0x00
   6FDC 4D BA              3373 	.word SMVB_startDraw_single
   6FDE 00 01 15           3374 	.byte  0x00, 0x01,  0x15
   6FE1 4B 75              3375 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   6FE3 F4 01 0E           3376 	.byte -0x0C, 0x01,  0x0E
   6FE6 4B 3F              3377 	.word SMVB_continue4_single
   6FE8 EC 01 00           3378 	.byte -0x14, 0x01,  0x00
   6FEB F2 01 F3           3379 	.byte -0x0E, 0x01, -0x0D
   6FEE 00 01 EA           3380 	.byte  0x00, 0x01, -0x16
   6FF1 00 01 16           3381 	.byte  0x00, 0x01,  0x16
   6FF4 4D 69              3382 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   6FF6 DB 01 11           3383 	.byte -0x25, 0x01,  0x11
   6FF9 4D BA              3384 	.word SMVB_startDraw_single
   6FFB FE 00 00           3385 	.byte  0xfe, 0x00,  0x00 
   6FFE 4E D9              3386 	.word SMVB_lastDraw_rts2
                           3387  .globl _SpellIcons_10
   7000                    3388 _SpellIcons_10:
   7000 26 01 F2           3389 	.byte  0x26, 0x01, -0x0E
   7003 4B 66              3390 	.word SMVB_continue_single
   7005 00 01 1A           3391 	.byte  0x00, 0x01,  0x1A
   7008 4D BA              3392 	.word SMVB_startDraw_single
   700A E8 01 12           3393 	.byte -0x18, 0x01,  0x12
   700D 4B 32              3394 	.word SMVB_continue5_single
   700F E3 01 00           3395 	.byte -0x1D, 0x01,  0x00
   7012 E7 01 F2           3396 	.byte -0x19, 0x01, -0x0E
   7015 00 01 E2           3397 	.byte  0x00, 0x01, -0x1E
   7018 4E 01 00           3398 	.byte  0x4E, 0x01,  0x00
   701B D1 01 F6           3399 	.byte -0x2F, 0x01, -0x0A
   701E 4C 70              3400 	.word SMVB_startMove_yd4_single
   7020 09 01 F6           3401 	.byte  0x09, 0x01, -0x0A
   7023 4D BA              3402 	.word SMVB_startDraw_single
   7025 0F 01 06           3403 	.byte  0x0F, 0x01,  0x06
   7028 4B 32              3404 	.word SMVB_continue5_single
   702A 10 01 F8           3405 	.byte  0x10, 0x01, -0x08
   702D 0F 01 0B           3406 	.byte  0x0F, 0x01,  0x0B
   7030 0F 01 0A           3407 	.byte  0x0F, 0x01,  0x0A
   7033 1A 01 F6           3408 	.byte  0x1A, 0x01, -0x0A
   7036 A7 01 40           3409 	.byte -0x59, 0x01,  0x40
   7039 4C 70              3410 	.word SMVB_startMove_yd4_single
   703B 03 01 FD           3411 	.byte  0x03, 0x01, -0x03
   703E 4D BA              3412 	.word SMVB_startDraw_single
   7040 0E 01 10           3413 	.byte  0x0E, 0x01,  0x10
   7043 4B 18              3414 	.word SMVB_continue7_single
   7045 02 01 FA           3415 	.byte  0x02, 0x01, -0x06
   7048 10 01 F2           3416 	.byte  0x10, 0x01, -0x0E
   704B 0E 01 F9           3417 	.byte  0x0E, 0x01, -0x07
   704E 0B 01 0D           3418 	.byte  0x0B, 0x01,  0x0D
   7051 12 01 F6           3419 	.byte  0x12, 0x01, -0x0A
   7054 08 01 F5           3420 	.byte  0x08, 0x01, -0x0B
   7057 E1 01 EF           3421 	.byte -0x1F, 0x01, -0x11
   705A 4C 70              3422 	.word SMVB_startMove_single
   705C 09 01 0B           3423 	.byte  0x09, 0x01,  0x0B
   705F 4D BA              3424 	.word SMVB_startDraw_single
   7061 07 01 FC           3425 	.byte  0x07, 0x01, -0x04
   7064 4B 32              3426 	.word SMVB_continue5_single
   7066 0F 01 FB           3427 	.byte  0x0F, 0x01, -0x05
   7069 07 01 F5           3428 	.byte  0x07, 0x01, -0x0B
   706C 02 01 0B           3429 	.byte  0x02, 0x01,  0x0B
   706F 02 01 FE           3430 	.byte  0x02, 0x01, -0x02
   7072 FE 00 00           3431 	.byte  0xfe, 0x00,  0x00 
   7075 4E D9              3432 	.word SMVB_lastDraw_rts2
                           3433  .globl _DotList
   7077                    3434 _DotList:
   7077 17 01 F3           3435 	.byte  0x17, 0x01, -0x0D
   707A 4B 66              3436 	.word SMVB_continue_single
   707C F1 01 EE           3437 	.byte -0x0F, 0x01, -0x12
   707F 4D BA              3438 	.word SMVB_startDraw_single
   7081 EF 01 00           3439 	.byte -0x11, 0x01,  0x00
   7084 4B 18              3440 	.word SMVB_continue7_single
   7086 F1 01 12           3441 	.byte -0x0F, 0x01,  0x12
   7089 00 01 1E           3442 	.byte  0x00, 0x01,  0x1E
   708C 0F 01 0E           3443 	.byte  0x0F, 0x01,  0x0E
   708F 11 01 00           3444 	.byte  0x11, 0x01,  0x00
   7092 0F 01 EE           3445 	.byte  0x0F, 0x01, -0x12
   7095 00 01 E6           3446 	.byte  0x00, 0x01, -0x1A
   7098 FE 00 00           3447 	.byte  0xfe, 0x00,  0x00
   709B 4E D9              3448 	.word SMVB_lastDraw_rts2
                           3449  .globl _TreasureList
   709D                    3450 _TreasureList:
   709D 70 A9              3451  .word _TreasureList_0 ; list of all single vectorlists in this
   709F 70 D6              3452  .word _TreasureList_1
   70A1 71 5E              3453  .word _TreasureList_2
   70A3 71 D7              3454  .word _TreasureList_3
   70A5 72 A7              3455  .word _TreasureList_4
   70A7 74 0A              3456  .word _TreasureList_5
                           3457  .globl _TreasureList_0
   70A9                    3458 _TreasureList_0:
   70A9 60 01 C3           3459 	.byte  0x60, 0x01, -0x3D
   70AC 4B 66              3460 	.word SMVB_continue_single
   70AE F4 01 1E           3461 	.byte -0x0C, 0x01,  0x1E
   70B1 4D BA              3462 	.word SMVB_startDraw_yd4_single
   70B3 FA 01 1D           3463 	.byte -0x06, 0x01,  0x1D
   70B6 4B 4C              3464 	.word SMVB_continue3_single
   70B8 FA 01 11           3465 	.byte -0x06, 0x01,  0x11
   70BB F4 01 11           3466 	.byte -0x0C, 0x01,  0x11
   70BE 00 01 A0           3467 	.byte  0x00, 0x01, -0x60
   70C1 4C 1C              3468 	.word SMVB_continue_double
   70C3 06 01 1F           3469 	.byte  0x06, 0x01,  0x1F
   70C6 4B 3F              3470 	.word SMVB_continue4_single
   70C8 06 01 12           3471 	.byte  0x06, 0x01,  0x12
   70CB 18 01 1D           3472 	.byte  0x18, 0x01,  0x1D
   70CE 00 01 12           3473 	.byte  0x00, 0x01,  0x12
   70D1 FE 00 00           3474 	.byte  0xfe, 0x00,  0x00 
   70D4 4E D9              3475 	.word SMVB_lastDraw_rts2
                           3476  .globl _TreasureList_1
   70D6                    3477 _TreasureList_1:
   70D6 58 01 90           3478 	.byte  0x58, 0x01, -0x70
   70D9 4B 66              3479 	.word SMVB_continue_single
   70DB FA 01 00           3480 	.byte -0x06, 0x01,  0x00
   70DE 4D BA              3481 	.word SMVB_startDraw_yd4_single
   70E0 00 01 0C           3482 	.byte  0x00, 0x01,  0x0C
   70E3 4B 4C              3483 	.word SMVB_continue3_single
   70E5 06 01 00           3484 	.byte  0x06, 0x01,  0x00
   70E8 00 01 F4           3485 	.byte  0x00, 0x01, -0x0C
   70EB FB 01 11           3486 	.byte -0x05, 0x01,  0x11
   70EE 4C 70              3487 	.word SMVB_startMove_single
   70F0 FA 01 00           3488 	.byte -0x06, 0x01,  0x00
   70F3 4D BA              3489 	.word SMVB_startDraw_single
   70F5 00 01 0C           3490 	.byte  0x00, 0x01,  0x0C
   70F8 4B 4C              3491 	.word SMVB_continue3_single
   70FA 06 01 00           3492 	.byte  0x06, 0x01,  0x00
   70FD 00 01 F4           3493 	.byte  0x00, 0x01, -0x0C
   7100 18 01 0B           3494 	.byte  0x18, 0x01,  0x0B
   7103 4C 70              3495 	.word SMVB_startMove_single
   7105 EE 01 1F           3496 	.byte -0x12, 0x01,  0x1F
   7108 4D BA              3497 	.word SMVB_startDraw_single
   710A FA 01 1C           3498 	.byte -0x06, 0x01,  0x1C
   710D 4B 18              3499 	.word SMVB_continue7_single
   710F F4 01 24           3500 	.byte -0x0C, 0x01,  0x24
   7112 00 01 BF           3501 	.byte  0x00, 0x01, -0x41
   7115 06 01 00           3502 	.byte  0x06, 0x01,  0x00
   7118 00 01 F4           3503 	.byte  0x00, 0x01, -0x0C
   711B FA 01 00           3504 	.byte -0x06, 0x01,  0x00
   711E 00 01 8E           3505 	.byte  0x00, 0x01, -0x72
   7121 06 01 1E           3506 	.byte  0x06, 0x01,  0x1E
   7124 4B 3F              3507 	.word SMVB_continue4_single
   7126 06 01 12           3508 	.byte  0x06, 0x01,  0x12
   7129 0C 01 1E           3509 	.byte  0x0C, 0x01,  0x1E
   712C 0C 01 12           3510 	.byte  0x0C, 0x01,  0x12
   712F EF 01 00           3511 	.byte -0x11, 0x01,  0x00
   7132 4C 70              3512 	.word SMVB_startMove_single
   7134 FA 01 00           3513 	.byte -0x06, 0x01,  0x00
   7137 4D BA              3514 	.word SMVB_startDraw_single
   7139 00 01 0C           3515 	.byte  0x00, 0x01,  0x0C
   713C 4B 4C              3516 	.word SMVB_continue3_single
   713E 06 01 00           3517 	.byte  0x06, 0x01,  0x00
   7141 00 01 F4           3518 	.byte  0x00, 0x01, -0x0C
   7144 FB 01 29           3519 	.byte -0x05, 0x01,  0x29
   7147 4C 70              3520 	.word SMVB_startMove_single
   7149 FA 01 00           3521 	.byte -0x06, 0x01,  0x00
   714C 4D BA              3522 	.word SMVB_startDraw_single
   714E 00 01 05           3523 	.byte  0x00, 0x01,  0x05
   7151 4B 4C              3524 	.word SMVB_continue3_single
   7153 06 01 00           3525 	.byte  0x06, 0x01,  0x00
   7156 00 01 FB           3526 	.byte  0x00, 0x01, -0x05
   7159 FE 00 00           3527 	.byte  0xfe, 0x00,  0x00 
   715C 4E D9              3528 	.word SMVB_lastDraw_rts2
                           3529  .globl _TreasureList_2
   715E                    3530 _TreasureList_2:
   715E 29 01 BC           3531 	.byte  0x29, 0x01, -0x44
   7161 4C 1C              3532 	.word SMVB_continue_double
   7163 FA 01 00           3533 	.byte -0x06, 0x01,  0x00
   7166 4D BA              3534 	.word SMVB_startDraw_single
   7168 00 01 0C           3535 	.byte  0x00, 0x01,  0x0C
   716B 4B 4C              3536 	.word SMVB_continue3_single
   716D 06 01 00           3537 	.byte  0x06, 0x01,  0x00
   7170 00 01 F4           3538 	.byte  0x00, 0x01, -0x0C
   7173 12 01 23           3539 	.byte  0x12, 0x01,  0x23
   7176 4C 70              3540 	.word SMVB_startMove_single
   7178 F4 01 00           3541 	.byte -0x0C, 0x01,  0x00
   717B 4D BA              3542 	.word SMVB_startDraw_single
   717D 00 01 06           3543 	.byte  0x00, 0x01,  0x06
   7180 4B 4C              3544 	.word SMVB_continue3_single
   7182 0C 01 00           3545 	.byte  0x0C, 0x01,  0x00
   7185 00 01 FA           3546 	.byte  0x00, 0x01, -0x06
   7188 0C 01 12           3547 	.byte  0x0C, 0x01,  0x12
   718B 4C 70              3548 	.word SMVB_startMove_single
   718D EE 01 17           3549 	.byte -0x12, 0x01,  0x17
   7190 4D BA              3550 	.word SMVB_startDraw_single
   7192 F4 01 1D           3551 	.byte -0x0C, 0x01,  0x1D
   7195 4B 18              3552 	.word SMVB_continue7_single
   7197 F4 01 24           3553 	.byte -0x0C, 0x01,  0x24
   719A 00 01 C3           3554 	.byte  0x00, 0x01, -0x3D
   719D 06 01 FC           3555 	.byte  0x06, 0x01, -0x04
   71A0 00 01 F4           3556 	.byte  0x00, 0x01, -0x0C
   71A3 FA 01 FC           3557 	.byte -0x06, 0x01, -0x04
   71A6 00 01 92           3558 	.byte  0x00, 0x01, -0x6E
   71A9 06 01 1E           3559 	.byte  0x06, 0x01,  0x1E
   71AC 4B 25              3560 	.word SMVB_continue6_single
   71AE 0C 01 12           3561 	.byte  0x0C, 0x01,  0x12
   71B1 0C 01 06           3562 	.byte  0x0C, 0x01,  0x06
   71B4 0C 01 19           3563 	.byte  0x0C, 0x01,  0x19
   71B7 12 01 12           3564 	.byte  0x12, 0x01,  0x12
   71BA EE 01 06           3565 	.byte -0x12, 0x01,  0x06
   71BD EF 01 FF           3566 	.byte -0x11, 0x01, -0x01
   71C0 4C 70              3567 	.word SMVB_startMove_single
   71C2 F4 01 00           3568 	.byte -0x0C, 0x01,  0x00
   71C5 4D BA              3569 	.word SMVB_startDraw_single
   71C7 00 01 0C           3570 	.byte  0x00, 0x01,  0x0C
   71CA 4B 4C              3571 	.word SMVB_continue3_single
   71CC 0C 01 00           3572 	.byte  0x0C, 0x01,  0x00
   71CF 00 01 F4           3573 	.byte  0x00, 0x01, -0x0C
   71D2 FE 00 00           3574 	.byte  0xfe, 0x00,  0x00 
   71D5 4E D9              3575 	.word SMVB_lastDraw_rts2
                           3576  .globl _TreasureList_3
   71D7                    3577 _TreasureList_3:
   71D7 20 01 BA           3578 	.byte  0x20, 0x01, -0x46
   71DA 4C 1C              3579 	.word SMVB_continue_double
   71DC FA 01 00           3580 	.byte -0x06, 0x01,  0x00
   71DF 4D BA              3581 	.word SMVB_startDraw_single
   71E1 00 01 0C           3582 	.byte  0x00, 0x01,  0x0C
   71E4 4B 4C              3583 	.word SMVB_continue3_single
   71E6 06 01 00           3584 	.byte  0x06, 0x01,  0x00
   71E9 00 01 F4           3585 	.byte  0x00, 0x01, -0x0C
   71EC 40 01 43           3586 	.byte  0x40, 0x01,  0x43
   71EF 4C 70              3587 	.word SMVB_startMove_single
   71F1 EE 01 1B           3588 	.byte -0x12, 0x01,  0x1B
   71F4 4D BA              3589 	.word SMVB_startDraw_yd4_single
   71F6 E5 01 13           3590 	.byte -0x1B, 0x01,  0x13
   71F9 4B 18              3591 	.word SMVB_continue7_single
   71FB DF 01 23           3592 	.byte -0x21, 0x01,  0x23
   71FE 00 01 BF           3593 	.byte  0x00, 0x01, -0x41
   7201 0C 01 00           3594 	.byte  0x0C, 0x01,  0x00
   7204 00 01 F4           3595 	.byte  0x00, 0x01, -0x0C
   7207 F4 01 00           3596 	.byte -0x0C, 0x01,  0x00
   720A 00 01 8E           3597 	.byte  0x00, 0x01, -0x72
   720D 1D 01 1E           3598 	.byte  0x1D, 0x01,  0x1E
   7210 4B 18              3599 	.word SMVB_continue7_single
   7212 0F 01 0F           3600 	.byte  0x0F, 0x01,  0x0F
   7215 0E 01 08           3601 	.byte  0x0E, 0x01,  0x08
   7218 0F 01 08           3602 	.byte  0x0F, 0x01,  0x08
   721B 08 01 0B           3603 	.byte  0x08, 0x01,  0x0B
   721E 07 01 16           3604 	.byte  0x07, 0x01,  0x16
   7221 F5 01 0B           3605 	.byte -0x0B, 0x01,  0x0B
   7224 C3 01 22           3606 	.byte -0x3D, 0x01,  0x22
   7227 4C 70              3607 	.word SMVB_startMove_single
   7229 F4 01 00           3608 	.byte -0x0C, 0x01,  0x00
   722C 4D BA              3609 	.word SMVB_startDraw_single
   722E 00 01 05           3610 	.byte  0x00, 0x01,  0x05
   7231 4B 4C              3611 	.word SMVB_continue3_single
   7233 0C 01 00           3612 	.byte  0x0C, 0x01,  0x00
   7236 00 01 FB           3613 	.byte  0x00, 0x01, -0x05
   7239 26 01 BC           3614 	.byte  0x26, 0x01, -0x44
   723C 4C 70              3615 	.word SMVB_startMove_single
   723E FA 01 00           3616 	.byte -0x06, 0x01,  0x00
   7241 4D BA              3617 	.word SMVB_startDraw_single
   7243 00 01 0C           3618 	.byte  0x00, 0x01,  0x0C
   7246 4B 4C              3619 	.word SMVB_continue3_single
   7248 06 01 00           3620 	.byte  0x06, 0x01,  0x00
   724B 00 01 F4           3621 	.byte  0x00, 0x01, -0x0C
   724E DD 01 00           3622 	.byte -0x23, 0x01,  0x00
   7251 4C 70              3623 	.word SMVB_startMove_single
   7253 FA 01 00           3624 	.byte -0x06, 0x01,  0x00
   7256 4D BA              3625 	.word SMVB_startDraw_single
   7258 00 01 0C           3626 	.byte  0x00, 0x01,  0x0C
   725B 4B 4C              3627 	.word SMVB_continue3_single
   725D 06 01 00           3628 	.byte  0x06, 0x01,  0x00
   7260 00 01 F4           3629 	.byte  0x00, 0x01, -0x0C
   7263 1E 01 29           3630 	.byte  0x1E, 0x01,  0x29
   7266 4C 70              3631 	.word SMVB_startMove_single
   7268 FA 01 00           3632 	.byte -0x06, 0x01,  0x00
   726B 4D BA              3633 	.word SMVB_startDraw_single
   726D 00 01 0C           3634 	.byte  0x00, 0x01,  0x0C
   7270 4B 4C              3635 	.word SMVB_continue3_single
   7272 06 01 00           3636 	.byte  0x06, 0x01,  0x00
   7275 00 01 F4           3637 	.byte  0x00, 0x01, -0x0C
   7278 EE 01 F5           3638 	.byte -0x12, 0x01, -0x0B
   727B 4C 70              3639 	.word SMVB_startMove_single
   727D FA 01 00           3640 	.byte -0x06, 0x01,  0x00
   7280 4D BA              3641 	.word SMVB_startDraw_single
   7282 00 01 0C           3642 	.byte  0x00, 0x01,  0x0C
   7285 4B 4C              3643 	.word SMVB_continue3_single
   7287 06 01 00           3644 	.byte  0x06, 0x01,  0x00
   728A 00 01 F4           3645 	.byte  0x00, 0x01, -0x0C
   728D 32 01 ED           3646 	.byte  0x32, 0x01, -0x13
   7290 4C 70              3647 	.word SMVB_startMove_single
   7292 FA 01 00           3648 	.byte -0x06, 0x01,  0x00
   7295 4D BA              3649 	.word SMVB_startDraw_yd4_single
   7297 00 01 0C           3650 	.byte  0x00, 0x01,  0x0C
   729A 4B 4C              3651 	.word SMVB_continue3_single
   729C 06 01 00           3652 	.byte  0x06, 0x01,  0x00
   729F 00 01 F4           3653 	.byte  0x00, 0x01, -0x0C
   72A2 FE 00 00           3654 	.byte  0xfe, 0x00,  0x00 
   72A5 4E D9              3655 	.word SMVB_lastDraw_rts2
                           3656  .globl _TreasureList_4
   72A7                    3657 _TreasureList_4:
   72A7 20 01 BA           3658 	.byte  0x20, 0x01, -0x46
   72AA 4C 1C              3659 	.word SMVB_continue_double
   72AC FA 01 00           3660 	.byte -0x06, 0x01,  0x00
   72AF 4D BA              3661 	.word SMVB_startDraw_single
   72B1 00 01 0C           3662 	.byte  0x00, 0x01,  0x0C
   72B4 4B 4C              3663 	.word SMVB_continue3_single
   72B6 06 01 00           3664 	.byte  0x06, 0x01,  0x00
   72B9 00 01 F4           3665 	.byte  0x00, 0x01, -0x0C
   72BC 44 01 53           3666 	.byte  0x44, 0x01,  0x53
   72BF 4C 70              3667 	.word SMVB_startMove_single
   72C1 F0 01 25           3668 	.byte -0x10, 0x01,  0x25
   72C4 4D BA              3669 	.word SMVB_startDraw_yd4_single
   72C6 DE 01 00           3670 	.byte -0x22, 0x01,  0x00
   72C9 4B 18              3671 	.word SMVB_continue7_single
   72CB DF 01 1F           3672 	.byte -0x21, 0x01,  0x1F
   72CE 00 01 BB           3673 	.byte  0x00, 0x01, -0x45
   72D1 0C 01 00           3674 	.byte  0x0C, 0x01,  0x00
   72D4 00 01 F4           3675 	.byte  0x00, 0x01, -0x0C
   72D7 F4 01 00           3676 	.byte -0x0C, 0x01,  0x00
   72DA 00 01 8A           3677 	.byte  0x00, 0x01, -0x76
   72DD 20 01 18           3678 	.byte  0x20, 0x01,  0x18
   72E0 4B 18              3679 	.word SMVB_continue7_single
   72E2 0F 01 13           3680 	.byte  0x0F, 0x01,  0x13
   72E5 0B 01 0D           3681 	.byte  0x0B, 0x01,  0x0D
   72E8 15 01 04           3682 	.byte  0x15, 0x01,  0x04
   72EB 09 01 12           3683 	.byte  0x09, 0x01,  0x12
   72EE 12 01 1E           3684 	.byte  0x12, 0x01,  0x1E
   72F1 E8 01 12           3685 	.byte -0x18, 0x01,  0x12
   72F4 BF 01 12           3686 	.byte -0x41, 0x01,  0x12
   72F7 4C 70              3687 	.word SMVB_startMove_single
   72F9 F4 01 00           3688 	.byte -0x0C, 0x01,  0x00
   72FC 4D BA              3689 	.word SMVB_startDraw_single
   72FE 00 01 05           3690 	.byte  0x00, 0x01,  0x05
   7301 4B 4C              3691 	.word SMVB_continue3_single
   7303 0C 01 00           3692 	.byte  0x0C, 0x01,  0x00
   7306 00 01 FB           3693 	.byte  0x00, 0x01, -0x05
   7309 26 01 BC           3694 	.byte  0x26, 0x01, -0x44
   730C 4C 70              3695 	.word SMVB_startMove_single
   730E FA 01 00           3696 	.byte -0x06, 0x01,  0x00
   7311 4D BA              3697 	.word SMVB_startDraw_single
   7313 00 01 0C           3698 	.byte  0x00, 0x01,  0x0C
   7316 4B 4C              3699 	.word SMVB_continue3_single
   7318 06 01 00           3700 	.byte  0x06, 0x01,  0x00
   731B 00 01 F4           3701 	.byte  0x00, 0x01, -0x0C
   731E DD 01 00           3702 	.byte -0x23, 0x01,  0x00
   7321 4C 70              3703 	.word SMVB_startMove_single
   7323 FA 01 00           3704 	.byte -0x06, 0x01,  0x00
   7326 4D BA              3705 	.word SMVB_startDraw_single
   7328 00 01 0C           3706 	.byte  0x00, 0x01,  0x0C
   732B 4B 4C              3707 	.word SMVB_continue3_single
   732D 06 01 00           3708 	.byte  0x06, 0x01,  0x00
   7330 00 01 F4           3709 	.byte  0x00, 0x01, -0x0C
   7333 32 01 2B           3710 	.byte  0x32, 0x01,  0x2B
   7336 4C 70              3711 	.word SMVB_startMove_single
   7338 FA 01 00           3712 	.byte -0x06, 0x01,  0x00
   733B 4D BA              3713 	.word SMVB_startDraw_yd4_single
   733D 00 01 0C           3714 	.byte  0x00, 0x01,  0x0C
   7340 4B 4C              3715 	.word SMVB_continue3_single
   7342 06 01 00           3716 	.byte  0x06, 0x01,  0x00
   7345 00 01 F4           3717 	.byte  0x00, 0x01, -0x0C
   7348 DA 01 F3           3718 	.byte -0x26, 0x01, -0x0D
   734B 4C 70              3719 	.word SMVB_startMove_single
   734D FA 01 00           3720 	.byte -0x06, 0x01,  0x00
   7350 4D BA              3721 	.word SMVB_startDraw_single
   7352 00 01 0C           3722 	.byte  0x00, 0x01,  0x0C
   7355 4B 4C              3723 	.word SMVB_continue3_single
   7357 06 01 00           3724 	.byte  0x06, 0x01,  0x00
   735A 00 01 F4           3725 	.byte  0x00, 0x01, -0x0C
   735D 32 01 ED           3726 	.byte  0x32, 0x01, -0x13
   7360 4C 70              3727 	.word SMVB_startMove_single
   7362 FA 01 00           3728 	.byte -0x06, 0x01,  0x00
   7365 4D BA              3729 	.word SMVB_startDraw_yd4_single
   7367 00 01 0C           3730 	.byte  0x00, 0x01,  0x0C
   736A 4B 4C              3731 	.word SMVB_continue3_single
   736C 06 01 00           3732 	.byte  0x06, 0x01,  0x00
   736F 00 01 F4           3733 	.byte  0x00, 0x01, -0x0C
   7372 E4 01 34           3734 	.byte -0x1C, 0x01,  0x34
   7375 4C 70              3735 	.word SMVB_startMove_single
   7377 FA 01 00           3736 	.byte -0x06, 0x01,  0x00
   737A 4D BA              3737 	.word SMVB_startDraw_single
   737C 00 01 0C           3738 	.byte  0x00, 0x01,  0x0C
   737F 4B 4C              3739 	.word SMVB_continue3_single
   7381 06 01 00           3740 	.byte  0x06, 0x01,  0x00
   7384 00 01 F4           3741 	.byte  0x00, 0x01, -0x0C
   7387 00 01 97           3742 	.byte  0x00, 0x01, -0x69
   738A 4E 7A              3743 	.word SMVB_startMove_newY_eq_oldX_single ; y was -0x0C, now 0
   738C FA 01 00           3744 	.byte -0x06, 0x01,  0x00
   738F 4D BA              3745 	.word SMVB_startDraw_single
   7391 00 01 0C           3746 	.byte  0x00, 0x01,  0x0C
   7394 4B 4C              3747 	.word SMVB_continue3_single
   7396 06 01 00           3748 	.byte  0x06, 0x01,  0x00
   7399 00 01 F4           3749 	.byte  0x00, 0x01, -0x0C
   739C F4 01 4F           3750 	.byte -0x0C, 0x01,  0x4F
   739F 4C 9D              3751 	.word SMVB_startMove_double
   73A1 FA 01 00           3752 	.byte -0x06, 0x01,  0x00
   73A4 4D BA              3753 	.word SMVB_startDraw_single
   73A6 00 01 0C           3754 	.byte  0x00, 0x01,  0x0C
   73A9 4B 4C              3755 	.word SMVB_continue3_single
   73AB 06 01 00           3756 	.byte  0x06, 0x01,  0x00
   73AE 00 01 F4           3757 	.byte  0x00, 0x01, -0x0C
   73B1 00 01 97           3758 	.byte  0x00, 0x01, -0x69
   73B4 4C 9D              3759 	.word SMVB_startMove_double
   73B6 FA 01 00           3760 	.byte -0x06, 0x01,  0x00
   73B9 4D BA              3761 	.word SMVB_startDraw_single
   73BB 00 01 0C           3762 	.byte  0x00, 0x01,  0x0C
   73BE 4B 4C              3763 	.word SMVB_continue3_single
   73C0 06 01 00           3764 	.byte  0x06, 0x01,  0x00
   73C3 00 01 F4           3765 	.byte  0x00, 0x01, -0x0C
   73C6 09 01 5E           3766 	.byte  0x09, 0x01,  0x5E
   73C9 4C 9D              3767 	.word SMVB_startMove_double
   73CB FA 01 00           3768 	.byte -0x06, 0x01,  0x00
   73CE 4D BA              3769 	.word SMVB_startDraw_single
   73D0 00 01 0C           3770 	.byte  0x00, 0x01,  0x0C
   73D3 4B 4C              3771 	.word SMVB_continue3_single
   73D5 06 01 00           3772 	.byte  0x06, 0x01,  0x00
   73D8 00 01 F4           3773 	.byte  0x00, 0x01, -0x0C
   73DB 00 01 A9           3774 	.byte  0x00, 0x01, -0x57
   73DE 4C 9D              3775 	.word SMVB_startMove_double
   73E0 FA 01 00           3776 	.byte -0x06, 0x01,  0x00
   73E3 4D BA              3777 	.word SMVB_startDraw_single
   73E5 00 01 0C           3778 	.byte  0x00, 0x01,  0x0C
   73E8 4B 4C              3779 	.word SMVB_continue3_single
   73EA 06 01 00           3780 	.byte  0x06, 0x01,  0x00
   73ED 00 01 F4           3781 	.byte  0x00, 0x01, -0x0C
   73F0 0F 01 16           3782 	.byte  0x0F, 0x01,  0x16
   73F3 4C 70              3783 	.word SMVB_startMove_single
   73F5 FA 01 00           3784 	.byte -0x06, 0x01,  0x00
   73F8 4D BA              3785 	.word SMVB_startDraw_single
   73FA 00 01 0C           3786 	.byte  0x00, 0x01,  0x0C
   73FD 4B 4C              3787 	.word SMVB_continue3_single
   73FF 06 01 00           3788 	.byte  0x06, 0x01,  0x00
   7402 00 01 F4           3789 	.byte  0x00, 0x01, -0x0C
   7405 FE 00 00           3790 	.byte  0xfe, 0x00,  0x00 
   7408 4E D9              3791 	.word SMVB_lastDraw_rts2
                           3792  .globl _TreasureList_5
   740A                    3793 _TreasureList_5:
   740A 6E 01 C7           3794 	.byte  0x6E, 0x01, -0x39
   740D 4B 66              3795 	.word SMVB_continue_single
   740F 00 01 E1           3796 	.byte  0x00, 0x01, -0x1F
   7412 4D BA              3797 	.word SMVB_startDraw_yd4_single
   7414 10 01 08           3798 	.byte  0x10, 0x01,  0x08
   7417 4B 25              3799 	.word SMVB_continue6_single
   7419 10 01 F8           3800 	.byte  0x10, 0x01, -0x08
   741C 00 01 74           3801 	.byte  0x00, 0x01,  0x74
   741F F0 01 08           3802 	.byte -0x10, 0x01,  0x08
   7422 F0 01 F8           3803 	.byte -0x10, 0x01, -0x08
   7425 00 01 C2           3804 	.byte  0x00, 0x01, -0x3E
   7428 E9 01 17           3805 	.byte -0x17, 0x01,  0x17
   742B 4C 70              3806 	.word SMVB_startMove_single
   742D 00 01 F0           3807 	.byte  0x00, 0x01, -0x10
   7430 4D BA              3808 	.word SMVB_startDraw_single
   7432 10 01 00           3809 	.byte  0x10, 0x01,  0x00
   7435 4B 18              3810 	.word SMVB_continue7_single
   7437 07 01 F1           3811 	.byte  0x07, 0x01, -0x0F
   743A 00 01 F8           3812 	.byte  0x00, 0x01, -0x08
   743D F9 01 E9           3813 	.byte -0x07, 0x01, -0x17
   7440 F0 01 F9           3814 	.byte -0x10, 0x01, -0x07
   7443 00 01 17           3815 	.byte  0x00, 0x01,  0x17
   7446 00 01 0F           3816 	.byte  0x00, 0x01,  0x0F
   7449 00 01 07           3817 	.byte  0x00, 0x01,  0x07
   744C 4B 25              3818 	.word SMVB_continue6_single
   744E 08 01 00           3819 	.byte  0x08, 0x01,  0x00
   7451 F8 01 F1           3820 	.byte -0x08, 0x01, -0x0F
   7454 08 01 00           3821 	.byte  0x08, 0x01,  0x00
   7457 F8 01 F1           3822 	.byte -0x08, 0x01, -0x0F
   745A F8 01 E1           3823 	.byte -0x08, 0x01, -0x1F
   745D 00 01 BA           3824 	.byte  0x00, 0x01, -0x46
   7460 4C 70              3825 	.word SMVB_startMove_single
   7462 10 01 3E           3826 	.byte  0x10, 0x01,  0x3E
   7465 4D BA              3827 	.word SMVB_startDraw_single
   7467 00 01 1F           3828 	.byte  0x00, 0x01,  0x1F
   746A 4B 66              3829 	.word SMVB_continue_single
   746C F8 01 F9           3830 	.byte -0x08, 0x01, -0x07
   746F 4C 70              3831 	.word SMVB_startMove_single
   7471 F8 01 F8           3832 	.byte -0x08, 0x01, -0x08
   7474 4D EB              3833 	.word SMVB_startDraw_yEqx_single; y is -0x08
   7476 08 01 00           3834 	.byte  0x08, 0x01,  0x00
   7479 4C 70              3835 	.word SMVB_startMove_single
   747B 01 01 F0           3836 	.byte SHITREG_POKE_VALUE, 0x01, -0x10
   747E 4E 95              3837 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   7480 F8 01 E9           3838 	.byte -0x08, 0x01, -0x17
   7483 4C 70              3839 	.word SMVB_startMove_single
   7485 08 01 17           3840 	.byte  0x08, 0x01,  0x17
   7488 4D BA              3841 	.word SMVB_startDraw_single
   748A 08 01 00           3842 	.byte  0x08, 0x01,  0x00
   748D 4B 4C              3843 	.word SMVB_continue3_single
   748F 17 01 08           3844 	.byte  0x17, 0x01,  0x08
   7492 27 01 F8           3845 	.byte  0x27, 0x01, -0x08
   7495 00 01 49           3846 	.byte  0x00, 0x01,  0x49
   7498 4C 1C              3847 	.word SMVB_continue_double
   749A F1 01 08           3848 	.byte -0x0F, 0x01,  0x08
   749D 4B 3F              3849 	.word SMVB_continue4_single
   749F E0 01 00           3850 	.byte -0x20, 0x01,  0x00
   74A2 F1 01 E9           3851 	.byte -0x0F, 0x01, -0x17
   74A5 F0 01 C2           3852 	.byte -0x10, 0x01, -0x3E
   74A8 00 01 BE           3853 	.byte  0x00, 0x01, -0x42
   74AB 4C 1C              3854 	.word SMVB_continue_double
   74AD C2 01 00           3855 	.byte -0x3E, 0x01,  0x00
   74B0 4B 73              3856 	.word SMVB_continue_yd4_single
   74B2 00 01 42           3857 	.byte  0x00, 0x01,  0x42
   74B5 4C 1C              3858 	.word SMVB_continue_double
   74B7 27 01 3E           3859 	.byte  0x27, 0x01,  0x3E
   74BA 4B 4C              3860 	.word SMVB_continue3_single
   74BC 27 01 00           3861 	.byte  0x27, 0x01,  0x00
   74BF 00 01 CA           3862 	.byte  0x00, 0x01, -0x36
   74C2 F8 01 00           3863 	.byte -0x08, 0x01,  0x00
   74C5 4C 70              3864 	.word SMVB_startMove_single
   74C7 01 01 F8           3865 	.byte SHITREG_POKE_VALUE, 0x01, -0x08
   74CA 4E 95              3866 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   74CC 00 01 00           3867 	.byte  0x00, 0x01,  0x00
   74CF 4E 7A              3868 	.word SMVB_startMove_newY_eq_oldX_single ; y was -0x08, now 0
   74D1 CA 01 00           3869 	.byte -0x36, 0x01,  0x00
   74D4 4D BA              3870 	.word SMVB_startDraw_single
   74D6 FE 00 00           3871 	.byte  0xfe, 0x00,  0x00
   74D9 4E D9              3872 	.word SMVB_lastDraw_rts2
                           3873  .globl _InnList
   74DB                    3874 _InnList:
   74DB 22 01 A3           3875 	.byte  0x22, 0x01, -0x5D
   74DE 4C 1C              3876 	.word SMVB_continue_double
   74E0 15 01 F5           3877 	.byte  0x15, 0x01, -0x0B
   74E3 4D BA              3878 	.word SMVB_startDraw_single
   74E5 00 01 CA           3879 	.byte  0x00, 0x01, -0x36
   74E8 4B 18              3880 	.word SMVB_continue7_single
   74EA EE 01 EE           3881 	.byte -0x12, 0x01, -0x12
   74ED E8 01 00           3882 	.byte -0x18, 0x01,  0x00
   74F0 F0 01 0C           3883 	.byte -0x10, 0x01,  0x0C
   74F3 16 01 11           3884 	.byte  0x16, 0x01,  0x11
   74F6 06 01 15           3885 	.byte  0x06, 0x01,  0x15
   74F9 F5 01 14           3886 	.byte -0x0B, 0x01,  0x14
   74FC AB 01 01           3887 	.byte -0x55, 0x01,  0x01
   74FF 4B 73              3888 	.word SMVB_continue_yd4_single
   7501 00 01 C5           3889 	.byte  0x00, 0x01, -0x3B
   7504 4B 18              3890 	.word SMVB_continue7_single
   7506 F2 01 F1           3891 	.byte -0x0E, 0x01, -0x0F
   7509 F0 01 FD           3892 	.byte -0x10, 0x01, -0x03
   750C F5 01 10           3893 	.byte -0x0B, 0x01,  0x10
   750F 11 01 1A           3894 	.byte  0x11, 0x01,  0x1A
   7512 FE 01 19           3895 	.byte -0x02, 0x01,  0x19
   7515 ED 01 0F           3896 	.byte -0x13, 0x01,  0x0F
   7518 F7 01 19           3897 	.byte -0x09, 0x01,  0x19
   751B 4B 18              3898 	.word SMVB_continue7_single
   751D FE 01 2B           3899 	.byte -0x02, 0x01,  0x2B
   7520 14 01 12           3900 	.byte  0x14, 0x01,  0x12
   7523 1B 01 08           3901 	.byte  0x1B, 0x01,  0x08
   7526 0B 01 EF           3902 	.byte  0x0B, 0x01, -0x11
   7529 ED 01 F4           3903 	.byte -0x13, 0x01, -0x0C
   752C F9 01 EA           3904 	.byte -0x07, 0x01, -0x16
   752F 06 01 E3           3905 	.byte  0x06, 0x01, -0x1D
   7532 4B 59              3906 	.word SMVB_continue2_single
   7534 48 01 00           3907 	.byte  0x48, 0x01,  0x00
   7537 08 01 34           3908 	.byte  0x08, 0x01,  0x34
   753A 4B 73              3909 	.word SMVB_continue_yd4_single
   753C 11 01 18           3910 	.byte  0x11, 0x01,  0x18
   753F 4B 25              3911 	.word SMVB_continue6_single
   7541 1D 01 FC           3912 	.byte  0x1D, 0x01, -0x04
   7544 00 01 EE           3913 	.byte  0x00, 0x01, -0x12
   7547 F3 01 F1           3914 	.byte -0x0D, 0x01, -0x0F
   754A FC 01 EA           3915 	.byte -0x04, 0x01, -0x16
   754D 0E 01 E8           3916 	.byte  0x0E, 0x01, -0x18
   7550 04 01 42           3917 	.byte  0x04, 0x01,  0x42
   7553 4C 9D              3918 	.word SMVB_startMove_double
   7555 E9 01 E2           3919 	.byte -0x17, 0x01, -0x1E
   7558 4D BA              3920 	.word SMVB_startDraw_single
   755A E1 01 FA           3921 	.byte -0x1F, 0x01, -0x06
   755D 4B 3F              3922 	.word SMVB_continue4_single
   755F 07 01 16           3923 	.byte  0x07, 0x01,  0x16
   7562 0B 01 0E           3924 	.byte  0x0B, 0x01,  0x0E
   7565 FB 01 0E           3925 	.byte -0x05, 0x01,  0x0E
   7568 AC 01 02           3926 	.byte -0x54, 0x01,  0x02
   756B 4B 73              3927 	.word SMVB_continue_yd4_single
   756D F2 01 EA           3928 	.byte -0x0E, 0x01, -0x16
   7570 4B 18              3929 	.word SMVB_continue7_single
   7572 EA 01 06           3930 	.byte -0x16, 0x01,  0x06
   7575 03 01 16           3931 	.byte  0x03, 0x01,  0x16
   7578 14 01 0E           3932 	.byte  0x14, 0x01,  0x0E
   757B 42 01 01           3933 	.byte  0x42, 0x01,  0x01
   757E 15 01 12           3934 	.byte  0x15, 0x01,  0x12
   7581 0B 01 21           3935 	.byte  0x0B, 0x01,  0x21
   7584 99 01 03           3936 	.byte -0x67, 0x01,  0x03
   7587 4B 73              3937 	.word SMVB_continue_yd4_single
   7589 EF 01 1D           3938 	.byte -0x11, 0x01,  0x1D
   758C 4B 32              3939 	.word SMVB_continue5_single
   758E 0E 01 18           3940 	.byte  0x0E, 0x01,  0x18
   7591 14 01 F8           3941 	.byte  0x14, 0x01, -0x08
   7594 0A 01 E8           3942 	.byte  0x0A, 0x01, -0x18
   7597 62 01 FF           3943 	.byte  0x62, 0x01, -0x01
   759A 12 01 F2           3944 	.byte  0x12, 0x01, -0x0E
   759D 4B 73              3945 	.word SMVB_continue_yd4_single
   759F 00 01 ED           3946 	.byte  0x00, 0x01, -0x13
   75A2 4B 32              3947 	.word SMVB_continue5_single
   75A4 E3 01 EE           3948 	.byte -0x1D, 0x01, -0x12
   75A7 F9 01 E9           3949 	.byte -0x07, 0x01, -0x17
   75AA 22 01 EA           3950 	.byte  0x22, 0x01, -0x16
   75AD 02 01 F1           3951 	.byte  0x02, 0x01, -0x0F
   75B0 F7 01 48           3952 	.byte -0x09, 0x01,  0x48
   75B3 4C 9D              3953 	.word SMVB_startMove_double
   75B5 12 01 15           3954 	.byte  0x12, 0x01,  0x15
   75B8 4D BA              3955 	.word SMVB_startDraw_single
   75BA FB 01 15           3956 	.byte -0x05, 0x01,  0x15
   75BD 4B 25              3957 	.word SMVB_continue6_single
   75BF E1 01 15           3958 	.byte -0x1F, 0x01,  0x15
   75C2 0C 01 16           3959 	.byte  0x0C, 0x01,  0x16
   75C5 1B 01 18           3960 	.byte  0x1B, 0x01,  0x18
   75C8 FE 01 12           3961 	.byte -0x02, 0x01,  0x12
   75CB EB 01 12           3962 	.byte -0x15, 0x01,  0x12
   75CE 95 01 00           3963 	.byte -0x6B, 0x01,  0x00
   75D1 4B 73              3964 	.word SMVB_continue_yd4_single
   75D3 F6 01 14           3965 	.byte -0x0A, 0x01,  0x14
   75D6 4B 32              3966 	.word SMVB_continue5_single
   75D8 EE 01 03           3967 	.byte -0x12, 0x01,  0x03
   75DB F8 01 E9           3968 	.byte -0x08, 0x01, -0x17
   75DE 12 01 EB           3969 	.byte  0x12, 0x01, -0x15
   75E1 6A 01 F7           3970 	.byte  0x6A, 0x01, -0x09
   75E4 EF 01 DE           3971 	.byte -0x11, 0x01, -0x22
   75E7 4B 73              3972 	.word SMVB_continue_yd4_single
   75E9 F0 01 EF           3973 	.byte -0x10, 0x01, -0x11
   75EC 4B 66              3974 	.word SMVB_continue_single
   75EE BD 01 02           3975 	.byte -0x43, 0x01,  0x02
   75F1 4B 73              3976 	.word SMVB_continue_yd4_single
   75F3 ED 01 F1           3977 	.byte -0x13, 0x01, -0x0F
   75F6 4B 32              3978 	.word SMVB_continue5_single
   75F8 FE 01 E3           3979 	.byte -0x02, 0x01, -0x1D
   75FB 18 01 FF           3980 	.byte  0x18, 0x01, -0x01
   75FE 14 01 15           3981 	.byte  0x14, 0x01,  0x15
   7601 42 01 FE           3982 	.byte  0x42, 0x01, -0x02
   7604 0E 01 F6           3983 	.byte  0x0E, 0x01, -0x0A
   7607 4B 73              3984 	.word SMVB_continue_yd4_single
   7609 EF 01 EB           3985 	.byte -0x11, 0x01, -0x15
   760C 4B 4C              3986 	.word SMVB_continue3_single
   760E 06 01 EE           3987 	.byte  0x06, 0x01, -0x12
   7611 1D 01 09           3988 	.byte  0x1D, 0x01,  0x09
   7614 FE 00 00           3989 	.byte  0xfe, 0x00,  0x00
   7617 4E D9              3990 	.word SMVB_lastDraw_rts2
                           3991  .globl _ThroneList
   7619                    3992 _ThroneList:
   7619 76 21              3993  .word _ThroneList_0 ; list of all single vectorlists in this
   761B 77 1D              3994  .word _ThroneList_1
   761D 78 19              3995  .word _ThroneList_2
   761F 79 15              3996  .word _ThroneList_3
                           3997  .globl _ThroneList_0
   7621                    3998 _ThroneList_0:
   7621 51 01 DC           3999 	.byte  0x51, 0x01, -0x24
   7624 4C 1C              4000 	.word SMVB_continue_double
   7626 F4 01 EE           4001 	.byte -0x0C, 0x01, -0x12
   7629 4D BA              4002 	.word SMVB_startDraw_yd4_single
   762B 00 01 12           4003 	.byte  0x00, 0x01,  0x12
   762E 4B 66              4004 	.word SMVB_continue_single
   7630 00 01 F5           4005 	.byte  0x00, 0x01, -0x0B
   7633 4D 69              4006 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   7635 B2 01 00           4007 	.byte -0x4E, 0x01,  0x00
   7638 4D BA              4008 	.word SMVB_startDraw_yd4_single
   763A EF 01 2F           4009 	.byte -0x11, 0x01,  0x2F
   763D 4B 4C              4010 	.word SMVB_continue3_single
   763F 1F 01 00           4011 	.byte  0x1F, 0x01,  0x00
   7642 0C 01 D1           4012 	.byte  0x0C, 0x01, -0x2F
   7645 00 01 9F           4013 	.byte  0x00, 0x01, -0x61
   7648 4C 70              4014 	.word SMVB_startMove_single
   764A F4 01 30           4015 	.byte -0x0C, 0x01,  0x30
   764D 4D BA              4016 	.word SMVB_startDraw_single
   764F E0 01 00           4017 	.byte -0x20, 0x01,  0x00
   7652 4B 66              4018 	.word SMVB_continue_single
   7654 12 01 0C           4019 	.byte  0x12, 0x01,  0x0C
   7657 4C 70              4020 	.word SMVB_startMove_single
   7659 00 01 25           4021 	.byte  0x00, 0x01,  0x25
   765C 4D BA              4022 	.word SMVB_startDraw_single
   765E EF 01 2F           4023 	.byte -0x11, 0x01,  0x2F
   7661 4C 70              4024 	.word SMVB_startMove_single
   7663 00 01 AC           4025 	.byte  0x00, 0x01, -0x54
   7666 4D BA              4026 	.word SMVB_startDraw_single
   7668 20 01 00           4027 	.byte  0x20, 0x01,  0x00
   766B 4B 4C              4028 	.word SMVB_continue3_single
   766D 0C 01 D1           4029 	.byte  0x0C, 0x01, -0x2F
   7670 2A 01 00           4030 	.byte  0x2A, 0x01,  0x00
   7673 3A 01 F3           4031 	.byte  0x3A, 0x01, -0x0D
   7676 4C 70              4032 	.word SMVB_startMove_single
   7678 CA 01 00           4033 	.byte -0x36, 0x01,  0x00
   767B 4D BA              4034 	.word SMVB_startDraw_yd4_single
   767D 00 01 12           4035 	.byte  0x00, 0x01,  0x12
   7680 4B 18              4036 	.word SMVB_continue7_single
   7682 F4 01 EE           4037 	.byte -0x0C, 0x01, -0x12
   7685 DE 01 00           4038 	.byte -0x22, 0x01,  0x00
   7688 B6 01 00           4039 	.byte -0x4A, 0x01,  0x00
   768B FB 01 12           4040 	.byte -0x05, 0x01,  0x12
   768E 17 01 00           4041 	.byte  0x17, 0x01,  0x00
   7691 FA 01 1E           4042 	.byte -0x06, 0x01,  0x1E
   7694 E2 01 00           4043 	.byte -0x1E, 0x01,  0x00
   7697 4B 18              4044 	.word SMVB_continue7_single
   7699 FB 01 12           4045 	.byte -0x05, 0x01,  0x12
   769C 23 01 00           4046 	.byte  0x23, 0x01,  0x00
   769F 00 01 18           4047 	.byte  0x00, 0x01,  0x18
   76A2 F8 01 0A           4048 	.byte -0x08, 0x01,  0x0A
   76A5 08 01 08           4049 	.byte  0x08, 0x01,  0x08
   76A8 00 01 1E           4050 	.byte  0x00, 0x01,  0x1E
   76AB E2 01 00           4051 	.byte -0x1E, 0x01,  0x00
   76AE 4B 4C              4052 	.word SMVB_continue3_single
   76B0 FB 01 12           4053 	.byte -0x05, 0x01,  0x12
   76B3 55 01 00           4054 	.byte  0x55, 0x01,  0x00
   76B6 0C 01 D0           4055 	.byte  0x0C, 0x01, -0x30
   76B9 4B 73              4056 	.word SMVB_continue_yd4_single
   76BB 64 01 00           4057 	.byte  0x64, 0x01,  0x00
   76BE 4B 66              4058 	.word SMVB_continue_single
   76C0 00 01 EE           4059 	.byte  0x00, 0x01, -0x12
   76C3 4B 75              4060 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   76C5 EE 01 00           4061 	.byte -0x12, 0x01,  0x00
   76C8 4B 25              4062 	.word SMVB_continue6_single
   76CA FA 01 F4           4063 	.byte -0x06, 0x01, -0x0C
   76CD 00 01 D0           4064 	.byte  0x00, 0x01, -0x30
   76D0 06 01 F4           4065 	.byte  0x06, 0x01, -0x0C
   76D3 12 01 00           4066 	.byte  0x12, 0x01,  0x00
   76D6 00 01 EE           4067 	.byte  0x00, 0x01, -0x12
   76D9 D0 01 20           4068 	.byte -0x30, 0x01,  0x20
   76DC 4C 70              4069 	.word SMVB_startMove_single
   76DE FA 01 FE           4070 	.byte -0x06, 0x01, -0x02
   76E1 4D BA              4071 	.word SMVB_startDraw_single
   76E3 F9 01 0E           4072 	.byte -0x07, 0x01,  0x0E
   76E6 4B 4C              4073 	.word SMVB_continue3_single
   76E8 0B 01 00           4074 	.byte  0x0B, 0x01,  0x00
   76EB 02 01 F4           4075 	.byte  0x02, 0x01, -0x0C
   76EE DE 01 12           4076 	.byte -0x22, 0x01,  0x12
   76F1 4C 70              4077 	.word SMVB_startMove_single
   76F3 F5 01 01           4078 	.byte -0x0B, 0x01,  0x01
   76F6 4D BA              4079 	.word SMVB_startDraw_single
   76F8 FD 01 0F           4080 	.byte -0x03, 0x01,  0x0F
   76FB 4B 4C              4081 	.word SMVB_continue3_single
   76FD 0A 01 FC           4082 	.byte  0x0A, 0x01, -0x04
   7700 04 01 F4           4083 	.byte  0x04, 0x01, -0x0C
   7703 1F 01 1E           4084 	.byte  0x1F, 0x01,  0x1E
   7706 4C 70              4085 	.word SMVB_startMove_single
   7708 FA 01 F7           4086 	.byte -0x06, 0x01, -0x09
   770B 4D BA              4087 	.word SMVB_startDraw_single
   770D 09 01 FB           4088 	.byte  0x09, 0x01, -0x05
   7710 4B 4C              4089 	.word SMVB_continue3_single
   7712 05 01 0B           4090 	.byte  0x05, 0x01,  0x0B
   7715 F8 01 03           4091 	.byte -0x08, 0x01,  0x03
   7718 FE 00 00           4092 	.byte  0xfe, 0x00,  0x00
   771B 4E D9              4093 	.word SMVB_lastDraw_rts2
                           4094  .globl _ThroneList_1
   771D                    4095 _ThroneList_1:
   771D 51 01 DC           4096 	.byte  0x51, 0x01, -0x24
   7720 4C 1C              4097 	.word SMVB_continue_double
   7722 F4 01 EE           4098 	.byte -0x0C, 0x01, -0x12
   7725 4D BA              4099 	.word SMVB_startDraw_yd4_single
   7727 00 01 12           4100 	.byte  0x00, 0x01,  0x12
   772A 4B 66              4101 	.word SMVB_continue_single
   772C 00 01 F5           4102 	.byte  0x00, 0x01, -0x0B
   772F 4D 69              4103 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   7731 B2 01 00           4104 	.byte -0x4E, 0x01,  0x00
   7734 4D BA              4105 	.word SMVB_startDraw_yd4_single
   7736 EF 01 2F           4106 	.byte -0x11, 0x01,  0x2F
   7739 4B 4C              4107 	.word SMVB_continue3_single
   773B 1F 01 00           4108 	.byte  0x1F, 0x01,  0x00
   773E 0C 01 D1           4109 	.byte  0x0C, 0x01, -0x2F
   7741 00 01 9F           4110 	.byte  0x00, 0x01, -0x61
   7744 4C 70              4111 	.word SMVB_startMove_single
   7746 F4 01 30           4112 	.byte -0x0C, 0x01,  0x30
   7749 4D BA              4113 	.word SMVB_startDraw_single
   774B E0 01 00           4114 	.byte -0x20, 0x01,  0x00
   774E 4B 66              4115 	.word SMVB_continue_single
   7750 12 01 0C           4116 	.byte  0x12, 0x01,  0x0C
   7753 4C 70              4117 	.word SMVB_startMove_single
   7755 00 01 25           4118 	.byte  0x00, 0x01,  0x25
   7758 4D BA              4119 	.word SMVB_startDraw_single
   775A EF 01 2F           4120 	.byte -0x11, 0x01,  0x2F
   775D 4C 70              4121 	.word SMVB_startMove_single
   775F 00 01 AC           4122 	.byte  0x00, 0x01, -0x54
   7762 4D BA              4123 	.word SMVB_startDraw_single
   7764 20 01 00           4124 	.byte  0x20, 0x01,  0x00
   7767 4B 4C              4125 	.word SMVB_continue3_single
   7769 0C 01 D1           4126 	.byte  0x0C, 0x01, -0x2F
   776C 2A 01 00           4127 	.byte  0x2A, 0x01,  0x00
   776F 3A 01 F3           4128 	.byte  0x3A, 0x01, -0x0D
   7772 4C 70              4129 	.word SMVB_startMove_single
   7774 CA 01 00           4130 	.byte -0x36, 0x01,  0x00
   7777 4D BA              4131 	.word SMVB_startDraw_yd4_single
   7779 00 01 12           4132 	.byte  0x00, 0x01,  0x12
   777C 4B 18              4133 	.word SMVB_continue7_single
   777E F4 01 EE           4134 	.byte -0x0C, 0x01, -0x12
   7781 DE 01 00           4135 	.byte -0x22, 0x01,  0x00
   7784 B6 01 00           4136 	.byte -0x4A, 0x01,  0x00
   7787 FB 01 12           4137 	.byte -0x05, 0x01,  0x12
   778A 17 01 00           4138 	.byte  0x17, 0x01,  0x00
   778D FA 01 1E           4139 	.byte -0x06, 0x01,  0x1E
   7790 E2 01 00           4140 	.byte -0x1E, 0x01,  0x00
   7793 4B 18              4141 	.word SMVB_continue7_single
   7795 FB 01 12           4142 	.byte -0x05, 0x01,  0x12
   7798 23 01 00           4143 	.byte  0x23, 0x01,  0x00
   779B 00 01 18           4144 	.byte  0x00, 0x01,  0x18
   779E F8 01 0A           4145 	.byte -0x08, 0x01,  0x0A
   77A1 08 01 08           4146 	.byte  0x08, 0x01,  0x08
   77A4 00 01 1E           4147 	.byte  0x00, 0x01,  0x1E
   77A7 E2 01 00           4148 	.byte -0x1E, 0x01,  0x00
   77AA 4B 4C              4149 	.word SMVB_continue3_single
   77AC FB 01 12           4150 	.byte -0x05, 0x01,  0x12
   77AF 55 01 00           4151 	.byte  0x55, 0x01,  0x00
   77B2 0C 01 D0           4152 	.byte  0x0C, 0x01, -0x30
   77B5 4B 73              4153 	.word SMVB_continue_yd4_single
   77B7 64 01 00           4154 	.byte  0x64, 0x01,  0x00
   77BA 4B 66              4155 	.word SMVB_continue_single
   77BC 00 01 EE           4156 	.byte  0x00, 0x01, -0x12
   77BF 4B 75              4157 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   77C1 EE 01 00           4158 	.byte -0x12, 0x01,  0x00
   77C4 4B 25              4159 	.word SMVB_continue6_single
   77C6 FA 01 F4           4160 	.byte -0x06, 0x01, -0x0C
   77C9 00 01 D0           4161 	.byte  0x00, 0x01, -0x30
   77CC 06 01 F4           4162 	.byte  0x06, 0x01, -0x0C
   77CF 12 01 00           4163 	.byte  0x12, 0x01,  0x00
   77D2 00 01 EE           4164 	.byte  0x00, 0x01, -0x12
   77D5 C4 01 20           4165 	.byte -0x3C, 0x01,  0x20
   77D8 4C 70              4166 	.word SMVB_startMove_yd4_single
   77DA FA 01 FE           4167 	.byte -0x06, 0x01, -0x02
   77DD 4D BA              4168 	.word SMVB_startDraw_single
   77DF FA 01 0E           4169 	.byte -0x06, 0x01,  0x0E
   77E2 4B 4C              4170 	.word SMVB_continue3_single
   77E4 0A 01 00           4171 	.byte  0x0A, 0x01,  0x00
   77E7 02 01 F4           4172 	.byte  0x02, 0x01, -0x0C
   77EA EB 01 19           4173 	.byte -0x15, 0x01,  0x19
   77ED 4C 70              4174 	.word SMVB_startMove_single
   77EF F5 01 01           4175 	.byte -0x0B, 0x01,  0x01
   77F2 4D BA              4176 	.word SMVB_startDraw_single
   77F4 FD 01 0F           4177 	.byte -0x03, 0x01,  0x0F
   77F7 4B 4C              4178 	.word SMVB_continue3_single
   77F9 0A 01 FC           4179 	.byte  0x0A, 0x01, -0x04
   77FC 04 01 F4           4180 	.byte  0x04, 0x01, -0x0C
   77FF 13 01 1C           4181 	.byte  0x13, 0x01,  0x1C
   7802 4C 70              4182 	.word SMVB_startMove_single
   7804 FA 01 F7           4183 	.byte -0x06, 0x01, -0x09
   7807 4D BA              4184 	.word SMVB_startDraw_single
   7809 09 01 FB           4185 	.byte  0x09, 0x01, -0x05
   780C 4B 4C              4186 	.word SMVB_continue3_single
   780E 05 01 0B           4187 	.byte  0x05, 0x01,  0x0B
   7811 F8 01 03           4188 	.byte -0x08, 0x01,  0x03
   7814 FE 00 00           4189 	.byte  0xfe, 0x00,  0x00
   7817 4E D9              4190 	.word SMVB_lastDraw_rts2
                           4191  .globl _ThroneList_2
   7819                    4192 _ThroneList_2:
   7819 51 01 DC           4193 	.byte  0x51, 0x01, -0x24
   781C 4C 1C              4194 	.word SMVB_continue_double
   781E F4 01 EE           4195 	.byte -0x0C, 0x01, -0x12
   7821 4D BA              4196 	.word SMVB_startDraw_yd4_single
   7823 00 01 12           4197 	.byte  0x00, 0x01,  0x12
   7826 4B 66              4198 	.word SMVB_continue_single
   7828 00 01 F5           4199 	.byte  0x00, 0x01, -0x0B
   782B 4D 69              4200 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   782D B2 01 00           4201 	.byte -0x4E, 0x01,  0x00
   7830 4D BA              4202 	.word SMVB_startDraw_yd4_single
   7832 EF 01 2F           4203 	.byte -0x11, 0x01,  0x2F
   7835 4B 4C              4204 	.word SMVB_continue3_single
   7837 1F 01 00           4205 	.byte  0x1F, 0x01,  0x00
   783A 0C 01 D1           4206 	.byte  0x0C, 0x01, -0x2F
   783D 00 01 9F           4207 	.byte  0x00, 0x01, -0x61
   7840 4C 70              4208 	.word SMVB_startMove_single
   7842 F4 01 30           4209 	.byte -0x0C, 0x01,  0x30
   7845 4D BA              4210 	.word SMVB_startDraw_single
   7847 E0 01 00           4211 	.byte -0x20, 0x01,  0x00
   784A 4B 66              4212 	.word SMVB_continue_single
   784C 12 01 0C           4213 	.byte  0x12, 0x01,  0x0C
   784F 4C 70              4214 	.word SMVB_startMove_single
   7851 00 01 25           4215 	.byte  0x00, 0x01,  0x25
   7854 4D BA              4216 	.word SMVB_startDraw_single
   7856 EF 01 2F           4217 	.byte -0x11, 0x01,  0x2F
   7859 4C 70              4218 	.word SMVB_startMove_single
   785B 00 01 AC           4219 	.byte  0x00, 0x01, -0x54
   785E 4D BA              4220 	.word SMVB_startDraw_single
   7860 20 01 00           4221 	.byte  0x20, 0x01,  0x00
   7863 4B 4C              4222 	.word SMVB_continue3_single
   7865 0C 01 D1           4223 	.byte  0x0C, 0x01, -0x2F
   7868 2A 01 00           4224 	.byte  0x2A, 0x01,  0x00
   786B 3A 01 F3           4225 	.byte  0x3A, 0x01, -0x0D
   786E 4C 70              4226 	.word SMVB_startMove_single
   7870 CA 01 00           4227 	.byte -0x36, 0x01,  0x00
   7873 4D BA              4228 	.word SMVB_startDraw_yd4_single
   7875 00 01 12           4229 	.byte  0x00, 0x01,  0x12
   7878 4B 18              4230 	.word SMVB_continue7_single
   787A F4 01 EE           4231 	.byte -0x0C, 0x01, -0x12
   787D DE 01 00           4232 	.byte -0x22, 0x01,  0x00
   7880 B6 01 00           4233 	.byte -0x4A, 0x01,  0x00
   7883 FB 01 12           4234 	.byte -0x05, 0x01,  0x12
   7886 17 01 00           4235 	.byte  0x17, 0x01,  0x00
   7889 FA 01 1E           4236 	.byte -0x06, 0x01,  0x1E
   788C E2 01 00           4237 	.byte -0x1E, 0x01,  0x00
   788F 4B 18              4238 	.word SMVB_continue7_single
   7891 FB 01 12           4239 	.byte -0x05, 0x01,  0x12
   7894 23 01 00           4240 	.byte  0x23, 0x01,  0x00
   7897 00 01 18           4241 	.byte  0x00, 0x01,  0x18
   789A F8 01 0A           4242 	.byte -0x08, 0x01,  0x0A
   789D 08 01 08           4243 	.byte  0x08, 0x01,  0x08
   78A0 00 01 1E           4244 	.byte  0x00, 0x01,  0x1E
   78A3 E2 01 00           4245 	.byte -0x1E, 0x01,  0x00
   78A6 4B 4C              4246 	.word SMVB_continue3_single
   78A8 FB 01 12           4247 	.byte -0x05, 0x01,  0x12
   78AB 55 01 00           4248 	.byte  0x55, 0x01,  0x00
   78AE 0C 01 D0           4249 	.byte  0x0C, 0x01, -0x30
   78B1 4B 73              4250 	.word SMVB_continue_yd4_single
   78B3 64 01 00           4251 	.byte  0x64, 0x01,  0x00
   78B6 4B 66              4252 	.word SMVB_continue_single
   78B8 00 01 EE           4253 	.byte  0x00, 0x01, -0x12
   78BB 4B 75              4254 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   78BD EE 01 00           4255 	.byte -0x12, 0x01,  0x00
   78C0 4B 25              4256 	.word SMVB_continue6_single
   78C2 FA 01 F4           4257 	.byte -0x06, 0x01, -0x0C
   78C5 00 01 D0           4258 	.byte  0x00, 0x01, -0x30
   78C8 06 01 F4           4259 	.byte  0x06, 0x01, -0x0C
   78CB 12 01 00           4260 	.byte  0x12, 0x01,  0x00
   78CE 00 01 EE           4261 	.byte  0x00, 0x01, -0x12
   78D1 E0 01 2A           4262 	.byte -0x20, 0x01,  0x2A
   78D4 4C 70              4263 	.word SMVB_startMove_single
   78D6 FA 01 FE           4264 	.byte -0x06, 0x01, -0x02
   78D9 4D BA              4265 	.word SMVB_startDraw_single
   78DB F9 01 0D           4266 	.byte -0x07, 0x01,  0x0D
   78DE 4B 4C              4267 	.word SMVB_continue3_single
   78E0 0B 01 00           4268 	.byte  0x0B, 0x01,  0x00
   78E3 02 01 F5           4269 	.byte  0x02, 0x01, -0x0B
   78E6 D1 01 F9           4270 	.byte -0x2F, 0x01, -0x07
   78E9 4C 70              4271 	.word SMVB_startMove_single
   78EB F5 01 01           4272 	.byte -0x0B, 0x01,  0x01
   78EE 4D BA              4273 	.word SMVB_startDraw_single
   78F0 FD 01 0F           4274 	.byte -0x03, 0x01,  0x0F
   78F3 4B 4C              4275 	.word SMVB_continue3_single
   78F5 0A 01 FC           4276 	.byte  0x0A, 0x01, -0x04
   78F8 04 01 F4           4277 	.byte  0x04, 0x01, -0x0C
   78FB 10 01 32           4278 	.byte  0x10, 0x01,  0x32
   78FE 4C 70              4279 	.word SMVB_startMove_single
   7900 FA 01 F7           4280 	.byte -0x06, 0x01, -0x09
   7903 4D BA              4281 	.word SMVB_startDraw_single
   7905 09 01 FB           4282 	.byte  0x09, 0x01, -0x05
   7908 4B 4C              4283 	.word SMVB_continue3_single
   790A 05 01 0B           4284 	.byte  0x05, 0x01,  0x0B
   790D F8 01 03           4285 	.byte -0x08, 0x01,  0x03
   7910 FE 00 00           4286 	.byte  0xfe, 0x00,  0x00
   7913 4E D9              4287 	.word SMVB_lastDraw_rts2
                           4288  .globl _ThroneList_3
   7915                    4289 _ThroneList_3:
   7915 51 01 DC           4290 	.byte  0x51, 0x01, -0x24
   7918 4C 1C              4291 	.word SMVB_continue_double
   791A F4 01 EE           4292 	.byte -0x0C, 0x01, -0x12
   791D 4D BA              4293 	.word SMVB_startDraw_yd4_single
   791F 00 01 12           4294 	.byte  0x00, 0x01,  0x12
   7922 4B 66              4295 	.word SMVB_continue_single
   7924 00 01 F5           4296 	.byte  0x00, 0x01, -0x0B
   7927 4D 69              4297 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   7929 B2 01 00           4298 	.byte -0x4E, 0x01,  0x00
   792C 4D BA              4299 	.word SMVB_startDraw_yd4_single
   792E EF 01 2F           4300 	.byte -0x11, 0x01,  0x2F
   7931 4B 4C              4301 	.word SMVB_continue3_single
   7933 1F 01 00           4302 	.byte  0x1F, 0x01,  0x00
   7936 0C 01 D1           4303 	.byte  0x0C, 0x01, -0x2F
   7939 00 01 9F           4304 	.byte  0x00, 0x01, -0x61
   793C 4C 70              4305 	.word SMVB_startMove_single
   793E F4 01 30           4306 	.byte -0x0C, 0x01,  0x30
   7941 4D BA              4307 	.word SMVB_startDraw_single
   7943 E0 01 00           4308 	.byte -0x20, 0x01,  0x00
   7946 4B 66              4309 	.word SMVB_continue_single
   7948 12 01 0C           4310 	.byte  0x12, 0x01,  0x0C
   794B 4C 70              4311 	.word SMVB_startMove_single
   794D 00 01 25           4312 	.byte  0x00, 0x01,  0x25
   7950 4D BA              4313 	.word SMVB_startDraw_single
   7952 EF 01 2F           4314 	.byte -0x11, 0x01,  0x2F
   7955 4C 70              4315 	.word SMVB_startMove_single
   7957 00 01 AC           4316 	.byte  0x00, 0x01, -0x54
   795A 4D BA              4317 	.word SMVB_startDraw_single
   795C 20 01 00           4318 	.byte  0x20, 0x01,  0x00
   795F 4B 4C              4319 	.word SMVB_continue3_single
   7961 0C 01 D1           4320 	.byte  0x0C, 0x01, -0x2F
   7964 2A 01 00           4321 	.byte  0x2A, 0x01,  0x00
   7967 3A 01 F3           4322 	.byte  0x3A, 0x01, -0x0D
   796A 4C 70              4323 	.word SMVB_startMove_single
   796C CA 01 00           4324 	.byte -0x36, 0x01,  0x00
   796F 4D BA              4325 	.word SMVB_startDraw_yd4_single
   7971 00 01 12           4326 	.byte  0x00, 0x01,  0x12
   7974 4B 18              4327 	.word SMVB_continue7_single
   7976 F4 01 EE           4328 	.byte -0x0C, 0x01, -0x12
   7979 DE 01 00           4329 	.byte -0x22, 0x01,  0x00
   797C B6 01 00           4330 	.byte -0x4A, 0x01,  0x00
   797F FB 01 12           4331 	.byte -0x05, 0x01,  0x12
   7982 17 01 00           4332 	.byte  0x17, 0x01,  0x00
   7985 FA 01 1E           4333 	.byte -0x06, 0x01,  0x1E
   7988 E2 01 00           4334 	.byte -0x1E, 0x01,  0x00
   798B 4B 18              4335 	.word SMVB_continue7_single
   798D FB 01 12           4336 	.byte -0x05, 0x01,  0x12
   7990 23 01 00           4337 	.byte  0x23, 0x01,  0x00
   7993 00 01 18           4338 	.byte  0x00, 0x01,  0x18
   7996 F8 01 0A           4339 	.byte -0x08, 0x01,  0x0A
   7999 08 01 08           4340 	.byte  0x08, 0x01,  0x08
   799C 00 01 1E           4341 	.byte  0x00, 0x01,  0x1E
   799F E2 01 00           4342 	.byte -0x1E, 0x01,  0x00
   79A2 4B 4C              4343 	.word SMVB_continue3_single
   79A4 FB 01 12           4344 	.byte -0x05, 0x01,  0x12
   79A7 55 01 00           4345 	.byte  0x55, 0x01,  0x00
   79AA 0C 01 D0           4346 	.byte  0x0C, 0x01, -0x30
   79AD 4B 73              4347 	.word SMVB_continue_yd4_single
   79AF 64 01 00           4348 	.byte  0x64, 0x01,  0x00
   79B2 4B 66              4349 	.word SMVB_continue_single
   79B4 00 01 EE           4350 	.byte  0x00, 0x01, -0x12
   79B7 4B 75              4351 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   79B9 EE 01 00           4352 	.byte -0x12, 0x01,  0x00
   79BC 4B 25              4353 	.word SMVB_continue6_single
   79BE FA 01 F4           4354 	.byte -0x06, 0x01, -0x0C
   79C1 00 01 D0           4355 	.byte  0x00, 0x01, -0x30
   79C4 06 01 F4           4356 	.byte  0x06, 0x01, -0x0C
   79C7 12 01 00           4357 	.byte  0x12, 0x01,  0x00
   79CA 00 01 EE           4358 	.byte  0x00, 0x01, -0x12
   79CD C8 01 1C           4359 	.byte -0x38, 0x01,  0x1C
   79D0 4C 70              4360 	.word SMVB_startMove_yd4_single
   79D2 FA 01 FE           4361 	.byte -0x06, 0x01, -0x02
   79D5 4D BA              4362 	.word SMVB_startDraw_single
   79D7 F9 01 0E           4363 	.byte -0x07, 0x01,  0x0E
   79DA 4B 4C              4364 	.word SMVB_continue3_single
   79DC 0B 01 00           4365 	.byte  0x0B, 0x01,  0x00
   79DF 02 01 F4           4366 	.byte  0x02, 0x01, -0x0C
   79E2 FA 01 15           4367 	.byte -0x06, 0x01,  0x15
   79E5 4C 70              4368 	.word SMVB_startMove_single
   79E7 F6 01 01           4369 	.byte -0x0A, 0x01,  0x01
   79EA 4D BA              4370 	.word SMVB_startDraw_single
   79EC FD 01 0F           4371 	.byte -0x03, 0x01,  0x0F
   79EF 4B 4C              4372 	.word SMVB_continue3_single
   79F1 09 01 FC           4373 	.byte  0x09, 0x01, -0x04
   79F4 04 01 F4           4374 	.byte  0x04, 0x01, -0x0C
   79F7 D5 01 24           4375 	.byte -0x2B, 0x01,  0x24
   79FA 4C 70              4376 	.word SMVB_startMove_single
   79FC FA 01 F7           4377 	.byte -0x06, 0x01, -0x09
   79FF 4D BA              4378 	.word SMVB_startDraw_single
   7A01 09 01 FB           4379 	.byte  0x09, 0x01, -0x05
   7A04 4B 4C              4380 	.word SMVB_continue3_single
   7A06 05 01 0B           4381 	.byte  0x05, 0x01,  0x0B
   7A09 F8 01 03           4382 	.byte -0x08, 0x01,  0x03
   7A0C FE 00 00           4383 	.byte  0xfe, 0x00,  0x00
   7A0F 4E D9              4384 	.word SMVB_lastDraw_rts2
                           4385  .globl _CubeList
   7A11                    4386 _CubeList:
   7A11 7A 15              4387  .word _CubeList_0 ; list of all single vectorlists in this
   7A13 7A 55              4388  .word _CubeList_1
                           4389  .globl _CubeList_0
   7A15                    4390 _CubeList_0:
   7A15 50 01 C4           4391 	.byte  0x50, 0x01, -0x3C
   7A18 4C 1C              4392 	.word SMVB_continue_double
   7A1A A0 01 00           4393 	.byte -0x60, 0x01,  0x00
   7A1D 4D BA              4394 	.word SMVB_startDraw_yd4_single
   7A1F 00 01 1E           4395 	.byte  0x00, 0x01,  0x1E
   7A22 4B 59              4396 	.word SMVB_continue2_single
   7A24 60 01 00           4397 	.byte  0x60, 0x01,  0x00
   7A27 00 01 18           4398 	.byte  0x00, 0x01,  0x18
   7A2A 4B 75              4399 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7A2C A0 01 00           4400 	.byte -0x60, 0x01,  0x00
   7A2F 4B 73              4401 	.word SMVB_continue_yd4_single
   7A31 00 01 18           4402 	.byte  0x00, 0x01,  0x18
   7A34 4B 18              4403 	.word SMVB_continue7_single
   7A36 18 01 00           4404 	.byte  0x18, 0x01,  0x00
   7A39 00 01 9A           4405 	.byte  0x00, 0x01, -0x66
   7A3C 18 01 00           4406 	.byte  0x18, 0x01,  0x00
   7A3F 00 01 66           4407 	.byte  0x00, 0x01,  0x66
   7A42 18 01 00           4408 	.byte  0x18, 0x01,  0x00
   7A45 00 01 9A           4409 	.byte  0x00, 0x01, -0x66
   7A48 18 01 00           4410 	.byte  0x18, 0x01,  0x00
   7A4B 4B 59              4411 	.word SMVB_continue2_single
   7A4D 00 01 18           4412 	.byte  0x00, 0x01,  0x18
   7A50 FE 00 00           4413 	.byte  0xfe, 0x00,  0x00
   7A53 4E D9              4414 	.word SMVB_lastDraw_rts2
                           4415  .globl _CubeList_1
   7A55                    4416 _CubeList_1:
   7A55 50 01 C4           4417 	.byte  0x50, 0x01, -0x3C
   7A58 4C 1C              4418 	.word SMVB_continue_double
   7A5A A0 01 00           4419 	.byte -0x60, 0x01,  0x00
   7A5D 4D BA              4420 	.word SMVB_startDraw_yd4_single
   7A5F 00 01 E8           4421 	.byte  0x00, 0x01, -0x18
   7A62 4B 18              4422 	.word SMVB_continue7_single
   7A64 18 01 00           4423 	.byte  0x18, 0x01,  0x00
   7A67 00 01 66           4424 	.byte  0x00, 0x01,  0x66
   7A6A 18 01 00           4425 	.byte  0x18, 0x01,  0x00
   7A6D 00 01 9A           4426 	.byte  0x00, 0x01, -0x66
   7A70 18 01 00           4427 	.byte  0x18, 0x01,  0x00
   7A73 00 01 66           4428 	.byte  0x00, 0x01,  0x66
   7A76 18 01 00           4429 	.byte  0x18, 0x01,  0x00
   7A79 4B 59              4430 	.word SMVB_continue2_single
   7A7B 00 01 E8           4431 	.byte  0x00, 0x01, -0x18
   7A7E A0 01 00           4432 	.byte -0x60, 0x01,  0x00
   7A81 4B 73              4433 	.word SMVB_continue_yd4_single
   7A83 00 01 E8           4434 	.byte  0x00, 0x01, -0x18
   7A86 4B 59              4435 	.word SMVB_continue2_single
   7A88 60 01 00           4436 	.byte  0x60, 0x01,  0x00
   7A8B 00 01 E2           4437 	.byte  0x00, 0x01, -0x1E
   7A8E 4B 75              4438 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7A90 FE 00 00           4439 	.byte  0xfe, 0x00,  0x00
   7A93 4E D9              4440 	.word SMVB_lastDraw_rts2
                           4441  .globl _FountainList
   7A95                    4442 _FountainList:
   7A95 2E 01 14           4443 	.byte  0x2E, 0x01,  0x14
   7A98 4B 66              4444 	.word SMVB_continue_single
   7A9A FB 01 10           4445 	.byte -0x05, 0x01,  0x10
   7A9D 4D BA              4446 	.word SMVB_startDraw_yd4_single
   7A9F F6 01 0E           4447 	.byte -0x0A, 0x01,  0x0E
   7AA2 4B 66              4448 	.word SMVB_continue_single
   7AA4 C2 01 00           4449 	.byte -0x3E, 0x01,  0x00
   7AA7 4B 73              4450 	.word SMVB_continue_yd4_single
   7AA9 F6 01 F2           4451 	.byte -0x0A, 0x01, -0x0E
   7AAC 4B 18              4452 	.word SMVB_continue7_single
   7AAE F6 01 E0           4453 	.byte -0x0A, 0x01, -0x20
   7AB1 00 01 A2           4454 	.byte  0x00, 0x01, -0x5E
   7AB4 0A 01 E2           4455 	.byte  0x0A, 0x01, -0x1E
   7AB7 0A 01 F1           4456 	.byte  0x0A, 0x01, -0x0F
   7ABA 3F 01 00           4457 	.byte  0x3F, 0x01,  0x00
   7ABD 0D 01 0F           4458 	.byte  0x0D, 0x01,  0x0F
   7AC0 06 01 17           4459 	.byte  0x06, 0x01,  0x17
   7AC3 4B 59              4460 	.word SMVB_continue2_single
   7AC5 00 01 56           4461 	.byte  0x00, 0x01,  0x56
   7AC8 EE 01 F0           4462 	.byte -0x12, 0x01, -0x10
   7ACB 4C 70              4463 	.word SMVB_startMove_single
   7ACD 00 01 10           4464 	.byte  0x00, 0x01,  0x10
   7AD0 4D BA              4465 	.word SMVB_startDraw_single
   7AD2 46 01 00           4466 	.byte  0x46, 0x01,  0x00
   7AD5 4B 66              4467 	.word SMVB_continue_single
   7AD7 00 01 F0           4468 	.byte  0x00, 0x01, -0x10
   7ADA 4B 75              4469 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7ADC A4 01 00           4470 	.byte -0x5C, 0x01,  0x00
   7ADF 4B 73              4471 	.word SMVB_continue_yd4_single
   7AE1 00 01 E1           4472 	.byte  0x00, 0x01, -0x1F
   7AE4 4B 59              4473 	.word SMVB_continue2_single
   7AE6 33 01 00           4474 	.byte  0x33, 0x01,  0x00
   7AE9 00 01 0F           4475 	.byte  0x00, 0x01,  0x0F
   7AEC 4B 75              4476 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7AEE 1F 01 00           4477 	.byte  0x1F, 0x01,  0x00
   7AF1 4B 18              4478 	.word SMVB_continue7_single
   7AF3 FF 01 F0           4479 	.byte -0x01, 0x01, -0x10
   7AF6 F3 01 F3           4480 	.byte -0x0D, 0x01, -0x0D
   7AF9 EF 01 FD           4481 	.byte -0x11, 0x01, -0x03
   7AFC 02 01 F3           4482 	.byte  0x02, 0x01, -0x0D
   7AFF 12 01 00           4483 	.byte  0x12, 0x01,  0x00
   7B02 14 01 0F           4484 	.byte  0x14, 0x01,  0x0F
   7B05 04 01 0F           4485 	.byte  0x04, 0x01,  0x0F
   7B08 4B 18              4486 	.word SMVB_continue7_single
   7B0A 0F 01 FD           4487 	.byte  0x0F, 0x01, -0x03
   7B0D 01 01 E4           4488 	.byte  0x01, 0x01, -0x1C
   7B10 0A 01 02           4489 	.byte  0x0A, 0x01,  0x02
   7B13 01 01 2D           4490 	.byte  0x01, 0x01,  0x2D
   7B16 12 01 03           4491 	.byte  0x12, 0x01,  0x03
   7B19 00 01 1A           4492 	.byte  0x00, 0x01,  0x1A
   7B1C EE 01 03           4493 	.byte -0x12, 0x01,  0x03
   7B1F 4B 25              4494 	.word SMVB_continue6_single
   7B21 00 01 F0           4495 	.byte  0x00, 0x01, -0x10
   7B24 F6 01 02           4496 	.byte -0x0A, 0x01,  0x02
   7B27 FD 01 0C           4497 	.byte -0x03, 0x01,  0x0C
   7B2A F8 01 02           4498 	.byte -0x08, 0x01,  0x02
   7B2D 00 01 1F           4499 	.byte  0x00, 0x01,  0x1F
   7B30 A5 01 00           4500 	.byte -0x5B, 0x01,  0x00
   7B33 4B 73              4501 	.word SMVB_continue_yd4_single
   7B35 05 01 00           4502 	.byte  0x05, 0x01,  0x00
   7B38 4C 70              4503 	.word SMVB_startMove_single
   7B3A FB 01 10           4504 	.byte -0x05, 0x01,  0x10
   7B3D 4D BA              4505 	.word SMVB_startDraw_single
   7B3F EC 01 00           4506 	.byte -0x14, 0x01,  0x00
   7B42 4B 18              4507 	.word SMVB_continue7_single
   7B44 F3 01 DF           4508 	.byte -0x0D, 0x01, -0x21
   7B47 00 01 A3           4509 	.byte  0x00, 0x01, -0x5D
   7B4A 0D 01 E3           4510 	.byte  0x0D, 0x01, -0x1D
   7B4D 14 01 00           4511 	.byte  0x14, 0x01,  0x00
   7B50 0B 01 0E           4512 	.byte  0x0B, 0x01,  0x0E
   7B53 00 01 2E           4513 	.byte  0x00, 0x01,  0x2E
   7B56 FE 00 00           4514 	.byte  0xfe, 0x00,  0x00
   7B59 4E D9              4515 	.word SMVB_lastDraw_rts2
                           4516  .globl _AltarList
   7B5B                    4517 _AltarList:
   7B5B 0E 01 64           4518 	.byte  0x0E, 0x01,  0x64
   7B5E 4B 66              4519 	.word SMVB_continue_single
   7B60 E5 01 D2           4520 	.byte -0x1B, 0x01, -0x2E
   7B63 4D BA              4521 	.word SMVB_startDraw_single
   7B65 CB 01 00           4522 	.byte -0x35, 0x01,  0x00
   7B68 4C 70              4523 	.word SMVB_startMove_single
   7B6A 01 01 EC           4524 	.byte SHITREG_POKE_VALUE, 0x01, -0x14
   7B6D 4E 95              4525 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   7B6F 00 01 C6           4526 	.byte  0x00, 0x01, -0x3A
   7B72 4D 69              4527 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   7B74 01 01 B4           4528 	.byte  SHITREG_POKE_VALUE, 0x01, -0x4C
   7B77 4D 7F              4529 	.word SMVB_startDraw_yStays_single; y was  0x00, now SHIFT Poke
   7B79 35 01 00           4530 	.byte  0x35, 0x01,  0x00
   7B7C 4B 18              4531 	.word SMVB_continue7_single
   7B7E 1B 01 36           4532 	.byte  0x1B, 0x01,  0x36
   7B81 00 01 21           4533 	.byte  0x00, 0x01,  0x21
   7B84 11 01 00           4534 	.byte  0x11, 0x01,  0x00
   7B87 00 01 E3           4535 	.byte  0x00, 0x01, -0x1D
   7B8A 02 01 EC           4536 	.byte  0x02, 0x01, -0x14
   7B8D 06 01 EF           4537 	.byte  0x06, 0x01, -0x11
   7B90 0E 01 E9           4538 	.byte  0x0E, 0x01, -0x17
   7B93 4B 18              4539 	.word SMVB_continue7_single
   7B95 0B 01 17           4540 	.byte  0x0B, 0x01,  0x17
   7B98 06 01 15           4541 	.byte  0x06, 0x01,  0x15
   7B9B 02 01 18           4542 	.byte  0x02, 0x01,  0x18
   7B9E 00 01 15           4543 	.byte  0x00, 0x01,  0x15
   7BA1 12 01 00           4544 	.byte  0x12, 0x01,  0x00
   7BA4 00 01 11           4545 	.byte  0x00, 0x01,  0x11
   7BA7 EE 01 00           4546 	.byte -0x12, 0x01,  0x00
   7BAA 4B 18              4547 	.word SMVB_continue7_single
   7BAC 00 01 12           4548 	.byte  0x00, 0x01,  0x12
   7BAF 09 01 41           4549 	.byte  0x09, 0x01,  0x41
   7BB2 F7 01 F2           4550 	.byte -0x09, 0x01, -0x0E
   7BB5 F8 01 D2           4551 	.byte -0x08, 0x01, -0x2E
   7BB8 00 01 E9           4552 	.byte  0x00, 0x01, -0x17
   7BBB E6 01 00           4553 	.byte -0x1A, 0x01,  0x00
   7BBE 00 01 19           4554 	.byte  0x00, 0x01,  0x19
   7BC1 4B 18              4555 	.word SMVB_continue7_single
   7BC3 F9 01 2B           4556 	.byte -0x07, 0x01,  0x2B
   7BC6 F6 01 0F           4557 	.byte -0x0A, 0x01,  0x0F
   7BC9 09 01 C1           4558 	.byte  0x09, 0x01, -0x3F
   7BCC 00 01 EC           4559 	.byte  0x00, 0x01, -0x14
   7BCF EF 01 00           4560 	.byte -0x11, 0x01,  0x00
   7BD2 00 01 60           4561 	.byte  0x00, 0x01,  0x60
   7BD5 CB 01 00           4562 	.byte -0x35, 0x01,  0x00
   7BD8 4B 73              4563 	.word SMVB_continue_yd4_single
   7BDA E5 01 D2           4564 	.byte -0x1B, 0x01, -0x2E
   7BDD 4B 59              4565 	.word SMVB_continue2_single
   7BDF 35 01 00           4566 	.byte  0x35, 0x01,  0x00
   7BE2 00 01 CC           4567 	.byte  0x00, 0x01, -0x34
   7BE5 4B 75              4568 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7BE7 08 01 E7           4569 	.byte  0x08, 0x01, -0x19
   7BEA 4C 70              4570 	.word SMVB_startMove_single
   7BEC 01 01 1F           4571 	.byte  SHITREG_POKE_VALUE, 0x01,  0x1F
   7BEF 4D 7F              4572 	.word SMVB_startDraw_yStays_single; y was  0x08, now SHIFT Poke
   7BF1 F7 01 0E           4573 	.byte -0x09, 0x01,  0x0E
   7BF4 4B 18              4574 	.word SMVB_continue7_single
   7BF6 F8 01 EC           4575 	.byte -0x08, 0x01, -0x14
   7BF9 DC 01 FC           4576 	.byte -0x24, 0x01, -0x04
   7BFC EE 01 05           4577 	.byte -0x12, 0x01,  0x05
   7BFF 05 01 12           4578 	.byte  0x05, 0x01,  0x12
   7C02 F0 01 2B           4579 	.byte -0x10, 0x01,  0x2B
   7C05 00 01 14           4580 	.byte  0x00, 0x01,  0x14
   7C08 0C 01 06           4581 	.byte  0x0C, 0x01,  0x06
   7C0B 4B 59              4582 	.word SMVB_continue2_single
   7C0D 04 01 14           4583 	.byte  0x04, 0x01,  0x14
   7C10 F3 01 F8           4584 	.byte -0x0D, 0x01, -0x08
   7C13 4C 1C              4585 	.word SMVB_continue_double
   7C15 FC 01 F2           4586 	.byte -0x04, 0x01, -0x0E
   7C18 4B 18              4587 	.word SMVB_continue7_single
   7C1A 00 01 E6           4588 	.byte  0x00, 0x01, -0x1A
   7C1D 05 01 F7           4589 	.byte  0x05, 0x01, -0x09
   7C20 00 01 EE           4590 	.byte  0x00, 0x01, -0x12
   7C23 F9 01 EB           4591 	.byte -0x07, 0x01, -0x15
   7C26 01 01 EE           4592 	.byte  0x01, 0x01, -0x12
   7C29 09 01 F3           4593 	.byte  0x09, 0x01, -0x0D
   7C2C 46 01 07           4594 	.byte  0x46, 0x01,  0x07
   7C2F 4B 66              4595 	.word SMVB_continue_single
   7C31 08 01 FC           4596 	.byte  0x08, 0x01, -0x04
   7C34 4B 73              4597 	.word SMVB_continue_yd4_single
   7C36 F7 01 05           4598 	.byte -0x09, 0x01,  0x05
   7C39 4C 70              4599 	.word SMVB_startMove_single
   7C3B 00 01 AE           4600 	.byte  0x00, 0x01, -0x52
   7C3E 4D BA              4601 	.word SMVB_startDraw_single
   7C40 4F 01 47           4602 	.byte  0x4F, 0x01,  0x47
   7C43 4C 70              4603 	.word SMVB_startMove_single
   7C45 FF 01 EC           4604 	.byte -0x01, 0x01, -0x14
   7C48 4D BA              4605 	.word SMVB_startDraw_yd4_single
   7C4A FA 01 E9           4606 	.byte -0x06, 0x01, -0x17
   7C4D 4B 18              4607 	.word SMVB_continue7_single
   7C4F FD 01 F2           4608 	.byte -0x03, 0x01, -0x0E
   7C52 F5 01 1D           4609 	.byte -0x0B, 0x01,  0x1D
   7C55 FD 01 1C           4610 	.byte -0x03, 0x01,  0x1C
   7C58 00 01 10           4611 	.byte  0x00, 0x01,  0x10
   7C5B 1A 01 00           4612 	.byte  0x1A, 0x01,  0x00
   7C5E 00 01 F0           4613 	.byte  0x00, 0x01, -0x10
   7C61 FE 00 00           4614 	.byte  0xfe, 0x00,  0x00
   7C64 4E D9              4615 	.word SMVB_lastDraw_rts2
                           4616  .globl _ElevatorList
   7C66                    4617 _ElevatorList:
   7C66 25 01 5F           4618 	.byte  0x25, 0x01,  0x5F
   7C69 4C 1C              4619 	.word SMVB_continue_double
   7C6B 00 01 E4           4620 	.byte  0x00, 0x01, -0x1C
   7C6E 4D BA              4621 	.word SMVB_startDraw_single
   7C70 E6 01 FC           4622 	.byte -0x1A, 0x01, -0x04
   7C73 4B 18              4623 	.word SMVB_continue7_single
   7C75 FD 01 EE           4624 	.byte -0x03, 0x01, -0x12
   7C78 F5 01 01           4625 	.byte -0x0B, 0x01,  0x01
   7C7B FE 01 24           4626 	.byte -0x02, 0x01,  0x24
   7C7E 02 01 23           4627 	.byte  0x02, 0x01,  0x23
   7C81 0B 01 01           4628 	.byte  0x0B, 0x01,  0x01
   7C84 03 01 F1           4629 	.byte  0x03, 0x01, -0x0F
   7C87 1A 01 F9           4630 	.byte  0x1A, 0x01, -0x07
   7C8A 4B 66              4631 	.word SMVB_continue_single
   7C8C F3 01 04           4632 	.byte -0x0D, 0x01,  0x04
   7C8F 4C 70              4633 	.word SMVB_startMove_single
   7C91 00 01 12           4634 	.byte  0x00, 0x01,  0x12
   7C94 4D BA              4635 	.word SMVB_startDraw_single
   7C96 EA 01 14           4636 	.byte -0x16, 0x01,  0x14
   7C99 4B 59              4637 	.word SMVB_continue2_single
   7C9B DB 01 05           4638 	.byte -0x25, 0x01,  0x05
   7C9E 0D 01 FD           4639 	.byte  0x0D, 0x01, -0x03
   7CA1 4C 70              4640 	.word SMVB_startMove_single
   7CA3 00 01 8C           4641 	.byte  0x00, 0x01, -0x74
   7CA6 4D BA              4642 	.word SMVB_startDraw_single
   7CA8 F3 01 FE           4643 	.byte -0x0D, 0x01, -0x02
   7CAB 4C 70              4644 	.word SMVB_startMove_single
   7CAD 26 01 03           4645 	.byte  0x26, 0x01,  0x03
   7CB0 4D BA              4646 	.word SMVB_startDraw_single
   7CB2 16 01 14           4647 	.byte  0x16, 0x01,  0x14
   7CB5 4B 59              4648 	.word SMVB_continue2_single
   7CB7 00 01 13           4649 	.byte  0x00, 0x01,  0x13
   7CBA B4 01 2D           4650 	.byte -0x4C, 0x01,  0x2D
   7CBD 4C 70              4651 	.word SMVB_startMove_yd4_single
   7CBF F2 01 00           4652 	.byte -0x0E, 0x01,  0x00
   7CC2 4D BA              4653 	.word SMVB_startDraw_single
   7CC4 00 01 3B           4654 	.byte  0x00, 0x01,  0x3B
   7CC7 4B 4C              4655 	.word SMVB_continue3_single
   7CC9 0E 01 00           4656 	.byte  0x0E, 0x01,  0x00
   7CCC 00 01 C5           4657 	.byte  0x00, 0x01, -0x3B
   7CCF E1 01 F4           4658 	.byte -0x1F, 0x01, -0x0C
   7CD2 4C 70              4659 	.word SMVB_startMove_single
   7CD4 9E 01 00           4660 	.byte -0x62, 0x01,  0x00
   7CD7 4D 9A              4661 	.word SMVB_startDraw_yd4_double
   7CD9 00 01 7B           4662 	.byte  0x00, 0x01,  0x7B
   7CDC 4B 59              4663 	.word SMVB_continue2_single
   7CDE 15 01 15           4664 	.byte  0x15, 0x01,  0x15
   7CE1 60 01 00           4665 	.byte  0x60, 0x01,  0x00
   7CE4 4C 1C              4666 	.word SMVB_continue_double
   7CE6 00 01 D7           4667 	.byte  0x00, 0x01, -0x29
   7CE9 4B 75              4668 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7CEB 1E 01 EC           4669 	.byte  0x1E, 0x01, -0x14
   7CEE 4B 66              4670 	.word SMVB_continue_single
   7CF0 00 01 9F           4671 	.byte  0x00, 0x01, -0x61
   7CF3 4C 1C              4672 	.word SMVB_continue_double
   7CF5 E2 01 EC           4673 	.byte -0x1E, 0x01, -0x14
   7CF8 4B 59              4674 	.word SMVB_continue2_single
   7CFA 00 01 D8           4675 	.byte  0x00, 0x01, -0x28
   7CFD A0 01 00           4676 	.byte -0x60, 0x01,  0x00
   7D00 4C 2A              4677 	.word SMVB_continue_yd4_double
   7D02 EB 01 14           4678 	.byte -0x15, 0x01,  0x14
   7D05 4B 59              4679 	.word SMVB_continue2_single
   7D07 00 01 7B           4680 	.byte  0x00, 0x01,  0x7B
   7D0A 62 01 00           4681 	.byte  0x62, 0x01,  0x00
   7D0D 4C 1C              4682 	.word SMVB_continue_double
   7D0F 00 01 E4           4683 	.byte  0x00, 0x01, -0x1C
   7D12 4B 75              4684 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7D14 A5 01 00           4685 	.byte -0x5B, 0x01,  0x00
   7D17 4C 2A              4686 	.word SMVB_continue_yd4_double
   7D19 00 01 56           4687 	.byte  0x00, 0x01,  0x56
   7D1C 4B 68              4688 	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
   7D1E 5B 01 00           4689 	.byte  0x5B, 0x01,  0x00
   7D21 4C 1C              4690 	.word SMVB_continue_double
   7D23 00 01 E3           4691 	.byte  0x00, 0x01, -0x1D
   7D26 4B 75              4692 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7D28 10 01 9C           4693 	.byte  0x10, 0x01, -0x64
   7D2B 4C 70              4694 	.word SMVB_startMove_single
   7D2D 0E 01 00           4695 	.byte  0x0E, 0x01,  0x00
   7D30 4D BA              4696 	.word SMVB_startDraw_single
   7D32 00 01 3B           4697 	.byte  0x00, 0x01,  0x3B
   7D35 4B 4C              4698 	.word SMVB_continue3_single
   7D37 F2 01 00           4699 	.byte -0x0E, 0x01,  0x00
   7D3A 00 01 C5           4700 	.byte  0x00, 0x01, -0x3B
   7D3D 9D 01 E4           4701 	.byte -0x63, 0x01, -0x1C
   7D40 4C 9D              4702 	.word SMVB_startMove_yd4_double
   7D42 00 01 1C           4703 	.byte  0x00, 0x01,  0x1C
   7D45 4D BA              4704 	.word SMVB_startDraw_single
   7D47 5B 01 00           4705 	.byte  0x5B, 0x01,  0x00
   7D4A 4C 1C              4706 	.word SMVB_continue_double
   7D4C 00 01 E4           4707 	.byte  0x00, 0x01, -0x1C
   7D4F 4B 75              4708 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7D51 A5 01 00           4709 	.byte -0x5B, 0x01,  0x00
   7D54 4C 2A              4710 	.word SMVB_continue_yd4_double
   7D56 00 01 2B           4711 	.byte  0x00, 0x01,  0x2B
   7D59 4E 7A              4712 	.word SMVB_startMove_newY_eq_oldX_single ; y was  0x00, now 0
   7D5B 01 01 2C           4713 	.byte  SHITREG_POKE_VALUE, 0x01,  0x2C
   7D5E 4D 7F              4714 	.word SMVB_startDraw_yStays_single; y was  0x00, now SHIFT Poke
   7D60 5B 01 00           4715 	.byte  0x5B, 0x01,  0x00
   7D63 4C 1C              4716 	.word SMVB_continue_double
   7D65 00 01 D4           4717 	.byte  0x00, 0x01, -0x2C
   7D68 4B 75              4718 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7D6A A5 01 00           4719 	.byte -0x5B, 0x01,  0x00
   7D6D 4C 2A              4720 	.word SMVB_continue_yd4_double
   7D6F 00 01 4F           4721 	.byte  0x00, 0x01,  0x4F
   7D72 4C 9D              4722 	.word SMVB_startMove_double
   7D74 5B 01 00           4723 	.byte  0x5B, 0x01,  0x00
   7D77 4C BD              4724 	.word SMVB_startDraw_double
   7D79 00 01 2C           4725 	.byte  0x00, 0x01,  0x2C
   7D7C 4B 75              4726 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7D7E A5 01 00           4727 	.byte -0x5B, 0x01,  0x00
   7D81 4C 2A              4728 	.word SMVB_continue_yd4_double
   7D83 00 01 D4           4729 	.byte  0x00, 0x01, -0x2C
   7D86 4B 68              4730 	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
   7D88 00 01 3B           4731 	.byte  0x00, 0x01,  0x3B
   7D8B 4D 69              4732 	.word SMVB_startMove_yStays_single; y was  0x00, now 0
   7D8D 5B 01 00           4733 	.byte  0x5B, 0x01,  0x00
   7D90 4C BD              4734 	.word SMVB_startDraw_double
   7D92 00 01 1D           4735 	.byte  0x00, 0x01,  0x1D
   7D95 4B 75              4736 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   7D97 A5 01 00           4737 	.byte -0x5B, 0x01,  0x00
   7D9A 4C 2A              4738 	.word SMVB_continue_yd4_double
   7D9C 00 01 E3           4739 	.byte  0x00, 0x01, -0x1D
   7D9F 4B 68              4740 	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
   7DA1 FE 00 00           4741 	.byte  0xfe, 0x00,  0x00
   7DA4 4E D9              4742 	.word SMVB_lastDraw_rts2
                           4743  .globl _BoxList
   7DA6                    4744 _BoxList:
   7DA6 7D AA              4745  .word _BoxList_0 ; list of all single vectorlists in this
   7DA8 7D E1              4746  .word _BoxList_1
                           4747  .globl _BoxList_0
   7DAA                    4748 _BoxList_0:
   7DAA 50 01 C5           4749 	.byte  0x50, 0x01, -0x3B
   7DAD 4C 1C              4750 	.word SMVB_continue_double
   7DAF A0 01 00           4751 	.byte -0x60, 0x01,  0x00
   7DB2 4D BA              4752 	.word SMVB_startDraw_yd4_single
   7DB4 00 01 E7           4753 	.byte  0x00, 0x01, -0x19
   7DB7 4E 7A              4754 	.word SMVB_startMove_newY_eq_oldX_single ; y was  0x00, now 0
   7DB9 60 01 00           4755 	.byte  0x60, 0x01,  0x00
   7DBC 4D BA              4756 	.word SMVB_startDraw_single
   7DBE A0 01 66           4757 	.byte -0x60, 0x01,  0x66
   7DC1 4C 70              4758 	.word SMVB_startMove_yd4_single
   7DC3 60 01 00           4759 	.byte  0x60, 0x01,  0x00
   7DC6 4D BA              4760 	.word SMVB_startDraw_single
   7DC8 00 01 E8           4761 	.byte  0x00, 0x01, -0x18
   7DCB 4E 7A              4762 	.word SMVB_startMove_yd4_newY_eq_oldX_single ; y was  0x00, now 0
   7DCD A0 01 00           4763 	.byte -0x60, 0x01,  0x00
   7DD0 4D BA              4764 	.word SMVB_startDraw_yd4_single
   7DD2 00 01 E5           4765 	.byte  0x00, 0x01, -0x1B
   7DD5 4E 7A              4766 	.word SMVB_startMove_newY_eq_oldX_single ; y was  0x00, now 0
   7DD7 60 01 00           4767 	.byte  0x60, 0x01,  0x00
   7DDA 4D BA              4768 	.word SMVB_startDraw_single
   7DDC FE 00 00           4769 	.byte  0xfe, 0x00,  0x00
   7DDF 4E D9              4770 	.word SMVB_lastDraw_rts2
                           4771  .globl _BoxList_1
   7DE1                    4772 _BoxList_1:
   7DE1 20 01 B8           4773 	.byte  0x20, 0x01, -0x48
   7DE4 4C 1C              4774 	.word SMVB_continue_double
   7DE6 00 01 66           4775 	.byte  0x00, 0x01,  0x66
   7DE9 4D BA              4776 	.word SMVB_startDraw_single
   7DEB 18 01 00           4777 	.byte  0x18, 0x01,  0x00
   7DEE 4C 70              4778 	.word SMVB_startMove_single
   7DF0 01 01 9A           4779 	.byte SHITREG_POKE_VALUE, 0x01, -0x66
   7DF3 4E 95              4780 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   7DF5 18 01 00           4781 	.byte  0x18, 0x01,  0x00
   7DF8 4C 70              4782 	.word SMVB_startMove_single
   7DFA 01 01 66           4783 	.byte SHITREG_POKE_VALUE, 0x01,  0x66
   7DFD 4E 95              4784 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   7DFF 18 01 00           4785 	.byte  0x18, 0x01,  0x00
   7E02 4C 70              4786 	.word SMVB_startMove_single
   7E04 01 01 9A           4787 	.byte SHITREG_POKE_VALUE, 0x01, -0x66
   7E07 4E 95              4788 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   7E09 18 01 00           4789 	.byte  0x18, 0x01,  0x00
   7E0C 4C 70              4790 	.word SMVB_startMove_single
   7E0E 01 01 66           4791 	.byte SHITREG_POKE_VALUE, 0x01,  0x66
   7E11 4E 95              4792 	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
   7E13 FE 00 00           4793 	.byte  0xfe, 0x00,  0x00
   7E16 4E D9              4794 	.word SMVB_lastDraw_rts2
                           4795  .globl _DragonFlameList
   7E18                    4796 _DragonFlameList:
   7E18 7E 20              4797  .word _DragonFlame_0 ; list of all single vectorlists in this
   7E1A 7E 6F              4798  .word _DragonFlame_1
   7E1C 7E BE              4799  .word _DragonFlame_2
   7E1E 7F 13              4800  .word _DragonFlame_3
                           4801  .globl _DragonFlame_0
   7E20                    4802 _DragonFlame_0:
   7E20 82 01 23           4803 	.byte -0x7E, 0x01,  0x23
   7E23 4B 73              4804 	.word SMVB_continue_yd4_single
   7E25 DA 01 2A           4805 	.byte -0x26, 0x01,  0x2A
   7E28 4D BA              4806 	.word SMVB_startDraw_single
   7E2A ED 01 20           4807 	.byte -0x13, 0x01,  0x20
   7E2D 4B 18              4808 	.word SMVB_continue7_single
   7E2F 03 01 56           4809 	.byte  0x03, 0x01,  0x56
   7E32 2C 01 4E           4810 	.byte  0x2C, 0x01,  0x4E
   7E35 27 01 3A           4811 	.byte  0x27, 0x01,  0x3A
   7E38 1E 01 D5           4812 	.byte  0x1E, 0x01, -0x2B
   7E3B 15 01 D4           4813 	.byte  0x15, 0x01, -0x2C
   7E3E 10 01 CD           4814 	.byte  0x10, 0x01, -0x33
   7E41 FE 01 C1           4815 	.byte -0x02, 0x01, -0x3F
   7E44 4B 4C              4816 	.word SMVB_continue3_single
   7E46 F0 01 C2           4817 	.byte -0x10, 0x01, -0x3E
   7E49 E7 01 E4           4818 	.byte -0x19, 0x01, -0x1C
   7E4C E8 01 24           4819 	.byte -0x18, 0x01,  0x24
   7E4F 4C 70              4820 	.word SMVB_startMove_single
   7E51 16 01 34           4821 	.byte  0x16, 0x01,  0x34
   7E54 4D BA              4822 	.word SMVB_startDraw_single
   7E56 05 01 2A           4823 	.byte  0x05, 0x01,  0x2A
   7E59 4B 25              4824 	.word SMVB_continue6_single
   7E5B F5 01 28           4825 	.byte -0x0B, 0x01,  0x28
   7E5E F1 01 2B           4826 	.byte -0x0F, 0x01,  0x2B
   7E61 D1 01 B9           4827 	.byte -0x2F, 0x01, -0x47
   7E64 00 01 CB           4828 	.byte  0x00, 0x01, -0x35
   7E67 16 01 D0           4829 	.byte  0x16, 0x01, -0x30
   7E6A FE 00 00           4830 	.byte  0xfe, 0x00,  0x00
   7E6D 4E D9              4831 	.word SMVB_lastDraw_rts2
                           4832  .globl _DragonFlame_1
   7E6F                    4833 _DragonFlame_1:
   7E6F AE 01 1E           4834 	.byte -0x52, 0x01,  0x1E
   7E72 4B 73              4835 	.word SMVB_continue_yd4_single
   7E74 22 01 37           4836 	.byte  0x22, 0x01,  0x37
   7E77 4D BA              4837 	.word SMVB_startDraw_single
   7E79 1D 01 46           4838 	.byte  0x1D, 0x01,  0x46
   7E7C 4B 18              4839 	.word SMVB_continue7_single
   7E7E FF 01 3B           4840 	.byte -0x01, 0x01,  0x3B
   7E81 F8 01 40           4841 	.byte -0x08, 0x01,  0x40
   7E84 E0 01 2D           4842 	.byte -0x20, 0x01,  0x2D
   7E87 D0 01 39           4843 	.byte -0x30, 0x01,  0x39
   7E8A BF 01 A1           4844 	.byte -0x41, 0x01, -0x5F
   7E8D E8 01 BE           4845 	.byte -0x18, 0x01, -0x42
   7E90 F8 01 A3           4846 	.byte -0x08, 0x01, -0x5D
   7E93 4B 4C              4847 	.word SMVB_continue3_single
   7E95 21 01 D1           4848 	.byte  0x21, 0x01, -0x2F
   7E98 28 01 E6           4849 	.byte  0x28, 0x01, -0x1A
   7E9B 0C 01 24           4850 	.byte  0x0C, 0x01,  0x24
   7E9E 4C 70              4851 	.word SMVB_startMove_single
   7EA0 E2 01 1E           4852 	.byte -0x1E, 0x01,  0x1E
   7EA3 4D BA              4853 	.word SMVB_startDraw_single
   7EA5 00 01 35           4854 	.byte  0x00, 0x01,  0x35
   7EA8 4B 25              4855 	.word SMVB_continue6_single
   7EAA 31 01 6D           4856 	.byte  0x31, 0x01,  0x6D
   7EAD 1E 01 BA           4857 	.byte  0x1E, 0x01, -0x46
   7EB0 04 01 C8           4858 	.byte  0x04, 0x01, -0x38
   7EB3 FD 01 D4           4859 	.byte -0x03, 0x01, -0x2C
   7EB6 F4 01 E0           4860 	.byte -0x0C, 0x01, -0x20
   7EB9 FE 00 00           4861 	.byte  0xfe, 0x00,  0x00
   7EBC 4E D9              4862 	.word SMVB_lastDraw_rts2
                           4863  .globl _DragonFlame_2
   7EBE                    4864 _DragonFlame_2:
   7EBE BA 01 14           4865 	.byte -0x46, 0x01,  0x14
   7EC1 4C 2A              4866 	.word SMVB_continue_yd4_double
   7EC3 DC 01 30           4867 	.byte -0x24, 0x01,  0x30
   7EC6 4D BA              4868 	.word SMVB_startDraw_single
   7EC8 F2 01 3B           4869 	.byte -0x0E, 0x01,  0x3B
   7ECB 4B 4C              4870 	.word SMVB_continue3_single
   7ECD 08 01 56           4871 	.byte  0x08, 0x01,  0x56
   7ED0 16 01 3D           4872 	.byte  0x16, 0x01,  0x3D
   7ED3 20 01 46           4873 	.byte  0x20, 0x01,  0x46
   7ED6 4C 1C              4874 	.word SMVB_continue_double
   7ED8 30 01 C7           4875 	.byte  0x30, 0x01, -0x39
   7EDB 4B 25              4876 	.word SMVB_continue6_single
   7EDD 2C 01 B9           4877 	.byte  0x2C, 0x01, -0x47
   7EE0 0A 01 D3           4878 	.byte  0x0A, 0x01, -0x2D
   7EE3 06 01 C3           4879 	.byte  0x06, 0x01, -0x3D
   7EE6 DE 01 98           4880 	.byte -0x22, 0x01, -0x68
   7EE9 D0 01 C6           4881 	.byte -0x30, 0x01, -0x3A
   7EEC FE 01 32           4882 	.byte -0x02, 0x01,  0x32
   7EEF 4C 70              4883 	.word SMVB_startMove_single
   7EF1 0C 01 20           4884 	.byte  0x0C, 0x01,  0x20
   7EF4 4D BA              4885 	.word SMVB_startDraw_single
   7EF6 0B 01 2F           4886 	.byte  0x0B, 0x01,  0x2F
   7EF9 4B 4C              4887 	.word SMVB_continue3_single
   7EFB FC 01 5A           4888 	.byte -0x04, 0x01,  0x5A
   7EFE DD 01 4E           4889 	.byte -0x23, 0x01,  0x4E
   7F01 E9 01 B8           4890 	.byte -0x17, 0x01, -0x48
   7F04 4C 1C              4891 	.word SMVB_continue_double
   7F06 FC 01 C0           4892 	.byte -0x04, 0x01, -0x40
   7F09 4B 59              4893 	.word SMVB_continue2_single
   7F0B 1E 01 E2           4894 	.byte  0x1E, 0x01, -0x1E
   7F0E FE 00 00           4895 	.byte  0xfe, 0x00,  0x00
   7F11 4E D9              4896 	.word SMVB_lastDraw_rts2
                           4897  .globl _DragonFlame_3
   7F13                    4898 _DragonFlame_3:
   7F13 B5 01 17           4899 	.byte -0x4B, 0x01,  0x17
   7F16 4C 2A              4900 	.word SMVB_continue_yd4_double
   7F18 E0 01 40           4901 	.byte -0x20, 0x01,  0x40
   7F1B 4D BA              4902 	.word SMVB_startDraw_single
   7F1D F4 01 33           4903 	.byte -0x0C, 0x01,  0x33
   7F20 4B 4C              4904 	.word SMVB_continue3_single
   7F22 04 01 44           4905 	.byte  0x04, 0x01,  0x44
   7F25 16 01 3D           4906 	.byte  0x16, 0x01,  0x3D
   7F28 21 01 58           4907 	.byte  0x21, 0x01,  0x58
   7F2B 4C 1C              4908 	.word SMVB_continue_double
   7F2D 36 01 B1           4909 	.byte  0x36, 0x01, -0x4F
   7F30 4B 25              4910 	.word SMVB_continue6_single
   7F32 1C 01 C7           4911 	.byte  0x1C, 0x01, -0x39
   7F35 10 01 C9           4912 	.byte  0x10, 0x01, -0x37
   7F38 06 01 BD           4913 	.byte  0x06, 0x01, -0x43
   7F3B E0 01 8C           4914 	.byte -0x20, 0x01, -0x74
   7F3E D0 01 C6           4915 	.byte -0x30, 0x01, -0x3A
   7F41 06 01 32           4916 	.byte  0x06, 0x01,  0x32
   7F44 4C 70              4917 	.word SMVB_startMove_single
   7F46 12 01 2C           4918 	.byte  0x12, 0x01,  0x2C
   7F49 4D BA              4919 	.word SMVB_startDraw_single
   7F4B 11 01 3F           4920 	.byte  0x11, 0x01,  0x3F
   7F4E 4B 4C              4921 	.word SMVB_continue3_single
   7F50 F6 01 50           4922 	.byte -0x0A, 0x01,  0x50
   7F53 D7 01 56           4923 	.byte -0x29, 0x01,  0x56
   7F56 E5 01 BA           4924 	.byte -0x1B, 0x01, -0x46
   7F59 4C 1C              4925 	.word SMVB_continue_double
   7F5B 01 01 AC           4926 	.byte  0x01, 0x01, -0x54
   7F5E 4B 59              4927 	.word SMVB_continue2_single
   7F60 0A 01 E0           4928 	.byte  0x0A, 0x01, -0x20
   7F63 FE 00 00           4929 	.byte  0xfe, 0x00,  0x00
   7F66 4E D9              4930 	.word SMVB_lastDraw_rts2
                           4931 ;wr2
                           4932 ; MY_WAIT_RECAL
                           4933 ; rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$vlists.asx$3     0000 GR  |   2 A$vlists.asx$3     0002 GR
  2 A$vlists.asx$3     0005 GR  |   2 A$vlists.asx$3     0006 GR
  2 A$vlists.asx$3     0008 GR  |   2 A$vlists.asx$3     000A GR
  2 A$vlists.asx$3     000C GR  |   2 A$vlists.asx$3     000E GR
  2 A$vlists.asx$3     0010 GR  |   2 A$vlists.asx$3     0013 GR
  2 A$vlists.asx$3     0014 GR  |   2 A$vlists.asx$3     0016 GR
  2 A$vlists.asx$3     0018 GR  |   2 A$vlists.asx$3     001A GR
  2 A$vlists.asx$3     001C GR  |   2 A$vlists.asx$3     001E GR
  2 A$vlists.asx$3     0021 GR  |   2 A$vlists.asx$3     0022 GR
  2 A$vlists.asx$3     0024 GR  |   2 A$vlists.asx$3     0026 GR
  2 A$vlists.asx$3     0028 GR  |   2 A$vlists.asx$3     002A GR
  2 A$vlists.asx$3     002C GR  |   2 A$vlists.asx$3     002F GR
  2 A$vlists.asx$3     0030 GR  |   2 A$vlists.asx$3     0032 GR
  2 A$vlists.asx$3     0034 GR  |   2 A$vlists.asx$3     0037 GR
  2 A$vlists.asx$3     0038 GR  |   2 A$vlists.asx$3     003A GR
  2 A$vlists.asx$3     003C GR  |   2 A$vlists.asx$3     003E GR
  2 A$vlists.asx$3     0040 GR  |   2 A$vlists.asx$3     0042 GR
  2 A$vlists.asx$3     0045 GR  |   2 A$vlists.asx$3     0046 GR
  2 A$vlists.asx$3     0048 GR  |   2 A$vlists.asx$3     004A GR
  2 A$vlists.asx$3     004D GR  |   2 A$vlists.asx$3     004E GR
  2 A$vlists.asx$3     0050 GR  |   2 A$vlists.asx$3     0052 GR
  2 A$vlists.asx$3     0054 GR  |   2 A$vlists.asx$3     0056 GR
  2 A$vlists.asx$3     0058 GR  |   2 A$vlists.asx$3     005B GR
  2 A$vlists.asx$3     005C GR  |   2 A$vlists.asx$4     005E GR
  2 A$vlists.asx$4     0060 GR  |   2 A$vlists.asx$4     0063 GR
  2 A$vlists.asx$4     0064 GR  |   2 A$vlists.asx$4     0066 GR
  2 A$vlists.asx$4     0068 GR  |   2 A$vlists.asx$4     006A GR
  2 A$vlists.asx$4     006C GR  |   2 A$vlists.asx$4     006E GR
  2 A$vlists.asx$4     0071 GR  |   2 A$vlists.asx$4     0072 GR
  2 A$vlists.asx$4     0074 GR  |   2 A$vlists.asx$4     0076 GR
  2 A$vlists.asx$4     0079 GR  |   2 A$vlists.asx$4     007A GR
  2 A$vlists.asx$4     007C GR  |   2 A$vlists.asx$4     007E GR
  2 A$vlists.asx$4     0081 GR  |   2 A$vlists.asx$4     0082 GR
  2 A$vlists.asx$4     0084 GR  |   2 A$vlists.asx$4     0086 GR
  2 A$vlists.asx$4     0089 GR  |   2 A$vlists.asx$4     008A GR
  2 A$vlists.asx$4     008C GR  |   2 A$vlists.asx$4     008E GR
  2 A$vlists.asx$4     0091 GR  |   2 A$vlists.asx$4     0092 GR
  2 A$vlists.asx$4     0094 GR  |   2 A$vlists.asx$4     0096 GR
  2 A$vlists.asx$4     0099 GR  |   2 A$vlists.asx$4     009A GR
  2 A$vlists.asx$4     009C GR  |   2 A$vlists.asx$4     009E GR
  2 A$vlists.asx$4     00A1 GR  |   2 A$vlists.asx$4     00A2 GR
  2 A$vlists.asx$4     00A4 GR  |   2 A$vlists.asx$4     00A6 GR
  2 A$vlists.asx$4     00A9 GR  |   2 A$vlists.asx$4     00AA GR
  2 A$vlists.asx$4     00AC GR  |   2 A$vlists.asx$4     00AE GR
  2 A$vlists.asx$4     00B1 GR  |   2 A$vlists.asx$4     00B2 GR
  2 A$vlists.asx$4     00B4 GR  |   2 A$vlists.asx$4     00B6 GR
  2 A$vlists.asx$4     00B9 GR  |   2 A$vlists.asx$4     00BA GR
  2 A$vlists.asx$4     00BC GR  |   2 A$vlists.asx$4     00BE GR
  2 A$vlists.asx$4     00C1 GR  |   2 A$vlists.asx$4     00C2 GR
  2 A$vlists.asx$4     00C4 GR  |   2 A$vlists.asx$4     00C6 GR
  2 A$vlists.asx$4     00C9 GR  |   2 A$vlists.asx$4     00CA GR
  2 A$vlists.asx$4     00CC GR  |   2 A$vlists.asx$4     00CE GR
  2 A$vlists.asx$4     00D1 GR  |   2 A$vlists.asx$4     00D2 GR
  2 A$vlists.asx$4     00D4 GR  |   2 A$vlists.asx$4     00D6 GR
  2 A$vlists.asx$4     00D9 GR  |   2 A$vlists.asx$4     00DA GR
  2 A$vlists.asx$4     00DC GR  |   2 A$vlists.asx$4     00DE GR
  2 A$vlists.asx$4     00E1 GR  |   2 A$vlists.asx$4     00E2 GR
  2 A$vlists.asx$5     00E4 GR  |   2 A$vlists.asx$5     00E6 GR
  2 A$vlists.asx$5     00E9 GR  |   2 A$vlists.asx$5     00EA GR
  2 A$vlists.asx$5     00EC GR  |   2 A$vlists.asx$5     00EE GR
  2 A$vlists.asx$5     00F1 GR  |   2 A$vlists.asx$5     00F2 GR
  2 A$vlists.asx$5     00F4 GR  |   2 A$vlists.asx$5     00F6 GR
  2 A$vlists.asx$5     00F9 GR  |   2 A$vlists.asx$5     00FA GR
  2 A$vlists.asx$5     00FC GR  |   2 A$vlists.asx$5     00FE GR
  2 A$vlists.asx$5     0101 GR  |   2 A$vlists.asx$5     0102 GR
  2 A$vlists.asx$5     0104 GR  |   2 A$vlists.asx$5     0106 GR
  2 A$vlists.asx$5     0109 GR  |   2 A$vlists.asx$5     010A GR
  2 A$vlists.asx$5     010C GR  |   2 A$vlists.asx$5     010E GR
  2 A$vlists.asx$5     0111 GR  |   2 A$vlists.asx$5     0112 GR
  2 A$vlists.asx$5     0114 GR  |   2 A$vlists.asx$5     0116 GR
  2 A$vlists.asx$5     0119 GR  |   2 A$vlists.asx$5     011A GR
  2 A$vlists.asx$5     011C GR  |   2 A$vlists.asx$5     011E GR
  2 A$vlists.asx$5     0121 GR  |   2 A$vlists.asx$5     0122 GR
  2 A$vlists.asx$5     0124 GR  |   2 A$vlists.asx$5     0126 GR
  2 A$vlists.asx$5     0129 GR  |   2 A$vlists.asx$5     012A GR
  2 A$vlists.asx$5     012C GR  |   2 A$vlists.asx$5     012E GR
  2 A$vlists.asx$5     0131 GR  |   2 A$vlists.asx$5     0132 GR
  2 A$vlists.asx$5     0134 GR  |   2 A$vlists.asx$5     0136 GR
  2 A$vlists.asx$5     0139 GR  |   2 A$vlists.asx$5     013A GR
  2 A$vlists.asx$5     013C GR  |   2 A$vlists.asx$5     013E GR
  2 A$vlists.asx$5     0141 GR  |   2 A$vlists.asx$5     0142 GR
  2 A$vlists.asx$5     0144 GR  |   2 A$vlists.asx$5     0145 GR
  2 A$vlists.asx$5     0147 GR  |   2 A$vlists.asx$5     014A GR
  2 A$vlists.asx$5     014D GR  |   2 A$vlists.asx$5     014F GR
  2 A$vlists.asx$5     0151 GR  |   2 A$vlists.asx$5     0152 GR
  2 A$vlists.asx$5     0154 GR  |   2 A$vlists.asx$5     0156 GR
  2 A$vlists.asx$5     0159 GR  |   2 A$vlists.asx$5     015C GR
  2 A$vlists.asx$5     015E GR  |   2 A$vlists.asx$5     0160 GR
  2 A$vlists.asx$5     0161 GR  |   2 A$vlists.asx$5     0163 GR
  2 A$vlists.asx$5     0165 GR  |   2 A$vlists.asx$5     0168 GR
  2 A$vlists.asx$5     016B GR  |   2 A$vlists.asx$6     016D GR
  2 A$vlists.asx$6     016E GR  |   2 A$vlists.asx$6     016F GR
  2 A$vlists.asx$6     0171 GR  |   2 A$vlists.asx$6     0172 GR
  2 A$vlists.asx$6     0174 GR  |   2 A$vlists.asx$6     0176 GR
  2 A$vlists.asx$6     0179 GR  |   2 A$vlists.asx$6     017C GR
  2 A$vlists.asx$6     017E GR  |   2 A$vlists.asx$6     017F GR
  2 A$vlists.asx$6     0180 GR  |   2 A$vlists.asx$6     0182 GR
  2 A$vlists.asx$6     0183 GR  |   2 A$vlists.asx$6     0185 GR
  2 A$vlists.asx$6     0187 GR  |   2 A$vlists.asx$6     018A GR
  2 A$vlists.asx$6     018B GR  |   2 A$vlists.asx$6     018D GR
  2 A$vlists.asx$6     018E GR  |   2 A$vlists.asx$6     0190 GR
  2 A$vlists.asx$6     0192 GR  |   2 A$vlists.asx$6     0195 GR
  2 A$vlists.asx$6     0196 GR  |   2 A$vlists.asx$6     0198 GR
  2 A$vlists.asx$6     0199 GR  |   2 A$vlists.asx$6     019B GR
  2 A$vlists.asx$6     019D GR  |   2 A$vlists.asx$6     019F GR
    Abs_a_b        =   F584     |     Abs_b          =   F58B 
    Add_Score_a    =   F85E     |     Add_Score_d    =   F87C 
    Bitmask_a      =   F57E     |     Char_Table     =   F9F4 
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
    Moveto_ix_FF   =   F308     |     Moveto_ix_a    =   F30E 
    Moveto_x_7F    =   F2F2     |     New_High_Score =   F8D8 
    Obj_Hit        =   F8FF     |     Obj_Will_Hit   =   F8F3 
    Obj_Will_Hit_u =   F8E5     |     Print_List     =   F38A 
    Print_List_chk =   F38C     |     Print_List_hw  =   F385 
    Print_Ships    =   F393     |     Print_Ships_x  =   F391 
    Print_Str      =   F495     |     Print_Str_d    =   F37A 
    Print_Str_hwyx =   F373     |     Print_Str_yx   =   F378 
    Random         =   F517     |     Random_3       =   F511 
    Read_Btns      =   F1BA     |     Read_Btns_Mask =   F1B4 
    Recalibrate    =   F2E6     |     Reset0Int      =   F36B 
    Reset0Ref      =   F354     |     Reset0Ref_D0   =   F34A 
    Reset_Pen      =   F35B     |     Rise_Run_Angle =   F593 
    Rise_Run_Len   =   F603     |     Rise_Run_X     =   F5FF 
    Rise_Run_Y     =   F601     |     Rot_VL         =   F616 
    Rot_VL_M_dft   =   F62B     |     Rot_VL_Mode    =   F61F 
    Rot_VL_ab      =   F610     |     SHITREG_POKE_V =   0001 
    SMVB_continue2     **** GX  |     SMVB_continue3     **** GX
    SMVB_continue4     **** GX  |     SMVB_continue5     **** GX
    SMVB_continue6     **** GX  |     SMVB_continue7     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_continue_     **** GX  |     SMVB_continue_     **** GX
    SMVB_lastDraw_     **** GX  |     SMVB_lastMove_     **** GX
    SMVB_startDraw     **** GX  |     SMVB_startDraw     **** GX
    SMVB_startDraw     **** GX  |     SMVB_startDraw     **** GX
    SMVB_startDraw     **** GX  |     SMVB_startDraw     **** GX
    SMVB_startDraw     **** GX  |     SMVB_startDraw     **** GX
    SMVB_startDraw     **** GX  |     SMVB_startDraw     **** GX
    SMVB_startMove     **** GX  |     SMVB_startMove     **** GX
    SMVB_startMove     **** GX  |     SMVB_startMove     **** GX
    SMVB_startMove     **** GX  |     SMVB_startMove     **** GX
    SMVB_startMove     **** GX  |     SMVB_startMove     **** GX
    SMVB_startMove     **** GX  |     SMVB_startMove     **** GX
    SMVB_startMove     **** GX  |     SMVB_startMove     **** GX
    Select_Game    =   F7A9     |     Set_Refresh    =   F1A2 
    Sound_Byte     =   F256     |     Sound_Byte_raw =   F25B 
    Sound_Byte_x   =   F259     |     Sound_Bytes    =   F27D 
    Sound_Bytes_x  =   F284     |     Strip_Zeros    =   F8B7 
    VIA_DDR_a      =   D003     |     VIA_DDR_b      =   D002 
    VIA_aux_cntl   =   D00B     |     VIA_cntl       =   D00C 
    VIA_int_enable =   D00E     |     VIA_int_flags  =   D00D 
    VIA_port_a     =   D001     |     VIA_port_a_noh =   D00F 
    VIA_port_b     =   D000     |     VIA_shift_reg  =   D00A 
    VIA_t1_cnt_hi  =   D005     |     VIA_t1_cnt_lo  =   D004 
    VIA_t1_lch_hi  =   D007     |     VIA_t1_lch_lo  =   D006 
    VIA_t2_hi      =   D009     |     VIA_t2_lo      =   D008 
    Vec_0Ref_Enabl =   C824     |     Vec_ADSR_Table =   C84F 
    Vec_ADSR_Timer =   C85E     |     Vec_Angle      =   C836 
    Vec_Brightness =   C827     |     Vec_Btn_State  =   C80F 
    Vec_Button_1_1 =   C812     |     Vec_Button_1_2 =   C813 
    Vec_Button_1_3 =   C814     |     Vec_Button_1_4 =   C815 
    Vec_Button_2_1 =   C816     |     Vec_Button_2_2 =   C817 
    Vec_Button_2_3 =   C818     |     Vec_Button_2_4 =   C819 
    Vec_Buttons    =   C811     |     Vec_Cold_Flag  =   CBFE 
    Vec_Counter_1  =   C82E     |     Vec_Counter_2  =   C82F 
    Vec_Counter_3  =   C830     |     Vec_Counter_4  =   C831 
    Vec_Counter_5  =   C832     |     Vec_Counter_6  =   C833 
    Vec_Counters   =   C82E     |     Vec_Default_St =   CBEA 
    Vec_Dot_Dwell  =   C828     |     Vec_Duration   =   C857 
    Vec_Expl_1     =   C858     |     Vec_Expl_2     =   C859 
    Vec_Expl_3     =   C85A     |     Vec_Expl_4     =   C85B 
    Vec_Expl_Chan  =   C85C     |     Vec_Expl_ChanA =   C853 
    Vec_Expl_ChanB =   C85D     |     Vec_Expl_Chans =   C854 
    Vec_Expl_Flag  =   C867     |     Vec_Expl_Timer =   C877 
    Vec_FIRQ_Vecto =   CBF5     |     Vec_Freq_Table =   C84D 
    Vec_High_Score =   CBEB     |     Vec_IRQ_Vector =   CBF8 
    Vec_Joy_1_X    =   C81B     |     Vec_Joy_1_Y    =   C81C 
    Vec_Joy_2_X    =   C81D     |     Vec_Joy_2_Y    =   C81E 
    Vec_Joy_Mux    =   C81F     |     Vec_Joy_Mux_1_ =   C81F 
    Vec_Joy_Mux_1_ =   C820     |     Vec_Joy_Mux_2_ =   C821 
    Vec_Joy_Mux_2_ =   C822     |     Vec_Joy_Resltn =   C81A 
    Vec_Loop_Count =   C825     |     Vec_Max_Games  =   C850 
    Vec_Max_Player =   C84F     |     Vec_Misc_Count =   C823 
    Vec_Music_Chan =   C855     |     Vec_Music_Flag =   C856 
    Vec_Music_Freq =   C861     |     Vec_Music_Ptr  =   C853 
    Vec_Music_Twan =   C858     |     Vec_Music_Wk_1 =   C84B 
    Vec_Music_Wk_5 =   C847     |     Vec_Music_Wk_6 =   C846 
    Vec_Music_Wk_7 =   C845     |     Vec_Music_Wk_A =   C842 
    Vec_Music_Work =   C83F     |     Vec_NMI_Vector =   CBFB 
    Vec_Num_Game   =   C87A     |     Vec_Num_Player =   C879 
    Vec_Pattern    =   C829     |     Vec_Prev_Btns  =   C810 
    Vec_Random_See =   C87D     |     Vec_Rfrsh      =   C83D 
    Vec_Rfrsh_hi   =   C83E     |     Vec_Rfrsh_lo   =   C83D 
    Vec_RiseRun_Le =   C83B     |     Vec_RiseRun_Tm =   C834 
    Vec_Rise_Index =   C839     |     Vec_Run_Index  =   C837 
    Vec_SWI2_Vecto =   CBF2     |     Vec_SWI3_Vecto =   CBF2 
    Vec_SWI_Vector =   CBFB     |     Vec_Seed_Ptr   =   C87B 
    Vec_Snd_Shadow =   C800     |     Vec_Str_Ptr    =   C82C 
    Vec_Text_HW    =   C82A     |     Vec_Text_Heigh =   C82A 
    Vec_Text_Width =   C82B     |     Vec_Twang_Tabl =   C851 
    Wait_Recal     =   F192     |     Warm_Start     =   F06C 
    Xform_Rise     =   F663     |     Xform_Rise_a   =   F661 
    Xform_Run      =   F65D     |     Xform_Run_a    =   F65B 
  2 _AltarList         28E0 GR  |   2 _BoxList           2B2B GR
  2 _BoxList_0         2B2F GR  |   2 _BoxList_1         2B66 GR
  2 _CubeList          2796 GR  |   2 _CubeList_0        279A GR
  2 _CubeList_1        27DA GR  |   2 _DemonList         1882 GR
  2 _DotList           1DFC GR  |   2 _DragonFlameLi     2B9D GR
  2 _DragonFlame_0     2BA5 GR  |   2 _DragonFlame_1     2BF4 GR
  2 _DragonFlame_2     2C43 GR  |   2 _DragonFlame_3     2C98 GR
  2 _DragonList        1A05 GR  |   2 _DwarfList         0F32 GR
  2 _ElevatorList      29EB GR  |   2 _ElfList           0CA6 GR
  2 _FighterList       0A56 GR  |   2 _FountainList      281A GR
  2 _GhoulList         0E02 GR  |   2 _GiantList         14DB GR
  2 _GnollList         04CA GR  |   2 _HobbitList        078F GR
  2 _HomeList          0395 GR  |   2 _InnList           2260 GR
  2 _KoboldList        0588 GR  |   2 _MinotaurList      13A4 GR
  2 _MummyList         0B27 GR  |   2 _OgreList          123F GR
  2 _OrcList           09A3 GR  |   2 _PlayerList        02C4 GR
  2 _ScenList_17       01A1 GR  |   2 _ScenList_18       01C4 GR
  2 _ScenList_19       01E7 GR  |   2 _ScenList_20       0232 GR
  2 _SkeletonList      0619 GR  |   2 _SpecterList       1638 GR
  2 _SpellIcons        1BAC GR  |   2 _SpellIcons_0      1BC2 GR
  2 _SpellIcons_1      1BE5 GR  |   2 _SpellIcons_10     1D85 GR
  2 _SpellIcons_2      1C05 GR  |   2 _SpellIcons_3      1C55 GR
  2 _SpellIcons_4      1C77 GR  |   2 _SpellIcons_5      1CA9 GR
  2 _SpellIcons_6      1CCC GR  |   2 _SpellIcons_7      1CEF GR
  2 _SpellIcons_8      1D13 GR  |   2 _SpellIcons_9      1D59 GR
  2 _StaircaseList     0408 GR  |   2 _ThroneList        239E GR
  2 _ThroneList_0      23A6 GR  |   2 _ThroneList_1      24A2 GR
  2 _ThroneList_2      259E GR  |   2 _ThroneList_3      269A GR
  2 _TreasureList      1E22 GR  |   2 _TreasureList_     1E2E GR
  2 _TreasureList_     1E5B GR  |   2 _TreasureList_     1EE3 GR
  2 _TreasureList_     1F5C GR  |   2 _TreasureList_     202C GR
  2 _TreasureList_     218F GR  |   2 _TrollList         10B0 GR
  2 _UnkownList        027D GR  |   2 _VampireList       178E GR
  2 _WraithList        116E GR  |   2 _ZombieList        0877 GR
  2 _drawAltar         0134 GR  |   2 _drawBox           0174 GR
  2 _drawCube          0163 GR  |   2 _drawDemon         0104 GR
  2 _drawDot           005E GR  |   2 _drawDragon        010C GR
  2 _drawDwarf         00C4 GR  |   2 _drawElevator      013C GR
  2 _drawElf           00B4 GR  |   2 _drawFighter       00A4 GR
  2 _drawFlame         0154 GR  |   2 _drawFountain      012C GR
  2 _drawGhoul         00BC GR  |   2 _drawGiant         00EC GR
  2 _drawGnoll         0074 GR  |   2 _drawHobbit        008C GR
  2 _drawHome          011C GR  |   2 _drawInn           0124 GR
  2 _drawKobold        007C GR  |   2 _drawLeftDoor      0032 GR
  2 _drawLeftDoor_     0040 GR  |   2 _drawLeftWall      001C GR
  2 _drawLeftWall_     002A GR  |   2 _drawMinotaur      00E4 GR
  2 _drawMummy         00AC GR  |   2 _drawNone          0144 GR
  2 _drawOgre          00DC GR  |   2 _drawOrc           009C GR
  2 _drawPlayer        006C GR  |   2 _drawSkeleton      0084 GR
  2 _drawSpecter       00F4 GR  |   2 _drawSpell         0190 GR
  2 _drawStaircase     0114 GR  |   2 _drawThrone        0145 GR
  2 _drawTreasure      0185 GR  |   2 _drawTroll         00CC GR
  2 _drawUnkown        0048 GR  |   2 _drawUnkown_no     0056 GR
  2 _drawUpDoor        000E GR  |   2 _drawUpWall        0000 GR
  2 _drawVampire       00FC GR  |   2 _drawWraith        00D4 GR
  2 _drawZomnbie       0094 GR  |     music1         =   FD0D 
    music2         =   FD1D     |     music3         =   FD81 
    music4         =   FDD3     |     music5         =   FE38 
    music6         =   FE76     |     music7         =   FEC6 
    music8         =   FEF8     |     music9         =   FF26 
    musica         =   FF44     |     musicb         =   FF62 
    musicc         =   FF7A     |     musicd         =   FF8F 

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 2CED   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

