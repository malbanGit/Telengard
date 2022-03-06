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
                            322  .globl _drawSpell
   4FE4                     323 _drawSpell: 
   4FE4 34 40         [ 6]  324                     pshs     u 
   4FE6 CE 6B 54      [ 3]  325                     ldu      #_SpellIcons 
   4FE9 58            [ 2]  326                     aslb     
   4FEA EE C5         [ 6]  327                     ldu      b,u 
   4FEC 20 0C         [ 3]  328                     bra      contDraw 
                            329  .globl _drawDot
   4FEE                     330 _drawDot: 
   4FEE 34 40         [ 6]  331                     pshs     u 
   4FF0 CE 6D A4      [ 3]  332                     ldu      #_DotList 
   4FF3 20 05         [ 3]  333                     bra      contDraw 
                            334 ;////////////////////////////////////////////////
                            335 ;/DUNGEON DRAWS
                            336 ;////////////////////////////////////////////////
                            337  .globl _drawUpWall
   4FF5                     338 _drawUpWall: 
   4FF5 34 40         [ 6]  339                     pshs     u 
   4FF7 CE 51 6C      [ 3]  340                     ldu      #_ScenList_18 
                            341  .globl contDraw
   4FFA                     342 contDraw: 
                            343 ; macro call ->                     MY_MOVE_TO_B_END  
   4FFA C6 40         [ 2]  344                     LDB      #0x40                         ; 
   4FFC D5 0D         [ 4]  345                     BITB     *0x0D                         ; 
   4FFE 27 FC         [ 3]  346                     BEQ      .-2 
   5000 4F            [ 2]  347                     clra     
   5001 37 94         [ 8]  348                     pulu     b,x,pc 
                            349  .globl _drawUnkown
   5003                     350 _drawUnkown: 
   5003 34 40         [ 6]  351                     pshs     u 
   5005 CE 52 25      [ 3]  352                     ldu      #_UnkownList 
   5008 20 F0         [ 3]  353                     bra      contDraw 
                            354  .globl _drawLeftDoor
   500A                     355 _drawLeftDoor: 
   500A 34 40         [ 6]  356                     pshs     u 
   500C CE 51 8F      [ 3]  357                     ldu      #_ScenList_19 
   500F 20 E9         [ 3]  358                     bra      contDraw 
                            359  .globl _drawUpDoor
   5011                     360 _drawUpDoor: 
   5011 34 40         [ 6]  361                     pshs     u 
   5013 CE 51 DA      [ 3]  362                     ldu      #_ScenList_20 
   5016 20 E2         [ 3]  363                     bra      contDraw 
                            364  .globl _drawLeftWall
   5018                     365 _drawLeftWall: 
   5018 34 40         [ 6]  366                     pshs     u 
   501A CE 51 49      [ 3]  367                     ldu      #_ScenList_17 
   501D 20 DB         [ 3]  368                     bra      contDraw 
                            369  .globl _drawLeftWall_noZero
   501F                     370 _drawLeftWall_noZero: 
   501F 34 40         [ 6]  371                     pshs     u 
   5021 CE 51 49      [ 3]  372                     ldu      #_ScenList_17 
   5024 4F            [ 2]  373                     clra     
   5025 37 94         [ 8]  374                     pulu     b,x,pc 
                            375  .globl _drawLeftDoor_noZero
   5027                     376 _drawLeftDoor_noZero: 
   5027 34 40         [ 6]  377                     pshs     u 
   5029 CE 51 8F      [ 3]  378                     ldu      #_ScenList_19 
   502C 4F            [ 2]  379                     clra     
   502D 37 94         [ 8]  380                     pulu     b,x,pc 
                            381  .globl _drawUnkown_noZero
   502F                     382 _drawUnkown_noZero: 
   502F 34 40         [ 6]  383                     pshs     u 
   5031 CE 52 25      [ 3]  384                     ldu      #_UnkownList 
   5034 4F            [ 2]  385                     clra     
   5035 37 94         [ 8]  386                     pulu     b,x,pc 
                            387 ;////////////////////////////////////////////////
                            388 ;////////////////////////////////////////////////
                            389 ;////////////////////////////////////////////////
                            390 ;////////////////////////////////////////////////
                            391 ;/CHARACTER DRAWS
                            392 ;////////////////////////////////////////////////
                            393  .globl _drawPlayer
   5037                     394 _drawPlayer: 
   5037 34 40         [ 6]  395                     pshs     u 
   5039 CE 52 6C      [ 3]  396                     ldu      #_PlayerList 
   503C 4F            [ 2]  397                     clra     
   503D 37 94         [ 8]  398                     pulu     b,x,pc 
                            399  .globl _drawGnoll
   503F                     400 _drawGnoll: 
   503F 34 40         [ 6]  401                     pshs     u 
   5041 CE 54 72      [ 3]  402                     ldu      #_GnollList 
   5044 4F            [ 2]  403                     clra     
   5045 37 94         [ 8]  404                     pulu     b,x,pc 
                            405  .globl _drawKobold
   5047                     406 _drawKobold: 
   5047 34 40         [ 6]  407                     pshs     u 
   5049 CE 55 30      [ 3]  408                     ldu      #_KoboldList 
   504C 4F            [ 2]  409                     clra     
   504D 37 94         [ 8]  410                     pulu     b,x,pc 
                            411  .globl _drawSkeleton
   504F                     412 _drawSkeleton: 
   504F 34 40         [ 6]  413                     pshs     u 
   5051 CE 55 C1      [ 3]  414                     ldu      #_SkeletonList 
   5054 4F            [ 2]  415                     clra     
   5055 37 94         [ 8]  416                     pulu     b,x,pc 
                            417  .globl _drawHobbit
   5057                     418 _drawHobbit: 
   5057 34 40         [ 6]  419                     pshs     u 
   5059 CE 57 37      [ 3]  420                     ldu      #_HobbitList 
   505C 4F            [ 2]  421                     clra     
   505D 37 94         [ 8]  422                     pulu     b,x,pc 
                            423  .globl _drawZomnbie
   505F                     424 _drawZomnbie: 
   505F 34 40         [ 6]  425                     pshs     u 
   5061 CE 58 1F      [ 3]  426                     ldu      #_ZombieList 
   5064 4F            [ 2]  427                     clra     
   5065 37 94         [ 8]  428                     pulu     b,x,pc 
                            429  .globl _drawOrc
   5067                     430 _drawOrc: 
   5067 34 40         [ 6]  431                     pshs     u 
   5069 CE 59 4B      [ 3]  432                     ldu      #_OrcList 
   506C 4F            [ 2]  433                     clra     
   506D 37 94         [ 8]  434                     pulu     b,x,pc 
                            435  .globl _drawFighter
   506F                     436 _drawFighter: 
   506F 34 40         [ 6]  437                     pshs     u 
   5071 CE 59 FE      [ 3]  438                     ldu      #_FighterList 
   5074 4F            [ 2]  439                     clra     
   5075 37 94         [ 8]  440                     pulu     b,x,pc 
                            441  .globl _drawMummy
   5077                     442 _drawMummy: 
   5077 34 40         [ 6]  443                     pshs     u 
   5079 CE 5A CF      [ 3]  444                     ldu      #_MummyList 
   507C 4F            [ 2]  445                     clra     
   507D 37 94         [ 8]  446                     pulu     b,x,pc 
                            447  .globl _drawElf
   507F                     448 _drawElf: 
   507F 34 40         [ 6]  449                     pshs     u 
   5081 CE 5C 4E      [ 3]  450                     ldu      #_ElfList 
   5084 4F            [ 2]  451                     clra     
   5085 37 94         [ 8]  452                     pulu     b,x,pc 
                            453  .globl _drawGhoul
   5087                     454 _drawGhoul: 
   5087 34 40         [ 6]  455                     pshs     u 
   5089 CE 5D AA      [ 3]  456                     ldu      #_GhoulList 
   508C 4F            [ 2]  457                     clra     
   508D 37 94         [ 8]  458                     pulu     b,x,pc 
                            459  .globl _drawDwarf
   508F                     460 _drawDwarf: 
   508F 34 40         [ 6]  461                     pshs     u 
   5091 CE 5E DA      [ 3]  462                     ldu      #_DwarfList 
   5094 4F            [ 2]  463                     clra     
   5095 37 94         [ 8]  464                     pulu     b,x,pc 
                            465  .globl _drawTroll
   5097                     466 _drawTroll: 
   5097 34 40         [ 6]  467                     pshs     u 
   5099 CE 60 58      [ 3]  468                     ldu      #_TrollList 
   509C 4F            [ 2]  469                     clra     
   509D 37 94         [ 8]  470                     pulu     b,x,pc 
                            471  .globl _drawWraith
   509F                     472 _drawWraith: 
   509F 34 40         [ 6]  473                     pshs     u 
   50A1 CE 61 16      [ 3]  474                     ldu      #_WraithList 
   50A4 4F            [ 2]  475                     clra     
   50A5 37 94         [ 8]  476                     pulu     b,x,pc 
                            477  .globl _drawOgre
   50A7                     478 _drawOgre: 
   50A7 34 40         [ 6]  479                     pshs     u 
   50A9 CE 61 E7      [ 3]  480                     ldu      #_OgreList 
   50AC 4F            [ 2]  481                     clra     
   50AD 37 94         [ 8]  482                     pulu     b,x,pc 
                            483  .globl _drawMinotaur
   50AF                     484 _drawMinotaur: 
   50AF 34 40         [ 6]  485                     pshs     u 
   50B1 CE 63 4C      [ 3]  486                     ldu      #_MinotaurList 
   50B4 4F            [ 2]  487                     clra     
   50B5 37 94         [ 8]  488                     pulu     b,x,pc 
                            489  .globl _drawGiant
   50B7                     490 _drawGiant: 
   50B7 34 40         [ 6]  491                     pshs     u 
   50B9 CE 64 83      [ 3]  492                     ldu      #_GiantList 
   50BC 4F            [ 2]  493                     clra     
   50BD 37 94         [ 8]  494                     pulu     b,x,pc 
                            495  .globl _drawSpecter
   50BF                     496 _drawSpecter: 
   50BF 34 40         [ 6]  497                     pshs     u 
   50C1 CE 65 E0      [ 3]  498                     ldu      #_SpecterList 
   50C4 4F            [ 2]  499                     clra     
   50C5 37 94         [ 8]  500                     pulu     b,x,pc 
                            501  .globl _drawVampire
   50C7                     502 _drawVampire: 
   50C7 34 40         [ 6]  503                     pshs     u 
   50C9 CE 67 36      [ 3]  504                     ldu      #_VampireList 
   50CC 4F            [ 2]  505                     clra     
   50CD 37 94         [ 8]  506                     pulu     b,x,pc 
                            507  .globl _drawDemon
   50CF                     508 _drawDemon: 
   50CF 34 40         [ 6]  509                     pshs     u 
   50D1 CE 68 2A      [ 3]  510                     ldu      #_DemonList 
   50D4 4F            [ 2]  511                     clra     
   50D5 37 94         [ 8]  512                     pulu     b,x,pc 
                            513  .globl _drawDragon
   50D7                     514 _drawDragon: 
   50D7 34 40         [ 6]  515                     pshs     u 
   50D9 CE 69 AD      [ 3]  516                     ldu      #_DragonList 
   50DC 4F            [ 2]  517                     clra     
   50DD 37 94         [ 8]  518                     pulu     b,x,pc 
                            519  .globl _drawStaircase
   50DF                     520 _drawStaircase: 
   50DF 34 40         [ 6]  521                     pshs     u 
   50E1 CE 53 B0      [ 3]  522                     ldu      #_StaircaseList 
   50E4 4F            [ 2]  523                     clra     
   50E5 37 94         [ 8]  524                     pulu     b,x,pc 
                            525  .globl _drawHome
   50E7                     526 _drawHome: 
   50E7 34 40         [ 6]  527                     pshs     u 
   50E9 CE 53 3D      [ 3]  528                     ldu      #_HomeList 
   50EC 4F            [ 2]  529                     clra     
   50ED 37 94         [ 8]  530                     pulu     b,x,pc 
                            531  .globl _drawInn
   50EF                     532 _drawInn: 
   50EF 34 40         [ 6]  533                     pshs     u 
   50F1 CE 72 08      [ 3]  534                     ldu      #_InnList 
   50F4 4F            [ 2]  535                     clra     
   50F5 37 94         [ 8]  536                     pulu     b,x,pc 
                            537  .globl _drawFountain
   50F7                     538 _drawFountain: 
   50F7 34 40         [ 6]  539                     pshs     u 
   50F9 CE 77 C2      [ 3]  540                     ldu      #_FountainList 
   50FC 4F            [ 2]  541                     clra     
   50FD 37 94         [ 8]  542                     pulu     b,x,pc 
                            543  .globl _drawAltar
   50FF                     544 _drawAltar: 
   50FF 34 40         [ 6]  545                     pshs     u 
   5101 CE 78 88      [ 3]  546                     ldu      #_AltarList 
   5104 4F            [ 2]  547                     clra     
   5105 37 94         [ 8]  548                     pulu     b,x,pc 
                            549  .globl _drawElevator
   5107                     550 _drawElevator: 
   5107 34 40         [ 6]  551                     pshs     u 
   5109 CE 79 93      [ 3]  552                     ldu      #_ElevatorList 
   510C 4F            [ 2]  553                     clra     
   510D 37 94         [ 8]  554                     pulu     b,x,pc 
                            555  .globl _drawNone
   510F                     556 _drawNone: 
   510F 39            [ 5]  557                     rts      
                            558  .globl _drawThrone
   5110                     559 _drawThrone: 
   5110 34 40         [ 6]  560                     pshs     u 
   5112 CE 73 46      [ 3]  561                     ldu      #_ThroneList 
                            562  .globl contDraw2
   5115                     563 contDraw2: 
   5115 B6 C8 26      [ 5]  564                     lda      Vec_Loop_Count+1 
   5118 84 06         [ 2]  565                     anda     #6 
   511A EE C6         [ 6]  566                     ldu      a,u 
   511C 4F            [ 2]  567                     clra     
   511D 37 94         [ 8]  568                     pulu     b,x,pc 
                            569  .globl _drawFlame
   511F                     570 _drawFlame: 
   511F 34 40         [ 6]  571                     pshs     u 
   5121 CE 7B 45      [ 3]  572                     ldu      #_DragonFlameList 
   5124 20 EF         [ 3]  573                     bra      contDraw2 
                            574  .globl _drawCube
   5126                     575 _drawCube: 
   5126 34 40         [ 6]  576                     pshs     u 
   5128 CE 77 3E      [ 3]  577                     ldu      #_CubeList 
                            578  .globl contDraw3
   512B                     579 contDraw3: 
   512B B6 C8 26      [ 5]  580                     lda      Vec_Loop_Count+1 
   512E 84 08         [ 2]  581                     anda     #8 
   5130 44            [ 2]  582                     lsra     
   5131 44            [ 2]  583                     lsra     
   5132 EE C6         [ 6]  584                     ldu      a,u 
   5134 4F            [ 2]  585                     clra     
   5135 37 94         [ 8]  586                     pulu     b,x,pc 
                            587  .globl _drawBox
   5137                     588 _drawBox: 
   5137 34 40         [ 6]  589                     pshs     u 
   5139 CE 7A D3      [ 3]  590                     ldu      #_BoxList 
   513C 20 ED         [ 3]  591                     bra      contDraw3 
                            592  .globl _drawTreasure
   513E                     593 _drawTreasure: 
   513E 34 40         [ 6]  594                     pshs     u 
   5140 CE 6D CA      [ 3]  595                     ldu      #_TreasureList 
   5143 58            [ 2]  596                     aslb     
   5144 EE C5         [ 6]  597                     ldu      b,u 
   5146 4F            [ 2]  598                     clra     
   5147 37 94         [ 8]  599                     pulu     b,x,pc 
                            600  .globl _ScenList_17
   5149                     601 _ScenList_17: 
   5149 D8 01 D8            602                     .byte       -0x28, 0x01, -0x28 
   514C 49 04               603                     .word       SMVB_continue_yEqx_single    ; y is -0x28 
   514E 00 01 50            604                     .byte       0x00, 0x01, 0x50 
   5151 4B 23               605                     .word       SMVB_startDraw_single 
   5153 88 01 00            606                     .byte       -0x78, 0x01, 0x00 
   5156 49 BD               607                     .word       SMVB_continue_yd4_quadro 
   5158 00 01 B0            608                     .byte       0x00, 0x01, -0x50 
   515B 48 D1               609                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   515D 78 01 00            610                     .byte       0x78, 0x01, 0x00 
   5160 49 1E               611                     .word       SMVB_continue_quadro 
   5162 28 01 28            612                     .byte       0x28, 0x01, 0x28 
   5165 4B AD               613                     .word       SMVB_startMove_yd4_yEqx_single ; y is 0x28 
   5167 00 00 00            614                     .byte       0x00, 0x00, 0x00 
   516A 4C 38               615                     .word       SMVB_lastMove_rts_stay 
                            616  .globl _ScenList_18
   516C                     617 _ScenList_18: 
   516C D9 01 28            618                     .byte       -0x27, 0x01, 0x28 
   516F 48 CF               619                     .word       SMVB_continue_single 
   5171 4E 01 00            620                     .byte       0x4E, 0x01, 0x00 
   5174 4B 23               621                     .word       SMVB_startDraw_single 
   5176 00 01 78            622                     .byte       0x00, 0x01, 0x78 
   5179 49 BD               623                     .word       SMVB_continue_yd4_quadro 
   517B B2 01 00            624                     .byte       -0x4E, 0x01, 0x00 
   517E 48 DC               625                     .word       SMVB_continue_yd4_single 
   5180 00 01 88            626                     .byte       0x00, 0x01, -0x78 
   5183 49 1E               627                     .word       SMVB_continue_quadro 
   5185 28 01 D8            628                     .byte       0x28, 0x01, -0x28 
   5188 49 D9               629                     .word       SMVB_startMove_single 
   518A 00 00 00            630                     .byte       0x00, 0x00, 0x00 
   518D 4C 38               631                     .word       SMVB_lastMove_rts_stay 
                            632  .globl _ScenList_19
   518F                     633 _ScenList_19: 
   518F D8 01 D8            634                     .byte       -0x28, 0x01, -0x28 
   5192 49 04               635                     .word       SMVB_continue_yEqx_single    ; y is -0x28 
   5194 00 01 50            636                     .byte       0x00, 0x01, 0x50 
   5197 4B 23               637                     .word       SMVB_startDraw_single 
   5199 B7 01 00            638                     .byte       -0x49, 0x01, 0x00 
   519C 49 93               639                     .word       SMVB_continue_yd4_double 
   519E 00 01 AF            640                     .byte       0x00, 0x01, -0x51 
   51A1 48 D1               641                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   51A3 A3 01 28            642                     .byte       -0x5D, 0x01, 0x28 
   51A6 4A 06               643                     .word       SMVB_startMove_yd4_double 
   51A8 FF 01 B0            644                     .byte       -0x01, 0x01, -0x50 
   51AB 4B 23               645                     .word       SMVB_startDraw_single 
   51AD B7 01 00            646                     .byte       -0x49, 0x01, 0x00 
   51B0 49 93               647                     .word       SMVB_continue_yd4_double 
   51B2 00 01 50            648                     .byte       0x00, 0x01, 0x50 
   51B5 48 D1               649                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   51B7 49 01 00            650                     .byte       0x49, 0x01, 0x00 
   51BA 49 85               651                     .word       SMVB_continue_double 
   51BC 00 01 D8            652                     .byte       0x00, 0x01, -0x28 
   51BF 4B E3               653                     .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
   51C1 5D 01 00            654                     .byte       0x5D, 0x01, 0x00 
   51C4 4A 26               655                     .word       SMVB_startDraw_double 
   51C6 00 01 D8            656                     .byte       0x00, 0x01, -0x28 
   51C9 4B E3               657                     .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
   51CB 49 01 00            658                     .byte       0x49, 0x01, 0x00 
   51CE 4A 26               659                     .word       SMVB_startDraw_double 
   51D0 28 01 28            660                     .byte       0x28, 0x01, 0x28 
   51D3 4B 63               661                     .word       SMVB_startMove_yEqx_single   ; y is 0x28 
   51D5 00 00 00            662                     .byte       0x00, 0x00, 0x00 
   51D8 4C 38               663                     .word       SMVB_lastMove_rts_stay 
                            664  .globl _ScenList_20
   51DA                     665 _ScenList_20: 
   51DA D9 01 28            666                     .byte       -0x27, 0x01, 0x28 
   51DD 48 CF               667                     .word       SMVB_continue_single 
   51DF 4E 01 00            668                     .byte       0x4E, 0x01, 0x00 
   51E2 4B 23               669                     .word       SMVB_startDraw_single 
   51E4 00 01 49            670                     .byte       0x00, 0x01, 0x49 
   51E7 49 93               671                     .word       SMVB_continue_yd4_double 
   51E9 B1 01 00            672                     .byte       -0x4F, 0x01, 0x00 
   51EC 48 DC               673                     .word       SMVB_continue_yd4_single 
   51EE 28 01 00            674                     .byte       0x28, 0x01, 0x00 
   51F1 49 D9               675                     .word       SMVB_startMove_single 
   51F3 00 01 5D            676                     .byte       0x00, 0x01, 0x5D 
   51F6 4A 26               677                     .word       SMVB_startDraw_double 
   51F8 D9 01 FF            678                     .byte       -0x27, 0x01, -0x01 
   51FB 49 D9               679                     .word       SMVB_startMove_single 
   51FD 00 01 49            680                     .byte       0x00, 0x01, 0x49 
   5200 4A 26               681                     .word       SMVB_startDraw_double 
   5202 4E 01 00            682                     .byte       0x4E, 0x01, 0x00 
   5205 48 CF               683                     .word       SMVB_continue_single 
   5207 00 01 B7            684                     .byte       0x00, 0x01, -0x49 
   520A 49 93               685                     .word       SMVB_continue_yd4_double 
   520C B2 01 00            686                     .byte       -0x4E, 0x01, 0x00 
   520F 48 DC               687                     .word       SMVB_continue_yd4_single 
   5211 00 01 A3            688                     .byte       0x00, 0x01, -0x5D 
   5214 4A 06               689                     .word       SMVB_startMove_double 
   5216 00 01 B7            690                     .byte       0x00, 0x01, -0x49 
   5219 4A 26               691                     .word       SMVB_startDraw_double 
   521B 28 01 D8            692                     .byte       0x28, 0x01, -0x28 
   521E 49 D9               693                     .word       SMVB_startMove_single 
   5220 00 00 00            694                     .byte       0x00, 0x00, 0x00 
   5223 4C 38               695                     .word       SMVB_lastMove_rts_stay 
                            696  .globl _UnkownList
   5225                     697 _UnkownList: 
   5225 8F 01 6C            698                     .byte       -0x71, 0x01, 0x6C 
   5228 49 93               699                     .word       SMVB_continue_yd4_double 
   522A 1A 01 0A            700                     .byte       0x1A, 0x01, 0x0A 
   522D 4B 23               701                     .word       SMVB_startDraw_single 
   522F 14 01 2B            702                     .byte       0x14, 0x01, 0x2B 
   5232 48 81               703                     .word       SMVB_continue7_single 
   5234 F2 01 24            704                     .byte       -0x0E, 0x01, 0x24 
   5237 E9 01 0C            705                     .byte       -0x17, 0x01, 0x0C 
   523A E2 01 F8            706                     .byte       -0x1E, 0x01, -0x08 
   523D F4 01 DE            707                     .byte       -0x0C, 0x01, -0x22 
   5240 E0 01 F6            708                     .byte       -0x20, 0x01, -0x0A 
   5243 C5 01 00            709                     .byte       -0x3B, 0x01, 0x00 
   5246 DC 01 0A            710                     .byte       -0x24, 0x01, 0x0A 
   5249 49 D9               711                     .word       SMVB_startMove_single 
   524B 08 01 03            712                     .byte       0x08, 0x01, 0x03 
   524E 4B 23               713                     .word       SMVB_startDraw_single 
   5250 05 01 FD            714                     .byte       0x05, 0x01, -0x03 
   5253 48 81               715                     .word       SMVB_continue7_single 
   5255 04 01 FA            716                     .byte       0x04, 0x01, -0x06 
   5258 FD 01 F8            717                     .byte       -0x03, 0x01, -0x08 
   525B F9 01 FE            718                     .byte       -0x07, 0x01, -0x02 
   525E F9 01 02            719                     .byte       -0x07, 0x01, 0x02 
   5261 FD 01 08            720                     .byte       -0x03, 0x01, 0x08 
   5264 02 01 07            721                     .byte       0x02, 0x01, 0x07 
   5267 FE 00 00            722                     .byte       0xfe, 0x00, 0x00 
   526A 4C 38               723                     .word       SMVB_lastMove_rts_stay 
                            724  .globl _PlayerList
   526C                     725 _PlayerList: 
   526C E4 01 44            726                     .byte       -0x1C, 0x01, 0x44 
   526F 49 85               727                     .word       SMVB_continue_double 
   5271 F6 01 00            728                     .byte       -0x0A, 0x01, 0x00 
   5274 4B 23               729                     .word       SMVB_startDraw_single 
   5276 00 01 18            730                     .byte       0x00, 0x01, 0x18 
   5279 48 B5               731                     .word       SMVB_continue3_single 
   527B 0A 01 00            732                     .byte       0x0A, 0x01, 0x00 
   527E 00 01 E8            733                     .byte       0x00, 0x01, -0x18 
   5281 27 01 31            734                     .byte       0x27, 0x01, 0x31 
   5284 49 D9               735                     .word       SMVB_startMove_single 
   5286 F7 01 00            736                     .byte       -0x09, 0x01, 0x00 
   5289 4B 23               737                     .word       SMVB_startDraw_single 
   528B 00 01 E7            738                     .byte       0x00, 0x01, -0x19 
   528E 48 81               739                     .word       SMVB_continue7_single 
   5290 EC 01 00            740                     .byte       -0x14, 0x01, 0x00 
   5293 00 01 25            741                     .byte       0x00, 0x01, 0x25 
   5296 D0 01 00            742                     .byte       -0x30, 0x01, 0x00 
   5299 FB 01 F1            743                     .byte       -0x05, 0x01, -0x0F 
   529C EC 01 1B            744                     .byte       -0x14, 0x01, 0x1B 
   529F DE 01 00            745                     .byte       -0x22, 0x01, 0x00 
   52A2 F2 01 E8            746                     .byte       -0x0E, 0x01, -0x18 
   52A5 48 81               747                     .word       SMVB_continue7_single 
   52A7 C7 01 00            748                     .byte       -0x39, 0x01, 0x00 
   52AA 00 01 C3            749                     .byte       0x00, 0x01, -0x3D 
   52AD 05 01 00            750                     .byte       0x05, 0x01, 0x00 
   52B0 0F 01 11            751                     .byte       0x0F, 0x01, 0x11 
   52B3 00 01 13            752                     .byte       0x00, 0x01, 0x13 
   52B6 27 01 00            753                     .byte       0x27, 0x01, 0x00 
   52B9 00 01 F8            754                     .byte       0x00, 0x01, -0x08 
   52BC 48 81               755                     .word       SMVB_continue7_single 
   52BE EB 01 EB            756                     .byte       -0x15, 0x01, -0x15 
   52C1 23 01 D4            757                     .byte       0x23, 0x01, -0x2C 
   52C4 10 01 00            758                     .byte       0x10, 0x01, 0x00 
   52C7 00 01 F4            759                     .byte       0x00, 0x01, -0x0C 
   52CA EC 01 00            760                     .byte       -0x14, 0x01, 0x00 
   52CD 00 01 E8            761                     .byte       0x00, 0x01, -0x18 
   52D0 14 01 00            762                     .byte       0x14, 0x01, 0x00 
   52D3 48 81               763                     .word       SMVB_continue7_single 
   52D5 00 01 F5            764                     .byte       0x00, 0x01, -0x0B 
   52D8 13 01 00            765                     .byte       0x13, 0x01, 0x00 
   52DB 00 01 0B            766                     .byte       0x00, 0x01, 0x0B 
   52DE 41 01 00            767                     .byte       0x41, 0x01, 0x00 
   52E1 0F 01 12            768                     .byte       0x0F, 0x01, 0x12 
   52E4 00 01 06            769                     .byte       0x00, 0x01, 0x06 
   52E7 B0 01 00            770                     .byte       -0x50, 0x01, 0x00 
   52EA 48 DC               771                     .word       SMVB_continue_yd4_single 
   52EC 00 01 0C            772                     .byte       0x00, 0x01, 0x0C 
   52EF 48 81               773                     .word       SMVB_continue7_single 
   52F1 1E 01 00            774                     .byte       0x1E, 0x01, 0x00 
   52F4 00 01 25            775                     .byte       0x00, 0x01, 0x25 
   52F7 27 01 00            776                     .byte       0x27, 0x01, 0x00 
   52FA 00 01 0C            777                     .byte       0x00, 0x01, 0x0C 
   52FD 0F 01 00            778                     .byte       0x0F, 0x01, 0x00 
   5300 0E 01 0F            779                     .byte       0x0E, 0x01, 0x0F 
   5303 00 01 22            780                     .byte       0x00, 0x01, 0x22 
   5306 48 CF               781                     .word       SMVB_continue_single 
   5308 9C 01 B8            782                     .byte       -0x64, 0x01, -0x48 
   530B 49 D9               783                     .word       SMVB_startMove_yd4_single 
   530D 14 01 00            784                     .byte       0x14, 0x01, 0x00 
   5310 4B 23               785                     .word       SMVB_startDraw_single 
   5312 00 01 30            786                     .byte       0x00, 0x01, 0x30 
   5315 48 A8               787                     .word       SMVB_continue4_single 
   5317 FA 01 00            788                     .byte       -0x06, 0x01, 0x00 
   531A F2 01 EF            789                     .byte       -0x0E, 0x01, -0x11 
   531D 00 01 E2            790                     .byte       0x00, 0x01, -0x1E 
   5320 DC 01 00            791                     .byte       -0x24, 0x01, 0x00 
   5323 49 D9               792                     .word       SMVB_startMove_single 
   5325 10 01 00            793                     .byte       0x10, 0x01, 0x00 
   5328 4B 23               794                     .word       SMVB_startDraw_single 
   532A 00 01 18            795                     .byte       0x00, 0x01, 0x18 
   532D 48 A8               796                     .word       SMVB_continue4_single 
   532F E2 01 00            797                     .byte       -0x1E, 0x01, 0x00 
   5332 00 01 F9            798                     .byte       0x00, 0x01, -0x07 
   5335 0E 01 EF            799                     .byte       0x0E, 0x01, -0x11 
   5338 FE 00 00            800                     .byte       0xfe, 0x00, 0x00 
   533B 4C 42               801                     .word       SMVB_lastDraw_rts2 
                            802  .globl _HomeList
   533D                     803 _HomeList: 
   533D 6C 01 08            804                     .byte       0x6C, 0x01, 0x08 
   5340 49 10               805                     .word       SMVB_continue_tripple 
   5342 9C 01 84            806                     .byte       -0x64, 0x01, -0x7C 
   5345 4B 03               807                     .word       SMVB_startDraw_yd4_double 
   5347 F8 01 00            808                     .byte       -0x08, 0x01, 0x00 
   534A 48 CF               809                     .word       SMVB_continue_single 
   534C 00 01 56            810                     .byte       0x00, 0x01, 0x56 
   534F 49 2C               811                     .word       SMVB_continue_hex 
   5351 08 01 00            812                     .byte       0x08, 0x01, 0x00 
   5354 48 CF               813                     .word       SMVB_continue_single 
   5356 64 01 82            814                     .byte       0x64, 0x01, -0x7E 
   5359 49 85               815                     .word       SMVB_continue_double 
   535B 00 01 EC            816                     .byte       0x00, 0x01, -0x14 
   535E 48 DC               817                     .word       SMVB_continue_yd4_single 
   5360 A6 01 02            818                     .byte       -0x5A, 0x01, 0x02 
   5363 4B 71               819                     .word       SMVB_startMove_yd4_hex 
   5365 00 01 5C            820                     .byte       0x00, 0x01, 0x5C 
   5368 4A 16               821                     .word       SMVB_startDraw_tripple 
   536A 70 01 00            822                     .byte       0x70, 0x01, 0x00 
   536D 49 85               823                     .word       SMVB_continue_double 
   536F 00 01 A4            824                     .byte       0x00, 0x01, -0x5C 
   5372 49 AF               825                     .word       SMVB_continue_yd4_hex 
   5374 90 01 00            826                     .byte       -0x70, 0x01, 0x00 
   5377 49 93               827                     .word       SMVB_continue_yd4_double 
   5379 00 01 44            828                     .byte       0x00, 0x01, 0x44 
   537C 49 85               829                     .word       SMVB_continue_double 
   537E 70 01 00            830                     .byte       0x70, 0x01, 0x00 
   5381 48 CF               831                     .word       SMVB_continue_single 
   5383 00 01 46            832                     .byte       0x00, 0x01, 0x46 
   5386 49 93               833                     .word       SMVB_continue_yd4_double 
   5388 90 01 00            834                     .byte       -0x70, 0x01, 0x00 
   538B 48 DC               835                     .word       SMVB_continue_yd4_single 
   538D E4 01 68            836                     .byte       -0x1C, 0x01, 0x68 
   5390 4A 75               837                     .word       SMVB_startMove_quadro 
   5392 00 01 98            838                     .byte       0x00, 0x01, -0x68 
   5395 4A 36               839                     .word       SMVB_startDraw_octo 
   5397 6E 01 00            840                     .byte       0x6E, 0x01, 0x00 
   539A 49 1E               841                     .word       SMVB_continue_quadro 
   539C 53 01 67            842                     .byte       0x53, 0x01, 0x67 
   539F 49 1E               843                     .word       SMVB_continue_quadro 
   53A1 AD 01 69            844                     .byte       -0x53, 0x01, 0x69 
   53A4 49 BD               845                     .word       SMVB_continue_yd4_quadro 
   53A6 92 01 00            846                     .byte       -0x6E, 0x01, 0x00 
   53A9 49 1E               847                     .word       SMVB_continue_quadro 
   53AB FE 00 00            848                     .byte       0xfe, 0x00, 0x00 
   53AE 4C 42               849                     .word       SMVB_lastDraw_rts2 
                            850  .globl _StaircaseList
   53B0                     851 _StaircaseList: 
   53B0 6A 01 BE            852                     .byte       0x6A, 0x01, -0x42 
   53B3 48 CF               853                     .word       SMVB_continue_single 
   53B5 00 01 42            854                     .byte       0x00, 0x01, 0x42 
   53B8 4B 03               855                     .word       SMVB_startDraw_yd4_double 
   53BA 14 01 00            856                     .byte       0x14, 0x01, 0x00 
   53BD 48 CF               857                     .word       SMVB_continue_single 
   53BF 00 01 BE            858                     .byte       0x00, 0x01, -0x42 
   53C2 49 85               859                     .word       SMVB_continue_double 
   53C4 EC 01 00            860                     .byte       -0x14, 0x01, 0x00 
   53C7 48 CF               861                     .word       SMVB_continue_single 
   53C9 D5 01 E5            862                     .byte       -0x2B, 0x01, -0x1B 
   53CC 49 D9               863                     .word       SMVB_startMove_single 
   53CE 00 01 5D            864                     .byte       0x00, 0x01, 0x5D 
   53D1 4A 26               865                     .word       SMVB_startDraw_double 
   53D3 13 01 00            866                     .byte       0x13, 0x01, 0x00 
   53D6 48 CF               867                     .word       SMVB_continue_single 
   53D8 00 01 A3            868                     .byte       0x00, 0x01, -0x5D 
   53DB 49 85               869                     .word       SMVB_continue_double 
   53DD ED 01 00            870                     .byte       -0x13, 0x01, 0x00 
   53E0 48 CF               871                     .word       SMVB_continue_single 
   53E2 5D 01 74            872                     .byte       0x5D, 0x01, 0x74 
   53E5 4A 06               873                     .word       SMVB_startMove_double 
   53E7 92 01 00            874                     .byte       -0x6E, 0x01, 0x00 
   53EA 4B 03               875                     .word       SMVB_startDraw_yd4_double 
   53EC 00 01 A3            876                     .byte       0x00, 0x01, -0x5D 
   53EF 49 10               877                     .word       SMVB_continue_tripple 
   53F1 6E 01 00            878                     .byte       0x6E, 0x01, 0x00 
   53F4 49 85               879                     .word       SMVB_continue_double 
   53F6 00 01 5D            880                     .byte       0x00, 0x01, 0x5D 
   53F9 49 CB               881                     .word       SMVB_continue_yd4_tripple 
   53FB F7 01 B6            882                     .byte       -0x09, 0x01, -0x4A 
   53FE 49 D9               883                     .word       SMVB_startMove_single 
   5400 A0 01 00            884                     .byte       -0x60, 0x01, 0x00 
   5403 4B 23               885                     .word       SMVB_startDraw_yd4_single 
   5405 00 01 1B            886                     .byte       0x00, 0x01, 0x1B 
   5408 48 B5               887                     .word       SMVB_continue3_single 
   540A D9 01 00            888                     .byte       -0x27, 0x01, 0x00 
   540D 00 01 15            889                     .byte       0x00, 0x01, 0x15 
   5410 43 01 00            890                     .byte       0x43, 0x01, 0x00 
   5413 49 85               891                     .word       SMVB_continue_double 
   5415 00 01 D0            892                     .byte       0x00, 0x01, -0x30 
   5418 48 DE               893                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   541A B3 01 90            894                     .byte       -0x4D, 0x01, -0x70 
   541D 49 D9               895                     .word       SMVB_startMove_yd4_single 
   541F ED 01 00            896                     .byte       -0x13, 0x01, 0x00 
   5422 4B 23               897                     .word       SMVB_startDraw_single 
   5424 00 01 55            898                     .byte       0x00, 0x01, 0x55 
   5427 48 B5               899                     .word       SMVB_continue3_single 
   5429 13 01 00            900                     .byte       0x13, 0x01, 0x00 
   542C 00 01 AB            901                     .byte       0x00, 0x01, -0x55 
   542F 0A 01 00            902                     .byte       0x0A, 0x01, 0x00 
   5432 49 D9               903                     .word       SMVB_startMove_single 
   5434 43 01 00            904                     .byte       0x43, 0x01, 0x00 
   5437 4B 23               905                     .word       SMVB_startDraw_single 
   5439 00 01 2E            906                     .byte       0x00, 0x01, 0x2E 
   543C 48 DE               907                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   543E F6 01 00            908                     .byte       -0x0A, 0x01, 0x00 
   5441 48 C2               909                     .word       SMVB_continue2_single 
   5443 00 01 13            910                     .byte       0x00, 0x01, 0x13 
   5446 C7 01 00            911                     .byte       -0x39, 0x01, 0x00 
   5449 48 DC               912                     .word       SMVB_continue_yd4_single 
   544B 00 01 BF            913                     .byte       0x00, 0x01, -0x41 
   544E 48 D1               914                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   5450 43 01 B6            915                     .byte       0x43, 0x01, -0x4A 
   5453 49 D9               916                     .word       SMVB_startMove_single 
   5455 BD 01 00            917                     .byte       -0x43, 0x01, 0x00 
   5458 4B 03               918                     .word       SMVB_startDraw_yd4_double 
   545A 00 01 1B            919                     .byte       0x00, 0x01, 0x1B 
   545D 48 A8               920                     .word       SMVB_continue4_single 
   545F 27 01 00            921                     .byte       0x27, 0x01, 0x00 
   5462 00 01 1B            922                     .byte       0x00, 0x01, 0x1B 
   5465 60 01 00            923                     .byte       0x60, 0x01, 0x00 
   5468 00 01 CA            924                     .byte       0x00, 0x01, -0x36 
   546B 48 DE               925                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   546D FE 00 00            926                     .byte       0xfe, 0x00, 0x00 
   5470 4C 42               927                     .word       SMVB_lastDraw_rts2 
                            928  .globl _GnollList
   5472                     929 _GnollList: 
   5472 5E 01 D2            930                     .byte       0x5E, 0x01, -0x2E 
   5475 49 85               931                     .word       SMVB_continue_double 
   5477 05 01 00            932                     .byte       0x05, 0x01, 0x00 
   547A 4B 23               933                     .word       SMVB_startDraw_yd4_single 
   547C 00 01 CD            934                     .byte       0x00, 0x01, -0x33 
   547F 48 8E               935                     .word       SMVB_continue6_single 
   5481 F6 01 EF            936                     .byte       -0x0A, 0x01, -0x11 
   5484 E1 01 00            937                     .byte       -0x1F, 0x01, 0x00 
   5487 00 01 22            938                     .byte       0x00, 0x01, 0x22 
   548A EC 01 00            939                     .byte       -0x14, 0x01, 0x00 
   548D F7 01 DE            940                     .byte       -0x09, 0x01, -0x22 
   5490 C2 01 00            941                     .byte       -0x3E, 0x01, 0x00 
   5493 48 DC               942                     .word       SMVB_continue_yd4_single 
   5495 F8 01 10            943                     .byte       -0x08, 0x01, 0x10 
   5498 48 81               944                     .word       SMVB_continue7_single 
   549A CB 01 01            945                     .byte       -0x35, 0x01, 0x01 
   549D 00 01 3E            946                     .byte       0x00, 0x01, 0x3E 
   54A0 11 01 F9            947                     .byte       0x11, 0x01, -0x07 
   54A3 04 01 EC            948                     .byte       0x04, 0x01, -0x14 
   54A6 28 01 00            949                     .byte       0x28, 0x01, 0x00 
   54A9 07 01 13            950                     .byte       0x07, 0x01, 0x13 
   54AC 08 01 11            951                     .byte       0x08, 0x01, 0x11 
   54AF 48 B5               952                     .word       SMVB_continue3_single 
   54B1 10 01 0E            953                     .byte       0x10, 0x01, 0x0E 
   54B4 00 01 54            954                     .byte       0x00, 0x01, 0x54 
   54B7 A4 01 00            955                     .byte       -0x5C, 0x01, 0x00 
   54BA 48 DC               956                     .word       SMVB_continue_yd4_single 
   54BC 00 01 10            957                     .byte       0x00, 0x01, 0x10 
   54BF 48 C2               958                     .word       SMVB_continue2_single 
   54C1 5C 01 00            959                     .byte       0x5C, 0x01, 0x00 
   54C4 00 01 11            960                     .byte       0x00, 0x01, 0x11 
   54C7 48 DE               961                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   54C9 14 01 00            962                     .byte       0x14, 0x01, 0x00 
   54CC 48 81               963                     .word       SMVB_continue7_single 
   54CE 00 01 EF            964                     .byte       0x00, 0x01, -0x11 
   54D1 14 01 00            965                     .byte       0x14, 0x01, 0x00 
   54D4 00 01 11            966                     .byte       0x00, 0x01, 0x11 
   54D7 14 01 00            967                     .byte       0x14, 0x01, 0x00 
   54DA 0A 01 EF            968                     .byte       0x0A, 0x01, -0x11 
   54DD 00 01 F0            969                     .byte       0x00, 0x01, -0x10 
   54E0 F6 01 F0            970                     .byte       -0x0A, 0x01, -0x10 
   54E3 48 81               971                     .word       SMVB_continue7_single 
   54E5 EC 01 00            972                     .byte       -0x14, 0x01, 0x00 
   54E8 00 01 10            973                     .byte       0x00, 0x01, 0x10 
   54EB EC 01 00            974                     .byte       -0x14, 0x01, 0x00 
   54EE 00 01 AC            975                     .byte       0x00, 0x01, -0x54 
   54F1 0B 01 EF            976                     .byte       0x0B, 0x01, -0x11 
   54F4 09 01 EF            977                     .byte       0x09, 0x01, -0x11 
   54F7 0A 01 00            978                     .byte       0x0A, 0x01, 0x00 
   54FA 48 81               979                     .word       SMVB_continue7_single 
   54FC 00 01 44            980                     .byte       0x00, 0x01, 0x44 
   54FF 0A 01 00            981                     .byte       0x0A, 0x01, 0x00 
   5502 00 01 CD            982                     .byte       0x00, 0x01, -0x33 
   5505 0A 01 33            983                     .byte       0x0A, 0x01, 0x33 
   5508 15 01 00            984                     .byte       0x15, 0x01, 0x00 
   550B 00 01 BC            985                     .byte       0x00, 0x01, -0x44 
   550E 05 01 00            986                     .byte       0x05, 0x01, 0x00 
   5511 48 CF               987                     .word       SMVB_continue_single 
   5513 F7 01 DE            988                     .byte       -0x09, 0x01, -0x22 
   5516 49 D9               989                     .word       SMVB_startMove_single 
   5518 05 01 00            990                     .byte       0x05, 0x01, 0x00 
   551B 4B 23               991                     .word       SMVB_startDraw_single 
   551D 00 01 11            992                     .byte       0x00, 0x01, 0x11 
   5520 48 A8               993                     .word       SMVB_continue4_single 
   5522 F6 01 00            994                     .byte       -0x0A, 0x01, 0x00 
   5525 00 01 EF            995                     .byte       0x00, 0x01, -0x11 
   5528 05 01 00            996                     .byte       0x05, 0x01, 0x00 
   552B FE 00 00            997                     .byte       0xfe, 0x00, 0x00 
   552E 4C 42               998                     .word       SMVB_lastDraw_rts2 
                            999  .globl _KoboldList
   5530                    1000 _KoboldList: 
   5530 41 01 C7           1001                     .byte       0x41, 0x01, -0x39 
   5533 49 85              1002                     .word       SMVB_continue_double 
   5535 0F 01 06           1003                     .byte       0x0F, 0x01, 0x06 
   5538 4B 23              1004                     .word       SMVB_startDraw_single 
   553A 0B 01 0B           1005                     .byte       0x0B, 0x01, 0x0B 
   553D 48 81              1006                     .word       SMVB_continue7_single 
   553F 00 01 25           1007                     .byte       0x00, 0x01, 0x25 
   5542 F4 01 0B           1008                     .byte       -0x0C, 0x01, 0x0B 
   5545 00 01 2A           1009                     .byte       0x00, 0x01, 0x2A 
   5548 E7 01 00           1010                     .byte       -0x19, 0x01, 0x00 
   554B F3 01 DC           1011                     .byte       -0x0D, 0x01, -0x24 
   554E 00 01 24           1012                     .byte       0x00, 0x01, 0x24 
   5551 F3 01 FC           1013                     .byte       -0x0D, 0x01, -0x04 
   5554 48 81              1014                     .word       SMVB_continue7_single 
   5556 FF 01 CA           1015                     .byte       -0x01, 0x01, -0x36 
   5559 F5 01 09           1016                     .byte       -0x0B, 0x01, 0x09 
   555C FF 01 0E           1017                     .byte       -0x01, 0x01, 0x0E 
   555F F6 01 04           1018                     .byte       -0x0A, 0x01, 0x04 
   5562 00 01 35           1019                     .byte       0x00, 0x01, 0x35 
   5565 29 01 36           1020                     .byte       0x29, 0x01, 0x36 
   5568 09 01 0E           1021                     .byte       0x09, 0x01, 0x0E 
   556B 48 81              1022                     .word       SMVB_continue7_single 
   556D EA 01 F3           1023                     .byte       -0x16, 0x01, -0x0D 
   5570 D6 01 CB           1024                     .byte       -0x2A, 0x01, -0x35 
   5573 00 01 C9           1025                     .byte       0x00, 0x01, -0x37 
   5576 F1 01 FC           1026                     .byte       -0x0F, 0x01, -0x04 
   5579 F6 01 E1           1027                     .byte       -0x0A, 0x01, -0x1F 
   557C E7 01 00           1028                     .byte       -0x19, 0x01, 0x00 
   557F 00 01 0F           1029                     .byte       0x00, 0x01, 0x0F 
   5582 48 81              1030                     .word       SMVB_continue7_single 
   5584 F3 01 04           1031                     .byte       -0x0D, 0x01, 0x04 
   5587 00 01 C8           1032                     .byte       0x00, 0x01, -0x38 
   558A 15 01 06           1033                     .byte       0x15, 0x01, 0x06 
   558D 0A 01 F5           1034                     .byte       0x0A, 0x01, -0x0B 
   5590 0D 01 F9           1035                     .byte       0x0D, 0x01, -0x07 
   5593 1F 01 FC           1036                     .byte       0x1F, 0x01, -0x04 
   5596 0B 01 0F           1037                     .byte       0x0B, 0x01, 0x0F 
   5599 48 9B              1038                     .word       SMVB_continue5_single 
   559B 02 01 0E           1039                     .byte       0x02, 0x01, 0x0E 
   559E 07 01 FF           1040                     .byte       0x07, 0x01, -0x01 
   55A1 02 01 EF           1041                     .byte       0x02, 0x01, -0x11 
   55A4 26 01 00           1042                     .byte       0x26, 0x01, 0x00 
   55A7 0C 01 36           1043                     .byte       0x0C, 0x01, 0x36 
   55AA 49 D9              1044                     .word       SMVB_startMove_single 
   55AC 00 01 EE           1045                     .byte       0x00, 0x01, -0x12 
   55AF 4B 23              1046                     .word       SMVB_startDraw_single 
   55B1 F3 01 00           1047                     .byte       -0x0D, 0x01, 0x00 
   55B4 48 B5              1048                     .word       SMVB_continue3_single 
   55B6 00 01 12           1049                     .byte       0x00, 0x01, 0x12 
   55B9 0C 01 00           1050                     .byte       0x0C, 0x01, 0x00 
   55BC FE 00 00           1051                     .byte       0xfe, 0x00, 0x00 
   55BF 4C 42              1052                     .word       SMVB_lastDraw_rts2 
                           1053  .globl _SkeletonList
   55C1                    1054 _SkeletonList: 
   55C1 6A 01 C7           1055                     .byte       0x6A, 0x01, -0x39 
   55C4 49 85              1056                     .word       SMVB_continue_double 
   55C6 F3 01 00           1057                     .byte       -0x0D, 0x01, 0x00 
   55C9 4B 23              1058                     .word       SMVB_startDraw_yd4_single 
   55CB 00 01 12           1059                     .byte       0x00, 0x01, 0x12 
   55CE 49 85              1060                     .word       SMVB_continue_double 
   55D0 0C 01 00           1061                     .byte       0x0C, 0x01, 0x00 
   55D3 48 81              1062                     .word       SMVB_continue7_single 
   55D5 01 01 13           1063                     .byte       0x01, 0x01, 0x13 
   55D8 F3 01 00           1064                     .byte       -0x0D, 0x01, 0x00 
   55DB 00 01 ED           1065                     .byte       0x00, 0x01, -0x13 
   55DE F2 01 FB           1066                     .byte       -0x0E, 0x01, -0x05 
   55E1 00 01 F8           1067                     .byte       0x00, 0x01, -0x08 
   55E4 0E 01 FB           1068                     .byte       0x0E, 0x01, -0x05 
   55E7 0C 01 FF           1069                     .byte       0x0C, 0x01, -0x01 
   55EA 48 C2              1070                     .word       SMVB_continue2_single 
   55EC 01 01 EF           1071                     .byte       0x01, 0x01, -0x11 
   55EF C3 01 10           1072                     .byte       -0x3D, 0x01, 0x10 
   55F2 49 D9              1073                     .word       SMVB_startMove_yd4_single 
   55F4 A1 01 09           1074                     .byte       -0x5F, 0x01, 0x09 
   55F7 4B 23              1075                     .word       SMVB_startDraw_single 
   55F9 60 01 0A           1076                     .byte       0x60, 0x01, 0x0A 
   55FC 48 CF              1077                     .word       SMVB_continue_single 
   55FE E3 01 27           1078                     .byte       -0x1D, 0x01, 0x27 
   5601 49 D9              1079                     .word       SMVB_startMove_yd4_single 
   5603 07 01 DB           1080                     .byte       0x07, 0x01, -0x25 
   5606 4B 23              1081                     .word       SMVB_startDraw_single 
   5608 05 01 FE           1082                     .byte       0x05, 0x01, -0x02 
   560B 48 CF              1083                     .word       SMVB_continue_single 
   560D FF 01 EC           1084                     .byte       -0x01, 0x01, -0x14 
   5610 49 D9              1085                     .word       SMVB_startMove_single 
   5612 FC 01 FF           1086                     .byte       -0x04, 0x01, -0x01 
   5615 4B 23              1087                     .word       SMVB_startDraw_single 
   5617 FA 01 DC           1088                     .byte       -0x06, 0x01, -0x24 
   561A 48 CF              1089                     .word       SMVB_continue_single 
   561C D5 01 A7           1090                     .byte       -0x2B, 0x01, -0x59 
   561F 49 D9              1091                     .word       SMVB_startMove_single 
   5621 09 01 13           1092                     .byte       0x09, 0x01, 0x13 
   5624 4B 23              1093                     .word       SMVB_startDraw_single 
   5626 04 01 11           1094                     .byte       0x04, 0x01, 0x11 
   5629 48 B5              1095                     .word       SMVB_continue3_single 
   562B F1 01 F6           1096                     .byte       -0x0F, 0x01, -0x0A 
   562E F5 01 F8           1097                     .byte       -0x0B, 0x01, -0x08 
   5631 08 01 16           1098                     .byte       0x08, 0x01, 0x16 
   5634 49 D9              1099                     .word       SMVB_startMove_single 
   5636 12 01 FB           1100                     .byte       0x12, 0x01, -0x05 
   5639 4B 23              1101                     .word       SMVB_startDraw_single 
   563B 0C 01 04           1102                     .byte       0x0C, 0x01, 0x04 
   563E 48 81              1103                     .word       SMVB_continue7_single 
   5640 18 01 11           1104                     .byte       0x18, 0x01, 0x11 
   5643 1A 01 1C           1105                     .byte       0x1A, 0x01, 0x1C 
   5646 00 01 2A           1106                     .byte       0x00, 0x01, 0x2A 
   5649 08 01 FE           1107                     .byte       0x08, 0x01, -0x02 
   564C 24 01 E4           1108                     .byte       0x24, 0x01, -0x1C 
   564F 1A 01 00           1109                     .byte       0x1A, 0x01, 0x00 
   5652 0C 01 0D           1110                     .byte       0x0C, 0x01, 0x0D 
   5655 48 81              1111                     .word       SMVB_continue7_single 
   5657 00 01 37           1112                     .byte       0x00, 0x01, 0x37 
   565A F5 01 0E           1113                     .byte       -0x0B, 0x01, 0x0E 
   565D E6 01 00           1114                     .byte       -0x1A, 0x01, 0x00 
   5660 DD 01 E2           1115                     .byte       -0x23, 0x01, -0x1E 
   5663 F6 01 FC           1116                     .byte       -0x0A, 0x01, -0x04 
   5666 00 01 25           1117                     .byte       0x00, 0x01, 0x25 
   5669 E5 01 15           1118                     .byte       -0x1B, 0x01, 0x15 
   566C 48 A8              1119                     .word       SMVB_continue4_single 
   566E F1 01 24           1120                     .byte       -0x0F, 0x01, 0x24 
   5671 11 01 11           1121                     .byte       0x11, 0x01, 0x11 
   5674 14 01 0F           1122                     .byte       0x14, 0x01, 0x0F 
   5677 F5 01 13           1123                     .byte       -0x0B, 0x01, 0x13 
   567A 49 D9              1124                     .word       SMVB_startMove_single 
   567C F4 01 F4           1125                     .byte       -0x0C, 0x01, -0x0C 
   567F 4B 54              1126                     .word       SMVB_startDraw_yEqx_single   ; y is -0x0C 
   5681 04 01 E9           1127                     .byte       0x04, 0x01, -0x17 
   5684 48 C2              1128                     .word       SMVB_continue2_single 
   5686 F4 01 08           1129                     .byte       -0x0C, 0x01, 0x08 
   5689 F8 01 AE           1130                     .byte       -0x08, 0x01, -0x52 
   568C 49 D9              1131                     .word       SMVB_startMove_single 
   568E 03 01 E2           1132                     .byte       0x03, 0x01, -0x1E 
   5691 4B 23              1133                     .word       SMVB_startDraw_single 
   5693 09 01 FD           1134                     .byte       0x09, 0x01, -0x03 
   5696 48 CF              1135                     .word       SMVB_continue_single 
   5698 00 01 EB           1136                     .byte       0x00, 0x01, -0x15 
   569B 49 D9              1137                     .word       SMVB_startMove_single 
   569D FB 01 01           1138                     .byte       -0x05, 0x01, 0x01 
   56A0 4B 23              1139                     .word       SMVB_startDraw_single 
   56A2 FA 01 E2           1140                     .byte       -0x06, 0x01, -0x1E 
   56A5 48 CF              1141                     .word       SMVB_continue_single 
   56A7 EF 01 02           1142                     .byte       -0x11, 0x01, 0x02 
   56AA 49 D9              1143                     .word       SMVB_startMove_single 
   56AC 05 01 1E           1144                     .byte       0x05, 0x01, 0x1E 
   56AF 4B 23              1145                     .word       SMVB_startDraw_single 
   56B1 DA 01 FD           1146                     .byte       -0x26, 0x01, -0x03 
   56B4 49 D9              1147                     .word       SMVB_startMove_single 
   56B6 DD 01 E7           1148                     .byte       -0x23, 0x01, -0x19 
   56B9 4B 23              1149                     .word       SMVB_startDraw_single 
   56BB D8 01 F1           1150                     .byte       -0x28, 0x01, -0x0F 
   56BE 48 CF              1151                     .word       SMVB_continue_single 
   56C0 0E 01 D6           1152                     .byte       0x0E, 0x01, -0x2A 
   56C3 49 D9              1153                     .word       SMVB_startMove_single 
   56C5 F8 01 07           1154                     .byte       -0x08, 0x01, 0x07 
   56C8 4B 23              1155                     .word       SMVB_startDraw_single 
   56CA F9 01 0E           1156                     .byte       -0x07, 0x01, 0x0E 
   56CD 48 9B              1157                     .word       SMVB_continue5_single 
   56CF 00 01 10           1158                     .byte       0x00, 0x01, 0x10 
   56D2 2C 01 09           1159                     .byte       0x2C, 0x01, 0x09 
   56D5 28 01 1B           1160                     .byte       0x28, 0x01, 0x1B 
   56D8 05 01 0B           1161                     .byte       0x05, 0x01, 0x0B 
   56DB 07 01 FD           1162                     .byte       0x07, 0x01, -0x03 
   56DE 49 D9              1163                     .word       SMVB_startMove_single 
   56E0 01 01 EE           1164                     .byte       SHITREG_POKE_VALUE, 0x01, -0x12 
   56E3 4B FE              1165                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was -0x03, now SHIFT 
   56E5 13 01 27           1166                     .byte       0x13, 0x01, 0x27 
   56E8 49 D9              1167                     .word       SMVB_startMove_single 
   56EA FB 01 1B           1168                     .byte       -0x05, 0x01, 0x1B 
   56ED 4B 23              1169                     .word       SMVB_startDraw_single 
   56EF F3 01 F9           1170                     .byte       -0x0D, 0x01, -0x07 
   56F2 49 D9              1171                     .word       SMVB_startMove_single 
   56F4 03 01 EE           1172                     .byte       0x03, 0x01, -0x12 
   56F7 4B 23              1173                     .word       SMVB_startDraw_single 
   56F9 A2 01 1D           1174                     .byte       -0x5E, 0x01, 0x1D 
   56FC 49 D9              1175                     .word       SMVB_startMove_yd4_single 
   56FE 2B 01 F5           1176                     .byte       0x2B, 0x01, -0x0B 
   5701 4B 23              1177                     .word       SMVB_startDraw_single 
   5703 1F 01 EB           1178                     .byte       0x1F, 0x01, -0x15 
   5706 48 CF              1179                     .word       SMVB_continue_single 
   5708 0D 01 00           1180                     .byte       0x0D, 0x01, 0x00 
   570B 49 D9              1181                     .word       SMVB_startMove_single 
   570D FA 01 08           1182                     .byte       -0x06, 0x01, 0x08 
   5710 4B 23              1183                     .word       SMVB_startDraw_single 
   5712 DE 01 18           1184                     .byte       -0x22, 0x01, 0x18 
   5715 48 9B              1185                     .word       SMVB_continue5_single 
   5717 D1 01 05           1186                     .byte       -0x2F, 0x01, 0x05 
   571A 00 01 13           1187                     .byte       0x00, 0x01, 0x13 
   571D 05 01 0E           1188                     .byte       0x05, 0x01, 0x0E 
   5720 06 01 07           1189                     .byte       0x06, 0x01, 0x07 
   5723 5C 01 CE           1190                     .byte       0x5C, 0x01, -0x32 
   5726 4A 06              1191                     .word       SMVB_startMove_double 
   5728 02 01 0E           1192                     .byte       0x02, 0x01, 0x0E 
   572B 4B 23              1193                     .word       SMVB_startDraw_yd4_single 
   572D FE 01 0F           1194                     .byte       -0x02, 0x01, 0x0F 
   5730 48 CF              1195                     .word       SMVB_continue_single 
   5732 FE 00 00           1196                     .byte       0xfe, 0x00, 0x00 
   5735 4C 42              1197                     .word       SMVB_lastDraw_rts2 
                           1198  .globl _HobbitList
   5737                    1199 _HobbitList: 
   5737 27 01 27           1200                     .byte       0x27, 0x01, 0x27 
   573A 49 04              1201                     .word       SMVB_continue_yEqx_single    ; y is 0x27 
   573C 0C 01 1E           1202                     .byte       0x0C, 0x01, 0x1E 
   573F 4B 23              1203                     .word       SMVB_startDraw_single 
   5741 0D 01 E4           1204                     .byte       0x0D, 0x01, -0x1C 
   5744 48 CF              1205                     .word       SMVB_continue_single 
   5746 F4 01 1A           1206                     .byte       -0x0C, 0x01, 0x1A 
   5749 49 D9              1207                     .word       SMVB_startMove_single 
   574B 08 01 9E           1208                     .byte       0x08, 0x01, -0x62 
   574E 4B 23              1209                     .word       SMVB_startDraw_single 
   5750 06 01 EA           1210                     .byte       0x06, 0x01, -0x16 
   5753 49 D9              1211                     .word       SMVB_startMove_single 
   5755 4D 01 08           1212                     .byte       0x4D, 0x01, 0x08 
   5758 4B 23              1213                     .word       SMVB_startDraw_single 
   575A F6 01 1B           1214                     .byte       -0x0A, 0x01, 0x1B 
   575D 48 DC              1215                     .word       SMVB_continue_yd4_single 
   575F E5 01 19           1216                     .byte       -0x1B, 0x01, 0x19 
   5762 48 9B              1217                     .word       SMVB_continue5_single 
   5764 B9 01 F7           1218                     .byte       -0x47, 0x01, -0x09 
   5767 EB 01 E9           1219                     .byte       -0x15, 0x01, -0x17 
   576A FC 01 DC           1220                     .byte       -0x04, 0x01, -0x24 
   576D 2B 01 06           1221                     .byte       0x2B, 0x01, 0x06 
   5770 14 01 E3           1222                     .byte       0x14, 0x01, -0x1D 
   5773 49 D9              1223                     .word       SMVB_startMove_single 
   5775 0F 01 FC           1224                     .byte       0x0F, 0x01, -0x04 
   5778 4B 23              1225                     .word       SMVB_startDraw_single 
   577A 04 01 F1           1226                     .byte       0x04, 0x01, -0x0F 
   577D 48 81              1227                     .word       SMVB_continue7_single 
   577F 0E 01 00           1228                     .byte       0x0E, 0x01, 0x00 
   5782 04 01 0E           1229                     .byte       0x04, 0x01, 0x0E 
   5785 12 01 FE           1230                     .byte       0x12, 0x01, -0x02 
   5788 00 01 11           1231                     .byte       0x00, 0x01, 0x11 
   578B 0F 01 EE           1232                     .byte       0x0F, 0x01, -0x12 
   578E 0A 01 FF           1233                     .byte       0x0A, 0x01, -0x01 
   5791 00 01 E5           1234                     .byte       0x00, 0x01, -0x1B 
   5794 48 81              1235                     .word       SMVB_continue7_single 
   5796 08 01 00           1236                     .byte       0x08, 0x01, 0x00 
   5799 00 01 17           1237                     .byte       0x00, 0x01, 0x17 
   579C 09 01 00           1238                     .byte       0x09, 0x01, 0x00 
   579F 00 01 D3           1239                     .byte       0x00, 0x01, -0x2D 
   57A2 FA 01 F0           1240                     .byte       -0x06, 0x01, -0x10 
   57A5 E8 01 FE           1241                     .byte       -0x18, 0x01, -0x02 
   57A8 D5 01 0F           1242                     .byte       -0x2B, 0x01, 0x0F 
   57AB 49 D9              1243                     .word       SMVB_startMove_single 
   57AD 00 01 29           1244                     .byte       0x00, 0x01, 0x29 
   57B0 4B 23              1245                     .word       SMVB_startDraw_single 
   57B2 F3 01 00           1246                     .byte       -0x0D, 0x01, 0x00 
   57B5 49 D9              1247                     .word       SMVB_startMove_single 
   57B7 F4 01 15           1248                     .byte       -0x0C, 0x01, 0x15 
   57BA 4B 23              1249                     .word       SMVB_startDraw_single 
   57BC F9 01 26           1250                     .byte       -0x07, 0x01, 0x26 
   57BF 48 81              1251                     .word       SMVB_continue7_single 
   57C1 03 01 10           1252                     .byte       0x03, 0x01, 0x10 
   57C4 F4 01 F9           1253                     .byte       -0x0C, 0x01, -0x07 
   57C7 F2 01 05           1254                     .byte       -0x0E, 0x01, 0x05 
   57CA 0A 01 F1           1255                     .byte       0x0A, 0x01, -0x0F 
   57CD 03 01 D8           1256                     .byte       0x03, 0x01, -0x28 
   57D0 09 01 DE           1257                     .byte       0x09, 0x01, -0x22 
   57D3 E6 01 E1           1258                     .byte       -0x1A, 0x01, -0x1F 
   57D6 49 D9              1259                     .word       SMVB_startMove_single 
   57D8 00 01 3D           1260                     .byte       0x00, 0x01, 0x3D 
   57DB 4B 23              1261                     .word       SMVB_startDraw_single 
   57DD 0F 01 03           1262                     .byte       0x0F, 0x01, 0x03 
   57E0 49 D9              1263                     .word       SMVB_startMove_single 
   57E2 CA 01 F5           1264                     .byte       -0x36, 0x01, -0x0B 
   57E5 4B 23              1265                     .word       SMVB_startDraw_yd4_single 
   57E7 00 01 1C           1266                     .byte       0x00, 0x01, 0x1C 
   57EA 48 81              1267                     .word       SMVB_continue7_single 
   57EC F4 01 0D           1268                     .byte       -0x0C, 0x01, 0x0D 
   57EF 00 01 A0           1269                     .byte       0x00, 0x01, -0x60 
   57F2 16 01 12           1270                     .byte       0x16, 0x01, 0x12 
   57F5 18 01 F4           1271                     .byte       0x18, 0x01, -0x0C 
   57F8 0A 01 F1           1272                     .byte       0x0A, 0x01, -0x0F 
   57FB 28 01 03           1273                     .byte       0x28, 0x01, 0x03 
   57FE 06 01 0E           1274                     .byte       0x06, 0x01, 0x0E 
   5801 48 81              1275                     .word       SMVB_continue7_single 
   5803 0E 01 00           1276                     .byte       0x0E, 0x01, 0x00 
   5806 00 01 E9           1277                     .byte       0x00, 0x01, -0x17 
   5809 0D 01 F6           1278                     .byte       0x0D, 0x01, -0x0A 
   580C 32 01 00           1279                     .byte       0x32, 0x01, 0x00 
   580F 09 01 1D           1280                     .byte       0x09, 0x01, 0x1D 
   5812 00 01 2B           1281                     .byte       0x00, 0x01, 0x2B 
   5815 FB 01 0D           1282                     .byte       -0x05, 0x01, 0x0D 
   5818 48 CF              1283                     .word       SMVB_continue_single 
   581A FE 00 00           1284                     .byte       0xfe, 0x00, 0x00 
   581D 4C 42              1285                     .word       SMVB_lastDraw_rts2 
                           1286  .globl _ZombieList
   581F                    1287 _ZombieList: 
   581F 36 01 A2           1288                     .byte       0x36, 0x01, -0x5E 
   5822 48 CF              1289                     .word       SMVB_continue_single 
   5824 A7 01 FC           1290                     .byte       -0x59, 0x01, -0x04 
   5827 4B 23              1291                     .word       SMVB_startDraw_yd4_single 
   5829 00 01 D5           1292                     .byte       0x00, 0x01, -0x2B 
   582C 48 A8              1293                     .word       SMVB_continue4_single 
   582E 0F 01 00           1294                     .byte       0x0F, 0x01, 0x00 
   5831 04 01 15           1295                     .byte       0x04, 0x01, 0x15 
   5834 46 01 06           1296                     .byte       0x46, 0x01, 0x06 
   5837 00 01 14           1297                     .byte       0x00, 0x01, 0x14 
   583A 48 DC              1298                     .word       SMVB_continue_yd4_single 
   583C 00 01 20           1299                     .byte       0x00, 0x01, 0x20 
   583F 4A D2              1300                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   5841 B6 01 08           1301                     .byte       -0x4A, 0x01, 0x08 
   5844 4B 23              1302                     .word       SMVB_startDraw_yd4_single 
   5846 00 01 14           1303                     .byte       0x00, 0x01, 0x14 
   5849 48 A8              1304                     .word       SMVB_continue4_single 
   584B F1 01 00           1305                     .byte       -0x0F, 0x01, 0x00 
   584E 00 01 D7           1306                     .byte       0x00, 0x01, -0x29 
   5851 59 01 FA           1307                     .byte       0x59, 0x01, -0x06 
   5854 00 01 13           1308                     .byte       0x00, 0x01, 0x13 
   5857 48 DC              1309                     .word       SMVB_continue_yd4_single 
   5859 0E 01 00           1310                     .byte       0x0E, 0x01, 0x00 
   585C 49 D9              1311                     .word       SMVB_startMove_single 
   585E 01 01 E0           1312                     .byte       SHITREG_POKE_VALUE, 0x01, -0x20 
   5861 4B FE              1313                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   5863 16 01 00           1314                     .byte       0x16, 0x01, 0x00 
   5866 48 A8              1315                     .word       SMVB_continue4_single 
   5868 16 01 11           1316                     .byte       0x16, 0x01, 0x11 
   586B 00 01 13           1317                     .byte       0x00, 0x01, 0x13 
   586E D4 01 FC           1318                     .byte       -0x2C, 0x01, -0x04 
   5871 22 01 E2           1319                     .byte       0x22, 0x01, -0x1E 
   5874 49 D9              1320                     .word       SMVB_startMove_single 
   5876 F9 01 F2           1321                     .byte       -0x07, 0x01, -0x0E 
   5879 4B 23              1322                     .word       SMVB_startDraw_single 
   587B E4 01 04           1323                     .byte       -0x1C, 0x01, 0x04 
   587E 48 B5              1324                     .word       SMVB_continue3_single 
   5880 00 01 F4           1325                     .byte       0x00, 0x01, -0x0C 
   5883 3B 01 FD           1326                     .byte       0x3B, 0x01, -0x03 
   5886 00 01 EE           1327                     .byte       0x00, 0x01, -0x12 
   5889 48 DC              1328                     .word       SMVB_continue_yd4_single 
   588B CF 01 D8           1329                     .byte       -0x31, 0x01, -0x28 
   588E 48 81              1330                     .word       SMVB_continue7_single 
   5890 E9 01 F4           1331                     .byte       -0x17, 0x01, -0x0C 
   5893 0E 01 FD           1332                     .byte       0x0E, 0x01, -0x03 
   5896 00 01 EE           1333                     .byte       0x00, 0x01, -0x12 
   5899 0E 01 FD           1334                     .byte       0x0E, 0x01, -0x03 
   589C 02 01 15           1335                     .byte       0x02, 0x01, 0x15 
   589F 3A 01 2A           1336                     .byte       0x3A, 0x01, 0x2A 
   58A2 FF 01 1D           1337                     .byte       -0x01, 0x01, 0x1D 
   58A5 48 DC              1338                     .word       SMVB_continue_yd4_single 
   58A7 DA 01 1C           1339                     .byte       -0x26, 0x01, 0x1C 
   58AA 48 CF              1340                     .word       SMVB_continue_single 
   58AC 71 01 DB           1341                     .byte       0x71, 0x01, -0x25 
   58AF 49 D9              1342                     .word       SMVB_startMove_single 
   58B1 F2 01 00           1343                     .byte       -0x0E, 0x01, 0x00 
   58B4 4B 23              1344                     .word       SMVB_startDraw_yd4_single 
   58B6 00 01 17           1345                     .byte       0x00, 0x01, 0x17 
   58B9 48 C2              1346                     .word       SMVB_continue2_single 
   58BB 0E 01 E9           1347                     .byte       0x0E, 0x01, -0x17 
   58BE EA 01 22           1348                     .byte       -0x16, 0x01, 0x22 
   58C1 49 D9              1349                     .word       SMVB_startMove_single 
   58C3 F4 01 F0           1350                     .byte       -0x0C, 0x01, -0x10 
   58C6 4B 23              1351                     .word       SMVB_startDraw_single 
   58C8 F8 01 FC           1352                     .byte       -0x08, 0x01, -0x04 
   58CB 48 9B              1353                     .word       SMVB_continue5_single 
   58CD 00 01 39           1354                     .byte       0x00, 0x01, 0x39 
   58D0 07 01 FB           1355                     .byte       0x07, 0x01, -0x05 
   58D3 0D 01 EF           1356                     .byte       0x0D, 0x01, -0x11 
   58D6 00 01 F3           1357                     .byte       0x00, 0x01, -0x0D 
   58D9 09 01 19           1358                     .byte       0x09, 0x01, 0x19 
   58DC 49 D9              1359                     .word       SMVB_startMove_single 
   58DE 00 01 17           1360                     .byte       0x00, 0x01, 0x17 
   58E1 4B 23              1361                     .word       SMVB_startDraw_single 
   58E3 0E 01 00           1362                     .byte       0x0E, 0x01, 0x00 
   58E6 48 C2              1363                     .word       SMVB_continue2_single 
   58E8 F2 01 E9           1364                     .byte       -0x0E, 0x01, -0x17 
   58EB 1E 01 12           1365                     .byte       0x1E, 0x01, 0x12 
   58EE 49 D9              1366                     .word       SMVB_startMove_single 
   58F0 E9 01 11           1367                     .byte       -0x17, 0x01, 0x11 
   58F3 4B 23              1368                     .word       SMVB_startDraw_yd4_single 
   58F5 E1 01 00           1369                     .byte       -0x1F, 0x01, 0x00 
   58F8 48 9B              1370                     .word       SMVB_continue5_single 
   58FA EB 01 EF           1371                     .byte       -0x15, 0x01, -0x11 
   58FD FB 01 E6           1372                     .byte       -0x05, 0x01, -0x1A 
   5900 F4 01 02           1373                     .byte       -0x0C, 0x01, 0x02 
   5903 04 01 2E           1374                     .byte       0x04, 0x01, 0x2E 
   5906 C4 01 2E           1375                     .byte       -0x3C, 0x01, 0x2E 
   5909 48 DC              1376                     .word       SMVB_continue_yd4_single 
   590B 00 01 12           1377                     .byte       0x00, 0x01, 0x12 
   590E 48 8E              1378                     .word       SMVB_continue6_single 
   5910 F5 01 F8           1379                     .byte       -0x0B, 0x01, -0x08 
   5913 FD 01 F3           1380                     .byte       -0x03, 0x01, -0x0D 
   5916 F3 01 FD           1381                     .byte       -0x0D, 0x01, -0x03 
   5919 16 01 F5           1382                     .byte       0x16, 0x01, -0x0B 
   591C 33 01 D7           1383                     .byte       0x33, 0x01, -0x29 
   591F 00 01 D7           1384                     .byte       0x00, 0x01, -0x29 
   5922 48 DC              1385                     .word       SMVB_continue_yd4_single 
   5924 ED 01 FB           1386                     .byte       -0x13, 0x01, -0x05 
   5927 48 81              1387                     .word       SMVB_continue7_single 
   5929 19 01 EC           1388                     .byte       0x19, 0x01, -0x14 
   592C 0D 01 FF           1389                     .byte       0x0D, 0x01, -0x01 
   592F 09 01 F0           1390                     .byte       0x09, 0x01, -0x10 
   5932 15 01 EF           1391                     .byte       0x15, 0x01, -0x11 
   5935 1F 01 00           1392                     .byte       0x1F, 0x01, 0x00 
   5938 17 01 11           1393                     .byte       0x17, 0x01, 0x11 
   593B 0E 01 12           1394                     .byte       0x0E, 0x01, 0x12 
   593E 48 B5              1395                     .word       SMVB_continue3_single 
   5940 00 01 25           1396                     .byte       0x00, 0x01, 0x25 
   5943 F2 01 12           1397                     .byte       -0x0E, 0x01, 0x12 
   5946 FE 00 00           1398                     .byte       0xfe, 0x00, 0x00 
   5949 4C 42              1399                     .word       SMVB_lastDraw_rts2 
                           1400  .globl _OrcList
   594B                    1401 _OrcList: 
   594B 55 01 C1           1402                     .byte       0x55, 0x01, -0x3F 
   594E 49 85              1403                     .word       SMVB_continue_double 
   5950 0D 01 05           1404                     .byte       0x0D, 0x01, 0x05 
   5953 4B 23              1405                     .word       SMVB_startDraw_yd4_single 
   5955 F9 01 15           1406                     .byte       -0x07, 0x01, 0x15 
   5958 48 B5              1407                     .word       SMVB_continue3_single 
   595A F7 01 F9           1408                     .byte       -0x09, 0x01, -0x07 
   595D 03 01 ED           1409                     .byte       0x03, 0x01, -0x13 
   5960 B7 01 01           1410                     .byte       -0x49, 0x01, 0x01 
   5963 49 D9              1411                     .word       SMVB_startMove_yd4_single 
   5965 F4 01 30           1412                     .byte       -0x0C, 0x01, 0x30 
   5968 4B 23              1413                     .word       SMVB_startDraw_single 
   596A 01 01 27           1414                     .byte       0x01, 0x01, 0x27 
   596D 48 81              1415                     .word       SMVB_continue7_single 
   596F EE 01 FB           1416                     .byte       -0x12, 0x01, -0x05 
   5972 05 01 1B           1417                     .byte       0x05, 0x01, 0x1B 
   5975 0D 01 00           1418                     .byte       0x0D, 0x01, 0x00 
   5978 00 01 15           1419                     .byte       0x00, 0x01, 0x15 
   597B 0E 01 00           1420                     .byte       0x0E, 0x01, 0x00 
   597E 00 01 EB           1421                     .byte       0x00, 0x01, -0x15 
   5981 53 01 FA           1422                     .byte       0x53, 0x01, -0x06 
   5984 48 CF              1423                     .word       SMVB_continue_single 
   5986 AD 01 F0           1424                     .byte       -0x53, 0x01, -0x10 
   5989 48 DC              1425                     .word       SMVB_continue_yd4_single 
   598B FE 01 E1           1426                     .byte       -0x02, 0x01, -0x1F 
   598E 48 C2              1427                     .word       SMVB_continue2_single 
   5990 06 01 DC           1428                     .byte       0x06, 0x01, -0x24 
   5993 EE 01 12           1429                     .byte       -0x12, 0x01, 0x12 
   5996 49 D9              1430                     .word       SMVB_startMove_single 
   5998 EB 01 F5           1431                     .byte       -0x15, 0x01, -0x0B 
   599B 4B 23              1432                     .word       SMVB_startDraw_single 
   599D FB 01 E9           1433                     .byte       -0x05, 0x01, -0x17 
   59A0 48 81              1434                     .word       SMVB_continue7_single 
   59A2 F0 01 04           1435                     .byte       -0x10, 0x01, 0x04 
   59A5 F4 01 F7           1436                     .byte       -0x0C, 0x01, -0x09 
   59A8 FB 01 1A           1437                     .byte       -0x05, 0x01, 0x1A 
   59AB F6 01 FF           1438                     .byte       -0x0A, 0x01, -0x01 
   59AE 00 01 C5           1439                     .byte       0x00, 0x01, -0x3B 
   59B1 14 01 07           1440                     .byte       0x14, 0x01, 0x07 
   59B4 16 01 F9           1441                     .byte       0x16, 0x01, -0x07 
   59B7 48 81              1442                     .word       SMVB_continue7_single 
   59B9 0B 01 F6           1443                     .byte       0x0B, 0x01, -0x0A 
   59BC 1F 01 FE           1444                     .byte       0x1F, 0x01, -0x02 
   59BF 0D 01 0C           1445                     .byte       0x0D, 0x01, 0x0C 
   59C2 03 01 13           1446                     .byte       0x03, 0x01, 0x13 
   59C5 09 01 02           1447                     .byte       0x09, 0x01, 0x02 
   59C8 10 01 F0           1448                     .byte       0x10, 0x01, -0x10 
   59CB 28 01 FB           1449                     .byte       0x28, 0x01, -0x05 
   59CE 48 81              1450                     .word       SMVB_continue7_single 
   59D0 0F 01 15           1451                     .byte       0x0F, 0x01, 0x15 
   59D3 00 01 28           1452                     .byte       0x00, 0x01, 0x28 
   59D6 F3 01 04           1453                     .byte       -0x0D, 0x01, 0x04 
   59D9 F9 01 2C           1454                     .byte       -0x07, 0x01, 0x2C 
   59DC F0 01 F2           1455                     .byte       -0x10, 0x01, -0x0E 
   59DF F9 01 F2           1456                     .byte       -0x07, 0x01, -0x0E 
   59E2 F3 01 F9           1457                     .byte       -0x0D, 0x01, -0x07 
   59E5 48 81              1458                     .word       SMVB_continue7_single 
   59E7 00 01 1C           1459                     .byte       0x00, 0x01, 0x1C 
   59EA F6 01 FA           1460                     .byte       -0x0A, 0x01, -0x06 
   59ED FB 01 DA           1461                     .byte       -0x05, 0x01, -0x26 
   59F0 F3 01 00           1462                     .byte       -0x0D, 0x01, 0x00 
   59F3 FF 01 10           1463                     .byte       -0x01, 0x01, 0x10 
   59F6 F5 01 07           1464                     .byte       -0x0B, 0x01, 0x07 
   59F9 FE 00 00           1465                     .byte       0xfe, 0x00, 0x00 
   59FC 4C 42              1466                     .word       SMVB_lastDraw_rts2 
                           1467  .globl _FighterList
   59FE                    1468 _FighterList: 
   59FE 5B 01 CF           1469                     .byte       0x5B, 0x01, -0x31 
   5A01 49 85              1470                     .word       SMVB_continue_double 
   5A03 F6 01 00           1471                     .byte       -0x0A, 0x01, 0x00 
   5A06 4B 23              1472                     .word       SMVB_startDraw_yd4_single 
   5A08 00 01 E8           1473                     .byte       0x00, 0x01, -0x18 
   5A0B 48 B5              1474                     .word       SMVB_continue3_single 
   5A0D 0A 01 00           1475                     .byte       0x0A, 0x01, 0x00 
   5A10 00 01 18           1476                     .byte       0x00, 0x01, 0x18 
   5A13 28 01 CF           1477                     .byte       0x28, 0x01, -0x31 
   5A16 49 D9              1478                     .word       SMVB_startMove_single 
   5A18 F6 01 00           1479                     .byte       -0x0A, 0x01, 0x00 
   5A1B 4B 23              1480                     .word       SMVB_startDraw_single 
   5A1D 00 01 19           1481                     .byte       0x00, 0x01, 0x19 
   5A20 48 81              1482                     .word       SMVB_continue7_single 
   5A22 EC 01 00           1483                     .byte       -0x14, 0x01, 0x00 
   5A25 00 01 DB           1484                     .byte       0x00, 0x01, -0x25 
   5A28 CF 01 00           1485                     .byte       -0x31, 0x01, 0x00 
   5A2B FB 01 0F           1486                     .byte       -0x05, 0x01, 0x0F 
   5A2E EC 01 E5           1487                     .byte       -0x14, 0x01, -0x1B 
   5A31 DF 01 00           1488                     .byte       -0x21, 0x01, 0x00 
   5A34 F2 01 18           1489                     .byte       -0x0E, 0x01, 0x18 
   5A37 48 81              1490                     .word       SMVB_continue7_single 
   5A39 C6 01 00           1491                     .byte       -0x3A, 0x01, 0x00 
   5A3C 00 01 3D           1492                     .byte       0x00, 0x01, 0x3D 
   5A3F 05 01 00           1493                     .byte       0x05, 0x01, 0x00 
   5A42 0F 01 EF           1494                     .byte       0x0F, 0x01, -0x11 
   5A45 00 01 EE           1495                     .byte       0x00, 0x01, -0x12 
   5A48 28 01 00           1496                     .byte       0x28, 0x01, 0x00 
   5A4B 00 01 08           1497                     .byte       0x00, 0x01, 0x08 
   5A4E 48 81              1498                     .word       SMVB_continue7_single 
   5A50 EB 01 15           1499                     .byte       -0x15, 0x01, 0x15 
   5A53 23 01 2C           1500                     .byte       0x23, 0x01, 0x2C 
   5A56 10 01 00           1501                     .byte       0x10, 0x01, 0x00 
   5A59 00 01 0C           1502                     .byte       0x00, 0x01, 0x0C 
   5A5C EC 01 00           1503                     .byte       -0x14, 0x01, 0x00 
   5A5F 00 01 18           1504                     .byte       0x00, 0x01, 0x18 
   5A62 14 01 00           1505                     .byte       0x14, 0x01, 0x00 
   5A65 48 81              1506                     .word       SMVB_continue7_single 
   5A67 00 01 0C           1507                     .byte       0x00, 0x01, 0x0C 
   5A6A 13 01 00           1508                     .byte       0x13, 0x01, 0x00 
   5A6D 00 01 F4           1509                     .byte       0x00, 0x01, -0x0C 
   5A70 41 01 00           1510                     .byte       0x41, 0x01, 0x00 
   5A73 0F 01 EE           1511                     .byte       0x0F, 0x01, -0x12 
   5A76 00 01 FA           1512                     .byte       0x00, 0x01, -0x06 
   5A79 B0 01 00           1513                     .byte       -0x50, 0x01, 0x00 
   5A7C 48 DC              1514                     .word       SMVB_continue_yd4_single 
   5A7E 00 01 F4           1515                     .byte       0x00, 0x01, -0x0C 
   5A81 48 81              1516                     .word       SMVB_continue7_single 
   5A83 1E 01 00           1517                     .byte       0x1E, 0x01, 0x00 
   5A86 00 01 DB           1518                     .byte       0x00, 0x01, -0x25 
   5A89 28 01 00           1519                     .byte       0x28, 0x01, 0x00 
   5A8C 00 01 F4           1520                     .byte       0x00, 0x01, -0x0C 
   5A8F 0F 01 00           1521                     .byte       0x0F, 0x01, 0x00 
   5A92 0F 01 F1           1522                     .byte       0x0F, 0x01, -0x0F 
   5A95 00 01 DE           1523                     .byte       0x00, 0x01, -0x22 
   5A98 48 CF              1524                     .word       SMVB_continue_single 
   5A9A 9D 01 48           1525                     .byte       -0x63, 0x01, 0x48 
   5A9D 49 D9              1526                     .word       SMVB_startMove_yd4_single 
   5A9F 14 01 00           1527                     .byte       0x14, 0x01, 0x00 
   5AA2 4B 23              1528                     .word       SMVB_startDraw_single 
   5AA4 00 01 D0           1529                     .byte       0x00, 0x01, -0x30 
   5AA7 48 A8              1530                     .word       SMVB_continue4_single 
   5AA9 FA 01 00           1531                     .byte       -0x06, 0x01, 0x00 
   5AAC F2 01 11           1532                     .byte       -0x0E, 0x01, 0x11 
   5AAF 00 01 1F           1533                     .byte       0x00, 0x01, 0x1F 
   5AB2 DD 01 00           1534                     .byte       -0x23, 0x01, 0x00 
   5AB5 49 D9              1535                     .word       SMVB_startMove_single 
   5AB7 10 01 00           1536                     .byte       0x10, 0x01, 0x00 
   5ABA 4B 23              1537                     .word       SMVB_startDraw_single 
   5ABC 00 01 E8           1538                     .byte       0x00, 0x01, -0x18 
   5ABF 48 A8              1539                     .word       SMVB_continue4_single 
   5AC1 E2 01 00           1540                     .byte       -0x1E, 0x01, 0x00 
   5AC4 00 01 07           1541                     .byte       0x00, 0x01, 0x07 
   5AC7 0E 01 11           1542                     .byte       0x0E, 0x01, 0x11 
   5ACA FE 00 00           1543                     .byte       0xfe, 0x00, 0x00 
   5ACD 4C 42              1544                     .word       SMVB_lastDraw_rts2 
                           1545  .globl _MummyList
   5ACF                    1546 _MummyList: 
   5ACF 69 01 E8           1547                     .byte       0x69, 0x01, -0x18 
   5AD2 49 85              1548                     .word       SMVB_continue_double 
   5AD4 B4 01 B7           1549                     .byte       -0x4C, 0x01, -0x49 
   5AD7 4B 23              1550                     .word       SMVB_startDraw_yd4_single 
   5AD9 07 01 F9           1551                     .byte       0x07, 0x01, -0x07 
   5ADC 49 D9              1552                     .word       SMVB_startMove_single 
   5ADE 4D 01 4A           1553                     .byte       0x4D, 0x01, 0x4A 
   5AE1 4B 23              1554                     .word       SMVB_startDraw_single 
   5AE3 18 01 DD           1555                     .byte       0x18, 0x01, -0x23 
   5AE6 49 D9              1556                     .word       SMVB_startMove_yd4_single 
   5AE8 B5 01 B5           1557                     .byte       -0x4B, 0x01, -0x4B 
   5AEB 4B 54              1558                     .word       SMVB_startDraw_yd4_yEqx_single ; y is -0x4B 
   5AED 08 01 FA           1559                     .byte       0x08, 0x01, -0x06 
   5AF0 49 D9              1560                     .word       SMVB_startMove_single 
   5AF2 3E 01 3E           1561                     .byte       0x3E, 0x01, 0x3E 
   5AF5 4B 54              1562                     .word       SMVB_startDraw_yEqx_single   ; y is 0x3E 
   5AF7 A1 01 D7           1563                     .byte       -0x5F, 0x01, -0x29 
   5AFA 49 D9              1564                     .word       SMVB_startMove_yd4_single 
   5AFC B6 01 5C           1565                     .byte       -0x4A, 0x01, 0x5C 
   5AFF 4B 23              1566                     .word       SMVB_startDraw_single 
   5B01 0C 01 01           1567                     .byte       0x0C, 0x01, 0x01 
   5B04 49 D9              1568                     .word       SMVB_startMove_single 
   5B06 3F 01 B3           1569                     .byte       0x3F, 0x01, -0x4D 
   5B09 4B 23              1570                     .word       SMVB_startDraw_single 
   5B0B 00 01 EA           1571                     .byte       0x00, 0x01, -0x16 
   5B0E 48 DC              1572                     .word       SMVB_continue_yd4_single 
   5B10 F2 01 00           1573                     .byte       -0x0E, 0x01, 0x00 
   5B13 48 81              1574                     .word       SMVB_continue7_single 
   5B15 00 01 DF           1575                     .byte       0x00, 0x01, -0x21 
   5B18 E8 01 F1           1576                     .byte       -0x18, 0x01, -0x0F 
   5B1B E8 01 E2           1577                     .byte       -0x18, 0x01, -0x1E 
   5B1E F9 01 E6           1578                     .byte       -0x07, 0x01, -0x1A 
   5B21 FC 01 0D           1579                     .byte       -0x04, 0x01, 0x0D 
   5B24 E4 01 FF           1580                     .byte       -0x1C, 0x01, -0x01 
   5B27 1B 01 13           1581                     .byte       0x1B, 0x01, 0x13 
   5B2A 48 A8              1582                     .word       SMVB_continue4_single 
   5B2C 19 01 29           1583                     .byte       0x19, 0x01, 0x29 
   5B2F 14 01 11           1584                     .byte       0x14, 0x01, 0x11 
   5B32 00 01 0F           1585                     .byte       0x00, 0x01, 0x0F 
   5B35 BB 01 FF           1586                     .byte       -0x45, 0x01, -0x01 
   5B38 48 DC              1587                     .word       SMVB_continue_yd4_single 
   5B3A CD 01 00           1588                     .byte       -0x33, 0x01, 0x00 
   5B3D 48 8E              1589                     .word       SMVB_continue6_single 
   5B3F FC 01 E0           1590                     .byte       -0x04, 0x01, -0x20 
   5B42 F3 01 00           1591                     .byte       -0x0D, 0x01, 0x00 
   5B45 00 01 43           1592                     .byte       0x00, 0x01, 0x43 
   5B48 1F 01 FD           1593                     .byte       0x1F, 0x01, -0x03 
   5B4B 3A 01 0E           1594                     .byte       0x3A, 0x01, 0x0E 
   5B4E 08 01 0B           1595                     .byte       0x08, 0x01, 0x0B 
   5B51 49 D9              1596                     .word       SMVB_startMove_single 
   5B53 00 01 1B           1597                     .byte       0x00, 0x01, 0x1B 
   5B56 4B 23              1598                     .word       SMVB_startDraw_single 
   5B58 F2 01 00           1599                     .byte       -0x0E, 0x01, 0x00 
   5B5B 48 81              1600                     .word       SMVB_continue7_single 
   5B5D F7 01 EE           1601                     .byte       -0x09, 0x01, -0x12 
   5B60 D5 01 08           1602                     .byte       -0x2B, 0x01, 0x08 
   5B63 E1 01 F9           1603                     .byte       -0x1F, 0x01, -0x07 
   5B66 00 01 41           1604                     .byte       0x00, 0x01, 0x41 
   5B69 0D 01 00           1605                     .byte       0x0D, 0x01, 0x00 
   5B6C 09 01 E0           1606                     .byte       0x09, 0x01, -0x20 
   5B6F 73 01 02           1607                     .byte       0x73, 0x01, 0x02 
   5B72 48 CF              1608                     .word       SMVB_continue_single 
   5B74 20 01 3A           1609                     .byte       0x20, 0x01, 0x3A 
   5B77 49 D9              1610                     .word       SMVB_startMove_yd4_single 
   5B79 F0 01 E1           1611                     .byte       -0x10, 0x01, -0x1F 
   5B7C 4B 23              1612                     .word       SMVB_startDraw_single 
   5B7E 29 01 32           1613                     .byte       0x29, 0x01, 0x32 
   5B81 49 D9              1614                     .word       SMVB_startMove_single 
   5B83 E7 01 ED           1615                     .byte       -0x19, 0x01, -0x13 
   5B86 4B 23              1616                     .word       SMVB_startDraw_yd4_single 
   5B88 40 01 17           1617                     .byte       0x40, 0x01, 0x17 
   5B8B 49 D9              1618                     .word       SMVB_startMove_single 
   5B8D D9 01 FC           1619                     .byte       -0x27, 0x01, -0x04 
   5B90 4B 23              1620                     .word       SMVB_startDraw_yd4_single 
   5B92 0C 01 17           1621                     .byte       0x0C, 0x01, 0x17 
   5B95 49 D9              1622                     .word       SMVB_startMove_single 
   5B97 1B 01 ED           1623                     .byte       0x1B, 0x01, -0x13 
   5B9A 4B 23              1624                     .word       SMVB_startDraw_single 
   5B9C EE 01 1F           1625                     .byte       -0x12, 0x01, 0x1F 
   5B9F 49 D9              1626                     .word       SMVB_startMove_single 
   5BA1 F7 01 F4           1627                     .byte       -0x09, 0x01, -0x0C 
   5BA4 4B 23              1628                     .word       SMVB_startDraw_single 
   5BA6 F5 01 23           1629                     .byte       -0x0B, 0x01, 0x23 
   5BA9 49 D9              1630                     .word       SMVB_startMove_single 
   5BAB 14 01 E9           1631                     .byte       0x14, 0x01, -0x17 
   5BAE 4B 23              1632                     .word       SMVB_startDraw_single 
   5BB0 F0 01 01           1633                     .byte       -0x10, 0x01, 0x01 
   5BB3 49 D9              1634                     .word       SMVB_startMove_single 
   5BB5 FC 01 16           1635                     .byte       -0x04, 0x01, 0x16 
   5BB8 4B 23              1636                     .word       SMVB_startDraw_single 
   5BBA F9 01 DA           1637                     .byte       -0x07, 0x01, -0x26 
   5BBD 49 D9              1638                     .word       SMVB_startMove_single 
   5BBF 0B 01 10           1639                     .byte       0x0B, 0x01, 0x10 
   5BC2 4B 23              1640                     .word       SMVB_startDraw_single 
   5BC4 D7 01 D5           1641                     .byte       -0x29, 0x01, -0x2B 
   5BC7 49 D9              1642                     .word       SMVB_startMove_yd4_single 
   5BC9 1E 01 1B           1643                     .byte       0x1E, 0x01, 0x1B 
   5BCC 4B 23              1644                     .word       SMVB_startDraw_single 
   5BCE CD 01 C3           1645                     .byte       -0x33, 0x01, -0x3D 
   5BD1 49 D9              1646                     .word       SMVB_startMove_yd4_single 
   5BD3 15 01 22           1647                     .byte       0x15, 0x01, 0x22 
   5BD6 4B 23              1648                     .word       SMVB_startDraw_single 
   5BD8 EB 01 BA           1649                     .byte       -0x15, 0x01, -0x46 
   5BDB 49 D9              1650                     .word       SMVB_startMove_single 
   5BDD 00 01 24           1651                     .byte       0x00, 0x01, 0x24 
   5BE0 4B 23              1652                     .word       SMVB_startDraw_single 
   5BE2 10 01 F7           1653                     .byte       0x10, 0x01, -0x09 
   5BE5 49 D9              1654                     .word       SMVB_startMove_single 
   5BE7 00 01 E3           1655                     .byte       0x00, 0x01, -0x1D 
   5BEA 4B 23              1656                     .word       SMVB_startDraw_single 
   5BEC 00 01 F2           1657                     .byte       0x00, 0x01, -0x0E 
   5BEF 4A D2              1658                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   5BF1 FF 01 ED           1659                     .byte       -0x01, 0x01, -0x13 
   5BF4 4B 23              1660                     .word       SMVB_startDraw_single 
   5BF6 12 01 FD           1661                     .byte       0x12, 0x01, -0x03 
   5BF9 48 CF              1662                     .word       SMVB_continue_single 
   5BFB 0A 01 07           1663                     .byte       0x0A, 0x01, 0x07 
   5BFE 49 D9              1664                     .word       SMVB_startMove_single 
   5C00 01 01 1D           1665                     .byte       0x01, 0x01, 0x1D 
   5C03 4B 23              1666                     .word       SMVB_startDraw_single 
   5C05 0C 01 11           1667                     .byte       0x0C, 0x01, 0x11 
   5C08 48 81              1668                     .word       SMVB_continue7_single 
   5C0A 1B 01 02           1669                     .byte       0x1B, 0x01, 0x02 
   5C0D 2C 01 E4           1670                     .byte       0x2C, 0x01, -0x1C 
   5C10 FF 01 BB           1671                     .byte       -0x01, 0x01, -0x45 
   5C13 D5 01 D8           1672                     .byte       -0x2B, 0x01, -0x28 
   5C16 E5 01 04           1673                     .byte       -0x1B, 0x01, 0x04 
   5C19 F4 01 0F           1674                     .byte       -0x0C, 0x01, 0x0F 
   5C1C FD 01 24           1675                     .byte       -0x03, 0x01, 0x24 
   5C1F 48 CF              1676                     .word       SMVB_continue_single 
   5C21 A4 01 22           1677                     .byte       -0x5C, 0x01, 0x22 
   5C24 49 D9              1678                     .word       SMVB_startMove_yd4_single 
   5C26 31 01 C3           1679                     .byte       0x31, 0x01, -0x3D 
   5C29 4B 23              1680                     .word       SMVB_startDraw_single 
   5C2B F6 01 FA           1681                     .byte       -0x0A, 0x01, -0x06 
   5C2E 49 D9              1682                     .word       SMVB_startMove_yd4_single 
   5C30 CD 01 3E           1683                     .byte       -0x33, 0x01, 0x3E 
   5C33 4B 23              1684                     .word       SMVB_startDraw_single 
   5C35 03 01 E6           1685                     .byte       0x03, 0x01, -0x1A 
   5C38 49 D9              1686                     .word       SMVB_startMove_single 
   5C3A F0 01 D8           1687                     .byte       -0x10, 0x01, -0x28 
   5C3D 4B 23              1688                     .word       SMVB_startDraw_single 
   5C3F F5 01 02           1689                     .byte       -0x0B, 0x01, 0x02 
   5C42 49 D9              1690                     .word       SMVB_startMove_single 
   5C44 0B 01 20           1691                     .byte       0x0B, 0x01, 0x20 
   5C47 4B 23              1692                     .word       SMVB_startDraw_single 
   5C49 FE 00 00           1693                     .byte       0xfe, 0x00, 0x00 
   5C4C 4C 42              1694                     .word       SMVB_lastDraw_rts2 
                           1695  .globl _ElfList
   5C4E                    1696 _ElfList: 
   5C4E 38 01 4C           1697                     .byte       0x38, 0x01, 0x4C 
   5C51 49 85              1698                     .word       SMVB_continue_double 
   5C53 09 01 15           1699                     .byte       0x09, 0x01, 0x15 
   5C56 4B 23              1700                     .word       SMVB_startDraw_single 
   5C58 09 01 EE           1701                     .byte       0x09, 0x01, -0x12 
   5C5B 48 7A              1702                     .word       SMVB_continue_yStays_single  ; y is 0x09 
   5C5D F8 01 0F           1703                     .byte       -0x08, 0x01, 0x0F 
   5C60 49 D9              1704                     .word       SMVB_startMove_single 
   5C62 00 01 BB           1705                     .byte       0x00, 0x01, -0x45 
   5C65 4A 26              1706                     .word       SMVB_startDraw_double 
   5C67 F6 01 F7           1707                     .byte       -0x0A, 0x01, -0x09 
   5C6A 49 D9              1708                     .word       SMVB_startMove_single 
   5C6C A4 01 FF           1709                     .byte       -0x5C, 0x01, -0x01 
   5C6F 4B 23              1710                     .word       SMVB_startDraw_yd4_single 
   5C71 0B 01 14           1711                     .byte       0x0B, 0x01, 0x14 
   5C74 48 A8              1712                     .word       SMVB_continue4_single 
   5C76 0D 01 0F           1713                     .byte       0x0D, 0x01, 0x0F 
   5C79 FE 01 12           1714                     .byte       -0x02, 0x01, 0x12 
   5C7C 02 01 0D           1715                     .byte       0x02, 0x01, 0x0D 
   5C7F 4A 01 00           1716                     .byte       0x4A, 0x01, 0x00 
   5C82 49 85              1717                     .word       SMVB_continue_double 
   5C84 03 01 F5           1718                     .byte       0x03, 0x01, -0x0B 
   5C87 48 DC              1719                     .word       SMVB_continue_yd4_single 
   5C89 FC 01 EA           1720                     .byte       -0x04, 0x01, -0x16 
   5C8C 48 B5              1721                     .word       SMVB_continue3_single 
   5C8E 13 01 F5           1722                     .byte       0x13, 0x01, -0x0B 
   5C91 10 01 EF           1723                     .byte       0x10, 0x01, -0x11 
   5C94 A4 01 FD           1724                     .byte       -0x5C, 0x01, -0x03 
   5C97 48 DC              1725                     .word       SMVB_continue_yd4_single 
   5C99 23 01 B6           1726                     .byte       0x23, 0x01, -0x4A 
   5C9C 49 D9              1727                     .word       SMVB_startMove_single 
   5C9E FB 01 EF           1728                     .byte       -0x05, 0x01, -0x11 
   5CA1 4B 23              1729                     .word       SMVB_startDraw_single 
   5CA3 F8 01 00           1730                     .byte       -0x08, 0x01, 0x00 
   5CA6 48 C2              1731                     .word       SMVB_continue2_single 
   5CA8 04 01 11           1732                     .byte       0x04, 0x01, 0x11 
   5CAB E6 01 EF           1733                     .byte       -0x1A, 0x01, -0x11 
   5CAE 49 D9              1734                     .word       SMVB_startMove_single 
   5CB0 FB 01 36           1735                     .byte       -0x05, 0x01, 0x36 
   5CB3 4B 23              1736                     .word       SMVB_startDraw_single 
   5CB5 08 01 3E           1737                     .byte       0x08, 0x01, 0x3E 
   5CB8 48 81              1738                     .word       SMVB_continue7_single 
   5CBA F4 01 F0           1739                     .byte       -0x0C, 0x01, -0x10 
   5CBD FC 01 16           1740                     .byte       -0x04, 0x01, 0x16 
   5CC0 F1 01 E9           1741                     .byte       -0x0F, 0x01, -0x17 
   5CC3 09 01 FA           1742                     .byte       0x09, 0x01, -0x06 
   5CC6 FE 01 E3           1743                     .byte       -0x02, 0x01, -0x1D 
   5CC9 02 01 CC           1744                     .byte       0x02, 0x01, -0x34 
   5CCC FF 01 07           1745                     .byte       -0x01, 0x01, 0x07 
   5CCF 49 D9              1746                     .word       SMVB_startMove_single 
   5CD1 CA 01 F8           1747                     .byte       -0x36, 0x01, -0x08 
   5CD4 4B 23              1748                     .word       SMVB_startDraw_yd4_single 
   5CD6 9D 01 07           1749                     .byte       -0x63, 0x01, 0x07 
   5CD9 48 9B              1750                     .word       SMVB_continue5_single 
   5CDB FC 01 0F           1751                     .byte       -0x04, 0x01, 0x0F 
   5CDE F8 01 05           1752                     .byte       -0x08, 0x01, 0x05 
   5CE1 00 01 DA           1753                     .byte       0x00, 0x01, -0x26 
   5CE4 35 01 01           1754                     .byte       0x35, 0x01, 0x01 
   5CE7 FD 01 0A           1755                     .byte       -0x03, 0x01, 0x0A 
   5CEA 49 D9              1756                     .word       SMVB_startMove_yd4_single 
   5CEC 06 01 F4           1757                     .byte       0x06, 0x01, -0x0C 
   5CEF 4B 23              1758                     .word       SMVB_startDraw_single 
   5CF1 21 01 FE           1759                     .byte       0x21, 0x01, -0x02 
   5CF4 48 A8              1760                     .word       SMVB_continue4_single 
   5CF6 00 01 F7           1761                     .byte       0x00, 0x01, -0x09 
   5CF9 DF 01 F8           1762                     .byte       -0x21, 0x01, -0x08 
   5CFC FB 01 F3           1763                     .byte       -0x05, 0x01, -0x0D 
   5CFF 01 01 09           1764                     .byte       0x01, 0x01, 0x09 
   5D02 49 D9              1765                     .word       SMVB_startMove_single 
   5D04 CA 01 02           1766                     .byte       -0x36, 0x01, 0x02 
   5D07 4B 23              1767                     .word       SMVB_startDraw_yd4_single 
   5D09 0A 01 EC           1768                     .byte       0x0A, 0x01, -0x14 
   5D0C 49 D9              1769                     .word       SMVB_startMove_single 
   5D0E 63 01 0A           1770                     .byte       0x63, 0x01, 0x0A 
   5D11 4B 23              1771                     .word       SMVB_startDraw_single 
   5D13 9C 01 E8           1772                     .byte       -0x64, 0x01, -0x18 
   5D16 49 D9              1773                     .word       SMVB_startMove_yd4_single 
   5D18 01 01 0D           1774                     .byte       0x01, 0x01, 0x0D 
   5D1B 4B 23              1775                     .word       SMVB_startDraw_single 
   5D1D F5 01 ED           1776                     .byte       -0x0B, 0x01, -0x13 
   5D20 49 D9              1777                     .word       SMVB_startMove_single 
   5D22 09 01 05           1778                     .byte       0x09, 0x01, 0x05 
   5D25 4B 23              1779                     .word       SMVB_startDraw_single 
   5D27 F7 01 20           1780                     .byte       -0x09, 0x01, 0x20 
   5D2A 49 D9              1781                     .word       SMVB_startMove_single 
   5D2C 00 01 DA           1782                     .byte       0x00, 0x01, -0x26 
   5D2F 4B 23              1783                     .word       SMVB_startDraw_single 
   5D31 71 01 0A           1784                     .byte       0x71, 0x01, 0x0A 
   5D34 4A 06              1785                     .word       SMVB_startMove_double 
   5D36 F8 01 10           1786                     .byte       -0x08, 0x01, 0x10 
   5D39 4B 23              1787                     .word       SMVB_startDraw_yd4_single 
   5D3B FB 01 00           1788                     .byte       -0x05, 0x01, 0x00 
   5D3E 48 C2              1789                     .word       SMVB_continue2_single 
   5D40 04 01 EF           1790                     .byte       0x04, 0x01, -0x11 
   5D43 EE 01 0F           1791                     .byte       -0x12, 0x01, 0x0F 
   5D46 49 D9              1792                     .word       SMVB_startMove_single 
   5D48 EF 01 00           1793                     .byte       -0x11, 0x01, 0x00 
   5D4B 4B 23              1794                     .word       SMVB_startDraw_single 
   5D4D FF 01 15           1795                     .byte       -0x01, 0x01, 0x15 
   5D50 48 81              1796                     .word       SMVB_continue7_single 
   5D52 12 01 FE           1797                     .byte       0x12, 0x01, -0x02 
   5D55 01 01 0E           1798                     .byte       0x01, 0x01, 0x0E 
   5D58 24 01 08           1799                     .byte       0x24, 0x01, 0x08 
   5D5B 0C 01 E2           1800                     .byte       0x0C, 0x01, -0x1E 
   5D5E F4 01 E1           1801                     .byte       -0x0C, 0x01, -0x1F 
   5D61 E1 01 04           1802                     .byte       -0x1F, 0x01, 0x04 
   5D64 F9 01 0E           1803                     .byte       -0x07, 0x01, 0x0E 
   5D67 48 CF              1804                     .word       SMVB_continue_single 
   5D69 AF 01 F3           1805                     .byte       -0x51, 0x01, -0x0D 
   5D6C 49 D9              1806                     .word       SMVB_startMove_yd4_single 
   5D6E 06 01 EE           1807                     .byte       0x06, 0x01, -0x12 
   5D71 4B 23              1808                     .word       SMVB_startDraw_single 
   5D73 16 01 FC           1809                     .byte       0x16, 0x01, -0x04 
   5D76 48 B5              1810                     .word       SMVB_continue3_single 
   5D78 13 01 FB           1811                     .byte       0x13, 0x01, -0x05 
   5D7B F9 01 17           1812                     .byte       -0x07, 0x01, 0x17 
   5D7E 20 01 11           1813                     .byte       0x20, 0x01, 0x11 
   5D81 49 D9              1814                     .word       SMVB_startMove_single 
   5D83 FA 01 B6           1815                     .byte       -0x06, 0x01, -0x4A 
   5D86 4B 23              1816                     .word       SMVB_startDraw_single 
   5D88 11 01 00           1817                     .byte       0x11, 0x01, 0x00 
   5D8B 48 A8              1818                     .word       SMVB_continue4_single 
   5D8D 00 01 EB           1819                     .byte       0x00, 0x01, -0x15 
   5D90 DF 01 06           1820                     .byte       -0x21, 0x01, 0x06 
   5D93 00 01 47           1821                     .byte       0x00, 0x01, 0x47 
   5D96 C6 01 0A           1822                     .byte       -0x3A, 0x01, 0x0A 
   5D99 48 DC              1823                     .word       SMVB_continue_yd4_single 
   5D9B 02 01 00           1824                     .byte       0x02, 0x01, 0x00 
   5D9E 49 D9              1825                     .word       SMVB_startMove_single 
   5DA0 01 01 25           1826                     .byte       SHITREG_POKE_VALUE, 0x01, 0x25 
   5DA3 4B FE              1827                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   5DA5 FE 00 00           1828                     .byte       0xfe, 0x00, 0x00 
   5DA8 4C 42              1829                     .word       SMVB_lastDraw_rts2 
                           1830  .globl _GhoulList
   5DAA                    1831 _GhoulList: 
   5DAA 77 01 B9           1832                     .byte       0x77, 0x01, -0x47 
   5DAD 48 CF              1833                     .word       SMVB_continue_single 
   5DAF F4 01 F4           1834                     .byte       -0x0C, 0x01, -0x0C 
   5DB2 4B 54              1835                     .word       SMVB_startDraw_yd4_yEqx_single ; y is -0x0C 
   5DB4 D7 01 00           1836                     .byte       -0x29, 0x01, 0x00 
   5DB7 48 81              1837                     .word       SMVB_continue7_single 
   5DB9 00 01 33           1838                     .byte       0x00, 0x01, 0x33 
   5DBC F2 01 0E           1839                     .byte       -0x0E, 0x01, 0x0E 
   5DBF E5 01 00           1840                     .byte       -0x1B, 0x01, 0x00 
   5DC2 F4 01 0C           1841                     .byte       -0x0C, 0x01, 0x0C 
   5DC5 00 01 15           1842                     .byte       0x00, 0x01, 0x15 
   5DC8 F2 01 00           1843                     .byte       -0x0E, 0x01, 0x00 
   5DCB 00 01 D1           1844                     .byte       0x00, 0x01, -0x2F 
   5DCE 48 81              1845                     .word       SMVB_continue7_single 
   5DD0 1A 01 F3           1846                     .byte       0x1A, 0x01, -0x0D 
   5DD3 0E 01 00           1847                     .byte       0x0E, 0x01, 0x00 
   5DD6 0D 01 F2           1848                     .byte       0x0D, 0x01, -0x0E 
   5DD9 00 01 DA           1849                     .byte       0x00, 0x01, -0x26 
   5DDC F3 01 00           1850                     .byte       -0x0D, 0x01, 0x00 
   5DDF 00 01 0E           1851                     .byte       0x00, 0x01, 0x0E 
   5DE2 F2 01 0C           1852                     .byte       -0x0E, 0x01, 0x0C 
   5DE5 48 81              1853                     .word       SMVB_continue7_single 
   5DE7 F4 01 00           1854                     .byte       -0x0C, 0x01, 0x00 
   5DEA F2 01 F4           1855                     .byte       -0x0E, 0x01, -0x0C 
   5DED 00 01 E5           1856                     .byte       0x00, 0x01, -0x1B 
   5DF0 E5 01 00           1857                     .byte       -0x1B, 0x01, 0x00 
   5DF3 00 01 E6           1858                     .byte       0x00, 0x01, -0x1A 
   5DF6 29 01 00           1859                     .byte       0x29, 0x01, 0x00 
   5DF9 00 01 27           1860                     .byte       0x00, 0x01, 0x27 
   5DFC 48 A8              1861                     .word       SMVB_continue4_single 
   5DFE 0C 01 00           1862                     .byte       0x0C, 0x01, 0x00 
   5E01 0E 01 E5           1863                     .byte       0x0E, 0x01, -0x1B 
   5E04 44 01 00           1864                     .byte       0x44, 0x01, 0x00 
   5E07 00 01 F4           1865                     .byte       0x00, 0x01, -0x0C 
   5E0A 48 DE              1866                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   5E0C C5 01 E1           1867                     .byte       -0x3B, 0x01, -0x1F 
   5E0F 48 DC              1868                     .word       SMVB_continue_yd4_single 
   5E11 F3 01 00           1869                     .byte       -0x0D, 0x01, 0x00 
   5E14 48 9B              1870                     .word       SMVB_continue5_single 
   5E16 DC 01 11           1871                     .byte       -0x24, 0x01, 0x11 
   5E19 10 01 F1           1872                     .byte       0x10, 0x01, -0x0F 
   5E1C E8 01 F4           1873                     .byte       -0x18, 0x01, -0x0C 
   5E1F 23 01 01           1874                     .byte       0x23, 0x01, 0x01 
   5E22 E2 01 EC           1875                     .byte       -0x1E, 0x01, -0x14 
   5E25 48 DC              1876                     .word       SMVB_continue_yd4_single 
   5E27 00 01 F5           1877                     .byte       0x00, 0x01, -0x0B 
   5E2A 48 81              1878                     .word       SMVB_continue7_single 
   5E2C 19 01 15           1879                     .byte       0x19, 0x01, 0x15 
   5E2F F9 01 E6           1880                     .byte       -0x07, 0x01, -0x1A 
   5E32 1A 01 1A           1881                     .byte       0x1A, 0x01, 0x1A 
   5E35 0D 01 FF           1882                     .byte       0x0D, 0x01, -0x01 
   5E38 2C 01 10           1883                     .byte       0x2C, 0x01, 0x10 
   5E3B 28 01 15           1884                     .byte       0x28, 0x01, 0x15 
   5E3E 09 01 1B           1885                     .byte       0x09, 0x01, 0x1B 
   5E41 48 81              1886                     .word       SMVB_continue7_single 
   5E43 00 01 0E           1887                     .byte       0x00, 0x01, 0x0E 
   5E46 0D 01 00           1888                     .byte       0x0D, 0x01, 0x00 
   5E49 00 01 F2           1889                     .byte       0x00, 0x01, -0x0E 
   5E4C 1C 01 E6           1890                     .byte       0x1C, 0x01, -0x1A 
   5E4F 35 01 00           1891                     .byte       0x35, 0x01, 0x00 
   5E52 0E 01 1A           1892                     .byte       0x0E, 0x01, 0x1A 
   5E55 00 01 35           1893                     .byte       0x00, 0x01, 0x35 
   5E58 48 81              1894                     .word       SMVB_continue7_single 
   5E5A F2 01 21           1895                     .byte       -0x0E, 0x01, 0x21 
   5E5D CD 01 00           1896                     .byte       -0x33, 0x01, 0x00 
   5E60 E4 01 E6           1897                     .byte       -0x1C, 0x01, -0x1A 
   5E63 FF 01 EE           1898                     .byte       -0x01, 0x01, -0x12 
   5E66 F3 01 00           1899                     .byte       -0x0D, 0x01, 0x00 
   5E69 FD 01 3A           1900                     .byte       -0x03, 0x01, 0x3A 
   5E6C DD 01 2D           1901                     .byte       -0x23, 0x01, 0x2D 
   5E6F 48 8E              1902                     .word       SMVB_continue6_single 
   5E71 FA 01 21           1903                     .byte       -0x06, 0x01, 0x21 
   5E74 DB 01 12           1904                     .byte       -0x25, 0x01, 0x12 
   5E77 14 01 EA           1905                     .byte       0x14, 0x01, -0x16 
   5E7A E3 01 FC           1906                     .byte       -0x1D, 0x01, -0x04 
   5E7D 1E 01 F6           1907                     .byte       0x1E, 0x01, -0x0A 
   5E80 E3 01 F9           1908                     .byte       -0x1D, 0x01, -0x07 
   5E83 48 DC              1909                     .word       SMVB_continue_yd4_single 
   5E85 0F 01 F9           1910                     .byte       0x0F, 0x01, -0x07 
   5E88 48 9B              1911                     .word       SMVB_continue5_single 
   5E8A EA 01 FC           1912                     .byte       -0x16, 0x01, -0x04 
   5E8D 2C 01 F8           1913                     .byte       0x2C, 0x01, -0x08 
   5E90 17 01 E3           1914                     .byte       0x17, 0x01, -0x1D 
   5E93 02 01 CF           1915                     .byte       0x02, 0x01, -0x31 
   5E96 5F 01 F8           1916                     .byte       0x5F, 0x01, -0x08 
   5E99 49 D9              1917                     .word       SMVB_startMove_single 
   5E9B 00 01 17           1918                     .byte       0x00, 0x01, 0x17 
   5E9E 4B 23              1919                     .word       SMVB_startDraw_yd4_single 
   5EA0 14 01 03           1920                     .byte       0x14, 0x01, 0x03 
   5EA3 48 B5              1921                     .word       SMVB_continue3_single 
   5EA5 FF 01 E6           1922                     .byte       -0x01, 0x01, -0x1A 
   5EA8 ED 01 00           1923                     .byte       -0x13, 0x01, 0x00 
   5EAB 00 01 D3           1924                     .byte       0x00, 0x01, -0x2D 
   5EAE 4B E3              1925                     .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
   5EB0 01 01 17           1926                     .byte       SHITREG_POKE_VALUE, 0x01, 0x17 
   5EB3 4A E8              1927                     .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
   5EB5 13 01 03           1928                     .byte       0x13, 0x01, 0x03 
   5EB8 48 B5              1929                     .word       SMVB_continue3_single 
   5EBA 02 01 E0           1930                     .byte       0x02, 0x01, -0x20 
   5EBD EA 01 05           1931                     .byte       -0x16, 0x01, 0x05 
   5EC0 EF 01 FC           1932                     .byte       -0x11, 0x01, -0x04 
   5EC3 49 D9              1933                     .word       SMVB_startMove_single 
   5EC5 02 01 4D           1934                     .byte       0x02, 0x01, 0x4D 
   5EC8 4B 23              1935                     .word       SMVB_startDraw_single 
   5ECA F0 01 FC           1936                     .byte       -0x10, 0x01, -0x04 
   5ECD 48 B5              1937                     .word       SMVB_continue3_single 
   5ECF F4 01 CB           1938                     .byte       -0x0C, 0x01, -0x35 
   5ED2 1A 01 EC           1939                     .byte       0x1A, 0x01, -0x14 
   5ED5 FE 00 00           1940                     .byte       0xfe, 0x00, 0x00 
   5ED8 4C 42              1941                     .word       SMVB_lastDraw_rts2 
                           1942  .globl _DwarfList
   5EDA                    1943 _DwarfList: 
   5EDA 44 01 1E           1944                     .byte       0x44, 0x01, 0x1E 
   5EDD 48 CF              1945                     .word       SMVB_continue_single 
   5EDF 6A 01 1C           1946                     .byte       0x6A, 0x01, 0x1C 
   5EE2 4B 23              1947                     .word       SMVB_startDraw_single 
   5EE4 01 01 E3           1948                     .byte       0x01, 0x01, -0x1D 
   5EE7 48 DC              1949                     .word       SMVB_continue_yd4_single 
   5EE9 F5 01 FC           1950                     .byte       -0x0B, 0x01, -0x04 
   5EEC 48 81              1951                     .word       SMVB_continue7_single 
   5EEE 06 01 EF           1952                     .byte       0x06, 0x01, -0x11 
   5EF1 2B 01 11           1953                     .byte       0x2B, 0x01, 0x11 
   5EF4 FD 01 10           1954                     .byte       -0x03, 0x01, 0x10 
   5EF7 F5 01 FB           1955                     .byte       -0x0B, 0x01, -0x05 
   5EFA 00 01 1B           1956                     .byte       0x00, 0x01, 0x1B 
   5EFD 0C 01 02           1957                     .byte       0x0C, 0x01, 0x02 
   5F00 FF 01 16           1958                     .byte       -0x01, 0x01, 0x16 
   5F03 48 81              1959                     .word       SMVB_continue7_single 
   5F05 F5 01 FD           1960                     .byte       -0x0B, 0x01, -0x03 
   5F08 FC 01 14           1961                     .byte       -0x04, 0x01, 0x14 
   5F0B 10 01 05           1962                     .byte       0x10, 0x01, 0x05 
   5F0E FE 01 14           1963                     .byte       -0x02, 0x01, 0x14 
   5F11 D1 01 F1           1964                     .byte       -0x2F, 0x01, -0x0F 
   5F14 04 01 EF           1965                     .byte       0x04, 0x01, -0x11 
   5F17 09 01 03           1966                     .byte       0x09, 0x01, 0x03 
   5F1A 48 C2              1967                     .word       SMVB_continue2_single 
   5F1C 03 01 EE           1968                     .byte       0x03, 0x01, -0x12 
   5F1F 96 01 E7           1969                     .byte       -0x6A, 0x01, -0x19 
   5F22 48 DC              1970                     .word       SMVB_continue_yd4_single 
   5F24 63 01 AA           1971                     .byte       0x63, 0x01, -0x56 
   5F27 49 D9              1972                     .word       SMVB_startMove_single 
   5F29 D4 01 05           1973                     .byte       -0x2C, 0x01, 0x05 
   5F2C 4B 23              1974                     .word       SMVB_startDraw_yd4_single 
   5F2E EB 01 E7           1975                     .byte       -0x15, 0x01, -0x19 
   5F31 48 81              1976                     .word       SMVB_continue7_single 
   5F33 E8 01 00           1977                     .byte       -0x18, 0x01, 0x00 
   5F36 F6 01 3A           1978                     .byte       -0x0A, 0x01, 0x3A 
   5F39 05 01 3E           1979                     .byte       0x05, 0x01, 0x3E 
   5F3C F5 01 07           1980                     .byte       -0x0B, 0x01, 0x07 
   5F3F F1 01 F2           1981                     .byte       -0x0F, 0x01, -0x0E 
   5F42 05 01 E4           1982                     .byte       0x05, 0x01, -0x1C 
   5F45 F8 01 D9           1983                     .byte       -0x08, 0x01, -0x27 
   5F48 48 C2              1984                     .word       SMVB_continue2_single 
   5F4A 0A 01 BD           1985                     .byte       0x0A, 0x01, -0x43 
   5F4D FC 01 11           1986                     .byte       -0x04, 0x01, 0x11 
   5F50 49 D9              1987                     .word       SMVB_startMove_single 
   5F52 DE 01 F8           1988                     .byte       -0x22, 0x01, -0x08 
   5F55 4B 23              1989                     .word       SMVB_startDraw_single 
   5F57 E6 01 10           1990                     .byte       -0x1A, 0x01, 0x10 
   5F5A 48 81              1991                     .word       SMVB_continue7_single 
   5F5C E7 01 FC           1992                     .byte       -0x19, 0x01, -0x04 
   5F5F 00 01 18           1993                     .byte       0x00, 0x01, 0x18 
   5F62 F5 01 00           1994                     .byte       -0x0B, 0x01, 0x00 
   5F65 00 01 D0           1995                     .byte       0x00, 0x01, -0x30 
   5F68 1C 01 FF           1996                     .byte       0x1C, 0x01, -0x01 
   5F6B 16 01 F7           1997                     .byte       0x16, 0x01, -0x09 
   5F6E FB 01 F0           1998                     .byte       -0x05, 0x01, -0x10 
   5F71 48 81              1999                     .word       SMVB_continue7_single 
   5F73 F0 01 FB           2000                     .byte       -0x10, 0x01, -0x05 
   5F76 EE 01 EF           2001                     .byte       -0x12, 0x01, -0x11 
   5F79 00 01 19           2002                     .byte       0x00, 0x01, 0x19 
   5F7C F5 01 00           2003                     .byte       -0x0B, 0x01, 0x00 
   5F7F 00 01 CE           2004                     .byte       0x00, 0x01, -0x32 
   5F82 1C 01 09           2005                     .byte       0x1C, 0x01, 0x09 
   5F85 17 01 03           2006                     .byte       0x17, 0x01, 0x03 
   5F88 48 CF              2007                     .word       SMVB_continue_single 
   5F8A 0E 01 F8           2008                     .byte       0x0E, 0x01, -0x08 
   5F8D 49 D9              2009                     .word       SMVB_startMove_single 
   5F8F 13 01 F8           2010                     .byte       0x13, 0x01, -0x08 
   5F92 4B 23              2011                     .word       SMVB_startDraw_single 
   5F94 14 01 04           2012                     .byte       0x14, 0x01, 0x04 
   5F97 48 81              2013                     .word       SMVB_continue7_single 
   5F99 05 01 14           2014                     .byte       0x05, 0x01, 0x14 
   5F9C FD 01 11           2015                     .byte       -0x03, 0x01, 0x11 
   5F9F EC 01 0B           2016                     .byte       -0x14, 0x01, 0x0B 
   5FA2 EF 01 F9           2017                     .byte       -0x11, 0x01, -0x07 
   5FA5 F6 01 F0           2018                     .byte       -0x0A, 0x01, -0x10 
   5FA8 06 01 EB           2019                     .byte       0x06, 0x01, -0x15 
   5FAB 29 01 ED           2020                     .byte       0x29, 0x01, -0x13 
   5FAE 49 D9              2021                     .word       SMVB_startMove_single 
   5FB0 08 01 F7           2022                     .byte       0x08, 0x01, -0x09 
   5FB3 4B 23              2023                     .word       SMVB_startDraw_single 
   5FB5 0B 01 0E           2024                     .byte       0x0B, 0x01, 0x0E 
   5FB8 48 A8              2025                     .word       SMVB_continue4_single 
   5FBA 0A 01 23           2026                     .byte       0x0A, 0x01, 0x23 
   5FBD F6 01 21           2027                     .byte       -0x0A, 0x01, 0x21 
   5FC0 0A 01 27           2028                     .byte       0x0A, 0x01, 0x27 
   5FC3 EB 01 D0           2029                     .byte       -0x15, 0x01, -0x30 
   5FC6 49 D9              2030                     .word       SMVB_startMove_single 
   5FC8 E7 01 0C           2031                     .byte       -0x19, 0x01, 0x0C 
   5FCB 4B 23              2032                     .word       SMVB_startDraw_single 
   5FCD E7 01 FD           2033                     .byte       -0x19, 0x01, -0x03 
   5FD0 48 81              2034                     .word       SMVB_continue7_single 
   5FD2 F1 01 E7           2035                     .byte       -0x0F, 0x01, -0x19 
   5FD5 04 01 E1           2036                     .byte       0x04, 0x01, -0x1F 
   5FD8 0F 01 EF           2037                     .byte       0x0F, 0x01, -0x11 
   5FDB 1B 01 FD           2038                     .byte       0x1B, 0x01, -0x03 
   5FDE 17 01 11           2039                     .byte       0x17, 0x01, 0x11 
   5FE1 04 01 1E           2040                     .byte       0x04, 0x01, 0x1E 
   5FE4 F8 01 14           2041                     .byte       -0x08, 0x01, 0x14 
   5FE7 48 CF              2042                     .word       SMVB_continue_single 
   5FE9 38 01 18           2043                     .byte       0x38, 0x01, 0x18 
   5FEC 49 D9              2044                     .word       SMVB_startMove_single 
   5FEE 17 01 00           2045                     .byte       0x17, 0x01, 0x00 
   5FF1 4B 23              2046                     .word       SMVB_startDraw_single 
   5FF3 F8 01 18           2047                     .byte       -0x08, 0x01, 0x18 
   5FF6 48 B5              2048                     .word       SMVB_continue3_single 
   5FF8 F1 01 00           2049                     .byte       -0x0F, 0x01, 0x00 
   5FFB 00 01 E8           2050                     .byte       0x00, 0x01, -0x18 
   5FFE F4 01 15           2051                     .byte       -0x0C, 0x01, 0x15 
   6001 49 D9              2052                     .word       SMVB_startMove_single 
   6003 F2 01 E1           2053                     .byte       -0x0E, 0x01, -0x1F 
   6006 4B 23              2054                     .word       SMVB_startDraw_single 
   6008 05 01 E9           2055                     .byte       0x05, 0x01, -0x17 
   600B 48 C2              2056                     .word       SMVB_continue2_single 
   600D 0A 01 FD           2057                     .byte       0x0A, 0x01, -0x03 
   6010 0B 01 F4           2058                     .byte       0x0B, 0x01, -0x0C 
   6013 49 D9              2059                     .word       SMVB_startMove_single 
   6015 0D 01 FF           2060                     .byte       0x0D, 0x01, -0x01 
   6018 4B 23              2061                     .word       SMVB_startDraw_single 
   601A 0A 01 1A           2062                     .byte       0x0A, 0x01, 0x1A 
   601D 48 B5              2063                     .word       SMVB_continue3_single 
   601F E9 01 00           2064                     .byte       -0x17, 0x01, 0x00 
   6022 00 01 E7           2065                     .byte       0x00, 0x01, -0x19 
   6025 09 01 D0           2066                     .byte       0x09, 0x01, -0x30 
   6028 49 D9              2067                     .word       SMVB_startMove_single 
   602A 14 01 4E           2068                     .byte       0x14, 0x01, 0x4E 
   602D 4A 26              2069                     .word       SMVB_startDraw_double 
   602F 10 01 01           2070                     .byte       0x10, 0x01, 0x01 
   6032 48 C2              2071                     .word       SMVB_continue2_single 
   6034 04 01 A6           2072                     .byte       0x04, 0x01, -0x5A 
   6037 CC 01 B1           2073                     .byte       -0x34, 0x01, -0x4F 
   603A 48 DC              2074                     .word       SMVB_continue_yd4_single 
   603C F8 01 0D           2075                     .byte       -0x08, 0x01, 0x0D 
   603F 48 CF              2076                     .word       SMVB_continue_single 
   6041 00 01 11           2077                     .byte       0x00, 0x01, 0x11 
   6044 49 D9              2078                     .word       SMVB_startMove_single 
   6046 E0 01 06           2079                     .byte       -0x20, 0x01, 0x06 
   6049 4B 23              2080                     .word       SMVB_startDraw_single 
   604B 00 01 19           2081                     .byte       0x00, 0x01, 0x19 
   604E 48 C2              2082                     .word       SMVB_continue2_single 
   6050 F4 01 00           2083                     .byte       -0x0C, 0x01, 0x00 
   6053 FE 00 00           2084                     .byte       0xfe, 0x00, 0x00 
   6056 4C 42              2085                     .word       SMVB_lastDraw_rts2 
                           2086  .globl _TrollList
   6058                    2087 _TrollList: 
   6058 48 01 1F           2088                     .byte       0x48, 0x01, 0x1F 
   605B 48 CF              2089                     .word       SMVB_continue_single 
   605D 11 01 F8           2090                     .byte       0x11, 0x01, -0x08 
   6060 4B 23              2091                     .word       SMVB_startDraw_yd4_single 
   6062 EF 01 F7           2092                     .byte       -0x11, 0x01, -0x09 
   6065 48 81              2093                     .word       SMVB_continue7_single 
   6067 FA 01 F5           2094                     .byte       -0x06, 0x01, -0x0B 
   606A 1A 01 07           2095                     .byte       0x1A, 0x01, 0x07 
   606D 0A 01 0A           2096                     .byte       0x0A, 0x01, 0x0A 
   6070 16 01 00           2097                     .byte       0x16, 0x01, 0x00 
   6073 0E 01 F3           2098                     .byte       0x0E, 0x01, -0x0D 
   6076 07 01 ED           2099                     .byte       0x07, 0x01, -0x13 
   6079 DA 01 F8           2100                     .byte       -0x26, 0x01, -0x08 
   607C 48 81              2101                     .word       SMVB_continue7_single 
   607E E7 01 F3           2102                     .byte       -0x19, 0x01, -0x0D 
   6081 CA 01 05           2103                     .byte       -0x36, 0x01, 0x05 
   6084 E6 01 0F           2104                     .byte       -0x1A, 0x01, 0x0F 
   6087 FD 01 1D           2105                     .byte       -0x03, 0x01, 0x1D 
   608A F4 01 EF           2106                     .byte       -0x0C, 0x01, -0x11 
   608D 04 01 DE           2107                     .byte       0x04, 0x01, -0x22 
   6090 14 01 F4           2108                     .byte       0x14, 0x01, -0x0C 
   6093 48 81              2109                     .word       SMVB_continue7_single 
   6095 24 01 F3           2110                     .byte       0x24, 0x01, -0x0D 
   6098 24 01 02           2111                     .byte       0x24, 0x01, 0x02 
   609B F3 01 EA           2112                     .byte       -0x0D, 0x01, -0x16 
   609E EA 01 FE           2113                     .byte       -0x16, 0x01, -0x02 
   60A1 DC 01 F4           2114                     .byte       -0x24, 0x01, -0x0C 
   60A4 EC 01 E7           2115                     .byte       -0x14, 0x01, -0x19 
   60A7 FE 01 DD           2116                     .byte       -0x02, 0x01, -0x23 
   60AA 48 81              2117                     .word       SMVB_continue7_single 
   60AC 09 01 F7           2118                     .byte       0x09, 0x01, -0x09 
   60AF 06 01 23           2119                     .byte       0x06, 0x01, 0x23 
   60B2 1F 01 0A           2120                     .byte       0x1F, 0x01, 0x0A 
   60B5 30 01 13           2121                     .byte       0x30, 0x01, 0x13 
   60B8 12 01 F3           2122                     .byte       0x12, 0x01, -0x0D 
   60BB 2A 01 F8           2123                     .byte       0x2A, 0x01, -0x08 
   60BE FD 01 DE           2124                     .byte       -0x03, 0x01, -0x22 
   60C1 48 81              2125                     .word       SMVB_continue7_single 
   60C3 ED 01 F3           2126                     .byte       -0x13, 0x01, -0x0D 
   60C6 F4 01 02           2127                     .byte       -0x0C, 0x01, 0x02 
   60C9 F6 01 0B           2128                     .byte       -0x0A, 0x01, 0x0B 
   60CC EF 01 02           2129                     .byte       -0x11, 0x01, 0x02 
   60CF EE 01 FB           2130                     .byte       -0x12, 0x01, -0x05 
   60D2 17 01 FA           2131                     .byte       0x17, 0x01, -0x06 
   60D5 E9 01 EF           2132                     .byte       -0x17, 0x01, -0x11 
   60D8 48 81              2133                     .word       SMVB_continue7_single 
   60DA 11 01 F9           2134                     .byte       0x11, 0x01, -0x07 
   60DD 29 01 FC           2135                     .byte       0x29, 0x01, -0x04 
   60E0 19 01 0B           2136                     .byte       0x19, 0x01, 0x0B 
   60E3 17 01 18           2137                     .byte       0x17, 0x01, 0x18 
   60E6 09 01 4B           2138                     .byte       0x09, 0x01, 0x4B 
   60E9 0D 01 F4           2139                     .byte       0x0D, 0x01, -0x0C 
   60EC 18 01 00           2140                     .byte       0x18, 0x01, 0x00 
   60EF 48 81              2141                     .word       SMVB_continue7_single 
   60F1 0A 01 0C           2142                     .byte       0x0A, 0x01, 0x0C 
   60F4 00 01 16           2143                     .byte       0x00, 0x01, 0x16 
   60F7 F6 01 0D           2144                     .byte       -0x0A, 0x01, 0x0D 
   60FA E8 01 00           2145                     .byte       -0x18, 0x01, 0x00 
   60FD F3 01 F4           2146                     .byte       -0x0D, 0x01, -0x0C 
   6100 FB 01 44           2147                     .byte       -0x05, 0x01, 0x44 
   6103 E9 01 18           2148                     .byte       -0x17, 0x01, 0x18 
   6106 48 A8              2149                     .word       SMVB_continue4_single 
   6108 E7 01 0C           2150                     .byte       -0x19, 0x01, 0x0C 
   610B C6 01 00           2151                     .byte       -0x3A, 0x01, 0x00 
   610E 05 01 F2           2152                     .byte       0x05, 0x01, -0x0E 
   6111 FE 00 00           2153                     .byte       0xfe, 0x00, 0x00 
   6114 4C 42              2154                     .word       SMVB_lastDraw_rts2 
                           2155  .globl _WraithList
   6116                    2156 _WraithList: 
   6116 5A 01 D5           2157                     .byte       0x5A, 0x01, -0x2B 
   6119 49 85              2158                     .word       SMVB_continue_double 
   611B 05 01 EE           2159                     .byte       0x05, 0x01, -0x12 
   611E 4B 23              2160                     .word       SMVB_startDraw_yd4_single 
   6120 E5 01 00           2161                     .byte       -0x1B, 0x01, 0x00 
   6123 48 C2              2162                     .word       SMVB_continue2_single 
   6125 15 01 12           2163                     .byte       0x15, 0x01, 0x12 
   6128 EC 01 24           2164                     .byte       -0x14, 0x01, 0x24 
   612B 49 D9              2165                     .word       SMVB_startMove_single 
   612D 19 01 03           2166                     .byte       0x19, 0x01, 0x03 
   6130 4B 23              2167                     .word       SMVB_startDraw_single 
   6132 FC 01 ED           2168                     .byte       -0x04, 0x01, -0x13 
   6135 48 C2              2169                     .word       SMVB_continue2_single 
   6137 EB 01 10           2170                     .byte       -0x15, 0x01, 0x10 
   613A E1 01 C7           2171                     .byte       -0x1F, 0x01, -0x39 
   613D 49 D9              2172                     .word       SMVB_startMove_single 
   613F 08 01 CE           2173                     .byte       0x08, 0x01, -0x32 
   6142 4B 23              2174                     .word       SMVB_startDraw_single 
   6144 0A 01 FA           2175                     .byte       0x0A, 0x01, -0x06 
   6147 48 C2              2176                     .word       SMVB_continue2_single 
   6149 27 01 0C           2177                     .byte       0x27, 0x01, 0x0C 
   614C E7 01 ED           2178                     .byte       -0x19, 0x01, -0x13 
   614F 48 DC              2179                     .word       SMVB_continue_yd4_single 
   6151 FD 01 F2           2180                     .byte       -0x03, 0x01, -0x0E 
   6154 48 C2              2181                     .word       SMVB_continue2_single 
   6156 1A 01 F1           2182                     .byte       0x1A, 0x01, -0x0F 
   6159 CE 01 0B           2183                     .byte       -0x32, 0x01, 0x0B 
   615C 48 DC              2184                     .word       SMVB_continue_yd4_single 
   615E F0 01 0B           2185                     .byte       -0x10, 0x01, 0x0B 
   6161 48 81              2186                     .word       SMVB_continue7_single 
   6163 F4 01 19           2187                     .byte       -0x0C, 0x01, 0x19 
   6166 F2 01 15           2188                     .byte       -0x0E, 0x01, 0x15 
   6169 E8 01 07           2189                     .byte       -0x18, 0x01, 0x07 
   616C F4 01 14           2190                     .byte       -0x0C, 0x01, 0x14 
   616F F2 01 09           2191                     .byte       -0x0E, 0x01, 0x09 
   6172 EC 01 F9           2192                     .byte       -0x14, 0x01, -0x07 
   6175 F4 01 F3           2193                     .byte       -0x0C, 0x01, -0x0D 
   6178 48 81              2194                     .word       SMVB_continue7_single 
   617A ED 01 F9           2195                     .byte       -0x13, 0x01, -0x07 
   617D E2 01 13           2196                     .byte       -0x1E, 0x01, 0x13 
   6180 F3 01 18           2197                     .byte       -0x0D, 0x01, 0x18 
   6183 00 01 17           2198                     .byte       0x00, 0x01, 0x17 
   6186 0B 01 EF           2199                     .byte       0x0B, 0x01, -0x11 
   6189 0C 01 FD           2200                     .byte       0x0C, 0x01, -0x03 
   618C 1E 01 0C           2201                     .byte       0x1E, 0x01, 0x0C 
   618F 48 81              2202                     .word       SMVB_continue7_single 
   6191 0F 01 14           2203                     .byte       0x0F, 0x01, 0x14 
   6194 0A 01 18           2204                     .byte       0x0A, 0x01, 0x18 
   6197 1B 01 05           2205                     .byte       0x1B, 0x01, 0x05 
   619A 13 01 F1           2206                     .byte       0x13, 0x01, -0x0F 
   619D 1D 01 0B           2207                     .byte       0x1D, 0x01, 0x0B 
   61A0 06 01 15           2208                     .byte       0x06, 0x01, 0x15 
   61A3 0B 01 1B           2209                     .byte       0x0B, 0x01, 0x1B 
   61A6 48 B5              2210                     .word       SMVB_continue3_single 
   61A8 13 01 09           2211                     .byte       0x13, 0x01, 0x09 
   61AB 2E 01 03           2212                     .byte       0x2E, 0x01, 0x03 
   61AE E6 01 F3           2213                     .byte       -0x1A, 0x01, -0x0D 
   61B1 48 DC              2214                     .word       SMVB_continue_yd4_single 
   61B3 00 01 F6           2215                     .byte       0x00, 0x01, -0x0A 
   61B6 48 C2              2216                     .word       SMVB_continue2_single 
   61B8 1D 01 F2           2217                     .byte       0x1D, 0x01, -0x0E 
   61BB D3 01 04           2218                     .byte       -0x2D, 0x01, 0x04 
   61BE 48 DC              2219                     .word       SMVB_continue_yd4_single 
   61C0 F2 01 F4           2220                     .byte       -0x0E, 0x01, -0x0C 
   61C3 48 81              2221                     .word       SMVB_continue7_single 
   61C5 06 01 C7           2222                     .byte       0x06, 0x01, -0x39 
   61C8 0E 01 1D           2223                     .byte       0x0E, 0x01, 0x1D 
   61CB 18 01 00           2224                     .byte       0x18, 0x01, 0x00 
   61CE 25 01 F4           2225                     .byte       0x25, 0x01, -0x0C 
   61D1 0D 01 DC           2226                     .byte       0x0D, 0x01, -0x24 
   61D4 F3 01 DC           2227                     .byte       -0x0D, 0x01, -0x24 
   61D7 DB 01 F5           2228                     .byte       -0x25, 0x01, -0x0B 
   61DA 48 B5              2229                     .word       SMVB_continue3_single 
   61DC E8 01 00           2230                     .byte       -0x18, 0x01, 0x00 
   61DF EE 01 13           2231                     .byte       -0x12, 0x01, 0x13 
   61E2 FE 00 00           2232                     .byte       0xfe, 0x00, 0x00 
   61E5 4C 42              2233                     .word       SMVB_lastDraw_rts2 
                           2234  .globl _OgreList
   61E7                    2235 _OgreList: 
   61E7 6C 01 BA           2236                     .byte       0x6C, 0x01, -0x46 
   61EA 48 CF              2237                     .word       SMVB_continue_single 
   61EC F2 01 24           2238                     .byte       -0x0E, 0x01, 0x24 
   61EF 4B 23              2239                     .word       SMVB_startDraw_yd4_single 
   61F1 07 01 15           2240                     .byte       0x07, 0x01, 0x15 
   61F4 48 C2              2241                     .word       SMVB_continue2_single 
   61F6 FD 01 3E           2242                     .byte       -0x03, 0x01, 0x3E 
   61F9 2A 01 F9           2243                     .byte       0x2A, 0x01, -0x07 
   61FC 49 D9              2244                     .word       SMVB_startMove_single 
   61FE 07 01 B9           2245                     .byte       0x07, 0x01, -0x47 
   6201 4B 23              2246                     .word       SMVB_startDraw_single 
   6203 F9 01 D8           2247                     .byte       -0x07, 0x01, -0x28 
   6206 48 CF              2248                     .word       SMVB_continue_single 
   6208 00 01 FF           2249                     .byte       0x00, 0x01, -0x01 
   620B 49 D9              2250                     .word       SMVB_startMove_single 
   620D 21 01 23           2251                     .byte       0x21, 0x01, 0x23 
   6210 4B 23              2252                     .word       SMVB_startDraw_single 
   6212 2B 01 00           2253                     .byte       0x2B, 0x01, 0x00 
   6215 48 81              2254                     .word       SMVB_continue7_single 
   6217 19 01 EA           2255                     .byte       0x19, 0x01, -0x16 
   621A 03 01 CA           2256                     .byte       0x03, 0x01, -0x36 
   621D E4 01 E2           2257                     .byte       -0x1C, 0x01, -0x1E 
   6220 D5 01 00           2258                     .byte       -0x2B, 0x01, 0x00 
   6223 E4 01 23           2259                     .byte       -0x1C, 0x01, 0x23 
   6226 E6 01 00           2260                     .byte       -0x1A, 0x01, 0x00 
   6229 D8 01 CB           2261                     .byte       -0x28, 0x01, -0x35 
   622C 48 C2              2262                     .word       SMVB_continue2_single 
   622E 1A 01 EF           2263                     .byte       0x1A, 0x01, -0x11 
   6231 D4 01 0B           2264                     .byte       -0x2C, 0x01, 0x0B 
   6234 48 DC              2265                     .word       SMVB_continue_yd4_single 
   6236 02 01 0D           2266                     .byte       0x02, 0x01, 0x0D 
   6239 48 8E              2267                     .word       SMVB_continue6_single 
   623B E4 01 17           2268                     .byte       -0x1C, 0x01, 0x17 
   623E F2 01 16           2269                     .byte       -0x0E, 0x01, 0x16 
   6241 C8 01 00           2270                     .byte       -0x38, 0x01, 0x00 
   6244 F7 01 C6           2271                     .byte       -0x09, 0x01, -0x3A 
   6247 49 01 F8           2272                     .byte       0x49, 0x01, -0x08 
   624A 0C 01 E7           2273                     .byte       0x0C, 0x01, -0x19 
   624D 48 DC              2274                     .word       SMVB_continue_yd4_single 
   624F 64 01 F3           2275                     .byte       0x64, 0x01, -0x0D 
   6252 48 CF              2276                     .word       SMVB_continue_single 
   6254 0D 01 33           2277                     .byte       0x0D, 0x01, 0x33 
   6257 48 DC              2278                     .word       SMVB_continue_yd4_single 
   6259 F8 01 34           2279                     .byte       -0x08, 0x01, 0x34 
   625C 48 CF              2280                     .word       SMVB_continue_single 
   625E BD 01 DF           2281                     .byte       -0x43, 0x01, -0x21 
   6261 49 D9              2282                     .word       SMVB_startMove_yd4_single 
   6263 1C 01 2F           2283                     .byte       0x1C, 0x01, 0x2F 
   6266 4B 23              2284                     .word       SMVB_startDraw_single 
   6268 0F 01 00           2285                     .byte       0x0F, 0x01, 0x00 
   626B 48 8E              2286                     .word       SMVB_continue6_single 
   626D FE 01 0D           2287                     .byte       -0x02, 0x01, 0x0D 
   6270 F4 01 FF           2288                     .byte       -0x0C, 0x01, -0x01 
   6273 E4 01 2F           2289                     .byte       -0x1C, 0x01, 0x2F 
   6276 F0 01 CB           2290                     .byte       -0x10, 0x01, -0x35 
   6279 10 01 CB           2291                     .byte       0x10, 0x01, -0x35 
   627C 41 01 0B           2292                     .byte       0x41, 0x01, 0x0B 
   627F 4A 06              2293                     .word       SMVB_startMove_double 
   6281 10 01 00           2294                     .byte       0x10, 0x01, 0x00 
   6284 4B 23              2295                     .word       SMVB_startDraw_single 
   6286 FA 01 17           2296                     .byte       -0x06, 0x01, 0x17 
   6289 48 B5              2297                     .word       SMVB_continue3_single 
   628B F1 01 00           2298                     .byte       -0x0F, 0x01, 0x00 
   628E 05 01 E9           2299                     .byte       0x05, 0x01, -0x17 
   6291 EE 01 0B           2300                     .byte       -0x12, 0x01, 0x0B 
   6294 49 D9              2301                     .word       SMVB_startMove_single 
   6296 FA 01 24           2302                     .byte       -0x06, 0x01, 0x24 
   6299 4B 23              2303                     .word       SMVB_startDraw_single 
   629B F1 01 00           2304                     .byte       -0x0F, 0x01, 0x00 
   629E 48 B5              2305                     .word       SMVB_continue3_single 
   62A0 07 01 DC           2306                     .byte       0x07, 0x01, -0x24 
   62A3 0E 01 00           2307                     .byte       0x0E, 0x01, 0x00 
   62A6 00 01 18           2308                     .byte       0x00, 0x01, 0x18 
   62A9 4A D2              2309                     .word       SMVB_startMove_yStays_single ; y was 0x0E, now 0 
   62AB 06 01 17           2310                     .byte       0x06, 0x01, 0x17 
   62AE 4B 23              2311                     .word       SMVB_startDraw_single 
   62B0 10 01 03           2312                     .byte       0x10, 0x01, 0x03 
   62B3 48 B5              2313                     .word       SMVB_continue3_single 
   62B5 F9 01 E6           2314                     .byte       -0x07, 0x01, -0x1A 
   62B8 F1 01 00           2315                     .byte       -0x0F, 0x01, 0x00 
   62BB C4 01 58           2316                     .byte       -0x3C, 0x01, 0x58 
   62BE 49 D9              2317                     .word       SMVB_startMove_single 
   62C0 12 01 FA           2318                     .byte       0x12, 0x01, -0x06 
   62C3 4B 23              2319                     .word       SMVB_startDraw_single 
   62C5 05 01 F4           2320                     .byte       0x05, 0x01, -0x0C 
   62C8 48 81              2321                     .word       SMVB_continue7_single 
   62CA 0C 01 01           2322                     .byte       0x0C, 0x01, 0x01 
   62CD FD 01 0A           2323                     .byte       -0x03, 0x01, 0x0A 
   62D0 0E 01 01           2324                     .byte       0x0E, 0x01, 0x01 
   62D3 05 01 EC           2325                     .byte       0x05, 0x01, -0x14 
   62D6 0E 01 00           2326                     .byte       0x0E, 0x01, 0x00 
   62D9 FC 01 0E           2327                     .byte       -0x04, 0x01, 0x0E 
   62DC 12 01 01           2328                     .byte       0x12, 0x01, 0x01 
   62DF 48 81              2329                     .word       SMVB_continue7_single 
   62E1 01 01 F1           2330                     .byte       0x01, 0x01, -0x0F 
   62E4 0E 01 00           2331                     .byte       0x0E, 0x01, 0x00 
   62E7 FB 01 20           2332                     .byte       -0x05, 0x01, 0x20 
   62EA 0D 01 00           2333                     .byte       0x0D, 0x01, 0x00 
   62ED FB 01 18           2334                     .byte       -0x05, 0x01, 0x18 
   62F0 F3 01 00           2335                     .byte       -0x0D, 0x01, 0x00 
   62F3 FB 01 25           2336                     .byte       -0x05, 0x01, 0x25 
   62F6 48 81              2337                     .word       SMVB_continue7_single 
   62F8 F5 01 FE           2338                     .byte       -0x0B, 0x01, -0x02 
   62FB 02 01 F5           2339                     .byte       0x02, 0x01, -0x0B 
   62FE F1 01 00           2340                     .byte       -0x0F, 0x01, 0x00 
   6301 FF 01 0B           2341                     .byte       -0x01, 0x01, 0x0B 
   6304 F1 01 FE           2342                     .byte       -0x0F, 0x01, -0x02 
   6307 02 01 EB           2343                     .byte       0x02, 0x01, -0x15 
   630A F2 01 00           2344                     .byte       -0x0E, 0x01, 0x00 
   630D 48 81              2345                     .word       SMVB_continue7_single 
   630F FC 01 0C           2346                     .byte       -0x04, 0x01, 0x0C 
   6312 F3 01 FF           2347                     .byte       -0x0D, 0x01, -0x01 
   6315 03 01 F5           2348                     .byte       0x03, 0x01, -0x0B 
   6318 F2 01 00           2349                     .byte       -0x0E, 0x01, 0x00 
   631B FD 01 0E           2350                     .byte       -0x03, 0x01, 0x0E 
   631E DB 01 FE           2351                     .byte       -0x25, 0x01, -0x02 
   6321 FC 01 F6           2352                     .byte       -0x04, 0x01, -0x0A 
   6324 48 A8              2353                     .word       SMVB_continue4_single 
   6326 F6 01 FF           2354                     .byte       -0x0A, 0x01, -0x01 
   6329 05 01 DD           2355                     .byte       0x05, 0x01, -0x23 
   632C 0A 01 00           2356                     .byte       0x0A, 0x01, 0x00 
   632F FD 01 E0           2357                     .byte       -0x03, 0x01, -0x20 
   6332 49 D9              2358                     .word       SMVB_startMove_single 
   6334 BB 01 00           2359                     .byte       -0x45, 0x01, 0x00 
   6337 4B 03              2360                     .word       SMVB_startDraw_yd4_double 
   6339 05 01 C3           2361                     .byte       0x05, 0x01, -0x3D 
   633C 48 A8              2362                     .word       SMVB_continue4_single 
   633E 38 01 00           2363                     .byte       0x38, 0x01, 0x00 
   6341 0E 01 17           2364                     .byte       0x0E, 0x01, 0x17 
   6344 1D 01 22           2365                     .byte       0x1D, 0x01, 0x22 
   6347 FE 00 00           2366                     .byte       0xfe, 0x00, 0x00 
   634A 4C 42              2367                     .word       SMVB_lastDraw_rts2 
                           2368  .globl _MinotaurList
   634C                    2369 _MinotaurList: 
   634C 66 01 CE           2370                     .byte       0x66, 0x01, -0x32 
   634F 49 85              2371                     .word       SMVB_continue_double 
   6351 00 01 0D           2372                     .byte       0x00, 0x01, 0x0D 
   6354 4B 23              2373                     .word       SMVB_startDraw_yd4_single 
   6356 E8 01 04           2374                     .byte       -0x18, 0x01, 0x04 
   6359 48 B5              2375                     .word       SMVB_continue3_single 
   635B 0C 01 EF           2376                     .byte       0x0C, 0x01, -0x11 
   635E 0C 01 00           2377                     .byte       0x0C, 0x01, 0x00 
   6361 01 01 35           2378                     .byte       0x01, 0x01, 0x35 
   6364 49 D9              2379                     .word       SMVB_startMove_single 
   6366 00 01 0B           2380                     .byte       0x00, 0x01, 0x0B 
   6369 4B 23              2381                     .word       SMVB_startDraw_single 
   636B F4 01 00           2382                     .byte       -0x0C, 0x01, 0x00 
   636E 48 B5              2383                     .word       SMVB_continue3_single 
   6370 F4 01 F0           2384                     .byte       -0x0C, 0x01, -0x10 
   6373 18 01 05           2385                     .byte       0x18, 0x01, 0x05 
   6376 DB 01 FA           2386                     .byte       -0x25, 0x01, -0x06 
   6379 49 D9              2387                     .word       SMVB_startMove_yd4_single 
   637B 01 01 EA           2388                     .byte       0x01, 0x01, -0x16 
   637E 4B 23              2389                     .word       SMVB_startDraw_single 
   6380 F5 01 F3           2390                     .byte       -0x0B, 0x01, -0x0D 
   6383 48 B5              2391                     .word       SMVB_continue3_single 
   6385 00 01 31           2392                     .byte       0x00, 0x01, 0x31 
   6388 0A 01 F3           2393                     .byte       0x0A, 0x01, -0x0D 
   638B A6 01 11           2394                     .byte       -0x5A, 0x01, 0x11 
   638E 49 D9              2395                     .word       SMVB_startMove_yd4_single 
   6390 D9 01 0C           2396                     .byte       -0x27, 0x01, 0x0C 
   6393 4B 23              2397                     .word       SMVB_startDraw_single 
   6395 CC 01 FF           2398                     .byte       -0x34, 0x01, -0x01 
   6398 48 81              2399                     .word       SMVB_continue7_single 
   639A 01 01 E8           2400                     .byte       0x01, 0x01, -0x18 
   639D 31 01 FF           2401                     .byte       0x31, 0x01, -0x01 
   63A0 12 01 F7           2402                     .byte       0x12, 0x01, -0x09 
   63A3 00 01 F0           2403                     .byte       0x00, 0x01, -0x10 
   63A6 E3 01 EA           2404                     .byte       -0x1D, 0x01, -0x16 
   63A9 E5 01 DF           2405                     .byte       -0x1B, 0x01, -0x21 
   63AC FF 01 EC           2406                     .byte       -0x01, 0x01, -0x14 
   63AF 48 A8              2407                     .word       SMVB_continue4_single 
   63B1 14 01 FF           2408                     .byte       0x14, 0x01, -0x01 
   63B4 17 01 22           2409                     .byte       0x17, 0x01, 0x22 
   63B7 29 01 0F           2410                     .byte       0x29, 0x01, 0x0F 
   63BA 0D 01 00           2411                     .byte       0x0D, 0x01, 0x00 
   63BD 49 D9              2412                     .word       SMVB_startMove_single 
   63BF 0B 01 00           2413                     .byte       0x0B, 0x01, 0x00 
   63C2 4B 23              2414                     .word       SMVB_startDraw_single 
   63C4 00 01 D5           2415                     .byte       0x00, 0x01, -0x2B 
   63C7 48 A8              2416                     .word       SMVB_continue4_single 
   63C9 DB 01 F8           2417                     .byte       -0x25, 0x01, -0x08 
   63CC FE 01 E5           2418                     .byte       -0x02, 0x01, -0x1B 
   63CF 42 01 10           2419                     .byte       0x42, 0x01, 0x10 
   63D2 FC 01 3D           2420                     .byte       -0x04, 0x01, 0x3D 
   63D5 48 DC              2421                     .word       SMVB_continue_yd4_single 
   63D7 0B 01 20           2422                     .byte       0x0B, 0x01, 0x20 
   63DA 48 81              2423                     .word       SMVB_continue7_single 
   63DC 05 01 EB           2424                     .byte       0x05, 0x01, -0x15 
   63DF 1F 01 F0           2425                     .byte       0x1F, 0x01, -0x10 
   63E2 07 01 E2           2426                     .byte       0x07, 0x01, -0x1E 
   63E5 14 01 F2           2427                     .byte       0x14, 0x01, -0x0E 
   63E8 0C 01 F1           2428                     .byte       0x0C, 0x01, -0x0F 
   63EB 12 01 04           2429                     .byte       0x12, 0x01, 0x04 
   63EE 12 01 0E           2430                     .byte       0x12, 0x01, 0x0E 
   63F1 48 81              2431                     .word       SMVB_continue7_single 
   63F3 0A 01 43           2432                     .byte       0x0A, 0x01, 0x43 
   63F6 E4 01 D3           2433                     .byte       -0x1C, 0x01, -0x2D 
   63F9 F3 01 00           2434                     .byte       -0x0D, 0x01, 0x00 
   63FC FC 01 3C           2435                     .byte       -0x04, 0x01, 0x3C 
   63FF 06 01 3F           2436                     .byte       0x06, 0x01, 0x3F 
   6402 0B 01 0B           2437                     .byte       0x0B, 0x01, 0x0B 
   6405 1F 01 D2           2438                     .byte       0x1F, 0x01, -0x2E 
   6408 48 81              2439                     .word       SMVB_continue7_single 
   640A F4 01 38           2440                     .byte       -0x0C, 0x01, 0x38 
   640D F1 01 10           2441                     .byte       -0x0F, 0x01, 0x10 
   6410 F2 01 03           2442                     .byte       -0x0E, 0x01, 0x03 
   6413 F1 01 F2           2443                     .byte       -0x0F, 0x01, -0x0E 
   6416 E8 01 F7           2444                     .byte       -0x18, 0x01, -0x09 
   6419 FE 01 E1           2445                     .byte       -0x02, 0x01, -0x1F 
   641C DC 01 FA           2446                     .byte       -0x24, 0x01, -0x06 
   641F 48 A8              2447                     .word       SMVB_continue4_single 
   6421 FC 01 E8           2448                     .byte       -0x04, 0x01, -0x18 
   6424 F6 01 20           2449                     .byte       -0x0A, 0x01, 0x20 
   6427 FE 01 1C           2450                     .byte       -0x02, 0x01, 0x1C 
   642A BF 01 03           2451                     .byte       -0x41, 0x01, 0x03 
   642D 48 DC              2452                     .word       SMVB_continue_yd4_single 
   642F FE 01 EC           2453                     .byte       -0x02, 0x01, -0x14 
   6432 48 C2              2454                     .word       SMVB_continue2_single 
   6434 30 01 FA           2455                     .byte       0x30, 0x01, -0x06 
   6437 F1 01 00           2456                     .byte       -0x0F, 0x01, 0x00 
   643A 49 D9              2457                     .word       SMVB_startMove_yd4_single 
   643C 04 01 BE           2458                     .byte       0x04, 0x01, -0x42 
   643F 4A 26              2459                     .word       SMVB_startDraw_double 
   6441 02 01 E3           2460                     .byte       0x02, 0x01, -0x1D 
   6444 49 D9              2461                     .word       SMVB_startMove_single 
   6446 01 01 DC           2462                     .byte       SHITREG_POKE_VALUE, 0x01, -0x24 
   6449 4A E8              2463                     .word       SMVB_startDraw_yStays_single ; y was 0x02, now SHIFT Poke 
   644B F3 01 00           2464                     .byte       -0x0D, 0x01, 0x00 
   644E 48 C2              2465                     .word       SMVB_continue2_single 
   6450 FE 01 22           2466                     .byte       -0x02, 0x01, 0x22 
   6453 FC 01 53           2467                     .byte       -0x04, 0x01, 0x53 
   6456 4A 06              2468                     .word       SMVB_startMove_double 
   6458 04 01 BB           2469                     .byte       0x04, 0x01, -0x45 
   645B 4A 26              2470                     .word       SMVB_startDraw_double 
   645D F9 01 51           2471                     .byte       -0x07, 0x01, 0x51 
   6460 4A 06              2472                     .word       SMVB_startMove_double 
   6462 E8 01 0E           2473                     .byte       -0x18, 0x01, 0x0E 
   6465 4B 23              2474                     .word       SMVB_startDraw_single 
   6467 E9 01 4B           2475                     .byte       -0x17, 0x01, 0x4B 
   646A 48 81              2476                     .word       SMVB_continue7_single 
   646C 23 01 CA           2477                     .byte       0x23, 0x01, -0x36 
   646F 05 01 31           2478                     .byte       0x05, 0x01, 0x31 
   6472 13 01 CF           2479                     .byte       0x13, 0x01, -0x31 
   6475 18 01 3F           2480                     .byte       0x18, 0x01, 0x3F 
   6478 FC 01 AC           2481                     .byte       -0x04, 0x01, -0x54 
   647B EF 01 F1           2482                     .byte       -0x11, 0x01, -0x0F 
   647E FE 00 00           2483                     .byte       0xfe, 0x00, 0x00 
   6481 4C 42              2484                     .word       SMVB_lastDraw_rts2 
                           2485  .globl _GiantList
   6483                    2486 _GiantList: 
   6483 D9 01 97           2487                     .byte       -0x27, 0x01, -0x69 
   6486 48 CF              2488                     .word       SMVB_continue_single 
   6488 02 01 E0           2489                     .byte       0x02, 0x01, -0x20 
   648B 4B 23              2490                     .word       SMVB_startDraw_single 
   648D 6E 01 00           2491                     .byte       0x6E, 0x01, 0x00 
   6490 48 CF              2492                     .word       SMVB_continue_single 
   6492 01 01 0C           2493                     .byte       0x01, 0x01, 0x0C 
   6495 48 DC              2494                     .word       SMVB_continue_yd4_single 
   6497 BE 01 0A           2495                     .byte       -0x42, 0x01, 0x0A 
   649A 49 93              2496                     .word       SMVB_continue_yd4_double 
   649C 7E 01 EA           2497                     .byte       0x7E, 0x01, -0x16 
   649F 4A 66              2498                     .word       SMVB_startMove_tripple 
   64A1 00 01 16           2499                     .byte       0x00, 0x01, 0x16 
   64A4 4B 23              2500                     .word       SMVB_startDraw_yd4_single 
   64A6 16 01 00           2501                     .byte       0x16, 0x01, 0x00 
   64A9 48 B5              2502                     .word       SMVB_continue3_single 
   64AB 00 01 EA           2503                     .byte       0x00, 0x01, -0x16 
   64AE EA 01 00           2504                     .byte       -0x16, 0x01, 0x00 
   64B1 E8 01 1B           2505                     .byte       -0x18, 0x01, 0x1B 
   64B4 49 D9              2506                     .word       SMVB_startMove_single 
   64B6 15 01 06           2507                     .byte       0x15, 0x01, 0x06 
   64B9 4B 23              2508                     .word       SMVB_startDraw_single 
   64BB 00 01 0A           2509                     .byte       0x00, 0x01, 0x0A 
   64BE 48 C2              2510                     .word       SMVB_continue2_single 
   64C0 EA 01 00           2511                     .byte       -0x16, 0x01, 0x00 
   64C3 1A 01 0C           2512                     .byte       0x1A, 0x01, 0x0C 
   64C6 49 D9              2513                     .word       SMVB_startMove_single 
   64C8 16 01 00           2514                     .byte       0x16, 0x01, 0x00 
   64CB 4B 23              2515                     .word       SMVB_startDraw_single 
   64CD 00 01 16           2516                     .byte       0x00, 0x01, 0x16 
   64D0 48 B5              2517                     .word       SMVB_continue3_single 
   64D2 EA 01 00           2518                     .byte       -0x16, 0x01, 0x00 
   64D5 00 01 EB           2519                     .byte       0x00, 0x01, -0x15 
   64D8 1F 01 29           2520                     .byte       0x1F, 0x01, 0x29 
   64DB 49 D9              2521                     .word       SMVB_startMove_single 
   64DD 0E 01 EB           2522                     .byte       0x0E, 0x01, -0x15 
   64E0 4B 23              2523                     .word       SMVB_startDraw_single 
   64E2 00 01 E8           2524                     .byte       0x00, 0x01, -0x18 
   64E5 48 81              2525                     .word       SMVB_continue7_single 
   64E7 0B 01 EF           2526                     .byte       0x0B, 0x01, -0x11 
   64EA F7 01 E9           2527                     .byte       -0x09, 0x01, -0x17 
   64ED 01 01 E7           2528                     .byte       0x01, 0x01, -0x19 
   64F0 D3 01 F3           2529                     .byte       -0x2D, 0x01, -0x0D 
   64F3 D1 01 00           2530                     .byte       -0x2F, 0x01, 0x00 
   64F6 F2 01 1B           2531                     .byte       -0x0E, 0x01, 0x1B 
   64F9 EA 01 15           2532                     .byte       -0x16, 0x01, 0x15 
   64FC 48 CF              2533                     .word       SMVB_continue_single 
   64FE 25 01 35           2534                     .byte       0x25, 0x01, 0x35 
   6501 49 D9              2535                     .word       SMVB_startMove_single 
   6503 F4 01 C9           2536                     .byte       -0x0C, 0x01, -0x37 
   6506 4B 23              2537                     .word       SMVB_startDraw_single 
   6508 16 01 EF           2538                     .byte       0x16, 0x01, -0x11 
   650B 48 C2              2539                     .word       SMVB_continue2_single 
   650D F7 01 49           2540                     .byte       -0x09, 0x01, 0x49 
   6510 B2 01 07           2541                     .byte       -0x4E, 0x01, 0x07 
   6513 49 D9              2542                     .word       SMVB_startMove_yd4_single 
   6515 E6 01 1A           2543                     .byte       -0x1A, 0x01, 0x1A 
   6518 4B 23              2544                     .word       SMVB_startDraw_single 
   651A C8 01 E3           2545                     .byte       -0x38, 0x01, -0x1D 
   651D 48 CF              2546                     .word       SMVB_continue_single 
   651F EB 01 11           2547                     .byte       -0x15, 0x01, 0x11 
   6522 49 D9              2548                     .word       SMVB_startMove_single 
   6524 1E 01 DB           2549                     .byte       0x1E, 0x01, -0x25 
   6527 4B 23              2550                     .word       SMVB_startDraw_single 
   6529 F6 01 AC           2551                     .byte       -0x0A, 0x01, -0x54 
   652C 48 CF              2552                     .word       SMVB_continue_single 
   652E 06 01 B4           2553                     .byte       0x06, 0x01, -0x4C 
   6531 49 D9              2554                     .word       SMVB_startMove_single 
   6533 A2 01 0A           2555                     .byte       -0x5E, 0x01, 0x0A 
   6536 4B 23              2556                     .word       SMVB_startDraw_yd4_single 
   6538 FD 01 F2           2557                     .byte       -0x03, 0x01, -0x0E 
   653B 48 81              2558                     .word       SMVB_continue7_single 
   653D F1 01 00           2559                     .byte       -0x0F, 0x01, 0x00 
   6540 E8 01 E2           2560                     .byte       -0x18, 0x01, -0x1E 
   6543 02 01 1C           2561                     .byte       0x02, 0x01, 0x1C 
   6546 E4 01 01           2562                     .byte       -0x1C, 0x01, 0x01 
   6549 06 01 16           2563                     .byte       0x06, 0x01, 0x16 
   654C EA 01 0A           2564                     .byte       -0x16, 0x01, 0x0A 
   654F 18 01 0B           2565                     .byte       0x18, 0x01, 0x0B 
   6552 48 81              2566                     .word       SMVB_continue7_single 
   6554 02 01 14           2567                     .byte       0x02, 0x01, 0x14 
   6557 14 01 00           2568                     .byte       0x14, 0x01, 0x00 
   655A 12 01 17           2569                     .byte       0x12, 0x01, 0x17 
   655D 06 01 EC           2570                     .byte       0x06, 0x01, -0x14 
   6560 18 01 FE           2571                     .byte       0x18, 0x01, -0x02 
   6563 FB 01 E9           2572                     .byte       -0x05, 0x01, -0x17 
   6566 5D 01 EC           2573                     .byte       0x5D, 0x01, -0x14 
   6569 48 CF              2574                     .word       SMVB_continue_single 
   656B 3B 01 11           2575                     .byte       0x3B, 0x01, 0x11 
   656E 49 D9              2576                     .word       SMVB_startMove_single 
   6570 16 01 17           2577                     .byte       0x16, 0x01, 0x17 
   6573 4B 23              2578                     .word       SMVB_startDraw_single 
   6575 D6 01 FA           2579                     .byte       -0x2A, 0x01, -0x06 
   6578 48 DC              2580                     .word       SMVB_continue_yd4_single 
   657A D1 01 10           2581                     .byte       -0x2F, 0x01, 0x10 
   657D 48 CF              2582                     .word       SMVB_continue_single 
   657F A8 01 08           2583                     .byte       -0x58, 0x01, 0x08 
   6582 49 85              2584                     .word       SMVB_continue_double 
   6584 00 01 57           2585                     .byte       0x00, 0x01, 0x57 
   6587 49 85              2586                     .word       SMVB_continue_double 
   6589 16 01 E3           2587                     .byte       0x16, 0x01, -0x1D 
   658C 48 C2              2588                     .word       SMVB_continue2_single 
   658E 00 01 E0           2589                     .byte       0x00, 0x01, -0x20 
   6591 42 01 00           2590                     .byte       0x42, 0x01, 0x00 
   6594 49 85              2591                     .word       SMVB_continue_double 
   6596 00 01 17           2592                     .byte       0x00, 0x01, 0x17 
   6599 48 DE              2593                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   659B 2C 01 13           2594                     .byte       0x2C, 0x01, 0x13 
   659E 48 81              2595                     .word       SMVB_continue7_single 
   65A0 36 01 04           2596                     .byte       0x36, 0x01, 0x04 
   65A3 20 01 E5           2597                     .byte       0x20, 0x01, -0x1B 
   65A6 08 01 D2           2598                     .byte       0x08, 0x01, -0x2E 
   65A9 16 01 05           2599                     .byte       0x16, 0x01, 0x05 
   65AC 10 01 16           2600                     .byte       0x10, 0x01, 0x16 
   65AF 64 01 00           2601                     .byte       0x64, 0x01, 0x00 
   65B2 12 01 EF           2602                     .byte       0x12, 0x01, -0x11 
   65B5 48 DC              2603                     .word       SMVB_continue_yd4_single 
   65B7 09 01 E4           2604                     .byte       0x09, 0x01, -0x1C 
   65BA 48 A8              2605                     .word       SMVB_continue4_single 
   65BC 00 01 B2           2606                     .byte       0x00, 0x01, -0x4E 
   65BF F6 01 E8           2607                     .byte       -0x0A, 0x01, -0x18 
   65C2 E9 01 F7           2608                     .byte       -0x17, 0x01, -0x09 
   65C5 A3 01 FA           2609                     .byte       -0x5D, 0x01, -0x06 
   65C8 48 DC              2610                     .word       SMVB_continue_yd4_single 
   65CA ED 01 1C           2611                     .byte       -0x13, 0x01, 0x1C 
   65CD 48 9B              2612                     .word       SMVB_continue5_single 
   65CF C7 01 C4           2613                     .byte       -0x39, 0x01, -0x3C 
   65D2 B0 01 F0           2614                     .byte       -0x50, 0x01, -0x10 
   65D5 10 01 29           2615                     .byte       0x10, 0x01, 0x29 
   65D8 33 01 08           2616                     .byte       0x33, 0x01, 0x08 
   65DB FE 00 00           2617                     .byte       0xfe, 0x00, 0x00 
   65DE 4C 42              2618                     .word       SMVB_lastDraw_rts2 
                           2619  .globl _SpecterList
   65E0                    2620 _SpecterList: 
   65E0 3E 01 A4           2621                     .byte       0x3E, 0x01, -0x5C 
   65E3 48 CF              2622                     .word       SMVB_continue_single 
   65E5 CE 01 FB           2623                     .byte       -0x32, 0x01, -0x05 
   65E8 4B 23              2624                     .word       SMVB_startDraw_yd4_single 
   65EA F4 01 0C           2625                     .byte       -0x0C, 0x01, 0x0C 
   65ED 48 9B              2626                     .word       SMVB_continue5_single 
   65EF FB 01 13           2627                     .byte       -0x05, 0x01, 0x13 
   65F2 F9 01 0D           2628                     .byte       -0x07, 0x01, 0x0D 
   65F5 16 01 1E           2629                     .byte       0x16, 0x01, 0x1E 
   65F8 71 01 21           2630                     .byte       0x71, 0x01, 0x21 
   65FB 25 01 00           2631                     .byte       0x25, 0x01, 0x00 
   65FE 48 DC              2632                     .word       SMVB_continue_yd4_single 
   6600 11 01 EC           2633                     .byte       0x11, 0x01, -0x14 
   6603 48 81              2634                     .word       SMVB_continue7_single 
   6605 21 01 06           2635                     .byte       0x21, 0x01, 0x06 
   6608 01 01 10           2636                     .byte       0x01, 0x01, 0x10 
   660B F1 01 14           2637                     .byte       -0x0F, 0x01, 0x14 
   660E 05 01 0E           2638                     .byte       0x05, 0x01, 0x0E 
   6611 10 01 FF           2639                     .byte       0x10, 0x01, -0x01 
   6614 0C 01 EB           2640                     .byte       0x0C, 0x01, -0x15 
   6617 01 01 BC           2641                     .byte       0x01, 0x01, -0x44 
   661A 48 81              2642                     .word       SMVB_continue7_single 
   661C 09 01 F9           2643                     .byte       0x09, 0x01, -0x07 
   661F 00 01 B1           2644                     .byte       0x00, 0x01, -0x4F 
   6622 F5 01 F5           2645                     .byte       -0x0B, 0x01, -0x0B 
   6625 DE 01 FD           2646                     .byte       -0x22, 0x01, -0x03 
   6628 E6 01 0B           2647                     .byte       -0x1A, 0x01, 0x0B 
   662B 08 01 E1           2648                     .byte       0x08, 0x01, -0x1F 
   662E 00 01 DE           2649                     .byte       0x00, 0x01, -0x22 
   6631 48 81              2650                     .word       SMVB_continue7_single 
   6633 F3 01 F6           2651                     .byte       -0x0D, 0x01, -0x0A 
   6636 DA 01 05           2652                     .byte       -0x26, 0x01, 0x05 
   6639 FF 01 39           2653                     .byte       -0x01, 0x01, 0x39 
   663C F3 01 F6           2654                     .byte       -0x0D, 0x01, -0x0A 
   663F D1 01 ED           2655                     .byte       -0x2F, 0x01, -0x13 
   6642 CE 01 01           2656                     .byte       -0x32, 0x01, 0x01 
   6645 F4 01 F5           2657                     .byte       -0x0C, 0x01, -0x0B 
   6648 48 81              2658                     .word       SMVB_continue7_single 
   664A FC 01 F3           2659                     .byte       -0x04, 0x01, -0x0D 
   664D F8 01 00           2660                     .byte       -0x08, 0x01, 0x00 
   6650 01 01 2A           2661                     .byte       0x01, 0x01, 0x2A 
   6653 07 01 09           2662                     .byte       0x07, 0x01, 0x09 
   6656 04 01 1B           2663                     .byte       0x04, 0x01, 0x1B 
   6659 0C 01 0C           2664                     .byte       0x0C, 0x01, 0x0C 
   665C 23 01 FA           2665                     .byte       0x23, 0x01, -0x06 
   665F 48 C2              2666                     .word       SMVB_continue2_single 
   6661 0E 01 16           2667                     .byte       0x0E, 0x01, 0x16 
   6664 75 01 ED           2668                     .byte       0x75, 0x01, -0x13 
   6667 49 D9              2669                     .word       SMVB_startMove_single 
   6669 0A 01 F6           2670                     .byte       0x0A, 0x01, -0x0A 
   666C 4B 23              2671                     .word       SMVB_startDraw_yd4_single 
   666E 14 01 FF           2672                     .byte       0x14, 0x01, -0x01 
   6671 48 81              2673                     .word       SMVB_continue7_single 
   6673 11 01 08           2674                     .byte       0x11, 0x01, 0x08 
   6676 FF 01 2D           2675                     .byte       -0x01, 0x01, 0x2D 
   6679 F1 01 0B           2676                     .byte       -0x0F, 0x01, 0x0B 
   667C E5 01 F5           2677                     .byte       -0x1B, 0x01, -0x0B 
   667F EC 01 FB           2678                     .byte       -0x14, 0x01, -0x05 
   6682 F4 01 0B           2679                     .byte       -0x0C, 0x01, 0x0B 
   6685 00 01 22           2680                     .byte       0x00, 0x01, 0x22 
   6688 48 81              2681                     .word       SMVB_continue7_single 
   668A 07 01 0C           2682                     .byte       0x07, 0x01, 0x0C 
   668D EB 01 04           2683                     .byte       -0x15, 0x01, 0x04 
   6690 00 01 CC           2684                     .byte       0x00, 0x01, -0x34 
   6693 F3 01 F6           2685                     .byte       -0x0D, 0x01, -0x0A 
   6696 DA 01 00           2686                     .byte       -0x26, 0x01, 0x00 
   6699 DA 01 0F           2687                     .byte       -0x26, 0x01, 0x0F 
   669C DC 01 06           2688                     .byte       -0x24, 0x01, 0x06 
   669F 48 81              2689                     .word       SMVB_continue7_single 
   66A1 02 01 EF           2690                     .byte       0x02, 0x01, -0x11 
   66A4 23 01 FC           2691                     .byte       0x23, 0x01, -0x04 
   66A7 1B 01 F1           2692                     .byte       0x1B, 0x01, -0x0F 
   66AA FC 01 E8           2693                     .byte       -0x04, 0x01, -0x18 
   66AD E9 01 F0           2694                     .byte       -0x17, 0x01, -0x10 
   66B0 DF 01 FB           2695                     .byte       -0x21, 0x01, -0x05 
   66B3 FC 01 EF           2696                     .byte       -0x04, 0x01, -0x11 
   66B6 48 81              2697                     .word       SMVB_continue7_single 
   66B8 33 01 02           2698                     .byte       0x33, 0x01, 0x02 
   66BB 1C 01 0A           2699                     .byte       0x1C, 0x01, 0x0A 
   66BE 17 01 0C           2700                     .byte       0x17, 0x01, 0x0C 
   66C1 10 01 00           2701                     .byte       0x10, 0x01, 0x00 
   66C4 0A 01 CB           2702                     .byte       0x0A, 0x01, -0x35 
   66C7 0F 01 FA           2703                     .byte       0x0F, 0x01, -0x06 
   66CA 05 01 0C           2704                     .byte       0x05, 0x01, 0x0C 
   66CD 48 A8              2705                     .word       SMVB_continue4_single 
   66CF F4 01 35           2706                     .byte       -0x0C, 0x01, 0x35 
   66D2 0A 01 0C           2707                     .byte       0x0A, 0x01, 0x0C 
   66D5 11 01 00           2708                     .byte       0x11, 0x01, 0x00 
   66D8 24 01 02           2709                     .byte       0x24, 0x01, 0x02 
   66DB 49 D9              2710                     .word       SMVB_startMove_single 
   66DD F3 01 00           2711                     .byte       -0x0D, 0x01, 0x00 
   66E0 4B 23              2712                     .word       SMVB_startDraw_single 
   66E2 F8 01 07           2713                     .byte       -0x08, 0x01, 0x07 
   66E5 48 81              2714                     .word       SMVB_continue7_single 
   66E7 F7 01 02           2715                     .byte       -0x09, 0x01, 0x02 
   66EA 01 01 0E           2716                     .byte       0x01, 0x01, 0x0E 
   66ED 0D 01 02           2717                     .byte       0x0D, 0x01, 0x02 
   66F0 04 01 06           2718                     .byte       0x04, 0x01, 0x06 
   66F3 0D 01 00           2719                     .byte       0x0D, 0x01, 0x00 
   66F6 03 01 EF           2720                     .byte       0x03, 0x01, -0x11 
   66F9 FD 01 F1           2721                     .byte       -0x03, 0x01, -0x0F 
   66FC 48 CF              2722                     .word       SMVB_continue_single 
   66FE 00 01 3E           2723                     .byte       0x00, 0x01, 0x3E 
   6701 4A D2              2724                     .word       SMVB_startMove_yStays_single ; y was -0x03, now 0 
   6703 FF 01 0A           2725                     .byte       -0x01, 0x01, 0x0A 
   6706 4B 23              2726                     .word       SMVB_startDraw_single 
   6708 D6 01 00           2727                     .byte       -0x2A, 0x01, 0x00 
   670B 48 A8              2728                     .word       SMVB_continue4_single 
   670D 01 01 ED           2729                     .byte       0x01, 0x01, -0x13 
   6710 14 01 00           2730                     .byte       0x14, 0x01, 0x00 
   6713 16 01 08           2731                     .byte       0x16, 0x01, 0x08 
   6716 AB 01 01           2732                     .byte       -0x55, 0x01, 0x01 
   6719 49 D9              2733                     .word       SMVB_startMove_yd4_single 
   671B F4 01 F6           2734                     .byte       -0x0C, 0x01, -0x0A 
   671E 4B 23              2735                     .word       SMVB_startDraw_single 
   6720 E7 01 00           2736                     .byte       -0x19, 0x01, 0x00 
   6723 48 9B              2737                     .word       SMVB_continue5_single 
   6725 E7 01 0A           2738                     .byte       -0x19, 0x01, 0x0A 
   6728 07 01 0B           2739                     .byte       0x07, 0x01, 0x0B 
   672B 32 01 00           2740                     .byte       0x32, 0x01, 0x00 
   672E 04 01 F5           2741                     .byte       0x04, 0x01, -0x0B 
   6731 FE 00 00           2742                     .byte       0xfe, 0x00, 0x00 
   6734 4C 42              2743                     .word       SMVB_lastDraw_rts2 
                           2744  .globl _VampireList
   6736                    2745 _VampireList: 
   6736 4D 01 E4           2746                     .byte       0x4D, 0x01, -0x1C 
   6739 49 85              2747                     .word       SMVB_continue_double 
   673B F2 01 0D           2748                     .byte       -0x0E, 0x01, 0x0D 
   673E 4B 23              2749                     .word       SMVB_startDraw_yd4_single 
   6740 F6 01 0E           2750                     .byte       -0x0A, 0x01, 0x0E 
   6743 48 81              2751                     .word       SMVB_continue7_single 
   6745 00 01 39           2752                     .byte       0x00, 0x01, 0x39 
   6748 0B 01 0C           2753                     .byte       0x0B, 0x01, 0x0C 
   674B 02 01 2F           2754                     .byte       0x02, 0x01, 0x2F 
   674E F1 01 E2           2755                     .byte       -0x0F, 0x01, -0x1E 
   6751 EA 01 05           2756                     .byte       -0x16, 0x01, 0x05 
   6754 F5 01 0C           2757                     .byte       -0x0B, 0x01, 0x0C 
   6757 00 01 EA           2758                     .byte       0x00, 0x01, -0x16 
   675A 48 B5              2759                     .word       SMVB_continue3_single 
   675C 0B 01 F4           2760                     .byte       0x0B, 0x01, -0x0C 
   675F 00 01 D1           2761                     .byte       0x00, 0x01, -0x2F 
   6762 9D 01 00           2762                     .byte       -0x63, 0x01, 0x00 
   6765 48 DC              2763                     .word       SMVB_continue_yd4_single 
   6767 F3 01 FA           2764                     .byte       -0x0D, 0x01, -0x06 
   676A 48 81              2765                     .word       SMVB_continue7_single 
   676C F4 01 F0           2766                     .byte       -0x0C, 0x01, -0x10 
   676F 00 01 D7           2767                     .byte       0x00, 0x01, -0x29 
   6772 0C 01 FB           2768                     .byte       0x0C, 0x01, -0x05 
   6775 0D 01 0C           2769                     .byte       0x0D, 0x01, 0x0C 
   6778 32 01 0B           2770                     .byte       0x32, 0x01, 0x0B 
   677B 1D 01 03           2771                     .byte       0x1D, 0x01, 0x03 
   677E 21 01 FD           2772                     .byte       0x21, 0x01, -0x03 
   6781 48 B5              2773                     .word       SMVB_continue3_single 
   6783 18 01 F5           2774                     .byte       0x18, 0x01, -0x0B 
   6786 FD 01 F1           2775                     .byte       -0x03, 0x01, -0x0F 
   6789 AC 01 FA           2776                     .byte       -0x54, 0x01, -0x06 
   678C 48 DC              2777                     .word       SMVB_continue_yd4_single 
   678E D9 01 F5           2778                     .byte       -0x27, 0x01, -0x0B 
   6791 48 81              2779                     .word       SMVB_continue7_single 
   6793 DE 01 F6           2780                     .byte       -0x22, 0x01, -0x0A 
   6796 FD 01 C6           2781                     .byte       -0x03, 0x01, -0x3A 
   6799 0D 01 00           2782                     .byte       0x0D, 0x01, 0x00 
   679C 18 01 17           2783                     .byte       0x18, 0x01, 0x17 
   679F 21 01 12           2784                     .byte       0x21, 0x01, 0x12 
   67A2 26 01 0C           2785                     .byte       0x26, 0x01, 0x0C 
   67A5 0E 01 FD           2786                     .byte       0x0E, 0x01, -0x03 
   67A8 48 81              2787                     .word       SMVB_continue7_single 
   67AA F7 01 F2           2788                     .byte       -0x09, 0x01, -0x0E 
   67AD EB 01 FC           2789                     .byte       -0x15, 0x01, -0x04 
   67B0 E9 01 E6           2790                     .byte       -0x17, 0x01, -0x1A 
   67B3 FE 01 E5           2791                     .byte       -0x02, 0x01, -0x1B 
   67B6 17 01 FD           2792                     .byte       0x17, 0x01, -0x03 
   67B9 18 01 18           2793                     .byte       0x18, 0x01, 0x18 
   67BC 0B 01 0B           2794                     .byte       0x0B, 0x01, 0x0B 
   67BF 48 81              2795                     .word       SMVB_continue7_single 
   67C1 19 01 0C           2796                     .byte       0x19, 0x01, 0x0C 
   67C4 4B 01 00           2797                     .byte       0x4B, 0x01, 0x00 
   67C7 1A 01 17           2798                     .byte       0x1A, 0x01, 0x17 
   67CA 0D 01 16           2799                     .byte       0x0D, 0x01, 0x16 
   67CD 00 01 4F           2800                     .byte       0x00, 0x01, 0x4F 
   67D0 F3 01 16           2801                     .byte       -0x0D, 0x01, 0x16 
   67D3 F3 01 0C           2802                     .byte       -0x0D, 0x01, 0x0C 
   67D6 48 81              2803                     .word       SMVB_continue7_single 
   67D8 DB 01 00           2804                     .byte       -0x25, 0x01, 0x00 
   67DB E6 01 E8           2805                     .byte       -0x1A, 0x01, -0x18 
   67DE 00 01 A6           2806                     .byte       0x00, 0x01, -0x5A 
   67E1 0D 01 F5           2807                     .byte       0x0D, 0x01, -0x0B 
   67E4 1C 01 FA           2808                     .byte       0x1C, 0x01, -0x06 
   67E7 15 01 0B           2809                     .byte       0x15, 0x01, 0x0B 
   67EA 05 01 2E           2810                     .byte       0x05, 0x01, 0x2E 
   67ED 48 9B              2811                     .word       SMVB_continue5_single 
   67EF FB 01 32           2812                     .byte       -0x05, 0x01, 0x32 
   67F2 E4 01 07           2813                     .byte       -0x1C, 0x01, 0x07 
   67F5 EA 01 EC           2814                     .byte       -0x16, 0x01, -0x14 
   67F8 F2 01 DD           2815                     .byte       -0x0E, 0x01, -0x23 
   67FB 33 01 1A           2816                     .byte       0x33, 0x01, 0x1A 
   67FE 49 D9              2817                     .word       SMVB_startMove_single 
   6800 00 01 E9           2818                     .byte       0x00, 0x01, -0x17 
   6803 4B 23              2819                     .word       SMVB_startDraw_yd4_single 
   6805 F5 01 00           2820                     .byte       -0x0B, 0x01, 0x00 
   6808 48 B5              2821                     .word       SMVB_continue3_single 
   680A 00 01 17           2822                     .byte       0x00, 0x01, 0x17 
   680D 0B 01 00           2823                     .byte       0x0B, 0x01, 0x00 
   6810 F6 01 DE           2824                     .byte       -0x0A, 0x01, -0x22 
   6813 49 D9              2825                     .word       SMVB_startMove_single 
   6815 0B 01 00           2826                     .byte       0x0B, 0x01, 0x00 
   6818 4B 23              2827                     .word       SMVB_startDraw_single 
   681A 00 01 EB           2828                     .byte       0x00, 0x01, -0x15 
   681D 48 B5              2829                     .word       SMVB_continue3_single 
   681F F5 01 00           2830                     .byte       -0x0B, 0x01, 0x00 
   6822 00 01 15           2831                     .byte       0x00, 0x01, 0x15 
   6825 FE 00 00           2832                     .byte       0xfe, 0x00, 0x00 
   6828 4C 42              2833                     .word       SMVB_lastDraw_rts2 
                           2834  .globl _DemonList
   682A                    2835 _DemonList: 
   682A 5B 01 BE           2836                     .byte       0x5B, 0x01, -0x42 
   682D 49 85              2837                     .word       SMVB_continue_double 
   682F ED 01 14           2838                     .byte       -0x13, 0x01, 0x14 
   6832 4B 23              2839                     .word       SMVB_startDraw_yd4_single 
   6834 1B 01 3D           2840                     .byte       0x1B, 0x01, 0x3D 
   6837 48 CF              2841                     .word       SMVB_continue_single 
   6839 F5 01 16           2842                     .byte       -0x0B, 0x01, 0x16 
   683C 49 D9              2843                     .word       SMVB_startMove_single 
   683E DF 01 19           2844                     .byte       -0x21, 0x01, 0x19 
   6841 4B 23              2845                     .word       SMVB_startDraw_single 
   6843 F3 01 1A           2846                     .byte       -0x0D, 0x01, 0x1A 
   6846 48 8E              2847                     .word       SMVB_continue6_single 
   6848 EF 01 2E           2848                     .byte       -0x11, 0x01, 0x2E 
   684B E4 01 00           2849                     .byte       -0x1C, 0x01, 0x00 
   684E 02 01 DE           2850                     .byte       0x02, 0x01, -0x22 
   6851 0F 01 E3           2851                     .byte       0x0F, 0x01, -0x1D 
   6854 06 01 D7           2852                     .byte       0x06, 0x01, -0x29 
   6857 C4 01 1C           2853                     .byte       -0x3C, 0x01, 0x1C 
   685A 48 DC              2854                     .word       SMVB_continue_yd4_single 
   685C AE 01 0D           2855                     .byte       -0x52, 0x01, 0x0D 
   685F 48 A8              2856                     .word       SMVB_continue4_single 
   6861 EE 01 1D           2857                     .byte       -0x12, 0x01, 0x1D 
   6864 00 01 B5           2858                     .byte       0x00, 0x01, -0x4B 
   6867 5D 01 EE           2859                     .byte       0x5D, 0x01, -0x12 
   686A BE 01 0A           2860                     .byte       -0x42, 0x01, 0x0A 
   686D 49 D9              2861                     .word       SMVB_startMove_yd4_single 
   686F 15 01 E9           2862                     .byte       0x15, 0x01, -0x17 
   6872 4B 23              2863                     .word       SMVB_startDraw_single 
   6874 21 01 F0           2864                     .byte       0x21, 0x01, -0x10 
   6877 48 9B              2865                     .word       SMVB_continue5_single 
   6879 0E 01 EF           2866                     .byte       0x0E, 0x01, -0x11 
   687C F3 01 EB           2867                     .byte       -0x0D, 0x01, -0x15 
   687F D2 01 FF           2868                     .byte       -0x2E, 0x01, -0x01 
   6882 FD 01 E9           2869                     .byte       -0x03, 0x01, -0x17 
   6885 FE 01 C4           2870                     .byte       -0x02, 0x01, -0x3C 
   6888 49 D9              2871                     .word       SMVB_startMove_single 
   688A FF 01 D6           2872                     .byte       -0x01, 0x01, -0x2A 
   688D 4B 23              2873                     .word       SMVB_startDraw_single 
   688F 0B 01 E6           2874                     .byte       0x0B, 0x01, -0x1A 
   6892 48 CF              2875                     .word       SMVB_continue_single 
   6894 40 01 12           2876                     .byte       0x40, 0x01, 0x12 
   6897 49 85              2877                     .word       SMVB_continue_double 
   6899 27 01 F4           2878                     .byte       0x27, 0x01, -0x0C 
   689C 49 D9              2879                     .word       SMVB_startMove_single 
   689E 14 01 1A           2880                     .byte       0x14, 0x01, 0x1A 
   68A1 4B 23              2881                     .word       SMVB_startDraw_single 
   68A3 ED 01 FD           2882                     .byte       -0x13, 0x01, -0x03 
   68A6 49 D9              2883                     .word       SMVB_startMove_single 
   68A8 12 01 0B           2884                     .byte       0x12, 0x01, 0x0B 
   68AB 4B 23              2885                     .word       SMVB_startDraw_single 
   68AD 12 01 13           2886                     .byte       0x12, 0x01, 0x13 
   68B0 48 9B              2887                     .word       SMVB_continue5_single 
   68B2 1C 01 00           2888                     .byte       0x1C, 0x01, 0x00 
   68B5 1A 01 D0           2889                     .byte       0x1A, 0x01, -0x30 
   68B8 1D 01 F5           2890                     .byte       0x1D, 0x01, -0x0B 
   68BB 35 01 2E           2891                     .byte       0x35, 0x01, 0x2E 
   68BE E8 01 DD           2892                     .byte       -0x18, 0x01, -0x23 
   68C1 48 DC              2893                     .word       SMVB_continue_yd4_single 
   68C3 EB 01 E6           2894                     .byte       -0x15, 0x01, -0x1A 
   68C6 48 81              2895                     .word       SMVB_continue7_single 
   68C8 CD 01 12           2896                     .byte       -0x33, 0x01, 0x12 
   68CB EA 01 25           2897                     .byte       -0x16, 0x01, 0x25 
   68CE E9 01 F3           2898                     .byte       -0x17, 0x01, -0x0D 
   68D1 F9 01 E8           2899                     .byte       -0x07, 0x01, -0x18 
   68D4 EC 01 EB           2900                     .byte       -0x14, 0x01, -0x15 
   68D7 DB 01 20           2901                     .byte       -0x25, 0x01, 0x20 
   68DA EB 01 1D           2902                     .byte       -0x15, 0x01, 0x1D 
   68DD 48 C2              2903                     .word       SMVB_continue2_single 
   68DF 17 01 13           2904                     .byte       0x17, 0x01, 0x13 
   68E2 B4 01 0B           2905                     .byte       -0x4C, 0x01, 0x0B 
   68E5 48 DC              2906                     .word       SMVB_continue_yd4_single 
   68E7 AD 01 E7           2907                     .byte       -0x53, 0x01, -0x19 
   68EA 48 A8              2908                     .word       SMVB_continue4_single 
   68EC EE 01 DB           2909                     .byte       -0x12, 0x01, -0x25 
   68EF 00 01 56           2910                     .byte       0x00, 0x01, 0x56 
   68F2 5C 01 1E           2911                     .byte       0x5C, 0x01, 0x1E 
   68F5 0D 01 FB           2912                     .byte       0x0D, 0x01, -0x05 
   68F8 49 D9              2913                     .word       SMVB_startMove_yd4_single 
   68FA 42 01 48           2914                     .byte       0x42, 0x01, 0x48 
   68FD 4B 23              2915                     .word       SMVB_startDraw_single 
   68FF F2 01 A9           2916                     .byte       -0x0E, 0x01, -0x57 
   6902 48 DC              2917                     .word       SMVB_continue_yd4_single 
   6904 2F 01 42           2918                     .byte       0x2F, 0x01, 0x42 
   6907 48 CF              2919                     .word       SMVB_continue_single 
   6909 44 01 07           2920                     .byte       0x44, 0x01, 0x07 
   690C 49 D9              2921                     .word       SMVB_startMove_single 
   690E 00 01 E4           2922                     .byte       0x00, 0x01, -0x1C 
   6911 4B 23              2923                     .word       SMVB_startDraw_yd4_single 
   6913 10 01 00           2924                     .byte       0x10, 0x01, 0x00 
   6916 48 B5              2925                     .word       SMVB_continue3_single 
   6918 00 01 1C           2926                     .byte       0x00, 0x01, 0x1C 
   691B F0 01 00           2927                     .byte       -0x10, 0x01, 0x00 
   691E 86 01 2A           2928                     .byte       -0x7A, 0x01, 0x2A 
   6921 4A 06              2929                     .word       SMVB_startMove_yd4_double 
   6923 FF 01 26           2930                     .byte       -0x01, 0x01, 0x26 
   6926 4B 23              2931                     .word       SMVB_startDraw_single 
   6928 6F 01 F5           2932                     .byte       0x6F, 0x01, -0x0B 
   692B 48 CF              2933                     .word       SMVB_continue_single 
   692D 00 01 0C           2934                     .byte       0x00, 0x01, 0x0C 
   6930 49 D9              2935                     .word       SMVB_startMove_yd4_single 
   6932 DD 01 F9           2936                     .byte       -0x23, 0x01, -0x07 
   6935 4B 23              2937                     .word       SMVB_startDraw_single 
   6937 FD 01 20           2938                     .byte       -0x03, 0x01, 0x20 
   693A 48 C2              2939                     .word       SMVB_continue2_single 
   693C 25 01 F4           2940                     .byte       0x25, 0x01, -0x0C 
   693F 21 01 01           2941                     .byte       0x21, 0x01, 0x01 
   6942 49 D9              2942                     .word       SMVB_startMove_single 
   6944 32 01 03           2943                     .byte       0x32, 0x01, 0x03 
   6947 4B 23              2944                     .word       SMVB_startDraw_single 
   6949 7F 01 F3           2945                     .byte       0x7F, 0x01, -0x0D 
   694C 48 CF              2946                     .word       SMVB_continue_single 
   694E AB 01 FE           2947                     .byte       -0x55, 0x01, -0x02 
   6951 49 93              2948                     .word       SMVB_continue_yd4_double 
   6953 04 01 F4           2949                     .byte       0x04, 0x01, -0x0C 
   6956 49 D9              2950                     .word       SMVB_startMove_single 
   6958 59 01 ED           2951                     .byte       0x59, 0x01, -0x13 
   695B 4B 23              2952                     .word       SMVB_startDraw_single 
   695D 29 01 D8           2953                     .byte       0x29, 0x01, -0x28 
   6960 48 9B              2954                     .word       SMVB_continue5_single 
   6962 1E 01 D0           2955                     .byte       0x1E, 0x01, -0x30 
   6965 0C 01 D6           2956                     .byte       0x0C, 0x01, -0x2A 
   6968 E2 01 CA           2957                     .byte       -0x1E, 0x01, -0x36 
   696B C3 01 E5           2958                     .byte       -0x3D, 0x01, -0x1B 
   696E CB 01 C9           2959                     .byte       -0x35, 0x01, -0x37 
   6971 49 D9              2960                     .word       SMVB_startMove_single 
   6973 FF 01 23           2961                     .byte       -0x01, 0x01, 0x23 
   6976 4B 23              2962                     .word       SMVB_startDraw_single 
   6978 24 01 2E           2963                     .byte       0x24, 0x01, 0x2E 
   697B 48 C2              2964                     .word       SMVB_continue2_single 
   697D 49 01 16           2965                     .byte       0x49, 0x01, 0x16 
   6980 0B 01 32           2966                     .byte       0x0B, 0x01, 0x32 
   6983 48 DC              2967                     .word       SMVB_continue_yd4_single 
   6985 EE 01 27           2968                     .byte       -0x12, 0x01, 0x27 
   6988 48 A8              2969                     .word       SMVB_continue4_single 
   698A DA 01 0B           2970                     .byte       -0x26, 0x01, 0x0B 
   698D E6 01 24           2971                     .byte       -0x1A, 0x01, 0x24 
   6990 C7 01 1B           2972                     .byte       -0x39, 0x01, 0x1B 
   6993 32 01 AF           2973                     .byte       0x32, 0x01, -0x51 
   6996 4A 06              2974                     .word       SMVB_startMove_double 
   6998 00 01 1C           2975                     .byte       0x00, 0x01, 0x1C 
   699B 4B 23              2976                     .word       SMVB_startDraw_single 
   699D F0 01 00           2977                     .byte       -0x10, 0x01, 0x00 
   69A0 48 B5              2978                     .word       SMVB_continue3_single 
   69A2 00 01 E4           2979                     .byte       0x00, 0x01, -0x1C 
   69A5 10 01 00           2980                     .byte       0x10, 0x01, 0x00 
   69A8 FE 00 00           2981                     .byte       0xfe, 0x00, 0x00 
   69AB 4C 42              2982                     .word       SMVB_lastDraw_rts2 
                           2983  .globl _DragonList
   69AD                    2984 _DragonList: 
   69AD D9 01 F6           2985                     .byte       -0x27, 0x01, -0x0A 
   69B0 48 CF              2986                     .word       SMVB_continue_single 
   69B2 F3 01 03           2987                     .byte       -0x0D, 0x01, 0x03 
   69B5 4B 23              2988                     .word       SMVB_startDraw_single 
   69B7 FA 01 10           2989                     .byte       -0x06, 0x01, 0x10 
   69BA 48 B5              2990                     .word       SMVB_continue3_single 
   69BC 03 01 09           2991                     .byte       0x03, 0x01, 0x09 
   69BF 10 01 E4           2992                     .byte       0x10, 0x01, -0x1C 
   69C2 E7 01 A3           2993                     .byte       -0x19, 0x01, -0x5D 
   69C5 4A 66              2994                     .word       SMVB_startMove_tripple 
   69C7 0C 01 0E           2995                     .byte       0x0C, 0x01, 0x0E 
   69CA 4B 23              2996                     .word       SMVB_startDraw_single 
   69CC 0B 01 0D           2997                     .byte       0x0B, 0x01, 0x0D 
   69CF 48 A8              2998                     .word       SMVB_continue4_single 
   69D1 0D 01 15           2999                     .byte       0x0D, 0x01, 0x15 
   69D4 0A 01 18           3000                     .byte       0x0A, 0x01, 0x18 
   69D7 09 01 19           3001                     .byte       0x09, 0x01, 0x19 
   69DA D5 01 0E           3002                     .byte       -0x2B, 0x01, 0x0E 
   69DD 49 D9              3003                     .word       SMVB_startMove_yd4_single 
   69DF 12 01 10           3004                     .byte       0x12, 0x01, 0x10 
   69E2 4B 23              3005                     .word       SMVB_startDraw_single 
   69E4 DE 01 9D           3006                     .byte       -0x22, 0x01, -0x63 
   69E7 49 D9              3007                     .word       SMVB_startMove_yd4_single 
   69E9 0F 01 2C           3008                     .byte       0x0F, 0x01, 0x2C 
   69EC 4B 23              3009                     .word       SMVB_startDraw_single 
   69EE 00 01 25           3010                     .byte       0x00, 0x01, 0x25 
   69F1 48 CF              3011                     .word       SMVB_continue_single 
   69F3 11 01 10           3012                     .byte       0x11, 0x01, 0x10 
   69F6 49 D9              3013                     .word       SMVB_startMove_single 
   69F8 1B 01 01           3014                     .byte       0x1B, 0x01, 0x01 
   69FB 4B 23              3015                     .word       SMVB_startDraw_single 
   69FD 19 01 FE           3016                     .byte       0x19, 0x01, -0x02 
   6A00 48 81              3017                     .word       SMVB_continue7_single 
   6A02 1C 01 F1           3018                     .byte       0x1C, 0x01, -0x0F 
   6A05 09 01 F1           3019                     .byte       0x09, 0x01, -0x0F 
   6A08 00 01 EA           3020                     .byte       0x00, 0x01, -0x16 
   6A0B EB 01 D0           3021                     .byte       -0x15, 0x01, -0x30 
   6A0E DF 01 BC           3022                     .byte       -0x21, 0x01, -0x44 
   6A11 ED 01 DB           3023                     .byte       -0x13, 0x01, -0x25 
   6A14 F3 01 ED           3024                     .byte       -0x0D, 0x01, -0x13 
   6A17 48 C2              3025                     .word       SMVB_continue2_single 
   6A19 F5 01 F5           3026                     .byte       -0x0B, 0x01, -0x0B 
   6A1C EF 01 1F           3027                     .byte       -0x11, 0x01, 0x1F 
   6A1F 49 D9              3028                     .word       SMVB_startMove_single 
   6A21 F4 01 F0           3029                     .byte       -0x0C, 0x01, -0x10 
   6A24 4B 23              3030                     .word       SMVB_startDraw_single 
   6A26 F3 01 E8           3031                     .byte       -0x0D, 0x01, -0x18 
   6A29 48 81              3032                     .word       SMVB_continue7_single 
   6A2B F5 01 E2           3033                     .byte       -0x0B, 0x01, -0x1E 
   6A2E F1 01 ED           3034                     .byte       -0x0F, 0x01, -0x13 
   6A31 DF 01 F5           3035                     .byte       -0x21, 0x01, -0x0B 
   6A34 F5 01 35           3036                     .byte       -0x0B, 0x01, 0x35 
   6A37 07 01 40           3037                     .byte       0x07, 0x01, 0x40 
   6A3A 04 01 CF           3038                     .byte       0x04, 0x01, -0x31 
   6A3D 0C 01 E9           3039                     .byte       0x0C, 0x01, -0x17 
   6A40 48 A8              3040                     .word       SMVB_continue4_single 
   6A42 0A 01 00           3041                     .byte       0x0A, 0x01, 0x00 
   6A45 0C 01 17           3042                     .byte       0x0C, 0x01, 0x17 
   6A48 02 01 2C           3043                     .byte       0x02, 0x01, 0x2C 
   6A4B 05 01 FB           3044                     .byte       0x05, 0x01, -0x05 
   6A4E 49 D9              3045                     .word       SMVB_startMove_single 
   6A50 E1 01 1A           3046                     .byte       -0x1F, 0x01, 0x1A 
   6A53 4B 23              3047                     .word       SMVB_startDraw_single 
   6A55 F6 01 0F           3048                     .byte       -0x0A, 0x01, 0x0F 
   6A58 48 8E              3049                     .word       SMVB_continue6_single 
   6A5A FF 01 36           3050                     .byte       -0x01, 0x01, 0x36 
   6A5D 09 01 01           3051                     .byte       0x09, 0x01, 0x01 
   6A60 03 01 E8           3052                     .byte       0x03, 0x01, -0x18 
   6A63 0A 01 F4           3053                     .byte       0x0A, 0x01, -0x0C 
   6A66 0E 01 16           3054                     .byte       0x0E, 0x01, 0x16 
   6A69 FC 01 FA           3055                     .byte       -0x04, 0x01, -0x06 
   6A6C 49 D9              3056                     .word       SMVB_startMove_single 
   6A6E 01 01 4E           3057                     .byte       0x01, 0x01, 0x4E 
   6A71 4B 23              3058                     .word       SMVB_startDraw_single 
   6A73 10 01 F9           3059                     .byte       0x10, 0x01, -0x07 
   6A76 49 D9              3060                     .word       SMVB_startMove_single 
   6A78 E6 01 0B           3061                     .byte       -0x1A, 0x01, 0x0B 
   6A7B 4B 23              3062                     .word       SMVB_startDraw_single 
   6A7D EA 01 16           3063                     .byte       -0x16, 0x01, 0x16 
   6A80 48 81              3064                     .word       SMVB_continue7_single 
   6A82 FF 01 43           3065                     .byte       -0x01, 0x01, 0x43 
   6A85 09 01 FC           3066                     .byte       0x09, 0x01, -0x04 
   6A88 0C 01 DC           3067                     .byte       0x0C, 0x01, -0x24 
   6A8B 24 01 11           3068                     .byte       0x24, 0x01, 0x11 
   6A8E 16 01 17           3069                     .byte       0x16, 0x01, 0x17 
   6A91 16 01 16           3070                     .byte       0x16, 0x01, 0x16 
   6A94 16 01 17           3071                     .byte       0x16, 0x01, 0x17 
   6A97 48 81              3072                     .word       SMVB_continue7_single 
   6A99 07 01 0C           3073                     .byte       0x07, 0x01, 0x0C 
   6A9C 03 01 0A           3074                     .byte       0x03, 0x01, 0x0A 
   6A9F E0 01 15           3075                     .byte       -0x20, 0x01, 0x15 
   6AA2 F9 01 14           3076                     .byte       -0x07, 0x01, 0x14 
   6AA5 E4 01 30           3077                     .byte       -0x1C, 0x01, 0x30 
   6AA8 28 01 FC           3078                     .byte       0x28, 0x01, -0x04 
   6AAB 32 01 F3           3079                     .byte       0x32, 0x01, -0x0D 
   6AAE 48 81              3080                     .word       SMVB_continue7_single 
   6AB0 0A 01 CD           3081                     .byte       0x0A, 0x01, -0x33 
   6AB3 07 01 FB           3082                     .byte       0x07, 0x01, -0x05 
   6AB6 08 01 1D           3083                     .byte       0x08, 0x01, 0x1D 
   6AB9 07 01 FF           3084                     .byte       0x07, 0x01, -0x01 
   6ABC 0B 01 E9           3085                     .byte       0x0B, 0x01, -0x17 
   6ABF 01 01 D5           3086                     .byte       0x01, 0x01, -0x2B 
   6AC2 09 01 FC           3087                     .byte       0x09, 0x01, -0x04 
   6AC5 48 81              3088                     .word       SMVB_continue7_single 
   6AC7 0B 01 ED           3089                     .byte       0x0B, 0x01, -0x13 
   6ACA 00 01 E9           3090                     .byte       0x00, 0x01, -0x17 
   6ACD 00 01 EF           3091                     .byte       0x00, 0x01, -0x11 
   6AD0 FC 01 F8           3092                     .byte       -0x04, 0x01, -0x08 
   6AD3 F0 01 ED           3093                     .byte       -0x10, 0x01, -0x13 
   6AD6 0C 01 EA           3094                     .byte       0x0C, 0x01, -0x16 
   6AD9 08 01 EA           3095                     .byte       0x08, 0x01, -0x16 
   6ADC 48 81              3096                     .word       SMVB_continue7_single 
   6ADE 00 01 EC           3097                     .byte       0x00, 0x01, -0x14 
   6AE1 EF 01 D5           3098                     .byte       -0x11, 0x01, -0x2B 
   6AE4 DD 01 BB           3099                     .byte       -0x23, 0x01, -0x45 
   6AE7 DF 01 BF           3100                     .byte       -0x21, 0x01, -0x41 
   6AEA E1 01 C6           3101                     .byte       -0x1F, 0x01, -0x3A 
   6AED D4 01 DA           3102                     .byte       -0x2C, 0x01, -0x26 
   6AF0 10 01 32           3103                     .byte       0x10, 0x01, 0x32 
   6AF3 48 C2              3104                     .word       SMVB_continue2_single 
   6AF5 06 01 4D           3105                     .byte       0x06, 0x01, 0x4D 
   6AF8 05 01 06           3106                     .byte       0x05, 0x01, 0x06 
   6AFB 49 D9              3107                     .word       SMVB_startMove_single 
   6AFD 09 01 09           3108                     .byte       0x09, 0x01, 0x09 
   6B00 4B 54              3109                     .word       SMVB_startDraw_yEqx_single   ; y is 0x09 
   6B02 18 01 2A           3110                     .byte       0x18, 0x01, 0x2A 
   6B05 48 A8              3111                     .word       SMVB_continue4_single 
   6B07 15 01 2D           3112                     .byte       0x15, 0x01, 0x2D 
   6B0A 12 01 2D           3113                     .byte       0x12, 0x01, 0x2D 
   6B0D 05 01 12           3114                     .byte       0x05, 0x01, 0x12 
   6B10 11 01 38           3115                     .byte       0x11, 0x01, 0x38 
   6B13 49 D9              3116                     .word       SMVB_startMove_single 
   6B15 EF 01 14           3117                     .byte       -0x11, 0x01, 0x14 
   6B18 4B 23              3118                     .word       SMVB_startDraw_single 
   6B1A F3 01 06           3119                     .byte       -0x0D, 0x01, 0x06 
   6B1D 48 A8              3120                     .word       SMVB_continue4_single 
   6B1F ED 01 02           3121                     .byte       -0x13, 0x01, 0x02 
   6B22 EA 01 F3           3122                     .byte       -0x16, 0x01, -0x0D 
   6B25 F3 01 F6           3123                     .byte       -0x0D, 0x01, -0x0A 
   6B28 14 01 10           3124                     .byte       0x14, 0x01, 0x10 
   6B2B 49 D9              3125                     .word       SMVB_startMove_single 
   6B2D 13 01 0A           3126                     .byte       0x13, 0x01, 0x0A 
   6B30 4B 23              3127                     .word       SMVB_startDraw_single 
   6B32 05 01 04           3128                     .byte       0x05, 0x01, 0x04 
   6B35 48 C2              3129                     .word       SMVB_continue2_single 
   6B37 10 01 21           3130                     .byte       0x10, 0x01, 0x21 
   6B3A 12 01 0F           3131                     .byte       0x12, 0x01, 0x0F 
   6B3D 49 D9              3132                     .word       SMVB_startMove_single 
   6B3F 0A 01 EE           3133                     .byte       0x0A, 0x01, -0x12 
   6B42 4B 23              3134                     .word       SMVB_startDraw_single 
   6B44 05 01 F1           3135                     .byte       0x05, 0x01, -0x0F 
   6B47 48 B5              3136                     .word       SMVB_continue3_single 
   6B49 02 01 EC           3137                     .byte       0x02, 0x01, -0x14 
   6B4C 02 01 DE           3138                     .byte       0x02, 0x01, -0x22 
   6B4F FE 00 00           3139                     .byte       0xfe, 0x00, 0x00 
   6B52 4C 42              3140                     .word       SMVB_lastDraw_rts2 
                           3141  .globl _SpellIcons
   6B54                    3142 _SpellIcons: 
   6B54 6B 6A              3143                     .word       _SpellIcons_0                 ; list of all single vectorlists in this 
   6B56 6B 8D              3144                     .word       _SpellIcons_1 
   6B58 6B AD              3145                     .word       _SpellIcons_2 
   6B5A 6B FD              3146                     .word       _SpellIcons_3 
   6B5C 6C 1F              3147                     .word       _SpellIcons_4 
   6B5E 6C 51              3148                     .word       _SpellIcons_5 
   6B60 6C 74              3149                     .word       _SpellIcons_6 
   6B62 6C 97              3150                     .word       _SpellIcons_7 
   6B64 6C BB              3151                     .word       _SpellIcons_8 
   6B66 6D 01              3152                     .word       _SpellIcons_9 
   6B68 6D 2D              3153                     .word       _SpellIcons_10 
                           3154  .globl _SpellIcons_0
   6B6A                    3155 _SpellIcons_0: 
   6B6A 14 01 18           3156                     .byte       0x14, 0x01, 0x18 
   6B6D 48 CF              3157                     .word       SMVB_continue_single 
   6B6F 01 01 F1           3158                     .byte       SHITREG_POKE_VALUE, 0x01, -0x0F 
   6B72 4A E8              3159                     .word       SMVB_startDraw_yStays_single ; y was 0x14, now SHIFT Poke 
   6B74 00 01 E3           3160                     .byte       0x00, 0x01, -0x1D 
   6B77 48 8E              3161                     .word       SMVB_continue6_single 
   6B79 E3 01 F2           3162                     .byte       -0x1D, 0x01, -0x0E 
   6B7C E8 01 37           3163                     .byte       -0x18, 0x01, 0x37 
   6B7F E3 01 FB           3164                     .byte       -0x1D, 0x01, -0x05 
   6B82 00 01 D8           3165                     .byte       0x00, 0x01, -0x28 
   6B85 1F 01 F1           3166                     .byte       0x1F, 0x01, -0x0F 
   6B88 FE 00 00           3167                     .byte       0xfe, 0x00, 0x00 
   6B8B 4C 42              3168                     .word       SMVB_lastDraw_rts2 
                           3169  .globl _SpellIcons_1
   6B8D                    3170 _SpellIcons_1: 
   6B8D 26 01 F2           3171                     .byte       0x26, 0x01, -0x0E 
   6B90 48 CF              3172                     .word       SMVB_continue_single 
   6B92 00 01 1A           3173                     .byte       0x00, 0x01, 0x1A 
   6B95 4B 23              3174                     .word       SMVB_startDraw_single 
   6B97 E8 01 12           3175                     .byte       -0x18, 0x01, 0x12 
   6B9A 48 9B              3176                     .word       SMVB_continue5_single 
   6B9C E3 01 00           3177                     .byte       -0x1D, 0x01, 0x00 
   6B9F E7 01 F2           3178                     .byte       -0x19, 0x01, -0x0E 
   6BA2 00 01 E2           3179                     .byte       0x00, 0x01, -0x1E 
   6BA5 4E 01 00           3180                     .byte       0x4E, 0x01, 0x00 
   6BA8 FE 00 00           3181                     .byte       0xfe, 0x00, 0x00 
   6BAB 4C 42              3182                     .word       SMVB_lastDraw_rts2 
                           3183  .globl _SpellIcons_2
   6BAD                    3184 _SpellIcons_2: 
   6BAD 14 01 F1           3185                     .byte       0x14, 0x01, -0x0F 
   6BB0 48 CF              3186                     .word       SMVB_continue_single 
   6BB2 C7 01 00           3187                     .byte       -0x39, 0x01, 0x00 
   6BB5 4B 23              3188                     .word       SMVB_startDraw_yd4_single 
   6BB7 00 01 24           3189                     .byte       0x00, 0x01, 0x24 
   6BBA 48 D1              3190                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   6BBC 43 01 DC           3191                     .byte       0x43, 0x01, -0x24 
   6BBF 49 D9              3192                     .word       SMVB_startMove_single 
   6BC1 17 01 00           3193                     .byte       0x17, 0x01, 0x00 
   6BC4 4B 23              3194                     .word       SMVB_startDraw_single 
   6BC6 D6 01 0B           3195                     .byte       -0x2A, 0x01, 0x0B 
   6BC9 49 D9              3196                     .word       SMVB_startMove_yd4_single 
   6BCB 0E 01 11           3197                     .byte       0x0E, 0x01, 0x11 
   6BCE 4B 23              3198                     .word       SMVB_startDraw_single 
   6BD0 ED 01 CE           3199                     .byte       -0x13, 0x01, -0x32 
   6BD3 49 D9              3200                     .word       SMVB_startMove_single 
   6BD5 F6 01 0B           3201                     .byte       -0x0A, 0x01, 0x0B 
   6BD8 4B 23              3202                     .word       SMVB_startDraw_single 
   6BDA 0A 01 28           3203                     .byte       0x0A, 0x01, 0x28 
   6BDD 49 D9              3204                     .word       SMVB_startMove_single 
   6BDF F7 01 F0           3205                     .byte       -0x09, 0x01, -0x10 
   6BE2 4B 23              3206                     .word       SMVB_startDraw_single 
   6BE4 2C 01 03           3207                     .byte       0x2C, 0x01, 0x03 
   6BE7 49 D9              3208                     .word       SMVB_startMove_single 
   6BE9 F0 01 F9           3209                     .byte       -0x10, 0x01, -0x07 
   6BEC 4B 23              3210                     .word       SMVB_startDraw_yd4_single 
   6BEE F8 01 ED           3211                     .byte       -0x08, 0x01, -0x13 
   6BF1 49 D9              3212                     .word       SMVB_startMove_single 
   6BF3 0A 01 F9           3213                     .byte       0x0A, 0x01, -0x07 
   6BF6 4B 23              3214                     .word       SMVB_startDraw_single 
   6BF8 FE 00 00           3215                     .byte       0xfe, 0x00, 0x00 
   6BFB 4C 42              3216                     .word       SMVB_lastDraw_rts2 
                           3217  .globl _SpellIcons_3
   6BFD                    3218 _SpellIcons_3: 
   6BFD D7 01 F5           3219                     .byte       -0x29, 0x01, -0x0B 
   6C00 48 CF              3220                     .word       SMVB_continue_single 
   6C02 53 01 00           3221                     .byte       0x53, 0x01, 0x00 
   6C05 4B 23              3222                     .word       SMVB_startDraw_single 
   6C07 00 01 15           3223                     .byte       0x00, 0x01, 0x15 
   6C0A 48 DE              3224                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   6C0C F4 01 0E           3225                     .byte       -0x0C, 0x01, 0x0E 
   6C0F 48 A8              3226                     .word       SMVB_continue4_single 
   6C11 EC 01 00           3227                     .byte       -0x14, 0x01, 0x00 
   6C14 F2 01 F4           3228                     .byte       -0x0E, 0x01, -0x0C 
   6C17 00 01 E9           3229                     .byte       0x00, 0x01, -0x17 
   6C1A FE 00 00           3230                     .byte       0xfe, 0x00, 0x00 
   6C1D 4C 42              3231                     .word       SMVB_lastDraw_rts2 
                           3232  .globl _SpellIcons_4
   6C1F                    3233 _SpellIcons_4: 
   6C1F 25 01 EE           3234                     .byte       0x25, 0x01, -0x12 
   6C22 48 CF              3235                     .word       SMVB_continue_single 
   6C24 C7 01 00           3236                     .byte       -0x39, 0x01, 0x00 
   6C27 4B 23              3237                     .word       SMVB_startDraw_yd4_single 
   6C29 00 01 24           3238                     .byte       0x00, 0x01, 0x24 
   6C2C 48 D1              3239                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   6C2E ED 01 E3           3240                     .byte       -0x13, 0x01, -0x1D 
   6C31 49 D9              3241                     .word       SMVB_startMove_single 
   6C33 00 01 1A           3242                     .byte       0x00, 0x01, 0x1A 
   6C36 4B 23              3243                     .word       SMVB_startDraw_single 
   6C38 05 01 E9           3244                     .byte       0x05, 0x01, -0x17 
   6C3B 49 D9              3245                     .word       SMVB_startMove_single 
   6C3D 00 01 11           3246                     .byte       0x00, 0x01, 0x11 
   6C40 4B 23              3247                     .word       SMVB_startDraw_single 
   6C42 06 01 F1           3248                     .byte       0x06, 0x01, -0x0F 
   6C45 49 D9              3249                     .word       SMVB_startMove_single 
   6C47 00 01 0C           3250                     .byte       0x00, 0x01, 0x0C 
   6C4A 4B 23              3251                     .word       SMVB_startDraw_single 
   6C4C FE 00 00           3252                     .byte       0xfe, 0x00, 0x00 
   6C4F 4C 42              3253                     .word       SMVB_lastDraw_rts2 
                           3254  .globl _SpellIcons_5
   6C51                    3255 _SpellIcons_5: 
   6C51 22 01 F0           3256                     .byte       0x22, 0x01, -0x10 
   6C54 48 CF              3257                     .word       SMVB_continue_single 
   6C56 00 01 20           3258                     .byte       0x00, 0x01, 0x20 
   6C59 4B 23              3259                     .word       SMVB_startDraw_single 
   6C5B 00 01 F0           3260                     .byte       0x00, 0x01, -0x10 
   6C5E 4A D2              3261                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   6C60 BA 01 00           3262                     .byte       -0x46, 0x01, 0x00 
   6C63 4B 23              3263                     .word       SMVB_startDraw_yd4_single 
   6C65 00 01 EF           3264                     .byte       0x00, 0x01, -0x11 
   6C68 4B E3              3265                     .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
   6C6A 01 01 21           3266                     .byte       SHITREG_POKE_VALUE, 0x01, 0x21 
   6C6D 4A E8              3267                     .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
   6C6F FE 00 00           3268                     .byte       0xfe, 0x00, 0x00 
   6C72 4C 42              3269                     .word       SMVB_lastDraw_rts2 
                           3270  .globl _SpellIcons_6
   6C74                    3271 _SpellIcons_6: 
   6C74 DA 01 F4           3272                     .byte       -0x26, 0x01, -0x0C 
   6C77 48 CF              3273                     .word       SMVB_continue_single 
   6C79 4B 01 00           3274                     .byte       0x4B, 0x01, 0x00 
   6C7C 4B 23              3275                     .word       SMVB_startDraw_single 
   6C7E 00 01 01           3276                     .byte       0x00, 0x01, 0x01 
   6C81 4B E3              3277                     .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
   6C83 01 01 21           3278                     .byte       SHITREG_POKE_VALUE, 0x01, 0x21 
   6C86 4A E8              3279                     .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
   6C88 DB 01 DD           3280                     .byte       -0x25, 0x01, -0x23 
   6C8B 49 D9              3281                     .word       SMVB_startMove_single 
   6C8D 00 01 14           3282                     .byte       0x00, 0x01, 0x14 
   6C90 4B 23              3283                     .word       SMVB_startDraw_single 
   6C92 FE 00 00           3284                     .byte       0xfe, 0x00, 0x00 
   6C95 4C 42              3285                     .word       SMVB_lastDraw_rts2 
                           3286  .globl _SpellIcons_7
   6C97                    3287 _SpellIcons_7: 
   6C97 D6 01 EB           3288                     .byte       -0x2A, 0x01, -0x15 
   6C9A 48 CF              3289                     .word       SMVB_continue_single 
   6C9C 3D 01 00           3290                     .byte       0x3D, 0x01, 0x00 
   6C9F 4B 23              3291                     .word       SMVB_startDraw_single 
   6CA1 17 01 15           3292                     .byte       0x17, 0x01, 0x15 
   6CA4 48 B5              3293                     .word       SMVB_continue3_single 
   6CA6 E9 01 14           3294                     .byte       -0x17, 0x01, 0x14 
   6CA9 C3 01 00           3295                     .byte       -0x3D, 0x01, 0x00 
   6CAC 1E 01 D7           3296                     .byte       0x1E, 0x01, -0x29 
   6CAF 49 D9              3297                     .word       SMVB_startMove_single 
   6CB1 00 01 29           3298                     .byte       0x00, 0x01, 0x29 
   6CB4 4B 23              3299                     .word       SMVB_startDraw_single 
   6CB6 FE 00 00           3300                     .byte       0xfe, 0x00, 0x00 
   6CB9 4C 42              3301                     .word       SMVB_lastDraw_rts2 
                           3302  .globl _SpellIcons_8
   6CBB                    3303 _SpellIcons_8: 
   6CBB D7 01 E4           3304                     .byte       -0x29, 0x01, -0x1C 
   6CBE 48 CF              3305                     .word       SMVB_continue_single 
   6CC0 00 01 38           3306                     .byte       0x00, 0x01, 0x38 
   6CC3 4B 23              3307                     .word       SMVB_startDraw_single 
   6CC5 52 01 CB           3308                     .byte       0x52, 0x01, -0x35 
   6CC8 49 D9              3309                     .word       SMVB_startMove_single 
   6CCA 00 01 32           3310                     .byte       0x00, 0x01, 0x32 
   6CCD 4B 23              3311                     .word       SMVB_startDraw_yd4_single 
   6CCF AE 01 CB           3312                     .byte       -0x52, 0x01, -0x35 
   6CD2 48 DC              3313                     .word       SMVB_continue_yd4_single 
   6CD4 52 01 03           3314                     .byte       0x52, 0x01, 0x03 
   6CD7 49 D9              3315                     .word       SMVB_startMove_single 
   6CD9 AE 01 35           3316                     .byte       -0x52, 0x01, 0x35 
   6CDC 4B 23              3317                     .word       SMVB_startDraw_yd4_single 
   6CDE 3B 01 DA           3318                     .byte       0x3B, 0x01, -0x26 
   6CE1 49 D9              3319                     .word       SMVB_startMove_single 
   6CE3 00 01 14           3320                     .byte       0x00, 0x01, 0x14 
   6CE6 4B 23              3321                     .word       SMVB_startDraw_yd4_single 
   6CE8 DB 01 CD           3322                     .byte       -0x25, 0x01, -0x33 
   6CEB 49 D9              3323                     .word       SMVB_startMove_single 
   6CED 33 01 50           3324                     .byte       0x33, 0x01, 0x50 
   6CF0 4B 23              3325                     .word       SMVB_startDraw_single 
   6CF2 C6 01 B5           3326                     .byte       -0x3A, 0x01, -0x4B 
   6CF5 49 D9              3327                     .word       SMVB_startMove_yd4_single 
   6CF7 32 01 4F           3328                     .byte       0x32, 0x01, 0x4F 
   6CFA 4B 23              3329                     .word       SMVB_startDraw_single 
   6CFC FE 00 00           3330                     .byte       0xfe, 0x00, 0x00 
   6CFF 4C 42              3331                     .word       SMVB_lastDraw_rts2 
                           3332  .globl _SpellIcons_9
   6D01                    3333 _SpellIcons_9: 
   6D01 D7 01 F5           3334                     .byte       -0x29, 0x01, -0x0B 
   6D04 48 CF              3335                     .word       SMVB_continue_single 
   6D06 53 01 00           3336                     .byte       0x53, 0x01, 0x00 
   6D09 4B 23              3337                     .word       SMVB_startDraw_single 
   6D0B 00 01 15           3338                     .byte       0x00, 0x01, 0x15 
   6D0E 48 DE              3339                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   6D10 F4 01 0E           3340                     .byte       -0x0C, 0x01, 0x0E 
   6D13 48 A8              3341                     .word       SMVB_continue4_single 
   6D15 EC 01 00           3342                     .byte       -0x14, 0x01, 0x00 
   6D18 F2 01 F3           3343                     .byte       -0x0E, 0x01, -0x0D 
   6D1B 00 01 EA           3344                     .byte       0x00, 0x01, -0x16 
   6D1E 00 01 16           3345                     .byte       0x00, 0x01, 0x16 
   6D21 4A D2              3346                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   6D23 DB 01 11           3347                     .byte       -0x25, 0x01, 0x11 
   6D26 4B 23              3348                     .word       SMVB_startDraw_single 
   6D28 FE 00 00           3349                     .byte       0xfe, 0x00, 0x00 
   6D2B 4C 42              3350                     .word       SMVB_lastDraw_rts2 
                           3351  .globl _SpellIcons_10
   6D2D                    3352 _SpellIcons_10: 
   6D2D 26 01 F2           3353                     .byte       0x26, 0x01, -0x0E 
   6D30 48 CF              3354                     .word       SMVB_continue_single 
   6D32 00 01 1A           3355                     .byte       0x00, 0x01, 0x1A 
   6D35 4B 23              3356                     .word       SMVB_startDraw_single 
   6D37 E8 01 12           3357                     .byte       -0x18, 0x01, 0x12 
   6D3A 48 9B              3358                     .word       SMVB_continue5_single 
   6D3C E3 01 00           3359                     .byte       -0x1D, 0x01, 0x00 
   6D3F E7 01 F2           3360                     .byte       -0x19, 0x01, -0x0E 
   6D42 00 01 E2           3361                     .byte       0x00, 0x01, -0x1E 
   6D45 4E 01 00           3362                     .byte       0x4E, 0x01, 0x00 
   6D48 D1 01 F6           3363                     .byte       -0x2F, 0x01, -0x0A 
   6D4B 49 D9              3364                     .word       SMVB_startMove_yd4_single 
   6D4D 09 01 F6           3365                     .byte       0x09, 0x01, -0x0A 
   6D50 4B 23              3366                     .word       SMVB_startDraw_single 
   6D52 0F 01 06           3367                     .byte       0x0F, 0x01, 0x06 
   6D55 48 9B              3368                     .word       SMVB_continue5_single 
   6D57 10 01 F8           3369                     .byte       0x10, 0x01, -0x08 
   6D5A 0F 01 0B           3370                     .byte       0x0F, 0x01, 0x0B 
   6D5D 0F 01 0A           3371                     .byte       0x0F, 0x01, 0x0A 
   6D60 1A 01 F6           3372                     .byte       0x1A, 0x01, -0x0A 
   6D63 A7 01 40           3373                     .byte       -0x59, 0x01, 0x40 
   6D66 49 D9              3374                     .word       SMVB_startMove_yd4_single 
   6D68 03 01 FD           3375                     .byte       0x03, 0x01, -0x03 
   6D6B 4B 23              3376                     .word       SMVB_startDraw_single 
   6D6D 0E 01 10           3377                     .byte       0x0E, 0x01, 0x10 
   6D70 48 81              3378                     .word       SMVB_continue7_single 
   6D72 02 01 FA           3379                     .byte       0x02, 0x01, -0x06 
   6D75 10 01 F2           3380                     .byte       0x10, 0x01, -0x0E 
   6D78 0E 01 F9           3381                     .byte       0x0E, 0x01, -0x07 
   6D7B 0B 01 0D           3382                     .byte       0x0B, 0x01, 0x0D 
   6D7E 12 01 F6           3383                     .byte       0x12, 0x01, -0x0A 
   6D81 08 01 F5           3384                     .byte       0x08, 0x01, -0x0B 
   6D84 E1 01 EF           3385                     .byte       -0x1F, 0x01, -0x11 
   6D87 49 D9              3386                     .word       SMVB_startMove_single 
   6D89 09 01 0B           3387                     .byte       0x09, 0x01, 0x0B 
   6D8C 4B 23              3388                     .word       SMVB_startDraw_single 
   6D8E 07 01 FC           3389                     .byte       0x07, 0x01, -0x04 
   6D91 48 9B              3390                     .word       SMVB_continue5_single 
   6D93 0F 01 FB           3391                     .byte       0x0F, 0x01, -0x05 
   6D96 07 01 F5           3392                     .byte       0x07, 0x01, -0x0B 
   6D99 02 01 0B           3393                     .byte       0x02, 0x01, 0x0B 
   6D9C 02 01 FE           3394                     .byte       0x02, 0x01, -0x02 
   6D9F FE 00 00           3395                     .byte       0xfe, 0x00, 0x00 
   6DA2 4C 42              3396                     .word       SMVB_lastDraw_rts2 
                           3397  .globl _DotList
   6DA4                    3398 _DotList: 
   6DA4 17 01 F3           3399                     .byte       0x17, 0x01, -0x0D 
   6DA7 48 CF              3400                     .word       SMVB_continue_single 
   6DA9 F1 01 EE           3401                     .byte       -0x0F, 0x01, -0x12 
   6DAC 4B 23              3402                     .word       SMVB_startDraw_single 
   6DAE EF 01 00           3403                     .byte       -0x11, 0x01, 0x00 
   6DB1 48 81              3404                     .word       SMVB_continue7_single 
   6DB3 F1 01 12           3405                     .byte       -0x0F, 0x01, 0x12 
   6DB6 00 01 1E           3406                     .byte       0x00, 0x01, 0x1E 
   6DB9 0F 01 0E           3407                     .byte       0x0F, 0x01, 0x0E 
   6DBC 11 01 00           3408                     .byte       0x11, 0x01, 0x00 
   6DBF 0F 01 EE           3409                     .byte       0x0F, 0x01, -0x12 
   6DC2 00 01 E6           3410                     .byte       0x00, 0x01, -0x1A 
   6DC5 FE 00 00           3411                     .byte       0xfe, 0x00, 0x00 
   6DC8 4C 42              3412                     .word       SMVB_lastDraw_rts2 
                           3413  .globl _TreasureList
   6DCA                    3414 _TreasureList: 
   6DCA 6D D6              3415                     .word       _TreasureList_0               ; list of all single vectorlists in this 
   6DCC 6E 03              3416                     .word       _TreasureList_1 
   6DCE 6E 8B              3417                     .word       _TreasureList_2 
   6DD0 6F 04              3418                     .word       _TreasureList_3 
   6DD2 6F D4              3419                     .word       _TreasureList_4 
   6DD4 71 37              3420                     .word       _TreasureList_5 
                           3421  .globl _TreasureList_0
   6DD6                    3422 _TreasureList_0: 
   6DD6 60 01 C3           3423                     .byte       0x60, 0x01, -0x3D 
   6DD9 48 CF              3424                     .word       SMVB_continue_single 
   6DDB F4 01 1E           3425                     .byte       -0x0C, 0x01, 0x1E 
   6DDE 4B 23              3426                     .word       SMVB_startDraw_yd4_single 
   6DE0 FA 01 1D           3427                     .byte       -0x06, 0x01, 0x1D 
   6DE3 48 B5              3428                     .word       SMVB_continue3_single 
   6DE5 FA 01 11           3429                     .byte       -0x06, 0x01, 0x11 
   6DE8 F4 01 11           3430                     .byte       -0x0C, 0x01, 0x11 
   6DEB 00 01 A0           3431                     .byte       0x00, 0x01, -0x60 
   6DEE 49 85              3432                     .word       SMVB_continue_double 
   6DF0 06 01 1F           3433                     .byte       0x06, 0x01, 0x1F 
   6DF3 48 A8              3434                     .word       SMVB_continue4_single 
   6DF5 06 01 12           3435                     .byte       0x06, 0x01, 0x12 
   6DF8 18 01 1D           3436                     .byte       0x18, 0x01, 0x1D 
   6DFB 00 01 12           3437                     .byte       0x00, 0x01, 0x12 
   6DFE FE 00 00           3438                     .byte       0xfe, 0x00, 0x00 
   6E01 4C 42              3439                     .word       SMVB_lastDraw_rts2 
                           3440  .globl _TreasureList_1
   6E03                    3441 _TreasureList_1: 
   6E03 58 01 90           3442                     .byte       0x58, 0x01, -0x70 
   6E06 48 CF              3443                     .word       SMVB_continue_single 
   6E08 FA 01 00           3444                     .byte       -0x06, 0x01, 0x00 
   6E0B 4B 23              3445                     .word       SMVB_startDraw_yd4_single 
   6E0D 00 01 0C           3446                     .byte       0x00, 0x01, 0x0C 
   6E10 48 B5              3447                     .word       SMVB_continue3_single 
   6E12 06 01 00           3448                     .byte       0x06, 0x01, 0x00 
   6E15 00 01 F4           3449                     .byte       0x00, 0x01, -0x0C 
   6E18 FB 01 11           3450                     .byte       -0x05, 0x01, 0x11 
   6E1B 49 D9              3451                     .word       SMVB_startMove_single 
   6E1D FA 01 00           3452                     .byte       -0x06, 0x01, 0x00 
   6E20 4B 23              3453                     .word       SMVB_startDraw_single 
   6E22 00 01 0C           3454                     .byte       0x00, 0x01, 0x0C 
   6E25 48 B5              3455                     .word       SMVB_continue3_single 
   6E27 06 01 00           3456                     .byte       0x06, 0x01, 0x00 
   6E2A 00 01 F4           3457                     .byte       0x00, 0x01, -0x0C 
   6E2D 18 01 0B           3458                     .byte       0x18, 0x01, 0x0B 
   6E30 49 D9              3459                     .word       SMVB_startMove_single 
   6E32 EE 01 1F           3460                     .byte       -0x12, 0x01, 0x1F 
   6E35 4B 23              3461                     .word       SMVB_startDraw_single 
   6E37 FA 01 1C           3462                     .byte       -0x06, 0x01, 0x1C 
   6E3A 48 81              3463                     .word       SMVB_continue7_single 
   6E3C F4 01 24           3464                     .byte       -0x0C, 0x01, 0x24 
   6E3F 00 01 BF           3465                     .byte       0x00, 0x01, -0x41 
   6E42 06 01 00           3466                     .byte       0x06, 0x01, 0x00 
   6E45 00 01 F4           3467                     .byte       0x00, 0x01, -0x0C 
   6E48 FA 01 00           3468                     .byte       -0x06, 0x01, 0x00 
   6E4B 00 01 8E           3469                     .byte       0x00, 0x01, -0x72 
   6E4E 06 01 1E           3470                     .byte       0x06, 0x01, 0x1E 
   6E51 48 A8              3471                     .word       SMVB_continue4_single 
   6E53 06 01 12           3472                     .byte       0x06, 0x01, 0x12 
   6E56 0C 01 1E           3473                     .byte       0x0C, 0x01, 0x1E 
   6E59 0C 01 12           3474                     .byte       0x0C, 0x01, 0x12 
   6E5C EF 01 00           3475                     .byte       -0x11, 0x01, 0x00 
   6E5F 49 D9              3476                     .word       SMVB_startMove_single 
   6E61 FA 01 00           3477                     .byte       -0x06, 0x01, 0x00 
   6E64 4B 23              3478                     .word       SMVB_startDraw_single 
   6E66 00 01 0C           3479                     .byte       0x00, 0x01, 0x0C 
   6E69 48 B5              3480                     .word       SMVB_continue3_single 
   6E6B 06 01 00           3481                     .byte       0x06, 0x01, 0x00 
   6E6E 00 01 F4           3482                     .byte       0x00, 0x01, -0x0C 
   6E71 FB 01 29           3483                     .byte       -0x05, 0x01, 0x29 
   6E74 49 D9              3484                     .word       SMVB_startMove_single 
   6E76 FA 01 00           3485                     .byte       -0x06, 0x01, 0x00 
   6E79 4B 23              3486                     .word       SMVB_startDraw_single 
   6E7B 00 01 05           3487                     .byte       0x00, 0x01, 0x05 
   6E7E 48 B5              3488                     .word       SMVB_continue3_single 
   6E80 06 01 00           3489                     .byte       0x06, 0x01, 0x00 
   6E83 00 01 FB           3490                     .byte       0x00, 0x01, -0x05 
   6E86 FE 00 00           3491                     .byte       0xfe, 0x00, 0x00 
   6E89 4C 42              3492                     .word       SMVB_lastDraw_rts2 
                           3493  .globl _TreasureList_2
   6E8B                    3494 _TreasureList_2: 
   6E8B 29 01 BC           3495                     .byte       0x29, 0x01, -0x44 
   6E8E 49 85              3496                     .word       SMVB_continue_double 
   6E90 FA 01 00           3497                     .byte       -0x06, 0x01, 0x00 
   6E93 4B 23              3498                     .word       SMVB_startDraw_single 
   6E95 00 01 0C           3499                     .byte       0x00, 0x01, 0x0C 
   6E98 48 B5              3500                     .word       SMVB_continue3_single 
   6E9A 06 01 00           3501                     .byte       0x06, 0x01, 0x00 
   6E9D 00 01 F4           3502                     .byte       0x00, 0x01, -0x0C 
   6EA0 12 01 23           3503                     .byte       0x12, 0x01, 0x23 
   6EA3 49 D9              3504                     .word       SMVB_startMove_single 
   6EA5 F4 01 00           3505                     .byte       -0x0C, 0x01, 0x00 
   6EA8 4B 23              3506                     .word       SMVB_startDraw_single 
   6EAA 00 01 06           3507                     .byte       0x00, 0x01, 0x06 
   6EAD 48 B5              3508                     .word       SMVB_continue3_single 
   6EAF 0C 01 00           3509                     .byte       0x0C, 0x01, 0x00 
   6EB2 00 01 FA           3510                     .byte       0x00, 0x01, -0x06 
   6EB5 0C 01 12           3511                     .byte       0x0C, 0x01, 0x12 
   6EB8 49 D9              3512                     .word       SMVB_startMove_single 
   6EBA EE 01 17           3513                     .byte       -0x12, 0x01, 0x17 
   6EBD 4B 23              3514                     .word       SMVB_startDraw_single 
   6EBF F4 01 1D           3515                     .byte       -0x0C, 0x01, 0x1D 
   6EC2 48 81              3516                     .word       SMVB_continue7_single 
   6EC4 F4 01 24           3517                     .byte       -0x0C, 0x01, 0x24 
   6EC7 00 01 C3           3518                     .byte       0x00, 0x01, -0x3D 
   6ECA 06 01 FC           3519                     .byte       0x06, 0x01, -0x04 
   6ECD 00 01 F4           3520                     .byte       0x00, 0x01, -0x0C 
   6ED0 FA 01 FC           3521                     .byte       -0x06, 0x01, -0x04 
   6ED3 00 01 92           3522                     .byte       0x00, 0x01, -0x6E 
   6ED6 06 01 1E           3523                     .byte       0x06, 0x01, 0x1E 
   6ED9 48 8E              3524                     .word       SMVB_continue6_single 
   6EDB 0C 01 12           3525                     .byte       0x0C, 0x01, 0x12 
   6EDE 0C 01 06           3526                     .byte       0x0C, 0x01, 0x06 
   6EE1 0C 01 19           3527                     .byte       0x0C, 0x01, 0x19 
   6EE4 12 01 12           3528                     .byte       0x12, 0x01, 0x12 
   6EE7 EE 01 06           3529                     .byte       -0x12, 0x01, 0x06 
   6EEA EF 01 FF           3530                     .byte       -0x11, 0x01, -0x01 
   6EED 49 D9              3531                     .word       SMVB_startMove_single 
   6EEF F4 01 00           3532                     .byte       -0x0C, 0x01, 0x00 
   6EF2 4B 23              3533                     .word       SMVB_startDraw_single 
   6EF4 00 01 0C           3534                     .byte       0x00, 0x01, 0x0C 
   6EF7 48 B5              3535                     .word       SMVB_continue3_single 
   6EF9 0C 01 00           3536                     .byte       0x0C, 0x01, 0x00 
   6EFC 00 01 F4           3537                     .byte       0x00, 0x01, -0x0C 
   6EFF FE 00 00           3538                     .byte       0xfe, 0x00, 0x00 
   6F02 4C 42              3539                     .word       SMVB_lastDraw_rts2 
                           3540  .globl _TreasureList_3
   6F04                    3541 _TreasureList_3: 
   6F04 20 01 BA           3542                     .byte       0x20, 0x01, -0x46 
   6F07 49 85              3543                     .word       SMVB_continue_double 
   6F09 FA 01 00           3544                     .byte       -0x06, 0x01, 0x00 
   6F0C 4B 23              3545                     .word       SMVB_startDraw_single 
   6F0E 00 01 0C           3546                     .byte       0x00, 0x01, 0x0C 
   6F11 48 B5              3547                     .word       SMVB_continue3_single 
   6F13 06 01 00           3548                     .byte       0x06, 0x01, 0x00 
   6F16 00 01 F4           3549                     .byte       0x00, 0x01, -0x0C 
   6F19 40 01 43           3550                     .byte       0x40, 0x01, 0x43 
   6F1C 49 D9              3551                     .word       SMVB_startMove_single 
   6F1E EE 01 1B           3552                     .byte       -0x12, 0x01, 0x1B 
   6F21 4B 23              3553                     .word       SMVB_startDraw_yd4_single 
   6F23 E5 01 13           3554                     .byte       -0x1B, 0x01, 0x13 
   6F26 48 81              3555                     .word       SMVB_continue7_single 
   6F28 DF 01 23           3556                     .byte       -0x21, 0x01, 0x23 
   6F2B 00 01 BF           3557                     .byte       0x00, 0x01, -0x41 
   6F2E 0C 01 00           3558                     .byte       0x0C, 0x01, 0x00 
   6F31 00 01 F4           3559                     .byte       0x00, 0x01, -0x0C 
   6F34 F4 01 00           3560                     .byte       -0x0C, 0x01, 0x00 
   6F37 00 01 8E           3561                     .byte       0x00, 0x01, -0x72 
   6F3A 1D 01 1E           3562                     .byte       0x1D, 0x01, 0x1E 
   6F3D 48 81              3563                     .word       SMVB_continue7_single 
   6F3F 0F 01 0F           3564                     .byte       0x0F, 0x01, 0x0F 
   6F42 0E 01 08           3565                     .byte       0x0E, 0x01, 0x08 
   6F45 0F 01 08           3566                     .byte       0x0F, 0x01, 0x08 
   6F48 08 01 0B           3567                     .byte       0x08, 0x01, 0x0B 
   6F4B 07 01 16           3568                     .byte       0x07, 0x01, 0x16 
   6F4E F5 01 0B           3569                     .byte       -0x0B, 0x01, 0x0B 
   6F51 C3 01 22           3570                     .byte       -0x3D, 0x01, 0x22 
   6F54 49 D9              3571                     .word       SMVB_startMove_single 
   6F56 F4 01 00           3572                     .byte       -0x0C, 0x01, 0x00 
   6F59 4B 23              3573                     .word       SMVB_startDraw_single 
   6F5B 00 01 05           3574                     .byte       0x00, 0x01, 0x05 
   6F5E 48 B5              3575                     .word       SMVB_continue3_single 
   6F60 0C 01 00           3576                     .byte       0x0C, 0x01, 0x00 
   6F63 00 01 FB           3577                     .byte       0x00, 0x01, -0x05 
   6F66 26 01 BC           3578                     .byte       0x26, 0x01, -0x44 
   6F69 49 D9              3579                     .word       SMVB_startMove_single 
   6F6B FA 01 00           3580                     .byte       -0x06, 0x01, 0x00 
   6F6E 4B 23              3581                     .word       SMVB_startDraw_single 
   6F70 00 01 0C           3582                     .byte       0x00, 0x01, 0x0C 
   6F73 48 B5              3583                     .word       SMVB_continue3_single 
   6F75 06 01 00           3584                     .byte       0x06, 0x01, 0x00 
   6F78 00 01 F4           3585                     .byte       0x00, 0x01, -0x0C 
   6F7B DD 01 00           3586                     .byte       -0x23, 0x01, 0x00 
   6F7E 49 D9              3587                     .word       SMVB_startMove_single 
   6F80 FA 01 00           3588                     .byte       -0x06, 0x01, 0x00 
   6F83 4B 23              3589                     .word       SMVB_startDraw_single 
   6F85 00 01 0C           3590                     .byte       0x00, 0x01, 0x0C 
   6F88 48 B5              3591                     .word       SMVB_continue3_single 
   6F8A 06 01 00           3592                     .byte       0x06, 0x01, 0x00 
   6F8D 00 01 F4           3593                     .byte       0x00, 0x01, -0x0C 
   6F90 1E 01 29           3594                     .byte       0x1E, 0x01, 0x29 
   6F93 49 D9              3595                     .word       SMVB_startMove_single 
   6F95 FA 01 00           3596                     .byte       -0x06, 0x01, 0x00 
   6F98 4B 23              3597                     .word       SMVB_startDraw_single 
   6F9A 00 01 0C           3598                     .byte       0x00, 0x01, 0x0C 
   6F9D 48 B5              3599                     .word       SMVB_continue3_single 
   6F9F 06 01 00           3600                     .byte       0x06, 0x01, 0x00 
   6FA2 00 01 F4           3601                     .byte       0x00, 0x01, -0x0C 
   6FA5 EE 01 F5           3602                     .byte       -0x12, 0x01, -0x0B 
   6FA8 49 D9              3603                     .word       SMVB_startMove_single 
   6FAA FA 01 00           3604                     .byte       -0x06, 0x01, 0x00 
   6FAD 4B 23              3605                     .word       SMVB_startDraw_single 
   6FAF 00 01 0C           3606                     .byte       0x00, 0x01, 0x0C 
   6FB2 48 B5              3607                     .word       SMVB_continue3_single 
   6FB4 06 01 00           3608                     .byte       0x06, 0x01, 0x00 
   6FB7 00 01 F4           3609                     .byte       0x00, 0x01, -0x0C 
   6FBA 32 01 ED           3610                     .byte       0x32, 0x01, -0x13 
   6FBD 49 D9              3611                     .word       SMVB_startMove_single 
   6FBF FA 01 00           3612                     .byte       -0x06, 0x01, 0x00 
   6FC2 4B 23              3613                     .word       SMVB_startDraw_yd4_single 
   6FC4 00 01 0C           3614                     .byte       0x00, 0x01, 0x0C 
   6FC7 48 B5              3615                     .word       SMVB_continue3_single 
   6FC9 06 01 00           3616                     .byte       0x06, 0x01, 0x00 
   6FCC 00 01 F4           3617                     .byte       0x00, 0x01, -0x0C 
   6FCF FE 00 00           3618                     .byte       0xfe, 0x00, 0x00 
   6FD2 4C 42              3619                     .word       SMVB_lastDraw_rts2 
                           3620  .globl _TreasureList_4
   6FD4                    3621 _TreasureList_4: 
   6FD4 20 01 BA           3622                     .byte       0x20, 0x01, -0x46 
   6FD7 49 85              3623                     .word       SMVB_continue_double 
   6FD9 FA 01 00           3624                     .byte       -0x06, 0x01, 0x00 
   6FDC 4B 23              3625                     .word       SMVB_startDraw_single 
   6FDE 00 01 0C           3626                     .byte       0x00, 0x01, 0x0C 
   6FE1 48 B5              3627                     .word       SMVB_continue3_single 
   6FE3 06 01 00           3628                     .byte       0x06, 0x01, 0x00 
   6FE6 00 01 F4           3629                     .byte       0x00, 0x01, -0x0C 
   6FE9 44 01 53           3630                     .byte       0x44, 0x01, 0x53 
   6FEC 49 D9              3631                     .word       SMVB_startMove_single 
   6FEE F0 01 25           3632                     .byte       -0x10, 0x01, 0x25 
   6FF1 4B 23              3633                     .word       SMVB_startDraw_yd4_single 
   6FF3 DE 01 00           3634                     .byte       -0x22, 0x01, 0x00 
   6FF6 48 81              3635                     .word       SMVB_continue7_single 
   6FF8 DF 01 1F           3636                     .byte       -0x21, 0x01, 0x1F 
   6FFB 00 01 BB           3637                     .byte       0x00, 0x01, -0x45 
   6FFE 0C 01 00           3638                     .byte       0x0C, 0x01, 0x00 
   7001 00 01 F4           3639                     .byte       0x00, 0x01, -0x0C 
   7004 F4 01 00           3640                     .byte       -0x0C, 0x01, 0x00 
   7007 00 01 8A           3641                     .byte       0x00, 0x01, -0x76 
   700A 20 01 18           3642                     .byte       0x20, 0x01, 0x18 
   700D 48 81              3643                     .word       SMVB_continue7_single 
   700F 0F 01 13           3644                     .byte       0x0F, 0x01, 0x13 
   7012 0B 01 0D           3645                     .byte       0x0B, 0x01, 0x0D 
   7015 15 01 04           3646                     .byte       0x15, 0x01, 0x04 
   7018 09 01 12           3647                     .byte       0x09, 0x01, 0x12 
   701B 12 01 1E           3648                     .byte       0x12, 0x01, 0x1E 
   701E E8 01 12           3649                     .byte       -0x18, 0x01, 0x12 
   7021 BF 01 12           3650                     .byte       -0x41, 0x01, 0x12 
   7024 49 D9              3651                     .word       SMVB_startMove_single 
   7026 F4 01 00           3652                     .byte       -0x0C, 0x01, 0x00 
   7029 4B 23              3653                     .word       SMVB_startDraw_single 
   702B 00 01 05           3654                     .byte       0x00, 0x01, 0x05 
   702E 48 B5              3655                     .word       SMVB_continue3_single 
   7030 0C 01 00           3656                     .byte       0x0C, 0x01, 0x00 
   7033 00 01 FB           3657                     .byte       0x00, 0x01, -0x05 
   7036 26 01 BC           3658                     .byte       0x26, 0x01, -0x44 
   7039 49 D9              3659                     .word       SMVB_startMove_single 
   703B FA 01 00           3660                     .byte       -0x06, 0x01, 0x00 
   703E 4B 23              3661                     .word       SMVB_startDraw_single 
   7040 00 01 0C           3662                     .byte       0x00, 0x01, 0x0C 
   7043 48 B5              3663                     .word       SMVB_continue3_single 
   7045 06 01 00           3664                     .byte       0x06, 0x01, 0x00 
   7048 00 01 F4           3665                     .byte       0x00, 0x01, -0x0C 
   704B DD 01 00           3666                     .byte       -0x23, 0x01, 0x00 
   704E 49 D9              3667                     .word       SMVB_startMove_single 
   7050 FA 01 00           3668                     .byte       -0x06, 0x01, 0x00 
   7053 4B 23              3669                     .word       SMVB_startDraw_single 
   7055 00 01 0C           3670                     .byte       0x00, 0x01, 0x0C 
   7058 48 B5              3671                     .word       SMVB_continue3_single 
   705A 06 01 00           3672                     .byte       0x06, 0x01, 0x00 
   705D 00 01 F4           3673                     .byte       0x00, 0x01, -0x0C 
   7060 32 01 2B           3674                     .byte       0x32, 0x01, 0x2B 
   7063 49 D9              3675                     .word       SMVB_startMove_single 
   7065 FA 01 00           3676                     .byte       -0x06, 0x01, 0x00 
   7068 4B 23              3677                     .word       SMVB_startDraw_yd4_single 
   706A 00 01 0C           3678                     .byte       0x00, 0x01, 0x0C 
   706D 48 B5              3679                     .word       SMVB_continue3_single 
   706F 06 01 00           3680                     .byte       0x06, 0x01, 0x00 
   7072 00 01 F4           3681                     .byte       0x00, 0x01, -0x0C 
   7075 DA 01 F3           3682                     .byte       -0x26, 0x01, -0x0D 
   7078 49 D9              3683                     .word       SMVB_startMove_single 
   707A FA 01 00           3684                     .byte       -0x06, 0x01, 0x00 
   707D 4B 23              3685                     .word       SMVB_startDraw_single 
   707F 00 01 0C           3686                     .byte       0x00, 0x01, 0x0C 
   7082 48 B5              3687                     .word       SMVB_continue3_single 
   7084 06 01 00           3688                     .byte       0x06, 0x01, 0x00 
   7087 00 01 F4           3689                     .byte       0x00, 0x01, -0x0C 
   708A 32 01 ED           3690                     .byte       0x32, 0x01, -0x13 
   708D 49 D9              3691                     .word       SMVB_startMove_single 
   708F FA 01 00           3692                     .byte       -0x06, 0x01, 0x00 
   7092 4B 23              3693                     .word       SMVB_startDraw_yd4_single 
   7094 00 01 0C           3694                     .byte       0x00, 0x01, 0x0C 
   7097 48 B5              3695                     .word       SMVB_continue3_single 
   7099 06 01 00           3696                     .byte       0x06, 0x01, 0x00 
   709C 00 01 F4           3697                     .byte       0x00, 0x01, -0x0C 
   709F E4 01 34           3698                     .byte       -0x1C, 0x01, 0x34 
   70A2 49 D9              3699                     .word       SMVB_startMove_single 
   70A4 FA 01 00           3700                     .byte       -0x06, 0x01, 0x00 
   70A7 4B 23              3701                     .word       SMVB_startDraw_single 
   70A9 00 01 0C           3702                     .byte       0x00, 0x01, 0x0C 
   70AC 48 B5              3703                     .word       SMVB_continue3_single 
   70AE 06 01 00           3704                     .byte       0x06, 0x01, 0x00 
   70B1 00 01 F4           3705                     .byte       0x00, 0x01, -0x0C 
   70B4 00 01 97           3706                     .byte       0x00, 0x01, -0x69 
   70B7 4B E3              3707                     .word       SMVB_startMove_newY_eq_oldX_single ; y was -0x0C, now 0 
   70B9 FA 01 00           3708                     .byte       -0x06, 0x01, 0x00 
   70BC 4B 23              3709                     .word       SMVB_startDraw_single 
   70BE 00 01 0C           3710                     .byte       0x00, 0x01, 0x0C 
   70C1 48 B5              3711                     .word       SMVB_continue3_single 
   70C3 06 01 00           3712                     .byte       0x06, 0x01, 0x00 
   70C6 00 01 F4           3713                     .byte       0x00, 0x01, -0x0C 
   70C9 F4 01 4F           3714                     .byte       -0x0C, 0x01, 0x4F 
   70CC 4A 06              3715                     .word       SMVB_startMove_double 
   70CE FA 01 00           3716                     .byte       -0x06, 0x01, 0x00 
   70D1 4B 23              3717                     .word       SMVB_startDraw_single 
   70D3 00 01 0C           3718                     .byte       0x00, 0x01, 0x0C 
   70D6 48 B5              3719                     .word       SMVB_continue3_single 
   70D8 06 01 00           3720                     .byte       0x06, 0x01, 0x00 
   70DB 00 01 F4           3721                     .byte       0x00, 0x01, -0x0C 
   70DE 00 01 97           3722                     .byte       0x00, 0x01, -0x69 
   70E1 4A 06              3723                     .word       SMVB_startMove_double 
   70E3 FA 01 00           3724                     .byte       -0x06, 0x01, 0x00 
   70E6 4B 23              3725                     .word       SMVB_startDraw_single 
   70E8 00 01 0C           3726                     .byte       0x00, 0x01, 0x0C 
   70EB 48 B5              3727                     .word       SMVB_continue3_single 
   70ED 06 01 00           3728                     .byte       0x06, 0x01, 0x00 
   70F0 00 01 F4           3729                     .byte       0x00, 0x01, -0x0C 
   70F3 09 01 5E           3730                     .byte       0x09, 0x01, 0x5E 
   70F6 4A 06              3731                     .word       SMVB_startMove_double 
   70F8 FA 01 00           3732                     .byte       -0x06, 0x01, 0x00 
   70FB 4B 23              3733                     .word       SMVB_startDraw_single 
   70FD 00 01 0C           3734                     .byte       0x00, 0x01, 0x0C 
   7100 48 B5              3735                     .word       SMVB_continue3_single 
   7102 06 01 00           3736                     .byte       0x06, 0x01, 0x00 
   7105 00 01 F4           3737                     .byte       0x00, 0x01, -0x0C 
   7108 00 01 A9           3738                     .byte       0x00, 0x01, -0x57 
   710B 4A 06              3739                     .word       SMVB_startMove_double 
   710D FA 01 00           3740                     .byte       -0x06, 0x01, 0x00 
   7110 4B 23              3741                     .word       SMVB_startDraw_single 
   7112 00 01 0C           3742                     .byte       0x00, 0x01, 0x0C 
   7115 48 B5              3743                     .word       SMVB_continue3_single 
   7117 06 01 00           3744                     .byte       0x06, 0x01, 0x00 
   711A 00 01 F4           3745                     .byte       0x00, 0x01, -0x0C 
   711D 0F 01 16           3746                     .byte       0x0F, 0x01, 0x16 
   7120 49 D9              3747                     .word       SMVB_startMove_single 
   7122 FA 01 00           3748                     .byte       -0x06, 0x01, 0x00 
   7125 4B 23              3749                     .word       SMVB_startDraw_single 
   7127 00 01 0C           3750                     .byte       0x00, 0x01, 0x0C 
   712A 48 B5              3751                     .word       SMVB_continue3_single 
   712C 06 01 00           3752                     .byte       0x06, 0x01, 0x00 
   712F 00 01 F4           3753                     .byte       0x00, 0x01, -0x0C 
   7132 FE 00 00           3754                     .byte       0xfe, 0x00, 0x00 
   7135 4C 42              3755                     .word       SMVB_lastDraw_rts2 
                           3756  .globl _TreasureList_5
   7137                    3757 _TreasureList_5: 
   7137 6E 01 C7           3758                     .byte       0x6E, 0x01, -0x39 
   713A 48 CF              3759                     .word       SMVB_continue_single 
   713C 00 01 E1           3760                     .byte       0x00, 0x01, -0x1F 
   713F 4B 23              3761                     .word       SMVB_startDraw_yd4_single 
   7141 10 01 08           3762                     .byte       0x10, 0x01, 0x08 
   7144 48 8E              3763                     .word       SMVB_continue6_single 
   7146 10 01 F8           3764                     .byte       0x10, 0x01, -0x08 
   7149 00 01 74           3765                     .byte       0x00, 0x01, 0x74 
   714C F0 01 08           3766                     .byte       -0x10, 0x01, 0x08 
   714F F0 01 F8           3767                     .byte       -0x10, 0x01, -0x08 
   7152 00 01 C2           3768                     .byte       0x00, 0x01, -0x3E 
   7155 E9 01 17           3769                     .byte       -0x17, 0x01, 0x17 
   7158 49 D9              3770                     .word       SMVB_startMove_single 
   715A 00 01 F0           3771                     .byte       0x00, 0x01, -0x10 
   715D 4B 23              3772                     .word       SMVB_startDraw_single 
   715F 10 01 00           3773                     .byte       0x10, 0x01, 0x00 
   7162 48 81              3774                     .word       SMVB_continue7_single 
   7164 07 01 F1           3775                     .byte       0x07, 0x01, -0x0F 
   7167 00 01 F8           3776                     .byte       0x00, 0x01, -0x08 
   716A F9 01 E9           3777                     .byte       -0x07, 0x01, -0x17 
   716D F0 01 F9           3778                     .byte       -0x10, 0x01, -0x07 
   7170 00 01 17           3779                     .byte       0x00, 0x01, 0x17 
   7173 00 01 0F           3780                     .byte       0x00, 0x01, 0x0F 
   7176 00 01 07           3781                     .byte       0x00, 0x01, 0x07 
   7179 48 8E              3782                     .word       SMVB_continue6_single 
   717B 08 01 00           3783                     .byte       0x08, 0x01, 0x00 
   717E F8 01 F1           3784                     .byte       -0x08, 0x01, -0x0F 
   7181 08 01 00           3785                     .byte       0x08, 0x01, 0x00 
   7184 F8 01 F1           3786                     .byte       -0x08, 0x01, -0x0F 
   7187 F8 01 E1           3787                     .byte       -0x08, 0x01, -0x1F 
   718A 00 01 BA           3788                     .byte       0x00, 0x01, -0x46 
   718D 49 D9              3789                     .word       SMVB_startMove_single 
   718F 10 01 3E           3790                     .byte       0x10, 0x01, 0x3E 
   7192 4B 23              3791                     .word       SMVB_startDraw_single 
   7194 00 01 1F           3792                     .byte       0x00, 0x01, 0x1F 
   7197 48 CF              3793                     .word       SMVB_continue_single 
   7199 F8 01 F9           3794                     .byte       -0x08, 0x01, -0x07 
   719C 49 D9              3795                     .word       SMVB_startMove_single 
   719E F8 01 F8           3796                     .byte       -0x08, 0x01, -0x08 
   71A1 4B 54              3797                     .word       SMVB_startDraw_yEqx_single   ; y is -0x08 
   71A3 08 01 00           3798                     .byte       0x08, 0x01, 0x00 
   71A6 49 D9              3799                     .word       SMVB_startMove_single 
   71A8 01 01 F0           3800                     .byte       SHITREG_POKE_VALUE, 0x01, -0x10 
   71AB 4B FE              3801                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   71AD F8 01 E9           3802                     .byte       -0x08, 0x01, -0x17 
   71B0 49 D9              3803                     .word       SMVB_startMove_single 
   71B2 08 01 17           3804                     .byte       0x08, 0x01, 0x17 
   71B5 4B 23              3805                     .word       SMVB_startDraw_single 
   71B7 08 01 00           3806                     .byte       0x08, 0x01, 0x00 
   71BA 48 B5              3807                     .word       SMVB_continue3_single 
   71BC 17 01 08           3808                     .byte       0x17, 0x01, 0x08 
   71BF 27 01 F8           3809                     .byte       0x27, 0x01, -0x08 
   71C2 00 01 49           3810                     .byte       0x00, 0x01, 0x49 
   71C5 49 85              3811                     .word       SMVB_continue_double 
   71C7 F1 01 08           3812                     .byte       -0x0F, 0x01, 0x08 
   71CA 48 A8              3813                     .word       SMVB_continue4_single 
   71CC E0 01 00           3814                     .byte       -0x20, 0x01, 0x00 
   71CF F1 01 E9           3815                     .byte       -0x0F, 0x01, -0x17 
   71D2 F0 01 C2           3816                     .byte       -0x10, 0x01, -0x3E 
   71D5 00 01 BE           3817                     .byte       0x00, 0x01, -0x42 
   71D8 49 85              3818                     .word       SMVB_continue_double 
   71DA C2 01 00           3819                     .byte       -0x3E, 0x01, 0x00 
   71DD 48 DC              3820                     .word       SMVB_continue_yd4_single 
   71DF 00 01 42           3821                     .byte       0x00, 0x01, 0x42 
   71E2 49 85              3822                     .word       SMVB_continue_double 
   71E4 27 01 3E           3823                     .byte       0x27, 0x01, 0x3E 
   71E7 48 B5              3824                     .word       SMVB_continue3_single 
   71E9 27 01 00           3825                     .byte       0x27, 0x01, 0x00 
   71EC 00 01 CA           3826                     .byte       0x00, 0x01, -0x36 
   71EF F8 01 00           3827                     .byte       -0x08, 0x01, 0x00 
   71F2 49 D9              3828                     .word       SMVB_startMove_single 
   71F4 01 01 F8           3829                     .byte       SHITREG_POKE_VALUE, 0x01, -0x08 
   71F7 4B FE              3830                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   71F9 00 01 00           3831                     .byte       0x00, 0x01, 0x00 
   71FC 4B E3              3832                     .word       SMVB_startMove_newY_eq_oldX_single ; y was -0x08, now 0 
   71FE CA 01 00           3833                     .byte       -0x36, 0x01, 0x00 
   7201 4B 23              3834                     .word       SMVB_startDraw_single 
   7203 FE 00 00           3835                     .byte       0xfe, 0x00, 0x00 
   7206 4C 42              3836                     .word       SMVB_lastDraw_rts2 
                           3837  .globl _InnList
   7208                    3838 _InnList: 
   7208 22 01 A3           3839                     .byte       0x22, 0x01, -0x5D 
   720B 49 85              3840                     .word       SMVB_continue_double 
   720D 15 01 F5           3841                     .byte       0x15, 0x01, -0x0B 
   7210 4B 23              3842                     .word       SMVB_startDraw_single 
   7212 00 01 CA           3843                     .byte       0x00, 0x01, -0x36 
   7215 48 81              3844                     .word       SMVB_continue7_single 
   7217 EE 01 EE           3845                     .byte       -0x12, 0x01, -0x12 
   721A E8 01 00           3846                     .byte       -0x18, 0x01, 0x00 
   721D F0 01 0C           3847                     .byte       -0x10, 0x01, 0x0C 
   7220 16 01 11           3848                     .byte       0x16, 0x01, 0x11 
   7223 06 01 15           3849                     .byte       0x06, 0x01, 0x15 
   7226 F5 01 14           3850                     .byte       -0x0B, 0x01, 0x14 
   7229 AB 01 01           3851                     .byte       -0x55, 0x01, 0x01 
   722C 48 DC              3852                     .word       SMVB_continue_yd4_single 
   722E 00 01 C5           3853                     .byte       0x00, 0x01, -0x3B 
   7231 48 81              3854                     .word       SMVB_continue7_single 
   7233 F2 01 F1           3855                     .byte       -0x0E, 0x01, -0x0F 
   7236 F0 01 FD           3856                     .byte       -0x10, 0x01, -0x03 
   7239 F5 01 10           3857                     .byte       -0x0B, 0x01, 0x10 
   723C 11 01 1A           3858                     .byte       0x11, 0x01, 0x1A 
   723F FE 01 19           3859                     .byte       -0x02, 0x01, 0x19 
   7242 ED 01 0F           3860                     .byte       -0x13, 0x01, 0x0F 
   7245 F7 01 19           3861                     .byte       -0x09, 0x01, 0x19 
   7248 48 81              3862                     .word       SMVB_continue7_single 
   724A FE 01 2B           3863                     .byte       -0x02, 0x01, 0x2B 
   724D 14 01 12           3864                     .byte       0x14, 0x01, 0x12 
   7250 1B 01 08           3865                     .byte       0x1B, 0x01, 0x08 
   7253 0B 01 EF           3866                     .byte       0x0B, 0x01, -0x11 
   7256 ED 01 F4           3867                     .byte       -0x13, 0x01, -0x0C 
   7259 F9 01 EA           3868                     .byte       -0x07, 0x01, -0x16 
   725C 06 01 E3           3869                     .byte       0x06, 0x01, -0x1D 
   725F 48 C2              3870                     .word       SMVB_continue2_single 
   7261 48 01 00           3871                     .byte       0x48, 0x01, 0x00 
   7264 08 01 34           3872                     .byte       0x08, 0x01, 0x34 
   7267 48 DC              3873                     .word       SMVB_continue_yd4_single 
   7269 11 01 18           3874                     .byte       0x11, 0x01, 0x18 
   726C 48 8E              3875                     .word       SMVB_continue6_single 
   726E 1D 01 FC           3876                     .byte       0x1D, 0x01, -0x04 
   7271 00 01 EE           3877                     .byte       0x00, 0x01, -0x12 
   7274 F3 01 F1           3878                     .byte       -0x0D, 0x01, -0x0F 
   7277 FC 01 EA           3879                     .byte       -0x04, 0x01, -0x16 
   727A 0E 01 E8           3880                     .byte       0x0E, 0x01, -0x18 
   727D 04 01 42           3881                     .byte       0x04, 0x01, 0x42 
   7280 4A 06              3882                     .word       SMVB_startMove_double 
   7282 E9 01 E2           3883                     .byte       -0x17, 0x01, -0x1E 
   7285 4B 23              3884                     .word       SMVB_startDraw_single 
   7287 E1 01 FA           3885                     .byte       -0x1F, 0x01, -0x06 
   728A 48 A8              3886                     .word       SMVB_continue4_single 
   728C 07 01 16           3887                     .byte       0x07, 0x01, 0x16 
   728F 0B 01 0E           3888                     .byte       0x0B, 0x01, 0x0E 
   7292 FB 01 0E           3889                     .byte       -0x05, 0x01, 0x0E 
   7295 AC 01 02           3890                     .byte       -0x54, 0x01, 0x02 
   7298 48 DC              3891                     .word       SMVB_continue_yd4_single 
   729A F2 01 EA           3892                     .byte       -0x0E, 0x01, -0x16 
   729D 48 81              3893                     .word       SMVB_continue7_single 
   729F EA 01 06           3894                     .byte       -0x16, 0x01, 0x06 
   72A2 03 01 16           3895                     .byte       0x03, 0x01, 0x16 
   72A5 14 01 0E           3896                     .byte       0x14, 0x01, 0x0E 
   72A8 42 01 01           3897                     .byte       0x42, 0x01, 0x01 
   72AB 15 01 12           3898                     .byte       0x15, 0x01, 0x12 
   72AE 0B 01 21           3899                     .byte       0x0B, 0x01, 0x21 
   72B1 99 01 03           3900                     .byte       -0x67, 0x01, 0x03 
   72B4 48 DC              3901                     .word       SMVB_continue_yd4_single 
   72B6 EF 01 1D           3902                     .byte       -0x11, 0x01, 0x1D 
   72B9 48 9B              3903                     .word       SMVB_continue5_single 
   72BB 0E 01 18           3904                     .byte       0x0E, 0x01, 0x18 
   72BE 14 01 F8           3905                     .byte       0x14, 0x01, -0x08 
   72C1 0A 01 E8           3906                     .byte       0x0A, 0x01, -0x18 
   72C4 62 01 FF           3907                     .byte       0x62, 0x01, -0x01 
   72C7 12 01 F2           3908                     .byte       0x12, 0x01, -0x0E 
   72CA 48 DC              3909                     .word       SMVB_continue_yd4_single 
   72CC 00 01 ED           3910                     .byte       0x00, 0x01, -0x13 
   72CF 48 9B              3911                     .word       SMVB_continue5_single 
   72D1 E3 01 EE           3912                     .byte       -0x1D, 0x01, -0x12 
   72D4 F9 01 E9           3913                     .byte       -0x07, 0x01, -0x17 
   72D7 22 01 EA           3914                     .byte       0x22, 0x01, -0x16 
   72DA 02 01 F1           3915                     .byte       0x02, 0x01, -0x0F 
   72DD F7 01 48           3916                     .byte       -0x09, 0x01, 0x48 
   72E0 4A 06              3917                     .word       SMVB_startMove_double 
   72E2 12 01 15           3918                     .byte       0x12, 0x01, 0x15 
   72E5 4B 23              3919                     .word       SMVB_startDraw_single 
   72E7 FB 01 15           3920                     .byte       -0x05, 0x01, 0x15 
   72EA 48 8E              3921                     .word       SMVB_continue6_single 
   72EC E1 01 15           3922                     .byte       -0x1F, 0x01, 0x15 
   72EF 0C 01 16           3923                     .byte       0x0C, 0x01, 0x16 
   72F2 1B 01 18           3924                     .byte       0x1B, 0x01, 0x18 
   72F5 FE 01 12           3925                     .byte       -0x02, 0x01, 0x12 
   72F8 EB 01 12           3926                     .byte       -0x15, 0x01, 0x12 
   72FB 95 01 00           3927                     .byte       -0x6B, 0x01, 0x00 
   72FE 48 DC              3928                     .word       SMVB_continue_yd4_single 
   7300 F6 01 14           3929                     .byte       -0x0A, 0x01, 0x14 
   7303 48 9B              3930                     .word       SMVB_continue5_single 
   7305 EE 01 03           3931                     .byte       -0x12, 0x01, 0x03 
   7308 F8 01 E9           3932                     .byte       -0x08, 0x01, -0x17 
   730B 12 01 EB           3933                     .byte       0x12, 0x01, -0x15 
   730E 6A 01 F7           3934                     .byte       0x6A, 0x01, -0x09 
   7311 EF 01 DE           3935                     .byte       -0x11, 0x01, -0x22 
   7314 48 DC              3936                     .word       SMVB_continue_yd4_single 
   7316 F0 01 EF           3937                     .byte       -0x10, 0x01, -0x11 
   7319 48 CF              3938                     .word       SMVB_continue_single 
   731B BD 01 02           3939                     .byte       -0x43, 0x01, 0x02 
   731E 48 DC              3940                     .word       SMVB_continue_yd4_single 
   7320 ED 01 F1           3941                     .byte       -0x13, 0x01, -0x0F 
   7323 48 9B              3942                     .word       SMVB_continue5_single 
   7325 FE 01 E3           3943                     .byte       -0x02, 0x01, -0x1D 
   7328 18 01 FF           3944                     .byte       0x18, 0x01, -0x01 
   732B 14 01 15           3945                     .byte       0x14, 0x01, 0x15 
   732E 42 01 FE           3946                     .byte       0x42, 0x01, -0x02 
   7331 0E 01 F6           3947                     .byte       0x0E, 0x01, -0x0A 
   7334 48 DC              3948                     .word       SMVB_continue_yd4_single 
   7336 EF 01 EB           3949                     .byte       -0x11, 0x01, -0x15 
   7339 48 B5              3950                     .word       SMVB_continue3_single 
   733B 06 01 EE           3951                     .byte       0x06, 0x01, -0x12 
   733E 1D 01 09           3952                     .byte       0x1D, 0x01, 0x09 
   7341 FE 00 00           3953                     .byte       0xfe, 0x00, 0x00 
   7344 4C 42              3954                     .word       SMVB_lastDraw_rts2 
                           3955  .globl _ThroneList
   7346                    3956 _ThroneList: 
   7346 73 4E              3957                     .word       _ThroneList_0                 ; list of all single vectorlists in this 
   7348 74 4A              3958                     .word       _ThroneList_1 
   734A 75 46              3959                     .word       _ThroneList_2 
   734C 76 42              3960                     .word       _ThroneList_3 
                           3961  .globl _ThroneList_0
   734E                    3962 _ThroneList_0: 
   734E 51 01 DC           3963                     .byte       0x51, 0x01, -0x24 
   7351 49 85              3964                     .word       SMVB_continue_double 
   7353 F4 01 EE           3965                     .byte       -0x0C, 0x01, -0x12 
   7356 4B 23              3966                     .word       SMVB_startDraw_yd4_single 
   7358 00 01 12           3967                     .byte       0x00, 0x01, 0x12 
   735B 48 CF              3968                     .word       SMVB_continue_single 
   735D 00 01 F5           3969                     .byte       0x00, 0x01, -0x0B 
   7360 4A D2              3970                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   7362 B2 01 00           3971                     .byte       -0x4E, 0x01, 0x00 
   7365 4B 23              3972                     .word       SMVB_startDraw_yd4_single 
   7367 EF 01 2F           3973                     .byte       -0x11, 0x01, 0x2F 
   736A 48 B5              3974                     .word       SMVB_continue3_single 
   736C 1F 01 00           3975                     .byte       0x1F, 0x01, 0x00 
   736F 0C 01 D1           3976                     .byte       0x0C, 0x01, -0x2F 
   7372 00 01 9F           3977                     .byte       0x00, 0x01, -0x61 
   7375 49 D9              3978                     .word       SMVB_startMove_single 
   7377 F4 01 30           3979                     .byte       -0x0C, 0x01, 0x30 
   737A 4B 23              3980                     .word       SMVB_startDraw_single 
   737C E0 01 00           3981                     .byte       -0x20, 0x01, 0x00 
   737F 48 CF              3982                     .word       SMVB_continue_single 
   7381 12 01 0C           3983                     .byte       0x12, 0x01, 0x0C 
   7384 49 D9              3984                     .word       SMVB_startMove_single 
   7386 00 01 25           3985                     .byte       0x00, 0x01, 0x25 
   7389 4B 23              3986                     .word       SMVB_startDraw_single 
   738B EF 01 2F           3987                     .byte       -0x11, 0x01, 0x2F 
   738E 49 D9              3988                     .word       SMVB_startMove_single 
   7390 00 01 AC           3989                     .byte       0x00, 0x01, -0x54 
   7393 4B 23              3990                     .word       SMVB_startDraw_single 
   7395 20 01 00           3991                     .byte       0x20, 0x01, 0x00 
   7398 48 B5              3992                     .word       SMVB_continue3_single 
   739A 0C 01 D1           3993                     .byte       0x0C, 0x01, -0x2F 
   739D 2A 01 00           3994                     .byte       0x2A, 0x01, 0x00 
   73A0 3A 01 F3           3995                     .byte       0x3A, 0x01, -0x0D 
   73A3 49 D9              3996                     .word       SMVB_startMove_single 
   73A5 CA 01 00           3997                     .byte       -0x36, 0x01, 0x00 
   73A8 4B 23              3998                     .word       SMVB_startDraw_yd4_single 
   73AA 00 01 12           3999                     .byte       0x00, 0x01, 0x12 
   73AD 48 81              4000                     .word       SMVB_continue7_single 
   73AF F4 01 EE           4001                     .byte       -0x0C, 0x01, -0x12 
   73B2 DE 01 00           4002                     .byte       -0x22, 0x01, 0x00 
   73B5 B6 01 00           4003                     .byte       -0x4A, 0x01, 0x00 
   73B8 FB 01 12           4004                     .byte       -0x05, 0x01, 0x12 
   73BB 17 01 00           4005                     .byte       0x17, 0x01, 0x00 
   73BE FA 01 1E           4006                     .byte       -0x06, 0x01, 0x1E 
   73C1 E2 01 00           4007                     .byte       -0x1E, 0x01, 0x00 
   73C4 48 81              4008                     .word       SMVB_continue7_single 
   73C6 FB 01 12           4009                     .byte       -0x05, 0x01, 0x12 
   73C9 23 01 00           4010                     .byte       0x23, 0x01, 0x00 
   73CC 00 01 18           4011                     .byte       0x00, 0x01, 0x18 
   73CF F8 01 0A           4012                     .byte       -0x08, 0x01, 0x0A 
   73D2 08 01 08           4013                     .byte       0x08, 0x01, 0x08 
   73D5 00 01 1E           4014                     .byte       0x00, 0x01, 0x1E 
   73D8 E2 01 00           4015                     .byte       -0x1E, 0x01, 0x00 
   73DB 48 B5              4016                     .word       SMVB_continue3_single 
   73DD FB 01 12           4017                     .byte       -0x05, 0x01, 0x12 
   73E0 55 01 00           4018                     .byte       0x55, 0x01, 0x00 
   73E3 0C 01 D0           4019                     .byte       0x0C, 0x01, -0x30 
   73E6 48 DC              4020                     .word       SMVB_continue_yd4_single 
   73E8 64 01 00           4021                     .byte       0x64, 0x01, 0x00 
   73EB 48 CF              4022                     .word       SMVB_continue_single 
   73ED 00 01 EE           4023                     .byte       0x00, 0x01, -0x12 
   73F0 48 DE              4024                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   73F2 EE 01 00           4025                     .byte       -0x12, 0x01, 0x00 
   73F5 48 8E              4026                     .word       SMVB_continue6_single 
   73F7 FA 01 F4           4027                     .byte       -0x06, 0x01, -0x0C 
   73FA 00 01 D0           4028                     .byte       0x00, 0x01, -0x30 
   73FD 06 01 F4           4029                     .byte       0x06, 0x01, -0x0C 
   7400 12 01 00           4030                     .byte       0x12, 0x01, 0x00 
   7403 00 01 EE           4031                     .byte       0x00, 0x01, -0x12 
   7406 D0 01 20           4032                     .byte       -0x30, 0x01, 0x20 
   7409 49 D9              4033                     .word       SMVB_startMove_single 
   740B FA 01 FE           4034                     .byte       -0x06, 0x01, -0x02 
   740E 4B 23              4035                     .word       SMVB_startDraw_single 
   7410 F9 01 0E           4036                     .byte       -0x07, 0x01, 0x0E 
   7413 48 B5              4037                     .word       SMVB_continue3_single 
   7415 0B 01 00           4038                     .byte       0x0B, 0x01, 0x00 
   7418 02 01 F4           4039                     .byte       0x02, 0x01, -0x0C 
   741B DE 01 12           4040                     .byte       -0x22, 0x01, 0x12 
   741E 49 D9              4041                     .word       SMVB_startMove_single 
   7420 F5 01 01           4042                     .byte       -0x0B, 0x01, 0x01 
   7423 4B 23              4043                     .word       SMVB_startDraw_single 
   7425 FD 01 0F           4044                     .byte       -0x03, 0x01, 0x0F 
   7428 48 B5              4045                     .word       SMVB_continue3_single 
   742A 0A 01 FC           4046                     .byte       0x0A, 0x01, -0x04 
   742D 04 01 F4           4047                     .byte       0x04, 0x01, -0x0C 
   7430 1F 01 1E           4048                     .byte       0x1F, 0x01, 0x1E 
   7433 49 D9              4049                     .word       SMVB_startMove_single 
   7435 FA 01 F7           4050                     .byte       -0x06, 0x01, -0x09 
   7438 4B 23              4051                     .word       SMVB_startDraw_single 
   743A 09 01 FB           4052                     .byte       0x09, 0x01, -0x05 
   743D 48 B5              4053                     .word       SMVB_continue3_single 
   743F 05 01 0B           4054                     .byte       0x05, 0x01, 0x0B 
   7442 F8 01 03           4055                     .byte       -0x08, 0x01, 0x03 
   7445 FE 00 00           4056                     .byte       0xfe, 0x00, 0x00 
   7448 4C 42              4057                     .word       SMVB_lastDraw_rts2 
                           4058  .globl _ThroneList_1
   744A                    4059 _ThroneList_1: 
   744A 51 01 DC           4060                     .byte       0x51, 0x01, -0x24 
   744D 49 85              4061                     .word       SMVB_continue_double 
   744F F4 01 EE           4062                     .byte       -0x0C, 0x01, -0x12 
   7452 4B 23              4063                     .word       SMVB_startDraw_yd4_single 
   7454 00 01 12           4064                     .byte       0x00, 0x01, 0x12 
   7457 48 CF              4065                     .word       SMVB_continue_single 
   7459 00 01 F5           4066                     .byte       0x00, 0x01, -0x0B 
   745C 4A D2              4067                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   745E B2 01 00           4068                     .byte       -0x4E, 0x01, 0x00 
   7461 4B 23              4069                     .word       SMVB_startDraw_yd4_single 
   7463 EF 01 2F           4070                     .byte       -0x11, 0x01, 0x2F 
   7466 48 B5              4071                     .word       SMVB_continue3_single 
   7468 1F 01 00           4072                     .byte       0x1F, 0x01, 0x00 
   746B 0C 01 D1           4073                     .byte       0x0C, 0x01, -0x2F 
   746E 00 01 9F           4074                     .byte       0x00, 0x01, -0x61 
   7471 49 D9              4075                     .word       SMVB_startMove_single 
   7473 F4 01 30           4076                     .byte       -0x0C, 0x01, 0x30 
   7476 4B 23              4077                     .word       SMVB_startDraw_single 
   7478 E0 01 00           4078                     .byte       -0x20, 0x01, 0x00 
   747B 48 CF              4079                     .word       SMVB_continue_single 
   747D 12 01 0C           4080                     .byte       0x12, 0x01, 0x0C 
   7480 49 D9              4081                     .word       SMVB_startMove_single 
   7482 00 01 25           4082                     .byte       0x00, 0x01, 0x25 
   7485 4B 23              4083                     .word       SMVB_startDraw_single 
   7487 EF 01 2F           4084                     .byte       -0x11, 0x01, 0x2F 
   748A 49 D9              4085                     .word       SMVB_startMove_single 
   748C 00 01 AC           4086                     .byte       0x00, 0x01, -0x54 
   748F 4B 23              4087                     .word       SMVB_startDraw_single 
   7491 20 01 00           4088                     .byte       0x20, 0x01, 0x00 
   7494 48 B5              4089                     .word       SMVB_continue3_single 
   7496 0C 01 D1           4090                     .byte       0x0C, 0x01, -0x2F 
   7499 2A 01 00           4091                     .byte       0x2A, 0x01, 0x00 
   749C 3A 01 F3           4092                     .byte       0x3A, 0x01, -0x0D 
   749F 49 D9              4093                     .word       SMVB_startMove_single 
   74A1 CA 01 00           4094                     .byte       -0x36, 0x01, 0x00 
   74A4 4B 23              4095                     .word       SMVB_startDraw_yd4_single 
   74A6 00 01 12           4096                     .byte       0x00, 0x01, 0x12 
   74A9 48 81              4097                     .word       SMVB_continue7_single 
   74AB F4 01 EE           4098                     .byte       -0x0C, 0x01, -0x12 
   74AE DE 01 00           4099                     .byte       -0x22, 0x01, 0x00 
   74B1 B6 01 00           4100                     .byte       -0x4A, 0x01, 0x00 
   74B4 FB 01 12           4101                     .byte       -0x05, 0x01, 0x12 
   74B7 17 01 00           4102                     .byte       0x17, 0x01, 0x00 
   74BA FA 01 1E           4103                     .byte       -0x06, 0x01, 0x1E 
   74BD E2 01 00           4104                     .byte       -0x1E, 0x01, 0x00 
   74C0 48 81              4105                     .word       SMVB_continue7_single 
   74C2 FB 01 12           4106                     .byte       -0x05, 0x01, 0x12 
   74C5 23 01 00           4107                     .byte       0x23, 0x01, 0x00 
   74C8 00 01 18           4108                     .byte       0x00, 0x01, 0x18 
   74CB F8 01 0A           4109                     .byte       -0x08, 0x01, 0x0A 
   74CE 08 01 08           4110                     .byte       0x08, 0x01, 0x08 
   74D1 00 01 1E           4111                     .byte       0x00, 0x01, 0x1E 
   74D4 E2 01 00           4112                     .byte       -0x1E, 0x01, 0x00 
   74D7 48 B5              4113                     .word       SMVB_continue3_single 
   74D9 FB 01 12           4114                     .byte       -0x05, 0x01, 0x12 
   74DC 55 01 00           4115                     .byte       0x55, 0x01, 0x00 
   74DF 0C 01 D0           4116                     .byte       0x0C, 0x01, -0x30 
   74E2 48 DC              4117                     .word       SMVB_continue_yd4_single 
   74E4 64 01 00           4118                     .byte       0x64, 0x01, 0x00 
   74E7 48 CF              4119                     .word       SMVB_continue_single 
   74E9 00 01 EE           4120                     .byte       0x00, 0x01, -0x12 
   74EC 48 DE              4121                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   74EE EE 01 00           4122                     .byte       -0x12, 0x01, 0x00 
   74F1 48 8E              4123                     .word       SMVB_continue6_single 
   74F3 FA 01 F4           4124                     .byte       -0x06, 0x01, -0x0C 
   74F6 00 01 D0           4125                     .byte       0x00, 0x01, -0x30 
   74F9 06 01 F4           4126                     .byte       0x06, 0x01, -0x0C 
   74FC 12 01 00           4127                     .byte       0x12, 0x01, 0x00 
   74FF 00 01 EE           4128                     .byte       0x00, 0x01, -0x12 
   7502 C4 01 20           4129                     .byte       -0x3C, 0x01, 0x20 
   7505 49 D9              4130                     .word       SMVB_startMove_yd4_single 
   7507 FA 01 FE           4131                     .byte       -0x06, 0x01, -0x02 
   750A 4B 23              4132                     .word       SMVB_startDraw_single 
   750C FA 01 0E           4133                     .byte       -0x06, 0x01, 0x0E 
   750F 48 B5              4134                     .word       SMVB_continue3_single 
   7511 0A 01 00           4135                     .byte       0x0A, 0x01, 0x00 
   7514 02 01 F4           4136                     .byte       0x02, 0x01, -0x0C 
   7517 EB 01 19           4137                     .byte       -0x15, 0x01, 0x19 
   751A 49 D9              4138                     .word       SMVB_startMove_single 
   751C F5 01 01           4139                     .byte       -0x0B, 0x01, 0x01 
   751F 4B 23              4140                     .word       SMVB_startDraw_single 
   7521 FD 01 0F           4141                     .byte       -0x03, 0x01, 0x0F 
   7524 48 B5              4142                     .word       SMVB_continue3_single 
   7526 0A 01 FC           4143                     .byte       0x0A, 0x01, -0x04 
   7529 04 01 F4           4144                     .byte       0x04, 0x01, -0x0C 
   752C 13 01 1C           4145                     .byte       0x13, 0x01, 0x1C 
   752F 49 D9              4146                     .word       SMVB_startMove_single 
   7531 FA 01 F7           4147                     .byte       -0x06, 0x01, -0x09 
   7534 4B 23              4148                     .word       SMVB_startDraw_single 
   7536 09 01 FB           4149                     .byte       0x09, 0x01, -0x05 
   7539 48 B5              4150                     .word       SMVB_continue3_single 
   753B 05 01 0B           4151                     .byte       0x05, 0x01, 0x0B 
   753E F8 01 03           4152                     .byte       -0x08, 0x01, 0x03 
   7541 FE 00 00           4153                     .byte       0xfe, 0x00, 0x00 
   7544 4C 42              4154                     .word       SMVB_lastDraw_rts2 
                           4155  .globl _ThroneList_2
   7546                    4156 _ThroneList_2: 
   7546 51 01 DC           4157                     .byte       0x51, 0x01, -0x24 
   7549 49 85              4158                     .word       SMVB_continue_double 
   754B F4 01 EE           4159                     .byte       -0x0C, 0x01, -0x12 
   754E 4B 23              4160                     .word       SMVB_startDraw_yd4_single 
   7550 00 01 12           4161                     .byte       0x00, 0x01, 0x12 
   7553 48 CF              4162                     .word       SMVB_continue_single 
   7555 00 01 F5           4163                     .byte       0x00, 0x01, -0x0B 
   7558 4A D2              4164                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   755A B2 01 00           4165                     .byte       -0x4E, 0x01, 0x00 
   755D 4B 23              4166                     .word       SMVB_startDraw_yd4_single 
   755F EF 01 2F           4167                     .byte       -0x11, 0x01, 0x2F 
   7562 48 B5              4168                     .word       SMVB_continue3_single 
   7564 1F 01 00           4169                     .byte       0x1F, 0x01, 0x00 
   7567 0C 01 D1           4170                     .byte       0x0C, 0x01, -0x2F 
   756A 00 01 9F           4171                     .byte       0x00, 0x01, -0x61 
   756D 49 D9              4172                     .word       SMVB_startMove_single 
   756F F4 01 30           4173                     .byte       -0x0C, 0x01, 0x30 
   7572 4B 23              4174                     .word       SMVB_startDraw_single 
   7574 E0 01 00           4175                     .byte       -0x20, 0x01, 0x00 
   7577 48 CF              4176                     .word       SMVB_continue_single 
   7579 12 01 0C           4177                     .byte       0x12, 0x01, 0x0C 
   757C 49 D9              4178                     .word       SMVB_startMove_single 
   757E 00 01 25           4179                     .byte       0x00, 0x01, 0x25 
   7581 4B 23              4180                     .word       SMVB_startDraw_single 
   7583 EF 01 2F           4181                     .byte       -0x11, 0x01, 0x2F 
   7586 49 D9              4182                     .word       SMVB_startMove_single 
   7588 00 01 AC           4183                     .byte       0x00, 0x01, -0x54 
   758B 4B 23              4184                     .word       SMVB_startDraw_single 
   758D 20 01 00           4185                     .byte       0x20, 0x01, 0x00 
   7590 48 B5              4186                     .word       SMVB_continue3_single 
   7592 0C 01 D1           4187                     .byte       0x0C, 0x01, -0x2F 
   7595 2A 01 00           4188                     .byte       0x2A, 0x01, 0x00 
   7598 3A 01 F3           4189                     .byte       0x3A, 0x01, -0x0D 
   759B 49 D9              4190                     .word       SMVB_startMove_single 
   759D CA 01 00           4191                     .byte       -0x36, 0x01, 0x00 
   75A0 4B 23              4192                     .word       SMVB_startDraw_yd4_single 
   75A2 00 01 12           4193                     .byte       0x00, 0x01, 0x12 
   75A5 48 81              4194                     .word       SMVB_continue7_single 
   75A7 F4 01 EE           4195                     .byte       -0x0C, 0x01, -0x12 
   75AA DE 01 00           4196                     .byte       -0x22, 0x01, 0x00 
   75AD B6 01 00           4197                     .byte       -0x4A, 0x01, 0x00 
   75B0 FB 01 12           4198                     .byte       -0x05, 0x01, 0x12 
   75B3 17 01 00           4199                     .byte       0x17, 0x01, 0x00 
   75B6 FA 01 1E           4200                     .byte       -0x06, 0x01, 0x1E 
   75B9 E2 01 00           4201                     .byte       -0x1E, 0x01, 0x00 
   75BC 48 81              4202                     .word       SMVB_continue7_single 
   75BE FB 01 12           4203                     .byte       -0x05, 0x01, 0x12 
   75C1 23 01 00           4204                     .byte       0x23, 0x01, 0x00 
   75C4 00 01 18           4205                     .byte       0x00, 0x01, 0x18 
   75C7 F8 01 0A           4206                     .byte       -0x08, 0x01, 0x0A 
   75CA 08 01 08           4207                     .byte       0x08, 0x01, 0x08 
   75CD 00 01 1E           4208                     .byte       0x00, 0x01, 0x1E 
   75D0 E2 01 00           4209                     .byte       -0x1E, 0x01, 0x00 
   75D3 48 B5              4210                     .word       SMVB_continue3_single 
   75D5 FB 01 12           4211                     .byte       -0x05, 0x01, 0x12 
   75D8 55 01 00           4212                     .byte       0x55, 0x01, 0x00 
   75DB 0C 01 D0           4213                     .byte       0x0C, 0x01, -0x30 
   75DE 48 DC              4214                     .word       SMVB_continue_yd4_single 
   75E0 64 01 00           4215                     .byte       0x64, 0x01, 0x00 
   75E3 48 CF              4216                     .word       SMVB_continue_single 
   75E5 00 01 EE           4217                     .byte       0x00, 0x01, -0x12 
   75E8 48 DE              4218                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   75EA EE 01 00           4219                     .byte       -0x12, 0x01, 0x00 
   75ED 48 8E              4220                     .word       SMVB_continue6_single 
   75EF FA 01 F4           4221                     .byte       -0x06, 0x01, -0x0C 
   75F2 00 01 D0           4222                     .byte       0x00, 0x01, -0x30 
   75F5 06 01 F4           4223                     .byte       0x06, 0x01, -0x0C 
   75F8 12 01 00           4224                     .byte       0x12, 0x01, 0x00 
   75FB 00 01 EE           4225                     .byte       0x00, 0x01, -0x12 
   75FE E0 01 2A           4226                     .byte       -0x20, 0x01, 0x2A 
   7601 49 D9              4227                     .word       SMVB_startMove_single 
   7603 FA 01 FE           4228                     .byte       -0x06, 0x01, -0x02 
   7606 4B 23              4229                     .word       SMVB_startDraw_single 
   7608 F9 01 0D           4230                     .byte       -0x07, 0x01, 0x0D 
   760B 48 B5              4231                     .word       SMVB_continue3_single 
   760D 0B 01 00           4232                     .byte       0x0B, 0x01, 0x00 
   7610 02 01 F5           4233                     .byte       0x02, 0x01, -0x0B 
   7613 D1 01 F9           4234                     .byte       -0x2F, 0x01, -0x07 
   7616 49 D9              4235                     .word       SMVB_startMove_single 
   7618 F5 01 01           4236                     .byte       -0x0B, 0x01, 0x01 
   761B 4B 23              4237                     .word       SMVB_startDraw_single 
   761D FD 01 0F           4238                     .byte       -0x03, 0x01, 0x0F 
   7620 48 B5              4239                     .word       SMVB_continue3_single 
   7622 0A 01 FC           4240                     .byte       0x0A, 0x01, -0x04 
   7625 04 01 F4           4241                     .byte       0x04, 0x01, -0x0C 
   7628 10 01 32           4242                     .byte       0x10, 0x01, 0x32 
   762B 49 D9              4243                     .word       SMVB_startMove_single 
   762D FA 01 F7           4244                     .byte       -0x06, 0x01, -0x09 
   7630 4B 23              4245                     .word       SMVB_startDraw_single 
   7632 09 01 FB           4246                     .byte       0x09, 0x01, -0x05 
   7635 48 B5              4247                     .word       SMVB_continue3_single 
   7637 05 01 0B           4248                     .byte       0x05, 0x01, 0x0B 
   763A F8 01 03           4249                     .byte       -0x08, 0x01, 0x03 
   763D FE 00 00           4250                     .byte       0xfe, 0x00, 0x00 
   7640 4C 42              4251                     .word       SMVB_lastDraw_rts2 
                           4252  .globl _ThroneList_3
   7642                    4253 _ThroneList_3: 
   7642 51 01 DC           4254                     .byte       0x51, 0x01, -0x24 
   7645 49 85              4255                     .word       SMVB_continue_double 
   7647 F4 01 EE           4256                     .byte       -0x0C, 0x01, -0x12 
   764A 4B 23              4257                     .word       SMVB_startDraw_yd4_single 
   764C 00 01 12           4258                     .byte       0x00, 0x01, 0x12 
   764F 48 CF              4259                     .word       SMVB_continue_single 
   7651 00 01 F5           4260                     .byte       0x00, 0x01, -0x0B 
   7654 4A D2              4261                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   7656 B2 01 00           4262                     .byte       -0x4E, 0x01, 0x00 
   7659 4B 23              4263                     .word       SMVB_startDraw_yd4_single 
   765B EF 01 2F           4264                     .byte       -0x11, 0x01, 0x2F 
   765E 48 B5              4265                     .word       SMVB_continue3_single 
   7660 1F 01 00           4266                     .byte       0x1F, 0x01, 0x00 
   7663 0C 01 D1           4267                     .byte       0x0C, 0x01, -0x2F 
   7666 00 01 9F           4268                     .byte       0x00, 0x01, -0x61 
   7669 49 D9              4269                     .word       SMVB_startMove_single 
   766B F4 01 30           4270                     .byte       -0x0C, 0x01, 0x30 
   766E 4B 23              4271                     .word       SMVB_startDraw_single 
   7670 E0 01 00           4272                     .byte       -0x20, 0x01, 0x00 
   7673 48 CF              4273                     .word       SMVB_continue_single 
   7675 12 01 0C           4274                     .byte       0x12, 0x01, 0x0C 
   7678 49 D9              4275                     .word       SMVB_startMove_single 
   767A 00 01 25           4276                     .byte       0x00, 0x01, 0x25 
   767D 4B 23              4277                     .word       SMVB_startDraw_single 
   767F EF 01 2F           4278                     .byte       -0x11, 0x01, 0x2F 
   7682 49 D9              4279                     .word       SMVB_startMove_single 
   7684 00 01 AC           4280                     .byte       0x00, 0x01, -0x54 
   7687 4B 23              4281                     .word       SMVB_startDraw_single 
   7689 20 01 00           4282                     .byte       0x20, 0x01, 0x00 
   768C 48 B5              4283                     .word       SMVB_continue3_single 
   768E 0C 01 D1           4284                     .byte       0x0C, 0x01, -0x2F 
   7691 2A 01 00           4285                     .byte       0x2A, 0x01, 0x00 
   7694 3A 01 F3           4286                     .byte       0x3A, 0x01, -0x0D 
   7697 49 D9              4287                     .word       SMVB_startMove_single 
   7699 CA 01 00           4288                     .byte       -0x36, 0x01, 0x00 
   769C 4B 23              4289                     .word       SMVB_startDraw_yd4_single 
   769E 00 01 12           4290                     .byte       0x00, 0x01, 0x12 
   76A1 48 81              4291                     .word       SMVB_continue7_single 
   76A3 F4 01 EE           4292                     .byte       -0x0C, 0x01, -0x12 
   76A6 DE 01 00           4293                     .byte       -0x22, 0x01, 0x00 
   76A9 B6 01 00           4294                     .byte       -0x4A, 0x01, 0x00 
   76AC FB 01 12           4295                     .byte       -0x05, 0x01, 0x12 
   76AF 17 01 00           4296                     .byte       0x17, 0x01, 0x00 
   76B2 FA 01 1E           4297                     .byte       -0x06, 0x01, 0x1E 
   76B5 E2 01 00           4298                     .byte       -0x1E, 0x01, 0x00 
   76B8 48 81              4299                     .word       SMVB_continue7_single 
   76BA FB 01 12           4300                     .byte       -0x05, 0x01, 0x12 
   76BD 23 01 00           4301                     .byte       0x23, 0x01, 0x00 
   76C0 00 01 18           4302                     .byte       0x00, 0x01, 0x18 
   76C3 F8 01 0A           4303                     .byte       -0x08, 0x01, 0x0A 
   76C6 08 01 08           4304                     .byte       0x08, 0x01, 0x08 
   76C9 00 01 1E           4305                     .byte       0x00, 0x01, 0x1E 
   76CC E2 01 00           4306                     .byte       -0x1E, 0x01, 0x00 
   76CF 48 B5              4307                     .word       SMVB_continue3_single 
   76D1 FB 01 12           4308                     .byte       -0x05, 0x01, 0x12 
   76D4 55 01 00           4309                     .byte       0x55, 0x01, 0x00 
   76D7 0C 01 D0           4310                     .byte       0x0C, 0x01, -0x30 
   76DA 48 DC              4311                     .word       SMVB_continue_yd4_single 
   76DC 64 01 00           4312                     .byte       0x64, 0x01, 0x00 
   76DF 48 CF              4313                     .word       SMVB_continue_single 
   76E1 00 01 EE           4314                     .byte       0x00, 0x01, -0x12 
   76E4 48 DE              4315                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   76E6 EE 01 00           4316                     .byte       -0x12, 0x01, 0x00 
   76E9 48 8E              4317                     .word       SMVB_continue6_single 
   76EB FA 01 F4           4318                     .byte       -0x06, 0x01, -0x0C 
   76EE 00 01 D0           4319                     .byte       0x00, 0x01, -0x30 
   76F1 06 01 F4           4320                     .byte       0x06, 0x01, -0x0C 
   76F4 12 01 00           4321                     .byte       0x12, 0x01, 0x00 
   76F7 00 01 EE           4322                     .byte       0x00, 0x01, -0x12 
   76FA C8 01 1C           4323                     .byte       -0x38, 0x01, 0x1C 
   76FD 49 D9              4324                     .word       SMVB_startMove_yd4_single 
   76FF FA 01 FE           4325                     .byte       -0x06, 0x01, -0x02 
   7702 4B 23              4326                     .word       SMVB_startDraw_single 
   7704 F9 01 0E           4327                     .byte       -0x07, 0x01, 0x0E 
   7707 48 B5              4328                     .word       SMVB_continue3_single 
   7709 0B 01 00           4329                     .byte       0x0B, 0x01, 0x00 
   770C 02 01 F4           4330                     .byte       0x02, 0x01, -0x0C 
   770F FA 01 15           4331                     .byte       -0x06, 0x01, 0x15 
   7712 49 D9              4332                     .word       SMVB_startMove_single 
   7714 F6 01 01           4333                     .byte       -0x0A, 0x01, 0x01 
   7717 4B 23              4334                     .word       SMVB_startDraw_single 
   7719 FD 01 0F           4335                     .byte       -0x03, 0x01, 0x0F 
   771C 48 B5              4336                     .word       SMVB_continue3_single 
   771E 09 01 FC           4337                     .byte       0x09, 0x01, -0x04 
   7721 04 01 F4           4338                     .byte       0x04, 0x01, -0x0C 
   7724 D5 01 24           4339                     .byte       -0x2B, 0x01, 0x24 
   7727 49 D9              4340                     .word       SMVB_startMove_single 
   7729 FA 01 F7           4341                     .byte       -0x06, 0x01, -0x09 
   772C 4B 23              4342                     .word       SMVB_startDraw_single 
   772E 09 01 FB           4343                     .byte       0x09, 0x01, -0x05 
   7731 48 B5              4344                     .word       SMVB_continue3_single 
   7733 05 01 0B           4345                     .byte       0x05, 0x01, 0x0B 
   7736 F8 01 03           4346                     .byte       -0x08, 0x01, 0x03 
   7739 FE 00 00           4347                     .byte       0xfe, 0x00, 0x00 
   773C 4C 42              4348                     .word       SMVB_lastDraw_rts2 
                           4349  .globl _CubeList
   773E                    4350 _CubeList: 
   773E 77 42              4351                     .word       _CubeList_0                   ; list of all single vectorlists in this 
   7740 77 82              4352                     .word       _CubeList_1 
                           4353  .globl _CubeList_0
   7742                    4354 _CubeList_0: 
   7742 50 01 C4           4355                     .byte       0x50, 0x01, -0x3C 
   7745 49 85              4356                     .word       SMVB_continue_double 
   7747 A0 01 00           4357                     .byte       -0x60, 0x01, 0x00 
   774A 4B 23              4358                     .word       SMVB_startDraw_yd4_single 
   774C 00 01 1E           4359                     .byte       0x00, 0x01, 0x1E 
   774F 48 C2              4360                     .word       SMVB_continue2_single 
   7751 60 01 00           4361                     .byte       0x60, 0x01, 0x00 
   7754 00 01 18           4362                     .byte       0x00, 0x01, 0x18 
   7757 48 DE              4363                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7759 A0 01 00           4364                     .byte       -0x60, 0x01, 0x00 
   775C 48 DC              4365                     .word       SMVB_continue_yd4_single 
   775E 00 01 18           4366                     .byte       0x00, 0x01, 0x18 
   7761 48 81              4367                     .word       SMVB_continue7_single 
   7763 18 01 00           4368                     .byte       0x18, 0x01, 0x00 
   7766 00 01 9A           4369                     .byte       0x00, 0x01, -0x66 
   7769 18 01 00           4370                     .byte       0x18, 0x01, 0x00 
   776C 00 01 66           4371                     .byte       0x00, 0x01, 0x66 
   776F 18 01 00           4372                     .byte       0x18, 0x01, 0x00 
   7772 00 01 9A           4373                     .byte       0x00, 0x01, -0x66 
   7775 18 01 00           4374                     .byte       0x18, 0x01, 0x00 
   7778 48 C2              4375                     .word       SMVB_continue2_single 
   777A 00 01 18           4376                     .byte       0x00, 0x01, 0x18 
   777D FE 00 00           4377                     .byte       0xfe, 0x00, 0x00 
   7780 4C 42              4378                     .word       SMVB_lastDraw_rts2 
                           4379  .globl _CubeList_1
   7782                    4380 _CubeList_1: 
   7782 50 01 C4           4381                     .byte       0x50, 0x01, -0x3C 
   7785 49 85              4382                     .word       SMVB_continue_double 
   7787 A0 01 00           4383                     .byte       -0x60, 0x01, 0x00 
   778A 4B 23              4384                     .word       SMVB_startDraw_yd4_single 
   778C 00 01 E8           4385                     .byte       0x00, 0x01, -0x18 
   778F 48 81              4386                     .word       SMVB_continue7_single 
   7791 18 01 00           4387                     .byte       0x18, 0x01, 0x00 
   7794 00 01 66           4388                     .byte       0x00, 0x01, 0x66 
   7797 18 01 00           4389                     .byte       0x18, 0x01, 0x00 
   779A 00 01 9A           4390                     .byte       0x00, 0x01, -0x66 
   779D 18 01 00           4391                     .byte       0x18, 0x01, 0x00 
   77A0 00 01 66           4392                     .byte       0x00, 0x01, 0x66 
   77A3 18 01 00           4393                     .byte       0x18, 0x01, 0x00 
   77A6 48 C2              4394                     .word       SMVB_continue2_single 
   77A8 00 01 E8           4395                     .byte       0x00, 0x01, -0x18 
   77AB A0 01 00           4396                     .byte       -0x60, 0x01, 0x00 
   77AE 48 DC              4397                     .word       SMVB_continue_yd4_single 
   77B0 00 01 E8           4398                     .byte       0x00, 0x01, -0x18 
   77B3 48 C2              4399                     .word       SMVB_continue2_single 
   77B5 60 01 00           4400                     .byte       0x60, 0x01, 0x00 
   77B8 00 01 E2           4401                     .byte       0x00, 0x01, -0x1E 
   77BB 48 DE              4402                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   77BD FE 00 00           4403                     .byte       0xfe, 0x00, 0x00 
   77C0 4C 42              4404                     .word       SMVB_lastDraw_rts2 
                           4405  .globl _FountainList
   77C2                    4406 _FountainList: 
   77C2 2E 01 14           4407                     .byte       0x2E, 0x01, 0x14 
   77C5 48 CF              4408                     .word       SMVB_continue_single 
   77C7 FB 01 10           4409                     .byte       -0x05, 0x01, 0x10 
   77CA 4B 23              4410                     .word       SMVB_startDraw_yd4_single 
   77CC F6 01 0E           4411                     .byte       -0x0A, 0x01, 0x0E 
   77CF 48 CF              4412                     .word       SMVB_continue_single 
   77D1 C2 01 00           4413                     .byte       -0x3E, 0x01, 0x00 
   77D4 48 DC              4414                     .word       SMVB_continue_yd4_single 
   77D6 F6 01 F2           4415                     .byte       -0x0A, 0x01, -0x0E 
   77D9 48 81              4416                     .word       SMVB_continue7_single 
   77DB F6 01 E0           4417                     .byte       -0x0A, 0x01, -0x20 
   77DE 00 01 A2           4418                     .byte       0x00, 0x01, -0x5E 
   77E1 0A 01 E2           4419                     .byte       0x0A, 0x01, -0x1E 
   77E4 0A 01 F1           4420                     .byte       0x0A, 0x01, -0x0F 
   77E7 3F 01 00           4421                     .byte       0x3F, 0x01, 0x00 
   77EA 0D 01 0F           4422                     .byte       0x0D, 0x01, 0x0F 
   77ED 06 01 17           4423                     .byte       0x06, 0x01, 0x17 
   77F0 48 C2              4424                     .word       SMVB_continue2_single 
   77F2 00 01 56           4425                     .byte       0x00, 0x01, 0x56 
   77F5 EE 01 F0           4426                     .byte       -0x12, 0x01, -0x10 
   77F8 49 D9              4427                     .word       SMVB_startMove_single 
   77FA 00 01 10           4428                     .byte       0x00, 0x01, 0x10 
   77FD 4B 23              4429                     .word       SMVB_startDraw_single 
   77FF 46 01 00           4430                     .byte       0x46, 0x01, 0x00 
   7802 48 CF              4431                     .word       SMVB_continue_single 
   7804 00 01 F0           4432                     .byte       0x00, 0x01, -0x10 
   7807 48 DE              4433                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7809 A4 01 00           4434                     .byte       -0x5C, 0x01, 0x00 
   780C 48 DC              4435                     .word       SMVB_continue_yd4_single 
   780E 00 01 E1           4436                     .byte       0x00, 0x01, -0x1F 
   7811 48 C2              4437                     .word       SMVB_continue2_single 
   7813 33 01 00           4438                     .byte       0x33, 0x01, 0x00 
   7816 00 01 0F           4439                     .byte       0x00, 0x01, 0x0F 
   7819 48 DE              4440                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   781B 1F 01 00           4441                     .byte       0x1F, 0x01, 0x00 
   781E 48 81              4442                     .word       SMVB_continue7_single 
   7820 FF 01 F0           4443                     .byte       -0x01, 0x01, -0x10 
   7823 F3 01 F3           4444                     .byte       -0x0D, 0x01, -0x0D 
   7826 EF 01 FD           4445                     .byte       -0x11, 0x01, -0x03 
   7829 02 01 F3           4446                     .byte       0x02, 0x01, -0x0D 
   782C 12 01 00           4447                     .byte       0x12, 0x01, 0x00 
   782F 14 01 0F           4448                     .byte       0x14, 0x01, 0x0F 
   7832 04 01 0F           4449                     .byte       0x04, 0x01, 0x0F 
   7835 48 81              4450                     .word       SMVB_continue7_single 
   7837 0F 01 FD           4451                     .byte       0x0F, 0x01, -0x03 
   783A 01 01 E4           4452                     .byte       0x01, 0x01, -0x1C 
   783D 0A 01 02           4453                     .byte       0x0A, 0x01, 0x02 
   7840 01 01 2D           4454                     .byte       0x01, 0x01, 0x2D 
   7843 12 01 03           4455                     .byte       0x12, 0x01, 0x03 
   7846 00 01 1A           4456                     .byte       0x00, 0x01, 0x1A 
   7849 EE 01 03           4457                     .byte       -0x12, 0x01, 0x03 
   784C 48 8E              4458                     .word       SMVB_continue6_single 
   784E 00 01 F0           4459                     .byte       0x00, 0x01, -0x10 
   7851 F6 01 02           4460                     .byte       -0x0A, 0x01, 0x02 
   7854 FD 01 0C           4461                     .byte       -0x03, 0x01, 0x0C 
   7857 F8 01 02           4462                     .byte       -0x08, 0x01, 0x02 
   785A 00 01 1F           4463                     .byte       0x00, 0x01, 0x1F 
   785D A5 01 00           4464                     .byte       -0x5B, 0x01, 0x00 
   7860 48 DC              4465                     .word       SMVB_continue_yd4_single 
   7862 05 01 00           4466                     .byte       0x05, 0x01, 0x00 
   7865 49 D9              4467                     .word       SMVB_startMove_single 
   7867 FB 01 10           4468                     .byte       -0x05, 0x01, 0x10 
   786A 4B 23              4469                     .word       SMVB_startDraw_single 
   786C EC 01 00           4470                     .byte       -0x14, 0x01, 0x00 
   786F 48 81              4471                     .word       SMVB_continue7_single 
   7871 F3 01 DF           4472                     .byte       -0x0D, 0x01, -0x21 
   7874 00 01 A3           4473                     .byte       0x00, 0x01, -0x5D 
   7877 0D 01 E3           4474                     .byte       0x0D, 0x01, -0x1D 
   787A 14 01 00           4475                     .byte       0x14, 0x01, 0x00 
   787D 0B 01 0E           4476                     .byte       0x0B, 0x01, 0x0E 
   7880 00 01 2E           4477                     .byte       0x00, 0x01, 0x2E 
   7883 FE 00 00           4478                     .byte       0xfe, 0x00, 0x00 
   7886 4C 42              4479                     .word       SMVB_lastDraw_rts2 
                           4480  .globl _AltarList
   7888                    4481 _AltarList: 
   7888 0E 01 64           4482                     .byte       0x0E, 0x01, 0x64 
   788B 48 CF              4483                     .word       SMVB_continue_single 
   788D E5 01 D2           4484                     .byte       -0x1B, 0x01, -0x2E 
   7890 4B 23              4485                     .word       SMVB_startDraw_single 
   7892 CB 01 00           4486                     .byte       -0x35, 0x01, 0x00 
   7895 49 D9              4487                     .word       SMVB_startMove_single 
   7897 01 01 EC           4488                     .byte       SHITREG_POKE_VALUE, 0x01, -0x14 
   789A 4B FE              4489                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   789C 00 01 C6           4490                     .byte       0x00, 0x01, -0x3A 
   789F 4A D2              4491                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   78A1 01 01 B4           4492                     .byte       SHITREG_POKE_VALUE, 0x01, -0x4C 
   78A4 4A E8              4493                     .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
   78A6 35 01 00           4494                     .byte       0x35, 0x01, 0x00 
   78A9 48 81              4495                     .word       SMVB_continue7_single 
   78AB 1B 01 36           4496                     .byte       0x1B, 0x01, 0x36 
   78AE 00 01 21           4497                     .byte       0x00, 0x01, 0x21 
   78B1 11 01 00           4498                     .byte       0x11, 0x01, 0x00 
   78B4 00 01 E3           4499                     .byte       0x00, 0x01, -0x1D 
   78B7 02 01 EC           4500                     .byte       0x02, 0x01, -0x14 
   78BA 06 01 EF           4501                     .byte       0x06, 0x01, -0x11 
   78BD 0E 01 E9           4502                     .byte       0x0E, 0x01, -0x17 
   78C0 48 81              4503                     .word       SMVB_continue7_single 
   78C2 0B 01 17           4504                     .byte       0x0B, 0x01, 0x17 
   78C5 06 01 15           4505                     .byte       0x06, 0x01, 0x15 
   78C8 02 01 18           4506                     .byte       0x02, 0x01, 0x18 
   78CB 00 01 15           4507                     .byte       0x00, 0x01, 0x15 
   78CE 12 01 00           4508                     .byte       0x12, 0x01, 0x00 
   78D1 00 01 11           4509                     .byte       0x00, 0x01, 0x11 
   78D4 EE 01 00           4510                     .byte       -0x12, 0x01, 0x00 
   78D7 48 81              4511                     .word       SMVB_continue7_single 
   78D9 00 01 12           4512                     .byte       0x00, 0x01, 0x12 
   78DC 09 01 41           4513                     .byte       0x09, 0x01, 0x41 
   78DF F7 01 F2           4514                     .byte       -0x09, 0x01, -0x0E 
   78E2 F8 01 D2           4515                     .byte       -0x08, 0x01, -0x2E 
   78E5 00 01 E9           4516                     .byte       0x00, 0x01, -0x17 
   78E8 E6 01 00           4517                     .byte       -0x1A, 0x01, 0x00 
   78EB 00 01 19           4518                     .byte       0x00, 0x01, 0x19 
   78EE 48 81              4519                     .word       SMVB_continue7_single 
   78F0 F9 01 2B           4520                     .byte       -0x07, 0x01, 0x2B 
   78F3 F6 01 0F           4521                     .byte       -0x0A, 0x01, 0x0F 
   78F6 09 01 C1           4522                     .byte       0x09, 0x01, -0x3F 
   78F9 00 01 EC           4523                     .byte       0x00, 0x01, -0x14 
   78FC EF 01 00           4524                     .byte       -0x11, 0x01, 0x00 
   78FF 00 01 60           4525                     .byte       0x00, 0x01, 0x60 
   7902 CB 01 00           4526                     .byte       -0x35, 0x01, 0x00 
   7905 48 DC              4527                     .word       SMVB_continue_yd4_single 
   7907 E5 01 D2           4528                     .byte       -0x1B, 0x01, -0x2E 
   790A 48 C2              4529                     .word       SMVB_continue2_single 
   790C 35 01 00           4530                     .byte       0x35, 0x01, 0x00 
   790F 00 01 CC           4531                     .byte       0x00, 0x01, -0x34 
   7912 48 DE              4532                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7914 08 01 E7           4533                     .byte       0x08, 0x01, -0x19 
   7917 49 D9              4534                     .word       SMVB_startMove_single 
   7919 01 01 1F           4535                     .byte       SHITREG_POKE_VALUE, 0x01, 0x1F 
   791C 4A E8              4536                     .word       SMVB_startDraw_yStays_single ; y was 0x08, now SHIFT Poke 
   791E F7 01 0E           4537                     .byte       -0x09, 0x01, 0x0E 
   7921 48 81              4538                     .word       SMVB_continue7_single 
   7923 F8 01 EC           4539                     .byte       -0x08, 0x01, -0x14 
   7926 DC 01 FC           4540                     .byte       -0x24, 0x01, -0x04 
   7929 EE 01 05           4541                     .byte       -0x12, 0x01, 0x05 
   792C 05 01 12           4542                     .byte       0x05, 0x01, 0x12 
   792F F0 01 2B           4543                     .byte       -0x10, 0x01, 0x2B 
   7932 00 01 14           4544                     .byte       0x00, 0x01, 0x14 
   7935 0C 01 06           4545                     .byte       0x0C, 0x01, 0x06 
   7938 48 C2              4546                     .word       SMVB_continue2_single 
   793A 04 01 14           4547                     .byte       0x04, 0x01, 0x14 
   793D F3 01 F8           4548                     .byte       -0x0D, 0x01, -0x08 
   7940 49 85              4549                     .word       SMVB_continue_double 
   7942 FC 01 F2           4550                     .byte       -0x04, 0x01, -0x0E 
   7945 48 81              4551                     .word       SMVB_continue7_single 
   7947 00 01 E6           4552                     .byte       0x00, 0x01, -0x1A 
   794A 05 01 F7           4553                     .byte       0x05, 0x01, -0x09 
   794D 00 01 EE           4554                     .byte       0x00, 0x01, -0x12 
   7950 F9 01 EB           4555                     .byte       -0x07, 0x01, -0x15 
   7953 01 01 EE           4556                     .byte       0x01, 0x01, -0x12 
   7956 09 01 F3           4557                     .byte       0x09, 0x01, -0x0D 
   7959 46 01 07           4558                     .byte       0x46, 0x01, 0x07 
   795C 48 CF              4559                     .word       SMVB_continue_single 
   795E 08 01 FC           4560                     .byte       0x08, 0x01, -0x04 
   7961 48 DC              4561                     .word       SMVB_continue_yd4_single 
   7963 F7 01 05           4562                     .byte       -0x09, 0x01, 0x05 
   7966 49 D9              4563                     .word       SMVB_startMove_single 
   7968 00 01 AE           4564                     .byte       0x00, 0x01, -0x52 
   796B 4B 23              4565                     .word       SMVB_startDraw_single 
   796D 4F 01 47           4566                     .byte       0x4F, 0x01, 0x47 
   7970 49 D9              4567                     .word       SMVB_startMove_single 
   7972 FF 01 EC           4568                     .byte       -0x01, 0x01, -0x14 
   7975 4B 23              4569                     .word       SMVB_startDraw_yd4_single 
   7977 FA 01 E9           4570                     .byte       -0x06, 0x01, -0x17 
   797A 48 81              4571                     .word       SMVB_continue7_single 
   797C FD 01 F2           4572                     .byte       -0x03, 0x01, -0x0E 
   797F F5 01 1D           4573                     .byte       -0x0B, 0x01, 0x1D 
   7982 FD 01 1C           4574                     .byte       -0x03, 0x01, 0x1C 
   7985 00 01 10           4575                     .byte       0x00, 0x01, 0x10 
   7988 1A 01 00           4576                     .byte       0x1A, 0x01, 0x00 
   798B 00 01 F0           4577                     .byte       0x00, 0x01, -0x10 
   798E FE 00 00           4578                     .byte       0xfe, 0x00, 0x00 
   7991 4C 42              4579                     .word       SMVB_lastDraw_rts2 
                           4580  .globl _ElevatorList
   7993                    4581 _ElevatorList: 
   7993 25 01 5F           4582                     .byte       0x25, 0x01, 0x5F 
   7996 49 85              4583                     .word       SMVB_continue_double 
   7998 00 01 E4           4584                     .byte       0x00, 0x01, -0x1C 
   799B 4B 23              4585                     .word       SMVB_startDraw_single 
   799D E6 01 FC           4586                     .byte       -0x1A, 0x01, -0x04 
   79A0 48 81              4587                     .word       SMVB_continue7_single 
   79A2 FD 01 EE           4588                     .byte       -0x03, 0x01, -0x12 
   79A5 F5 01 01           4589                     .byte       -0x0B, 0x01, 0x01 
   79A8 FE 01 24           4590                     .byte       -0x02, 0x01, 0x24 
   79AB 02 01 23           4591                     .byte       0x02, 0x01, 0x23 
   79AE 0B 01 01           4592                     .byte       0x0B, 0x01, 0x01 
   79B1 03 01 F1           4593                     .byte       0x03, 0x01, -0x0F 
   79B4 1A 01 F9           4594                     .byte       0x1A, 0x01, -0x07 
   79B7 48 CF              4595                     .word       SMVB_continue_single 
   79B9 F3 01 04           4596                     .byte       -0x0D, 0x01, 0x04 
   79BC 49 D9              4597                     .word       SMVB_startMove_single 
   79BE 00 01 12           4598                     .byte       0x00, 0x01, 0x12 
   79C1 4B 23              4599                     .word       SMVB_startDraw_single 
   79C3 EA 01 14           4600                     .byte       -0x16, 0x01, 0x14 
   79C6 48 C2              4601                     .word       SMVB_continue2_single 
   79C8 DB 01 05           4602                     .byte       -0x25, 0x01, 0x05 
   79CB 0D 01 FD           4603                     .byte       0x0D, 0x01, -0x03 
   79CE 49 D9              4604                     .word       SMVB_startMove_single 
   79D0 00 01 8C           4605                     .byte       0x00, 0x01, -0x74 
   79D3 4B 23              4606                     .word       SMVB_startDraw_single 
   79D5 F3 01 FE           4607                     .byte       -0x0D, 0x01, -0x02 
   79D8 49 D9              4608                     .word       SMVB_startMove_single 
   79DA 26 01 03           4609                     .byte       0x26, 0x01, 0x03 
   79DD 4B 23              4610                     .word       SMVB_startDraw_single 
   79DF 16 01 14           4611                     .byte       0x16, 0x01, 0x14 
   79E2 48 C2              4612                     .word       SMVB_continue2_single 
   79E4 00 01 13           4613                     .byte       0x00, 0x01, 0x13 
   79E7 B4 01 2D           4614                     .byte       -0x4C, 0x01, 0x2D 
   79EA 49 D9              4615                     .word       SMVB_startMove_yd4_single 
   79EC F2 01 00           4616                     .byte       -0x0E, 0x01, 0x00 
   79EF 4B 23              4617                     .word       SMVB_startDraw_single 
   79F1 00 01 3B           4618                     .byte       0x00, 0x01, 0x3B 
   79F4 48 B5              4619                     .word       SMVB_continue3_single 
   79F6 0E 01 00           4620                     .byte       0x0E, 0x01, 0x00 
   79F9 00 01 C5           4621                     .byte       0x00, 0x01, -0x3B 
   79FC E1 01 F4           4622                     .byte       -0x1F, 0x01, -0x0C 
   79FF 49 D9              4623                     .word       SMVB_startMove_single 
   7A01 9E 01 00           4624                     .byte       -0x62, 0x01, 0x00 
   7A04 4B 03              4625                     .word       SMVB_startDraw_yd4_double 
   7A06 00 01 7B           4626                     .byte       0x00, 0x01, 0x7B 
   7A09 48 C2              4627                     .word       SMVB_continue2_single 
   7A0B 15 01 15           4628                     .byte       0x15, 0x01, 0x15 
   7A0E 60 01 00           4629                     .byte       0x60, 0x01, 0x00 
   7A11 49 85              4630                     .word       SMVB_continue_double 
   7A13 00 01 D7           4631                     .byte       0x00, 0x01, -0x29 
   7A16 48 DE              4632                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7A18 1E 01 EC           4633                     .byte       0x1E, 0x01, -0x14 
   7A1B 48 CF              4634                     .word       SMVB_continue_single 
   7A1D 00 01 9F           4635                     .byte       0x00, 0x01, -0x61 
   7A20 49 85              4636                     .word       SMVB_continue_double 
   7A22 E2 01 EC           4637                     .byte       -0x1E, 0x01, -0x14 
   7A25 48 C2              4638                     .word       SMVB_continue2_single 
   7A27 00 01 D8           4639                     .byte       0x00, 0x01, -0x28 
   7A2A A0 01 00           4640                     .byte       -0x60, 0x01, 0x00 
   7A2D 49 93              4641                     .word       SMVB_continue_yd4_double 
   7A2F EB 01 14           4642                     .byte       -0x15, 0x01, 0x14 
   7A32 48 C2              4643                     .word       SMVB_continue2_single 
   7A34 00 01 7B           4644                     .byte       0x00, 0x01, 0x7B 
   7A37 62 01 00           4645                     .byte       0x62, 0x01, 0x00 
   7A3A 49 85              4646                     .word       SMVB_continue_double 
   7A3C 00 01 E4           4647                     .byte       0x00, 0x01, -0x1C 
   7A3F 48 DE              4648                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7A41 A5 01 00           4649                     .byte       -0x5B, 0x01, 0x00 
   7A44 49 93              4650                     .word       SMVB_continue_yd4_double 
   7A46 00 01 56           4651                     .byte       0x00, 0x01, 0x56 
   7A49 48 D1              4652                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   7A4B 5B 01 00           4653                     .byte       0x5B, 0x01, 0x00 
   7A4E 49 85              4654                     .word       SMVB_continue_double 
   7A50 00 01 E3           4655                     .byte       0x00, 0x01, -0x1D 
   7A53 48 DE              4656                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7A55 10 01 9C           4657                     .byte       0x10, 0x01, -0x64 
   7A58 49 D9              4658                     .word       SMVB_startMove_single 
   7A5A 0E 01 00           4659                     .byte       0x0E, 0x01, 0x00 
   7A5D 4B 23              4660                     .word       SMVB_startDraw_single 
   7A5F 00 01 3B           4661                     .byte       0x00, 0x01, 0x3B 
   7A62 48 B5              4662                     .word       SMVB_continue3_single 
   7A64 F2 01 00           4663                     .byte       -0x0E, 0x01, 0x00 
   7A67 00 01 C5           4664                     .byte       0x00, 0x01, -0x3B 
   7A6A 9D 01 E4           4665                     .byte       -0x63, 0x01, -0x1C 
   7A6D 4A 06              4666                     .word       SMVB_startMove_yd4_double 
   7A6F 00 01 1C           4667                     .byte       0x00, 0x01, 0x1C 
   7A72 4B 23              4668                     .word       SMVB_startDraw_single 
   7A74 5B 01 00           4669                     .byte       0x5B, 0x01, 0x00 
   7A77 49 85              4670                     .word       SMVB_continue_double 
   7A79 00 01 E4           4671                     .byte       0x00, 0x01, -0x1C 
   7A7C 48 DE              4672                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7A7E A5 01 00           4673                     .byte       -0x5B, 0x01, 0x00 
   7A81 49 93              4674                     .word       SMVB_continue_yd4_double 
   7A83 00 01 2B           4675                     .byte       0x00, 0x01, 0x2B 
   7A86 4B E3              4676                     .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
   7A88 01 01 2C           4677                     .byte       SHITREG_POKE_VALUE, 0x01, 0x2C 
   7A8B 4A E8              4678                     .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
   7A8D 5B 01 00           4679                     .byte       0x5B, 0x01, 0x00 
   7A90 49 85              4680                     .word       SMVB_continue_double 
   7A92 00 01 D4           4681                     .byte       0x00, 0x01, -0x2C 
   7A95 48 DE              4682                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7A97 A5 01 00           4683                     .byte       -0x5B, 0x01, 0x00 
   7A9A 49 93              4684                     .word       SMVB_continue_yd4_double 
   7A9C 00 01 4F           4685                     .byte       0x00, 0x01, 0x4F 
   7A9F 4A 06              4686                     .word       SMVB_startMove_double 
   7AA1 5B 01 00           4687                     .byte       0x5B, 0x01, 0x00 
   7AA4 4A 26              4688                     .word       SMVB_startDraw_double 
   7AA6 00 01 2C           4689                     .byte       0x00, 0x01, 0x2C 
   7AA9 48 DE              4690                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7AAB A5 01 00           4691                     .byte       -0x5B, 0x01, 0x00 
   7AAE 49 93              4692                     .word       SMVB_continue_yd4_double 
   7AB0 00 01 D4           4693                     .byte       0x00, 0x01, -0x2C 
   7AB3 48 D1              4694                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   7AB5 00 01 3B           4695                     .byte       0x00, 0x01, 0x3B 
   7AB8 4A D2              4696                     .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
   7ABA 5B 01 00           4697                     .byte       0x5B, 0x01, 0x00 
   7ABD 4A 26              4698                     .word       SMVB_startDraw_double 
   7ABF 00 01 1D           4699                     .byte       0x00, 0x01, 0x1D 
   7AC2 48 DE              4700                     .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
   7AC4 A5 01 00           4701                     .byte       -0x5B, 0x01, 0x00 
   7AC7 49 93              4702                     .word       SMVB_continue_yd4_double 
   7AC9 00 01 E3           4703                     .byte       0x00, 0x01, -0x1D 
   7ACC 48 D1              4704                     .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
   7ACE FE 00 00           4705                     .byte       0xfe, 0x00, 0x00 
   7AD1 4C 42              4706                     .word       SMVB_lastDraw_rts2 
                           4707  .globl _BoxList
   7AD3                    4708 _BoxList: 
   7AD3 7A D7              4709                     .word       _BoxList_0                    ; list of all single vectorlists in this 
   7AD5 7B 0E              4710                     .word       _BoxList_1 
                           4711  .globl _BoxList_0
   7AD7                    4712 _BoxList_0: 
   7AD7 50 01 C5           4713                     .byte       0x50, 0x01, -0x3B 
   7ADA 49 85              4714                     .word       SMVB_continue_double 
   7ADC A0 01 00           4715                     .byte       -0x60, 0x01, 0x00 
   7ADF 4B 23              4716                     .word       SMVB_startDraw_yd4_single 
   7AE1 00 01 E7           4717                     .byte       0x00, 0x01, -0x19 
   7AE4 4B E3              4718                     .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
   7AE6 60 01 00           4719                     .byte       0x60, 0x01, 0x00 
   7AE9 4B 23              4720                     .word       SMVB_startDraw_single 
   7AEB A0 01 66           4721                     .byte       -0x60, 0x01, 0x66 
   7AEE 49 D9              4722                     .word       SMVB_startMove_yd4_single 
   7AF0 60 01 00           4723                     .byte       0x60, 0x01, 0x00 
   7AF3 4B 23              4724                     .word       SMVB_startDraw_single 
   7AF5 00 01 E8           4725                     .byte       0x00, 0x01, -0x18 
   7AF8 4B E3              4726                     .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
   7AFA A0 01 00           4727                     .byte       -0x60, 0x01, 0x00 
   7AFD 4B 23              4728                     .word       SMVB_startDraw_yd4_single 
   7AFF 00 01 E5           4729                     .byte       0x00, 0x01, -0x1B 
   7B02 4B E3              4730                     .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
   7B04 60 01 00           4731                     .byte       0x60, 0x01, 0x00 
   7B07 4B 23              4732                     .word       SMVB_startDraw_single 
   7B09 FE 00 00           4733                     .byte       0xfe, 0x00, 0x00 
   7B0C 4C 42              4734                     .word       SMVB_lastDraw_rts2 
                           4735  .globl _BoxList_1
   7B0E                    4736 _BoxList_1: 
   7B0E 20 01 B8           4737                     .byte       0x20, 0x01, -0x48 
   7B11 49 85              4738                     .word       SMVB_continue_double 
   7B13 00 01 66           4739                     .byte       0x00, 0x01, 0x66 
   7B16 4B 23              4740                     .word       SMVB_startDraw_single 
   7B18 18 01 00           4741                     .byte       0x18, 0x01, 0x00 
   7B1B 49 D9              4742                     .word       SMVB_startMove_single 
   7B1D 01 01 9A           4743                     .byte       SHITREG_POKE_VALUE, 0x01, -0x66 
   7B20 4B FE              4744                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   7B22 18 01 00           4745                     .byte       0x18, 0x01, 0x00 
   7B25 49 D9              4746                     .word       SMVB_startMove_single 
   7B27 01 01 66           4747                     .byte       SHITREG_POKE_VALUE, 0x01, 0x66 
   7B2A 4B FE              4748                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   7B2C 18 01 00           4749                     .byte       0x18, 0x01, 0x00 
   7B2F 49 D9              4750                     .word       SMVB_startMove_single 
   7B31 01 01 9A           4751                     .byte       SHITREG_POKE_VALUE, 0x01, -0x66 
   7B34 4B FE              4752                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   7B36 18 01 00           4753                     .byte       0x18, 0x01, 0x00 
   7B39 49 D9              4754                     .word       SMVB_startMove_single 
   7B3B 01 01 66           4755                     .byte       SHITREG_POKE_VALUE, 0x01, 0x66 
   7B3E 4B FE              4756                     .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
   7B40 FE 00 00           4757                     .byte       0xfe, 0x00, 0x00 
   7B43 4C 42              4758                     .word       SMVB_lastDraw_rts2 
                           4759  .globl _DragonFlameList
   7B45                    4760 _DragonFlameList: 
   7B45 7B 4D              4761                     .word       _DragonFlame_0                ; list of all single vectorlists in this 
   7B47 7B 9C              4762                     .word       _DragonFlame_1 
   7B49 7B EB              4763                     .word       _DragonFlame_2 
   7B4B 7C 40              4764                     .word       _DragonFlame_3 
                           4765  .globl _DragonFlame_0
   7B4D                    4766 _DragonFlame_0: 
   7B4D 82 01 23           4767                     .byte       -0x7E, 0x01, 0x23 
   7B50 48 DC              4768                     .word       SMVB_continue_yd4_single 
   7B52 DA 01 2A           4769                     .byte       -0x26, 0x01, 0x2A 
   7B55 4B 23              4770                     .word       SMVB_startDraw_single 
   7B57 ED 01 20           4771                     .byte       -0x13, 0x01, 0x20 
   7B5A 48 81              4772                     .word       SMVB_continue7_single 
   7B5C 03 01 56           4773                     .byte       0x03, 0x01, 0x56 
   7B5F 2C 01 4E           4774                     .byte       0x2C, 0x01, 0x4E 
   7B62 27 01 3A           4775                     .byte       0x27, 0x01, 0x3A 
   7B65 1E 01 D5           4776                     .byte       0x1E, 0x01, -0x2B 
   7B68 15 01 D4           4777                     .byte       0x15, 0x01, -0x2C 
   7B6B 10 01 CD           4778                     .byte       0x10, 0x01, -0x33 
   7B6E FE 01 C1           4779                     .byte       -0x02, 0x01, -0x3F 
   7B71 48 B5              4780                     .word       SMVB_continue3_single 
   7B73 F0 01 C2           4781                     .byte       -0x10, 0x01, -0x3E 
   7B76 E7 01 E4           4782                     .byte       -0x19, 0x01, -0x1C 
   7B79 E8 01 24           4783                     .byte       -0x18, 0x01, 0x24 
   7B7C 49 D9              4784                     .word       SMVB_startMove_single 
   7B7E 16 01 34           4785                     .byte       0x16, 0x01, 0x34 
   7B81 4B 23              4786                     .word       SMVB_startDraw_single 
   7B83 05 01 2A           4787                     .byte       0x05, 0x01, 0x2A 
   7B86 48 8E              4788                     .word       SMVB_continue6_single 
   7B88 F5 01 28           4789                     .byte       -0x0B, 0x01, 0x28 
   7B8B F1 01 2B           4790                     .byte       -0x0F, 0x01, 0x2B 
   7B8E D1 01 B9           4791                     .byte       -0x2F, 0x01, -0x47 
   7B91 00 01 CB           4792                     .byte       0x00, 0x01, -0x35 
   7B94 16 01 D0           4793                     .byte       0x16, 0x01, -0x30 
   7B97 FE 00 00           4794                     .byte       0xfe, 0x00, 0x00 
   7B9A 4C 42              4795                     .word       SMVB_lastDraw_rts2 
                           4796  .globl _DragonFlame_1
   7B9C                    4797 _DragonFlame_1: 
   7B9C AE 01 1E           4798                     .byte       -0x52, 0x01, 0x1E 
   7B9F 48 DC              4799                     .word       SMVB_continue_yd4_single 
   7BA1 22 01 37           4800                     .byte       0x22, 0x01, 0x37 
   7BA4 4B 23              4801                     .word       SMVB_startDraw_single 
   7BA6 1D 01 46           4802                     .byte       0x1D, 0x01, 0x46 
   7BA9 48 81              4803                     .word       SMVB_continue7_single 
   7BAB FF 01 3B           4804                     .byte       -0x01, 0x01, 0x3B 
   7BAE F8 01 40           4805                     .byte       -0x08, 0x01, 0x40 
   7BB1 E0 01 2D           4806                     .byte       -0x20, 0x01, 0x2D 
   7BB4 D0 01 39           4807                     .byte       -0x30, 0x01, 0x39 
   7BB7 BF 01 A1           4808                     .byte       -0x41, 0x01, -0x5F 
   7BBA E8 01 BE           4809                     .byte       -0x18, 0x01, -0x42 
   7BBD F8 01 A3           4810                     .byte       -0x08, 0x01, -0x5D 
   7BC0 48 B5              4811                     .word       SMVB_continue3_single 
   7BC2 21 01 D1           4812                     .byte       0x21, 0x01, -0x2F 
   7BC5 28 01 E6           4813                     .byte       0x28, 0x01, -0x1A 
   7BC8 0C 01 24           4814                     .byte       0x0C, 0x01, 0x24 
   7BCB 49 D9              4815                     .word       SMVB_startMove_single 
   7BCD E2 01 1E           4816                     .byte       -0x1E, 0x01, 0x1E 
   7BD0 4B 23              4817                     .word       SMVB_startDraw_single 
   7BD2 00 01 35           4818                     .byte       0x00, 0x01, 0x35 
   7BD5 48 8E              4819                     .word       SMVB_continue6_single 
   7BD7 31 01 6D           4820                     .byte       0x31, 0x01, 0x6D 
   7BDA 1E 01 BA           4821                     .byte       0x1E, 0x01, -0x46 
   7BDD 04 01 C8           4822                     .byte       0x04, 0x01, -0x38 
   7BE0 FD 01 D4           4823                     .byte       -0x03, 0x01, -0x2C 
   7BE3 F4 01 E0           4824                     .byte       -0x0C, 0x01, -0x20 
   7BE6 FE 00 00           4825                     .byte       0xfe, 0x00, 0x00 
   7BE9 4C 42              4826                     .word       SMVB_lastDraw_rts2 
                           4827  .globl _DragonFlame_2
   7BEB                    4828 _DragonFlame_2: 
   7BEB BA 01 14           4829                     .byte       -0x46, 0x01, 0x14 
   7BEE 49 93              4830                     .word       SMVB_continue_yd4_double 
   7BF0 DC 01 30           4831                     .byte       -0x24, 0x01, 0x30 
   7BF3 4B 23              4832                     .word       SMVB_startDraw_single 
   7BF5 F2 01 3B           4833                     .byte       -0x0E, 0x01, 0x3B 
   7BF8 48 B5              4834                     .word       SMVB_continue3_single 
   7BFA 08 01 56           4835                     .byte       0x08, 0x01, 0x56 
   7BFD 16 01 3D           4836                     .byte       0x16, 0x01, 0x3D 
   7C00 20 01 46           4837                     .byte       0x20, 0x01, 0x46 
   7C03 49 85              4838                     .word       SMVB_continue_double 
   7C05 30 01 C7           4839                     .byte       0x30, 0x01, -0x39 
   7C08 48 8E              4840                     .word       SMVB_continue6_single 
   7C0A 2C 01 B9           4841                     .byte       0x2C, 0x01, -0x47 
   7C0D 0A 01 D3           4842                     .byte       0x0A, 0x01, -0x2D 
   7C10 06 01 C3           4843                     .byte       0x06, 0x01, -0x3D 
   7C13 DE 01 98           4844                     .byte       -0x22, 0x01, -0x68 
   7C16 D0 01 C6           4845                     .byte       -0x30, 0x01, -0x3A 
   7C19 FE 01 32           4846                     .byte       -0x02, 0x01, 0x32 
   7C1C 49 D9              4847                     .word       SMVB_startMove_single 
   7C1E 0C 01 20           4848                     .byte       0x0C, 0x01, 0x20 
   7C21 4B 23              4849                     .word       SMVB_startDraw_single 
   7C23 0B 01 2F           4850                     .byte       0x0B, 0x01, 0x2F 
   7C26 48 B5              4851                     .word       SMVB_continue3_single 
   7C28 FC 01 5A           4852                     .byte       -0x04, 0x01, 0x5A 
   7C2B DD 01 4E           4853                     .byte       -0x23, 0x01, 0x4E 
   7C2E E9 01 B8           4854                     .byte       -0x17, 0x01, -0x48 
   7C31 49 85              4855                     .word       SMVB_continue_double 
   7C33 FC 01 C0           4856                     .byte       -0x04, 0x01, -0x40 
   7C36 48 C2              4857                     .word       SMVB_continue2_single 
   7C38 1E 01 E2           4858                     .byte       0x1E, 0x01, -0x1E 
   7C3B FE 00 00           4859                     .byte       0xfe, 0x00, 0x00 
   7C3E 4C 42              4860                     .word       SMVB_lastDraw_rts2 
                           4861  .globl _DragonFlame_3
   7C40                    4862 _DragonFlame_3: 
   7C40 B5 01 17           4863                     .byte       -0x4B, 0x01, 0x17 
   7C43 49 93              4864                     .word       SMVB_continue_yd4_double 
   7C45 E0 01 40           4865                     .byte       -0x20, 0x01, 0x40 
   7C48 4B 23              4866                     .word       SMVB_startDraw_single 
   7C4A F4 01 33           4867                     .byte       -0x0C, 0x01, 0x33 
   7C4D 48 B5              4868                     .word       SMVB_continue3_single 
   7C4F 04 01 44           4869                     .byte       0x04, 0x01, 0x44 
   7C52 16 01 3D           4870                     .byte       0x16, 0x01, 0x3D 
   7C55 21 01 58           4871                     .byte       0x21, 0x01, 0x58 
   7C58 49 85              4872                     .word       SMVB_continue_double 
   7C5A 36 01 B1           4873                     .byte       0x36, 0x01, -0x4F 
   7C5D 48 8E              4874                     .word       SMVB_continue6_single 
   7C5F 1C 01 C7           4875                     .byte       0x1C, 0x01, -0x39 
   7C62 10 01 C9           4876                     .byte       0x10, 0x01, -0x37 
   7C65 06 01 BD           4877                     .byte       0x06, 0x01, -0x43 
   7C68 E0 01 8C           4878                     .byte       -0x20, 0x01, -0x74 
   7C6B D0 01 C6           4879                     .byte       -0x30, 0x01, -0x3A 
   7C6E 06 01 32           4880                     .byte       0x06, 0x01, 0x32 
   7C71 49 D9              4881                     .word       SMVB_startMove_single 
   7C73 12 01 2C           4882                     .byte       0x12, 0x01, 0x2C 
   7C76 4B 23              4883                     .word       SMVB_startDraw_single 
   7C78 11 01 3F           4884                     .byte       0x11, 0x01, 0x3F 
   7C7B 48 B5              4885                     .word       SMVB_continue3_single 
   7C7D F6 01 50           4886                     .byte       -0x0A, 0x01, 0x50 
   7C80 D7 01 56           4887                     .byte       -0x29, 0x01, 0x56 
   7C83 E5 01 BA           4888                     .byte       -0x1B, 0x01, -0x46 
   7C86 49 85              4889                     .word       SMVB_continue_double 
   7C88 01 01 AC           4890                     .byte       0x01, 0x01, -0x54 
   7C8B 48 C2              4891                     .word       SMVB_continue2_single 
   7C8D 0A 01 E0           4892                     .byte       0x0A, 0x01, -0x20 
   7C90 FE 00 00           4893                     .byte       0xfe, 0x00, 0x00 
   7C93 4C 42              4894                     .word       SMVB_lastDraw_rts2 
                           4895 ;wr2
                           4896 ; MY_WAIT_RECAL
                           4897 ; rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$vlists.asx$3     0000 GR  |   2 A$vlists.asx$3     0002 GR
  2 A$vlists.asx$3     0005 GR  |   2 A$vlists.asx$3     0006 GR
  2 A$vlists.asx$3     0008 GR  |   2 A$vlists.asx$3     000A GR
  2 A$vlists.asx$3     000C GR  |   2 A$vlists.asx$3     000F GR
  2 A$vlists.asx$3     0011 GR  |   2 A$vlists.asx$3     0013 GR
  2 A$vlists.asx$3     0016 GR  |   2 A$vlists.asx$3     0018 GR
  2 A$vlists.asx$3     001A GR  |   2 A$vlists.asx$3     001C GR
  2 A$vlists.asx$3     001D GR  |   2 A$vlists.asx$3     001F GR
  2 A$vlists.asx$3     0021 GR  |   2 A$vlists.asx$3     0024 GR
  2 A$vlists.asx$3     0026 GR  |   2 A$vlists.asx$3     0028 GR
  2 A$vlists.asx$3     002B GR  |   2 A$vlists.asx$3     002D GR
  2 A$vlists.asx$3     002F GR  |   2 A$vlists.asx$3     0032 GR
  2 A$vlists.asx$3     0034 GR  |   2 A$vlists.asx$3     0036 GR
  2 A$vlists.asx$3     0039 GR  |   2 A$vlists.asx$3     003B GR
  2 A$vlists.asx$3     003D GR  |   2 A$vlists.asx$3     0040 GR
  2 A$vlists.asx$3     0041 GR  |   2 A$vlists.asx$3     0043 GR
  2 A$vlists.asx$3     0045 GR  |   2 A$vlists.asx$3     0048 GR
  2 A$vlists.asx$3     0049 GR  |   2 A$vlists.asx$3     004B GR
  2 A$vlists.asx$3     004D GR  |   2 A$vlists.asx$3     0050 GR
  2 A$vlists.asx$3     0051 GR  |   2 A$vlists.asx$3     0053 GR
  2 A$vlists.asx$3     0055 GR  |   2 A$vlists.asx$3     0058 GR
  2 A$vlists.asx$3     0059 GR  |   2 A$vlists.asx$4     005B GR
  2 A$vlists.asx$4     005D GR  |   2 A$vlists.asx$4     0060 GR
  2 A$vlists.asx$4     0061 GR  |   2 A$vlists.asx$4     0063 GR
  2 A$vlists.asx$4     0065 GR  |   2 A$vlists.asx$4     0068 GR
  2 A$vlists.asx$4     0069 GR  |   2 A$vlists.asx$4     006B GR
  2 A$vlists.asx$4     006D GR  |   2 A$vlists.asx$4     0070 GR
  2 A$vlists.asx$4     0071 GR  |   2 A$vlists.asx$4     0073 GR
  2 A$vlists.asx$4     0075 GR  |   2 A$vlists.asx$4     0078 GR
  2 A$vlists.asx$4     0079 GR  |   2 A$vlists.asx$4     007B GR
  2 A$vlists.asx$4     007D GR  |   2 A$vlists.asx$4     0080 GR
  2 A$vlists.asx$4     0081 GR  |   2 A$vlists.asx$4     0083 GR
  2 A$vlists.asx$4     0085 GR  |   2 A$vlists.asx$4     0088 GR
  2 A$vlists.asx$4     0089 GR  |   2 A$vlists.asx$4     008B GR
  2 A$vlists.asx$4     008D GR  |   2 A$vlists.asx$4     0090 GR
  2 A$vlists.asx$4     0091 GR  |   2 A$vlists.asx$4     0093 GR
  2 A$vlists.asx$4     0095 GR  |   2 A$vlists.asx$4     0098 GR
  2 A$vlists.asx$4     0099 GR  |   2 A$vlists.asx$4     009B GR
  2 A$vlists.asx$4     009D GR  |   2 A$vlists.asx$4     00A0 GR
  2 A$vlists.asx$4     00A1 GR  |   2 A$vlists.asx$4     00A3 GR
  2 A$vlists.asx$4     00A5 GR  |   2 A$vlists.asx$4     00A8 GR
  2 A$vlists.asx$4     00A9 GR  |   2 A$vlists.asx$4     00AB GR
  2 A$vlists.asx$4     00AD GR  |   2 A$vlists.asx$4     00B0 GR
  2 A$vlists.asx$4     00B1 GR  |   2 A$vlists.asx$4     00B3 GR
  2 A$vlists.asx$4     00B5 GR  |   2 A$vlists.asx$4     00B8 GR
  2 A$vlists.asx$4     00B9 GR  |   2 A$vlists.asx$4     00BB GR
  2 A$vlists.asx$4     00BD GR  |   2 A$vlists.asx$4     00C0 GR
  2 A$vlists.asx$4     00C1 GR  |   2 A$vlists.asx$4     00C3 GR
  2 A$vlists.asx$4     00C5 GR  |   2 A$vlists.asx$4     00C8 GR
  2 A$vlists.asx$4     00C9 GR  |   2 A$vlists.asx$4     00CB GR
  2 A$vlists.asx$4     00CD GR  |   2 A$vlists.asx$4     00D0 GR
  2 A$vlists.asx$4     00D1 GR  |   2 A$vlists.asx$4     00D3 GR
  2 A$vlists.asx$4     00D5 GR  |   2 A$vlists.asx$4     00D8 GR
  2 A$vlists.asx$4     00D9 GR  |   2 A$vlists.asx$4     00DB GR
  2 A$vlists.asx$4     00DD GR  |   2 A$vlists.asx$4     00E0 GR
  2 A$vlists.asx$5     00E1 GR  |   2 A$vlists.asx$5     00E3 GR
  2 A$vlists.asx$5     00E5 GR  |   2 A$vlists.asx$5     00E8 GR
  2 A$vlists.asx$5     00E9 GR  |   2 A$vlists.asx$5     00EB GR
  2 A$vlists.asx$5     00ED GR  |   2 A$vlists.asx$5     00F0 GR
  2 A$vlists.asx$5     00F1 GR  |   2 A$vlists.asx$5     00F3 GR
  2 A$vlists.asx$5     00F5 GR  |   2 A$vlists.asx$5     00F8 GR
  2 A$vlists.asx$5     00F9 GR  |   2 A$vlists.asx$5     00FB GR
  2 A$vlists.asx$5     00FD GR  |   2 A$vlists.asx$5     0100 GR
  2 A$vlists.asx$5     0101 GR  |   2 A$vlists.asx$5     0103 GR
  2 A$vlists.asx$5     0105 GR  |   2 A$vlists.asx$5     0108 GR
  2 A$vlists.asx$5     0109 GR  |   2 A$vlists.asx$5     010B GR
  2 A$vlists.asx$5     010D GR  |   2 A$vlists.asx$5     0110 GR
  2 A$vlists.asx$5     0111 GR  |   2 A$vlists.asx$5     0113 GR
  2 A$vlists.asx$5     0115 GR  |   2 A$vlists.asx$5     0118 GR
  2 A$vlists.asx$5     0119 GR  |   2 A$vlists.asx$5     011B GR
  2 A$vlists.asx$5     011D GR  |   2 A$vlists.asx$5     0120 GR
  2 A$vlists.asx$5     0121 GR  |   2 A$vlists.asx$5     0123 GR
  2 A$vlists.asx$5     0125 GR  |   2 A$vlists.asx$5     0128 GR
  2 A$vlists.asx$5     0129 GR  |   2 A$vlists.asx$5     012B GR
  2 A$vlists.asx$5     012C GR  |   2 A$vlists.asx$5     012E GR
  2 A$vlists.asx$5     0131 GR  |   2 A$vlists.asx$5     0134 GR
  2 A$vlists.asx$5     0136 GR  |   2 A$vlists.asx$5     0138 GR
  2 A$vlists.asx$5     0139 GR  |   2 A$vlists.asx$5     013B GR
  2 A$vlists.asx$5     013D GR  |   2 A$vlists.asx$5     0140 GR
  2 A$vlists.asx$5     0142 GR  |   2 A$vlists.asx$5     0144 GR
  2 A$vlists.asx$5     0147 GR  |   2 A$vlists.asx$5     014A GR
  2 A$vlists.asx$5     014C GR  |   2 A$vlists.asx$5     014D GR
  2 A$vlists.asx$5     014E GR  |   2 A$vlists.asx$5     0150 GR
  2 A$vlists.asx$5     0151 GR  |   2 A$vlists.asx$5     0153 GR
  2 A$vlists.asx$5     0155 GR  |   2 A$vlists.asx$5     0158 GR
  2 A$vlists.asx$5     015A GR  |   2 A$vlists.asx$5     015C GR
  2 A$vlists.asx$5     015F GR  |   2 A$vlists.asx$5     0160 GR
  2 A$vlists.asx$5     0162 GR  |   2 A$vlists.asx$5     0163 GR
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
  2 _AltarList         28A4 GR  |   2 _BoxList           2AEF GR
  2 _BoxList_0         2AF3 GR  |   2 _BoxList_1         2B2A GR
  2 _CubeList          275A GR  |   2 _CubeList_0        275E GR
  2 _CubeList_1        279E GR  |   2 _DemonList         1846 GR
  2 _DotList           1DC0 GR  |   2 _DragonFlameLi     2B61 GR
  2 _DragonFlame_0     2B69 GR  |   2 _DragonFlame_1     2BB8 GR
  2 _DragonFlame_2     2C07 GR  |   2 _DragonFlame_3     2C5C GR
  2 _DragonList        19C9 GR  |   2 _DwarfList         0EF6 GR
  2 _ElevatorList      29AF GR  |   2 _ElfList           0C6A GR
  2 _FighterList       0A1A GR  |   2 _FountainList      27DE GR
  2 _GhoulList         0DC6 GR  |   2 _GiantList         149F GR
  2 _GnollList         048E GR  |   2 _HobbitList        0753 GR
  2 _HomeList          0359 GR  |   2 _InnList           2224 GR
  2 _KoboldList        054C GR  |   2 _MinotaurList      1368 GR
  2 _MummyList         0AEB GR  |   2 _OgreList          1203 GR
  2 _OrcList           0967 GR  |   2 _PlayerList        0288 GR
  2 _ScenList_17       0165 GR  |   2 _ScenList_18       0188 GR
  2 _ScenList_19       01AB GR  |   2 _ScenList_20       01F6 GR
  2 _SkeletonList      05DD GR  |   2 _SpecterList       15FC GR
  2 _SpellIcons        1B70 GR  |   2 _SpellIcons_0      1B86 GR
  2 _SpellIcons_1      1BA9 GR  |   2 _SpellIcons_10     1D49 GR
  2 _SpellIcons_2      1BC9 GR  |   2 _SpellIcons_3      1C19 GR
  2 _SpellIcons_4      1C3B GR  |   2 _SpellIcons_5      1C6D GR
  2 _SpellIcons_6      1C90 GR  |   2 _SpellIcons_7      1CB3 GR
  2 _SpellIcons_8      1CD7 GR  |   2 _SpellIcons_9      1D1D GR
  2 _StaircaseList     03CC GR  |   2 _ThroneList        2362 GR
  2 _ThroneList_0      236A GR  |   2 _ThroneList_1      2466 GR
  2 _ThroneList_2      2562 GR  |   2 _ThroneList_3      265E GR
  2 _TreasureList      1DE6 GR  |   2 _TreasureList_     1DF2 GR
  2 _TreasureList_     1E1F GR  |   2 _TreasureList_     1EA7 GR
  2 _TreasureList_     1F20 GR  |   2 _TreasureList_     1FF0 GR
  2 _TreasureList_     2153 GR  |   2 _TrollList         1074 GR
  2 _UnkownList        0241 GR  |   2 _VampireList       1752 GR
  2 _WraithList        1132 GR  |   2 _ZombieList        083B GR
  2 _drawAltar         011B GR  |   2 _drawBox           0153 GR
  2 _drawCube          0142 GR  |   2 _drawDemon         00EB GR
  2 _drawDot           000A GR  |   2 _drawDragon        00F3 GR
  2 _drawDwarf         00AB GR  |   2 _drawElevator      0123 GR
  2 _drawElf           009B GR  |   2 _drawFighter       008B GR
  2 _drawFlame         013B GR  |   2 _drawFountain      0113 GR
  2 _drawGhoul         00A3 GR  |   2 _drawGiant         00D3 GR
  2 _drawGnoll         005B GR  |   2 _drawHobbit        0073 GR
  2 _drawHome          0103 GR  |   2 _drawInn           010B GR
  2 _drawKobold        0063 GR  |   2 _drawLeftDoor      0026 GR
  2 _drawLeftDoor_     0043 GR  |   2 _drawLeftWall      0034 GR
  2 _drawLeftWall_     003B GR  |   2 _drawMinotaur      00CB GR
  2 _drawMummy         0093 GR  |   2 _drawNone          012B GR
  2 _drawOgre          00C3 GR  |   2 _drawOrc           0083 GR
  2 _drawPlayer        0053 GR  |   2 _drawSkeleton      006B GR
  2 _drawSpecter       00DB GR  |   2 _drawSpell         0000 GR
  2 _drawStaircase     00FB GR  |   2 _drawThrone        012C GR
  2 _drawTreasure      015A GR  |   2 _drawTroll         00B3 GR
  2 _drawUnkown        001F GR  |   2 _drawUnkown_no     004B GR
  2 _drawUpDoor        002D GR  |   2 _drawUpWall        0011 GR
  2 _drawVampire       00E3 GR  |   2 _drawWraith        00BB GR
  2 _drawZomnbie       007B GR  |   2 contDraw           0016 GR
  2 contDraw2          0131 GR  |   2 contDraw3          0147 GR
    music1         =   FD0D     |     music2         =   FD1D 
    music3         =   FD81     |     music4         =   FDD3 
    music5         =   FE38     |     music6         =   FE76 
    music7         =   FEC6     |     music8         =   FEF8 
    music9         =   FF26     |     musica         =   FF44 
    musicb         =   FF62     |     musicc         =   FF7A 
    musicd         =   FF8F 

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 2CB1   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

