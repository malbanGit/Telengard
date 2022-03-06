                              1 ; NOTE!!!
                              2 ; IF USED IN 'C' YOU MIGHT NEED TO SAVE SOME REGS WHEN CALLING
                              3 ; YOUR FUNCTIONS, LIKE REG 'U' and 'Y'!
                              4 ; ALSO CHECK YOUR DP SETTINGS, BELOW DP = D0 is assumed!
                              5  .module flash.asx.s
                              6  .area .text
                     0001     7 FLASH_AVAILABLE_BIT  =       0b00000001 
                     C82F     8 flashRAMROM = 0xC82F; Vec_Counter_2: 2 byte
                     C831     9 currentFlashROMStart = 0xC831; Vec_Counter_4: 2 byte
                     C879    10 Vec_Num_Players = 0xC879 ; result of load 0=ok, -1 = failure
                     002D    11 PlayerSize = 45; // should be 45
                             12 ; on success Vec_Num_Players = 0
                             13  .globl _checkSavedFlash
   14E9                      14 _checkSavedFlash:
                             15  ; per default loading fails
   14E9 34 70         [ 8]   16  pshs u,y,x
   14EB 86 FF         [ 2]   17  lda #0xff
   14ED B7 C8 79      [ 5]   18  sta Vec_Num_Players
   14F0 8D 3D         [ 7]   19  bsr initFlash
   14F2 27 22         [ 3]   20  beq errOut
   14F4 BE C8 31      [ 6]   21  ldx currentFlashROMStart
   14F7 A6 84         [ 4]   22  lda ,x
   14F9 81 FF         [ 2]   23  cmpa #0xff
   14FB 27 19         [ 3]   24  beq errOut
   14FD 7F C8 79      [ 7]   25  clr Vec_Num_Players
   1500 35 70         [ 8]   26  puls u,y,x
   1502 39            [ 5]   27  rts
                             28  .globl _loadFlash
   1503                      29 _loadFlash:
                             30  ; per default loading fails
   1503 34 70         [ 8]   31  pshs u,y,x
   1505 86 FF         [ 2]   32  lda #0xff
   1507 B7 C8 79      [ 5]   33  sta Vec_Num_Players
   150A 8D 23         [ 7]   34  bsr initFlash
   150C 27 08         [ 3]   35  beq errOut
   150E 8D 4D         [ 7]   36  bsr readPlayer 
   1510 7F C8 79      [ 7]   37  clr Vec_Num_Players
   1513 35 70         [ 8]   38  puls u,y,x
   1515 39            [ 5]   39  rts
                             40  .globl errOut
   1516                      41 errOut:
   1516 35 70         [ 8]   42  puls u,y,x
   1518 39            [ 5]   43  rts
                             44  .globl _saveFlash
   1519                      45 _saveFlash:
                             46  ; per default saving fails
   1519 34 70         [ 8]   47  pshs u,y,x
   151B 86 FF         [ 2]   48  lda #0xff
   151D B7 C8 79      [ 5]   49  sta Vec_Num_Players
   1520 8D 0D         [ 7]   50  bsr initFlash
   1522 27 F2         [ 3]   51  beq errOut
   1524 BD 15 CF      [ 8]   52  jsr savePlayer 
   1527 27 ED         [ 3]   53  beq errOut
   1529 7F C8 79      [ 7]   54  clr Vec_Num_Players
   152C 35 70         [ 8]   55  puls u,y,x
   152E 39            [ 5]   56  rts
                             57 ; **************************************************************************
                             58  .globl _initFlash
   152F                      59 _initFlash:                                                 ;#isfunction  
                             60  .globl initFlash
   152F                      61 initFlash:                                                 ;#isfunction  
   152F 7F C9 08      [ 7]   62                     clr      _flashAvailable 
   1532 BD 15 F3      [ 8]   63                     jsr      checkFlash 
   1535 B6 C9 08      [ 5]   64                     lda      _flashAvailable 
   1538 84 01         [ 2]   65                     anda     #FLASH_AVAILABLE_BIT 
   153A 27 1F         [ 3]   66                     beq      flashErrorOut 
   153C 8E B0 00      [ 3]   67                     ldx      #0xb000 
                             68  .globl checkNextBlock
   153F                      69 checkNextBlock: 
   153F EC 88 2D      [ 6]   70                     ldd      PlayerSize,x 
   1542 10 83 FF FF   [ 5]   71                     cmpd     #0xffff                       ; empty flash space 
   1546 27 0D         [ 3]   72                     beq      flashBlockFound 
   1548 30 88 2D      [ 5]   73                     leax     PlayerSize,x 
   154B 8C C0 00      [ 4]   74                     cmpx     #0xc000 
   154E 25 EF         [ 3]   75                     blo      checkNextBlock 
   1550 8E 00 00      [ 3]   76                     ldx      #0 
   1553 20 06         [ 3]   77                     bra      flashErrorOut 
                             78 ; in x the address of the current relevant flash block
                             79  .globl flashBlockFound
   1555                      80 flashBlockFound: 
   1555 BF C8 31      [ 6]   81                     stx      currentFlashROMStart 
   1558 86 01         [ 2]   82                     lda      #1 
   155A 39            [ 5]   83                     rts      
                             84  .globl flashErrorOut
   155B                      85 flashErrorOut: 
   155B 4F            [ 2]   86                     clra
   155C 39            [ 5]   87                     rts      
                             88 ;.
                             89 ;.......................................................................
                             90 ;.
                             91 ;
                             92 ; copies options to RAM
                             93 ; uses current block
                             94 ; no flash check, since default options are available
                             95 ; **************************************************************************
                             96  .globl readPlayer
   155D                      97 readPlayer:                                           ;#isfunction  
                             98 ; copy options data
   155D CE C9 36      [ 3]   99                     ldu      #_hp 
   1560 BE C8 31      [ 6]  100                     ldx      currentFlashROMStart 
                            101  .globl copyPlayerLoop
   1563                     102 copyPlayerLoop: 
   1563 A6 80         [ 6]  103                     lda      ,x+ 
   1565 A7 C0         [ 6]  104                     sta      ,u+ 
   1567 11 83 C9 63   [ 5]  105                     cmpu     #_hp+PlayerSize
   156B 25 F6         [ 3]  106                     blo      copyPlayerLoop 
   156D 39            [ 5]  107                     rts      
                            108 ;.
                            109 ;.......................................................................
                            110 ; clears complete sector (from 0xb000)
                            111 ; nothing else
                            112 ; needs flash "RAM" block
                            113 ;
                            114 ; Sector-Erase Operation
                            115 ; The Sector-Erase operation allows the system to erase the device on a sector-by-sector basis. The
                            116 ; sector architecture is based on uniform sector size of 4 KByte. The Sector-Erase operation is initiated
                            117 ; by executing a six-byte command load sequence for Software Data Protection with Sector-Erase command
                            118 ; (30H) and sector address (SA) in the last bus cycle. The sector address is latched on the falling
                            119 ; edge of the sixth WE# pulse, while the command (30H) is latched on the rising edge of the sixth WE#
                            120 ; pulse. The internal Erase operation begins after the sixth WE# pulse. The End-of-Erase can be determined
                            121 ; using either Data# Polling or Toggle Bit methods. See Figure 10 for timing waveforms. Any commands
                            122 ; written during the Sector-Erase operation will be ignored.
                            123 ;.
                            124 ; **************************************************************************
                            125  .globl eraseSector
   156E                     126 eraseSector:                                               ;#isfunction  
   156E B6 C9 08      [ 5]  127                     lda      _flashAvailable 
   1571 84 01         [ 2]  128                     anda     #FLASH_AVAILABLE_BIT 
   1573 27 3D         [ 3]  129                     beq      flashErrorOutR1 
   1575 8D 03         [ 7]  130                     bsr      eraseSector_2RAM 
   1577 7E C9 87      [ 4]  131                     jmp      _msgLine 
                            132 ;.
                            133  .globl eraseSector_2RAM
   157A                     134 eraseSector_2RAM: 
   157A 8E 15 8A      [ 3]  135                     ldx      #eraseSector_Start 
   157D CE C9 87      [ 3]  136                     ldu      #_msgLine  
                            137  .globl eraseSector_copyNextWord
   1580                     138 eraseSector_copyNextWord: 
   1580 EC 81         [ 8]  139                     ldd      ,x++ 
   1582 ED C1         [ 8]  140                     std      ,u++ 
   1584 8C 15 B3      [ 4]  141                     cmpx     #eraseSector_End 
   1587 25 F7         [ 3]  142                     blo      eraseSector_copyNextWord 
   1589 39            [ 5]  143                     rts      
                            144 ;.
                            145  .globl eraseSector_Start
   158A                     146 eraseSector_Start: 
                            147 ; data 1,
   158A 86 AA         [ 2]  148                     lda      #0xaa 
                            149 ; address 1
   158C B7 55 55      [ 5]  150                     sta      0x5555 
                            151 ; data 2
   158F 86 55         [ 2]  152                     lda      #0x55 
                            153 ; address 2
   1591 B7 2A AA      [ 5]  154                     sta      0x2aaa 
                            155 ; data 3
   1594 86 80         [ 2]  156                     lda      #0x80 
                            157 ; address 3
   1596 B7 55 55      [ 5]  158                     sta      0x5555 
                            159 ; data 4
   1599 86 AA         [ 2]  160                     lda      #0xaa 
                            161 ; address 4
   159B B7 55 55      [ 5]  162                     sta      0x5555 
                            163 ; data 5
   159E 86 55         [ 2]  164                     lda      #0x55 
                            165 ; address 5
   15A0 B7 2A AA      [ 5]  166                     sta      0x2aaa 
                            167 ; data 6
   15A3 86 30         [ 2]  168                     lda      #0x30 
                            169 ; address 6
   15A5 B7 B0 00      [ 5]  170                     sta      0xb000                        ; earse sector beginning at 0xb000 
                            171  .globl eraseToggleWait
   15A8                     172 eraseToggleWait: 
   15A8 F6 00 00      [ 5]  173                     ldb      0x0000                        ; load from even address 
   15AB F8 00 00      [ 5]  174                     eorb     0x0000                        ; load again even and eor 
   15AE C5 40         [ 2]  175                     bitb     #0b01000000                   ; if not equal go on waiting 
   15B0 26 F6         [ 3]  176                     bne      eraseToggleWait 
                            177  .globl flashErrorOutR1
   15B2                     178 flashErrorOutR1: 
   15B2 39            [ 5]  179                     rts      
                            180  .globl eraseSector_End
   15B3                     181 eraseSector_End: 
                            182 ;.
                            183 ;.......................................................................
                            184 ;.
                            185 ; finds and sets new flash block
                            186 ; if last flash block was used, than flash sector is
                            187 ; erased and flash blocks start anew from 0xb000
                            188 ;.
                            189 ; Assumed: currentFlashROMStart was initialized to current block
                            190 ;.
                            191 ; **************************************************************************
                            192  .globl findNextFlashBlock
   15B3                     193 findNextFlashBlock:                                        ;#isfunction  
   15B3 BE C8 31      [ 6]  194                     ldx      currentFlashROMStart 
   15B6 EC 84         [ 5]  195  ldd ,x
   15B8 10 83 FF FF   [ 5]  196  cmpd #0xffff
   15BC 27 0D         [ 3]  197  beq blockAddressOk
   15BE 30 88 2D      [ 5]  198                     leax     PlayerSize,x                 ; load next memory address of flashblock 
   15C1 8C BF D3      [ 4]  199                     cmpx     #0xc000 - PlayerSize          ; check if next address has enough space left 
   15C4 25 05         [ 3]  200                     blo      blockAddressOk 
                            201 ; format flash
   15C6 8D A6         [ 7]  202                     bsr      eraseSector 
   15C8 8E B0 00      [ 3]  203                     ldx      #0xb000 
                            204  .globl blockAddressOk
   15CB                     205 blockAddressOk: 
   15CB BF C8 31      [ 6]  206                     stx      currentFlashROMStart 
                            207 ; in x now correct adress block of flash that can be written to
   15CE 39            [ 5]  208                     rts      
                            209 ;.
                            210 ;.......................................................................
                            211 ;.
                            212 ; saves player
                            213 ;
                            214 ; needs flash "RAM" block
                            215 ;.
                            216 ; **************************************************************************
                            217  .globl savePlayer
   15CF                     218 savePlayer:                                          ;#isfunction  
   15CF B6 C9 08      [ 5]  219                     lda      _flashAvailable 
   15D2 84 01         [ 2]  220                     anda     #FLASH_AVAILABLE_BIT 
   15D4 10 27 FF 83   [ 6]  221                     lbeq     flashErrorOut 
                            222 ; changes for V1.11
   15D8 8D D9         [ 7]  223                     bsr      findNextFlashBlock           ; also loads to X 
   15DA BD 16 3B      [ 8]  224                     jsr      writeFlashByte_2RAM 
   15DD BE C8 31      [ 6]  225                     ldx      currentFlashROMStart 
                            226 ; first write options
   15E0 CE C9 36      [ 3]  227                     ldu      #_hp
                            228  .globl writeNextByte
   15E3                     229 writeNextByte: 
   15E3 A6 C0         [ 6]  230                     lda      ,u+ 
   15E5 BD C9 87      [ 8]  231                     jsr      _msgLine  
   15E8 30 01         [ 5]  232                     leax     1,x 
   15EA 11 83 C9 63   [ 5]  233                     cmpu     #_hp+PlayerSize
   15EE 25 F3         [ 3]  234                     blo      writeNextByte 
   15F0 86 01         [ 2]  235  lda #1; non zero
   15F2 39            [ 5]  236                     rts      
                            237 ;.
                            238 ;.......................................................................
                            239 ;.
                            240 ; check flash ID byte
                            241 ; z flag = if ok
                            242 ; z flag not set, than flash id wrong
                            243 ;.
                            244 ; needs flash "RAM" block
                            245 ; **************************************************************************
                            246  .globl checkFlash
   15F3                     247 checkFlash:                                                ;#isfunction  
   15F3 8D 03         [ 7]  248                     bsr      checkFlash_2RAM 
   15F5 7E C9 87      [ 4]  249                     jmp      _msgLine  
                            250 ;.
                            251  .globl checkFlash_2RAM
   15F8                     252 checkFlash_2RAM: 
   15F8 8E 16 08      [ 3]  253                     ldx      #checkFlash_Start 
   15FB CE C9 87      [ 3]  254                     ldu      #_msgLine  
                            255  .globl checkFlash_copyNextWord
   15FE                     256 checkFlash_copyNextWord: 
   15FE EC 81         [ 8]  257                     ldd      ,x++ 
   1600 ED C1         [ 8]  258                     std      ,u++ 
   1602 8C 16 3B      [ 4]  259                     cmpx     #checkFlash_End 
   1605 25 F7         [ 3]  260                     blo      checkFlash_copyNextWord 
   1607 39            [ 5]  261                     rts      
                            262 ;.
                            263  .globl checkFlash_Start
   1608                     264 checkFlash_Start: 
                            265 ; data 1,
   1608 86 AA         [ 2]  266                     lda      #0xaa 
                            267 ; address 1
   160A B7 55 55      [ 5]  268                     sta      0x5555 
                            269 ; data 2
   160D 86 55         [ 2]  270                     lda      #0x55 
                            271 ; address 2
   160F B7 2A AA      [ 5]  272                     sta      0x2aaa 
                            273 ; data 3
   1612 86 90         [ 2]  274                     lda      #0x90                         ; id 
                            275 ; address 3
   1614 B7 55 55      [ 5]  276                     sta      0x5555 
   1617 BE 00 00      [ 6]  277                     ldx      0x0 
   161A 86 F0         [ 2]  278                     lda      #0xf0 
   161C B7 00 00      [ 5]  279                     sta      0x0 
   161F 8C BF B5      [ 4]  280                     cmpx     #0xbfb5                       ; for SST39SF010 
   1622 27 0E         [ 3]  281                     beq      flashOk_out 
   1624 8C BF B6      [ 4]  282                     cmpx     #0xbfb6                       ; for SST39SF020 
   1627 27 09         [ 3]  283                     beq      flashOk_out 
                            284  .globl flashNotOk_out
   1629                     285 flashNotOk_out: 
   1629 B6 C9 08      [ 5]  286                     lda      _flashAvailable 
   162C 84 FE         [ 2]  287                     anda     #0xff-FLASH_AVAILABLE_BIT 
   162E B7 C9 08      [ 5]  288                     sta      _flashAvailable 
   1631 39            [ 5]  289                     rts      
                            290  .globl flashOk_out
   1632                     291 flashOk_out: 
   1632 B6 C9 08      [ 5]  292                     lda      _flashAvailable 
   1635 8A 01         [ 2]  293                     ora      #FLASH_AVAILABLE_BIT 
   1637 B7 C9 08      [ 5]  294                     sta      _flashAvailable 
   163A 39            [ 5]  295                     rts      
                            296  .globl checkFlash_End
   163B                     297 checkFlash_End: 
                            298 ;.
                            299 ;.......................................................................
                            300 ;.
                            301 ; writes one byte to flash memory
                            302 ; exepcts flash to be properly formated/erased (all bit = 1)
                            303 ;
                            304 ; output address = x
                            305 ; output byte in A
                            306 ;
                            307 ; destroys B
                            308 ;
                            309 ; needs flash "RAM" block
                            310 ; **************************************************************************
                            311  .globl writeFlashByte_2RAM
   163B                     312 writeFlashByte_2RAM: 
   163B 8E 16 4B      [ 3]  313                     ldx      #writeFlashByte_Start 
   163E CE C9 87      [ 3]  314                     ldu      #_msgLine  
                            315  .globl writeFlashByte_copyNextWord
   1641                     316 writeFlashByte_copyNextWord: 
   1641 EC 81         [ 8]  317                     ldd      ,x++ 
   1643 ED C1         [ 8]  318                     std      ,u++ 
   1645 8C 16 66      [ 4]  319                     cmpx     #_writeFlashByte_End 
   1648 25 F7         [ 3]  320                     blo      writeFlashByte_copyNextWord 
   164A 39            [ 5]  321                     rts      
                            322 ;.
                            323  .globl writeFlashByte_Start
   164B                     324 writeFlashByte_Start: 
   164B C6 AA         [ 2]  325                     ldb      #0xaa 
   164D F7 55 55      [ 5]  326                     stb      0x5555 
   1650 C6 55         [ 2]  327                     ldb      #0x55 
   1652 F7 2A AA      [ 5]  328                     stb      0x2aaa 
   1655 C6 A0         [ 2]  329                     ldb      #0xa0 
   1657 F7 55 55      [ 5]  330                     stb      0x5555 
   165A A7 00         [ 5]  331                     sta      0, x 
                            332                                                           ; wait for write to be done 
   165C 12            [ 2]  333  nop ; force a tiny wait to ensure switching from write
                            334                                                           ; to read works work with fast logic gates.
                            335  .globl writeByteToggleLoop
   165D                     336 writeByteToggleLoop:
   165D E6 00         [ 5]  337                     ldb      0, x                         ; wait for DQ6 toggle bit to be the same,
   165F E8 00         [ 5]  338                     eorb     0, x                         ; which indicates write is complete.
   1661 C4 40         [ 2]  339                     andb     #0b01000000                   ;  |
   1663 26 F8         [ 3]  340                     bne      writeByteToggleLoop          ;  |
   1665 39            [ 5]  341                     rts      
                            342  .globl _writeFlashByte_End
   1666                     343 _writeFlashByte_End: 
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$flash.asx$10     0077 GR  |   2 A$flash.asx$10     007A GR
  2 A$flash.asx$10     007C GR  |   2 A$flash.asx$10     007E GR
  2 A$flash.asx$10     0082 GR  |   2 A$flash.asx$10     0084 GR
  2 A$flash.asx$12     0085 GR  |   2 A$flash.asx$12     0088 GR
  2 A$flash.asx$12     008A GR  |   2 A$flash.asx$13     008C GR
  2 A$flash.asx$13     008E GR  |   2 A$flash.asx$13     0091 GR
  2 A$flash.asx$13     0094 GR  |   2 A$flash.asx$13     0097 GR
  2 A$flash.asx$14     0099 GR  |   2 A$flash.asx$14     009B GR
  2 A$flash.asx$14     009E GR  |   2 A$flash.asx$14     00A0 GR
  2 A$flash.asx$14     00A1 GR  |   2 A$flash.asx$15     00A3 GR
  2 A$flash.asx$15     00A6 GR  |   2 A$flash.asx$15     00A8 GR
  2 A$flash.asx$15     00AB GR  |   2 A$flash.asx$15     00AD GR
  2 A$flash.asx$16     0000 GR  |   2 A$flash.asx$16     00B0 GR
  2 A$flash.asx$16     00B2 GR  |   2 A$flash.asx$16     00B5 GR
  2 A$flash.asx$16     00B7 GR  |   2 A$flash.asx$16     00BA GR
  2 A$flash.asx$17     0002 GR  |   2 A$flash.asx$17     00BC GR
  2 A$flash.asx$17     00BF GR  |   2 A$flash.asx$17     00C2 GR
  2 A$flash.asx$17     00C5 GR  |   2 A$flash.asx$17     00C7 GR
  2 A$flash.asx$17     00C9 GR  |   2 A$flash.asx$18     0004 GR
  2 A$flash.asx$19     0007 GR  |   2 A$flash.asx$19     00CA GR
  2 A$flash.asx$19     00CD GR  |   2 A$flash.asx$19     00CF GR
  2 A$flash.asx$19     00D3 GR  |   2 A$flash.asx$19     00D5 GR
  2 A$flash.asx$19     00D8 GR  |   2 A$flash.asx$20     0009 GR
  2 A$flash.asx$20     00DB GR  |   2 A$flash.asx$20     00DD GR
  2 A$flash.asx$20     00DF GR  |   2 A$flash.asx$20     00E2 GR
  2 A$flash.asx$20     00E5 GR  |   2 A$flash.asx$21     000B GR
  2 A$flash.asx$21     00E6 GR  |   2 A$flash.asx$22     000E GR
  2 A$flash.asx$22     00E9 GR  |   2 A$flash.asx$22     00EB GR
  2 A$flash.asx$22     00EF GR  |   2 A$flash.asx$22     00F1 GR
  2 A$flash.asx$22     00F4 GR  |   2 A$flash.asx$22     00F7 GR
  2 A$flash.asx$23     0010 GR  |   2 A$flash.asx$23     00FA GR
  2 A$flash.asx$23     00FC GR  |   2 A$flash.asx$23     00FF GR
  2 A$flash.asx$23     0101 GR  |   2 A$flash.asx$23     0105 GR
  2 A$flash.asx$23     0107 GR  |   2 A$flash.asx$23     0109 GR
  2 A$flash.asx$24     0012 GR  |   2 A$flash.asx$24     010A GR
  2 A$flash.asx$24     010C GR  |   2 A$flash.asx$25     0014 GR
  2 A$flash.asx$25     010F GR  |   2 A$flash.asx$25     0112 GR
  2 A$flash.asx$25     0115 GR  |   2 A$flash.asx$25     0117 GR
  2 A$flash.asx$25     0119 GR  |   2 A$flash.asx$26     0017 GR
  2 A$flash.asx$26     011C GR  |   2 A$flash.asx$26     011E GR
  2 A$flash.asx$26     011F GR  |   2 A$flash.asx$26     0121 GR
  2 A$flash.asx$27     0019 GR  |   2 A$flash.asx$27     0124 GR
  2 A$flash.asx$27     0126 GR  |   2 A$flash.asx$27     0129 GR
  2 A$flash.asx$27     012B GR  |   2 A$flash.asx$27     012E GR
  2 A$flash.asx$27     0131 GR  |   2 A$flash.asx$27     0133 GR
  2 A$flash.asx$28     0136 GR  |   2 A$flash.asx$28     0139 GR
  2 A$flash.asx$28     013B GR  |   2 A$flash.asx$28     013E GR
  2 A$flash.asx$28     0140 GR  |   2 A$flash.asx$28     0143 GR
  2 A$flash.asx$28     0145 GR  |   2 A$flash.asx$28     0148 GR
  2 A$flash.asx$29     0149 GR  |   2 A$flash.asx$29     014C GR
  2 A$flash.asx$29     014E GR  |   2 A$flash.asx$29     0151 GR
  2 A$flash.asx$31     001A GR  |   2 A$flash.asx$31     0152 GR
  2 A$flash.asx$31     0155 GR  |   2 A$flash.asx$31     0158 GR
  2 A$flash.asx$31     015A GR  |   2 A$flash.asx$31     015C GR
  2 A$flash.asx$32     001C GR  |   2 A$flash.asx$32     015F GR
  2 A$flash.asx$32     0161 GR  |   2 A$flash.asx$32     0162 GR
  2 A$flash.asx$32     0164 GR  |   2 A$flash.asx$32     0167 GR
  2 A$flash.asx$32     0169 GR  |   2 A$flash.asx$32     016C GR
  2 A$flash.asx$33     001E GR  |   2 A$flash.asx$33     016E GR
  2 A$flash.asx$33     0171 GR  |   2 A$flash.asx$33     0173 GR
  2 A$flash.asx$33     0174 GR  |   2 A$flash.asx$33     0176 GR
  2 A$flash.asx$33     0178 GR  |   2 A$flash.asx$34     0021 GR
  2 A$flash.asx$34     017A GR  |   2 A$flash.asx$34     017C GR
  2 A$flash.asx$35     0023 GR  |   2 A$flash.asx$36     0025 GR
  2 A$flash.asx$37     0027 GR  |   2 A$flash.asx$38     002A GR
  2 A$flash.asx$39     002C GR  |   2 A$flash.asx$42     002D GR
  2 A$flash.asx$43     002F GR  |   2 A$flash.asx$47     0030 GR
  2 A$flash.asx$48     0032 GR  |   2 A$flash.asx$49     0034 GR
  2 A$flash.asx$50     0037 GR  |   2 A$flash.asx$51     0039 GR
  2 A$flash.asx$52     003B GR  |   2 A$flash.asx$53     003E GR
  2 A$flash.asx$54     0040 GR  |   2 A$flash.asx$55     0043 GR
  2 A$flash.asx$56     0045 GR  |   2 A$flash.asx$62     0046 GR
  2 A$flash.asx$63     0049 GR  |   2 A$flash.asx$64     004C GR
  2 A$flash.asx$65     004F GR  |   2 A$flash.asx$66     0051 GR
  2 A$flash.asx$67     0053 GR  |   2 A$flash.asx$70     0056 GR
  2 A$flash.asx$71     0059 GR  |   2 A$flash.asx$72     005D GR
  2 A$flash.asx$73     005F GR  |   2 A$flash.asx$74     0062 GR
  2 A$flash.asx$75     0065 GR  |   2 A$flash.asx$76     0067 GR
  2 A$flash.asx$77     006A GR  |   2 A$flash.asx$81     006C GR
  2 A$flash.asx$82     006F GR  |   2 A$flash.asx$83     0071 GR
  2 A$flash.asx$86     0072 GR  |   2 A$flash.asx$87     0073 GR
  2 A$flash.asx$99     0074 GR  |     FLASH_AVAILABL =   0001 
    PlayerSize     =   002D     |     Vec_Num_Player =   C879 
  2 _checkSavedFla     0000 GR  |     _flashAvailabl     **** GX
    _hp                **** GX  |   2 _initFlash         0046 GR
  2 _loadFlash         001A GR  |     _msgLine           **** GX
  2 _saveFlash         0030 GR  |   2 _writeFlashByt     017D GR
  2 blockAddressOk     00E2 GR  |   2 checkFlash         010A GR
  2 checkFlash_2RA     010F GR  |   2 checkFlash_End     0152 GR
  2 checkFlash_Sta     011F GR  |   2 checkFlash_cop     0115 GR
  2 checkNextBlock     0056 GR  |   2 copyPlayerLoop     007A GR
    currentFlashRO =   C831     |   2 eraseSector        0085 GR
  2 eraseSector_2R     0091 GR  |   2 eraseSector_En     00CA GR
  2 eraseSector_St     00A1 GR  |   2 eraseSector_co     0097 GR
  2 eraseToggleWai     00BF GR  |   2 errOut             002D GR
  2 findNextFlashB     00CA GR  |   2 flashBlockFoun     006C GR
  2 flashErrorOut      0072 GR  |   2 flashErrorOutR     00C9 GR
  2 flashNotOk_out     0140 GR  |   2 flashOk_out        0149 GR
    flashRAMROM    =   C82F     |   2 initFlash          0046 GR
  2 readPlayer         0074 GR  |   2 savePlayer         00E6 GR
  2 writeByteToggl     0174 GR  |   2 writeFlashByte     0152 GR
  2 writeFlashByte     0162 GR  |   2 writeFlashByte     0158 GR
  2 writeNextByte      00FA GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  17D   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

