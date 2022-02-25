 .module ayfxplayer.s

 .area .text

; this file is part of Release, written by Malban in 2017
;
; original vectrex routine were written by Richard Chadd
;
; (optimized version!)
; regs used by below implementation
; U and D
; X is also used, but can be spared - see below comments
; this is only channel 1 is implemented
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 .globl sfx_endofeffect_1
sfx_endofeffect_1:
                                                          ; set volume off channel 3
                                                          ; set reg1sf0
                                                          ; Set volume
                    LDD      #0x0000                       ; reset sfx
                    sta      0xC843;SHADOW_BASE-0x08
                    STD      _sfx_pointer_1
                    STA      _sfx_status_1
                    std      _currentSFX_1
 .globl noay1
noay1:
                    RTS

 .globl sfx_doframe_intern_1
sfx_doframe_intern_1:                                     ;#isfunction
                    LDA      _sfx_status_1                 ; check if sfx to play
                    BEQ      noay1
                    LDU      _sfx_pointer_1                ; get current frame pointer
                    LDB      ,U+
                    CMPB     #0xD0                         ; check first flag byte D0
                    BNE      sfx_checktonefreq_1          ; no match - continue to process frame
                    LDA      ,U
                    CMPA     #0x20                         ; check second flag byte 20
                    BEQ      sfx_endofeffect_1            ; match - end of effect found so stop playing
 .globl sfx_checktonefreq_1
sfx_checktonefreq_1:
                    BITB     #0b00100000                   ; if bit 5 of B is set
                    BEQ      sfx_checknoisefreq_1         ; skip as no tone freq data
                    ldd      ,u++ ; alternative to destroying d load any 2 byte reg,
 exg a,b
                    std      0xC84b ;SHADOW_BASE-00 ; here I destroy d
                    ldb      -3,u ; and load b anew - one instruction to many,
 .globl sfx_checknoisefreq_1
sfx_checknoisefreq_1:
                    BITB     #0b01000000                   ; if bit 6 of B is only set
                    BEQ      sfx_checkvolume_1            ; skip as no noise freq data
                    LDA      ,U+                          ; get next data byte and copy to noise freq reg
                    STA      0xC846 ;SHADOW_BASE-06               ; set noise freq
 .globl sfx_checkvolume_1
sfx_checkvolume_1:
                    tfr      b,a
                    ANDA     #0b00001111                   ; get volume from bits 0-3
                    STA      0xC844;SHADOW_BASE-0x08              ; set tone freq
 .globl sfx_checktonedisable_1
sfx_checktonedisable_1:
                    LDA      0xC845;SHADOW_BASE-0x07              ; in the following reg 7 will be altered - load once
                    BITB     #0b00010000                   ; if bit 4 of B is set disable the tone
                    BEQ      sfx_enabletone_1
 .globl sfx_disabletone_1
sfx_disabletone_1:
                    ORA      #0b00000001
                    BITB     #0b10000000                   ; if bit7 of B is set disable noise
                    BEQ      sfx_enablenoise_1
                    ORA      #0b00001000
                    STA      0xC845;SHADOW_BASE-0x07              ; set tone freq
                    STU      _sfx_pointer_1                ; update frame pointer to next flag byte in Y
                    RTS

 .globl sfx_enabletone_1
sfx_enabletone_1:
                    ANDA     #0b11111110
 .globl sfx_checknoisedisable_1
sfx_checknoisedisable_1:
                    BITB     #0b10000000                   ; if bit7 of B is set disable noise
                    BEQ      sfx_enablenoise_1
 .globl sfx_disablenoise_1
sfx_disablenoise_1:
                    ORA      #0b00001000
                    STA      0xC845;SHADOW_BASE-0x07              ; set tone freq
                    STU      _sfx_pointer_1                ; update frame pointer to next flag byte in Y
                    RTS

 .globl sfx_enablenoise_1
sfx_enablenoise_1:
                    ANDA     #0b11110111
                    STA      0xC845;SHADOW_BASE-0x07              ; set tone freq
                    STU      _sfx_pointer_1                ; update frame pointer to next flag byte in Y
                    RTS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
