                              1                     .module  printstringsync.pre.s 
                              2                     .area    .text 
                     C81B     3 Vec_Joy_1_X = 0xc81b
                     C81C     4 Vec_Joy_1_Y = 0xc81c
                     C825     5 Vec_Loop_Count = 0xC825
                              6 
                     C82C     7 Vec_Str_Ptr         =        0xC82C 
                     C82B     8 Vec_Text_Width      =        0xC82B 
                     D000     9 VIA_port_b          =        0xD000                       ;VIA port B data I/O register 
                     D001    10 VIA_port_a          =        0xD001                       ;VIA port A data I/O register (handshaking) 
                     D002    11 VIA_DDR_b           =        0xD002                       ;VIA port B data direction register (0=input 1=output) 
                     D003    12 VIA_DDR_a           =        0xD003                       ;VIA port A data direction register (0=input 1=output) 
                     D004    13 VIA_t1_cnt_lo       =        0xD004                       ;VIA timer 1 count register lo (scale factor) 
                     D005    14 VIA_t1_cnt_hi       =        0xD005                       ;VIA timer 1 count register hi 
                     D006    15 VIA_t1_lch_lo       =        0xD006                       ;VIA timer 1 latch register lo 
                     D007    16 VIA_t1_lch_hi       =        0xD007                       ;VIA timer 1 latch register hi 
                     D008    17 VIA_t2_lo           =        0xD008                       ;VIA timer 2 count/latch register lo (refresh) 
                     D009    18 VIA_t2_hi           =        0xD009                       ;VIA timer 2 count/latch register hi 
                     D00A    19 VIA_shift_reg       =        0xD00A                       ;VIA shift register 
                     D00B    20 VIA_aux_cntl        =        0xD00B                       ;VIA auxiliary control register 
                     D00C    21 VIA_cntl            =        0xD00C                       ;VIA control register 
                     D00D    22 VIA_int_flags       =        0xD00D 
                             23                     .globl   font5a_line1 
   579E                      24 font5a_line1: 
   579E 00 08 28 28 1E 94    25                     .byte    0b00000000, 0b00001000, 0b00101000, 0b00101000, 0b00011110, 0b10010100, 0b01000000, 0b00001000, 0b00010000, 0b00001000, 0b00101010, 0b00001000 
        40 08 10 08 2A 08
   57AA 00 00 00 04 14 18    26                     .byte    0b00000000, 0b00000000, 0b00000000, 0b00000100, 0b00010100, 0b00011000, 0b00111100, 0b00111100, 0b00011000, 0b00111100, 0b00111100, 0b01111100 
        3C 3C 18 3C 3C 7C
   57B6 3C 3E 00 00 06 00    27                     .byte    0b00111100, 0b00111110, 0b00000000, 0b00000000, 0b00000110, 0b00000000, 0b01100000, 0b00111000, 0b00111100, 0b00011000, 0b01110000, 0b00111000 
        60 38 3C 18 70 38
   57C2 78 7C 78 7C 42 3E    28                     .byte    0b01111000, 0b01111100, 0b01111000, 0b01111100, 0b01000010, 0b00111110, 0b00011100, 0b01001000, 0b01000000, 0b01100110, 0b01100010, 0b00011100 
        1C 48 40 66 62 1C
   57CE 78 1C 78 1C 3E 42    29                     .byte    0b01111000, 0b00011100, 0b01111000, 0b00011100, 0b00111110, 0b01000010, 0b01000010, 0b01000010, 0b01000010, 0b00100010, 0b01111110, 0b00111000 
        42 42 42 22 7E 38
   57DA 20 38 10 00 08 3C    30                     .byte    0b00100000, 0b00111000, 0b00010000, 0b00000000, 0b00001000, 0b00111100, 0b01000000, 0b00000000, 0b00000010, 0b00111100, 0b00011000, 0b00110100 
        40 00 02 3C 18 34
   57E6 20 08 08 20 10 00    31                     .byte    0b00100000, 0b00001000, 0b00001000, 0b00100000, 0b00010000, 0b00000000, 0b00000000, 0b00000000, 0b00000000, 0b00000000, 0b00000000, 0b00011100 
        00 00 00 00 00 1C
   57F2 10 00 00 00 00 00    32                     .byte    0b00010000, 0b00000000, 0b00000000, 0b00000000, 0b00000000, 0b00000000, 0b00000000, 0b00011000, 0b00001000, 0b00011000, 0b00000000, 0b01100000 
        00 18 08 18 00 60
                             33                     .globl   font5a_line2 
   57FE                      34 font5a_line2: 
   57FE 00 08 00 7C 28 68    35                     .byte    0b00000000, 0b00001000, 0b00000000, 0b01111100, 0b00101000, 0b01101000, 0b01000000, 0b00000000, 0b00100000, 0b00000100, 0b00011100, 0b00001000 
        40 00 20 04 1C 08
   580A 00 00 00 08 22 08    36                     .byte    0b00000000, 0b00000000, 0b00000000, 0b00001000, 0b00100010, 0b00001000, 0b01000010, 0b01000010, 0b00101000, 0b01000000, 0b01000000, 0b00001000, 0b01000010 
        42 42 28 40 40 08
        42
   5817 42 08 08 18 7E 18    37                     .byte    0b01000010, 0b00001000, 0b00001000, 0b00011000, 0b01111110, 0b00011000, 0b01000100, 0b01000100, 0b00100100, 0b01001000, 0b01000100, 0b01000100, 0b01000000 
        44 44 24 48 44 44
        40
   5824 40 80 42 08 04 50    38                     .byte    0b01000000, 0b10000000, 0b01000010, 0b00001000, 0b00000100, 0b01010000, 0b01000000, 0b01011010, 0b01010010, 0b00100010, 0b01000100, 0b00100010, 0b01000100 
        40 5A 52 22 44 22
        44
   5831 20 08 42 42 5A 24    39                     .byte    0b00100000, 0b00001000, 0b01000010, 0b01000010, 0b01011010, 0b00100100, 0b00010100, 0b00000100, 0b00100000, 0b00010000, 0b00001000, 0b00101000, 0b00000000 
        14 04 20 10 08 28
        00
   583E 08 02 7C 1C 3E 42    40                     .byte    0b00001000, 0b00000010, 0b01111100, 0b00011100, 0b00111110, 0b01000010, 0b00010000, 0b01001100, 0b00111000, 0b00000000, 0b00000000, 0b00100100, 0b00010000 
        10 4C 38 00 00 24
        10
   584B 66 2E 3C 7C 3E 2C    41                     .byte    0b01100110, 0b00101110, 0b00111100, 0b01111100, 0b00111110, 0b00101100, 0b00100000, 0b00111100, 0b00100010, 0b01000010, 0b10000010, 0b01000010, 0b01000010 
        20 3C 22 42 82 42
        42
   5858 3C 10 08 08 00 60    42                     .byte    0b00111100, 0b00010000, 0b00001000, 0b00001000, 0b00000000, 0b01100000 
   585E 00 08 00 28 1C 14    43                     .byte    0b00000000, 0b00001000, 0b00000000, 0b00101000, 0b00011100, 0b00010100, 0b00110010, 0b00000000, 0b00100000, 0b00000100, 0b00111110, 0b00111110 
        32 00 20 04 3E 3E
   586A 00 3C 00 10 22 08    44                     .byte    0b00000000, 0b00111100, 0b00000000, 0b00010000, 0b00100010, 0b00001000, 0b00011100, 0b00001100, 0b01001000, 0b00111100, 0b01111110, 0b00010000, 0b00111100 
        1C 0C 48 3C 7E 10
        3C
   5877 3E 00 00 60 00 06    45                     .byte    0b00111110, 0b00000000, 0b00000000, 0b01100000, 0b00000000, 0b00000110, 0b00011000, 0b10011100, 0b00111100, 0b01111000, 0b10000000, 0b01000100, 0b01110000 
        18 9C 3C 78 80 44
        70
   5884 70 9C 7E 08 04 70    46                     .byte    0b01110000, 0b10011100, 0b01111110, 0b00001000, 0b00000100, 0b01110000, 0b01000000, 0b01011010, 0b01001010, 0b00100010, 0b01111000, 0b00101010, 0b01101000 
        40 5A 4A 22 78 2A
        68
   5891 1C 08 42 24 5A 18    47                     .byte    0b00011100, 0b00001000, 0b01000010, 0b00100100, 0b01011010, 0b00011000, 0b00001000, 0b00011000, 0b00100000, 0b00001000, 0b00001000, 0b00000000, 0b00000000 
        08 18 20 08 08 00
        00
   589E 00 3E 42 20 42 7E    48                     .byte    0b00000000, 0b00111110, 0b01000010, 0b00100000, 0b01000010, 0b01111110, 0b00111000, 0b00110100, 0b00100100, 0b00001000, 0b00001000, 0b00101000, 0b00010000 
        38 34 24 08 08 28
        10
   58AB 5A 32 42 42 42 32    49                     .byte    0b01011010, 0b00110010, 0b01000010, 0b01000010, 0b01000010, 0b00110010, 0b00011000, 0b00010000, 0b00100010, 0b01000010, 0b10000010, 0b00101100, 0b00110100 
        18 10 22 42 82 2C
        34
   58B8 08 20 08 04 32 70    50                     .byte    0b00001000, 0b00100000, 0b00001000, 0b00000100, 0b00110010, 0b01110000 
   58BE 00 00 00 7C 0A 2A    51                     .byte    0b00000000, 0b00000000, 0b00000000, 0b01111100, 0b00001010, 0b00101010, 0b01001100, 0b00000000, 0b00100000, 0b00000100, 0b00011100, 0b00001000 
        4C 00 20 04 1C 08
   58CA 00 00 00 20 22 08    52                     .byte    0b00000000, 0b00000000, 0b00000000, 0b00100000, 0b00100010, 0b00001000, 0b00100000, 0b01000010, 0b01111100, 0b00000010, 0b01000010, 0b00100000, 0b01000010 
        20 42 7C 02 42 20
        42
   58D7 02 00 08 18 7E 18    53                     .byte    0b00000010, 0b00000000, 0b00001000, 0b00011000, 0b01111110, 0b00011000, 0b00000000, 0b10010100, 0b01000010, 0b01000100, 0b01000100, 0b01000100, 0b01000000 
        00 94 42 44 44 44
        40
   58E4 40 84 42 08 44 48    54                     .byte    0b01000000, 0b10000100, 0b01000010, 0b00001000, 0b01000100, 0b01001000, 0b01000000, 0b01000010, 0b01000110, 0b00100010, 0b01000000, 0b00100110, 0b01011000 
        40 42 46 22 40 26
        58
   58F1 02 08 42 24 66 24    55                     .byte    0b00000010, 0b00001000, 0b01000010, 0b00100100, 0b01100110, 0b00100100, 0b00001000, 0b00100000, 0b00100000, 0b00000100, 0b00001000, 0b00000000, 0b00000000 
        08 20 20 04 08 00
        00
   58FE 00 46 62 20 46 40    56                     .byte    0b00000000, 0b01000110, 0b01100010, 0b00100000, 0b01000110, 0b01000000, 0b00010000, 0b00000100, 0b00100100, 0b00001000, 0b00101000, 0b00110000, 0b00010000 
        10 04 24 08 28 30
        10
   590B 42 22 42 7C 3E 20    57                     .byte    0b01000010, 0b00100010, 0b01000010, 0b01111100, 0b00111110, 0b00100000, 0b00000100, 0b00010000, 0b00100110, 0b00100100, 0b01010100, 0b00110100, 0b00001000 
        04 10 26 24 54 34
        08
   5918 10 10 08 08 4C 68    58                     .byte    0b00010000, 0b00010000, 0b00001000, 0b00001000, 0b01001100, 0b01101000 
   591E 00 08 00 28 3C 04    59                     .byte    0b00000000, 0b00001000, 0b00000000, 0b00101000, 0b00111100, 0b00000100, 0b00110010, 0b00000000, 0b00010000, 0b00001000, 0b00101010, 0b00001000 
        32 00 10 08 2A 08
   592A 08 00 08 40 14 1C    60                     .byte    0b00001000, 0b00000000, 0b00001000, 0b01000000, 0b00010100, 0b00011100, 0b01111110, 0b00111100, 0b00001000, 0b00111100, 0b00111100, 0b01000000, 0b00111100 
        7E 3C 08 3C 3C 40
        3C
   5937 3C 08 10 06 00 60    61                     .byte    0b00111100, 0b00001000, 0b00010000, 0b00000110, 0b00000000, 0b01100000, 0b00010000, 0b01011100, 0b01000010, 0b01111000, 0b00111000, 0b01111000, 0b01111100 
        10 5C 42 78 38 78
        7C
   5944 40 78 42 3E 38 44    62                     .byte    0b01000000, 0b01111000, 0b01000010, 0b00111110, 0b00111000, 0b01000100, 0b01111100, 0b01000010, 0b01000010, 0b00011100, 0b01000000, 0b00011100, 0b01000100 
        7C 42 42 1C 40 1C
        44
   5951 1C 08 3C 18 42 42    63                     .byte    0b00011100, 0b00001000, 0b00111100, 0b00011000, 0b01000010, 0b01000010, 0b00001000, 0b01111110, 0b00111000, 0b00000010, 0b00111000, 0b00000000, 0b01111110 
        08 7E 38 02 38 00
        7E
   595E 00 3A 5C 1C 3A 3C    64                     .byte    0b00000000, 0b00111010, 0b01011100, 0b00011100, 0b00111010, 0b00111100, 0b00010000, 0b00011100, 0b00100100, 0b00001000, 0b00011000, 0b00101100, 0b00011000 
        10 1C 24 08 18 2C
        18
   596B 42 22 3C 40 02 20    65                     .byte    0b01000010, 0b00100010, 0b00111100, 0b01000000, 0b00000010, 0b00100000, 0b00111000, 0b00011000, 0b00011010, 0b00011000, 0b01101100, 0b01000010, 0b00001000 
        38 18 1A 18 6C 42
        08
   5978 3C 18 08 18 00 60    66                     .byte    0b00111100, 0b00011000, 0b00001000, 0b00011000, 0b00000000, 0b01100000 
                     0005    67 FONT_HEIGHT         =        5 
                     0060    68 FONT_LENGTH         =        ((font5a_line2-font5a_line1)) 
                     FFE0    69 FONT_START_A        =        font5a_line1 - 32            ;' ' ; // space is 1 
                     0160    70 FONT_END            =        FONT_START_A+(FONT_HEIGHT-1)*FONT_LENGTH 
                             71 ; bank 1 + 2 + 0 (from dodger)
                             72 ; zero delay is needed for zeroing to work correctly
                             73 ; depends on the distance of the current integrator position to actual zero point
                             74 ; experiment with my vectri:
                             75 ;ZERO ing the integrators takes time. Measures at my vectrex show e.g.:
                             76 ;If you move the beam with a to x = -127 and y = -127 at diffferent scale values, the time to reach zero:
                             77 ;- scale 0xff -> zero 110 cycles
                             78 ;- scale 0x7f -> zero 75 cycles
                             79 ;- scale 0x40 -> zero 57 cycles
                             80 ;- scale 0x20 -> zero 53 cycles
                     0002    81 ZERO_DELAY_P2       =        2                            ;2 ; delay 7 counter is exactly 111 cycles delay between zero SETTING and zero unsetting (in moveto_d) 
                             82 ; Warning - direct line found!
                             83 ;                    direct   0xd0 
                             84 ;-----------------------------------------------------------------------;
                             85 ;       F38A    Print_List                                              ;
                             86 ;       F38C    Print_List_chk                                          ;
                             87 ;                                                                       ;
                             88 ; This displays the group of strings described by the parameter block   ;
                             89 ; which is pointed to by the U register.  The string parameter block    ;
                             90 ; has the following format:                                             ;
                             91 ;                                                                       ;
                             92 ;       rel y, rel x, string, 0x80,                                     ;
                             93 ;       rel y, rel x, string, 0x80,                                     ;
                             94 ;       0x00                                                            ;
                             95 ;                                                                       ;
                             96 ; The current string height and width to which the hardware is = will ;
                             97 ; be used.                                                              ;
                             98 ;                                                                       ;
                             99 ; Print_List routine will first print the passed-in string, and THEN    ;
                            100 ; check for the end of the string list.  Print_List_Chk will check for  ;
                            101 ; the end of the string list first.                                     ;
                            102 ;                                                                       ;
                            103 ; ENTRY DP = 0xD0                                                        ;
                            104 ;       U-reg points to string list                                     ;
                            105 ;                                                                       ;
                            106 ; EXIT: U-reg points to null terminator byte                            ;
                            107 ;                                                                       ;
                            108 ;       D-reg, X-reg trashed                                            ;
                            109 ;-----------------------------------------------------------------------;
                            110                     .setdp   0xd000,_DATA 
                            111 
                            112                     .globl   _syncPrintStrd 
   597E                     113 _syncPrintStrd: 
                            114 ; put move position on stack put it so, that we can load "d" directly from stack
                            115 
                            116 ; expects Xpos in b reg, than Ypos is gotten from stack
                            117 ;                    tfr      b,a 
   597E A6 62         [ 5]  118                     lda      2,s 
   5980 34 66         [ 9]  119                     pshs     d ,y , u
                            120 ;                    STx      Vec_Str_Ptr                  ;Save string pointer 
                            121 
                            122 ; if before usage, ZERO is active, following is not needed
                            123 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            124 ; POSITION "EXACT" PATCH assuming x pos is midle alligned, 
                            125 ; if that is a case we can use neg x pos as "opposite" string pos
                            126 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            127 ;                    ldd      #(0b10000010)*256+0xCC       ; zero the integrators 
                            128 ;                    stb      *VIA_cntl                    ; store zeroing values to cntl 
                            129 ;                    ldb      #ZERO_DELAY_P2               ; and wait for zeroing to be actually done 
                            130 ;; reset integrators
                            131 ;                    clr      *VIA_port_a                  ; reset integrator offset 
                            132 ;                                                          ; lda #%10000010 
                            133 ;; wait that zeroing surely has the desired effect!
                            134 ;zeroLoop_a_2: 
                            135 ;                    sta      *VIA_port_b                  ; while waiting, zero offsets 
                            136 ;                    decb     
                            137 ;                    bne      zeroLoop_a_2 
                            138 ;                    inca     
                            139 ;                    sta      *VIA_port_b 
                            140 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            141 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            142 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            143 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            144 
                            145 
                            146 
                            147 
                            148 ;---------------------
                            149 ;---------------------
                            150 ;---------------------
                            151 ;* can be left out - if tested
                            152 ;* used for "nicer" string starts
                            153 ;*, saves about 100 cycles per string
                            154 ;*
                            155 ;*                    ldd      ,s 
                            156 ;*                    negb     
                            157 ;*; macro call ->                     MY_MOVE_TO_D_START  
                            158 ;*                    STA      *VIA_port_a                  ;Store Y in D/A register 
                            159 ;*                    LDA      #0xCE                        ;Blank low, zero high? 
                            160 ;*                    STA      *VIA_cntl                    ; 
                            161 ;*                    CLRA     
                            162 ;*                    STA      *VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
                            163 ;*                    nop                                   ; y must be set more than xx cycles on some vectrex 
                            164 ;*                    INC      *VIA_port_b                  ;Disable mux 
                            165 ;*                    STB      *VIA_port_a                  ;Store X in D/A register 
                            166 ;*                    STA      *VIA_t1_cnt_hi               ;enable timer 
                            167 ;*;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            168 ;*                    LDX      #FONT_START_A -FONT_LENGTH   ;Point to start of chargen bitmaps 
                            169 ;*                    ldb      Vec_Text_Width 
                            170 ;*
                            171 ;*
                            172 ;*
                            173 ;*;                    lda      #0x81 
                            174 ;*                    lda      #0x01 
                            175 ;*                    tfr      d,y 
                            176 ;*; macro call ->                     MY_MOVE_TO_B_END  
                            177 ;*                    LDB      #0x40                        ; 
                            178 ;*                    .globl   LF33D22 
                            179 ;*LF33D22:            BITB     *VIA_int_flags               ; 
                            180 ;*                    BEQ      LF33D22                      ; 
                            181 ;*                    .globl   printsyncAgain 
                            182 ;*printsyncAgain: 
                            183 ;*; macro call ->                     NEXT_SYNC_LINE  
                            184 ;*; zero
                            185 ;*                    ldd      #(ZERO_DELAY_P2)*256+0xCC    ; zero the integrators 
                            186 ;*                    stb      *VIA_cntl                    ; store zeroing values to cntl 
                            187 ;*; wait that zeroing surely has the desired effect!
                            188 ;*                    .globl   zeroLoop_a3 
                            189 ;*zeroLoop_a3: 
                            190 ;*                    nop      
                            191 ;*                    nop      
                            192 ;*                    deca     
                            193 ;*                    bne      zeroLoop_a3 
                            194 ;---------------------
                            195 ;---------------------
                            196 ;---------------------
                            197 
                            198 
                            199 
                            200 
                            201 
   5982 EC E4         [ 5]  202                     ldd      ,s 
                            203 ; macro call ->                     MY_MOVE_TO_D_START  
   5984 97 01         [ 4]  204                     STA      *VIA_port_a                  ;Store Y in D/A register 
   5986 86 CE         [ 2]  205                     LDA      #0xCE                        ;Blank low, zero high? 
   5988 97 0C         [ 4]  206                     STA      *VIA_cntl                    ; 
   598A 4F            [ 2]  207                     CLRA     
   598B 97 00         [ 4]  208                     STA      *VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
                            209 ; here because we need 2 cycles delay between two VIA_b accesse
   598D BF C8 2C      [ 6]  210                     STx      Vec_Str_Ptr                  ;Save string pointer 
   5990 0C 00         [ 6]  211                     INC      *VIA_port_b                  ;Disable mux 
   5992 D7 01         [ 4]  212                     STB      *VIA_port_a                  ;Store X in D/A register 
   5994 97 05         [ 4]  213                     STA      *VIA_t1_cnt_hi               ;enable timer 
                            214 
                            215 
                            216 ;---------------------
   5996 8E 57 1E      [ 3]  217         LDX      #FONT_START_A -FONT_LENGTH   ;Point to start of chargen bitmaps 
   5999 F6 C8 2B      [ 5]  218         ldb      Vec_Text_Width 
   599C 86 01         [ 2]  219         lda      #0x01 
   599E 1F 02         [ 6]  220         tfr      d,y 
                            221 ;---------------------
                            222 
   59A0 6A E4         [ 6]  223                     dec      ,s                           ; can be done in move 
                            224 ; dec      ,s ; hight of string
   59A2 30 88 60      [ 5]  225                     LEAX     FONT_LENGTH,X                ;[3]Point to next chargen row 
   59A5 86 18         [ 2]  226                     lda      #0x18 
   59A7 FE C8 2C      [ 6]  227                     LDU      Vec_Str_Ptr                  ;Point to start of text string 
                            228 ; macro call ->                     MY_MOVE_TO_B_END  
   59AA C6 40         [ 2]  229                     LDB      #0x40                        ; 
                            230 
   59AC D5 0D         [ 4]  231 LF33D55:            BITB     *VIA_int_flags               ; 
   59AE 27 FC         [ 3]  232                     BEQ      LF33D55                      ; 
   59B0 97 0B         [ 4]  233                     STA      *VIA_aux_cntl                ;Shift reg mode = 110 (shift out under system clock), T1 PB7 disabled, one shot mode 
                            234                                                           ; first entry here, ramp is disabled 
                            235                                                           ; if there was a jump from below 
                            236                                                           ; ramp will be enabled by next line 
   59B2 CC 00 80      [ 3]  237                     LDD      #0x0080                      ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
   59B5 97 01         [ 4]  238                     sta      *VIA_port_a                  ;Clear D/A output 
   59B7 D7 00         [ 4]  239                     STb      *VIA_port_b                  ;Enable mux 
                            240 ; TO FAST EXAMPLE!!! (cranky)
                            241 ;                    LDD      #0x8000                       ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
                            242 ; std <VIA_port_b
   59B9 10 9F 00            243                     sty      *VIA_port_b 
                            244 ; assuming first char is NEVER 0x80
   59BC E6 C0         [ 6]  245                     LDb      ,U+                          ;[+6]Get next character 
                            246 ; one letter is drawn (one row that is) in 18 cycles
                            247 ; 13 cycles overhead
                            248 ; ramp is thus active for #ofLetters*18 + 13 cycles
   59BE                     249 LF4C7_a3: 
   59BE E6 85         [ 5]  250                     LDb      b,X                          ;[+5]Get bitmap from chargen table 
   59C0 D7 0A         [ 4]  251                     STb      *VIA_shift_reg               ;[+4]rasterout of char bitmap "row" thru shift out in shift register 
   59C2                     252 LF4CB_a3: 
   59C2 E6 C0         [ 6]  253                     LDb      ,U+                          ;[+6]Get next character 
   59C4 2A F8         [ 3]  254                     BPL      LF4C7_a3                     ;[+3]Go back if not terminator 
   59C6 97 00         [ 4]  255                     STa      *VIA_port_b                  ; is still 0x80 ;[4]disable RAMP, disable mux don't matter 
   59C8 86 98         [ 2]  256                     LDA      #0x98 
   59CA 97 0B         [ 4]  257                     STA      *VIA_aux_cntl                ;T1?PB7 enabled 
                            258 ; macro call ->                     NEXT_SYNC_LINE  
                            259 ; zero
   59CC CC 02 CC      [ 3]  260                     ldd      #(ZERO_DELAY_P2)*256+0xCC    ; zero the integrators 
   59CF D7 0C         [ 4]  261                     stb      *VIA_cntl                    ; store zeroing values to cntl 
                            262 ; wait that zeroing surely has the desired effect!
                            263 
   59D1                     264 zeroLoop_a6: 
   59D1 12            [ 2]  265                     nop      
   59D2 12            [ 2]  266                     nop      
   59D3 4A            [ 2]  267                     deca     
   59D4 26 FB         [ 3]  268                     bne      zeroLoop_a6 
   59D6 EC E4         [ 5]  269                     ldd      ,s 
                            270 
   59D8 97 01         [ 4]  271                     STA      *VIA_port_a                  ;Store Y in D/A register 
   59DA 86 CE         [ 2]  272                     LDA      #0xCE                        ;Blank low, zero high? 
   59DC 97 0C         [ 4]  273                     STA      *VIA_cntl                    ; 
   59DE 4F            [ 2]  274                     CLRA     
   59DF 97 00         [ 4]  275                     STA      *VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
   59E1 12            [ 2]  276                     nop                                   ; y must be set more than xx cycles on some vectrex 
   59E2 0C 00         [ 6]  277                     INC      *VIA_port_b                  ;Disable mux 
   59E4 D7 01         [ 4]  278                     STB      *VIA_port_a                  ;Store X in D/A register 
   59E6 97 05         [ 4]  279                     STA      *VIA_t1_cnt_hi               ;enable timer 
   59E8 6A E4         [ 6]  280                     dec      ,s                           ; can be done in move 
                            281 ; dec      ,s 
   59EA 30 88 60      [ 5]  282                     LEAX     FONT_LENGTH,X                ;[3]Point to next chargen row 
   59ED 86 18         [ 2]  283                     lda      #0x18 
   59EF FE C8 2C      [ 6]  284                     LDU      Vec_Str_Ptr                  ;Point to start of text string 
   59F2 C6 40         [ 2]  285                     LDB      #0x40                        ; 
   59F4 D5 0D         [ 4]  286 LF33D88:            BITB     *VIA_int_flags               ; 
   59F6 27 FC         [ 3]  287                     BEQ      LF33D88                      ; 
   59F8 97 0B         [ 4]  288                     STA      *VIA_aux_cntl                ;Shift reg mode = 110 (shift out under system clock), T1 PB7 disabled, one shot mode 
                            289                                                           ; first entry here, ramp is disabled 
                            290                                                           ; if there was a jump from below 
                            291                                                           ; ramp will be enabled by next line 
   59FA CC 00 80      [ 3]  292                     LDD      #0x0080                      ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
   59FD 97 01         [ 4]  293                     sta      *VIA_port_a                  ;Clear D/A output 
   59FF D7 00         [ 4]  294                     STb      *VIA_port_b                  ;Enable mux 
                            295 ; TO FAST EXAMPLE!!! (cranky)
                            296 ;                    LDD      #0x8000                       ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
                            297 ; std <VIA_port_b
   5A01 10 9F 00            298                     sty      *VIA_port_b 
                            299 ; assuming first char is NEVER 0x80
   5A04 E6 C0         [ 6]  300                     LDb      ,U+                          ;[+6]Get next character 
                            301 ; one letter is drawn (one row that is) in 18 cycles
                            302 ; 13 cycles overhead
                            303 ; ramp is thus active for #ofLetters*18 + 13 cycles
   5A06                     304 LF4C7_a6: 
   5A06 E6 85         [ 5]  305                     LDb      b,X                          ;[+5]Get bitmap from chargen table 
   5A08 D7 0A         [ 4]  306                     STb      *VIA_shift_reg               ;[+4]rasterout of char bitmap "row" thru shift out in shift register 
   5A0A                     307 LF4CB_a6: 
   5A0A E6 C0         [ 6]  308                     LDb      ,U+                          ;[+6]Get next character 
   5A0C 2A F8         [ 3]  309                     BPL      LF4C7_a6                     ;[+3]Go back if not terminator 
   5A0E 97 00         [ 4]  310                     STa      *VIA_port_b                  ; is still 0x80 ;[4]disable RAMP, disable mux don't matter 
   5A10 86 98         [ 2]  311                     LDA      #0x98 
   5A12 97 0B         [ 4]  312                     STA      *VIA_aux_cntl                ;T1?PB7 enabled 
                            313 ; macro call ->                     NEXT_SYNC_LINE  
                            314 ; zero
   5A14 CC 02 CC      [ 3]  315                     ldd      #(ZERO_DELAY_P2)*256+0xCC    ; zero the integrators 
   5A17 D7 0C         [ 4]  316                     stb      *VIA_cntl                    ; store zeroing values to cntl 
                            317 ; wait that zeroing surely has the desired effect!
   5A19                     318 zeroLoop_a9: 
   5A19 12            [ 2]  319                     nop      
   5A1A 12            [ 2]  320                     nop      
   5A1B 4A            [ 2]  321                     deca     
   5A1C 26 FB         [ 3]  322                     bne      zeroLoop_a9 
   5A1E EC E4         [ 5]  323                     ldd      ,s 
                            324 ; macro call ->                     MY_MOVE_TO_D_START  
   5A20 97 01         [ 4]  325                     STA      *VIA_port_a                  ;Store Y in D/A register 
   5A22 86 CE         [ 2]  326                     LDA      #0xCE                        ;Blank low, zero high? 
   5A24 97 0C         [ 4]  327                     STA      *VIA_cntl                    ; 
   5A26 4F            [ 2]  328                     CLRA     
   5A27 97 00         [ 4]  329                     STA      *VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
   5A29 12            [ 2]  330                     nop                                   ; y must be set more than xx cycles on some vectrex 
   5A2A 0C 00         [ 6]  331                     INC      *VIA_port_b                  ;Disable mux 
   5A2C D7 01         [ 4]  332                     STB      *VIA_port_a                  ;Store X in D/A register 
   5A2E 97 05         [ 4]  333                     STA      *VIA_t1_cnt_hi               ;enable timer 
   5A30 6A E4         [ 6]  334                     dec      ,s                           ; can be done in move 
                            335 ; dec      ,s 
                            336 
   5A32 30 88 60      [ 5]  337                     LEAX     FONT_LENGTH,X                ;[3]Point to next chargen row 
   5A35 86 18         [ 2]  338                     lda      #0x18 
   5A37 FE C8 2C      [ 6]  339                     LDU      Vec_Str_Ptr                  ;Point to start of text string 
                            340 ; macro call ->                     MY_MOVE_TO_B_END  
   5A3A C6 40         [ 2]  341                     LDB      #0x40                        ; 
   5A3C D5 0D         [ 4]  342 LF33D1111:          BITB     *VIA_int_flags               ; 
   5A3E 27 FC         [ 3]  343                     BEQ      LF33D1111                    ; 
   5A40 97 0B         [ 4]  344                     STA      *VIA_aux_cntl                ;Shift reg mode = 110 (shift out under system clock), T1 PB7 disabled, one shot mode 
                            345                                                           ; first entry here, ramp is disabled 
                            346                                                           ; if there was a jump from below 
                            347                                                           ; ramp will be enabled by next line 
   5A42 CC 00 80      [ 3]  348                     LDD      #0x0080                      ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
   5A45 97 01         [ 4]  349                     sta      *VIA_port_a                  ;Clear D/A output 
   5A47 D7 00         [ 4]  350                     STb      *VIA_port_b                  ;Enable mux 
                            351 ; TO FAST EXAMPLE!!! (cranky)
                            352 ;                    LDD      #0x8000                       ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
                            353 ; std <VIA_port_b
   5A49 10 9F 00            354                     sty      *VIA_port_b 
                            355 ; assuming first char is NEVER 0x80
   5A4C E6 C0         [ 6]  356                     LDb      ,U+                          ;[+6]Get next character 
                            357 ; one letter is drawn (one row that is) in 18 cycles
                            358 ; 13 cycles overhead
                            359 ; ramp is thus active for #ofLetters*18 + 13 cycles
   5A4E                     360 LF4C7_a9: 
   5A4E E6 85         [ 5]  361                     LDb      b,X                          ;[+5]Get bitmap from chargen table 
   5A50 D7 0A         [ 4]  362                     STb      *VIA_shift_reg               ;[+4]rasterout of char bitmap "row" thru shift out in shift register 
   5A52                     363 LF4CB_a9: 
   5A52 E6 C0         [ 6]  364                     LDb      ,U+                          ;[+6]Get next character 
   5A54 2A F8         [ 3]  365                     BPL      LF4C7_a9                     ;[+3]Go back if not terminator 
   5A56 97 00         [ 4]  366                     STa      *VIA_port_b                  ; is still 0x80 ;[4]disable RAMP, disable mux don't matter 
   5A58 86 98         [ 2]  367                     LDA      #0x98 
   5A5A 97 0B         [ 4]  368                     STA      *VIA_aux_cntl                ;T1?PB7 enabled 
                            369 ; macro call ->                     NEXT_SYNC_LINE  
                            370 ; zero
   5A5C CC 02 CC      [ 3]  371                     ldd      #(ZERO_DELAY_P2)*256+0xCC    ; zero the integrators 
   5A5F D7 0C         [ 4]  372                     stb      *VIA_cntl                    ; store zeroing values to cntl 
                            373 ; wait that zeroing surely has the desired effect!
   5A61                     374 zeroLoop_a12: 
   5A61 12            [ 2]  375                     nop      
   5A62 12            [ 2]  376                     nop      
   5A63 4A            [ 2]  377                     deca     
   5A64 26 FB         [ 3]  378                     bne      zeroLoop_a12 
   5A66 EC E4         [ 5]  379                     ldd      ,s 
   5A68 97 01         [ 4]  380                     STA      *VIA_port_a                  ;Store Y in D/A register 
   5A6A 86 CE         [ 2]  381                     LDA      #0xCE                        ;Blank low, zero high? 
   5A6C 97 0C         [ 4]  382                     STA      *VIA_cntl                    ; 
   5A6E 4F            [ 2]  383                     CLRA     
   5A6F 97 00         [ 4]  384                     STA      *VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
   5A71 12            [ 2]  385                     nop                                   ; y must be set more than xx cycles on some vectrex 
   5A72 0C 00         [ 6]  386                     INC      *VIA_port_b                  ;Disable mux 
   5A74 D7 01         [ 4]  387                     STB      *VIA_port_a                  ;Store X in D/A register 
   5A76 97 05         [ 4]  388                     STA      *VIA_t1_cnt_hi               ;enable timer 
   5A78 6A E4         [ 6]  389                     dec      ,s                           ; can be done in move 
                            390 ; dec      ,s 
                            391 
   5A7A 30 88 60      [ 5]  392                     LEAX     FONT_LENGTH,X                ;[3]Point to next chargen row 
   5A7D 86 18         [ 2]  393                     lda      #0x18 
   5A7F FE C8 2C      [ 6]  394                     LDU      Vec_Str_Ptr                  ;Point to start of text string 
   5A82 C6 40         [ 2]  395                     LDB      #0x40                        ; 
   5A84 D5 0D         [ 4]  396 LF33D1414:          BITB     *VIA_int_flags               ; 
   5A86 27 FC         [ 3]  397                     BEQ      LF33D1414                    ; 
   5A88 97 0B         [ 4]  398                     STA      *VIA_aux_cntl                ;Shift reg mode = 110 (shift out under system clock), T1 PB7 disabled, one shot mode 
                            399                                                           ; first entry here, ramp is disabled 
                            400                                                           ; if there was a jump from below 
                            401                                                           ; ramp will be enabled by next line 
   5A8A CC 00 80      [ 3]  402                     LDD      #0x0080                      ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
   5A8D 97 01         [ 4]  403                     sta      *VIA_port_a                  ;Clear D/A output 
   5A8F D7 00         [ 4]  404                     STb      *VIA_port_b                  ;Enable mux 
                            405 ; TO FAST EXAMPLE!!! (cranky)
                            406 ;                    LDD      #0x8000                       ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
                            407 ; std <VIA_port_b
   5A91 10 9F 00            408                     sty      *VIA_port_b 
                            409 ; assuming first char is NEVER 0x80
   5A94 E6 C0         [ 6]  410                     LDb      ,U+                          ;[+6]Get next character 
                            411 ; one letter is drawn (one row that is) in 18 cycles
                            412 ; 13 cycles overhead
                            413 ; ramp is thus active for #ofLetters*18 + 13 cycles
   5A96                     414 LF4C7_a12: 
   5A96 E6 85         [ 5]  415                     LDb      b,X                          ;[+5]Get bitmap from chargen table 
   5A98 D7 0A         [ 4]  416                     STb      *VIA_shift_reg               ;[+4]rasterout of char bitmap "row" thru shift out in shift register 
   5A9A                     417 LF4CB_a12: 
   5A9A E6 C0         [ 6]  418                     LDb      ,U+                          ;[+6]Get next character 
   5A9C 2A F8         [ 3]  419                     BPL      LF4C7_a12                    ;[+3]Go back if not terminator 
   5A9E 97 00         [ 4]  420                     STa      *VIA_port_b                  ; is still 0x80 ;[4]disable RAMP, disable mux don't matter 
   5AA0 86 98         [ 2]  421                     LDA      #0x98 
   5AA2 97 0B         [ 4]  422                     STA      *VIA_aux_cntl                ;T1?PB7 enabled 
                            423 ; zero
   5AA4 CC 02 CC      [ 3]  424                     ldd      #(ZERO_DELAY_P2)*256+0xCC    ; zero the integrators 
   5AA7 D7 0C         [ 4]  425                     stb      *VIA_cntl                    ; store zeroing values to cntl 
                            426 ; wait that zeroing surely has the desired effect!
   5AA9                     427 zeroLoop_a: 
   5AA9 12            [ 2]  428                     nop      
   5AAA 12            [ 2]  429                     nop      
   5AAB 4A            [ 2]  430                     deca     
   5AAC 26 FB         [ 3]  431                     bne      zeroLoop_a 
   5AAE EC E4         [ 5]  432                     ldd      ,s 
                            433 
   5AB0 97 01         [ 4]  434                     STA      *VIA_port_a                  ;Store Y in D/A register 
   5AB2 86 CE         [ 2]  435                     LDA      #0xCE                        ;Blank low, zero high? 
   5AB4 97 0C         [ 4]  436                     STA      *VIA_cntl                    ; 
   5AB6 4F            [ 2]  437                     CLRA     
   5AB7 97 00         [ 4]  438                     STA      *VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
   5AB9 12            [ 2]  439                     nop                                   ; y must be set more than xx cycles on some vectrex 
   5ABA 0C 00         [ 6]  440                     INC      *VIA_port_b                  ;Disable mux 
   5ABC D7 01         [ 4]  441                     STB      *VIA_port_a                  ;Store X in D/A register 
   5ABE 97 05         [ 4]  442                     STA      *VIA_t1_cnt_hi               ;enable timer 
   5AC0 30 88 60      [ 5]  443                     LEAX     FONT_LENGTH,X                ;[3]Point to next chargen row 
   5AC3 86 18         [ 2]  444                     lda      #0x18 
   5AC5 FE C8 2C      [ 6]  445                     LDU      Vec_Str_Ptr                  ;Point to start of text string 
                            446 
   5AC8 C6 40         [ 2]  447                     LDB      #0x40                        ; 
   5ACA D5 0D         [ 4]  448 LF33D1616:          BITB     *VIA_int_flags               ; 
   5ACC 27 FC         [ 3]  449                     BEQ      LF33D1616                    ; 
   5ACE 97 0B         [ 4]  450                     STA      *VIA_aux_cntl                ;Shift reg mode = 110 (shift out under system clock), T1 PB7 disabled, one shot mode 
                            451                                                           ; first entry here, ramp is disabled 
                            452                                                           ; if there was a jump from below 
                            453                                                           ; ramp will be enabled by next line 
   5AD0 CC 00 80      [ 3]  454                     LDD      #0x0080                      ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
   5AD3 97 01         [ 4]  455                     sta      *VIA_port_a                  ;Clear D/A output 
   5AD5 D7 00         [ 4]  456                     STb      *VIA_port_b                  ;Enable mux 
                            457 ; TO FAST EXAMPLE!!!
                            458 ; texts have different angles!
                            459 ;                    LDD      #0x8000                       ;a?AUX: b?ORB: 0x8x = Disable RAMP, Disable Mux, mux sel = 01 (int offsets) 
                            460 ; std <VIA_port_b
   5AD7 10 9F 00            461                     sty      *VIA_port_b 
                            462 ; assuming first character in a string is never 0x80
   5ADA A6 C0         [ 6]  463                     LDA      ,U+                          ;[+6]Get next character 
                            464 ; one letter is drawn (one row that is) in 18 cycles
                            465 ; 13 cycles overhead
                            466 ; ramp is thus active for #ofLetters*18 + 13 cycles
   5ADC                     467 LF4C7_a: 
   5ADC A6 86         [ 5]  468                     LDA      A,X                          ;[+5]Get bitmap from chargen table 
   5ADE 97 0A         [ 4]  469                     STA      *VIA_shift_reg               ;[+4]rasterout of char bitmap "row" thru shift out in shift register 
   5AE0                     470 LF4CB_a: 
   5AE0 A6 C0         [ 6]  471                     LDA      ,U+                          ;[+6]Get next character 
   5AE2 2A F8         [ 3]  472                     BPL      LF4C7_a                      ;[+3]Go back if not terminator 
   5AE4 D7 00         [ 4]  473                     STb      *VIA_port_b                  ; is still 0x81 ;[4]disable RAMP, disable mux 
   5AE6 CC 00 98      [ 3]  474                     ldd      #0x98 
   5AE9 DD 0A         [ 5]  475                     std      *VIA_shift_reg 
   5AEB 35 E6         [10]  476                     puls     y, d, u,pc 
                            477 
                     0001   478 SHITREG_POKE_VALUE  =        0x01 
                            479         
                            480  .globl _Joy_Digital2
   5AED                     481 _Joy_Digital2:
                            482 ; macro call ->  QUERY_JOYSTICK
                            483  .globl queryHW1
   5AED                     484 queryHW1: 
                            485 ; joytick pot readings are also switched by the (de)muliplexer (analog section)
                            486 ; with joystick pots the switching is not done in regard of the output (in opposite to "input" switching of integrator logic)
                            487 ; but with regard to input
                            488 ; thus, the SEL part of the mux now selects which joystick pot is selected and send to the compare logic.
                            489 ; mux sel:
                            490 ;    xxxx x00x: port 0 horizontal
                            491 ;    xxxx x01x: port 0 vertical
                            492 ;    xxxx x10x: port 1 horizontal
                            493 ;    xxxx x11x: port 1 vertical
                            494 ;
                            495 ; the result of the pot reading is compared to the
                            496 ; value present in the dac and according to the comparisson the compare flag of VIA (bit 5 of port b) is set.
                            497 ; (compare bit is = if contents of dac was "smaller" (signed) than the "pot" read)
                     0008   498 DIGITAL_JOYTICK_LOOP_MIN  =  0x08 
   5AED CC 03 00      [ 3]  499                     ldd      #0x0300                       ; mux disabled, mux sel = 01 (vertical pot port 0) 
   5AF0 DD 00         [ 5]  500                     std      *VIA_port_b 
   5AF2 0A 00         [ 6]  501                     dec      *VIA_port_b                  ; mux enabled, mux sel = 01 
   5AF4 C6 08         [ 2]  502                     ldb      #DIGITAL_JOYTICK_LOOP_MIN    ; a wait loop 32 times a loop (waiting for the pots to "read" values, and feed to compare logic) 
                            503  .globl waitLoopV1
   5AF6                     504 waitLoopV1: 
   5AF6 5A            [ 2]  505                     decb                                  ; ... 
   5AF7 26 FD         [ 3]  506                     bne      waitLoopV1                  ; wait... 
   5AF9 0C 00         [ 6]  507                     inc      *VIA_port_b                  ; disable mux 
   5AFB CC 40 20      [ 3]  508                     ldd      #0x4020                       ; load a with test value (positive y) 
   5AFE 97 01         [ 4]  509                     sta      *VIA_port_a                  ; test value to DAC 
   5B00 86 01         [ 2]  510                     lda      #0x01                         ; default result value y was pushed UP 
   5B02 D5 00         [ 4]  511                     bitb     *VIA_port_b                  ; test comparator 
   5B04 26 08         [ 3]  512                     bne      yReadDone1                  ; if comparator cleared - joystick was moved up 
   5B06 00 01         [ 6]  513                     neg      *VIA_port_a                  ; "load" with negative value 
   5B08 40            [ 2]  514                     nega                                  ; also switch the possible result in A 
   5B09 D5 00         [ 4]  515                     bitb     *VIA_port_b                  ; test comparator again 
   5B0B 27 01         [ 3]  516                     beq      yReadDone1                  ; if cleared the joystick was moved down 
   5B0D 4F            [ 2]  517                     clra                                  ; if still not cleared, we clear a as the final vertical test result (no move at all) 
                            518  .globl yReadDone1
   5B0E                     519 yReadDone1: 
   5B0E B7 C8 1C      [ 5]  520                     sta      Vec_Joy_1_Y                 ; remember the result in "our" joystick data 
                            521                                                           ; beq noymove1 
                            522                                                           ; bra noxmove1 ; if y moved I assume no X move 
                            523  .globl noymove1
   5B11                     524 noymove1: 
                            525 ; now the same for horizontal
   5B11 CC 01 00      [ 3]  526                     ldd      #0x0100                       ; mux disabled, mux sel = 00 (horizontal pot port 0) 
   5B14 DD 00         [ 5]  527                     std      *VIA_port_b 
   5B16 0A 00         [ 6]  528                     dec      *VIA_port_b                  ; mux enabled, mux sel = 01 
   5B18 C6 08         [ 2]  529                     ldb      #DIGITAL_JOYTICK_LOOP_MIN    ; a wait loop 32 times a loop (waiting for the pots to "read" values, and feed to compare logic) 
                            530  .globl waitLoopH1
   5B1A                     531 waitLoopH1: 
   5B1A 5A            [ 2]  532                     decb                                  ; ... 
   5B1B 26 FD         [ 3]  533                     bne      waitLoopH1                  ; wait... 
   5B1D 0C 00         [ 6]  534                     inc      *VIA_port_b                  ; disable mux 
   5B1F CC 40 20      [ 3]  535                     ldd      #0x4020                       ; load a with test value (positive x) 
   5B22 97 01         [ 4]  536                     sta      *VIA_port_a                  ; test value to DAC 
   5B24 86 01         [ 2]  537                     lda      #0x01                         ; default result value x was pushed right 
   5B26 D5 00         [ 4]  538                     bitb     *VIA_port_b                  ; test comparator 
   5B28 26 08         [ 3]  539                     bne      xReadDone1                  ; if comparator cleared - joystick was moved right 
   5B2A 00 01         [ 6]  540                     neg      *VIA_port_a                  ; "load" with negative value 
   5B2C 40            [ 2]  541                     nega                                  ; also switch the possible result in A 
   5B2D D5 00         [ 4]  542                     bitb     *VIA_port_b                  ; test comparator again 
   5B2F 27 01         [ 3]  543                     beq      xReadDone1                  ; if cleared the joystick was moved left 
   5B31 4F            [ 2]  544                     clra                                  ; if still not cleared, we clear a as the final vertical test result (no move at all) 
                            545  .globl xReadDone1
   5B32                     546 xReadDone1: 
   5B32 B7 C8 1B      [ 5]  547                     sta      Vec_Joy_1_X                 ; remember the result in "our" joystick data 
   5B35 27 00         [ 3]  548                     beq      noxmove1 
                            549  .globl noxmove1
   5B37                     550 noxmove1: 
   5B37 39            [ 5]  551  rts
                            552 
                            553 
                            554  .globl _wr2
   5B38                     555 _wr2:
                            556 ; macro call ->  MY_WAIT_RECAL
                            557 ; Warning - direct line found!
                            558 ;                    direct   0xd0 
   5B38 86 20         [ 2]  559                     LDA      #0x20 
   5B3A BE C8 25      [ 6]  560                     ldx      Vec_Loop_Count               ; recal counter, about 21 Minutes befor roll over 
   5B3D 30 01         [ 5]  561                     leax     1,x 
   5B3F BF C8 25      [ 6]  562                     stx      Vec_Loop_Count 
                            563  .globl LF19E8
   5B42 95 0D         [ 4]  564 LF19E8:            BITA     *VIA_int_flags               ;Wait for timer t2 
   5B44 27 FC         [ 3]  565                     BEQ      LF19E8 
   5B46 CC 30 75      [ 3]  566                     LDD      #0x3075                       ;Store refresh value 
   5B49 DD 08         [ 5]  567                     STD      *VIA_t2_lo                   ;into timer t2 
   5B4B CC 00 CC      [ 3]  568                     LDD      #0xCC 
   5B4E D7 0C         [ 4]  569                     STB      *VIA_cntl                    ;blank low and zero low 
   5B50 97 0A         [ 4]  570                     STA      *VIA_shift_reg               ;clear shift register 
   5B52 97 01         [ 4]  571                     sta      *VIA_port_a                  ;clear D/A register 
   5B54 CC 03 02      [ 3]  572                     LDD      #0x0302 
   5B57 97 00         [ 4]  573                     STA      *VIA_port_b                  ;mux=1, disable mux 
   5B59 D7 00         [ 4]  574                     STB      *VIA_port_b                  ;mux=1, enable mux 
   5B5B C6 01         [ 2]  575                     LDB      #0x01 
   5B5D D7 00         [ 4]  576                     STB      *VIA_port_b                  ;disable mux 
   5B5F 39            [ 5]  577  rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$print5font$1     01E0 GR  |   2 A$print5font$1     01E0 GR
  2 A$print5font$1     01E2 GR  |   2 A$print5font$2     01E4 GR
  2 A$print5font$2     01E6 GR  |   2 A$print5font$2     01E8 GR
  2 A$print5font$2     01EA GR  |   2 A$print5font$2     01EC GR
  2 A$print5font$2     01ED GR  |   2 A$print5font$2     01EF GR
  2 A$print5font$2     01F2 GR  |   2 A$print5font$2     01F4 GR
  2 A$print5font$2     01F6 GR  |   2 A$print5font$2     01F8 GR
  2 A$print5font$2     01FB GR  |   2 A$print5font$2     01FE GR
  2 A$print5font$2     0200 GR  |   2 A$print5font$2     0202 GR
  2 A$print5font$2     0204 GR  |   2 A$print5font$2     0207 GR
  2 A$print5font$2     0209 GR  |   2 A$print5font$2     020C GR
  2 A$print5font$2     020E GR  |   2 A$print5font$2     0210 GR
  2 A$print5font$2     0212 GR  |   2 A$print5font$2     0214 GR
  2 A$print5font$2     0217 GR  |   2 A$print5font$2     0219 GR
  2 A$print5font$2     021B GR  |   2 A$print5font$2     021E GR
  2 A$print5font$2     0220 GR  |   2 A$print5font$2     0222 GR
  2 A$print5font$2     0224 GR  |   2 A$print5font$2     0226 GR
  2 A$print5font$2     0228 GR  |   2 A$print5font$2     022A GR
  2 A$print5font$2     022C GR  |   2 A$print5font$2     022E GR
  2 A$print5font$2     0231 GR  |   2 A$print5font$2     0233 GR
  2 A$print5font$2     0234 GR  |   2 A$print5font$2     0235 GR
  2 A$print5font$2     0236 GR  |   2 A$print5font$2     0238 GR
  2 A$print5font$2     023A GR  |   2 A$print5font$2     023C GR
  2 A$print5font$2     023E GR  |   2 A$print5font$2     0240 GR
  2 A$print5font$2     0241 GR  |   2 A$print5font$2     0243 GR
  2 A$print5font$2     0244 GR  |   2 A$print5font$2     0246 GR
  2 A$print5font$2     0248 GR  |   2 A$print5font$2     024A GR
  2 A$print5font$2     024C GR  |   2 A$print5font$2     024F GR
  2 A$print5font$2     0251 GR  |   2 A$print5font$2     0254 GR
  2 A$print5font$2     0256 GR  |   2 A$print5font$2     0258 GR
  2 A$print5font$2     025A GR  |   2 A$print5font$2     025C GR
  2 A$print5font$2     025F GR  |   2 A$print5font$2     0261 GR
  2 A$print5font$2     0263 GR  |   2 A$print5font$3     0266 GR
  2 A$print5font$3     0268 GR  |   2 A$print5font$3     026A GR
  2 A$print5font$3     026C GR  |   2 A$print5font$3     026E GR
  2 A$print5font$3     0270 GR  |   2 A$print5font$3     0272 GR
  2 A$print5font$3     0274 GR  |   2 A$print5font$3     0276 GR
  2 A$print5font$3     0279 GR  |   2 A$print5font$3     027B GR
  2 A$print5font$3     027C GR  |   2 A$print5font$3     027D GR
  2 A$print5font$3     027E GR  |   2 A$print5font$3     0280 GR
  2 A$print5font$3     0282 GR  |   2 A$print5font$3     0284 GR
  2 A$print5font$3     0286 GR  |   2 A$print5font$3     0288 GR
  2 A$print5font$3     0289 GR  |   2 A$print5font$3     028B GR
  2 A$print5font$3     028C GR  |   2 A$print5font$3     028E GR
  2 A$print5font$3     0290 GR  |   2 A$print5font$3     0292 GR
  2 A$print5font$3     0294 GR  |   2 A$print5font$3     0297 GR
  2 A$print5font$3     0299 GR  |   2 A$print5font$3     029C GR
  2 A$print5font$3     029E GR  |   2 A$print5font$3     02A0 GR
  2 A$print5font$3     02A2 GR  |   2 A$print5font$3     02A4 GR
  2 A$print5font$3     02A7 GR  |   2 A$print5font$3     02A9 GR
  2 A$print5font$3     02AB GR  |   2 A$print5font$3     02AE GR
  2 A$print5font$3     02B0 GR  |   2 A$print5font$3     02B2 GR
  2 A$print5font$3     02B4 GR  |   2 A$print5font$3     02B6 GR
  2 A$print5font$3     02B8 GR  |   2 A$print5font$3     02BA GR
  2 A$print5font$3     02BC GR  |   2 A$print5font$3     02BE GR
  2 A$print5font$3     02C1 GR  |   2 A$print5font$3     02C3 GR
  2 A$print5font$3     02C4 GR  |   2 A$print5font$3     02C5 GR
  2 A$print5font$3     02C6 GR  |   2 A$print5font$3     02C8 GR
  2 A$print5font$3     02CA GR  |   2 A$print5font$3     02CC GR
  2 A$print5font$3     02CE GR  |   2 A$print5font$3     02D0 GR
  2 A$print5font$3     02D1 GR  |   2 A$print5font$3     02D3 GR
  2 A$print5font$3     02D4 GR  |   2 A$print5font$3     02D6 GR
  2 A$print5font$3     02D8 GR  |   2 A$print5font$3     02DA GR
  2 A$print5font$3     02DC GR  |   2 A$print5font$3     02DF GR
  2 A$print5font$3     02E1 GR  |   2 A$print5font$3     02E4 GR
  2 A$print5font$3     02E6 GR  |   2 A$print5font$3     02E8 GR
  2 A$print5font$3     02EA GR  |   2 A$print5font$4     02EC GR
  2 A$print5font$4     02EF GR  |   2 A$print5font$4     02F1 GR
  2 A$print5font$4     02F3 GR  |   2 A$print5font$4     02F6 GR
  2 A$print5font$4     02F8 GR  |   2 A$print5font$4     02FA GR
  2 A$print5font$4     02FC GR  |   2 A$print5font$4     02FE GR
  2 A$print5font$4     0300 GR  |   2 A$print5font$4     0302 GR
  2 A$print5font$4     0304 GR  |   2 A$print5font$4     0306 GR
  2 A$print5font$4     0309 GR  |   2 A$print5font$4     030B GR
  2 A$print5font$4     030C GR  |   2 A$print5font$4     030D GR
  2 A$print5font$4     030E GR  |   2 A$print5font$4     0310 GR
  2 A$print5font$4     0312 GR  |   2 A$print5font$4     0314 GR
  2 A$print5font$4     0316 GR  |   2 A$print5font$4     0318 GR
  2 A$print5font$4     0319 GR  |   2 A$print5font$4     031B GR
  2 A$print5font$4     031C GR  |   2 A$print5font$4     031E GR
  2 A$print5font$4     0320 GR  |   2 A$print5font$4     0322 GR
  2 A$print5font$4     0325 GR  |   2 A$print5font$4     0327 GR
  2 A$print5font$4     032A GR  |   2 A$print5font$4     032C GR
  2 A$print5font$4     032E GR  |   2 A$print5font$4     0330 GR
  2 A$print5font$4     0332 GR  |   2 A$print5font$4     0335 GR
  2 A$print5font$4     0337 GR  |   2 A$print5font$4     0339 GR
  2 A$print5font$4     033C GR  |   2 A$print5font$4     033E GR
  2 A$print5font$4     0340 GR  |   2 A$print5font$4     0342 GR
  2 A$print5font$4     0344 GR  |   2 A$print5font$4     0346 GR
  2 A$print5font$4     0348 GR  |   2 A$print5font$4     034B GR
  2 A$print5font$4     034D GR  |   2 A$print5font$4     034F GR
  2 A$print5font$5     0352 GR  |   2 A$print5font$5     0354 GR
  2 A$print5font$5     0356 GR  |   2 A$print5font$5     0358 GR
  2 A$print5font$5     0359 GR  |   2 A$print5font$5     035B GR
  2 A$print5font$5     035D GR  |   2 A$print5font$5     0360 GR
  2 A$print5font$5     0362 GR  |   2 A$print5font$5     0364 GR
  2 A$print5font$5     0366 GR  |   2 A$print5font$5     0368 GR
  2 A$print5font$5     036A GR  |   2 A$print5font$5     036B GR
  2 A$print5font$5     036D GR  |   2 A$print5font$5     036F GR
  2 A$print5font$5     0370 GR  |   2 A$print5font$5     0373 GR
  2 A$print5font$5     0376 GR  |   2 A$print5font$5     0378 GR
  2 A$print5font$5     037A GR  |   2 A$print5font$5     037C GR
  2 A$print5font$5     037D GR  |   2 A$print5font$5     037F GR
  2 A$print5font$5     0381 GR  |   2 A$print5font$5     0384 GR
  2 A$print5font$5     0386 GR  |   2 A$print5font$5     0388 GR
  2 A$print5font$5     038A GR  |   2 A$print5font$5     038C GR
  2 A$print5font$5     038E GR  |   2 A$print5font$5     038F GR
  2 A$print5font$5     0391 GR  |   2 A$print5font$5     0393 GR
  2 A$print5font$5     0394 GR  |   2 A$print5font$5     0397 GR
  2 A$print5font$5     0399 GR  |   2 A$print5font$5     039A GR
  2 A$print5font$5     039C GR  |   2 A$print5font$5     039F GR
  2 A$print5font$5     03A1 GR  |   2 A$print5font$5     03A4 GR
  2 A$print5font$5     03A6 GR  |   2 A$print5font$5     03A8 GR
  2 A$print5font$5     03AB GR  |   2 A$print5font$5     03AD GR
  2 A$print5font$5     03B0 GR  |   2 A$print5font$5     03B2 GR
  2 A$print5font$5     03B4 GR  |   2 A$print5font$5     03B6 GR
  2 A$print5font$5     03B9 GR  |   2 A$print5font$5     03BB GR
  2 A$print5font$5     03BD GR  |   2 A$print5font$5     03BF GR
  2 A$print5font$5     03C1 GR  |     DIGITAL_JOYTIC =   0008 
  2 FONT_END       =   0160 R   |     FONT_HEIGHT    =   0005 
    FONT_LENGTH    =   0060     |   2 FONT_START_A   =   FFE0 R
  2 LF19E8             03A4 GR  |   2 LF33D1111          029E R
  2 LF33D1414          02E6 R   |   2 LF33D1616          032C R
  2 LF33D55            020E R   |   2 LF33D88            0256 R
  2 LF4C7_a            033E R   |   2 LF4C7_a12          02F8 R
  2 LF4C7_a3           0220 R   |   2 LF4C7_a6           0268 R
  2 LF4C7_a9           02B0 R   |   2 LF4CB_a            0342 R
  2 LF4CB_a12          02FC R   |   2 LF4CB_a3           0224 R
  2 LF4CB_a6           026C R   |   2 LF4CB_a9           02B4 R
    SHITREG_POKE_V =   0001     |     VIA_DDR_a      =   D003 
    VIA_DDR_b      =   D002     |     VIA_aux_cntl   =   D00B 
    VIA_cntl       =   D00C     |     VIA_int_flags  =   D00D 
    VIA_port_a     =   D001     |     VIA_port_b     =   D000 
    VIA_shift_reg  =   D00A     |     VIA_t1_cnt_hi  =   D005 
    VIA_t1_cnt_lo  =   D004     |     VIA_t1_lch_hi  =   D007 
    VIA_t1_lch_lo  =   D006     |     VIA_t2_hi      =   D009 
    VIA_t2_lo      =   D008     |     Vec_Joy_1_X    =   C81B 
    Vec_Joy_1_Y    =   C81C     |     Vec_Loop_Count =   C825 
    Vec_Str_Ptr    =   C82C     |     Vec_Text_Width =   C82B 
    ZERO_DELAY_P2  =   0002     |   2 _Joy_Digital2      034F GR
  2 _syncPrintStrd     01E0 GR  |   2 _wr2               039A GR
  2 font5a_line1       0000 GR  |   2 font5a_line2       0060 GR
  2 noxmove1           0399 GR  |   2 noymove1           0373 GR
  2 queryHW1           034F GR  |   2 waitLoopH1         037C GR
  2 waitLoopV1         0358 GR  |   2 xReadDone1         0394 GR
  2 yReadDone1         0370 GR  |   2 zeroLoop_a         030B R
  2 zeroLoop_a12       02C3 R   |   2 zeroLoop_a6        0233 R
  2 zeroLoop_a9        027B R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  3C2   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

