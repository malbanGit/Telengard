; NOTE!!!
; IF USED IN 'C' YOU MIGHT NEED TO SAVE SOME REGS WHEN CALLING
; YOUR FUNCTIONS, LIKE REG 'U' and 'Y'!
; ALSO CHECK YOUR DP SETTINGS, BELOW DP = D0 is assumed!
 .module flash.asx.s
 .area .text
FLASH_AVAILABLE_BIT  =       0b00000001 
flashRAMROM = 0xC82F; Vec_Counter_2: 2 byte
currentFlashROMStart = 0xC831; Vec_Counter_4: 2 byte
Vec_Num_Players = 0xC879 ; result of load 0=ok, -1 = failure
PlayerSize = 45; // should be 45
; on success Vec_Num_Players = 0
 .globl _checkSavedFlash
_checkSavedFlash:
 ; per default loading fails
 pshs u,y,x
 lda #0xff
 sta Vec_Num_Players
 bsr initFlash
 beq errOut
 ldx currentFlashROMStart
 lda ,x
 cmpa #0xff
 beq errOut
 clr Vec_Num_Players
 puls u,y,x
 rts
 .globl _loadFlash
_loadFlash:
 ; per default loading fails
 pshs u,y,x
 lda #0xff
 sta Vec_Num_Players
 bsr initFlash
 beq errOut
 bsr readPlayer 
 clr Vec_Num_Players
 puls u,y,x
 rts
 .globl errOut
errOut:
 puls u,y,x
 rts
 .globl _saveFlash
_saveFlash:
 ; per default saving fails
 pshs u,y,x
 lda #0xff
 sta Vec_Num_Players
 bsr initFlash
 beq errOut
 jsr savePlayer 
 beq errOut
 clr Vec_Num_Players
 puls u,y,x
 rts
; **************************************************************************
 .globl _initFlash
_initFlash:                                                 ;#isfunction  
 .globl initFlash
initFlash:                                                 ;#isfunction  
                    clr      _flashAvailable 
                    jsr      checkFlash 
                    lda      _flashAvailable 
                    anda     #FLASH_AVAILABLE_BIT 
                    beq      flashErrorOut 
                    ldx      #0xb000 
 .globl checkNextBlock
checkNextBlock: 
                    ldd      PlayerSize,x 
                    cmpd     #0xffff                       ; empty flash space 
                    beq      flashBlockFound 
                    leax     PlayerSize,x 
                    cmpx     #0xc000 
                    blo      checkNextBlock 
                    ldx      #0 
                    bra      flashErrorOut 
; in x the address of the current relevant flash block
 .globl flashBlockFound
flashBlockFound: 
                    stx      currentFlashROMStart 
                    lda      #1 
                    rts      
 .globl flashErrorOut
flashErrorOut: 
                    clra
                    rts      
;.
;.......................................................................
;.
;
; copies options to RAM
; uses current block
; no flash check, since default options are available
; **************************************************************************
 .globl readPlayer
readPlayer:                                           ;#isfunction  
; copy options data
                    ldu      #_hp 
                    ldx      currentFlashROMStart 
 .globl copyPlayerLoop
copyPlayerLoop: 
                    lda      ,x+ 
                    sta      ,u+ 
                    cmpu     #_hp+PlayerSize
                    blo      copyPlayerLoop 
                    rts      
;.
;.......................................................................
; clears complete sector (from 0xb000)
; nothing else
; needs flash "RAM" block
;
; Sector-Erase Operation
; The Sector-Erase operation allows the system to erase the device on a sector-by-sector basis. The
; sector architecture is based on uniform sector size of 4 KByte. The Sector-Erase operation is initiated
; by executing a six-byte command load sequence for Software Data Protection with Sector-Erase command
; (30H) and sector address (SA) in the last bus cycle. The sector address is latched on the falling
; edge of the sixth WE# pulse, while the command (30H) is latched on the rising edge of the sixth WE#
; pulse. The internal Erase operation begins after the sixth WE# pulse. The End-of-Erase can be determined
; using either Data# Polling or Toggle Bit methods. See Figure 10 for timing waveforms. Any commands
; written during the Sector-Erase operation will be ignored.
;.
; **************************************************************************
 .globl eraseSector
eraseSector:                                               ;#isfunction  
                    lda      _flashAvailable 
                    anda     #FLASH_AVAILABLE_BIT 
                    beq      flashErrorOutR1 
                    bsr      eraseSector_2RAM 
                    jmp      _msgLine 
;.
 .globl eraseSector_2RAM
eraseSector_2RAM: 
                    ldx      #eraseSector_Start 
                    ldu      #_msgLine  
 .globl eraseSector_copyNextWord
eraseSector_copyNextWord: 
                    ldd      ,x++ 
                    std      ,u++ 
                    cmpx     #eraseSector_End 
                    blo      eraseSector_copyNextWord 
                    rts      
;.
 .globl eraseSector_Start
eraseSector_Start: 
; data 1,
                    lda      #0xaa 
; address 1
                    sta      0x5555 
; data 2
                    lda      #0x55 
; address 2
                    sta      0x2aaa 
; data 3
                    lda      #0x80 
; address 3
                    sta      0x5555 
; data 4
                    lda      #0xaa 
; address 4
                    sta      0x5555 
; data 5
                    lda      #0x55 
; address 5
                    sta      0x2aaa 
; data 6
                    lda      #0x30 
; address 6
                    sta      0xb000                        ; earse sector beginning at 0xb000 
 .globl eraseToggleWait
eraseToggleWait: 
                    ldb      0x0000                        ; load from even address 
                    eorb     0x0000                        ; load again even and eor 
                    bitb     #0b01000000                   ; if not equal go on waiting 
                    bne      eraseToggleWait 
 .globl flashErrorOutR1
flashErrorOutR1: 
                    rts      
 .globl eraseSector_End
eraseSector_End: 
;.
;.......................................................................
;.
; finds and sets new flash block
; if last flash block was used, than flash sector is
; erased and flash blocks start anew from 0xb000
;.
; Assumed: currentFlashROMStart was initialized to current block
;.
; **************************************************************************
 .globl findNextFlashBlock
findNextFlashBlock:                                        ;#isfunction  
                    ldx      currentFlashROMStart 
 ldd ,x
 cmpd #0xffff
 beq blockAddressOk
                    leax     PlayerSize,x                 ; load next memory address of flashblock 
                    cmpx     #0xc000 - PlayerSize          ; check if next address has enough space left 
                    blo      blockAddressOk 
; format flash
                    bsr      eraseSector 
                    ldx      #0xb000 
 .globl blockAddressOk
blockAddressOk: 
                    stx      currentFlashROMStart 
; in x now correct adress block of flash that can be written to
                    rts      
;.
;.......................................................................
;.
; saves player
;
; needs flash "RAM" block
;.
; **************************************************************************
 .globl savePlayer
savePlayer:                                          ;#isfunction  
                    lda      _flashAvailable 
                    anda     #FLASH_AVAILABLE_BIT 
                    lbeq     flashErrorOut 
; changes for V1.11
                    bsr      findNextFlashBlock           ; also loads to X 
                    jsr      writeFlashByte_2RAM 
                    ldx      currentFlashROMStart 
; first write options
                    ldu      #_hp
 .globl writeNextByte
writeNextByte: 
                    lda      ,u+ 
                    jsr      _msgLine  
                    leax     1,x 
                    cmpu     #_hp+PlayerSize
                    blo      writeNextByte 
 lda #1; non zero
                    rts      
;.
;.......................................................................
;.
; check flash ID byte
; z flag = if ok
; z flag not set, than flash id wrong
;.
; needs flash "RAM" block
; **************************************************************************
 .globl checkFlash
checkFlash:                                                ;#isfunction  
                    bsr      checkFlash_2RAM 
                    jmp      _msgLine  
;.
 .globl checkFlash_2RAM
checkFlash_2RAM: 
                    ldx      #checkFlash_Start 
                    ldu      #_msgLine  
 .globl checkFlash_copyNextWord
checkFlash_copyNextWord: 
                    ldd      ,x++ 
                    std      ,u++ 
                    cmpx     #checkFlash_End 
                    blo      checkFlash_copyNextWord 
                    rts      
;.
 .globl checkFlash_Start
checkFlash_Start: 
; data 1,
                    lda      #0xaa 
; address 1
                    sta      0x5555 
; data 2
                    lda      #0x55 
; address 2
                    sta      0x2aaa 
; data 3
                    lda      #0x90                         ; id 
; address 3
                    sta      0x5555 
                    ldx      0x0 
                    lda      #0xf0 
                    sta      0x0 
                    cmpx     #0xbfb5                       ; for SST39SF010 
                    beq      flashOk_out 
                    cmpx     #0xbfb6                       ; for SST39SF020 
                    beq      flashOk_out 
 .globl flashNotOk_out
flashNotOk_out: 
                    lda      _flashAvailable 
                    anda     #0xff-FLASH_AVAILABLE_BIT 
                    sta      _flashAvailable 
                    rts      
 .globl flashOk_out
flashOk_out: 
                    lda      _flashAvailable 
                    ora      #FLASH_AVAILABLE_BIT 
                    sta      _flashAvailable 
                    rts      
 .globl checkFlash_End
checkFlash_End: 
;.
;.......................................................................
;.
; writes one byte to flash memory
; exepcts flash to be properly formated/erased (all bit = 1)
;
; output address = x
; output byte in A
;
; destroys B
;
; needs flash "RAM" block
; **************************************************************************
 .globl writeFlashByte_2RAM
writeFlashByte_2RAM: 
                    ldx      #writeFlashByte_Start 
                    ldu      #_msgLine  
 .globl writeFlashByte_copyNextWord
writeFlashByte_copyNextWord: 
                    ldd      ,x++ 
                    std      ,u++ 
                    cmpx     #_writeFlashByte_End 
                    blo      writeFlashByte_copyNextWord 
                    rts      
;.
 .globl writeFlashByte_Start
writeFlashByte_Start: 
                    ldb      #0xaa 
                    stb      0x5555 
                    ldb      #0x55 
                    stb      0x2aaa 
                    ldb      #0xa0 
                    stb      0x5555 
                    sta      0, x 
                                                          ; wait for write to be done 
 nop ; force a tiny wait to ensure switching from write
                                                          ; to read works work with fast logic gates.
 .globl writeByteToggleLoop
writeByteToggleLoop:
                    ldb      0, x                         ; wait for DQ6 toggle bit to be the same,
                    eorb     0, x                         ; which indicates write is complete.
                    andb     #0b01000000                   ;  |
                    bne      writeByteToggleLoop          ;  |
                    rts      
 .globl _writeFlashByte_End
_writeFlashByte_End: 
