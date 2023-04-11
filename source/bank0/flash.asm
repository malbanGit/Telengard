
FLASH_AVAILABLE_BIT  =       %00000001 

flashRAMROM = 0xC82F; Vec_Counter_2: 2 byte
currentFlashROMStart = 0xC831; Vec_Counter_4: 2 byte

Vec_Num_Players = $C879 ; result of load 0=ok, -1 = failure



PlayerSize = 47; // should be 45 + 2 calibration


; on success Vec_Num_Players = 0
_checkSavedFlash
 ; per default loading fails
 pshs u,y,x
 lda #$ff
 sta Vec_Num_Players
 bsr initFlash
 beq errOut

 ldx currentFlashROMStart
 lda ,x
 cmpa #$ff
 beq errOut
 clr Vec_Num_Players
 puls u,y,x
 rts

_loadFlash
 ; per default loading fails
 pshs u,y,x
 lda #$ff
 sta Vec_Num_Players
 bsr initFlash
 beq errOut
 bsr readPlayer 
 clr Vec_Num_Players
 puls u,y,x
 rts
errOut
 puls u,y,x
 rts

_saveFlash
 ; per default saving fails
 pshs u,y,x
 lda #$ff
 sta Vec_Num_Players
 bsr initFlash
 beq errOut
 jsr savePlayer 
 beq errOut
 clr Vec_Num_Players
 puls u,y,x
 rts

; **************************************************************************
_initFlash                                                 ;#isfunction  
initFlash                                                 ;#isfunction  
                    clr      _flashAvailable 
                    jsr      checkFlash 
                    lda      _flashAvailable 
                    anda     #FLASH_AVAILABLE_BIT 
                    beq      flashErrorOut 
                    ldx      #$b000 
checkNextBlock 
                    ldd      PlayerSize,x 
                    cmpd     #$ffff                       ; empty flash space 
                    beq      flashBlockFound 
                    leax     PlayerSize,x 
                    cmpx     #$c000 
                    blo      checkNextBlock 
                    ldx      #0 
                    bra      flashErrorOut 

; in x the address of the current relevant flash block
flashBlockFound 
                    stx      currentFlashROMStart 
                    lda      #1 
                    rts      
flashErrorOut 
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
readPlayer                                           ;#isfunction  
; copy options data
                    ldu      #_hp 
                    ldx      currentFlashROMStart 
copyPlayerLoop 
                    lda      ,x+ 
                    sta      ,u+ 
                    cmpu     #_hp+PlayerSize
                    blo      copyPlayerLoop 
                    rts      

;.
;.......................................................................
; clears complete sector (from $b000)
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
eraseSector                                               ;#isfunction  
                    lda      _flashAvailable 
                    anda     #FLASH_AVAILABLE_BIT 
                    beq      flashErrorOutR1 
                    bsr      eraseSector_2RAM 
                    jmp      _msgLine 

;.
eraseSector_2RAM 
                    ldx      #eraseSector_Start 
                    ldu      #_msgLine  
eraseSector_copyNextWord 
                    ldd      ,x++ 
                    std      ,u++ 
                    cmpx     #eraseSector_End 
                    blo      eraseSector_copyNextWord 
                    rts      

;.
eraseSector_Start 
; data 1,
                    lda      #$aa 
; address 1
                    sta      $5555 
; data 2
                    lda      #$55 
; address 2
                    sta      $2aaa 
; data 3
                    lda      #$80 
; address 3
                    sta      $5555 
; data 4
                    lda      #$aa 
; address 4
                    sta      $5555 
; data 5
                    lda      #$55 
; address 5
                    sta      $2aaa 
; data 6
                    lda      #$30 
; address 6
                    sta      $b000                        ; earse sector beginning at $b000 
eraseToggleWait 
                    ldb      $0000                        ; load from even address 
                    eorb     $0000                        ; load again even and eor 
                    bitb     #%01000000                   ; if not equal go on waiting 
                    bne      eraseToggleWait 
flashErrorOutR1 
                    rts      

eraseSector_End 
;.
;.......................................................................
;.
; finds and sets new flash block
; if last flash block was used, than flash sector is
; erased and flash blocks start anew from $b000
;.
; Assumed: currentFlashROMStart was initialized to current block
;.
; **************************************************************************
findNextFlashBlock                                        ;#isfunction  
                    ldx      currentFlashROMStart 
 ldd ,x
 cmpd #$ffff
 beq blockAddressOk
                    leax     PlayerSize,x                 ; load next memory address of flashblock 
                    cmpx     #$c000 - PlayerSize          ; check if next address has enough space left 
                    blo      blockAddressOk 
; format flash
                    bsr      eraseSector 
                    ldx      #$b000 
blockAddressOk 
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

savePlayer                                          ;#isfunction  
                    lda      _flashAvailable 
                    anda     #FLASH_AVAILABLE_BIT 
                    lbeq     flashErrorOut 
; changes for V1.11
                    bsr      findNextFlashBlock           ; also loads to X 
                    jsr      writeFlashByte_2RAM 
                    ldx      currentFlashROMStart 
; first write options
                    ldu      #_hp
writeNextByte 
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
; z flag set if ok
; z flag not set, than flash id wrong
;.
; needs flash "RAM" block
; **************************************************************************
checkFlash                                                ;#isfunction  
                    bsr      checkFlash_2RAM 
                    jmp      _msgLine  

;.
checkFlash_2RAM 
                    ldx      #checkFlash_Start 
                    ldu      #_msgLine  
checkFlash_copyNextWord 
                    ldd      ,x++ 
                    std      ,u++ 
                    cmpx     #checkFlash_End 
                    blo      checkFlash_copyNextWord 
                    rts      

;.
checkFlash_Start 
; data 1,
                    lda      #$aa 
; address 1
                    sta      $5555 
; data 2
                    lda      #$55 
; address 2
                    sta      $2aaa 
; data 3
                    lda      #$90                         ; id 
; address 3
                    sta      $5555 
                    ldx      $0 
                    lda      #$f0 
                    sta      $0 
                    cmpx     #$bfb5                       ; for SST39SF010 
                    beq      flashOk_out 
                    cmpx     #$bfb6                       ; for SST39SF020 
                    beq      flashOk_out 
flashNotOk_out 
                    lda      _flashAvailable 
                    anda     #$ff-FLASH_AVAILABLE_BIT 
                    sta      _flashAvailable 
                    rts      

flashOk_out 
                    lda      _flashAvailable 
                    ora      #FLASH_AVAILABLE_BIT 
                    sta      _flashAvailable 
                    rts      

checkFlash_End 
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
writeFlashByte_2RAM 
                    ldx      #writeFlashByte_Start 
                    ldu      #_msgLine  
writeFlashByte_copyNextWord 
                    ldd      ,x++ 
                    std      ,u++ 
                    cmpx     #writeFlashByte_End 
                    blo      writeFlashByte_copyNextWord 
                    rts      

;.
writeFlashByte_Start 
                    ldb      #$aa 
                    stb      $5555 
                    ldb      #$55 
                    stb      $2aaa 
                    ldb      #$a0 
                    stb      $5555 
                    sta      0, x 
                                                          ; wait for write to be done 
                    nop                                   ; force a tiny wait to ensure switching from write
                                                          ; to read works work with fast logic gates.
writeByteToggleLoop
                    ldb      0, x                         ; wait for DQ6 toggle bit to be the same,
                    eorb     0, x                         ; which indicates write is complete.
                    andb     #%01000000                   ;  |
                    bne      writeByteToggleLoop          ;  |
                    rts      

writeFlashByte_End 

