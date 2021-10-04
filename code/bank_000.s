; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $000", ROM0[$0]

ToBoot::
	di                                                              ; $0000
	jp   Boot                                                       ; $0001


SECTION "RST $08", ROM0[$8]

WaitUntilVBlankIntHandledIfLCDOn::
; Return if LCD is off
	ldh  a, [rLCDC]                                                 ; $0008
	bit  7, a                                                       ; $000a
	ret  z                                                          ; $000c

; Else perform main vblank updates
	ld   hl, wSkipMainVBlankFuncs                                   ; $000d
	xor  a                                                          ; $0010
	ld   [hl], a                                                    ; $0011

; And wait until vblank handled and finished
:	halt                                                            ; $0012
	ld   a, [hl]                                                    ; $0013
	and  a                                                          ; $0014
	jr   z, :-                                                      ; $0015

	ret                                                             ; $0017


; A - table idx
; Popped HL - table addr
JumpTable::
	add  a                                                          ; $0018
	pop  hl                                                         ; $0019
	ld   e, a                                                       ; $001a
	ld   d, $00                                                     ; $001b
	add  hl, de                                                     ; $001d
	ld   e, [hl]                                                    ; $001e
	inc  hl                                                         ; $001f
	ld   d, [hl]                                                    ; $0020
	ld   l, e                                                       ; $0021
	ld   h, d                                                       ; $0022
	jp   hl                                                         ; $0023


SECTION "VBlank Interrupt", ROM0[$40]

VBlankInterrupt::
	jp   VBlankInterruptHandler                                     ; $0040


SECTION "LCDC Interrupt", ROM0[$48]

LCDCInterrupt::
	jp   LCDCInterruptHandler                                       ; $0048


SECTION "Timer Interrupt", ROM0[$50]

TimerOverflowInterrupt::
	jp   TimerInterruptHandler                                      ; $0050


SECTION "Serial Interrupt", ROM0[$58]

SerialTransferCompleteInterrupt::
	jp   SerialInterruptHandlerStub                                 ; $0058


SECTION "Joypad Interrupt", ROM0[$60]

JoypadTransitionInterrupt::
	jp   JoypadInterruptHandlerStub                                 ; $0060


SECTION "Boot", ROM0[$100]

Boot::
	nop                                                             ; $0100
	jp   Begin                                                      ; $0101


SECTION "Begin", ROM0[$150]

Begin:
; Store GBC check in B
	ld   b, a                                                       ; $0150

; Clear wram bank 0
	xor  a                                                          ; $0151
	ld   hl, $cfff                                                  ; $0152
:	ld   [hl-], a                                                   ; $0155
	bit  6, h                                                       ; $0156
	jr   nz, :-                                                     ; $0158

	ld   a, b                                                       ; $015a

; A - $11 if GBC
Reset:
; Set if GBC and skip double speed if not
	ld   [wIsGBC], a                                                ; $015b
	cp   $11                                                        ; $015e
	jr   nz, .afterDoubleSpeed                                      ; $0160

; Set that double speed was applied
	ld   a, $01                                                     ; $0162
	ld   [wIsDoubleSpeed], a                                        ; $0164
	ldh  a, [rKEY1]                                                 ; $0167
	bit  7, a                                                       ; $0169
	jr   nz, .afterDoubleSpeed                                      ; $016b

; Apply double speed mode
	xor  a                                                          ; $016d
	ldh  [rIF], a                                                   ; $016e
	ld   [wIE], a                                                   ; $0170
	ldh  [rIE], a                                                   ; $0173
	ldh  a, [rP1]                                                   ; $0175
	or   $30                                                        ; $0177
	ldh  [rP1], a                                                   ; $0179
	ldh  a, [rKEY1]                                                 ; $017b
	ld   a, $01                                                     ; $017d
	ldh  [rKEY1], a                                                 ; $017f
	ei                                                              ; $0181
	di                                                              ; $0182
	stop                                                            ; $0183

.afterDoubleSpeed:
; Set SP and disable int triggers
	ld   sp, wStackTop                                              ; $0185
	di                                                              ; $0188
	xor  a                                                          ; $0189
	ldh  [rIF], a                                                   ; $018a

; If LCD is off, turn it on
	ldh  a, [rLCDC]                                                 ; $018c
	bit  7, a                                                       ; $018e
	jr   nz, :+                                                     ; $0190

	set  7, a                                                       ; $0192
	ldh  [rLCDC], a                                                 ; $0194

; Wait 35k cycles
:	ld   bc, $0002                                                  ; $0196
	call Wait17500BCcycles                                          ; $0199

; Wait until in vblank
:	ldh  a, [rLY]                                                   ; $019c
	cp   $91                                                        ; $019e
	jr   c, :-                                                      ; $01a0

; Turn on LCD and clear DMG palette regs
	ld   a, $80                                                     ; $01a2
	ldh  [rLCDC], a                                                 ; $01a4
	xor  a                                                          ; $01a6
	ldh  [rBGP], a                                                  ; $01a7
	ldh  [rOBP0], a                                                 ; $01a9
	ldh  [rOBP1], a                                                 ; $01ab

; Wait 35k cycles, then turn off LCD
	ld   bc, $0002                                                  ; $01ad
	call Wait17500BCcycles                                          ; $01b0
	call TurnOffLCD                                                 ; $01b3

; Set initial state of MBC: enabled sram and rom bank 1
	ld   a, $0a                                                     ; $01b6
	ld   [rRAMG], a                                                 ; $01b8
	xor  a                                                          ; $01bb
	ld   [rROMB1], a                                                ; $01bc
	inc  a                                                          ; $01bf
	ld   [wRomBank], a                                              ; $01c0
	ld   [rROMB0], a                                                ; $01c3

; Set up oam dma, clear some ram, and init sound
	call CopyOamDmaFunc                                             ; $01c6
	call ClearOam                                                   ; $01c9
	call ClearVram                                                  ; $01cc
	call InitSound                                                  ; $01cf

; Clear some vars
	xor  a                                                          ; $01d2
	ld   [wLCDCIntFuncIdx], a                                       ; $01d3
	ld   [wInGameInputsEnabled], a                                  ; $01d6
	ld   [wNumTiles10hBytesHDMAEnqueued], a                         ; $01d9
	ld   [wNumVBlankTransferStructBytes], a                         ; $01dc
	ld   [wEndingBGColorToUpdate], a                                ; $01df
	ld   [wEndingOBJColorToUpdate], a                               ; $01e2

; Don't update palettes by default
	dec  a                                                          ; $01e5
	ld   [wStartingBGColorToUpdate], a                              ; $01e6
	ld   [wStartingOBJColorToUpdate], a                             ; $01e9

; Clear from wLCDC to wSCY
	ld   hl, wDisplayRegs                                           ; $01ec
	xor  a                                                          ; $01ef
	ld   [hl+], a                                                   ; $01f0
	ld   [hl+], a                                                   ; $01f1
	ld   [hl+], a                                                   ; $01f2
	ld   [hl+], a                                                   ; $01f3
	ld   [hl+], a                                                   ; $01f4
	ld   [hl+], a                                                   ; $01f5

; Set wWX, then wWY so that window is off-screen by default
	ld   a, $a6                                                     ; $01f6
	ld   [hl+], a                                                   ; $01f8
	ld   a, $8f                                                     ; $01f9
	ld   [hl+], a                                                   ; $01fb

; Clear wLYC and wSTAT
	xor  a                                                          ; $01fc
	ld   [hl+], a                                                   ; $01fd
	ld   [hl+], a                                                   ; $01fe

; Allow vblank interrupt
	ld   a, IEF_VBLANK                                              ; $01ff
	ld   [hl+], a                                                   ; $0201
	ldh  [rIE], a                                                   ; $0202

; Store a stub address into an unused word var
	ld   hl, Stub_03a8                                              ; $0204
	ld   a, l                                                       ; $0207
	ld   [wUnusedWord_c290], a                                      ; $0208
	ld   a, h                                                       ; $020b
	ld   [wUnusedWord_c290+1], a                                    ; $020c

; Jump to main loop
	ei                                                              ; $020f
	ld   a, $00                                                     ; $0210
	ld   [wRomBank], a                                              ; $0212
	ld   [rROMB0], a                                                ; $0215
	jp   MainLoop                                                   ; $0218


ToReset:
; Preserve GBC flag, and if visited title screen
	ld   a, [wIsGBC]                                                ; $021b
	ld   b, a                                                       ; $021e
	ld   a, [wVisitedTitleScreen]                                   ; $021f
	ld   c, a                                                       ; $0222

; Clear wram (stop when hitting $bf)
	xor  a                                                          ; $0223
	ld   hl, $cfff                                                  ; $0224
:	ld   [hl-], a                                                   ; $0227
	bit  6, h                                                       ; $0228
	jr   nz, :-                                                     ; $022a

; Restore visited title screen flag, and re-set GBC flag
	ld   a, c                                                       ; $022c
	ld   [wVisitedTitleScreen], a                                   ; $022d
	ld   a, b                                                       ; $0230
	jp   Reset                                                      ; $0231


SpriteGroupDataPointers:
	db $00, $00, $00
	AddrBank SpriteGroup1Pointers
	AddrBank SpriteGroup2Pointers
	AddrBank SpriteGroup3Pointers
	AddrBank SpriteGroup4Pointers
	AddrBank SpriteGroup5Pointers
	AddrBank SpriteGroup6Pointers
	AddrBank SpriteGroup7Pointers
	AddrBank SpriteGroup8Pointers
	AddrBank SpriteGroup9Pointers
	AddrBank SpriteGroupAPointers
	AddrBank SpriteGroupBPointers
	AddrBank SpriteGroupCPointers
	AddrBank SpriteGroupDPointers
	AddrBank SpriteGroupEPointers
	AddrBank SpriteGroupFPointers


CopyOamDmaFunc:
	ld   c, LOW(hOamDmaFunc)                                        ; $0264
	ld   b, OamDmaFunc.end-OamDmaFunc                               ; $0266
	ld   hl, OamDmaFunc                                             ; $0268
:	ld   a, [hl+]                                                   ; $026b
	ldh  [c], a                                                     ; $026c
	inc  c                                                          ; $026d
	dec  b                                                          ; $026e
	jr   nz, :-                                                     ; $026f

	ret                                                             ; $0271


OamDmaFunc:
	ld   a, HIGH(wOam)                                              ; $0272
	ldh  [rDMA], a                                                  ; $0274
	ld   a, $28                                                     ; $0276
:	dec  a                                                          ; $0278
	jr   nz, :-                                                     ; $0279

	ret                                                             ; $027b
.end:


; A - transfer src bank
; B - num bytes / $10
; C - vram bank in low 7 bits
;     bit 7 set if transferring from wram, else transferring from rom
; DE - transfer dest
; HL - transfer src
; Will start transfer if LCD is off
EnqueueHDMATransfer::
	push bc                                                         ; $027c
	push hl                                                         ; $027d
	push af                                                         ; $027e

; We're adding 7 hdma struct bytes
	ld   a, [wNumVBlankTransferStructBytes]                         ; $027f
	add  HDMA_SIZEOF                                                ; $0282
	ld   [wNumVBlankTransferStructBytes], a                         ; $0284

; Above +7 means below `add hl, bc` gives us:
; wVBlankTransferStructs+HDMA_SRC_BANK for the 1st entry
	ld   hl, wVBlankTransferStructs+HDMA_SRC_BANK-HDMA_SIZEOF       ; $0287
	ld   b, $00                                                     ; $028a
	ld   c, a                                                       ; $028c
	add  hl, bc                                                     ; $028d

; Set src bank
	pop  af                                                         ; $028e
	ld   [hl+], a                                                   ; $028f

; Set HDMA_SRC_HI
	pop  bc                                                         ; $0290
	ld   a, b                                                       ; $0291
	ld   [hl+], a                                                   ; $0292

; Set HDMA_SRC_LO (4 lower bits are already ignored)
	ld   a, c                                                       ; $0293
	and  $f0                                                        ; $0294
	ld   [hl+], a                                                   ; $0296

; Set HDMA_DEST_HI (3 upper bits are already ignored)
	ld   a, d                                                       ; $0297
	and  $1f                                                        ; $0298
	ld   [hl+], a                                                   ; $029a

; Set HDMA_DEST_LO (4 lower bits are already ignored)
	ld   a, e                                                       ; $029b
	and  $f0                                                        ; $029c
	ld   [hl+], a                                                   ; $029e

; Set HDMA_5
	pop  bc                                                         ; $029f
	ld   a, b                                                       ; $02a0
	dec  a                                                          ; $02a1
	ld   [hl+], a                                                   ; $02a2

; Sub 7 to point to HDMA_SRC_TYPE_AND_VBK
	ld   a, c                                                       ; $02a3
	ld   de, -HDMA_SIZEOF                                           ; $02a4
	add  hl, de                                                     ; $02a7
	ld   [hl], a                                                    ; $02a8

; If LCD is off, transfer it straight away
	ld   a, [wLCDC]                                                 ; $02a9
	bit  7, a                                                       ; $02ac
	jr   z, ProcessHDMATransfers                                    ; $02ae

; Add to this unused var
	ld   a, [wNumTiles10hBytesHDMAEnqueued]                         ; $02b0
	add  b                                                          ; $02b3
	ld   [wNumTiles10hBytesHDMAEnqueued], a                         ; $02b4
	ret                                                             ; $02b7


; 7-byte structs
; Byte 0 - If bit 7 set
ProcessHDMATransfers:
	ld   hl, wVBlankTransferStructs                                 ; $02b8

.nextTransfer:
; Jump if 1st byte of transfer struct has bit 7 set
	ld   a, [hl+]                                                   ; $02bb
	bit  7, a                                                       ; $02bc
	jr   nz, .bit7set                                               ; $02be

; If not, it is the vram bank
	ldh  [rVBK], a                                                  ; $02c0

; Preserve and set rom bank from the 2nd byte
	ld   a, [wRomBank]                                              ; $02c2
	push af                                                         ; $02c5
	ld   a, [hl+]                                                   ; $02c6
	ld   [wRomBank], a                                              ; $02c7
	ld   [rROMB0], a                                                ; $02ca

; Next 5 bytes controls hdma params
	ld   a, [hl+]                                                   ; $02cd
	ldh  [rHDMA1], a                                                ; $02ce
	ld   a, [hl+]                                                   ; $02d0
	ldh  [rHDMA2], a                                                ; $02d1
	ld   a, [hl+]                                                   ; $02d3
	ldh  [rHDMA3], a                                                ; $02d4
	ld   a, [hl+]                                                   ; $02d6
	ldh  [rHDMA4], a                                                ; $02d7
	ld   a, [hl+]                                                   ; $02d9
	ldh  [rHDMA5], a                                                ; $02da

; Restore rom bank
	pop  af                                                         ; $02dc
	ld   [wRomBank], a                                              ; $02dd
	ld   [rROMB0], a                                                ; $02e0

; 7 transfer struct bytes have been done
	ld   a, [wNumVBlankTransferStructBytes]                         ; $02e3
	sub  HDMA_SIZEOF                                                ; $02e6
	ld   [wNumVBlankTransferStructBytes], a                         ; $02e8
	jr   nz, .nextTransfer                                          ; $02eb

; Clear num bytes enqueued
	ld   [wNumTiles10hBytesHDMAEnqueued], a                         ; $02ed
	ret                                                             ; $02f0

.bit7set:
; The byte without the bit 7 set is the vram bank
	res  7, a                                                       ; $02f1
	ldh  [rVBK], a                                                  ; $02f3

; Preserve and set wram bank from the 2nd byte
	ld   a, [wWramBank]                                             ; $02f5
	push af                                                         ; $02f8
	ld   a, [hl+]                                                   ; $02f9
	ld   [wWramBank], a                                             ; $02fa
	ldh  [rSVBK], a                                                 ; $02fd

; Next 5 bytes controls hdma params
	ld   a, [hl+]                                                   ; $02ff
	ldh  [rHDMA1], a                                                ; $0300
	ld   a, [hl+]                                                   ; $0302
	ldh  [rHDMA2], a                                                ; $0303
	ld   a, [hl+]                                                   ; $0305
	ldh  [rHDMA3], a                                                ; $0306
	ld   a, [hl+]                                                   ; $0308
	ldh  [rHDMA4], a                                                ; $0309
	ld   a, [hl+]                                                   ; $030b
	ldh  [rHDMA5], a                                                ; $030c

; Restore wram bank
	pop  af                                                         ; $030e
	ld   [wWramBank], a                                             ; $030f
	ldh  [rSVBK], a                                                 ; $0312

; 7 transfer struct bytes have been done
	ld   a, [wNumVBlankTransferStructBytes]                         ; $0314
	sub  HDMA_SIZEOF                                                ; $0317
	ld   [wNumVBlankTransferStructBytes], a                         ; $0319
	jr   nz, .nextTransfer                                          ; $031c

; Clear num bytes enqueued
	ld   [wNumTiles10hBytesHDMAEnqueued], a                         ; $031e
	ret                                                             ; $0321


VBlankInterruptHandler:
	push af                                                         ; $0322
	push bc                                                         ; $0323
	push de                                                         ; $0324
	push hl                                                         ; $0325

; Jump if we need to skip the below funcs due to a wait request
	di                                                              ; $0326
	ld   a, [wSkipMainVBlankFuncs]                                  ; $0327
	or   a                                                          ; $032a
	jr   nz, .afterIntHandledCheck                                  ; $032b

; Main vblank funcs
	call hOamDmaFunc                                                ; $032d
	call PollInput                                                  ; $0330

; Process any pending hdma transfers
	ld   a, [wNumVBlankTransferStructBytes]                         ; $0333
	or   a                                                          ; $0336
	call nz, ProcessHDMATransfers                                   ; $0337

.afterIntHandledCheck:
; Update from shadow display regs
	ld   hl, wDisplayRegs                                           ; $033a
	ld   a, [hl+]                                                   ; $033d
	ldh  [rLCDC], a                                                 ; $033e
	ld   a, [hl+]                                                   ; $0340
	ldh  [rBGP], a                                                  ; $0341
	ld   a, [hl+]                                                   ; $0343
	ldh  [rOBP0], a                                                 ; $0344
	ld   a, [hl+]                                                   ; $0346
	ldh  [rOBP1], a                                                 ; $0347
	ld   a, [hl+]                                                   ; $0349
	ldh  [rSCX], a                                                  ; $034a
	ld   a, [hl+]                                                   ; $034c
	ldh  [rSCY], a                                                  ; $034d
	ld   a, [hl+]                                                   ; $034f
	ldh  [rWX], a                                                   ; $0350
	ld   a, [hl+]                                                   ; $0352
	ldh  [rWY], a                                                   ; $0353
	ld   a, [hl+]                                                   ; $0355
	ldh  [rLYC], a                                                  ; $0356
	ld   a, [hl+]                                                   ; $0358
	ldh  [rSTAT], a                                                 ; $0359

; Process soft-reset
	ld   a, [wInGameButtonsHeld]                                    ; $035b
	cp   PADF_START|PADF_SELECT|PADF_B|PADF_A                       ; $035e
	jr   nz, .afterResetCheck                                       ; $0360

	ld   a, [wInGameButtonsPressed]                                 ; $0362
	and  PADF_START|PADF_SELECT|PADF_B|PADF_A                       ; $0365
	jr   z, .afterResetCheck                                        ; $0367

	ld   hl, ToReset                                                ; $0369
	push hl                                                         ; $036c
	reti                                                            ; $036d

.afterResetCheck:
	ld   hl, wFrameCounter                                          ; $036e
	inc  [hl]                                                       ; $0371

; Set flag so we don't perform the main vblank funcs unless requested
	ld   a, $01                                                     ; $0372
	ld   [wSkipMainVBlankFuncs], a                                  ; $0374
	
; Disable vblank interrupt so we don't call it until palettes are updated
	ld   hl, rIE                                                    ; $0377
	res  0, [hl]                                                    ; $037a
	ei                                                              ; $037c
	call UpdateBGandOBJPaletteColsBasedOnRanges                     ; $037d

; Wait until in hblank
	ld   b, STATF_LCD                                               ; $0380
	ld   hl, rSTAT                                                  ; $0382
:	ld   a, b                                                       ; $0385
	and  [hl]                                                       ; $0386
	jr   nz, :-                                                     ; $0387

; Now re-update IE
	ld   a, [wIE]                                                   ; $0389
	ldh  [rIE], a                                                   ; $038c

; Skip update sound logic if sound update is disabled
	ld   a, [wSoundUpdateEnabled]                                   ; $038e
	or   a                                                          ; $0391
	jr   z, .done                                                   ; $0392

; Skip updating sound if it is already updating
	ld   hl, wSoundIsUpdating                                       ; $0394
	ld   a, [hl]                                                    ; $0397
	or   a                                                          ; $0398
	jr   nz, .done                                                  ; $0399

; Set flag to $ff (is updating), and update sound, then clear flag after
	dec  [hl]                                                       ; $039b
	call UpdateSound                                                ; $039c
	
	xor  a                                                          ; $039f
	ld   [wSoundIsUpdating], a                                      ; $03a0

.done:
	pop  hl                                                         ; $03a3
	pop  de                                                         ; $03a4
	pop  bc                                                         ; $03a5
	pop  af                                                         ; $03a6
	reti                                                            ; $03a7


Stub_03a8:
	ret                                                             ; $03a8


PollInput::
	ld   a, $20                                                     ; $03a9
	ldh  [rP1], a                                                   ; $03ab
	ldh  a, [rP1]                                                   ; $03ad
	ldh  a, [rP1]                                                   ; $03af
	and  $0f                                                        ; $03b1
	swap a                                                          ; $03b3
	ld   b, a                                                       ; $03b5
	ld   a, $30                                                     ; $03b6
	ldh  [rP1], a                                                   ; $03b8
	ld   a, $10                                                     ; $03ba
	ldh  [rP1], a                                                   ; $03bc
	ldh  a, [rP1]                                                   ; $03be
	ldh  a, [rP1]                                                   ; $03c0
	ldh  a, [rP1]                                                   ; $03c2
	ldh  a, [rP1]                                                   ; $03c4
	ldh  a, [rP1]                                                   ; $03c6
	ldh  a, [rP1]                                                   ; $03c8
	and  $0f                                                        ; $03ca

; Store buttons held
	or   b                                                          ; $03cc
	cpl                                                             ; $03cd
	ld   [wCurrButtonsHeld], a                                      ; $03ce
	ld   a, $30                                                     ; $03d1
	ldh  [rP1], a                                                   ; $03d3

; Get buttons pressed
	ld   a, [wCurrButtonsHeld]                                      ; $03d5
	ld   hl, wPrevButtonsHeld                                       ; $03d8
	xor  [hl]                                                       ; $03db
	ld   hl, wCurrButtonsHeld                                       ; $03dc
	and  [hl]                                                       ; $03df

; Store buttons pressed
	ld   [wCurrButtonsPressed], a                                   ; $03e0
	ld   [wStickyButtonsPressed], a                                 ; $03e3

; Jump if no buttons held
	ld   a, [wCurrButtonsHeld]                                      ; $03e6
	and  a                                                          ; $03e9
	jr   z, .resetSticky                                            ; $03ea

; Jump if prev buttons held != curr buttons held
	ld   hl, wPrevButtonsHeld                                       ; $03ec
	cp   [hl]                                                       ; $03ef
	jr   nz, .resetSticky                                           ; $03f0

; Dec sticky counter and jump if not 0
	ld   hl, wCurrStickyCounter                                     ; $03f2
	dec  [hl]                                                       ; $03f5
	jr   nz, .updatePrevs                                           ; $03f6

; When 0, update sticky counter, and set as if pressed
	ld   a, [wBaseRepeatedStickyCounter]                            ; $03f8
	ld   [wCurrStickyCounter], a                                    ; $03fb
	ld   a, [wCurrButtonsHeld]                                      ; $03fe
	ld   [wStickyButtonsPressed], a                                 ; $0401
	jr   .updatePrevs                                               ; $0404

.resetSticky:
	ld   a, [wBaseInitialStickyCounter]                             ; $0406
	ld   [wCurrStickyCounter], a                                    ; $0409

.updatePrevs:
	ld   a, [wCurrButtonsHeld]                                      ; $040c
	ld   [wPrevButtonsHeld], a                                      ; $040f

; End if we don't want to process in-game input vars
	ld   a, [wInGameInputsEnabled]                                  ; $0412
	or   a                                                          ; $0415
	jr   z, .done                                                   ; $0416

	ld   a, [wCurrButtonsHeld]                                      ; $0418
	ld   [wInGameButtonsHeld], a                                    ; $041b
	
	ld   a, [wCurrButtonsPressed]                                   ; $041e
	ld   [wInGameButtonsPressed], a                                 ; $0421
	
	ld   a, [wStickyButtonsPressed]                                 ; $0424
	ld   [wInGameStickyButtonsPressed], a                           ; $0427

.done:
	ret                                                             ; $042a


LCDCInterruptHandler:
	push af                                                         ; $042b
	push bc                                                         ; $042c
	push de                                                         ; $042d
	push hl                                                         ; $042e

; Int idx is a quadruple idx into the table below
	ld   a, [wLCDCIntFuncIdx]                                       ; $042f
	ld   h, $00                                                     ; $0432
	ld   l, a                                                       ; $0434
	add  hl, hl                                                     ; $0435
	add  hl, hl                                                     ; $0436
	ld   bc, .lcdcFuncs                                             ; $0437
	add  hl, bc                                                     ; $043a

; Preserve rom bank, and set it to the 1st table entry byte
	ld   a, [wRomBank]                                              ; $043b
	push af                                                         ; $043e

	ld   a, [hl+]                                                   ; $043f
	ld   [wRomBank], a                                              ; $0440
	ld   [rROMB0], a                                                ; $0443

; Word after bank is the LCDC func
	ld   a, [hl+]                                                   ; $0446
	ld   h, [hl]                                                    ; $0447
	ld   l, a                                                       ; $0448
	jp   hl                                                         ; $0449

.return::
; Restore rom bank and regs
	pop  af                                                         ; $044a
	ld   [wRomBank], a                                              ; $044b
	ld   [rROMB0], a                                                ; $044e
	pop  hl                                                         ; $0451
	pop  de                                                         ; $0452
	pop  bc                                                         ; $0453
	pop  af                                                         ; $0454
	reti                                                            ; $0455

macro LCDFunc
	db BANK(\1)
	dw \1
	db $00
endm
.lcdcFuncs:
	LCDFunc .stub
	LCDFunc LCDCFunc01
	LCDFunc LCDCFunc02
	LCDFunc LCDCFunc03
	LCDFunc LCDCFunc04
	LCDFunc LCDCFunc05
	LCDFunc LCDCFunc06
	LCDFunc LCDCFunc07
	LCDFunc LCDCFunc08
	LCDFunc LCDCFunc09
	LCDFunc LCDCFunc0a
	LCDFunc LCDCFunc0b
	LCDFunc LCDCFunc0c
	LCDFunc LCDCFunc0d
	LCDFunc LCDCFunc0e
	LCDFunc LCDCFunc0f
	LCDFunc LCDCFunc10
	LCDFunc LCDCFunc11

.stub:
	jp   .return                                                    ; $049e


TimerInterruptHandler:
	call UpdateSound                                                ; $04a1
	reti                                                            ; $04a4


SerialInterruptHandlerStub:
	reti                                                            ; $04a5


JoypadInterruptHandlerStub:
	reti                                                            ; $04a6


SetAllBGPaletteRangeToUpdate::
	ld   bc, $003f                                                  ; $04a7

; B - starting color idx within $00 (BG) - $3f (OBJ)
; C - ending color idx, with above range
SetBGandOBJPaletteRangesToUpdate::
; If ending color idx is not in the OBJ region ($20+), these are just BG palettes
	bit  5, c                                                       ; $04aa
	jr   z, .setBGcolorRangesToUpdate                               ; $04ac

; Clear the 5th bit of C, jump if bit 5 clear on B (updating BG + OBJ)
	res  5, c                                                       ; $04ae
	bit  5, b                                                       ; $04b0
	jr   z, .setBGandOBJColorRangesToUpdate                         ; $04b2

; Clear bit 5 of B, we now have a range $00 - $3f for OBJ palettes
	res  5, b                                                       ; $04b4
	jr   .setOBJcolorRangesToUpdate                                 ; $04b6

.setBGandOBJColorRangesToUpdate:
; Set BG + OBJ ranges where they connect
	ld   a, $1f                                                     ; $04b8
	ld   [wEndingBGColorToUpdate], a                                ; $04ba
	xor  a                                                          ; $04bd
	ld   [wStartingOBJColorToUpdate], a                             ; $04be

; Starting color to update = min(prev starting color, B)
	ld   a, [wStartingBGColorToUpdate]                              ; $04c1
	cp   b                                                          ; $04c4
	jr   c, :+                                                      ; $04c5

	ld   a, b                                                       ; $04c7
	ld   [wStartingBGColorToUpdate], a                              ; $04c8

; Ending obj color to update = max(prev ending color, C)
:	ld   a, [wEndingOBJColorToUpdate]                               ; $04cb
	cp   c                                                          ; $04ce
	jr   nc, :+                                                     ; $04cf

	ld   a, c                                                       ; $04d1
	ld   [wEndingOBJColorToUpdate], a                               ; $04d2

; If LCD is off, update from ranges already
:	ld   a, [wLCDC]                                                 ; $04d5
	bit  7, a                                                       ; $04d8
	jr   z, UpdateBGandOBJPaletteColsBasedOnRanges                  ; $04da

	ret                                                             ; $04dc

.setBGcolorRangesToUpdate:
; Starting color to update = min(prev starting color, B)
	ld   a, [wStartingBGColorToUpdate]                              ; $04dd
	cp   b                                                          ; $04e0
	jr   c, :+                                                      ; $04e1

	ld   a, b                                                       ; $04e3
	ld   [wStartingBGColorToUpdate], a                              ; $04e4

; Ending color to update = max(prev ending color, C)
:	ld   a, [wEndingBGColorToUpdate]                                ; $04e7
	cp   c                                                          ; $04ea
	jr   nc, :+                                                     ; $04eb

	ld   a, c                                                       ; $04ed
	ld   [wEndingBGColorToUpdate], a                                ; $04ee

; If LCD is off, update from ranges already
:	ld   a, [wLCDC]                                                 ; $04f1
	bit  7, a                                                       ; $04f4
	jr   z, UpdateBGandOBJPaletteColsBasedOnRanges                  ; $04f6

	ret                                                             ; $04f8

.setOBJcolorRangesToUpdate:
; Starting color to update = min(prev starting color, B)
	ld   a, [wStartingOBJColorToUpdate]                             ; $04f9
	cp   b                                                          ; $04fc
	jr   c, :+                                                      ; $04fd

	ld   a, b                                                       ; $04ff
	ld   [wStartingOBJColorToUpdate], a                             ; $0500

; Ending color to update = max(prev ending color, C)
:	ld   a, [wEndingOBJColorToUpdate]                               ; $0503
	cp   c                                                          ; $0506
	jr   nc, :+                                                     ; $0507

	ld   a, c                                                       ; $0509
	ld   [wEndingOBJColorToUpdate], a                               ; $050a

; If LCD is off, update from ranges already
:	ld   a, [wLCDC]                                                 ; $050d
	bit  7, a                                                       ; $0510
	ret  nz                                                         ; $0512

UpdateBGandOBJPaletteColsBasedOnRanges:
; Jump if not updating bg palettes
	ld   a, [wStartingBGColorToUpdate]                              ; $0513
	bit  7, a                                                       ; $0516
	jr   nz, .afterBGpaletteUpdateCheck                             ; $0518

; Color * 2 is idx into palettes to update
	ld   hl, wBGPalettes                                            ; $051a
	ld   b, $00                                                     ; $051d
	ld   c, a                                                       ; $051f
	sla  c                                                          ; $0520
	add  hl, bc                                                     ; $0522
	
	ld   b, a                                                       ; $0523

; Num colors to update = end-start+1 (inclusive of end number)
	ld   a, [wEndingBGColorToUpdate]                                ; $0524
	sub  b                                                          ; $0527
	inc  a                                                          ; $0528
	ld   c, a                                                       ; $0529
	call UpdateBGPaletteColors                                      ; $052a

.afterBGpaletteUpdateCheck:
; Jump if not updating obj palettes
	ld   a, [wStartingOBJColorToUpdate]                             ; $052d
	bit  7, a                                                       ; $0530
	jr   nz, .afterOBJpaletteUpdateCheck                            ; $0532

; Color * 2 is idx into palettes to update
	ld   hl, wOBJPalettes                                           ; $0534
	ld   b, $00                                                     ; $0537
	ld   c, a                                                       ; $0539
	sla  c                                                          ; $053a
	add  hl, bc                                                     ; $053c
	
	ld   b, a                                                       ; $053d

; Num colors to update = end-start+1 (inclusive of end number)
	ld   a, [wEndingOBJColorToUpdate]                               ; $053e
	sub  b                                                          ; $0541
	inc  a                                                          ; $0542
	ld   c, a                                                       ; $0543
	call UpdateOBJPaletteColors                                     ; $0544

.afterOBJpaletteUpdateCheck:
; Clear ending colors so we only accidentally fade 1 color
	xor  a                                                          ; $0547
	ld   [wEndingBGColorToUpdate], a                                ; $0548
	ld   [wEndingOBJColorToUpdate], a                               ; $054b

; Set these vars' bit 7, so no update happens until set again
	dec  a                                                          ; $054e
	ld   [wStartingBGColorToUpdate], a                              ; $054f
	ld   [wStartingOBJColorToUpdate], a                             ; $0552
	ret                                                             ; $0555


; B - starting color
; C - num colors to update
; HL - color data src
UpdateBGPaletteColors:
; Double idx to get byte offset in $40 palette bytes
	ld   a, b                                                       ; $0556
	sla  a                                                          ; $0557
	and  $3e                                                        ; $0559

; Set auto-increment
	set  7, a                                                       ; $055b
	ldh  [rBCPS], a                                                 ; $055d

; B = num colors to update
	ld   b, c                                                       ; $055f
	ld   c, LOW(rBCPD)                                              ; $0560

; Jump if LCD is on
	ld   a, [wLCDC]                                                 ; $0562
	bit  7, a                                                       ; $0565
	jr   nz, .lcdOn                                                 ; $0567

; Else update all colors
:	ld   a, [hl+]                                                   ; $0569
	ldh  [c], a                                                     ; $056a
	ld   a, [hl+]                                                   ; $056b
	ldh  [c], a                                                     ; $056c
	dec  b                                                          ; $056d
	jr   nz, :-                                                     ; $056e

	ret                                                             ; $0570

.lcdOn:
; Wait until in hblank
:	ldh  a, [rSTAT]                                                 ; $0571
	and  STATF_LCD                                                  ; $0573
	jr   z, :-                                                      ; $0575

; Jump if 4+ colors to update
	ld   a, b                                                       ; $0577
	cp   $04                                                        ; $0578
	jr   nc, .copy4colors                                           ; $057a

; Jump if 2 or 3 colors to update
	cp   $02                                                        ; $057c
	jr   nc, .copy2colors                                           ; $057e

; 1 color to update, wait until vram access is safe
:	ldh  a, [rSTAT]                                                 ; $0580
	bit  1, a                                                       ; $0582
	jr   nz, :-                                                     ; $0584

; Then update the 1 color
	ld   a, [hl+]                                                   ; $0586
	ldh  [c], a                                                     ; $0587
	ld   a, [hl+]                                                   ; $0588
	ldh  [c], a                                                     ; $0589
	dec  b                                                          ; $058a
	jr   nz, .lcdOn                                                 ; $058b

	ret                                                             ; $058d

.copy2colors:
; Wait until vram access is safe
:	ldh  a, [rSTAT]                                                 ; $058e
	bit  1, a                                                       ; $0590
	jr   nz, :-                                                     ; $0592

; Copy 2 colors
	ld   a, [hl+]                                                   ; $0594
	ldh  [c], a                                                     ; $0595
	ld   a, [hl+]                                                   ; $0596
	ldh  [c], a                                                     ; $0597
	ld   a, [hl+]                                                   ; $0598
	ldh  [c], a                                                     ; $0599
	ld   a, [hl+]                                                   ; $059a
	ldh  [c], a                                                     ; $059b
	dec  b                                                          ; $059c
	dec  b                                                          ; $059d
	jr   nz, .lcdOn                                                 ; $059e

	ret                                                             ; $05a0

.copy4colors:
; Wait until vram access is safe
:	ldh  a, [rSTAT]                                                 ; $05a1
	bit  1, a                                                       ; $05a3
	jr   nz, :-                                                     ; $05a5

; Copy 4 colors
	ld   a, [hl+]                                                   ; $05a7
	ldh  [c], a                                                     ; $05a8
	ld   a, [hl+]                                                   ; $05a9
	ldh  [c], a                                                     ; $05aa
	ld   a, [hl+]                                                   ; $05ab
	ldh  [c], a                                                     ; $05ac
	ld   a, [hl+]                                                   ; $05ad
	ldh  [c], a                                                     ; $05ae
	ld   a, [hl+]                                                   ; $05af
	ldh  [c], a                                                     ; $05b0
	ld   a, [hl+]                                                   ; $05b1
	ldh  [c], a                                                     ; $05b2
	ld   a, [hl+]                                                   ; $05b3
	ldh  [c], a                                                     ; $05b4
	ld   a, [hl+]                                                   ; $05b5
	ldh  [c], a                                                     ; $05b6
	dec  b                                                          ; $05b7
	dec  b                                                          ; $05b8
	dec  b                                                          ; $05b9
	dec  b                                                          ; $05ba
	jr   nz, .lcdOn                                                 ; $05bb

	ret                                                             ; $05bd


; B - starting color
; C - num colors to update
; HL - color data src
UpdateOBJPaletteColors:
; Double idx to get byte offset in $40 palette bytes
	ld   a, b                                                       ; $05be
	sla  a                                                          ; $05bf
	and  $3e                                                        ; $05c1

; Set auto-increment
	set  7, a                                                       ; $05c3
	ldh  [rOCPS], a                                                 ; $05c5

; B = num colors to update
	ld   b, c                                                       ; $05c7
	ld   c, LOW(rOCPD)                                              ; $05c8

; Jump if LCD is on
	ld   a, [wLCDC]                                                 ; $05ca
	bit  7, a                                                       ; $05cd
	jr   nz, .lcdOn                                                 ; $05cf

; Else update all colors
:	ld   a, [hl+]                                                   ; $05d1
	ldh  [c], a                                                     ; $05d2
	ld   a, [hl+]                                                   ; $05d3
	ldh  [c], a                                                     ; $05d4
	dec  b                                                          ; $05d5
	jr   nz, :-                                                     ; $05d6

	ret                                                             ; $05d8

.lcdOn:
; Wait until in hblank
:	ldh  a, [rSTAT]                                                 ; $05d9
	and  STATF_LCD                                                  ; $05db
	jr   z, :-                                                      ; $05dd

; Jump if 4+ colors to update
	ld   a, b                                                       ; $05df
	cp   $04                                                        ; $05e0
	jr   nc, .copy4colors                                           ; $05e2

; Jump if 2 or 3 colors to update
	cp   $02                                                        ; $05e4
	jr   nc, .copy2colors                                           ; $05e6

; 1 color to update, wait until vram access is safe
:	ldh  a, [rSTAT]                                                 ; $05e8
	bit  1, a                                                       ; $05ea
	jr   nz, :-                                                     ; $05ec

; Then update the 1 color
	ld   a, [hl+]                                                   ; $05ee
	ldh  [c], a                                                     ; $05ef
	ld   a, [hl+]                                                   ; $05f0
	ldh  [c], a                                                     ; $05f1
	dec  b                                                          ; $05f2
	jr   nz, .lcdOn                                                 ; $05f3

	ret                                                             ; $05f5

.copy2colors:
; Wait until vram access is safe
:	ldh  a, [rSTAT]                                                 ; $05f6
	bit  1, a                                                       ; $05f8
	jr   nz, :-                                                     ; $05fa

; Copy 2 colors
	ld   a, [hl+]                                                   ; $05fc
	ldh  [c], a                                                     ; $05fd
	ld   a, [hl+]                                                   ; $05fe
	ldh  [c], a                                                     ; $05ff
	ld   a, [hl+]                                                   ; $0600
	ldh  [c], a                                                     ; $0601
	ld   a, [hl+]                                                   ; $0602
	ldh  [c], a                                                     ; $0603
	dec  b                                                          ; $0604
	dec  b                                                          ; $0605
	jr   nz, .lcdOn                                                 ; $0606

	ret                                                             ; $0608

.copy4colors:
; Wait until vram access is safe
:	ldh  a, [rSTAT]                                                 ; $0609
	bit  1, a                                                       ; $060b
	jr   nz, :-                                                     ; $060d

; Copy 4 colors
	ld   a, [hl+]                                                   ; $060f
	ldh  [c], a                                                     ; $0610
	ld   a, [hl+]                                                   ; $0611
	ldh  [c], a                                                     ; $0612
	ld   a, [hl+]                                                   ; $0613
	ldh  [c], a                                                     ; $0614
	ld   a, [hl+]                                                   ; $0615
	ldh  [c], a                                                     ; $0616
	ld   a, [hl+]                                                   ; $0617
	ldh  [c], a                                                     ; $0618
	ld   a, [hl+]                                                   ; $0619
	ldh  [c], a                                                     ; $061a
	ld   a, [hl+]                                                   ; $061b
	ldh  [c], a                                                     ; $061c
	ld   a, [hl+]                                                   ; $061d
	ldh  [c], a                                                     ; $061e
	dec  b                                                          ; $061f
	dec  b                                                          ; $0620
	dec  b                                                          ; $0621
	dec  b                                                          ; $0622
	jr   nz, .lcdOn                                                 ; $0623

	ret                                                             ; $0625


;
	ld   b, $00                                      ; $0626: $06 $00
	ld   c, $08                                      ; $0628: $0e $08
	jr   jr_000_062c                                 ; $062a: $18 $00

jr_000_062c:
	ld   [wGenericFarBank], a                                  ; $062c: $ea $9c $c2
	ld   a, [wRomBank]                                  ; $062f: $fa $92 $c2
	push af                                          ; $0632: $f5
	ld   a, [wGenericFarBank]                                  ; $0633: $fa $9c $c2
	ld   [wRomBank], a                                  ; $0636: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0639: $ea $00 $20
	ld   a, b                                        ; $063c: $78
	sla  a                                           ; $063d: $cb $27
	sla  a                                           ; $063f: $cb $27
	sla  a                                           ; $0641: $cb $27
	and  $38                                         ; $0643: $e6 $38
	set  7, a                                        ; $0645: $cb $ff
	ldh  [rBCPS], a                                  ; $0647: $e0 $68
	ld   b, c                                        ; $0649: $41
	ld   c, $69                                      ; $064a: $0e $69

jr_000_064c:
	ld   a, [wLCDC]                                  ; $064c: $fa $03 $c2
	bit  7, a                                        ; $064f: $cb $7f
	jr   z, jr_000_065f                              ; $0651: $28 $0c

jr_000_0653:
	ldh  a, [rSTAT]                                  ; $0653: $f0 $41
	and  STATF_LCD                                         ; $0655: $e6 $03
	jr   z, jr_000_0653                              ; $0657: $28 $fa

jr_000_0659:
	ldh  a, [rSTAT]                                  ; $0659: $f0 $41
	bit  1, a                                        ; $065b: $cb $4f
	jr   nz, jr_000_0659                             ; $065d: $20 $fa

jr_000_065f:
	ld   a, [hl+]                                    ; $065f: $2a
	ldh  [c], a                                      ; $0660: $e2
	ld   a, [hl+]                                    ; $0661: $2a
	ldh  [c], a                                      ; $0662: $e2
	ld   a, [hl+]                                    ; $0663: $2a
	ldh  [c], a                                      ; $0664: $e2
	ld   a, [hl+]                                    ; $0665: $2a
	ldh  [c], a                                      ; $0666: $e2
	ld   a, [hl+]                                    ; $0667: $2a
	ldh  [c], a                                      ; $0668: $e2
	ld   a, [hl+]                                    ; $0669: $2a
	ldh  [c], a                                      ; $066a: $e2
	ld   a, [hl+]                                    ; $066b: $2a
	ldh  [c], a                                      ; $066c: $e2
	ld   a, [hl+]                                    ; $066d: $2a
	ldh  [c], a                                      ; $066e: $e2
	dec  b                                           ; $066f: $05
	jr   nz, jr_000_064c                             ; $0670: $20 $da

	pop  af                                          ; $0672: $f1
	ld   [wRomBank], a                                  ; $0673: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0676: $ea $00 $20
	ret                                              ; $0679: $c9


	ld   b, $00                                      ; $067a: $06 $00
	ld   c, $08                                      ; $067c: $0e $08
	jr   jr_000_0680                                 ; $067e: $18 $00

jr_000_0680:
	ld   [wGenericFarBank], a                                  ; $0680: $ea $9c $c2
	ld   a, [wRomBank]                                  ; $0683: $fa $92 $c2
	push af                                          ; $0686: $f5
	ld   a, [wGenericFarBank]                                  ; $0687: $fa $9c $c2
	ld   [wRomBank], a                                  ; $068a: $ea $92 $c2
	ld   [rROMB0], a                                  ; $068d: $ea $00 $20
	ld   a, b                                        ; $0690: $78
	sla  a                                           ; $0691: $cb $27
	sla  a                                           ; $0693: $cb $27
	sla  a                                           ; $0695: $cb $27
	and  $38                                         ; $0697: $e6 $38
	set  7, a                                        ; $0699: $cb $ff
	ldh  [rOCPS], a                                  ; $069b: $e0 $6a
	ld   b, c                                        ; $069d: $41
	ld   c, $6b                                      ; $069e: $0e $6b

jr_000_06a0:
	ld   a, [wLCDC]                                  ; $06a0: $fa $03 $c2
	bit  7, a                                        ; $06a3: $cb $7f
	jr   z, jr_000_06b3                              ; $06a5: $28 $0c

jr_000_06a7:
	ldh  a, [rSTAT]                                  ; $06a7: $f0 $41
	and  STATF_LCD                                         ; $06a9: $e6 $03
	jr   z, jr_000_06a7                              ; $06ab: $28 $fa

jr_000_06ad:
	ldh  a, [rSTAT]                                  ; $06ad: $f0 $41
	bit  1, a                                        ; $06af: $cb $4f
	jr   nz, jr_000_06ad                             ; $06b1: $20 $fa

jr_000_06b3:
	ld   a, [hl+]                                    ; $06b3: $2a
	ldh  [c], a                                      ; $06b4: $e2
	ld   a, [hl+]                                    ; $06b5: $2a
	ldh  [c], a                                      ; $06b6: $e2
	ld   a, [hl+]                                    ; $06b7: $2a
	ldh  [c], a                                      ; $06b8: $e2
	ld   a, [hl+]                                    ; $06b9: $2a
	ldh  [c], a                                      ; $06ba: $e2
	ld   a, [hl+]                                    ; $06bb: $2a
	ldh  [c], a                                      ; $06bc: $e2
	ld   a, [hl+]                                    ; $06bd: $2a
	ldh  [c], a                                      ; $06be: $e2
	ld   a, [hl+]                                    ; $06bf: $2a
	ldh  [c], a                                      ; $06c0: $e2
	ld   a, [hl+]                                    ; $06c1: $2a
	ldh  [c], a                                      ; $06c2: $e2
	dec  b                                           ; $06c3: $05
	jr   nz, jr_000_06a0                             ; $06c4: $20 $da

	pop  af                                          ; $06c6: $f1
	ld   [wRomBank], a                                  ; $06c7: $ea $92 $c2
	ld   [rROMB0], a                                  ; $06ca: $ea $00 $20
	ret                                              ; $06cd: $c9


	ld   [wGenericFarBank], a                                  ; $06ce: $ea $9c $c2
	ld   a, [wRomBank]                                  ; $06d1: $fa $92 $c2
	push af                                          ; $06d4: $f5
	ld   a, [wGenericFarBank]                                  ; $06d5: $fa $9c $c2
	ld   [wRomBank], a                                  ; $06d8: $ea $92 $c2
	ld   [rROMB0], a                                  ; $06db: $ea $00 $20
	ld   a, b                                        ; $06de: $78
	sla  a                                           ; $06df: $cb $27
	and  $3e                                         ; $06e1: $e6 $3e
	set  7, a                                        ; $06e3: $cb $ff
	ldh  [rBCPS], a                                  ; $06e5: $e0 $68

jr_000_06e7:
	ld   a, [wLCDC]                                  ; $06e7: $fa $03 $c2
	bit  7, a                                        ; $06ea: $cb $7f
	jr   z, jr_000_06fa                              ; $06ec: $28 $0c

jr_000_06ee:
	ldh  a, [rSTAT]                                  ; $06ee: $f0 $41
	and  STATF_LCD                                        ; $06f0: $e6 $03
	jr   z, jr_000_06ee                              ; $06f2: $28 $fa

jr_000_06f4:
	ldh  a, [rSTAT]                                  ; $06f4: $f0 $41
	bit  1, a                                        ; $06f6: $cb $4f
	jr   nz, jr_000_06f4                             ; $06f8: $20 $fa

jr_000_06fa:
	ld   a, [hl+]                                    ; $06fa: $2a
	ldh  [rBCPD], a                                  ; $06fb: $e0 $69
	ld   a, [hl+]                                    ; $06fd: $2a
	ldh  [rBCPD], a                                  ; $06fe: $e0 $69
	dec  c                                           ; $0700: $0d
	jr   nz, jr_000_06e7                             ; $0701: $20 $e4

	pop  af                                          ; $0703: $f1
	ld   [wRomBank], a                                  ; $0704: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0707: $ea $00 $20
	ret                                              ; $070a: $c9


	ld   [wGenericFarBank], a                                  ; $070b: $ea $9c $c2
	ld   a, [wRomBank]                                  ; $070e: $fa $92 $c2
	push af                                          ; $0711: $f5
	ld   a, [wGenericFarBank]                                  ; $0712: $fa $9c $c2
	ld   [wRomBank], a                                  ; $0715: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0718: $ea $00 $20
	ld   a, b                                        ; $071b: $78
	sla  a                                           ; $071c: $cb $27
	and  $3e                                         ; $071e: $e6 $3e
	set  7, a                                        ; $0720: $cb $ff
	ldh  [rOCPS], a                                  ; $0722: $e0 $6a

jr_000_0724:
	ld   a, [wLCDC]                                  ; $0724: $fa $03 $c2
	bit  7, a                                        ; $0727: $cb $7f
	jr   z, jr_000_0737                              ; $0729: $28 $0c

jr_000_072b:
	ldh  a, [rSTAT]                                  ; $072b: $f0 $41
	and  STATF_LCD                                         ; $072d: $e6 $03
	jr   z, jr_000_072b                              ; $072f: $28 $fa

jr_000_0731:
	ldh  a, [rSTAT]                                  ; $0731: $f0 $41
	bit  1, a                                        ; $0733: $cb $4f
	jr   nz, jr_000_0731                             ; $0735: $20 $fa

jr_000_0737:
	ld   a, [hl+]                                    ; $0737: $2a
	ldh  [rOCPD], a                                  ; $0738: $e0 $6b
	ld   a, [hl+]                                    ; $073a: $2a
	ldh  [rOCPD], a                                  ; $073b: $e0 $6b
	dec  c                                           ; $073d: $0d
	jr   nz, jr_000_0724                             ; $073e: $20 $e4

	pop  af                                          ; $0740: $f1
	ld   [wRomBank], a                                  ; $0741: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0744: $ea $00 $20
	ret                                              ; $0747: $c9


; A - how many times to divide fade by 2
; B - src bank for color comp vals
; C - src bank for color fade vals
; DE - src addr for the fade values to fade to
; HL - src addr for the color comp vals to load
FarLoadPaletteValsFadeToValsAndSetFadeSpeed::
; Preserve fade speed val
	push af                                                         ; $0748

; Preserve src of the base color vals
	push hl                                                         ; $0749

; Save the banks to far load from
	ld   a, c                                                       ; $074a
	ld   [wPaletteCompFadeValsBank], a                              ; $074b
	ld   a, b                                                       ; $074e
	ld   [wPaletteCompColorValsBank], a                             ; $074f

; For far loads, and ??? after, get starting color in BC
	ld   a, [wStartingColorIdxToLoadCompDataFor]                    ; $0752
	ld   c, a                                                       ; $0755
	ld   b, $00                                                     ; $0756

; DE (src 2-byte cols) is offsetted by 2 * starting color idx
; HL (dest 3- byte comps) is offsetted by 3 * starting color idx
	push bc                                                         ; $0758
	ld   h, d                                                       ; $0759
	ld   l, e                                                       ; $075a
	add  hl, bc                                                     ; $075b
	add  hl, bc                                                     ; $075c
	ld   d, h                                                       ; $075d
	ld   e, l                                                       ; $075e
	ld   hl, wBGandOBJCompFadeValues                                ; $075f
	add  hl, bc                                                     ; $0762
	add  hl, bc                                                     ; $0763
	add  hl, bc                                                     ; $0764
	ld   a, [wNumPaletteColorsToLoadCompDataFor]                    ; $0765
	ld   c, a                                                       ; $0768
	ld   a, [wPaletteCompFadeValsBank]                              ; $0769
	call FarLoadBGPalettesIntoColorCompsStruct                      ; $076c
	pop  bc                                                         ; $076f

; Repeat above for loading color comps
	pop  hl                                                         ; $0770

	push bc                                                         ; $0771
	add  hl, bc                                                     ; $0772
	add  hl, bc                                                     ; $0773
	ld   d, h                                                       ; $0774
	ld   e, l                                                       ; $0775
	ld   hl, wBGandOBJColorComponents                               ; $0776
	add  hl, bc                                                     ; $0779
	add  hl, bc                                                     ; $077a
	add  hl, bc                                                     ; $077b
	ld   a, [wNumPaletteColorsToLoadCompDataFor]                    ; $077c
	ld   c, a                                                       ; $077f
	ld   a, [wPaletteCompColorValsBank]                             ; $0780
	call FarLoadBGPalettesIntoColorCompsStruct                      ; $0783
	pop  bc                                                         ; $0786

; DE = starting color in fade comp vals
	ld   hl, wBGandOBJCompFadeValues                                ; $0787
	add  hl, bc                                                     ; $078a
	add  hl, bc                                                     ; $078b
	add  hl, bc                                                     ; $078c
	ld   d, h                                                       ; $078d
	ld   e, l                                                       ; $078e

; HL = starting color in color comp vals
	ld   hl, wBGandOBJColorComponents                               ; $078f
	add  hl, bc                                                     ; $0792
	add  hl, bc                                                     ; $0793
	add  hl, bc                                                     ; $0794

; B = 3 * num colors
	ld   a, [wNumPaletteColorsToLoadCompDataFor]                    ; $0795
	ld   b, a                                                       ; $0798
	add  b                                                          ; $0799
	add  b                                                          ; $079a
	ld   b, a                                                       ; $079b

; Branch based on how slow we want to fade
	pop  af                                                         ; $079c

	dec  a                                                          ; $079d
	jr   z, .halfFade                                               ; $079e

	dec  a                                                          ; $07a0
	jr   z, .quarterFade                                            ; $07a1

	dec  a                                                          ; $07a3
	jr   z, .eigthFade                                              ; $07a4

	dec  a                                                          ; $07a6
	jr   z, .sixteenthFade                                          ; $07a7

; Fade values -= color vals, ie orig fade values were the target vals to fade to
:	ld   a, [de]                                                    ; $07a9
	sub  [hl]                                                       ; $07aa
	ld   [de], a                                                    ; $07ab
	inc  hl                                                         ; $07ac
	inc  de                                                         ; $07ad
	dec  b                                                          ; $07ae
	jr   nz, :-                                                     ; $07af

	ret                                                             ; $07b1

.halfFade:
; Similar to above, but dividing fade by 2, setting bit 0, in case fade == 0
	ld   a, [de]                                                    ; $07b2
	sub  [hl]                                                       ; $07b3
	jr   z, :+                                                      ; $07b4

	sra  a                                                          ; $07b6
	set  0, a                                                       ; $07b8

:	ld   [de], a                                                    ; $07ba
	inc  hl                                                         ; $07bb
	inc  de                                                         ; $07bc
	dec  b                                                          ; $07bd
	jr   nz, .halfFade                                              ; $07be

	ret                                                             ; $07c0

; The rest are additional shifts
.quarterFade:
	ld   a, [de]                                                    ; $07c1
	sub  [hl]                                                       ; $07c2
	jr   z, :+                                                      ; $07c3

	sra  a                                                          ; $07c5
	sra  a                                                          ; $07c7
	set  0, a                                                       ; $07c9

:	ld   [de], a                                                    ; $07cb
	inc  hl                                                         ; $07cc
	inc  de                                                         ; $07cd
	dec  b                                                          ; $07ce
	jr   nz, .quarterFade                                           ; $07cf

	ret                                                             ; $07d1

.eigthFade:
	ld   a, [de]                                                    ; $07d2
	sub  [hl]                                                       ; $07d3
	jr   z, :+                                                      ; $07d4

	sra  a                                                          ; $07d6
	sra  a                                                          ; $07d8
	sra  a                                                          ; $07da
	set  0, a                                                       ; $07dc

:	ld   [de], a                                                    ; $07de
	inc  hl                                                         ; $07df
	inc  de                                                         ; $07e0
	dec  b                                                          ; $07e1
	jr   nz, .eigthFade                                             ; $07e2

	ret                                                             ; $07e4

.sixteenthFade:
	ld   a, [de]                                                    ; $07e5
	sub  [hl]                                                       ; $07e6
	jr   z, :+                                                      ; $07e7

	sra  a                                                          ; $07e9
	sra  a                                                          ; $07eb
	sra  a                                                          ; $07ed
	sra  a                                                          ; $07ef
	set  0, a                                                       ; $07f1

:	ld   [de], a                                                    ; $07f3
	inc  hl                                                         ; $07f4
	inc  de                                                         ; $07f5
	dec  b                                                          ; $07f6
	jr   nz, .sixteenthFade                                         ; $07f7

	ret                                                             ; $07f9


; A - src bank
; C - num colors
; DE - src addr
; HL - color comp-type struct to load into
; $7c is the normal max color comp value, instead of $1f
FarLoadBGPalettesIntoColorCompsStruct:
; Preserve and set new src bank
	ld   [wGenericFarBank], a                                       ; $07fa
	
	ld   a, [wRomBank]                                              ; $07fd
	push af                                                         ; $0800
	
	ld   a, [wGenericFarBank]                                       ; $0801
	ld   [wRomBank], a                                              ; $0804
	ld   [rROMB0], a                                                ; $0807

.loopColor:
; 1st byte in src *= 4 = red component ($7c)
	ld   a, [de]                                                    ; $080a
	sla  a                                                          ; $080b
	sla  a                                                          ; $080d
	and  $7c                                                        ; $080f
	ld   [hl+], a                                                   ; $0811

; 1st byte again in B, B = %gggr rrrr
	ld   a, [de]                                                    ; $0812
	inc  de                                                         ; $0813
	ld   b, a                                                       ; $0814

; 2nd byte = %0bbb bbgg, rotate until B = %gggg grrr, then shift, mask and store green
	ld   a, [de]                                                    ; $0815
	rra                                                             ; $0816
	rr   b                                                          ; $0817
	rra                                                             ; $0819
	rr   b                                                          ; $081a
	srl  b                                                          ; $081c
	ld   a, b                                                       ; $081e
	and  $7c                                                        ; $081f
	ld   [hl+], a                                                   ; $0821

; 2nd byte has blue in the right place already
	ld   a, [de]                                                    ; $0822
	inc  de                                                         ; $0823
	and  $7c                                                        ; $0824
	ld   [hl+], a                                                   ; $0826

	dec  c                                                          ; $0827
	jr   nz, .loopColor                                             ; $0828

; Restore rom bank
	pop  af                                                         ; $082a
	ld   [wRomBank], a                                              ; $082b
	ld   [rROMB0], a                                                ; $082e
	ret                                                             ; $0831


; B - starting color
; C - num colors
FadePalettesAndSetRangeToUpdate::
	push bc                                                         ; $0832
	call FadeBGandOBJColorComps                                     ; $0833
	pop  bc                                                         ; $0836

	push bc                                                         ; $0837
	call UpdateShadowBGandOBJPalsFromColorComps                     ; $0838
	pop  bc                                                         ; $083b

; End inclusive color idx = start+num-1
	ld   a, b                                                       ; $083c
	add  c                                                          ; $083d
	dec  a                                                          ; $083e
	ld   c, a                                                       ; $083f
	call SetBGandOBJPaletteRangesToUpdate                           ; $0840
	ret                                                             ; $0843


; B - starting color
; C - num colors
FadeBGandOBJColorComps:
; A = num colors * 3
	ld   a, c                                                       ; $0844
	add  a                                                          ; $0845
	add  c                                                          ; $0846

; Starting color = triple idx into the curr fade values, stored in de
	ld   c, b                                                       ; $0847
	ld   b, $00                                                     ; $0848
	ld   hl, wBGandOBJCompFadeValues                                ; $084a
	add  hl, bc                                                     ; $084d
	add  hl, bc                                                     ; $084e
	add  hl, bc                                                     ; $084f
	ld   d, h                                                       ; $0850
	ld   e, l                                                       ; $0851

; Starting color = triple idx into current bg color comps
	ld   hl, wBGandOBJColorComponents                               ; $0852
	add  hl, bc                                                     ; $0855
	add  hl, bc                                                     ; $0856
	add  hl, bc                                                     ; $0857

; C = num colors * 3 color comps each
	ld   c, a                                                       ; $0858

.loopComp:
; If value to add is negative, jump
	ld   a, [de]                                                    ; $0859
	inc  de                                                         ; $085a
	bit  7, a                                                       ; $085b
	jr   nz, .subToBlack                                            ; $085d

; Add to white, jump if we don't loop to negative
	add  [hl]                                                       ; $085f
	bit  7, a                                                       ; $0860
	jr   z, .toLoopComp                                             ; $0862

; Else set the max value of $7c
	ld   a, $7c                                                     ; $0864
	jr   .toLoopComp                                                ; $0866

.subToBlack:
; Add negative value, and jump if we don't loop to negative
	add  [hl]                                                       ; $0868
	bit  7, a                                                       ; $0869
	jr   z, .toLoopComp                                             ; $086b

; Else set minimum color value of 0
	xor  a                                                          ; $086d

.toLoopComp:
	ld   [hl+], a                                                   ; $086e
	dec  c                                                          ; $086f
	jr   nz, .loopComp                                              ; $0870

	ret                                                             ; $0872


; B - starting color
; C - num colors
UpdateShadowBGandOBJPalsFromColorComps:
	ld   a, c                                                       ; $0873

; B = double idx into bg+obj palettes, stored in DE
	ld   c, b                                                       ; $0874
	ld   b, $00                                                     ; $0875
	ld   hl, wBGandOBJPalettes                                      ; $0877
	add  hl, bc                                                     ; $087a
	add  hl, bc                                                     ; $087b
	ld   d, h                                                       ; $087c
	ld   e, l                                                       ; $087d

; Orig B = triple idx into rgb components
	ld   hl, wBGandOBJColorComponents                               ; $087e
	add  hl, bc                                                     ; $0881
	add  hl, bc                                                     ; $0882
	add  hl, bc                                                     ; $0883
	ld   c, a                                                       ; $0884

.loopColor:
; 2 bytes into a (red component), b (green component)
	ld   a, [hl+]                                                   ; $0885
	ld   b, [hl]                                                    ; $0886
	inc  hl                                                         ; $0887

; Red = %1111 1000, green = %0001 1111
	sla  a                                                          ; $0888
	srl  b                                                          ; $088a
	srl  b                                                          ; $088c

; Green/red >>= 3, store in low byte of bg palette color
	srl  b                                                          ; $088e
	rra                                                             ; $0890
	srl  b                                                          ; $0891
	rra                                                             ; $0893
	srl  b                                                          ; $0894
	rra                                                             ; $0896
	ld   [de], a                                                    ; $0897
	inc  de                                                         ; $0898

; 3rd byte = blue component, combine with upper 2 bits of green comp
	ld   a, [hl+]                                                   ; $0899
	and  $7c                                                        ; $089a
	or   b                                                          ; $089c
	ld   [de], a                                                    ; $089d
	inc  de                                                         ; $089e

; To next color
	dec  c                                                          ; $089f
	jr   nz, .loopColor                                             ; $08a0

	ret                                                             ; $08a2


;
	ld   [wGenericFarBank], a                                  ; $08a3: $ea $9c $c2
	ld   a, [wWramBank]                                  ; $08a6: $fa $93 $c2
	push af                                          ; $08a9: $f5
	ld   a, [wGenericFarBank]                                  ; $08aa: $fa $9c $c2
	ld   [wWramBank], a                                  ; $08ad: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $08b0: $e0 $70
	ld   c, $40                                      ; $08b2: $0e $40
	ld   b, $ff                                      ; $08b4: $06 $ff
	ld   a, $7f                                      ; $08b6: $3e $7f

jr_000_08b8:
	ld   [hl], b                                     ; $08b8: $70
	inc  hl                                          ; $08b9: $23
	ld   [hl+], a                                    ; $08ba: $22
	dec  c                                           ; $08bb: $0d
	jr   nz, jr_000_08b8                             ; $08bc: $20 $fa

	pop  af                                          ; $08be: $f1
	ld   [wWramBank], a                                  ; $08bf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $08c2: $e0 $70
	ret                                              ; $08c4: $c9


	ld   [wGenericFarBank], a                                  ; $08c5: $ea $9c $c2
	ld   a, [wWramBank]                                  ; $08c8: $fa $93 $c2
	push af                                          ; $08cb: $f5
	ld   a, [wGenericFarBank]                                  ; $08cc: $fa $9c $c2
	ld   [wWramBank], a                                  ; $08cf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $08d2: $e0 $70
	xor  a                                           ; $08d4: $af
	ld   c, $40                                      ; $08d5: $0e $40

jr_000_08d7:
	ld   [hl+], a                                    ; $08d7: $22
	ld   [hl+], a                                    ; $08d8: $22
	dec  c                                           ; $08d9: $0d
	jr   nz, jr_000_08d7                             ; $08da: $20 $fb

	pop  af                                          ; $08dc: $f1
	ld   [wWramBank], a                                  ; $08dd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $08e0: $e0 $70
	ret                                              ; $08e2: $c9


TurnOffLCD::
; Return if lcd off already
	ldh  a, [rLCDC]                                                 ; $08e3
	bit  7, a                                                       ; $08e5
	ret  z                                                          ; $08e7

; Preserve IE, then clear it
	ld   a, [wIE]                                                   ; $08e8
	push af                                                         ; $08eb
	xor  a                                                          ; $08ec
	ld   [wIE], a                                                   ; $08ed
	ldh  [rIE], a                                                   ; $08f0

; Wait until in vblank
:	ldh  a, [rLY]                                                   ; $08f2
	cp   $91                                                        ; $08f4
	jr   nz, :-                                                     ; $08f6

; Turn off LCD
	ld   a, [wLCDC]                                                 ; $08f8
	res  7, a                                                       ; $08fb
	ldh  [rLCDC], a                                                 ; $08fd
	ld   [wLCDC], a                                                 ; $08ff

; Restore IE
	pop  af                                                         ; $0902
	ld   [wIE], a                                                   ; $0903
	ldh  [rIE], a                                                   ; $0906
	ret                                                             ; $0908


TurnOnLCD::
	ld   a, [wLCDC]                                                 ; $0909
	set  7, a                                                       ; $090c
	ldh  [rLCDC], a                                                 ; $090e
	ld   [wLCDC], a                                                 ; $0910
	ret                                                             ; $0913


Wait17500BCcycles:
.loopBC:
; Wait 17500 cycles
	ld   de, 1750                                                   ; $0914
:	nop                                                             ; $0917
	nop                                                             ; $0918
	nop                                                             ; $0919
	dec  de                                                         ; $091a
	ld   a, d                                                       ; $091b
	or   e                                                          ; $091c
	jr   nz, :-                                                     ; $091d

	dec  bc                                                         ; $091f
	ld   a, b                                                       ; $0920
	or   c                                                          ; $0921
	jr   nz, .loopBC                                                ; $0922

	ret                                                             ; $0924


;
	ld   d, $00                                      ; $0925: $16 $00
	ld   e, a                                        ; $0927: $5f
	add  hl, de                                      ; $0928: $19
	add  hl, de                                      ; $0929: $19
	add  hl, de                                      ; $092a: $19
	ld   a, [hl+]                                    ; $092b: $2a
	ld   e, a                                        ; $092c: $5f
	ld   a, [hl+]                                    ; $092d: $2a
	ld   d, a                                        ; $092e: $57
	ld   a, [wRomBank]                                  ; $092f: $fa $92 $c2
	push af                                          ; $0932: $f5
	ld   a, [hl]                                     ; $0933: $7e
	ld   [wRomBank], a                                  ; $0934: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0937: $ea $00 $20
	ld   l, e                                        ; $093a: $6b
	ld   h, d                                        ; $093b: $62
	ld   de, $0941                                   ; $093c: $11 $41 $09
	push de                                          ; $093f: $d5
	jp   hl                                          ; $0940: $e9


	pop  af                                          ; $0941: $f1
	ld   [wRomBank], a                                  ; $0942: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0945: $ea $00 $20
	ret                                              ; $0948: $c9


Func_0949::
	push af                                          ; $0949: $f5
	push af                                          ; $094a: $f5
	push hl                                          ; $094b: $e5

; Replace 1st pushed af
	ld   hl, sp+$04                                  ; $094c: $f8 $04
	ld   a, [$c295]                                  ; $094e: $fa $95 $c2
	ld   [hl+], a                                    ; $0951: $22
	ld   a, [$c296]                                  ; $0952: $fa $96 $c2
	ld   [hl], a                                     ; $0955: $77

; Set rom bank, and ret to the replaced push af
	ld   a, [$c297]                                  ; $0956: $fa $97 $c2
	ld   [wRomBank], a                                  ; $0959: $ea $92 $c2
	ld   [rROMB0], a                                  ; $095c: $ea $00 $20

	pop  hl                                          ; $095f: $e1
	pop  af                                          ; $0960: $f1
	ret                                              ; $0961: $c9


; Stack looks like this before we ret
;           caller hi
; orig SP - caller lo
;           curr rom bank
;           HIGH(.return)
;           LOW(.return)
;           [wFarCallAddr+1]
; curr SP - [wFarCallAddr]
;           A
;           F
;           H
;           L
FarCall::
	add  sp, -$05                                                   ; $0962
	push af                                                         ; $0964
	push hl                                                         ; $0965

; HL points to the curr SP above, store address to jump to
	ld   hl, sp+$04                                                 ; $0966
	ld   a, [wFarCallAddr]                                          ; $0968
	ld   [hl+], a                                                   ; $096b
	ld   a, [wFarCallAddr+1]                                        ; $096c

; Then store the .return below, so the far call func returns to it
	ld   [hl+], a                                                   ; $096f
	ld   a, LOW(.return)                                            ; $0970
	ld   [hl+], a                                                   ; $0972
	ld   a, HIGH(.return)                                           ; $0973
	ld   [hl+], a                                                   ; $0975

; Preserve rom bank for .return, then set the bank for the far call func
	ld   a, [wRomBank]                                              ; $0976
	ld   [hl], a                                                    ; $0979

	ld   a, [wFarCallBank]                                          ; $097a
	ld   [wRomBank], a                                              ; $097d
	ld   [rROMB0], a                                                ; $0980
	
; Return to the far call func
	pop  hl                                                         ; $0983
	pop  af                                                         ; $0984
	ret                                                             ; $0985

; Stack now looks like this after `ld hl, sp+$04`
;           caller hi
;           caller lo
; curr HL - curr rom bank
;           A
;           F
;           H
; curr SP - L
.return:
	push af                                                         ; $0986
	push hl                                                         ; $0987

; HL now points to the stored rom bank, restore it
	ld   hl, sp+$04                                                 ; $0988
	ld   a, [hl]                                                    ; $098a
	ld   [wRomBank], a                                              ; $098b
	ld   [rROMB0], a                                                ; $098e

; Pop to get SP pointing back to the curr rom bank, then inc to get to the return address
	pop  hl                                                         ; $0991
	pop  af                                                         ; $0992
	inc  sp                                                         ; $0993
	ret                                                             ; $0994


; BC - num bytes
; HL - dest addr
MemClear::
	xor  a                                                          ; $0995

; A - value to set
; BC - num bytes
; HL - dest addr
MemSet::
	ld   e, a                                                       ; $0996

:	ld   a, e                                                       ; $0997
	ld   [hl+], a                                                   ; $0998
	dec  bc                                                         ; $0999
	ld   a, c                                                       ; $099a
	or   b                                                          ; $099b
	jr   nz, :-                                                     ; $099c

	ret                                                             ; $099e


CopyEthenDintoHL_BCtimes::
:	ld   a, e                                                       ; $099f
	ld   [hl+], a                                                   ; $09a0
	ld   a, d                                                       ; $09a1
	ld   [hl+], a                                                   ; $09a2
	dec  bc                                                         ; $09a3
	ld   a, c                                                       ; $09a4
	or   b                                                          ; $09a5
	jr   nz, :-                                                     ; $09a6

	ret                                                             ; $09a8


; BC - num bytes
; DE - dest addr
; HL - src addr
MemCopy::
:	ld   a, [hl+]                                                   ; $09a9
	ld   [de], a                                                    ; $09aa
	inc  de                                                         ; $09ab
	dec  bc                                                         ; $09ac
	ld   a, c                                                       ; $09ad
	or   b                                                          ; $09ae
	jr   nz, :-                                                     ; $09af

	ret                                                             ; $09b1


; A - src bank
; BC - num bytes
; DE - dest addr
; HL - src addr
FarMemCopy::
; Preserve and set new rom bank to copy from
	ld   [wGenericFarBank], a                                       ; $09b2
	
	ld   a, [wRomBank]                                              ; $09b5
	push af                                                         ; $09b8
	
	ld   a, [wGenericFarBank]                                       ; $09b9
	ld   [wRomBank], a                                              ; $09bc
	ld   [rROMB0], a                                                ; $09bf

; Similar to above MemCopy
.copy:
	ld   a, [hl+]                                                   ; $09c2
	ld   [de], a                                                    ; $09c3
	inc  de                                                         ; $09c4
	dec  bc                                                         ; $09c5
	ld   a, c                                                       ; $09c6
	or   b                                                          ; $09c7
	jr   nz, .copy                                                  ; $09c8

; Restore rom bank
	pop  af                                                         ; $09ca
	ld   [wRomBank], a                                              ; $09cb
	ld   [rROMB0], a                                                ; $09ce
	ret                                                             ; $09d1


; A - src bank
; DE - src addr
; HL - dest addr
RLEXorCopy::
; Preserve rom bank, and set the src data bank
	ld   [wGenericFarBank], a                                       ; $09d2
	ld   a, [wRomBank]                                              ; $09d5
	push af                                                         ; $09d8
	ld   a, [wGenericFarBank]                                       ; $09d9
	ld   [wRomBank], a                                              ; $09dc
	ld   [rROMB0], a                                                ; $09df

; Start with last copied byte cleared
	xor  a                                                          ; $09e2
	ld   [wRLELastCopiedByte], a                                    ; $09e3

; Swap DE and HL, DE: dest addr, HL: src addr
	push de                                                         ; $09e6
	push hl                                                         ; $09e7
	pop  de                                                         ; $09e8
	pop  hl                                                         ; $09e9

; 1st 2 bytes in src are the number of main loops we do here
	ld   a, [hl+]                                                   ; $09ea
	ld   c, a                                                       ; $09eb
	ld   a, [hl+]                                                   ; $09ec
	ld   b, a                                                       ; $09ed

.loopBC:
	push bc                                                         ; $09ee

; Jump if spec byte has bit 7 set
	ld   a, [hl+]                                                   ; $09ef
	bit  7, a                                                       ; $09f0
	jr   nz, .specBit7set                                           ; $09f2

; Else C = that number+1
	inc  a                                                          ; $09f4
	ld   c, a                                                       ; $09f5

; Xor last copied byte against every sequential entry read, then copy into dest
	ld   a, [wRLELastCopiedByte]                                    ; $09f6

.sequentialCopy:
	xor  [hl]                                                       ; $09f9
	ld   [de], a                                                    ; $09fa
	inc  hl                                                         ; $09fb
	inc  de                                                         ; $09fc
	dec  c                                                          ; $09fd
	jr   nz, .sequentialCopy                                        ; $09fe

	ld   [wRLELastCopiedByte], a                                    ; $0a00
	jr   .toLoopBC                                                  ; $0a03

.specBit7set:
; Conver $80-$ff to C = $02-$81
	sub  $7e                                                        ; $0a05
	ld   c, a                                                       ; $0a07

; Xor last copied byte against the same 1st byte read, then copy into dest
	ld   a, [wRLELastCopiedByte]                                    ; $0a08

.sameByteCopy:
	xor  [hl]                                                       ; $0a0b
	ld   [de], a                                                    ; $0a0c
	inc  de                                                         ; $0a0d
	dec  c                                                          ; $0a0e
	jr   nz, .sameByteCopy                                          ; $0a0f

	ld   [wRLELastCopiedByte], a                                    ; $0a11
	inc  hl                                                         ; $0a14

.toLoopBC:
	pop  bc                                                         ; $0a15
	dec  bc                                                         ; $0a16
	ld   a, c                                                       ; $0a17
	or   b                                                          ; $0a18
	jr   nz, .loopBC                                                ; $0a19

; Restore rom bank
	pop  af                                                         ; $0a1b
	ld   [wRomBank], a                                              ; $0a1c
	ld   [rROMB0], a                                                ; $0a1f
	ret                                                             ; $0a22


; A - src rom bank
; BC - num bytes
; DE - dest addr
; HL - src addr
HBlankFarMemCopy::
; Preserve and set new rom bank
	ld   [wGenericFarBank], a                                       ; $0a23

	ld   a, [wRomBank]                                              ; $0a26
	push af                                                         ; $0a29

	ld   a, [wGenericFarBank]                                       ; $0a2a
	ld   [wRomBank], a                                              ; $0a2d
	ld   [rROMB0], a                                                ; $0a30

.loop:
; Wait until outside of hblank
	ldh  a, [rSTAT]                                                 ; $0a33
	and  STATF_LCD                                                  ; $0a35
	jr   z, .loop                                                   ; $0a37

; Then wait until back in hblank
:	ldh  a, [rSTAT]                                                 ; $0a39
	and  STATF_LCD                                                  ; $0a3b
	jr   nz, :-                                                     ; $0a3d

; Copy 4 bytes
	ld   a, [hl+]                                                   ; $0a3f
	ld   [de], a                                                    ; $0a40
	inc  de                                                         ; $0a41
	ld   a, [hl+]                                                   ; $0a42
	ld   [de], a                                                    ; $0a43
	inc  de                                                         ; $0a44
	ld   a, [hl+]                                                   ; $0a45
	ld   [de], a                                                    ; $0a46
	inc  de                                                         ; $0a47
	ld   a, [hl+]                                                   ; $0a48
	ld   [de], a                                                    ; $0a49
	inc  de                                                         ; $0a4a

; BC -= 4
	dec  bc                                                         ; $0a4b
	dec  bc                                                         ; $0a4c
	dec  bc                                                         ; $0a4d
	dec  bc                                                         ; $0a4e

; Loop if not 0
	ld   a, b                                                       ; $0a4f
	or   c                                                          ; $0a50
	jr   nz, .loop                                                  ; $0a51

; Restore rom bank
	pop  af                                                         ; $0a53
	ld   [wRomBank], a                                              ; $0a54
	ld   [rROMB0], a                                                ; $0a57
	ret                                                             ; $0a5a


ClearVram:
	ld   hl, _VRAM                                                  ; $0a5b
	xor  a                                                          ; $0a5e

; Stop when reached $a000
:	ld   [hl+], a                                                   ; $0a5f
	bit  5, h                                                       ; $0a60
	jr   z, :-                                                      ; $0a62

	ret                                                             ; $0a64


;
	xor  a                                           ; $0a65: $af
	ld   hl, $9800                                   ; $0a66: $21 $00 $98

jr_000_0a69:
	ld   [hl+], a                                    ; $0a69: $22
	bit  2, h                                        ; $0a6a: $cb $54
	jr   z, jr_000_0a69                              ; $0a6c: $28 $fb

	ret                                              ; $0a6e: $c9


	xor  a                                           ; $0a6f: $af
	ld   hl, $9c00                                   ; $0a70: $21 $00 $9c

jr_000_0a73:
	ld   [hl+], a                                    ; $0a73: $22
	bit  5, h                                        ; $0a74: $cb $6c
	jr   z, jr_000_0a73                              ; $0a76: $28 $fb

	ret                                              ; $0a78: $c9


WaitUntilBCVBlankIntsHandledIfLCDOn::
:	push bc                                                         ; $0a79
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $0a7a
	pop  bc                                                         ; $0a7b
	dec  bc                                                         ; $0a7c
	ld   a, c                                                       ; $0a7d
	or   b                                                          ; $0a7e
	jr   nz, :-                                                     ; $0a7f

	ret                                                             ; $0a81


; A - rom bank
; DE - dest addr
; HL - src addr
FarMemCopy16C::
; Preserve and set src rom bank
	push af                                                         ; $0a82
	ld   [wGenericFarBank], a                                       ; $0a83
	
	ld   a, [wRomBank]                                              ; $0a86
	push af                                                         ; $0a89
	
	ld   a, [wGenericFarBank]                                       ; $0a8a
	ld   [wRomBank], a                                              ; $0a8d
	ld   [rROMB0], a                                                ; $0a90

; Copy C * $10 bytes
.copy10hBytes:
rept $10
	ld   a, [hl+]                                                   ; $0a93
	ld   [de], a                                                    ; $0a94
	inc  de                                                         ; $0a95
endr

	dec  c                                                          ; $0ac3
	jr   nz, .copy10hBytes                                          ; $0ac4

; Restore rom bank
	pop  af                                                         ; $0ac6
	ld   [wRomBank], a                                              ; $0ac7
	ld   [rROMB0], a                                                ; $0aca
	pop  af                                                         ; $0acd
	ret                                                             ; $0ace


; A - src bank
; HL - src addr
FarGetByte::
; Preserve and set new rom bank
	ld   [wGenericFarBank], a                                       ; $0acf
	ld   a, [wRomBank]                                              ; $0ad2
	push af                                                         ; $0ad5
	
	ld   a, [wGenericFarBank]                                       ; $0ad6
	ld   [wRomBank], a                                              ; $0ad9
	ld   [rROMB0], a                                                ; $0adc
	
; Read byte and store it to return it
	ld   a, [hl+]                                                   ; $0adf
	ld   [wFarByteRead], a                                          ; $0ae0

; Restore rom bank
	pop  af                                                         ; $0ae3
	ld   [wRomBank], a                                              ; $0ae4
	ld   [rROMB0], a                                                ; $0ae7

	ld   a, [wFarByteRead]                                          ; $0aea
	ret                                                             ; $0aed


; A - src bank
FarGetHLinHL::
; Preserve and set new rom bank
	ld   [wGenericFarBank], a                                       ; $0aee
	ld   a, [wRomBank]                                              ; $0af1
	push af                                                         ; $0af4
	
	ld   a, [wGenericFarBank]                                       ; $0af5
	ld   [wRomBank], a                                              ; $0af8
	ld   [rROMB0], a                                                ; $0afb
	
; Get HL in HL
	ld   a, [hl+]                                                   ; $0afe
	ld   h, [hl]                                                    ; $0aff
	ld   l, a                                                       ; $0b00

; Restore rom bank
	pop  af                                                         ; $0b01
	ld   [wRomBank], a                                              ; $0b02
	ld   [rROMB0], a                                                ; $0b05
	ret                                                             ; $0b08


; A - src bank
; HL - src addr
; Returns addr in HL, and bank in A
FarGetAddrBank::
	push bc                                                         ; $0b09

; Preserve and set src rom bank
	ld   [wGenericFarBank], a                                       ; $0b0a
	ld   a, [wRomBank]                                              ; $0b0d
	push af                                                         ; $0b10

	ld   a, [wGenericFarBank]                                       ; $0b11
	ld   [wRomBank], a                                              ; $0b14
	ld   [rROMB0], a                                                ; $0b17

; 3 bytes into CBA
	ld   a, [hl+]                                                   ; $0b1a
	ld   c, a                                                       ; $0b1b
	ld   a, [hl+]                                                   ; $0b1c
	ld   b, a                                                       ; $0b1d
	ld   a, [hl+]                                                   ; $0b1e

; 3 bytes into LHC
	ld   h, b                                                       ; $0b1f
	ld   l, c                                                       ; $0b20
	ld   c, a                                                       ; $0b21

; Restore rom bank
	pop  af                                                         ; $0b22
	ld   [wRomBank], a                                              ; $0b23
	ld   [rROMB0], a                                                ; $0b26

; 3 bytes now in LHA, ie address+bank
	ld   a, c                                                       ; $0b29

	pop  bc                                                         ; $0b2a
	ret                                                             ; $0b2b


; A - src bank
; B - num cols
; C - num rows
; DE - src addr
; HL - dest addr
FarCopyLayout::
	push af                                                         ; $0b2c
	push bc                                                         ; $0b2d
	
; Preserve and set src rom bank
	ld   [wGenericFarBank], a                                       ; $0b2e
	
	ld   a, [wRomBank]                                              ; $0b31
	push af                                                         ; $0b34
	
	ld   a, [wGenericFarBank]                                       ; $0b35
	ld   [wRomBank], a                                              ; $0b38
	ld   [rROMB0], a                                                ; $0b3b

.loopRow:
; Preserve row counter in C, and start of row dest in HL
	push bc                                                         ; $0b3e
	push hl                                                         ; $0b3f

.loopCol:
; Copy num cols
	ld   a, [de]                                                    ; $0b40
	inc  de                                                         ; $0b41
	ld   [hl+], a                                                   ; $0b42
	dec  b                                                          ; $0b43
	jr   nz, .loopCol                                               ; $0b44

; Restore start of row dest, and go to next row
	pop  hl                                                         ; $0b46
	ld   bc, SCRN_VX_B                                              ; $0b47
	add  hl, bc                                                     ; $0b4a

; Preserve row counter and dec
	pop  bc                                                         ; $0b4b
	dec  c                                                          ; $0b4c
	jr   nz, .loopRow                                               ; $0b4d

; Restore rom bank
	pop  af                                                         ; $0b4f
	ld   [wRomBank], a                                              ; $0b50
	ld   [rROMB0], a                                                ; $0b53

	pop  bc                                                         ; $0b56
	pop  af                                                         ; $0b57
	ret                                                             ; $0b58


ClearDisplayRegsAllowVBlankInt::
; Clear from wLCDC to wSCY
	ld   hl, wDisplayRegs                                           ; $0b59
	xor  a                                                          ; $0b5c
	ld   [hl+], a                                                   ; $0b5d
	ld   [hl+], a                                                   ; $0b5e
	ld   [hl+], a                                                   ; $0b5f
	ld   [hl+], a                                                   ; $0b60
	ld   [hl+], a                                                   ; $0b61
	ld   [hl+], a                                                   ; $0b62

; Set wWX, then wWY so the window is off-screen
	ld   a, $a6                                                     ; $0b63
	ld   [hl+], a                                                   ; $0b65
	ld   a, $8f                                                     ; $0b66
	ld   [hl+], a                                                   ; $0b68

; Clear wLYC and wSTAT
	xor  a                                                          ; $0b69
	ld   [hl+], a                                                   ; $0b6a
	ld   [hl+], a                                                   ; $0b6b

; Allow vblank interrupts
	ld   a, IEF_VBLANK                                              ; $0b6c
	ld   [hl+], a                                                   ; $0b6e
	ldh  [rIE], a                                                   ; $0b6f
	ret                                                             ; $0b71


; BC - byte sequences length
; DE - sequence 1
; HL - sequence 2
CheckIf2ByteSequencesMatch::
.loop:
; Ret with nz if [de]-[hl] != 0 (no match)
	ld   a, [de]                                                    ; $0b72
	inc  de                                                         ; $0b73
	sub  [hl]                                                       ; $0b74
	inc  hl                                                         ; $0b75
	ret  nz                                                         ; $0b76

; Keep looping, ret'ing with z set if we exit the loop below
	dec  bc                                                         ; $0b77
	ld   a, c                                                       ; $0b78
	or   b                                                          ; $0b79
	jr   nz, .loop                                                  ; $0b7a

	ret                                                             ; $0b7c


;
	ld   [wGenericFarBank], a                                  ; $0b7d: $ea $9c $c2
	ld   a, [wRomBank]                                  ; $0b80: $fa $92 $c2
	push af                                          ; $0b83: $f5
	ld   a, [wGenericFarBank]                                  ; $0b84: $fa $9c $c2
	ld   [wRomBank], a                                  ; $0b87: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0b8a: $ea $00 $20

jr_000_0b8d:
	ld   a, [de]                                     ; $0b8d: $1a
	inc  de                                          ; $0b8e: $13
	sub  [hl]                                        ; $0b8f: $96
	inc  hl                                          ; $0b90: $23
	jr   nz, jr_000_0ba1                             ; $0b91: $20 $0e

	dec  bc                                          ; $0b93: $0b
	ld   a, c                                        ; $0b94: $79
	or   b                                           ; $0b95: $b0
	jr   nz, jr_000_0b8d                             ; $0b96: $20 $f5

	pop  af                                          ; $0b98: $f1
	ld   [wRomBank], a                                  ; $0b99: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0b9c: $ea $00 $20
	xor  a                                           ; $0b9f: $af
	ret                                              ; $0ba0: $c9


jr_000_0ba1:
	ld   b, a                                        ; $0ba1: $47
	pop  af                                          ; $0ba2: $f1
	ld   [wRomBank], a                                  ; $0ba3: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0ba6: $ea $00 $20
	ld   a, b                                        ; $0ba9: $78
	ld   b, c                                        ; $0baa: $41
	ret                                              ; $0bab: $c9


AequHtimesL::
	push bc                                                         ; $0bac

; BC = H
	ld   c, h                                                       ; $0bad
	ld   b, $00                                                     ; $0bae

; A = L, HL (final result) = 0
	ld   a, l                                                       ; $0bb0
	ld   hl, $0000                                                  ; $0bb1

; For every bit set on A, add H onto final result, shifting BC (multiplicand 1) every time
	bit  0, a                                                       ; $0bb4
	jr   z, :+                                                      ; $0bb6
	add  hl, bc                                                     ; $0bb8
:	sla  c                                                          ; $0bb9
	rl   b                                                          ; $0bbb

; Check bit 1
	bit  1, a                                                       ; $0bbd
	jr   z, :+                                                      ; $0bbf
	add  hl, bc                                                     ; $0bc1
:	sla  c                                                          ; $0bc2
	rl   b                                                          ; $0bc4

; Check bit 2
	bit  2, a                                                       ; $0bc6
	jr   z, :+                                                      ; $0bc8
	add  hl, bc                                                     ; $0bca
:	sla  c                                                          ; $0bcb
	rl   b                                                          ; $0bcd

; Check bit 3
	bit  3, a                                                       ; $0bcf
	jr   z, :+                                                      ; $0bd1
	add  hl, bc                                                     ; $0bd3
:	sla  c                                                          ; $0bd4
	rl   b                                                          ; $0bd6

; Check bit 4
	bit  4, a                                                       ; $0bd8
	jr   z, :+                                                      ; $0bda
	add  hl, bc                                                     ; $0bdc
:	sla  c                                                          ; $0bdd
	rl   b                                                          ; $0bdf

; Check bit 5
	bit  5, a                                                       ; $0be1
	jr   z, :+                                                      ; $0be3
	add  hl, bc                                                     ; $0be5
:	sla  c                                                          ; $0be6
	rl   b                                                          ; $0be8

; Check bit 6
	bit  6, a                                                       ; $0bea
	jr   z, :+                                                      ; $0bec
	add  hl, bc                                                     ; $0bee
:	sla  c                                                          ; $0bef
	rl   b                                                          ; $0bf1

; For bit 7, add the last shifted BC
	bit  7, a                                                       ; $0bf3
	jr   z, :+                                                      ; $0bf5
	add  hl, bc                                                     ; $0bf7

; Then set result in A
:	ld   a, l                                                       ; $0bf8
	pop  bc                                                         ; $0bf9
	ret                                                             ; $0bfa


; Returns divisor in H
; Returns remainder in L
HLequHdivModL::
	push af                                                         ; $0bfb
	xor  a                                                          ; $0bfc
	sla  h                                                          ; $0bfd
	rl   a                                                          ; $0bff

; Anytime A >= L, sub L and set bit 0 of H
	cp   l                                                          ; $0c01
	jr   c, :+                                                      ; $0c02
	sub  l                                                          ; $0c04
	set  0, h                                                       ; $0c05
:	sla  h                                                          ; $0c07
	rl   a                                                          ; $0c09

; 2nd of 8 shifts
	cp   l                                                          ; $0c0b
	jr   c, :+                                                      ; $0c0c
	sub  l                                                          ; $0c0e
	set  0, h                                                       ; $0c0f
:	sla  h                                                          ; $0c11
	rl   a                                                          ; $0c13

; 3rd of 8 shifts
	cp   l                                                          ; $0c15
	jr   c, :+                                                      ; $0c16
	sub  l                                                          ; $0c18
	set  0, h                                                       ; $0c19
:	sla  h                                                          ; $0c1b
	rl   a                                                          ; $0c1d

; 4th of 8 shifts
	cp   l                                                          ; $0c1f
	jr   c, :+                                                      ; $0c20
	sub  l                                                          ; $0c22
	set  0, h                                                       ; $0c23
:	sla  h                                                          ; $0c25
	rl   a                                                          ; $0c27

; 5th of 8 shifts
	cp   l                                                          ; $0c29
	jr   c, :+                                                      ; $0c2a
	sub  l                                                          ; $0c2c
	set  0, h                                                       ; $0c2d
:	sla  h                                                          ; $0c2f
	rl   a                                                          ; $0c31

; 6th of 8 shifts
	cp   l                                                          ; $0c33
	jr   c, :+                                                      ; $0c34
	sub  l                                                          ; $0c36
	set  0, h                                                       ; $0c37
:	sla  h                                                          ; $0c39
	rl   a                                                          ; $0c3b

; 7th of 8 shifts
	cp   l                                                          ; $0c3d
	jr   c, :+                                                      ; $0c3e
	sub  l                                                          ; $0c40
	set  0, h                                                       ; $0c41
:	sla  h                                                          ; $0c43
	rl   a                                                          ; $0c45

; Last of 8 shifts, set remainder A into L
	cp   l                                                          ; $0c47
	jr   c, :+                                                      ; $0c48
	sub  l                                                          ; $0c4a
	set  0, h                                                       ; $0c4b
:	ld   l, a                                                       ; $0c4d

	pop  af                                                         ; $0c4e
	ret                                                             ; $0c4f


; A - divisor
; HL - dividend
; Returns quotient in L, and remainder in A
LAequHLdivmodA::
	push bc                                          ; $0c50: $c5
	push de                                          ; $0c51: $d5

;
	ld   c, a                                        ; $0c52: $4f
	xor  a                                           ; $0c53: $af

; Loop all bits of HL
	ld   b, $10                                      ; $0c54: $06 $10

.loopB:
; HL *= 2
	sla  l                                           ; $0c56: $cb $25
	rl   h                                           ; $0c58: $cb $14

; Rotate into word EA
	rl   a                                           ; $0c5a: $cb $17
	rl   e                                           ; $0c5c: $cb $13

; Jump if E now has a bit set
	bit  0, e                                        ; $0c5e: $cb $43
	jr   nz, .br_0c65                             ; $0c60: $20 $03

; Jump if our number is not yet >= divisor
	cp   c                                           ; $0c62: $b9
	jr   c, .toLoopB                              ; $0c63: $38 $05

.br_0c65:
; Rotate back into L, and sub C from A
	set  0, l                                        ; $0c65: $cb $c5
	res  0, e                                        ; $0c67: $cb $83
	sub  c                                           ; $0c69: $91

.toLoopB:
	dec  b                                           ; $0c6a: $05
	jr   nz, .loopB                             ; $0c6b: $20 $e9

	pop  de                                          ; $0c6d: $d1
	pop  bc                                          ; $0c6e: $c1
	ret                                              ; $0c6f: $c9


UpdateSramRandomSeed::
	ld   d, $80                                      ; $0c70: $16 $80
	ld   a, [sRandomSeed]                                  ; $0c72: $fa $ff $bf

.loopAbs:
	cp   d                                           ; $0c75: $ba
	jr   c, .afterAbs                              ; $0c76: $38 $03

	sub  d                                           ; $0c78: $92
	jr   .loopAbs                                 ; $0c79: $18 $fa

.afterAbs:
	ld   [$c2a4], a                                  ; $0c7b: $ea $a4 $c2
	ld   [$c2dd], a                                  ; $0c7e: $ea $dd $c2
	ld   e, $01                                      ; $0c81: $1e $01
	ld   hl, .structIdxes                                   ; $0c83: $21 $b4 $0c
	ld   a, .end-.structIdxes                                      ; $0c86: $3e $36

.loop:
	push af                                          ; $0c88: $f5
	ld   b, $00                                      ; $0c89: $06 $00
	ld   c, [hl]                                     ; $0c8b: $4e
	inc  hl                                          ; $0c8c: $23
	push hl                                          ; $0c8d: $e5
	ld   hl, wRandomNumStruct                                   ; $0c8e: $21 $a7 $c2
	add  hl, bc                                      ; $0c91: $09
	ld   [hl], e                                     ; $0c92: $73
	ld   a, [$c2a4]                                  ; $0c93: $fa $a4 $c2
	sub  e                                           ; $0c96: $93
	jr   nc, :+                             ; $0c97: $30 $01

	add  d                                           ; $0c99: $82

:	ld   e, a                                        ; $0c9a: $5f
	ld   a, [hl]                                     ; $0c9b: $7e
	ld   [$c2a4], a                                  ; $0c9c: $ea $a4 $c2
	pop  hl                                          ; $0c9f: $e1
	pop  af                                          ; $0ca0: $f1
	dec  a                                           ; $0ca1: $3d
	jr   nz, .loop                             ; $0ca2: $20 $e4

	call UpdateRandomNumbers                                       ; $0ca4: $cd $ea $0c
	call UpdateRandomNumbers                                       ; $0ca7: $cd $ea $0c
	call UpdateRandomNumbers                                       ; $0caa: $cd $ea $0c
	call GetRandomNumInPreSpecifiedRange                               ; $0cad: $cd $10 $0d
	ld   [sRandomSeed], a                                  ; $0cb0: $ea $ff $bf
	ret                                              ; $0cb3: $c9

.structIdxes:
	db $14, $29, $07, $1c, $31, $0f, $24, $02
	db $17, $2c, $0a, $1f, $34, $12, $27, $05
	db $1a, $2f, $0d, $22, $00, $15, $2a, $08
	db $1d, $32, $10, $25, $03, $18, $2d, $0b
	db $20, $35, $13, $28, $06, $1b, $30, $0e
	db $23, $01, $16, $2b, $09, $1e, $33, $11
	db $26, $04, $19, $2e, $0c, $21
.end:
	
	
UpdateRandomNumbers:
; D = constant to add to keep numbers signed positive
	ld   d, $80                                                     ; $0cea

; 1st $18 bytes -= last $18 bytes
	ld   bc, wRandomNumStruct                                       ; $0cec
	ld   hl, wRandomNumStruct+$1f                                   ; $0cef
	ld   e, $18                                                     ; $0cf2

.loop1:
; Add above constant so negative nums go back to positive < $80
	ld   a, [bc]                                                    ; $0cf4
	sub  [hl]                                                       ; $0cf5
	jr   nc, :+                                                     ; $0cf6

	add  d                                                          ; $0cf8

:	ld   [bc], a                                                    ; $0cf9

; Loop $18 bytes
	inc  bc                                                         ; $0cfa
	inc  hl                                                         ; $0cfb
	dec  e                                                          ; $0cfc
	jr   nz, .loop1                                                 ; $0cfd

; BC points to last $1f bytes. Last $1f bytes -= 1st $1f bytes
	ld   hl, wRandomNumStruct                                       ; $0cff
	ld   e, $1f                                                     ; $0d02

.loop2:
; Add above constant so negative nums go back to positive < $80
	ld   a, [bc]                                                    ; $0d04
	sub  [hl]                                                       ; $0d05
	jr   nc, :+                                                     ; $0d06

	add  d                                                          ; $0d08

:	ld   [bc], a                                                    ; $0d09

; Loop $1f bytes
	inc  bc                                                         ; $0d0a
	inc  hl                                                         ; $0d0b
	dec  e                                                          ; $0d0c
	jr   nz, .loop2                                                 ; $0d0d

	ret                                                             ; $0d0f


GetRandomNumInPreSpecifiedRange::
; Push high nybble of a random num up to $f
	call GetRandomNumFromStruct                                     ; $0d10
	rlca                                                            ; $0d13
	and  $f0                                                        ; $0d14
	push af                                                         ; $0d16

; Low nybble = random num up to $f
	call GetRandomNumFromStruct                                     ; $0d17
	rlca                                                            ; $0d1a
	and  $f0                                                        ; $0d1b
	pop  bc                                                         ; $0d1d
	swap a                                                          ; $0d1e

; BC = random num up to $ff
	add  b                                                          ; $0d20
	ld   c, a                                                       ; $0d21
	ld   b, $00                                                     ; $0d22

; HL = range * random num (max => H = almost range)
	ld   hl, $0000                                                  ; $0d24
	ld   a, [wRandomNumRange]                                       ; $0d27

.loopMult:
	srl  a                                                          ; $0d2a
	jr   nc, :+                                                     ; $0d2c

	add  hl, bc                                                     ; $0d2e

:	jr   z, .afterMult                                              ; $0d2f

	sla  c                                                          ; $0d31
	rl   b                                                          ; $0d33
	jr   .loopMult                                                  ; $0d35

.afterMult:
; Push HL = high byte above (random num in range)
	ld   l, h                                                       ; $0d37
	ld   h, $00                                                     ; $0d38
	push hl                                                         ; $0d3a

; Push random high nybble up to $f
	call GetRandomNumFromStruct                                     ; $0d3b
	rlca                                                            ; $0d3e
	and  $f0                                                        ; $0d3f
	push af                                                         ; $0d41

; Low nybble = random num up to $f
	call GetRandomNumFromStruct                                     ; $0d42
	rlca                                                            ; $0d45
	and  $f0                                                        ; $0d46
	pop  bc                                                         ; $0d48
	swap a                                                          ; $0d49

; BC = random num up to $ff
	add  b                                                          ; $0d4b
	ld   c, a                                                       ; $0d4c
	ld   b, $00                                                     ; $0d4d

; HL = range * $ff + random num in range (max => H = range)
	pop  hl                                                         ; $0d4f
	ld   a, [wRandomNumRange]                                       ; $0d50

.loopMult2:
	srl  a                                                          ; $0d53
	jr   nc, :+                                                     ; $0d55

	add  hl, bc                                                     ; $0d57

:	jr   z, .done                                                   ; $0d58

	sla  c                                                          ; $0d5a
	rl   b                                                          ; $0d5c
	jr   .loopMult2                                                 ; $0d5e

.done:
	ld   a, h                                                       ; $0d60
	ret                                                             ; $0d61


GetRandomNumFromStruct:
; BC = idx of next random num to get
	ld   b, $00                                                     ; $0d62
	ld   a, [wCurrRandomNumStructIdx]                               ; $0d64
	ld   c, a                                                       ; $0d67

; Inc idx, looping through struct
	inc  a                                                          ; $0d68
	cp   wRandomNumStruct.end-wRandomNumStruct                      ; $0d69
	jr   nz, :+                                                     ; $0d6b

; If we reached the next, generate new numbers, and set next idx to 0
	call UpdateRandomNumbers                                        ; $0d6d
	xor  a                                                          ; $0d70
	ld   bc, $0000                                                  ; $0d71

:	ld   [wCurrRandomNumStructIdx], a                               ; $0d74

; Get random num
	ld   hl, wRandomNumStruct                                       ; $0d77
	add  hl, bc                                                     ; $0d7a
	ld   a, [hl]                                                    ; $0d7b
	ret                                                             ; $0d7c


; Returns 1s in A, 10s in stack, then 100s in stack after
; First of 100s, then 10s, that is 0, is set to 10 instead
ConvertAintoBCD::
; DE = return address
	pop  de                                                         ; $0d7d
	ld   bc, $0000                                                  ; $0d7e

; C = num 100s
.loop100:
	cp   100                                                        ; $0d81
	jr   c, .loop10                                                 ; $0d83

	sub  100                                                        ; $0d85
	inc  c                                                          ; $0d87
	jr   .loop100                                                   ; $0d88

; B = num 10s, A = num 1s
.loop10:
	cp   10                                                         ; $0d8a
	jr   c, .done1s                                                 ; $0d8c

	sub  10                                                         ; $0d8e
	inc  b                                                          ; $0d90
	jr   .loop10                                                    ; $0d91

.done1s:
; L = 1s
	ld   l, a                                                       ; $0d93

; Jump if num 100s > 0
	ld   a, c                                                       ; $0d94
	and  a                                                          ; $0d95
	jr   nz, .end                                                   ; $0d96

; Else num for 100s = 10
	ld   c, 10                                                      ; $0d98

; Jump if num 10s > 0
	ld   a, b                                                       ; $0d9a
	and  a                                                          ; $0d9b
	jr   nz, .end                                                   ; $0d9c

; Else num for 10s = 10
	ld   b, 10                                                      ; $0d9e

.end:
; Push 100s
	ld   a, c                                                       ; $0da0
	push af                                                         ; $0da1

; Push 10s
	ld   a, b                                                       ; $0da2
	push af                                                         ; $0da3

; A = 1s, jump to return address
	ld   a, l                                                       ; $0da4
	ld   h, d                                                       ; $0da5
	ld   l, e                                                       ; $0da6
	jp   hl                                                         ; $0da7


;
	pop  de                                          ; $0da8: $d1
	ld   bc, $fc18                                   ; $0da9: $01 $18 $fc
	xor  a                                           ; $0dac: $af

jr_000_0dad:
	add  hl, bc                                      ; $0dad: $09
	bit  7, h                                        ; $0dae: $cb $7c
	jr   nz, jr_000_0db5                             ; $0db0: $20 $03

	inc  a                                           ; $0db2: $3c
	jr   jr_000_0dad                                 ; $0db3: $18 $f8

jr_000_0db5:
	push af                                          ; $0db5: $f5
	ld   bc, $0064                                   ; $0db6: $01 $64 $00
	ld   a, $09                                      ; $0db9: $3e $09

jr_000_0dbb:
	add  hl, bc                                      ; $0dbb: $09
	bit  7, h                                        ; $0dbc: $cb $7c
	jr   z, jr_000_0dc3                              ; $0dbe: $28 $03

	dec  a                                           ; $0dc0: $3d
	jr   jr_000_0dbb                                 ; $0dc1: $18 $f8

jr_000_0dc3:
	push af                                          ; $0dc3: $f5
	ld   bc, $fff6                                   ; $0dc4: $01 $f6 $ff
	xor  a                                           ; $0dc7: $af

jr_000_0dc8:
	add  hl, bc                                      ; $0dc8: $09
	bit  7, h                                        ; $0dc9: $cb $7c
	jr   nz, jr_000_0dd0                             ; $0dcb: $20 $03

	inc  a                                           ; $0dcd: $3c
	jr   jr_000_0dc8                                 ; $0dce: $18 $f8

jr_000_0dd0:
	push af                                          ; $0dd0: $f5
	ld   a, l                                        ; $0dd1: $7d
	add  $0a                                         ; $0dd2: $c6 $0a
	ld   h, d                                        ; $0dd4: $62
	ld   l, e                                        ; $0dd5: $6b
	jp   hl                                          ; $0dd6: $e9


ClearOam::
; Clear $10 bytes of shadow oam per loop
	ld   a, $f0                                                     ; $0dd7
	ld   hl, wOam.end-1                                             ; $0dd9

.next10h:
rept 16
	ld   [hl-], a                                                   ; $0ddc
endr

; Stop when high byte is $bf
	bit  0, h                                                       ; $0dec
	jr   z, .next10h                                                ; $0dee

; Allow populating from the 1st byte
	xor  a                                                          ; $0df0
	ld   [wNextShadowOamIdxToPopulate], a                           ; $0df1
	ret                                                             ; $0df4


;
	ld   a, [wNextShadowOamIdxToPopulate]                                  ; $0df5: $fa $19 $c2
	ld   l, a                                        ; $0df8: $6f
	ld   h, HIGH(wOam)                                      ; $0df9: $26 $c0
	ld   a, $f0                                      ; $0dfb: $3e $f0

.nextOam:
	ld   [hl+], a                                    ; $0dfd: $22
	ld   [hl+], a                                    ; $0dfe: $22
	ld   [hl+], a                                    ; $0dff: $22
	ld   [hl+], a                                    ; $0e00: $22
	bit  0, h                                        ; $0e01: $cb $44
	jr   z, .nextOam                              ; $0e03: $28 $f8

	ret                                              ; $0e05: $c9


; A - rom bank
; B - X offset
; C - Y offset
; HL - src addr
UnusedFarPopulateShadowOamFromSpriteSpec:
; Preserve and set new rom bank
	ld   d, a                                                       ; $0e06
	ld   a, [wRomBank]                                              ; $0e07
	push af                                                         ; $0e0a

	ld   a, d                                                       ; $0e0b
	ld   [wRomBank], a                                              ; $0e0c
	ld   [rROMB0], a                                                ; $0e0f

; DE = oam src addr
	ld   d, h                                                       ; $0e12
	ld   e, l                                                       ; $0e13
	jr   PopulateShadowOamFromSpriteSpec                            ; $0e14


; A - sprite idx in group
; B - X offset
; C - Y offset
LoadSpriteFromMainTable::
; DE = sprite idx in group
	ld   d, $00                                                     ; $0e16
	ld   e, a                                                       ; $0e18

; Preserve rom bank + sprite idx
	ld   a, [wRomBank]                                              ; $0e19
	push af                                                         ; $0e1c
	push de                                                         ; $0e1d

; Sprite group is a triple idx into the table
	ld   a, [wSpriteGroup]                                          ; $0e1e
	ld   e, a                                                       ; $0e21
	ld   d, $00                                                     ; $0e22
	ld   hl, SpriteGroupDataPointers                                ; $0e24
	add  hl, de                                                     ; $0e27
	add  hl, de                                                     ; $0e28
	add  hl, de                                                     ; $0e29

; Unnecessary rom bank set
	ld   a, $00                                                     ; $0e2a
	ld   [wRomBank], a                                              ; $0e2c
	ld   [rROMB0], a                                                ; $0e2f

; DE = addr in table entry, A = bank after
	ld   a, [hl+]                                                   ; $0e32
	ld   e, a                                                       ; $0e33
	ld   a, [hl+]                                                   ; $0e34
	ld   d, a                                                       ; $0e35
	ld   a, [hl]                                                    ; $0e36
	ld   [wRomBank], a                                              ; $0e37
	ld   [rROMB0], a                                                ; $0e3a

; HL = orig sprite idx double idxed into sprite group address
	pop  hl                                                         ; $0e3d
	add  hl, hl                                                     ; $0e3e
	add  hl, de                                                     ; $0e3f

; DE (src of oam data) = word stored in that table
	ld   a, [hl+]                                                   ; $0e40
	ld   e, a                                                       ; $0e41
	ld   d, [hl]                                                    ; $0e42

; B - X offset
; C - Y offset
; DE - src of oam data
PopulateShadowOamFromSpriteSpec:
	ld   h, HIGH(wOam)                                              ; $0e43
	ld   a, [wNextShadowOamIdxToPopulate]                           ; $0e45
	ld   l, a                                                       ; $0e48

.nextObj:
; 1st byte + Y offset into oam Y
	ld   a, [de]                                                    ; $0e49
	inc  de                                                         ; $0e4a
	add  c                                                          ; $0e4b
	ld   [hl+], a                                                   ; $0e4c

; 2nd byte + X offset into oam X
	ld   a, [de]                                                    ; $0e4d
	inc  de                                                         ; $0e4e
	add  b                                                          ; $0e4f
	ld   [hl+], a                                                   ; $0e50

; Next 2 bytes are tile and attr
	ld   a, [de]                                                    ; $0e51
	inc  de                                                         ; $0e52
	ld   [hl+], a                                                   ; $0e53

	ld   a, [de]                                                    ; $0e54
	inc  de                                                         ; $0e55
	ld   [hl+], a                                                   ; $0e56

; Bit 4 of attr is unused in CGB. If clear, keep loading oam
	bit  4, a                                                       ; $0e57
	jr   z, .nextObj                                                ; $0e59

; Else we're done, set next oam slot to populate, and restore rom bank
	ld   a, l                                                       ; $0e5b
	ld   [wNextShadowOamIdxToPopulate], a                           ; $0e5c

	pop  af                                                         ; $0e5f
	ld   [wRomBank], a                                              ; $0e60
	ld   [rROMB0], a                                                ; $0e63
	ret                                                             ; $0e66


;
	ld   d, a                                        ; $0e67: $57
	ld   a, [wRomBank]                                  ; $0e68: $fa $92 $c2
	push af                                          ; $0e6b: $f5
	ld   a, d                                        ; $0e6c: $7a
	ld   [wRomBank], a                                  ; $0e6d: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0e70: $ea $00 $20
	ld   d, h                                        ; $0e73: $54
	ld   e, l                                        ; $0e74: $5d
	jr   jr_000_0ea4                                 ; $0e75: $18 $2d


;
	ld   d, $00                                      ; $0e77: $16 $00
	ld   e, a                                        ; $0e79: $5f
	ld   a, [wRomBank]                                  ; $0e7a: $fa $92 $c2
	push af                                          ; $0e7d: $f5
	push de                                          ; $0e7e: $d5
	ld   a, [wSpriteGroup]                                  ; $0e7f: $fa $1a $c2
	ld   e, a                                        ; $0e82: $5f
	ld   d, $00                                      ; $0e83: $16 $00
	ld   hl, SpriteGroupDataPointers                                   ; $0e85: $21 $34 $02
	add  hl, de                                      ; $0e88: $19
	add  hl, de                                      ; $0e89: $19
	add  hl, de                                      ; $0e8a: $19
	ld   a, $00                                      ; $0e8b: $3e $00
	ld   [wRomBank], a                                  ; $0e8d: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0e90: $ea $00 $20
	ld   a, [hl+]                                    ; $0e93: $2a
	ld   e, a                                        ; $0e94: $5f
	ld   a, [hl+]                                    ; $0e95: $2a
	ld   d, a                                        ; $0e96: $57
	ld   a, [hl]                                     ; $0e97: $7e
	ld   [wRomBank], a                                  ; $0e98: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0e9b: $ea $00 $20
	pop  hl                                          ; $0e9e: $e1
	add  hl, hl                                      ; $0e9f: $29
	add  hl, de                                      ; $0ea0: $19
	ld   a, [hl+]                                    ; $0ea1: $2a
	ld   e, a                                        ; $0ea2: $5f
	ld   d, [hl]                                     ; $0ea3: $56

jr_000_0ea4:
	ld   h, $c0                                      ; $0ea4: $26 $c0
	ld   a, [wNextShadowOamIdxToPopulate]                                  ; $0ea6: $fa $19 $c2
	ld   l, a                                        ; $0ea9: $6f

jr_000_0eaa:
	ld   a, [de]                                     ; $0eaa: $1a
	bit  0, a                                        ; $0eab: $cb $47
	jr   nz, jr_000_0ec0                             ; $0ead: $20 $11

	inc  de                                          ; $0eaf: $13
	push af                                          ; $0eb0: $f5
	ld   a, [de]                                     ; $0eb1: $1a
	inc  de                                          ; $0eb2: $13
	add  c                                           ; $0eb3: $81
	ld   [hl+], a                                    ; $0eb4: $22
	ld   a, [de]                                     ; $0eb5: $1a
	inc  de                                          ; $0eb6: $13
	add  b                                           ; $0eb7: $80
	ld   [hl+], a                                    ; $0eb8: $22
	ld   a, [de]                                     ; $0eb9: $1a

jr_000_0eba:
	inc  de                                          ; $0eba: $13
	ld   [hl+], a                                    ; $0ebb: $22
	pop  af                                          ; $0ebc: $f1
	ld   [hl+], a                                    ; $0ebd: $22
	jr   jr_000_0eaa                                 ; $0ebe: $18 $ea

jr_000_0ec0:
	ld   a, l                                        ; $0ec0: $7d
	ld   [wNextShadowOamIdxToPopulate], a                                  ; $0ec1: $ea $19 $c2
	pop  af                                          ; $0ec4: $f1
	ld   [wRomBank], a                                  ; $0ec5: $ea $92 $c2
	ld   [rROMB0], a                                  ; $0ec8: $ea $00 $20
	ret                                              ; $0ecb: $c9


; A - sprite group
UnusedSetSpriteGroup:
	ld   [wSpriteGroup], a                                          ; $0ecc
	ret                                                             ; $0ecf


MainLoop:
; Start from state 0, then run state every frame
	call InitGameStateAndSubstate                                   ; $0ed0

:	call HandleGameState                                            ; $0ed3
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $0ed6
	jr   :-                                                         ; $0ed7


InitGameStateAndSubstate:
	ld   a, GS_INIT                                                 ; $0ed9
	ld   [wGameState], a                                            ; $0edb
	xor  a                                                          ; $0ede
	ld   [wGameSubstate], a                                         ; $0edf
	ret                                                             ; $0ee2


HandleGameState:
; Game state idx is a triple idx into the table below
	ld   a, [wGameState]                                            ; $0ee3
	ld   d, a                                                       ; $0ee6
	sla  a                                                          ; $0ee7
	add  d                                                          ; $0ee9
	ld   e, a                                                       ; $0eea
	ld   d, $00                                                     ; $0eeb
	ld   hl, .gameStates                                            ; $0eed
	add  hl, de                                                     ; $0ef0

; Preserve rom bank, and push return address from game state handler
	ld   a, [wRomBank]                                              ; $0ef1
	push af                                                         ; $0ef4
	ld   bc, .return                                                ; $0ef5
	push bc                                                         ; $0ef8

; Table contains handler addr, then bank to set
	ld   a, [hl+]                                                   ; $0ef9
	ld   c, a                                                       ; $0efa
	ld   a, [hl+]                                                   ; $0efb
	ld   b, a                                                       ; $0efc
	ld   a, [hl]                                                    ; $0efd
	ld   [wRomBank], a                                              ; $0efe
	ld   [rROMB0], a                                                ; $0f01

; Push addr to return to it
	push bc                                                         ; $0f04
	ret                                                             ; $0f05

.return:
; Restore rom bank
	pop  af                                                         ; $0f06
	ld   [wRomBank], a                                              ; $0f07
	ld   [rROMB0], a                                                ; $0f0a
	ret                                                             ; $0f0d

.gameStates:
	AddrBank GameState00_Init
	AddrBank GameState01_Stub
	AddrBank GameState02_Intro
	AddrBank GameState03_MiniGames
	AddrBank GameState04_IrisMiniGameMain
	AddrBank GameState05_Credits
	AddrBank GameState06_SoundMode
	AddrBank GameState07_PortraitMode
	AddrBank GameState08_EventGallery
	AddrBank GameState09_VoiceMode
	AddrBank GameState0a ; like sound mode but bugged
	AddrBank GameState0b_KannaMiniGameMain
	AddrBank GameState0c_SakuraMiniGameMain
	AddrBank GameState0d_MariaMiniGame
	AddrBank GameState0e_SaveScreen
	AddrBank GameState0f_GameBoyComms
	AddrBank GameState10_PocketSakuraComms
	AddrBank GameState11_TVComms
	AddrBank GameState12_ResetData
	AddrBank GameState13_DMG
	AddrBank GameState14_Cinematron
	AddrBank GameState15_RedLightGreenLight
	AddrBank GameState16_EnterName
	AddrBank GameState17_Settings
	AddrBank GameState18_MiniGameResults
	AddrBank GameState19_PushUps
	AddrBank GameState1a_MockBattle
	AddrBank GameState1b_KohranMiniGameTitleScreen
	AddrBank GameState1c_IrisMiniGameTitleScreen
	AddrBank GameState1d_SumireMiniGameTitleScreen
	AddrBank GameState1e_SakuraMiniGameTitleScreen
	AddrBank GameState1f_KannaMiniGameTitleScreen
	AddrBank GameState20_GameResults
	AddrBank GameState21_KannaMiniGameHelpScreen
	AddrBank GameState22_IrisMiniGameHelpScreen
	AddrBank GameState23 ; like pocket sakura comms
	AddrBank GameState24_MiniGameDebugMenu
	AddrBank GameState25_KohranMiniGameMain
	AddrBank GameState26_SumireMiniGameMain
	AddrBank GameState27_SakuraTraining
	AddrBank GameState28_SumireTraining
	AddrBank GameState29_KohranTraining
	AddrBank GameState2a_IrisTraining
	AddrBank GameState2b_KannaTraining
	AddrBank GameState2c_MariaTraining
	AddrBank GameState2d_Nap
	AddrBank GameState2e_TrainingDebugMenu
	AddrBank GameState2f_Battle
	AddrBank GameState30_SoundTest
	AddrBank GameState31_SpecialAnimsDebugMenu
	AddrBank GameState32_BattleDebugMenu
	AddrBank GameState33_PlayerSpecialAnims
	AddrBank GameState34_GirlSpecialAnims
	AddrBank GameState35_AltTitleScreen
	AddrBank GameState36_TitleScreen
	AddrBank GameState37_TitleMenuScreen
	AddrBank GameState38_DayPeriodTransition
	AddrBank GameState39_Explore
	AddrBank GameState3a_Items
	AddrBank GameState3b_MainConvo
	AddrBank GameState3c_FileLoadDisplay
	AddrBank GameState3d_GirlImage
	AddrBank GameState3e_Schedule
	AddrBank GameState3f_GameOver
	AddrBank GameState40_Inventory
	AddrBank GameState41_TreasureChest
	AddrBank GameState42_RomandoShop
	AddrBank GameState43_FlagSettings
	AddrBank GameState44_IntroScript
	AddrBank GameState45_DormRoom
	AddrBank GameState46_PreTitleScreen
	AddrBank GameState47_Prologue
	AddrBank GameState48 ; bugged
	AddrBank GameState49_DayPassed


InitWideTextBoxDimensions::
; Clear pos vars
	xor  a                                                          ; $0fec
	ld   [wLastKanjiIdxInCurrTextbox], a                            ; $0fed
	ld   [wKanjiIdxInConversation], a                               ; $0ff0

if def(VWF)
	call ClearVwfVars
else
	ld   [wCurrKanjiCol], a                                         ; $0ff3
endc

	ld   [wCurrKanjiRow], a                                         ; $0ff6

; Wide dimensions
	ld   a, $12                                                     ; $0ff9
	ld   [wNumKanjiTextBoxCols], a                                  ; $0ffb
	ld   a, $03                                                     ; $0ffe
	ld   [wNumKanjiTextBoxRows], a                                  ; $1000

; Default text style is black on white
	ld   a, KTS_BLACK_ON_WHITE                                      ; $1003
	ld   [wDefaultKanjiTileTextStyle], a                            ; $1005
	ld   [wCurrKanjiTileTextStyle], a                               ; $1008
	ret                                                             ; $100b


; A - src bank
; HL - src addr
FarPopulateKanjiConvoStructForCurrTextBox::
; Preserve and set src rom bank
	ld   [wGenericFarBank], a                                       ; $100c
	ld   a, [wRomBank]                                              ; $100f
	push af                                                         ; $1012
	
	ld   a, [wGenericFarBank]                                       ; $1013
	ld   [wRomBank], a                                              ; $1016
	ld   [rROMB0], a                                                ; $1019
	
; Call func and restore rom bank
	call PopulateKanjiConvoStructForCurrTextBox                     ; $101c
	
	pop  af                                                         ; $101f
	ld   [wRomBank], a                                              ; $1020
	ld   [rROMB0], a                                                ; $1023
	ret                                                             ; $1026


; HL - src addr
PopulateKanjiConvoStructForCurrTextBox::
	ld   d, h                                                       ; $1027
	ld   e, l                                                       ; $1028

; Start with default text style
	ld   a, [wDefaultKanjiTileTextStyle]                            ; $1029
	ld   [wCurrKanjiTileTextStyle], a                               ; $102c

.loopAddToConvoStruct:
; Default quarter bank offset
	ld   h, $00                                                     ; $102f

; Get next byte, returning once 0 encountered
	ld   a, [de]                                                    ; $1031
	inc  de                                                         ; $1032
	or   a                                                          ; $1033
	ret  z                                                          ; $1034

; Jump if $ff
	cp   $ff                                                        ; $1035
	jr   z, .byteFFh_overwrittenFloatingPeriod                      ; $1037

; Regular 1st quarter bank kanji
	cp   $10                                                        ; $1039
	jr   nc, .add1Kanji                                             ; $103b

; Non-1st quarter bank kanji
	cp   $08                                                        ; $103d
	jr   c, .add2Kanjis                                             ; $103f

	jr   .add1Kanji                                                 ; $1041

.add2Kanjis:
; Quarter bank offset in H, next byte, for kanji, in L below
	ld   h, a                                                       ; $1043
	ld   a, [de]                                                    ; $1044
	inc  de                                                         ; $1045

.add1Kanji:
; H = 0 if jumping here, L is the kanji to display
	ld   l, a                                                       ; $1046
	call AddQuarterBankOffsetAndKanjiToConvoStructForCurrTextBox    ; $1047
	jr   .loopAddToConvoStruct                                      ; $104a

.byteFFh_overwrittenFloatingPeriod:
; Code 9 below draws the floating period char #9 but does not inc col
; $ff is 2 floating periods that overwrite the above due to not inc'ing col
	ld   h, $09                                                     ; $104c
	ld   l, $ff                                                     ; $104e
	call AddQuarterBankOffsetAndKanjiToConvoStructForCurrTextBox    ; $1050
	jr   .loopAddToConvoStruct                                      ; $1053


HDMAEnqueueNextTextBoxKanji::
; Preserve and set ram bank with tile data buffer
	ld   a, [wWramBank]                                             ; $1055
	push af                                                         ; $1058

	ld   a, BANK(wKanjiTileDataBuffer)                              ; $1059
	ld   [wWramBank], a                                             ; $105b
	ldh  [rSVBK], a                                                 ; $105e

; By default, have characters inc col, and get kanjis from the 1st quarter bank
	xor  a                                                          ; $1060
	ld   [wNextKanjiCharOverwrites], a                              ; $1061
	ld   [wCurrKanjiDataQuarterBankOffset], a                       ; $1064

; Exit if we're already at the end
	ld   a, [wLastKanjiIdxInCurrTextbox]                            ; $1067
	ld   b, a                                                       ; $106a
	ld   a, [wKanjiIdxInConversation]                               ; $106b
	cp   b                                                          ; $106e
	jr   z, .done                                                   ; $106f

; Jump if regular kanji
	call GetNextKanjiIdxToDraw                                      ; $1071
	cp   $10                                                        ; $1074
	jr   nc, .enqueueRegularKanji                                   ; $1076

;Jump if control code 8-f
	cp   $08                                                        ; $1078
	jr   nc, .specialCode                                           ; $107a

; If < 8, it's a new quarter bank offset, then draw the kanji after
	ld   [wCurrKanjiDataQuarterBankOffset], a                       ; $107c
	call GetNextKanjiIdxToDraw                                      ; $107f
	jr   .enqueueRegularKanji                                       ; $1082

.specialCode:
; Use idxes 0-7 in table
	sub  $08                                                        ; $1084
	sla  a                                                          ; $1086
	ld   b, $00                                                     ; $1088
	ld   c, a                                                       ; $108a
	ld   hl, .specialCodesHandlers                                  ; $108b
	add  hl, bc                                                     ; $108e
	ld   a, [hl+]                                                   ; $108f
	ld   h, [hl]                                                    ; $1090
	ld   l, a                                                       ; $1091
	jp   hl                                                         ; $1092

.code9_displayOverwrittenFloatingPeriod:
; Display a floating period (char 9), and have the next character overwrite it
	ld   a, $ff                                                     ; $1093
	ld   [wNextKanjiCharOverwrites], a                              ; $1095
	ld   a, $09                                                     ; $1098
	jr   .enqueueRegularKanji                                       ; $109a

.codeA_setTextStyle:
; Kanji code after is the new text style from here and future chars
	call GetNextKanjiIdxToDraw                                      ; $109c
	ld   [wCurrKanjiTileTextStyle], a                               ; $109f
	jr   .done                                                      ; $10a2

.otherSpecialCodes_incRow:
; Reset col
	xor  a                                                          ; $10a4

if def(VWF)
	call OtherSpecialTextByte
else
	ld   [wCurrKanjiCol], a                                         ; $10a5
endc

; Get num rows in B..
	ld   a, [wNumKanjiTextBoxRows]                                  ; $10a8
	ld   b, a                                                       ; $10ab

; Inc current row, and if >= num rows..
	ld   a, [wCurrKanjiRow]                                         ; $10ac
	inc  a                                                          ; $10af
	ld   [wCurrKanjiRow], a                                         ; $10b0
	cp   b                                                          ; $10b3
	jr   c, .done                                                   ; $10b4

; Loop to row 0
	xor  a                                                          ; $10b6
	ld   [wCurrKanjiRow], a                                         ; $10b7

.done:
; Restore wram bank
	pop  af                                                         ; $10ba
	ld   [wWramBank], a                                             ; $10bb
	ldh  [rSVBK], a                                                 ; $10be
	ret                                                             ; $10c0

.enqueueRegularKanji:
; Save kanji idx in C
	ld   c, a                                                       ; $10c1

; HL is double offsetted by num cols
if def(VWF)
	call SaveKanjiIdx
else
	ld   a, [wNumKanjiTextBoxCols]                                  ; $10c2
endc
	sla  a                                                          ; $10c5
	ld   d, $00                                                     ; $10c7
	ld   e, a                                                       ; $10c9
	ld   hl, KanjiTileDataDestOffsets                               ; $10ca
	add  hl, de                                                     ; $10cd

; DE = num bytes per row
	ld   a, [hl+]                                                   ; $10ce
	ld   d, [hl]                                                    ; $10cf
	ld   e, a                                                       ; $10d0

; HL = col * $20 (num bytes per character)
	ld   a, [wCurrKanjiCol]                                         ; $10d1
	ld   h, a                                                       ; $10d4
	ld   l, $00                                                     ; $10d5
	srl  h                                                          ; $10d7
	rr   l                                                          ; $10d9
	srl  h                                                          ; $10db
	rr   l                                                          ; $10dd
	srl  h                                                          ; $10df
	rr   l                                                          ; $10e1

; For every row, add on num bytes per row onto HL
	ld   a, [wCurrKanjiRow]                                         ; $10e3
	jr   :+                                                         ; $10e6

.loopAddRowBytes:
	add  hl, de                                                     ; $10e8

:	dec  a                                                          ; $10e9
	bit  7, a                                                       ; $10ea
	jr   z, .loopAddRowBytes                                        ; $10ec

; With above, get final dest addr, and push for later hdma
	ld   de, _VRAM+$800                                             ; $10ee
	add  hl, de                                                     ; $10f1
	push hl                                                         ; $10f2

; DE = src addr of kanji tile data
; Shifts and rotates below turns 1 into $1000
	ld   hl, $4000                                                  ; $10f3
	ld   a, [wCurrKanjiDataQuarterBankOffset]                       ; $10f6
	and  $03                                                        ; $10f9
	ld   b, a                                                       ; $10fb
	sla  c                                                          ; $10fc
	rl   b                                                          ; $10fe
	sla  c                                                          ; $1100
	rl   b                                                          ; $1102
	sla  c                                                          ; $1104
	rl   b                                                          ; $1106
	sla  c                                                          ; $1108
	rl   b                                                          ; $110a
	add  hl, bc                                                     ; $110c
	ld   d, h                                                       ; $110d
	ld   e, l                                                       ; $110e

; Below gets intermediate tile data addr
	ld   hl, wIdxUsedForKanjiTileDataBuffer                         ; $110f
	ld   a, [hl]                                                    ; $1112
	inc  [hl]                                                       ; $1113

; Idx loops 7->0, BC becomes idx * $20 (num bytes per kanji)
	and  $07                                                        ; $1114
	swap a                                                          ; $1116
	sla  a                                                          ; $1118
	ld   b, $00                                                     ; $111a
	ld   c, a                                                       ; $111c

; Push for later hdma
	ld   hl, wKanjiTileDataBuffer                                   ; $111d
	add  hl, bc                                                     ; $1120
	push hl                                                         ; $1121

; Every 4 quarter banks, is +1 to kanji base tile data bank
	ld   a, [wCurrKanjiDataQuarterBankOffset]                       ; $1122
	srl  a                                                          ; $1125
	srl  a                                                          ; $1127
	add  KANJI_TILE_DATA_BANK                                       ; $1129
	ld   [wGenericFarBank], a                                       ; $112b

; Preserve and set the above bank
	ld   a, [wRomBank]                                              ; $112e
	push af                                                         ; $1131

	ld   a, [wGenericFarBank]                                       ; $1132
	ld   [wRomBank], a                                              ; $1135
	ld   [rROMB0], a                                                ; $1138

; Then load kanji tile data from DE (kanji src) to HL (intermediate wram addr)
; And restore rom bank
if def(VWF)
	jp   VWFLoadKanjiTileDataWithTextStyle
else
	call LoadKanjiTileDataWithTextStyle                             ; $113b
endc

	pop  af                                                         ; $113e
	ld   [wRomBank], a                                              ; $113f
	ld   [rROMB0], a                                                ; $1142

; HL = popped src in wram, DE = popped vram dest
; Transfer $20 bytes from wram bank 1
	pop  hl                                                         ; $1145
	pop  de                                                         ; $1146
	ld   a, $01                                                     ; $1147
	ldbc $02, $81                                                   ; $1149
	call EnqueueHDMATransfer                                        ; $114c

; Skip inc'ing col if this flag set
	ld   a, [wNextKanjiCharOverwrites]                              ; $114f
	or   a                                                          ; $1152
	jp   nz, .done                                                  ; $1153

; Else get num cols in B..
	ld   a, [wNumKanjiTextBoxCols]                                  ; $1156
	ld   b, a                                                       ; $1159

; Inc current col, and if it is >= num cols..
	ld   a, [wCurrKanjiCol]                                         ; $115a
	inc  a                                                          ; $115d
	ld   [wCurrKanjiCol], a                                         ; $115e
	cp   b                                                          ; $1161
	jp   c, .done                                                   ; $1162

; Clear col
	xor  a                                                          ; $1165
	ld   [wCurrKanjiCol], a                                         ; $1166
	jp   .done                                                      ; $1169

.specialCodesHandlers:
	dw .otherSpecialCodes_incRow
	dw .code9_displayOverwrittenFloatingPeriod
	dw .codeA_setTextStyle
	dw .otherSpecialCodes_incRow
	dw .otherSpecialCodes_incRow
	dw .otherSpecialCodes_incRow
	dw .otherSpecialCodes_incRow
	dw .otherSpecialCodes_incRow


; Can also return the value for the tile data load type
GetNextKanjiIdxToDraw:
; Idx in convo is used as an index into the struct below
	ld   a, [wKanjiIdxInConversation]                               ; $117c
	ld   b, $00                                                     ; $117f
	ld   c, a                                                       ; $1181
	ld   hl, wCurrConversationsKanjis                               ; $1182
	add  hl, bc                                                     ; $1185
	
; Make sure to inc kanji idx within conversation, then return value in struct
	inc  a                                                          ; $1186
	ld   [wKanjiIdxInConversation], a                               ; $1187
	ld   a, [hl]                                                    ; $118a
	ret                                                             ; $118b


KanjiTileDataDestOffsets:
	dw $0000
	dw $0020
	dw $0040
	dw $0060
	dw $0080
	dw $00a0
	dw $00c0
	dw $00e0
	dw $0100
	dw $0120
	dw $0140
	dw $0160
	dw $0180
	dw $01a0
	dw $01c0
	dw $01e0
	dw $0200
	dw $0220
	dw $0240
	dw $0260
	dw $0280
	dw $02a0
	dw $02c0
	dw $02e0
	dw $0300
	dw $0320
	dw $0340
	dw $0360
	dw $0380
	dw $03a0
	dw $03c0
	dw $03e0


HLequNextKanjiQuarterBankOffsetAndKanjiIdx::
	push bc                                                         ; $11cc

; A = current kanji/code to look at
	ld   a, [wKanjiIdxInConversation]                               ; $11cd
	ld   b, $00                                                     ; $11d0
	ld   c, a                                                       ; $11d2
	ld   hl, wCurrConversationsKanjis                               ; $11d3
	add  hl, bc                                                     ; $11d6
	ld   a, [hl]                                                    ; $11d7

; Branch based on if less than 8
	cp   $08                                                        ; $11d8
	jr   c, .quarterBankVal                                         ; $11da

	ld   c, a                                                       ; $11dc
	jr   .done                                                      ; $11dd

.quarterBankVal:
; Store kanji/code in B
	ld   b, a                                                       ; $11df

; Get next kanji/code in struct in C
	inc  c                                                          ; $11e0
	ld   a, LOW(wCurrConversationsKanjis)                           ; $11e1
	add  c                                                          ; $11e3
	ld   l, a                                                       ; $11e4
	ld   a, HIGH(wCurrConversationsKanjis)                          ; $11e5
	adc  $00                                                        ; $11e7
	ld   h, a                                                       ; $11e9
	ld   c, [hl]                                                    ; $11ea

.done:
; HL = curr kanji/code
	ld   h, b                                                       ; $11eb
	ld   l, c                                                       ; $11ec
	pop  bc                                                         ; $11ed
	ret                                                             ; $11ee


; DE - src addr
; HL - dest addr
LoadKanjiTileDataWithTextStyle:
	push hl                                                         ; $11ef

; Load type is 1 of 16 style idxes into below table to jump to
	ld   a, [wCurrKanjiTileTextStyle]                               ; $11f0
	and  $0f                                                        ; $11f3
	sla  a                                                          ; $11f5
	ld   b, $00                                                     ; $11f7
	ld   c, a                                                       ; $11f9
	ld   hl, .table                                                 ; $11fa
	add  hl, bc                                                     ; $11fd
	
; Return to the addr to jump
	ld   a, [hl+]                                                   ; $11fe
	ld   b, [hl]                                                    ; $11ff
	ld   c, a                                                       ; $1200
	pop  hl                                                         ; $1201
	push bc                                                         ; $1202
	ret                                                             ; $1203

.table:
	dw .textStyle0_fullWhite
	dw .textStyle1_color1onWhite
	dw .textStyle2_color2onWhite
	dw .textStyle3_blackOnWhite

	dw .textStyle4_whiteOnColor1
	dw .textStyle5_fullColor1
	dw .textStyle6_color2onColor1
	dw .textStyle7_blackOnColor1

	dw .textStyle8_whiteOnColor2
	dw .textStyle9_color1onColor2
	dw .textStyleA_fullColor2
	dw .textStyleB_blackOnColor2

	dw .textStyleC_whiteOnBlack
	dw .textStyleD_color1onBlack
	dw .textStyleE_color2onBlack
	dw .textStyleF_fullBlack

.textStyle0_fullWhite:
; All bits colored 0
	push hl                                                         ; $1224
	xor  a                                                          ; $1225
	ld   b, $10                                                     ; $1226

:	ld   [hl+], a                                                   ; $1228
	ld   [hl+], a                                                   ; $1229
	dec  b                                                          ; $122a
	jr   nz, :-                                                     ; $122b

	pop  hl                                                         ; $122d
	ret                                                             ; $122e

.textStyle1_color1onWhite:
; Bits colored %10 for text bits
	push hl                                                         ; $122f
	ld   b, $10                                                     ; $1230

:	ld   a, [de]                                                    ; $1232
	ld   [hl+], a                                                   ; $1233
	xor  a                                                          ; $1234
	ld   [hl+], a                                                   ; $1235
	inc  de                                                         ; $1236
	dec  b                                                          ; $1237
	jr   nz, :-                                                     ; $1238

	pop  hl                                                         ; $123a
	ret                                                             ; $123b

.textStyle2_color2onWhite:
; Bits colored %01 for text bits
	push hl                                                         ; $123c
	ldbc $10, $ff                                                   ; $123d

:	xor  a                                                          ; $1240
	ld   [hl+], a                                                   ; $1241
	ld   a, [de]                                                    ; $1242
	ld   [hl+], a                                                   ; $1243
	inc  de                                                         ; $1244
	dec  b                                                          ; $1245
	jr   nz, :-                                                     ; $1246

	pop  hl                                                         ; $1248
	ret                                                             ; $1249

.textStyle3_blackOnWhite:
; Bits colored %11 for text bits
	push hl                                                         ; $124a
	ld   b, $10                                                     ; $124b

:	ld   a, [de]                                                    ; $124d
	ld   [hl+], a                                                   ; $124e
	ld   [hl+], a                                                   ; $124f
	inc  de                                                         ; $1250
	dec  b                                                          ; $1251
	jr   nz, :-                                                     ; $1252

	pop  hl                                                         ; $1254
	ret                                                             ; $1255

.textStyle4_whiteOnColor1:
	push hl                                                         ; $1256
	ldbc $10, $ff                                                   ; $1257

; Cleared bits = %10, set bits = %00
:	ld   a, [de]                                                    ; $125a
	xor  c                                                          ; $125b
	and  c                                                          ; $125c
	ld   [hl+], a                                                   ; $125d
	xor  a                                                          ; $125e
	ld   [hl+], a                                                   ; $125f
	inc  de                                                         ; $1260
	dec  b                                                          ; $1261
	jr   nz, :-                                                     ; $1262

	pop  hl                                                         ; $1264
	ret                                                             ; $1265

.textStyle5_fullColor1:
	push hl                                                         ; $1266
	ldbc $10, $ff                                                   ; $1267

; All bits = %10
:	ld   a, c                                                       ; $126a
	ld   [hl+], a                                                   ; $126b
	xor  a                                                          ; $126c
	ld   [hl+], a                                                   ; $126d
	inc  de                                                         ; $126e
	dec  b                                                          ; $126f
	jr   nz, :-                                                     ; $1270

	pop  hl                                                         ; $1272
	ret                                                             ; $1273

.textStyle6_color2onColor1:
	push hl                                                         ; $1274
	ldbc $10, $ff                                                   ; $1275

; Cleared bits = %10, set bits = %01
:	ld   a, [de]                                                    ; $1278
	xor  c                                                          ; $1279
	ld   [hl+], a                                                   ; $127a
	ld   a, [de]                                                    ; $127b
	ld   [hl+], a                                                   ; $127c
	inc  de                                                         ; $127d
	dec  b                                                          ; $127e
	jr   nz, :-                                                     ; $127f

	pop  hl                                                         ; $1281
	ret                                                             ; $1282

.textStyle7_blackOnColor1:
	push hl                                                         ; $1283
	ldbc $10, $ff                                                   ; $1284

; Cleared bits = %10, set bits = %11
:	ld   a, c                                                       ; $1287
	ld   [hl+], a                                                   ; $1288
	ld   a, [de]                                                    ; $1289
	ld   [hl+], a                                                   ; $128a
	inc  de                                                         ; $128b
	dec  b                                                          ; $128c
	jr   nz, :-                                                     ; $128d

	pop  hl                                                         ; $128f
	ret                                                             ; $1290

.textStyle8_whiteOnColor2:
	push hl                                                         ; $1291
	ldbc $10, $ff                                                   ; $1292

; Cleared bits = %01, set bits = %00
:	xor  a                                                          ; $1295
	ld   [hl+], a                                                   ; $1296
	ld   a, [de]                                                    ; $1297
	xor  c                                                          ; $1298
	and  c                                                          ; $1299
	ld   [hl+], a                                                   ; $129a
	inc  de                                                         ; $129b
	dec  b                                                          ; $129c
	jr   nz, :-                                                     ; $129d

	pop  hl                                                         ; $129f
	ret                                                             ; $12a0

.textStyle9_color1onColor2:
	push hl                                                         ; $12a1
	ldbc $10, $ff                                                   ; $12a2

; Cleared bits = %01, set bits = %10
:	ld   a, [de]                                                    ; $12a5
	ld   [hl+], a                                                   ; $12a6
	ld   a, [de]                                                    ; $12a7
	xor  c                                                          ; $12a8
	and  c                                                          ; $12a9
	ld   [hl+], a                                                   ; $12aa
	inc  de                                                         ; $12ab
	dec  b                                                          ; $12ac
	jr   nz, :-                                                     ; $12ad

	pop  hl                                                         ; $12af
	ret                                                             ; $12b0

.textStyleA_fullColor2:
	push hl                                                         ; $12b1
	ldbc $10, $ff                                                   ; $12b2

; All bits = %01
:	xor  a                                                          ; $12b5
	ld   [hl+], a                                                   ; $12b6
	ld   a, c                                                       ; $12b7
	ld   [hl+], a                                                   ; $12b8
	inc  de                                                         ; $12b9
	dec  b                                                          ; $12ba
	jr   nz, :-                                                     ; $12bb

	pop  hl                                                         ; $12bd
	ret                                                             ; $12be

.textStyleB_blackOnColor2:
	push hl                                                         ; $12bf
	ldbc $10, $ff                                                   ; $12c0

; Cleared bits = %01, set bits = %11
:	ld   a, [de]                                                    ; $12c3
	ld   [hl+], a                                                   ; $12c4
	ld   a, c                                                       ; $12c5
	ld   [hl+], a                                                   ; $12c6
	inc  de                                                         ; $12c7
	dec  b                                                          ; $12c8
	jr   nz, :-                                                     ; $12c9

	pop  hl                                                         ; $12cb
	ret                                                             ; $12cc

.textStyleC_whiteOnBlack:
	push hl                                                         ; $12cd
	ldbc $10, $ff                                                   ; $12ce

; Cleared bits = %11, set bits = %00
:	ld   a, [de]                                                    ; $12d1
	xor  c                                                          ; $12d2
	ld   [hl+], a                                                   ; $12d3
	ld   [hl+], a                                                   ; $12d4
	inc  de                                                         ; $12d5
	dec  b                                                          ; $12d6
	jr   nz, :-                                                     ; $12d7

	pop  hl                                                         ; $12d9
	ret                                                             ; $12da

.textStyleD_color1onBlack:
	push hl                                                         ; $12db
	ldbc $10, $ff                                                   ; $12dc

; Cleared bits = %11, set bits = %10
:	ld   a, c                                                       ; $12df
	ld   [hl+], a                                                   ; $12e0
	ld   a, [de]                                                    ; $12e1
	xor  c                                                          ; $12e2
	ld   [hl+], a                                                   ; $12e3
	inc  de                                                         ; $12e4
	dec  b                                                          ; $12e5
	jr   nz, :-                                                     ; $12e6

	pop  hl                                                         ; $12e8
	ret                                                             ; $12e9

.textStyleE_color2onBlack:
	push hl                                                         ; $12ea
	ldbc $10, $ff                                                   ; $12eb

; Cleared bits = %11, set bits = %01
:	ld   a, [de]                                                    ; $12ee
	xor  c                                                          ; $12ef
	ld   [hl+], a                                                   ; $12f0
	ld   a, c                                                       ; $12f1
	ld   [hl+], a                                                   ; $12f2
	inc  de                                                         ; $12f3
	dec  b                                                          ; $12f4
	jr   nz, :-                                                     ; $12f5

	pop  hl                                                         ; $12f7
	ret                                                             ; $12f8

.textStyleF_fullBlack:
	push hl                                                         ; $12f9
	ldbc $10, $ff                                                   ; $12fa

; All bits = %11
:	ld   a, c                                                       ; $12fd
	ld   [hl+], a                                                   ; $12fe
	ld   [hl+], a                                                   ; $12ff
	inc  de                                                         ; $1300
	dec  b                                                          ; $1301
	jr   nz, :-                                                     ; $1302

	pop  hl                                                         ; $1304
	ret                                                             ; $1305


; A - src rom bank
; DE - src addr
; HL - dest addr
LoadInstantText::
; Preserve and set new rom bank
	ld   [wGenericFarBank], a                                       ; $1306
	ld   a, [wRomBank]                                              ; $1309

	push af                                                         ; $130c
	ld   a, [wGenericFarBank]                                       ; $130d
	ld   [wRomBank], a                                              ; $1310
	ld   [rROMB0], a                                                ; $1313
	
; Set text style to the default
	ld   a, [wDefaultKanjiTileTextStyle]                            ; $1316
	ld   [wCurrKanjiTileTextStyle], a                               ; $1319

.toNextKanji:
; B = 0, 1st quarter bank of kanji
	ld   b, $00                                                     ; $131c

; We're done once 0 is found
	ld   a, [de]                                                    ; $131e
	inc  de                                                         ; $131f
	or   a                                                          ; $1320
	jr   z, .done                                                   ; $1321

; Kanji >= $10 is in the 1st quarter bank offset
	cp   $10                                                        ; $1323
	jr   nc, .regularKanji                                          ; $1325

; Else the 1st byte is the quarter bank
	cp   $08                                                        ; $1327
	jr   c, .quarterBankOffsetAndKanji                              ; $1329

; Handle $08-$0f, converting to 0-7 as a double idx into the table below
	push hl                                                         ; $132b
	sub  $08                                                        ; $132c
	sla  a                                                          ; $132e
	ld   b, $00                                                     ; $1330
	ld   c, a                                                       ; $1332
	ld   hl, .specialCodesTable                                     ; $1333
	add  hl, bc                                                     ; $1336

; Get word in table, and push to return to it
	ld   a, [hl+]                                                   ; $1337
	ld   b, [hl]                                                    ; $1338
	ld   c, a                                                       ; $1339
	pop  hl                                                         ; $133a
	push bc                                                         ; $133b
	ret                                                             ; $133c

.specialCode0a:
; Set text style
	ld   a, [de]                                                    ; $133d
	inc  de                                                         ; $133e
	ld   [wCurrKanjiTileTextStyle], a                               ; $133f
	jr   .toNextKanji                                               ; $1342

.specialCodeExcept0a:
; Clear curr col
	xor  a                                                          ; $1344

if def(VWF)
	call OtherSpecialTextByte
else
	ld   [wCurrKanjiCol], a                                         ; $1345
endc

	ld   a, [wNumKanjiTextBoxRows]                                  ; $1348
	ld   b, a                                                       ; $134b

; Inc row
	ld   a, [wCurrKanjiRow]                                         ; $134c
	inc  a                                                          ; $134f
	ld   [wCurrKanjiRow], a                                         ; $1350

; If breached num rows, clear row to loop back up
	cp   b                                                          ; $1353
	jr   c, .toNextKanji                                            ; $1354

	xor  a                                                          ; $1356
	ld   [wCurrKanjiRow], a                                         ; $1357
	jr   .toNextKanji                                               ; $135a

.quarterBankOffsetAndKanji:
; B = set quarter bank, next byte is the kanji in there
	ld   b, a                                                       ; $135c
	ld   a, [de]                                                    ; $135d
	inc  de                                                         ; $135e

.regularKanji:
; Kanji in C, load its tile data, then continue to the next kanji
if def(VWF)
	jp   InstantSaveKanjiIdx
.instantSaveRet:
else
	ld   c, a                                                       ; $135f
	push hl                                                         ; $1360
	push de                                                         ; $1361
endc
	call LoadInstantKanjiTileData                                   ; $1362
	pop  de                                                         ; $1365
	pop  hl                                                         ; $1366
	jr   .toNextKanji                                               ; $1367

.done:
	pop  af                                                         ; $1369
	ld   [wRomBank], a                                              ; $136a
	ld   [rROMB0], a                                                ; $136d
	ret                                                             ; $1370

.specialCodesTable:
	dw .specialCodeExcept0a
	dw .specialCodeExcept0a
	dw .specialCode0a
	dw .specialCodeExcept0a
	dw .specialCodeExcept0a
	dw .specialCodeExcept0a
	dw .specialCodeExcept0a
if def(VWF)
	dw VWFInstantCode0fh
else
	dw .specialCodeExcept0a
endc


; B - quarter bank offset
; C - kanji idx
; HL - dest addr
LoadInstantKanjiTileData:
; Return if B and C == 0
	ld   a, b                                                       ; $1381
	ld   [wCurrKanjiDataQuarterBankOffset], a                       ; $1382
	or   c                                                          ; $1385
	ret  z                                                          ; $1386

; DE = dest addr
	ld   d, h                                                       ; $1387
	ld   e, l                                                       ; $1388

; HL = src addr of kanji tile data
; Shifts and rotates below turns 1 into $1000
	ld   hl, $4000                                                  ; $1389
	ld   a, [wCurrKanjiDataQuarterBankOffset]                       ; $138c
	and  $03                                                        ; $138f
	ld   b, a                                                       ; $1391
	sla  c                                                          ; $1392
	rl   b                                                          ; $1394
	sla  c                                                          ; $1396
	rl   b                                                          ; $1398
	sla  c                                                          ; $139a
	rl   b                                                          ; $139c
	sla  c                                                          ; $139e
	rl   b                                                          ; $13a0
	add  hl, bc                                                     ; $13a2

; Push src, then dest
	push hl                                                         ; $13a3
	push de                                                         ; $13a4

; HL is double offsetted by num cols
	ld   a, [wNumKanjiTextBoxCols]                                  ; $13a5
	sla  a                                                          ; $13a8
	ld   b, $00                                                     ; $13aa
	ld   c, a                                                       ; $13ac
	ld   hl, KanjiTileDataDestOffsets                               ; $13ad
	add  hl, bc                                                     ; $13b0

; DE = num bytes per row
	ld   e, [hl]                                                    ; $13b1
	inc  hl                                                         ; $13b2
	ld   d, [hl]                                                    ; $13b3

; Pop dest, then add col * $20 (num bytes per character)
	pop  hl                                                         ; $13b4
	ld   a, [wCurrKanjiCol]                                         ; $13b5
	ld   b, a                                                       ; $13b8
	ld   c, $00                                                     ; $13b9
	srl  b                                                          ; $13bb
	rr   c                                                          ; $13bd
	srl  b                                                          ; $13bf
	rr   c                                                          ; $13c1
	srl  b                                                          ; $13c3
	rr   c                                                          ; $13c5
	add  hl, bc                                                     ; $13c7

; For every row, add on num bytes per row onto HL (dest)
	ld   a, [wCurrKanjiRow]                                         ; $13c8

.loopAddRowBytes:
	or   a                                                          ; $13cb
	jr   z, .afterDestOffset                                        ; $13cc

	add  hl, de                                                     ; $13ce
	dec  a                                                          ; $13cf
	jr   .loopAddRowBytes                                           ; $13d0

.afterDestOffset:
; Pop src address
	pop  de                                                         ; $13d2

; Set kanji tile data bank, with 4 quarters = +1 to bank
	ld   a, [wCurrKanjiDataQuarterBankOffset]                       ; $13d3
	srl  a                                                          ; $13d6
	srl  a                                                          ; $13d8
	add  KANJI_TILE_DATA_BANK                                       ; $13da
	ld   [wGenericFarBank], a                                       ; $13dc

; Preserve rom bank and set the one with our kanji tile data
	ld   a, [wRomBank]                                              ; $13df
	push af                                                         ; $13e2

	ld   a, [wGenericFarBank]                                       ; $13e3
	ld   [wRomBank], a                                              ; $13e6
	ld   [rROMB0], a                                                ; $13e9

if def(VWF)
	jp   VWFLoadInstantKanjiTileDataWithTextStyle
else
	call LoadKanjiTileDataWithTextStyle                             ; $13ec
endc

; Restore rom bank
	pop  af                                                         ; $13ef
	ld   [wRomBank], a                                              ; $13f0
	ld   [rROMB0], a                                                ; $13f3

; B = num textbox cols
	ld   a, [wNumKanjiTextBoxCols]                                  ; $13f6
	ld   b, a                                                       ; $13f9

; Inc to next col, clearing col if we've reached the end
	ld   a, [wCurrKanjiCol]                                         ; $13fa
	inc  a                                                          ; $13fd
	ld   [wCurrKanjiCol], a                                         ; $13fe

	cp   b                                                          ; $1401
	jr   c, .done                                                   ; $1402

	xor  a                                                          ; $1404
	ld   [wCurrKanjiCol], a                                         ; $1405

.done:
	ret                                                             ; $1408


ClearTextBoxDimensionsAndSetDefaultTextStyle::
	xor  a                                                          ; $1409
	ld   [wLastKanjiIdxInCurrTextbox], a                            ; $140a
	ld   [wKanjiIdxInConversation], a                               ; $140d
if def(VWF)
	call ClearVwfVars
else
	ld   [wCurrKanjiCol], a                                         ; $1410
endc
	ld   [wCurrKanjiRow], a                                         ; $1413

	ld   a, KTS_BLACK_ON_WHITE                                      ; $1416
	ld   [wCurrKanjiTileTextStyle], a                               ; $1418
	ret                                                             ; $141b


ClearKanjiIdxInConvoAndTextBox::
	xor  a                                                          ; $141c
	ld   [wLastKanjiIdxInCurrTextbox], a                            ; $141d
	ld   [wKanjiIdxInConversation], a                               ; $1420
	ret                                                             ; $1423


; B - num cols
; C - num rows
SetKanjiTextBoxDimensions::
	ld   a, b                                                       ; $1424
	ld   [wNumKanjiTextBoxCols], a                                  ; $1425
	ld   a, c                                                       ; $1428
	ld   [wNumKanjiTextBoxRows], a                                  ; $1429
	xor  a                                                          ; $142c
if def(VWF)
	call ClearVwfVars
else
	ld   [wCurrKanjiCol], a                                         ; $142d
endc
	ld   [wCurrKanjiRow], a                                         ; $1430
	ret                                                             ; $1433


; B - text col idx
; C - text row idx
SetCurrKanjiColAndRowToDrawOn::
; Jump if num cols set to 0
	ld   a, [wNumKanjiTextBoxCols]                                  ; $1434
	or   a                                                          ; $1437
	jr   z, .checkRow                                               ; $1438

; E = num cols, A = text col idx
	ld   e, a                                                       ; $143a

; While col idx >= num cols, sub num cols, ie wrapped col to draw on
	ld   a, b                                                       ; $143b

.loopForCol:
	cp   e                                                          ; $143c
	jr   c, :+                                                      ; $143d

	sub  e                                                          ; $143f
	jr   .loopForCol                                                ; $1440

if def(VWF)
:	call ClearVwfVars
else
:	ld   [wCurrKanjiCol], a                                         ; $1442
endc

.checkRow:
; Jump if num rows set to 0
	ld   a, [wNumKanjiTextBoxRows]                                  ; $1445
	or   a                                                          ; $1448
	jr   z, .done                                                   ; $1449

; E = num rows, A = text row idx
	ld   e, a                                                       ; $144b

; While row idx >= num row, sub num rows, ie wrapped row to draw on
	ld   a, c                                                       ; $144c

.loopForRow:
	cp   e                                                          ; $144d
	jr   c, :+                                                      ; $144e

	sub  e                                                          ; $1450
	jr   .loopForRow                                                ; $1451

:	ld   [wCurrKanjiRow], a                                         ; $1453

.done:
	ret                                                             ; $1456


; H - the quarter bank offset to load, if non-0
; L - the 2nd kanji to load
AddQuarterBankOffsetAndKanjiToConvoStructForCurrTextBox::
	push hl                                                         ; $1457
	ld   a, h                                                       ; $1458
	or   a                                                          ; $1459
	call nz, AddKanjiToConvoStructForCurrTextBox                    ; $145a
	pop  hl                                                         ; $145d
	ld   a, l                                                       ; $145e

; A - kanji idx to add for current textbox
AddKanjiToConvoStructForCurrTextBox::
; Last idx in textbox is also the idx in convo kanjis we want to write to
	push af                                                         ; $145f
	ld   a, [wLastKanjiIdxInCurrTextbox]                            ; $1460
	ld   b, $00                                                     ; $1463
	ld   c, a                                                       ; $1465
	ld   hl, wCurrConversationsKanjis                               ; $1466
	add  hl, bc                                                     ; $1469

; Inc kanji idx in textbox
	inc  a                                                          ; $146a
	ld   [wLastKanjiIdxInCurrTextbox], a                            ; $146b

; Set orig A in convo kanjis struct
	pop  af                                                         ; $146e
	ld   [hl], a                                                    ; $146f
	ret                                                             ; $1470


; Ret A == 0 if we've reached the end of the textbox
CheckIfReachedLastKanjiIdxInCurrTextBox::
	push hl                                                         ; $1471
	ld   hl, wLastKanjiIdxInCurrTextbox                             ; $1472
	ld   a, [wKanjiIdxInConversation]                               ; $1475
	sub  [hl]                                                       ; $1478
	pop  hl                                                         ; $1479
	ret                                                             ; $147a


; Ret A == 0 if punctuation
CheckIfNextTextCharIsPunctuation::
; Return if at the end of the textbox already
	call CheckIfReachedLastKanjiIdxInCurrTextBox                    ; $147b
	or   a                                                          ; $147e
	ret  z                                                          ; $147f

	push bc                                                         ; $1480
	push hl                                                         ; $1481

; If quarter bank offset = 2+ (kanji), return with $ff (not punctuation)
	call HLequNextKanjiQuarterBankOffsetAndKanjiIdx                 ; $1482
	ld   a, h                                                       ; $1485
	cp   $02                                                        ; $1486
	jr   nc, .returnNotPunctuation                                  ; $1488

; L = char / 8, A = char % 8 in upper 3 bits
	xor  a                                                          ; $148a
	srl  h                                                          ; $148b
	rr   l                                                          ; $148d
	rra                                                             ; $148f
	srl  l                                                          ; $1490
	rra                                                             ; $1492
	srl  l                                                          ; $1493
	rra                                                             ; $1495

; A becomes char % 8
	srl  a                                                          ; $1496
	swap a                                                          ; $1498

; Get table value idxed by HL (8 chars/bits per byte), into H
	ld   bc, .punctuationBitsTable                                  ; $149a
	add  hl, bc                                                     ; $149d
	ld   h, [hl]                                                    ; $149e

; Loop until we've shifted the associated bit into carry
; Bits left to right are associated with char gfx left to right
.loop:
	sla  h                                                          ; $149f
	dec  a                                                          ; $14a1
	bit  7, a                                                       ; $14a2
	jr   z, .loop                                                   ; $14a4

; Bit set returns $ff
	jr   c, .returnNotPunctuation                                   ; $14a6

; Bit clear returns $00 (punctuation)
	xor  a                                                          ; $14a8
	jr   .done                                                      ; $14a9

.returnNotPunctuation:
	ld   a, $ff                                                     ; $14ab

.done:
	pop  hl                                                         ; $14ad
	pop  bc                                                         ; $14ae
	ret                                                             ; $14af

.punctuationBitsTable:
	db $00, $00
	db $7f, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $fc
	db $bf, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $bf, $ff
	db $cf, $80
	db $00, $00
	db $08, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff
	db $ff, $ff


; H - next kanji's quarter bank offset
; L - kanji's idx
; Returns additional counter in A
; Smallest addition for sequential periods $09 and $ff
; Small addition for inverted comma, ? and !
; Medium addition for full stop-period $f3
; Big addition for comma and period
; Biggest addition for inverted comma
GetCharAdditionalSpeedCounter::
	ld   a, h                                                       ; $14f0
	ld   h, $00                                                     ; $14f1
	or   a                                                          ; $14f3
	jr   nz, .returnH                                               ; $14f4

; Quarter bank offset == 0
	ld   a, l                                                       ; $14f6

; Check if kanji == $9e in Bank 6 $4000 (inverted comma)
	cp   $9e                                                        ; $14f7
	jr   nz, :+                                                     ; $14f9

	ld   h, $06                                                     ; $14fb
	jr   .returnH                                                   ; $14fd

; Check if kanji == $9f in Bank 6 $4000 (star-like period)
:	cp   $9f                                                        ; $14ff
	jr   nz, :+                                                     ; $1501

	ld   h, $0c                                                     ; $1503
	jr   .returnH                                                   ; $1505

; Check if kanji == $e1 in Bank 6 $4000 (comma)
:	cp   $e1                                                        ; $1507
	jr   nz, :+                                                     ; $1509

	ld   h, $0a                                                     ; $150b
	jr   .returnH                                                   ; $150d

; Check if kanji == $f2 in Bank 6 $4000 (period)
:	cp   $f2                                                        ; $150f
	jr   nz, :+                                                     ; $1511

	ld   h, $0a                                                     ; $1513
	jr   .returnH                                                   ; $1515

; Check if kanji == $f3 in Bank 6 $4000 (hovering period)
:	cp   $f3                                                        ; $1517
	jr   nz, :+                                                     ; $1519

	ld   h, $08                                                     ; $151b
	jr   .returnH                                                   ; $151d

; Check if kanji == $f9 in Bank 6 $4000 (?)
:	cp   $f9                                                        ; $151f
	jr   nz, :+                                                     ; $1521

	ld   h, $06                                                     ; $1523
	jr   .returnH                                                   ; $1525

; Check if kanji == $fa in Bank 6 $4000 (!)
:	cp   $fa                                                        ; $1527
	jr   nz, :+                                                     ; $1529

	ld   h, $06                                                     ; $152b
	jr   .returnH                                                   ; $152d

; Check if kanji == $ff in Bank 6 $4000 (2 hovering periods)
:	cp   $ff                                                        ; $152f
	jr   nz, :+                                                     ; $1531

	ld   h, $02                                                     ; $1533
	jr   .returnH                                                   ; $1535

; Check if kanji == $09 in Bank 6 $4000 (another hovering period)
:	cp   $09                                                        ; $1537
	jr   nz, .returnH                                               ; $1539

	ld   h, $02                                                     ; $153b

.returnH:
	ld   a, h                                                       ; $153d
	ret                                                             ; $153e


SetDefaultAndCurrKanjiTileTextStyle::
	ld   [wDefaultKanjiTileTextStyle], a                            ; $153f
	ld   [wCurrKanjiTileTextStyle], a                               ; $1542
	ret                                                             ; $1545


GameState00_Init:
; Only use the 1 sram bank
	xor  a                                                          ; $1546
	ld   [rRAMB], a                                                 ; $1547
	ld   [wSramBank], a                                             ; $154a

; Allow sound updating in vblank, set sram seed to any 8-bit value
	ld   a, $ff                                                     ; $154d
	ld   [wSoundUpdateEnabled], a                                   ; $154f
	
	ld   a, $ff                                                     ; $1552
	ld   [wRandomNumRange], a                                       ; $1554
	call UpdateSramRandomSeed                                       ; $1557

;
	xor  a                                           ; $155a: $af
	ld   [$c653], a                                  ; $155b: $ea $53 $c6
	ld   [$c654], a                                  ; $155e: $ea $54 $c6

; Call a stub func 3 times
rept 3
	M_FarCall Stub_15e8
endr

;
	M_FarCall Func_0c_7360

; Jump if booted A reg is $11 for GBC
	ld   a, [wIsGBC]                                                ; $15b1
	cp   $11                                                        ; $15b4
	jr   z, .isGBC                                                  ; $15b6

	M_FarCall SetDMGState
	ret                                                             ; $15cc

.isGBC:
if def(VWF)
	call EnInitFlags
else
; Skip intro state if we're soft-resetting
	ld   a, [wVisitedTitleScreen]                                   ; $15cd
endc
	or   a                                                          ; $15d0
	jr   nz, .skipIntro                                             ; $15d1

; Set intro game state
	ld   a, GS_INTRO                                                ; $15d3
	ld   [wGameState], a                                            ; $15d5
	xor  a                                                          ; $15d8
	ld   [wGameSubstate], a                                         ; $15d9
	ret                                                             ; $15dc

.skipIntro:
; Else go to the pre-title screen state where a script may play
	ld   a, GS_PRE_TITLE_SCREEN                                     ; $15dd
	ld   [wGameState], a                                            ; $15df
	xor  a                                                          ; $15e2
	ld   [wGameSubstate], a                                         ; $15e3
	ret                                                             ; $15e6


GameState01_Stub:
	ret                                                             ; $15e7


Stub_15e8:
	ret                                                             ; $15e8


SECTION "Bank $00, $1700", ROM0[$1700]

Data_1700:
	nop                                              ; $1700: $00
	nop                                              ; $1701: $00
	ld   b, b                                        ; $1702: $40
	db   $fc                                         ; $1703: $fc
	dec  h                                           ; $1704: $25
	nop                                              ; $1705: $00
	ld   b, b                                        ; $1706: $40
	db   $fd                                         ; $1707: $fd
	add  hl, sp                                      ; $1708: $39
	nop                                              ; $1709: $00
	ld   b, b                                        ; $170a: $40
	cp   $76                                         ; $170b: $fe $76
	nop                                              ; $170d: $00
	ld   b, b                                        ; $170e: $40
	rst  $38                                         ; $170f: $ff
	rst  $38                                         ; $1710: $ff
	rst  $38                                         ; $1711: $ff
	ld   bc, $0100                                   ; $1712: $01 $00 $01
	nop                                              ; $1715: $00
	ld   bc, $0101                                   ; $1716: $01 $01 $01
	nop                                              ; $1719: $00
	ld   bc, $0102                                   ; $171a: $01 $02 $01
	nop                                              ; $171d: $00
	ld   bc, $0103                                   ; $171e: $01 $03 $01
	nop                                              ; $1721: $00
	ld   bc, $0104                              ; $1722: $01 $04 $01
	nop                                              ; $1725: $00
	ld   bc, $0105                                   ; $1726: $01 $05 $01
	nop                                              ; $1729: $00
	ld   bc, $0106                                   ; $172a: $01 $06 $01
	nop                                              ; $172d: $00
	ld   bc, $0107                                   ; $172e: $01 $07 $01
	nop                                              ; $1731: $00
	ld   bc, $0108                                   ; $1732: $01 $08 $01
	nop                                              ; $1735: $00
	ld   bc, $0109                                   ; $1736: $01 $09 $01
	nop                                              ; $1739: $00
	ld   bc, $010a                                   ; $173a: $01 $0a $01
	nop                                              ; $173d: $00
	ld   bc, $010b                                   ; $173e: $01 $0b $01
	nop                                              ; $1741: $00
	ld   bc, $010c                                   ; $1742: $01 $0c $01
	nop                                              ; $1745: $00
	ld   bc, $010d                                   ; $1746: $01 $0d $01
	nop                                              ; $1749: $00
	ld   bc, $010e                                   ; $174a: $01 $0e $01
	nop                                              ; $174d: $00
	ld   bc, $010f                                   ; $174e: $01 $0f $01
	nop                                              ; $1751: $00
	ld   bc, $0110                                   ; $1752: $01 $10 $01
	nop                                              ; $1755: $00
	inc  b                                           ; $1756: $04
	ld   de, $003c                                   ; $1757: $11 $3c $00
	inc  b                                           ; $175a: $04
	dec  d                                           ; $175b: $15
	inc  a                                           ; $175c: $3c
	nop                                              ; $175d: $00
	inc  b                                           ; $175e: $04
	add  hl, de                                      ; $175f: $19
	inc  a                                           ; $1760: $3c
	nop                                              ; $1761: $00
	inc  b                                           ; $1762: $04
	dec  e                                           ; $1763: $1d
	inc  a                                           ; $1764: $3c
	nop                                              ; $1765: $00
	inc  b                                           ; $1766: $04
	ld   hl, $003c                                   ; $1767: $21 $3c $00
	inc  b                                           ; $176a: $04
	dec  h                                           ; $176b: $25
	inc  a                                           ; $176c: $3c
	nop                                              ; $176d: $00
	inc  b                                           ; $176e: $04
	add  hl, hl                                      ; $176f: $29
	inc  a                                           ; $1770: $3c
	nop                                              ; $1771: $00
	inc  b                                           ; $1772: $04
	dec  l                                           ; $1773: $2d
	inc  a                                           ; $1774: $3c
	nop                                              ; $1775: $00
	inc  b                                           ; $1776: $04
	ld   sp, $003c                                   ; $1777: $31 $3c $00
	inc  b                                           ; $177a: $04
	dec  [hl]                                        ; $177b: $35
	inc  a                                           ; $177c: $3c
	nop                                              ; $177d: $00
	inc  b                                           ; $177e: $04
	add  hl, sp                                      ; $177f: $39
	inc  a                                           ; $1780: $3c
	nop                                              ; $1781: $00
	inc  b                                           ; $1782: $04
	dec  a                                           ; $1783: $3d
	inc  a                                           ; $1784: $3c
	nop                                              ; $1785: $00
	inc  b                                           ; $1786: $04
	ld   b, c                                        ; $1787: $41
	inc  a                                           ; $1788: $3c
	nop                                              ; $1789: $00
	inc  b                                           ; $178a: $04
	ld   b, l                                        ; $178b: $45
	inc  a                                           ; $178c: $3c
	nop                                              ; $178d: $00
	inc  b                                           ; $178e: $04
	ld   c, c                                        ; $178f: $49
	inc  a                                           ; $1790: $3c
	nop                                              ; $1791: $00
	inc  b                                           ; $1792: $04
	ld   c, l                                        ; $1793: $4d
	inc  a                                           ; $1794: $3c
	nop                                              ; $1795: $00
	inc  b                                           ; $1796: $04
	ld   d, c                                        ; $1797: $51
	inc  a                                           ; $1798: $3c
	nop                                              ; $1799: $00
	inc  b                                           ; $179a: $04
	ld   d, l                                        ; $179b: $55
	inc  a                                           ; $179c: $3c
	nop                                              ; $179d: $00
	inc  b                                           ; $179e: $04
	ld   e, c                                        ; $179f: $59
	inc  a                                           ; $17a0: $3c
	nop                                              ; $17a1: $00
	inc  b                                           ; $17a2: $04
	ld   e, l                                        ; $17a3: $5d
	inc  a                                           ; $17a4: $3c
	nop                                              ; $17a5: $00
	ld   bc, $0161                                   ; $17a6: $01 $61 $01
	nop                                              ; $17a9: $00
	ld   bc, $0162                                   ; $17aa: $01 $62 $01
	nop                                              ; $17ad: $00
	ld   bc, $0163                                   ; $17ae: $01 $63 $01
	nop                                              ; $17b1: $00
	ld   bc, $0164                                   ; $17b2: $01 $64 $01
	nop                                              ; $17b5: $00
	ld   bc, $0165                                   ; $17b6: $01 $65 $01
	nop                                              ; $17b9: $00
	ld   bc, $0166                                   ; $17ba: $01 $66 $01
	nop                                              ; $17bd: $00
	ld   bc, $0167                                   ; $17be: $01 $67 $01
	nop                                              ; $17c1: $00
	ld   bc, $0168                                   ; $17c2: $01 $68 $01
	nop                                              ; $17c5: $00
	ld   bc, $0169                                   ; $17c6: $01 $69 $01
	nop                                              ; $17c9: $00
	ld   bc, $016a                                   ; $17ca: $01 $6a $01
	nop                                              ; $17cd: $00
	ld   bc, $016b                                   ; $17ce: $01 $6b $01
	nop                                              ; $17d1: $00
	ld   bc, $016c                                   ; $17d2: $01 $6c $01
	nop                                              ; $17d5: $00
	ld   bc, $016d                                   ; $17d6: $01 $6d $01
	nop                                              ; $17d9: $00
	ld   bc, $016e                                   ; $17da: $01 $6e $01
	nop                                              ; $17dd: $00
	ld   bc, $016f                                   ; $17de: $01 $6f $01
	nop                                              ; $17e1: $00
	ld   bc, $0170                                   ; $17e2: $01 $70 $01
	nop                                              ; $17e5: $00
	ld   bc, $0171                                   ; $17e6: $01 $71 $01
	nop                                              ; $17e9: $00
	ld   bc, $0172                                   ; $17ea: $01 $72 $01
	nop                                              ; $17ed: $00
	ld   bc, $0173                                   ; $17ee: $01 $73 $01
	nop                                              ; $17f1: $00
	ld   [bc], a                                     ; $17f2: $02
	ld   [hl], h                                     ; $17f3: $74
	inc  bc                                          ; $17f4: $03
	nop                                              ; $17f5: $00
	ld   bc, $0176                                   ; $17f6: $01 $76 $01
	nop                                              ; $17f9: $00
	ld   bc, $0177                                   ; $17fa: $01 $77 $01
	nop                                              ; $17fd: $00
	ld   bc, $0178                                   ; $17fe: $01 $78 $01
	nop                                              ; $1801: $00
	ld   bc, $0179                                   ; $1802: $01 $79 $01
	nop                                              ; $1805: $00
	ld   bc, $017a                                   ; $1806: $01 $7a $01
	nop                                              ; $1809: $00
	ld   bc, $017b                                   ; $180a: $01 $7b $01
	nop                                              ; $180d: $00
	ld   bc, $017c                                   ; $180e: $01 $7c $01
	nop                                              ; $1811: $00
	ld   bc, $017d                                   ; $1812: $01 $7d $01
	nop                                              ; $1815: $00
	ld   bc, $017e                                   ; $1816: $01 $7e $01
	nop                                              ; $1819: $00
	ld   bc, $017f                                   ; $181a: $01 $7f $01
	nop                                              ; $181d: $00
	ld   bc, $0180                                   ; $181e: $01 $80 $01
	nop                                              ; $1821: $00
	ld   bc, $0281                                   ; $1822: $01 $81 $02
	nop                                              ; $1825: $00
	ld   bc, $0482                                   ; $1826: $01 $82 $04
	nop                                              ; $1829: $00
	ld   bc, $0883                                   ; $182a: $01 $83 $08
	nop                                              ; $182d: $00
	ld   bc, $1084                                   ; $182e: $01 $84 $10
	nop                                              ; $1831: $00
	ld   bc, $2085                                   ; $1832: $01 $85 $20
	nop                                              ; $1835: $00
	ld   bc, $0186                                   ; $1836: $01 $86 $01
	nop                                              ; $1839: $00
	ld   bc, $0187                                   ; $183a: $01 $87 $01
	nop                                              ; $183d: $00
	ld   bc, $0188                                   ; $183e: $01 $88 $01
	nop                                              ; $1841: $00
	ld   bc, $0189                                   ; $1842: $01 $89 $01
	nop                                              ; $1845: $00
	ld   bc, $018a                                   ; $1846: $01 $8a $01
	nop                                              ; $1849: $00
	ld   bc, $018b                                   ; $184a: $01 $8b $01
	nop                                              ; $184d: $00
	ld   bc, $018c                                   ; $184e: $01 $8c $01
	nop                                              ; $1851: $00
	ld   bc, $018d                                   ; $1852: $01 $8d $01
	nop                                              ; $1855: $00
	ld   bc, $018e                                   ; $1856: $01 $8e $01
	nop                                              ; $1859: $00
	ld   bc, $018f                                   ; $185a: $01 $8f $01
	nop                                              ; $185d: $00
	ld   bc, $0190                                   ; $185e: $01 $90 $01
	nop                                              ; $1861: $00
	ld   bc, $0191                                   ; $1862: $01 $91 $01
	nop                                              ; $1865: $00
	ld   bc, $0192                                   ; $1866: $01 $92 $01
	nop                                              ; $1869: $00
	ld   bc, $0193                                   ; $186a: $01 $93 $01
	nop                                              ; $186d: $00
	ld   bc, $0194                                   ; $186e: $01 $94 $01
	nop                                              ; $1871: $00
	ld   bc, $0195                                   ; $1872: $01 $95 $01
	nop                                              ; $1875: $00
	ld   bc, $0196                                   ; $1876: $01 $96 $01
	nop                                              ; $1879: $00
	ld   bc, $0197                                   ; $187a: $01 $97 $01
	nop                                              ; $187d: $00
	ld   bc, $0298                                   ; $187e: $01 $98 $02
	nop                                              ; $1881: $00
	ld   bc, $0299                                   ; $1882: $01 $99 $02
	nop                                              ; $1885: $00
	ld   bc, $029a                                   ; $1886: $01 $9a $02
	nop                                              ; $1889: $00
	ld   bc, $029b                                   ; $188a: $01 $9b $02
	nop                                              ; $188d: $00
	ld   bc, $029c                                   ; $188e: $01 $9c $02
	nop                                              ; $1891: $00
	inc  b                                           ; $1892: $04
	sbc  l                                           ; $1893: $9d
	inc  a                                           ; $1894: $3c
	nop                                              ; $1895: $00
	ld   bc, $01a1                                   ; $1896: $01 $a1 $01
	nop                                              ; $1899: $00
	ld   bc, $01a2                                   ; $189a: $01 $a2 $01
	nop                                              ; $189d: $00
	and  b                                           ; $189e: $a0
	jr   jr_000_18a1                                 ; $189f: $18 $00

jr_000_18a1:
	ld   bc, $3512                                   ; $18a1: $01 $12 $35
	adc  d                                           ; $18a4: $8a
	call $ffee                                       ; $18a5: $cd $ee $ff
	rst  $38                                         ; $18a8: $ff
	cp   $ed                                         ; $18a9: $fe $ed
	jp   z, $3285                            ; $18ab: $ca $85 $32

	ld   de, $0100                                   ; $18ae: $11 $00 $01
	inc  hl                                          ; $18b1: $23
	ld   b, l                                        ; $18b2: $45
	ld   h, a                                        ; $18b3: $67
	adc  c                                           ; $18b4: $89
	xor  e                                           ; $18b5: $ab
	call $feef                                       ; $18b6: $cd $ef $fe
	call c, $98ba                                    ; $18b9: $dc $ba $98
	halt                                             ; $18bc: $76
	ld   d, h                                        ; $18bd: $54
	ld   [hl-], a                                    ; $18be: $32
	db   $10                                         ; $18bf: $10
	rst  $38                                         ; $18c0: $ff
	rst  $38                                         ; $18c1: $ff
	rst  $38                                         ; $18c2: $ff
	rst  $38                                         ; $18c3: $ff
	rst  $38                                         ; $18c4: $ff
	rst  $38                                         ; $18c5: $ff
	rst  $38                                         ; $18c6: $ff
	rst  $38                                         ; $18c7: $ff
	nop                                              ; $18c8: $00
	nop                                              ; $18c9: $00
	nop                                              ; $18ca: $00
	nop                                              ; $18cb: $00
	nop                                              ; $18cc: $00
	nop                                              ; $18cd: $00
	nop                                              ; $18ce: $00
	nop                                              ; $18cf: $00
	rst  $38                                         ; $18d0: $ff
	xor  $dd                                         ; $18d1: $ee $dd
	call z, $aabb                                    ; $18d3: $cc $bb $aa
	sbc  c                                           ; $18d6: $99
	adc  b                                           ; $18d7: $88
	ld   [hl], a                                     ; $18d8: $77
	ld   h, [hl]                                     ; $18d9: $66
	ld   d, l                                        ; $18da: $55
	ld   b, h                                        ; $18db: $44
	inc  sp                                          ; $18dc: $33
	ld   [hl+], a                                    ; $18dd: $22
	ld   de, $ff00                                   ; $18de: $11 $00 $ff
	rst  $38                                         ; $18e1: $ff
	sbc  $bd                                         ; $18e2: $de $bd
	inc  h                                           ; $18e4: $24
	ld   [de], a                                     ; $18e5: $12
	nop                                              ; $18e6: $00
	nop                                              ; $18e7: $00
	nop                                              ; $18e8: $00
	nop                                              ; $18e9: $00
	ld   hl, $db42                                   ; $18ea: $21 $42 $db
	db   $ed                                         ; $18ed: $ed
	rst  $38                                         ; $18ee: $ff
	rst  $38                                         ; $18ef: $ff
	rst  $38                                         ; $18f0: $ff
	rst  $38                                         ; $18f1: $ff
	xor  $ca                                         ; $18f2: $ee $ca
	ld   d, e                                        ; $18f4: $53
	ld   de, $0000                                   ; $18f5: $11 $00 $00
	nop                                              ; $18f8: $00
	nop                                              ; $18f9: $00
	ld   de, $ac35                                   ; $18fa: $11 $35 $ac
	xor  $ff                                         ; $18fd: $ee $ff
	rst  $38                                         ; $18ff: $ff
	rst  $38                                         ; $1900: $ff
	rst  $38                                         ; $1901: $ff
	rst  $38                                         ; $1902: $ff
	rst  $38                                         ; $1903: $ff
	rst  $38                                         ; $1904: $ff
	rst  $38                                         ; $1905: $ff
	rst  $38                                         ; $1906: $ff
	nop                                              ; $1907: $00
	nop                                              ; $1908: $00
	nop                                              ; $1909: $00
	nop                                              ; $190a: $00
	nop                                              ; $190b: $00
	nop                                              ; $190c: $00
	nop                                              ; $190d: $00
	rst  $38                                         ; $190e: $ff
	nop                                              ; $190f: $00
	nop                                              ; $1910: $00
	nop                                              ; $1911: $00
	ld   h, [hl]                                     ; $1912: $66
	xor  d                                           ; $1913: $aa
	cp   e                                           ; $1914: $bb
	db   $dd                                         ; $1915: $dd
	rst  $38                                         ; $1916: $ff
	rst  $38                                         ; $1917: $ff
	rst  $38                                         ; $1918: $ff
	rst  $38                                         ; $1919: $ff
	rst  $38                                         ; $191a: $ff
	rst  $38                                         ; $191b: $ff
	rst  $38                                         ; $191c: $ff
	rst  $38                                         ; $191d: $ff
	rst  $38                                         ; $191e: $ff
	rst  $38                                         ; $191f: $ff
	rst  $38                                         ; $1920: $ff
	rst  $38                                         ; $1921: $ff
	xor  $ed                                         ; $1922: $ee $ed
	db   $dd                                         ; $1924: $dd
	call z, $bacb                                    ; $1925: $cc $cb $ba
	xor  c                                           ; $1928: $a9
	sbc  b                                           ; $1929: $98
	add  a                                           ; $192a: $87
	ld   h, l                                        ; $192b: $65
	ld   d, h                                        ; $192c: $54
	ld   b, e                                        ; $192d: $43
	ld   sp, rAUD1SWEEP                                   ; $192e: $31 $10 $ff
	rst  $38                                         ; $1931: $ff
	rst  $38                                         ; $1932: $ff
	rst  $38                                         ; $1933: $ff
	rst  $38                                         ; $1934: $ff
	rst  $38                                         ; $1935: $ff
	nop                                              ; $1936: $00
	nop                                              ; $1937: $00
	nop                                              ; $1938: $00
	xor  d                                           ; $1939: $aa
	cp   e                                           ; $193a: $bb
	call z, $eedd                                    ; $193b: $cc $dd $ee
	rst  $38                                         ; $193e: $ff
	rst  $38                                         ; $193f: $ff
	nop                                              ; $1940: $00
	nop                                              ; $1941: $00
	nop                                              ; $1942: $00
	nop                                              ; $1943: $00
	xor  d                                           ; $1944: $aa
	xor  d                                           ; $1945: $aa
	cp   e                                           ; $1946: $bb
	call z, $dddd                                    ; $1947: $cc $dd $dd
	rst  $38                                         ; $194a: $ff
	rst  $38                                         ; $194b: $ff
	rst  $38                                         ; $194c: $ff
	rst  $38                                         ; $194d: $ff
	nop                                              ; $194e: $00
	rst  $38                                         ; $194f: $ff
	nop                                              ; $1950: $00
	nop                                              ; $1951: $00
	nop                                              ; $1952: $00
	nop                                              ; $1953: $00
	xor  d                                           ; $1954: $aa
	xor  d                                           ; $1955: $aa
	cp   e                                           ; $1956: $bb
	call z, $dddd                                    ; $1957: $cc $dd $dd
	rst  $38                                         ; $195a: $ff
	rst  $38                                         ; $195b: $ff
	rst  $38                                         ; $195c: $ff
	rst  $38                                         ; $195d: $ff
	xor  d                                           ; $195e: $aa
	rst  $38                                         ; $195f: $ff
	ld   bc, $2212                                   ; $1960: $01 $12 $22
	inc  sp                                          ; $1963: $33
	dec  [hl]                                        ; $1964: $35
	ld   d, l                                        ; $1965: $55
	ld   [hl], a                                     ; $1966: $77
	sbc  c                                           ; $1967: $99
	ld   d, l                                        ; $1968: $55
	sbc  c                                           ; $1969: $99
	xor  d                                           ; $196a: $aa
	cp   e                                           ; $196b: $bb
	call z, $eedd                                    ; $196c: $cc $dd $ee
	rst  $38                                         ; $196f: $ff
	db   $fc                                         ; $1970: $fc
	call c, $90ba                                    ; $1971: $dc $ba $90
	ld   [hl], b                                     ; $1974: $70
	ld   d, b                                        ; $1975: $50
	jr   nc, @+$17                                   ; $1976: $30 $15

	dec  d                                           ; $1978: $15
	dec  d                                           ; $1979: $15
	dec  d                                           ; $197a: $15
	ld   [hl+], a                                    ; $197b: $22
	ld   d, l                                        ; $197c: $55
	ld   [hl], a                                     ; $197d: $77
	xor  d                                           ; $197e: $aa
	call z, $eeee                                    ; $197f: $cc $ee $ee
	call $35ac                               ; $1982: $cd $ac $35
	inc  hl                                          ; $1985: $23
	ld   de, $1111                                   ; $1986: $11 $11 $11
	ld   de, $5332                                   ; $1989: $11 $32 $53
	jp   z, $eedc                                    ; $198c: $ca $dc $ee

	xor  $dd                                         ; $198f: $ee $dd
	db   $dd                                         ; $1991: $dd
	db   $dd                                         ; $1992: $dd
	db   $dd                                         ; $1993: $dd
	db   $dd                                         ; $1994: $dd
	db   $dd                                         ; $1995: $dd
	db   $dd                                         ; $1996: $dd
	db   $dd                                         ; $1997: $dd
	ld   [hl+], a                                    ; $1998: $22
	ld   [hl+], a                                    ; $1999: $22
	ld   [hl+], a                                    ; $199a: $22
	ld   [hl+], a                                    ; $199b: $22
	ld   [hl+], a                                    ; $199c: $22
	ld   [hl+], a                                    ; $199d: $22
	ld   [hl+], a                                    ; $199e: $22
	ld   [hl+], a                                    ; $199f: $22
	and  d                                           ; $19a0: $a2
	add  hl, de                                      ; $19a1: $19
	pop  af                                          ; $19a2: $f1
	ret  nc                                          ; $19a3: $d0

	or   b                                           ; $19a4: $b0
	sub  b                                           ; $19a5: $90
	ld   [hl], b                                     ; $19a6: $70
	ld   d, b                                        ; $19a7: $50
	jr   nc, jr_000_19bf                             ; $19a8: $30 $15

	dec  d                                           ; $19aa: $15
	dec  d                                           ; $19ab: $15
	dec  d                                           ; $19ac: $15
	dec  d                                           ; $19ad: $15
	dec  d                                           ; $19ae: $15
	dec  d                                           ; $19af: $15
	dec  d                                           ; $19b0: $15
	dec  d                                           ; $19b1: $15
	di                                               ; $19b2: $f3
	ret  nc                                          ; $19b3: $d0

	or   b                                           ; $19b4: $b0
	sub  b                                           ; $19b5: $90
	ld   [hl], b                                     ; $19b6: $70
	ld   d, b                                        ; $19b7: $50
	jr   nc, jr_000_19ca                             ; $19b8: $30 $10

	ld   d, c                                        ; $19ba: $51
	ld   b, b                                        ; $19bb: $40
	jr   nc, jr_000_19de                             ; $19bc: $30 $20

	dec  d                                           ; $19be: $15

jr_000_19bf:
	dec  d                                           ; $19bf: $15
	dec  d                                           ; $19c0: $15
	dec  d                                           ; $19c1: $15
	adc  c                                           ; $19c2: $89
	sbc  b                                           ; $19c3: $98
	xor  b                                           ; $19c4: $a8
	cp   b                                           ; $19c5: $b8
	ret  z                                           ; $19c6: $c8

	ret  c                                           ; $19c7: $d8

	add  sp, -$0b                                    ; $19c8: $e8 $f5

jr_000_19ca:
	push af                                          ; $19ca: $f5
	push af                                          ; $19cb: $f5
	push af                                          ; $19cc: $f5
	push af                                          ; $19cd: $f5
	push af                                          ; $19ce: $f5
	push af                                          ; $19cf: $f5
	push af                                          ; $19d0: $f5
	push af                                          ; $19d1: $f5
	cp   c                                           ; $19d2: $b9
	ret  z                                           ; $19d3: $c8

	ret  c                                           ; $19d4: $d8

	add  sp, -$0f                                    ; $19d5: $e8 $f1
	ret  nc                                          ; $19d7: $d0

	or   b                                           ; $19d8: $b0
	sub  b                                           ; $19d9: $90
	ld   [hl], b                                     ; $19da: $70
	ld   d, b                                        ; $19db: $50
	jr   nc, jr_000_19f3                             ; $19dc: $30 $15

jr_000_19de:
	dec  d                                           ; $19de: $15
	dec  d                                           ; $19df: $15
	dec  d                                           ; $19e0: $15
	dec  d                                           ; $19e1: $15
	sbc  c                                           ; $19e2: $99
	xor  b                                           ; $19e3: $a8
	cp   b                                           ; $19e4: $b8
	ret  z                                           ; $19e5: $c8

	ret  c                                           ; $19e6: $d8

	add  sp, -$0c                                    ; $19e7: $e8 $f4
	db   $f4                                         ; $19e9: $f4
	ldh  a, [$e0]                                    ; $19ea: $f0 $e0
	ret  nc                                          ; $19ec: $d0

	or   b                                           ; $19ed: $b0
	sub  b                                           ; $19ee: $90
	ld   [hl], b                                     ; $19ef: $70
	ld   d, b                                        ; $19f0: $50
	dec  [hl]                                        ; $19f1: $35
	db   $db                                         ; $19f2: $db

jr_000_19f3:
	di                                               ; $19f3: $f3
	ret  nc                                          ; $19f4: $d0

	or   b                                           ; $19f5: $b0
	sub  b                                           ; $19f6: $90
	add  c                                           ; $19f7: $81
	ld   [hl], b                                     ; $19f8: $70
	ld   h, b                                        ; $19f9: $60
	ld   d, b                                        ; $19fa: $50
	ld   b, b                                        ; $19fb: $40
	jr   nc, jr_000_1a1e                             ; $19fc: $30 $20

	dec  d                                           ; $19fe: $15
	dec  d                                           ; $19ff: $15
	dec  d                                           ; $1a00: $15
	dec  d                                           ; $1a01: $15
	pop  af                                          ; $1a02: $f1
	ldh  [$d0], a                                    ; $1a03: $e0 $d0
	ret  nz                                          ; $1a05: $c0

	or   b                                           ; $1a06: $b0
	and  b                                           ; $1a07: $a0
	sub  b                                           ; $1a08: $90
	add  b                                           ; $1a09: $80
	ld   [hl], b                                     ; $1a0a: $70
	ld   h, b                                        ; $1a0b: $60
	ld   d, b                                        ; $1a0c: $50
	ld   b, b                                        ; $1a0d: $40
	jr   nc, jr_000_1a30                             ; $1a0e: $30 $20

	db   $10                                         ; $1a10: $10
	dec  b                                           ; $1a11: $05
	pop  af                                          ; $1a12: $f1
	ld   [hl], b                                     ; $1a13: $70
	ld   d, b                                        ; $1a14: $50
	jr   nc, @+$22                                   ; $1a15: $30 $20

	dec  d                                           ; $1a17: $15
	dec  d                                           ; $1a18: $15
	dec  d                                           ; $1a19: $15
	dec  d                                           ; $1a1a: $15
	dec  b                                           ; $1a1b: $05
	dec  b                                           ; $1a1c: $05
	dec  b                                           ; $1a1d: $05

jr_000_1a1e:
	dec  b                                           ; $1a1e: $05
	dec  b                                           ; $1a1f: $05
	dec  b                                           ; $1a20: $05
	dec  b                                           ; $1a21: $05
	pop  af                                          ; $1a22: $f1
	or   b                                           ; $1a23: $b0
	ld   [hl], b                                     ; $1a24: $70
	ld   d, b                                        ; $1a25: $50
	jr   nc, jr_000_1a48                             ; $1a26: $30 $20

	jr   nz, jr_000_1a3f                             ; $1a28: $20 $15

	dec  d                                           ; $1a2a: $15
	dec  d                                           ; $1a2b: $15
	dec  d                                           ; $1a2c: $15
	dec  d                                           ; $1a2d: $15
	dec  d                                           ; $1a2e: $15
	dec  d                                           ; $1a2f: $15

jr_000_1a30:
	dec  d                                           ; $1a30: $15
	dec  b                                           ; $1a31: $05
	pop  af                                          ; $1a32: $f1
	or   b                                           ; $1a33: $b0
	ld   [hl], b                                     ; $1a34: $70
	ld   d, b                                        ; $1a35: $50
	jr   nc, jr_000_1a48                             ; $1a36: $30 $10

	ld   d, c                                        ; $1a38: $51
	ld   b, b                                        ; $1a39: $40
	jr   nc, jr_000_1a5c                             ; $1a3a: $30 $20

	dec  d                                           ; $1a3c: $15
	dec  d                                           ; $1a3d: $15
	dec  d                                           ; $1a3e: $15

jr_000_1a3f:
	dec  d                                           ; $1a3f: $15
	dec  d                                           ; $1a40: $15
	dec  b                                           ; $1a41: $05
	di                                               ; $1a42: $f3
	ret  nc                                          ; $1a43: $d0

	or   b                                           ; $1a44: $b0
	sub  b                                           ; $1a45: $90
	ld   [hl], b                                     ; $1a46: $70
	ld   d, b                                        ; $1a47: $50

jr_000_1a48:
	jr   nc, jr_000_1a5a                             ; $1a48: $30 $10

	ld   d, c                                        ; $1a4a: $51
	ld   b, b                                        ; $1a4b: $40
	jr   nc, @+$22                                   ; $1a4c: $30 $20

	dec  d                                           ; $1a4e: $15
	dec  d                                           ; $1a4f: $15
	dec  d                                           ; $1a50: $15
	dec  b                                           ; $1a51: $05
	add  hl, bc                                      ; $1a52: $09
	jr   jr_000_1a7d                                 ; $1a53: $18 $28

	jr   c, @+$4a                                    ; $1a55: $38 $48

	ld   e, b                                        ; $1a57: $58
	ld   l, b                                        ; $1a58: $68
	ld   a, b                                        ; $1a59: $78

jr_000_1a5a:
	adc  b                                           ; $1a5a: $88
	sbc  b                                           ; $1a5b: $98

jr_000_1a5c:
	xor  b                                           ; $1a5c: $a8
	cp   b                                           ; $1a5d: $b8
	ret  z                                           ; $1a5e: $c8

	ret  c                                           ; $1a5f: $d8

	add  sp, -$0b                                    ; $1a60: $e8 $f5
	add  hl, bc                                      ; $1a62: $09
	jr   jr_000_1a8d                                 ; $1a63: $18 $28

	ld   c, b                                        ; $1a65: $48
	ld   l, b                                        ; $1a66: $68
	adc  b                                           ; $1a67: $88
	sbc  b                                           ; $1a68: $98
	xor  b                                           ; $1a69: $a8
	cp   b                                           ; $1a6a: $b8
	ret  z                                           ; $1a6b: $c8

	ret  c                                           ; $1a6c: $d8

	add  sp, -$08                                    ; $1a6d: $e8 $f8
	adc  b                                           ; $1a6f: $88
	ld   c, b                                        ; $1a70: $48
	dec  b                                           ; $1a71: $05
	add  hl, bc                                      ; $1a72: $09
	ld   [$3818], sp                                 ; $1a73: $08 $18 $38
	ld   e, b                                        ; $1a76: $58
	adc  b                                           ; $1a77: $88
	xor  b                                           ; $1a78: $a8
	ret  z                                           ; $1a79: $c8

	add  sp, -$08                                    ; $1a7a: $e8 $f8
	cp   b                                           ; $1a7c: $b8

jr_000_1a7d:
	sbc  b                                           ; $1a7d: $98
	ld   e, b                                        ; $1a7e: $58
	ld   c, b                                        ; $1a7f: $48
	jr   z, jr_000_1a87                              ; $1a80: $28 $05

	add  hl, hl                                      ; $1a82: $29
	db $28, $28

	db $38, $38

jr_000_1a87:
	ld   c, b                                        ; $1a87: $48
	ld   c, b                                        ; $1a88: $48
	ld   e, b                                        ; $1a89: $58
	ld   l, b                                        ; $1a8a: $68
	ld   a, b                                        ; $1a8b: $78
	adc  b                                           ; $1a8c: $88

jr_000_1a8d:
	xor  b                                           ; $1a8d: $a8
	ret  z                                           ; $1a8e: $c8

	ret  c                                           ; $1a8f: $d8

	add  sp, -$0b                                    ; $1a90: $e8 $f5


PlaySong::
	push af                                          ; $1a92: $f5
	push bc                                          ; $1a93: $c5
	push de                                          ; $1a94: $d5
	push hl                                          ; $1a95: $e5

;
	cp   $15                                         ; $1a96: $fe $15
	jr   nc, .done                             ; $1a98: $30 $22

	or   a                                           ; $1a9a: $b7
	jr   nz, .br_1aaf                             ; $1a9b: $20 $12

	ld   a, [$c653]                                  ; $1a9d: $fa $53 $c6
	or   a                                           ; $1aa0: $b7
	jr   z, .done                              ; $1aa1: $28 $19

	call Call_000_1ac1                               ; $1aa3: $cd $c1 $1a
	call Call_000_2cea                               ; $1aa6: $cd $ea $2c
	xor  a                                           ; $1aa9: $af
	ld   [$c653], a                                  ; $1aaa: $ea $53 $c6
	jr   .done                                 ; $1aad: $18 $0d

.br_1aaf:
	ld   hl, $c653                                   ; $1aaf: $21 $53 $c6
	cp   [hl]                                        ; $1ab2: $be
	jr   z, .done                              ; $1ab3: $28 $07

	ld   [hl], a                                     ; $1ab5: $77
	call Call_000_1ac1                               ; $1ab6: $cd $c1 $1a
	call Call_000_2d35                               ; $1ab9: $cd $35 $2d

.done:
	pop  hl                                          ; $1abc: $e1
	pop  de                                          ; $1abd: $d1
	pop  bc                                          ; $1abe: $c1
	pop  af                                          ; $1abf: $f1
	ret                                              ; $1ac0: $c9


Call_000_1ac1:
	dec  a                                           ; $1ac1: $3d
	ld   hl, .data                                   ; $1ac2: $21 $cb $1a
	ld   d, $00                                      ; $1ac5: $16 $00
	ld   e, a                                        ; $1ac7: $5f
	add  hl, de                                      ; $1ac8: $19
	ld   a, [hl]                                     ; $1ac9: $7e
	ret                                              ; $1aca: $c9

.data:
	db $11, $12, $13, $14, $15, $16, $17, $18
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20
	db $21, $22, $23, $24


PlaySoundEffect::
	push af                                          ; $1adf: $f5
	push bc                                          ; $1ae0: $c5
	push de                                          ; $1ae1: $d5
	push hl                                          ; $1ae2: $e5

;
	cp   $51                                         ; $1ae3: $fe $51
	jr   nc, .done                             ; $1ae5: $30 $1e

	or   a                                           ; $1ae7: $b7
	jr   nz, .br_1afc                             ; $1ae8: $20 $12

	ld   a, [$c654]                                  ; $1aea: $fa $54 $c6
	or   a                                           ; $1aed: $b7
	jr   z, .done                              ; $1aee: $28 $15

	call Call_000_1b0a                               ; $1af0: $cd $0a $1b
	call Call_000_2cea                               ; $1af3: $cd $ea $2c
	xor  a                                           ; $1af6: $af
	ld   [$c654], a                                  ; $1af7: $ea $54 $c6
	jr   .done                                 ; $1afa: $18 $09

.br_1afc:
	ld   [$c654], a                                  ; $1afc: $ea $54 $c6
	call Call_000_1b0a                               ; $1aff: $cd $0a $1b
	call Call_000_2d35                               ; $1b02: $cd $35 $2d

.done:
	pop  hl                                          ; $1b05: $e1
	pop  de                                          ; $1b06: $d1
	pop  bc                                          ; $1b07: $c1
	pop  af                                          ; $1b08: $f1
	ret                                              ; $1b09: $c9


Call_000_1b0a:
	dec  a                                           ; $1b0a: $3d
	ld   hl, $1b14                                   ; $1b0b: $21 $14 $1b
	ld   d, $00                                      ; $1b0e: $16 $00
	ld   e, a                                        ; $1b10: $5f
	add  hl, de                                      ; $1b11: $19
	ld   a, [hl]                                     ; $1b12: $7e
	ret                                              ; $1b13: $c9


	nop                                              ; $1b14: $00
	ld   bc, $0302                                   ; $1b15: $01 $02 $03
	inc  b                                           ; $1b18: $04
	dec  b                                           ; $1b19: $05
	ld   b, $07                                      ; $1b1a: $06 $07
	ld   [$0a09], sp                                 ; $1b1c: $08 $09 $0a
	dec  bc                                          ; $1b1f: $0b
	inc  c                                           ; $1b20: $0c
	dec  c                                           ; $1b21: $0d
	ld   c, $0f                                      ; $1b22: $0e $0f
	db   $10                                         ; $1b24: $10
	dec  h                                           ; $1b25: $25
	ld   h, $27                                      ; $1b26: $26 $27
	jr   z, jr_000_1b53                              ; $1b28: $28 $29

	ld   a, [hl+]                                    ; $1b2a: $2a
	dec  hl                                          ; $1b2b: $2b
	inc  l                                           ; $1b2c: $2c
	dec  l                                           ; $1b2d: $2d
	ld   l, $2f                                      ; $1b2e: $2e $2f
	jr   nc, jr_000_1b63                             ; $1b30: $30 $31

	ld   [hl-], a                                    ; $1b32: $32
	inc  sp                                          ; $1b33: $33
	inc  [hl]                                        ; $1b34: $34
	dec  [hl]                                        ; $1b35: $35
	ld   [hl], $37                                   ; $1b36: $36 $37
	db $38, $38

	add  hl, sp                                      ; $1b3a: $39
	ld   a, [hl-]                                    ; $1b3b: $3a
	dec  sp                                          ; $1b3c: $3b
	inc  a                                           ; $1b3d: $3c
	dec  a                                           ; $1b3e: $3d
	ld   a, $3f                                      ; $1b3f: $3e $3f
	ld   b, b                                        ; $1b41: $40
	ld   b, c                                        ; $1b42: $41
	ld   b, d                                        ; $1b43: $42
	ld   b, e                                        ; $1b44: $43
	ld   b, h                                        ; $1b45: $44
	ld   b, l                                        ; $1b46: $45
	ld   b, [hl]                                     ; $1b47: $46
	ld   b, a                                        ; $1b48: $47
	ld   c, b                                        ; $1b49: $48
	ld   c, c                                        ; $1b4a: $49
	ld   c, d                                        ; $1b4b: $4a
	ld   c, e                                        ; $1b4c: $4b
	ld   c, h                                        ; $1b4d: $4c
	ld   c, l                                        ; $1b4e: $4d
	ld   c, [hl]                                     ; $1b4f: $4e
	ld   c, a                                        ; $1b50: $4f
	ld   d, b                                        ; $1b51: $50
	ld   d, c                                        ; $1b52: $51

jr_000_1b53:
	ld   d, d                                        ; $1b53: $52
	ld   d, e                                        ; $1b54: $53
	ld   d, h                                        ; $1b55: $54
	ld   d, l                                        ; $1b56: $55
	ld   d, [hl]                                     ; $1b57: $56
	ld   d, a                                        ; $1b58: $57
	ld   e, b                                        ; $1b59: $58
	ld   e, c                                        ; $1b5a: $59
	ld   e, d                                        ; $1b5b: $5a
	ld   e, e                                        ; $1b5c: $5b
	ld   e, h                                        ; $1b5d: $5c
	ld   e, l                                        ; $1b5e: $5d
	ld   e, [hl]                                     ; $1b5f: $5e
	ld   e, a                                        ; $1b60: $5f
	ld   h, b                                        ; $1b61: $60
	ld   h, c                                        ; $1b62: $61

jr_000_1b63:
	ld   h, d                                        ; $1b63: $62


; A - sound idx
; todo: put in constants:
;   $00-$06 - ending sequence voices
;   $07-$0c - hidden ending (Thank goodness)
;   $0d-$12 - hidden ending (The captain)
;   $13-$18 - hidden ending (Didn't get chance)
;   $19-$1e - hidden ending (Here..)
;   $1f-$24 - hidden ending (It's a ticket)
;   $25-$2d - Sakura unk
;   $2e-$2f - Sakura minigame
;   $30 - Sakura unk
;   etc
PlaySampledSound::
	push af                                                         ; $1b64
	push bc                                                         ; $1b65
	push de                                                         ; $1b66
	push hl                                                         ; $1b67

; Ignore below code if past the highest sound idx
	cp   NUM_SAMPLED_SOUNDS                                         ; $1b68
	jr   nc, .done                                                  ; $1b6a

; HL = triple sound idxed into below table
	ld   d, $00                                                     ; $1b6c
	ld   e, a                                                       ; $1b6e
	ld   hl, .sampleSources                                         ; $1b6f
	add  hl, de                                                     ; $1b72
	add  hl, de                                                     ; $1b73
	add  hl, de                                                     ; $1b74

; DE = 1st word in table entry
	ld   a, [hl+]                                                   ; $1b75
	ld   e, a                                                       ; $1b76
	ld   a, [hl+]                                                   ; $1b77
	ld   d, a                                                       ; $1b78

; C = src bank after above word, HL = src word, B = $0f (all channels used)
	ld   c, [hl]                                                    ; $1b79
	ld   b, $0f                                                     ; $1b7a
	ld   h, d                                                       ; $1b7c
	ld   l, e                                                       ; $1b7d

; Wait until sample done
	di                                                              ; $1b7e
	call _PlaySampledSound                                          ; $1b7f

;
	call InitSound                               ; $1b82: $cd $4a $1d
	xor  a                                           ; $1b85: $af
	ld   [$c653], a                                  ; $1b86: $ea $53 $c6
	ld   [$c654], a                                  ; $1b89: $ea $54 $c6
	ei                                               ; $1b8c: $fb

.done:
	pop  hl                                                         ; $1b8d
	pop  de                                                         ; $1b8e
	pop  bc                                                         ; $1b8f
	pop  af                                                         ; $1b90
	ret                                                             ; $1b91

.sampleSources:
	AddrBank SampledVoice_00
	AddrBank SampledVoice_01
	AddrBank SampledVoice_02
	AddrBank SampledVoice_03
	AddrBank SampledVoice_04
	AddrBank SampledVoice_05
	AddrBank SampledVoice_06
	AddrBank SampledVoice_07
	AddrBank SampledVoice_08
	AddrBank SampledVoice_09
	AddrBank SampledVoice_0a
	AddrBank SampledVoice_0b
	AddrBank SampledVoice_0c
	AddrBank SampledVoice_0d
	AddrBank SampledVoice_0e
	AddrBank SampledVoice_0f
	AddrBank SampledVoice_10
	AddrBank SampledVoice_11
	AddrBank SampledVoice_12
	AddrBank SampledVoice_13
	AddrBank SampledVoice_14
	AddrBank SampledVoice_15
	AddrBank SampledVoice_16
	AddrBank SampledVoice_17
	AddrBank SampledVoice_18
	AddrBank SampledVoice_19
	AddrBank SampledVoice_1a
	AddrBank SampledVoice_1b
	AddrBank SampledVoice_1c
	AddrBank SampledVoice_1d
	AddrBank SampledVoice_1e
	AddrBank SampledVoice_1f
	AddrBank SampledVoice_20
	AddrBank SampledVoice_21
	AddrBank SampledVoice_22
	AddrBank SampledVoice_23
	AddrBank SampledVoice_24
	AddrBank SampledVoice_25
	AddrBank SampledVoice_26
	AddrBank SampledVoice_27
	AddrBank SampledVoice_28
	AddrBank SampledVoice_29
	AddrBank SampledVoice_2a
	AddrBank SampledVoice_2b
	AddrBank SampledVoice_2c
	AddrBank SampledVoice_2d
	AddrBank SampledVoice_2e
	AddrBank SampledVoice_2f
	AddrBank SampledVoice_30
	AddrBank SampledVoice_31
	AddrBank SampledVoice_32
	AddrBank SampledVoice_33
	AddrBank SampledVoice_34
	AddrBank SampledVoice_35
	AddrBank SampledVoice_36
	AddrBank SampledVoice_37
	AddrBank SampledVoice_38
	AddrBank SampledVoice_39
	AddrBank SampledVoice_3a
	AddrBank SampledVoice_3b
	AddrBank SampledVoice_3c
	AddrBank SampledVoice_3d
	AddrBank SampledVoice_3e
	AddrBank SampledVoice_3f
	AddrBank SampledVoice_40
	AddrBank SampledVoice_41
	AddrBank SampledVoice_42
	AddrBank SampledVoice_43
	AddrBank SampledVoice_44
	AddrBank SampledVoice_45
	AddrBank SampledVoice_46
	AddrBank SampledVoice_47
	AddrBank SampledVoice_48
	AddrBank SampledVoice_49
	AddrBank SampledVoice_4a
	AddrBank SampledVoice_4b
	AddrBank SampledVoice_4c
	AddrBank SampledVoice_4d
	AddrBank SampledVoice_4e
	AddrBank SampledVoice_4f
	AddrBank SampledVoice_50
	AddrBank SampledVoice_51
	AddrBank SampledVoice_52
	AddrBank SampledVoice_53
	AddrBank SampledVoice_54
	AddrBank SampledVoice_55
	AddrBank SampledVoice_56
	AddrBank SampledVoice_57
	AddrBank SampledVoice_58
	AddrBank SampledVoice_59
	AddrBank SampledVoice_5a
	AddrBank SampledVoice_5b
	AddrBank SampledVoice_5c
	AddrBank SampledVoice_5d
	AddrBank SampledVoice_5e
	AddrBank SampledVoice_5f
	AddrBank SampledVoice_60
	AddrBank SampledVoice_61
	AddrBank SampledVoice_62
	AddrBank SampledVoice_63
	AddrBank SampledVoice_64
	AddrBank SampledVoice_65
	AddrBank SampledVoice_66
	AddrBank SampledVoice_67
	AddrBank SampledVoice_68
	AddrBank SampledVoice_69
	AddrBank SampledVoice_6a
	AddrBank SampledVoice_6b
	AddrBank SampledVoice_6c


Func_1cd9::
	call Call_000_1b0a                               ; $1cd9: $cd $0a $1b
	call Call_000_2cea                               ; $1cdc: $cd $ea $2c
	ret                                              ; $1cdf: $c9


; A - audvol bits to set, is mirrored to set the other output's bit
; Preserves regs, and makes sure that we don't set Vins
SafeSetAudVolForMultipleChannels::
	push af                                                         ; $1ce0
	push bc                                                         ; $1ce1
	push de                                                         ; $1ce2
	push hl                                                         ; $1ce3
	and  $07                                                        ; $1ce4
	call SetAudVolForMultipleChannels                               ; $1ce6
	pop  hl                                                         ; $1ce9
	pop  de                                                         ; $1cea
	pop  bc                                                         ; $1ceb
	pop  af                                                         ; $1cec
	ret                                                             ; $1ced


;
	push af                                          ; $1cee: $f5
	push bc                                          ; $1cef: $c5
	push de                                          ; $1cf0: $d5
	push hl                                          ; $1cf1: $e5
	cp   $15                                         ; $1cf2: $fe $15
	jr   nc, jr_000_1d15                             ; $1cf4: $30 $1f

	or   a                                           ; $1cf6: $b7
	jr   nz, jr_000_1d05                             ; $1cf7: $20 $0c

	call Call_000_1ac1                               ; $1cf9: $cd $c1 $1a
	call Call_000_2cea                               ; $1cfc: $cd $ea $2c
	xor  a                                           ; $1cff: $af
	ld   [$c653], a                                  ; $1d00: $ea $53 $c6
	jr   jr_000_1d15                                 ; $1d03: $18 $10

jr_000_1d05:
	ld   hl, $c653                                   ; $1d05: $21 $53 $c6
	cp   [hl]                                        ; $1d08: $be
	jr   z, jr_000_1d15                              ; $1d09: $28 $0a

	call PlaySong                               ; $1d0b: $cd $92 $1a
	ld   [hl], a                                     ; $1d0e: $77
	call Call_000_1ac1                               ; $1d0f: $cd $c1 $1a
	call Call_000_2c8c                               ; $1d12: $cd $8c $2c

jr_000_1d15:
	pop  hl                                          ; $1d15: $e1
	pop  de                                          ; $1d16: $d1
	pop  bc                                          ; $1d17: $c1
	pop  af                                          ; $1d18: $f1
	ret                                              ; $1d19: $c9


	push af                                          ; $1d1a: $f5
	push bc                                          ; $1d1b: $c5
	push de                                          ; $1d1c: $d5
	push hl                                          ; $1d1d: $e5
	ld   b, a                                        ; $1d1e: $47
	ld   a, [$c653]                                  ; $1d1f: $fa $53 $c6
	or   a                                           ; $1d22: $b7
	jr   z, jr_000_1d2b                              ; $1d23: $28 $06

	call Call_000_1ac1                               ; $1d25: $cd $c1 $1a
	call Call_000_2cbc                               ; $1d28: $cd $bc $2c

jr_000_1d2b:
	pop  hl                                          ; $1d2b: $e1
	pop  de                                          ; $1d2c: $d1
	pop  bc                                          ; $1d2d: $c1
	pop  af                                          ; $1d2e: $f1
	ret                                              ; $1d2f: $c9


Func_1d30::
	push bc                                          ; $1d30: $c5
	push de                                          ; $1d31: $d5
	push hl                                          ; $1d32: $e5
	call Call_000_1ac1                               ; $1d33: $cd $c1 $1a
	call Call_000_2d6b                               ; $1d36: $cd $6b $2d
	pop  hl                                          ; $1d39: $e1
	pop  de                                          ; $1d3a: $d1
	pop  bc                                          ; $1d3b: $c1
	ret                                              ; $1d3c: $c9


Func_1d3d::
	push bc                                          ; $1d3d: $c5
	push de                                          ; $1d3e: $d5
	push hl                                          ; $1d3f: $e5
	call Call_000_1b0a                               ; $1d40: $cd $0a $1b
	call Call_000_2d6b                               ; $1d43: $cd $6b $2d
	pop  hl                                          ; $1d46: $e1
	pop  de                                          ; $1d47: $d1
	pop  bc                                          ; $1d48: $c1
	ret                                              ; $1d49: $c9


InitSound:
	push hl                                          ; $1d4a: $e5
	push de                                          ; $1d4b: $d5
	ld   bc, $0000                                   ; $1d4c: $01 $00 $00
	ld   a, b                                        ; $1d4f: $78
	ld   [$cdd6], a                                  ; $1d50: $ea $d6 $cd
	ld   a, c                                        ; $1d53: $79
	ld   [$cdd7], a                                  ; $1d54: $ea $d7 $cd
	xor  a                                           ; $1d57: $af
	ld   [$cdd8], a                                  ; $1d58: $ea $d8 $cd
	ld   a, $80                                      ; $1d5b: $3e $80
	ld   [rAUDENA], a                                  ; $1d5d: $ea $26 $ff
	xor  a                                           ; $1d60: $af
	ld   [rAUDTERM], a                                  ; $1d61: $ea $25 $ff
	ld   [$cda8], a                                  ; $1d64: $ea $a8 $cd
	ld   a, $77                                      ; $1d67: $3e $77
	ld   [rAUDVOL], a                                  ; $1d69: $ea $24 $ff
	ld   hl, $cc9f                                   ; $1d6c: $21 $9f $cc
	ld   b, $06                                      ; $1d6f: $06 $06
	ld   a, $ff                                      ; $1d71: $3e $ff

jr_000_1d73:
	ld   [hl+], a                                    ; $1d73: $22
	ld   [hl-], a                                    ; $1d74: $32
	ld   de, $0020                                   ; $1d75: $11 $20 $00
	add  hl, de                                      ; $1d78: $19
	dec  b                                           ; $1d79: $05
	jr   nz, jr_000_1d73                             ; $1d7a: $20 $f7

	ld   hl, $cd5f                                   ; $1d7c: $21 $5f $cd
	ld   b, $48                                      ; $1d7f: $06 $48
	xor  a                                           ; $1d81: $af

jr_000_1d82:
	ld   [hl+], a                                    ; $1d82: $22
	dec  b                                           ; $1d83: $05
	jr   nz, jr_000_1d82                             ; $1d84: $20 $fc

	ld   a, $0f                                      ; $1d86: $3e $0f
	ld   [$cdaf], a                                  ; $1d88: $ea $af $cd
	ld   [$cdb0], a                                  ; $1d8b: $ea $b0 $cd
	ld   [$cdb1], a                                  ; $1d8e: $ea $b1 $cd
	ld   [$cdb2], a                                  ; $1d91: $ea $b2 $cd
	ld   [$cdb3], a                                  ; $1d94: $ea $b3 $cd
	ld   [$cdb4], a                                  ; $1d97: $ea $b4 $cd
	ld   b, $06                                      ; $1d9a: $06 $06
	xor  a                                           ; $1d9c: $af
	ld   hl, $cdb7                                   ; $1d9d: $21 $b7 $cd
	ld   de, $cdc8                                   ; $1da0: $11 $c8 $cd

jr_000_1da3:
	ld   [hl+], a                                    ; $1da3: $22
	ld   [hl+], a                                    ; $1da4: $22
	ld   [de], a                                     ; $1da5: $12
	inc  de                                          ; $1da6: $13
	dec  b                                           ; $1da7: $05
	jr   nz, jr_000_1da3                             ; $1da8: $20 $f9

	ld   [$cdd0], a                                  ; $1daa: $ea $d0 $cd
	ld   [$cdd1], a                                  ; $1dad: $ea $d1 $cd
	ld   [$cdd2], a                                  ; $1db0: $ea $d2 $cd
	ld   [$cdb5], a                                  ; $1db3: $ea $b5 $cd
	ld   [$cdb6], a                                  ; $1db6: $ea $b6 $cd
	ld   [$cdc3], a                                  ; $1db9: $ea $c3 $cd
	ld   [$cdc4], a                                  ; $1dbc: $ea $c4 $cd
	ld   [$cdc5], a                                  ; $1dbf: $ea $c5 $cd
	ld   hl, $ccbe                                   ; $1dc2: $21 $be $cc
	ld   de, $0020                                   ; $1dc5: $11 $20 $00
	ld   c, $06                                      ; $1dc8: $0e $06
	ld   a, $ff                                      ; $1dca: $3e $ff

jr_000_1dcc:
	ld   [hl], a                                     ; $1dcc: $77
	add  hl, de                                      ; $1dcd: $19
	dec  c                                           ; $1dce: $0d
	jr   nz, jr_000_1dcc                             ; $1dcf: $20 $fb

	xor  a                                           ; $1dd1: $af
	ld   [$cdd9], a                                  ; $1dd2: $ea $d9 $cd
	ld   [$cddd], a                                  ; $1dd5: $ea $dd $cd
	pop  de                                          ; $1dd8: $d1
	pop  hl                                          ; $1dd9: $e1
	ret                                              ; $1dda: $c9


	xor  a                                           ; $1ddb: $af
	ld   [$cdd9], a                                  ; $1ddc: $ea $d9 $cd
	ret                                              ; $1ddf: $c9


	push hl                                          ; $1de0: $e5
	push de                                          ; $1de1: $d5
	ld   de, $1714                                   ; $1de2: $11 $14 $17
	ld   l, a                                        ; $1de5: $6f
	ld   h, $00                                      ; $1de6: $26 $00
	add  hl, hl                                      ; $1de8: $29
	add  hl, hl                                      ; $1de9: $29
	add  hl, de                                      ; $1dea: $19
	ld   a, [hl]                                     ; $1deb: $7e
	ld   [$cdd9], a                                  ; $1dec: $ea $d9 $cd
	xor  a                                           ; $1def: $af
	ld   [$cda8], a                                  ; $1df0: $ea $a8 $cd
	pop  de                                          ; $1df3: $d1
	pop  hl                                          ; $1df4: $e1
	ret                                              ; $1df5: $c9


	push de                                          ; $1df6: $d5
	push hl                                          ; $1df7: $e5
	ld   de, $1714                                   ; $1df8: $11 $14 $17
	ld   l, a                                        ; $1dfb: $6f
	ld   h, $00                                      ; $1dfc: $26 $00
	add  hl, hl                                      ; $1dfe: $29
	add  hl, hl                                      ; $1dff: $29
	add  hl, de                                      ; $1e00: $19
	ld   a, [hl]                                     ; $1e01: $7e
	ld   hl, $cdae                                   ; $1e02: $21 $ae $cd
	ld   e, $07                                      ; $1e05: $1e $07

jr_000_1e07:
	inc  hl                                          ; $1e07: $23
	dec  e                                           ; $1e08: $1d
	jr   z, jr_000_1e12                              ; $1e09: $28 $07

	srl  a                                           ; $1e0b: $cb $3f
	jr   nc, jr_000_1e07                             ; $1e0d: $30 $f8

	ld   [hl], b                                     ; $1e0f: $70
	jr   jr_000_1e07                                 ; $1e10: $18 $f5

jr_000_1e12:
	pop  hl                                          ; $1e12: $e1
	pop  de                                          ; $1e13: $d1
	ret                                              ; $1e14: $c9


; A - audvol bits to set, is mirrored to set the other output's bit
SetAudVolForMultipleChannels:
	push bc                                                         ; $1e15
	ld   b, a                                                       ; $1e16
	ldh  a, [rAUDVOL]                                               ; $1e17
	and  $88                                                        ; $1e19
	or   b                                                          ; $1e1b
	swap b                                                          ; $1e1c
	or   b                                                          ; $1e1e
	ldh  [rAUDVOL], a                                               ; $1e1f
	pop  bc                                                         ; $1e21
	ret                                                             ; $1e22


;
	ld   a, b                                        ; $1e23: $78
	ld   [$cdd6], a                                  ; $1e24: $ea $d6 $cd
	xor  a                                           ; $1e27: $af
	ld   [$cdd8], a                                  ; $1e28: $ea $d8 $cd
	push hl                                          ; $1e2b: $e5
	ld   a, [$cdd1]                                  ; $1e2c: $fa $d1 $cd
	and  a                                           ; $1e2f: $a7
	jr   nz, jr_000_1e43                             ; $1e30: $20 $11

	ld   hl, $cce5                                   ; $1e32: $21 $e5 $cc
	ld   a, [hl]                                     ; $1e35: $7e
	and  $0f                                         ; $1e36: $e6 $0f
	ld   [$cdd2], a                                  ; $1e38: $ea $d2 $cd
	ld   [$cdd0], a                                  ; $1e3b: $ea $d0 $cd
	ld   a, $01                                      ; $1e3e: $3e $01
	ld   [$cdd1], a                                  ; $1e40: $ea $d1 $cd

jr_000_1e43:
	ld   hl, $cdd0                                   ; $1e43: $21 $d0 $cd
	ld   a, c                                        ; $1e46: $79
	cp   $00                                         ; $1e47: $fe $00
	jr   z, jr_000_1e53                              ; $1e49: $28 $08

	cp   $01                                         ; $1e4b: $fe $01
	jr   z, jr_000_1e62                              ; $1e4d: $28 $13

	cp   $02                                         ; $1e4f: $fe $02
	jr   z, jr_000_1e6f                              ; $1e51: $28 $1c

jr_000_1e53:
	ld   a, [$cdd2]                                  ; $1e53: $fa $d2 $cd
	ld   [$cdd0], a                                  ; $1e56: $ea $d0 $cd
	xor  a                                           ; $1e59: $af
	ld   [$cdd1], a                                  ; $1e5a: $ea $d1 $cd
	ld   [$cdd2], a                                  ; $1e5d: $ea $d2 $cd
	jr   jr_000_1e79                                 ; $1e60: $18 $17

jr_000_1e62:
	ld   a, [$cdd0]                                  ; $1e62: $fa $d0 $cd
	cp   $0f                                         ; $1e65: $fe $0f
	jr   z, jr_000_1e79                              ; $1e67: $28 $10

	inc  a                                           ; $1e69: $3c
	ld   [$cdd0], a                                  ; $1e6a: $ea $d0 $cd
	jr   jr_000_1e79                                 ; $1e6d: $18 $0a

jr_000_1e6f:
	ld   a, [$cdd0]                                  ; $1e6f: $fa $d0 $cd
	and  a                                           ; $1e72: $a7
	jr   z, jr_000_1e79                              ; $1e73: $28 $04

	dec  a                                           ; $1e75: $3d
	ld   [$cdd0], a                                  ; $1e76: $ea $d0 $cd

jr_000_1e79:
	pop  hl                                          ; $1e79: $e1
	ret                                              ; $1e7a: $c9


Call_000_1e7b:
	ld   a, [$cdad]                                  ; $1e7b: $fa $ad $cd
	inc  a                                           ; $1e7e: $3c
	ld   b, a                                        ; $1e7f: $47
	ld   a, $01                                      ; $1e80: $3e $01

jr_000_1e82:
	dec  b                                           ; $1e82: $05
	jr   z, jr_000_1e88                              ; $1e83: $28 $03

	add  a                                           ; $1e85: $87
	jr   jr_000_1e82                                 ; $1e86: $18 $fa

jr_000_1e88:
	ld   b, a                                        ; $1e88: $47
	ld   a, [$cdd8]                                  ; $1e89: $fa $d8 $cd
	or   b                                           ; $1e8c: $b0
	ld   [$cdd8], a                                  ; $1e8d: $ea $d8 $cd
	ret                                              ; $1e90: $c9


Call_000_1e91:
	ld   a, [$cdd8]                                  ; $1e91: $fa $d8 $cd
	ld   hl, $cdd6                                   ; $1e94: $21 $d6 $cd
	and  [hl]                                        ; $1e97: $a6
	cp   [hl]                                        ; $1e98: $be
	jr   nz, jr_000_1ec5                             ; $1e99: $20 $2a

	ld   hl, $cca5                                   ; $1e9b: $21 $a5 $cc
	ld   a, [$cdd0]                                  ; $1e9e: $fa $d0 $cd
	and  $0f                                         ; $1ea1: $e6 $0f
	ld   b, a                                        ; $1ea3: $47
	ld   a, [$cdd6]                                  ; $1ea4: $fa $d6 $cd

jr_000_1ea7:
	srl  a                                           ; $1ea7: $cb $3f
	ld   [$cdd8], a                                  ; $1ea9: $ea $d8 $cd
	jr   nc, jr_000_1eb3                             ; $1eac: $30 $05

	ld   a, [hl]                                     ; $1eae: $7e
	and  $f0                                         ; $1eaf: $e6 $f0
	or   b                                           ; $1eb1: $b0
	ld   [hl], a                                     ; $1eb2: $77

jr_000_1eb3:
	ld   a, l                                        ; $1eb3: $7d
	add  $20                                         ; $1eb4: $c6 $20
	ld   l, a                                        ; $1eb6: $6f
	ld   a, h                                        ; $1eb7: $7c
	adc  $00                                         ; $1eb8: $ce $00
	ld   h, a                                        ; $1eba: $67
	ld   a, [$cdd8]                                  ; $1ebb: $fa $d8 $cd
	and  a                                           ; $1ebe: $a7
	jr   nz, jr_000_1ea7                             ; $1ebf: $20 $e6

	xor  a                                           ; $1ec1: $af
	ld   [$cdd6], a                                  ; $1ec2: $ea $d6 $cd

jr_000_1ec5:
	xor  a                                           ; $1ec5: $af
	ld   [$cdd8], a                                  ; $1ec6: $ea $d8 $cd
	ret                                              ; $1ec9: $c9


	call Call_000_1ed3                               ; $1eca: $cd $d3 $1e
	call Call_000_1ed3                               ; $1ecd: $cd $d3 $1e
	call Call_000_1ed3                               ; $1ed0: $cd $d3 $1e

Call_000_1ed3:
	push bc                                          ; $1ed3: $c5
	push de                                          ; $1ed4: $d5
	push hl                                          ; $1ed5: $e5
	ld   [$cdae], a                                  ; $1ed6: $ea $ae $cd
	ld   hl, $1711                                   ; $1ed9: $21 $11 $17
	jr   jr_000_1ef0                                 ; $1edc: $18 $12

Call_000_1ede:
	call Call_000_1ee7                               ; $1ede: $cd $e7 $1e

Call_000_1ee1:
	call Call_000_1ee7                               ; $1ee1: $cd $e7 $1e

Call_000_1ee4:
	call Call_000_1ee7                               ; $1ee4: $cd $e7 $1e

Call_000_1ee7:
	push bc                                          ; $1ee7: $c5
	push de                                          ; $1ee8: $d5
	push hl                                          ; $1ee9: $e5
	ld   [$cdae], a                                  ; $1eea: $ea $ae $cd
	ld   hl, Data_1700                                   ; $1eed: $21 $00 $17

jr_000_1ef0:
	cp   [hl]                                        ; $1ef0: $be
	jr   c, jr_000_1ef9                              ; $1ef1: $38 $06

	inc  hl                                          ; $1ef3: $23
	inc  hl                                          ; $1ef4: $23
	inc  hl                                          ; $1ef5: $23
	inc  hl                                          ; $1ef6: $23
	jr   jr_000_1ef0                                 ; $1ef7: $18 $f7

jr_000_1ef9:
	ld   a, [wRomBank]                                  ; $1ef9: $fa $92 $c2
	push af                                          ; $1efc: $f5
	dec  hl                                          ; $1efd: $2b
	ld   a, [hl-]                                    ; $1efe: $3a
	ld   [wRomBank], a                                  ; $1eff: $ea $92 $c2
	ld   [rROMB0], a                                  ; $1f02: $ea $00 $20
	ld   d, [hl]                                     ; $1f05: $56
	dec  hl                                          ; $1f06: $2b
	ld   e, [hl]                                     ; $1f07: $5e
	dec  hl                                          ; $1f08: $2b
	ld   a, [$cdae]                                  ; $1f09: $fa $ae $cd
	sub  [hl]                                        ; $1f0c: $96
	ld   l, a                                        ; $1f0d: $6f
	ld   h, $00                                      ; $1f0e: $26 $00
	add  hl, hl                                      ; $1f10: $29
	add  hl, hl                                      ; $1f11: $29
	add  hl, de                                      ; $1f12: $19
	push hl                                          ; $1f13: $e5
	pop  de                                          ; $1f14: $d1
	ld   a, [de]                                     ; $1f15: $1a
	inc  de                                          ; $1f16: $13
	ld   c, a                                        ; $1f17: $4f
	ld   [$cdc7], a                                  ; $1f18: $ea $c7 $cd
	ld   b, $00                                      ; $1f1b: $06 $00
	ld   hl, $cc9f                                   ; $1f1d: $21 $9f $cc
	add  hl, bc                                      ; $1f20: $09
	ld   a, [hl]                                     ; $1f21: $7e
	cp   $ff                                         ; $1f22: $fe $ff
	jr   z, jr_000_1f43                              ; $1f24: $28 $1d

	inc  hl                                          ; $1f26: $23
	ld   a, [hl-]                                    ; $1f27: $3a
	ld   b, $ee                                      ; $1f28: $06 $ee
	and  $03                                         ; $1f2a: $e6 $03
	jr   z, jr_000_1f3c                              ; $1f2c: $28 $0e

	ld   b, $dd                                      ; $1f2e: $06 $dd
	cp   $01                                         ; $1f30: $fe $01
	jr   z, jr_000_1f3c                              ; $1f32: $28 $08

	ld   b, $bb                                      ; $1f34: $06 $bb
	cp   $02                                         ; $1f36: $fe $02
	jr   z, jr_000_1f3c                              ; $1f38: $28 $02

	ld   b, $77                                      ; $1f3a: $06 $77

jr_000_1f3c:
	ld   a, [$cda8]                                  ; $1f3c: $fa $a8 $cd
	and  b                                           ; $1f3f: $a0
	ld   [$cda8], a                                  ; $1f40: $ea $a8 $cd

jr_000_1f43:
	xor  a                                           ; $1f43: $af
	ld   [hl+], a                                    ; $1f44: $22
	ld   [hl+], a                                    ; $1f45: $22
	ld   a, [de]                                     ; $1f46: $1a
	inc  de                                          ; $1f47: $13
	ld   [hl+], a                                    ; $1f48: $22
	ld   a, [$cdc3]                                  ; $1f49: $fa $c3 $cd
	and  a                                           ; $1f4c: $a7
	jr   z, jr_000_1f77                              ; $1f4d: $28 $28

	push hl                                          ; $1f4f: $e5
	push de                                          ; $1f50: $d5
	push bc                                          ; $1f51: $c5
	ld   a, [$cdc7]                                  ; $1f52: $fa $c7 $cd
	ld   l, a                                        ; $1f55: $6f
	ld   h, $00                                      ; $1f56: $26 $00
	ld   a, $20                                      ; $1f58: $3e $20
	call Call_000_2d86                               ; $1f5a: $cd $86 $2d
	ld   de, $2c80                                   ; $1f5d: $11 $80 $2c
	add  hl, de                                      ; $1f60: $19
	ld   b, [hl]                                     ; $1f61: $46
	ld   a, [$cdc3]                                  ; $1f62: $fa $c3 $cd
	and  b                                           ; $1f65: $a0
	ld   [$cdc3], a                                  ; $1f66: $ea $c3 $cd
	pop  bc                                          ; $1f69: $c1
	pop  de                                          ; $1f6a: $d1
	pop  hl                                          ; $1f6b: $e1
	ld   de, $2ce4                                   ; $1f6c: $11 $e4 $2c
	ld   a, e                                        ; $1f6f: $7b
	ld   [hl+], a                                    ; $1f70: $22
	ld   a, d                                        ; $1f71: $7a
	ld   [hl+], a                                    ; $1f72: $22
	ld   [hl], $00                                   ; $1f73: $36 $00
	jr   jr_000_1f81                                 ; $1f75: $18 $0a

jr_000_1f77:
	ld   a, [de]                                     ; $1f77: $1a
	inc  de                                          ; $1f78: $13
	ld   [hl+], a                                    ; $1f79: $22
	ld   a, [de]                                     ; $1f7a: $1a
	inc  de                                          ; $1f7b: $13
	ld   [hl+], a                                    ; $1f7c: $22
	ld   a, [wRomBank]                                  ; $1f7d: $fa $92 $c2
	ld   [hl], a                                     ; $1f80: $77

jr_000_1f81:
	inc  hl                                          ; $1f81: $23
	inc  hl                                          ; $1f82: $23
	inc  hl                                          ; $1f83: $23
	inc  hl                                          ; $1f84: $23
	inc  hl                                          ; $1f85: $23
	ld   a, $ff                                      ; $1f86: $3e $ff
	ld   [hl+], a                                    ; $1f88: $22
	xor  a                                           ; $1f89: $af
	push de                                          ; $1f8a: $d5
	ld   de, $000e                                   ; $1f8b: $11 $0e $00
	add  hl, de                                      ; $1f8e: $19
	pop  de                                          ; $1f8f: $d1
	push hl                                          ; $1f90: $e5
	ld   [hl+], a                                    ; $1f91: $22
	ld   [hl+], a                                    ; $1f92: $22
	ld   [hl-], a                                    ; $1f93: $32
	dec  hl                                          ; $1f94: $2b
	dec  hl                                          ; $1f95: $2b
	dec  hl                                          ; $1f96: $2b
	dec  hl                                          ; $1f97: $2b
	dec  hl                                          ; $1f98: $2b
	ld   [hl], a                                     ; $1f99: $77
	pop  hl                                          ; $1f9a: $e1
	inc  hl                                          ; $1f9b: $23
	inc  hl                                          ; $1f9c: $23
	inc  hl                                          ; $1f9d: $23
	xor  a                                           ; $1f9e: $af
	ld   [hl+], a                                    ; $1f9f: $22
	ld   [hl+], a                                    ; $1fa0: $22
	ld   [hl+], a                                    ; $1fa1: $22
	ld   a, [$cdc6]                                  ; $1fa2: $fa $c6 $cd
	ld   [hl+], a                                    ; $1fa5: $22
	pop  af                                          ; $1fa6: $f1
	ld   [wRomBank], a                                  ; $1fa7: $ea $92 $c2
	ld   [rROMB0], a                                  ; $1faa: $ea $00 $20
	ld   a, [$cdae]                                  ; $1fad: $fa $ae $cd
	inc  a                                           ; $1fb0: $3c
	pop  hl                                          ; $1fb1: $e1
	pop  de                                          ; $1fb2: $d1
	pop  bc                                          ; $1fb3: $c1
	ret                                              ; $1fb4: $c9


UpdateSound:
;
	ld   a, [$cdb5]                                  ; $1fb5: $fa $b5 $cd
	ld   [$cdc4], a                                  ; $1fb8: $ea $c4 $cd

;
	ld   a, [$cdb6]                                  ; $1fbb: $fa $b6 $cd
	ld   [$cdc5], a                                  ; $1fbe: $ea $c5 $cd

;
	ld   a, [wRomBank]                                  ; $1fc1: $fa $92 $c2
	push af                                          ; $1fc4: $f5

;
	xor  a                                           ; $1fc5: $af
	ld   [$cdad], a                                  ; $1fc6: $ea $ad $cd
	ld   [$cda7], a                                  ; $1fc9: $ea $a7 $cd

;
	ld   hl, $cdac                                   ; $1fcc: $21 $ac $cd
	inc  [hl]                                        ; $1fcf: $34

;
	ld   hl, $cc9f                                   ; $1fd0: $21 $9f $cc

.toNextStruct:
	ld   a, [$cdc4]                                  ; $1fd3: $fa $c4 $cd
	srl  a                                           ; $1fd6: $cb $3f
	ld   [$cdc4], a                                  ; $1fd8: $ea $c4 $cd
	jr   nc, .cont_201f                             ; $1fdb: $30 $42

	push hl                                          ; $1fdd: $e5
	ld   hl, $cdb7                                   ; $1fde: $21 $b7 $cd
	ld   a, [$cdad]                                  ; $1fe1: $fa $ad $cd
	add  a                                           ; $1fe4: $87
	add  l                                           ; $1fe5: $85
	ld   l, a                                        ; $1fe6: $6f
	ld   a, $00                                      ; $1fe7: $3e $00
	adc  h                                           ; $1fe9: $8c
	ld   h, a                                        ; $1fea: $67
	ld   a, [hl+]                                    ; $1feb: $2a
	ld   c, a                                        ; $1fec: $4f
	ld   a, [hl]                                     ; $1fed: $7e
	inc  a                                           ; $1fee: $3c
	ld   [hl-], a                                    ; $1fef: $32
	cp   c                                           ; $1ff0: $b9
	jr   c, .br_201e                              ; $1ff1: $38 $2b

	inc  hl                                          ; $1ff3: $23
	ld   [hl], $00                                   ; $1ff4: $36 $00
	dec  hl                                          ; $1ff6: $2b
	ld   de, $cdaf                                   ; $1ff7: $11 $af $cd
	ld   a, [$cdad]                                  ; $1ffa: $fa $ad $cd
	add  e                                           ; $1ffd: $83
	ld   e, a                                        ; $1ffe: $5f
	ld   a, $00                                      ; $1fff: $3e $00
	adc  d                                           ; $2001: $8a
	ld   d, a                                        ; $2002: $57
	ld   a, [de]                                     ; $2003: $1a
	inc  a                                           ; $2004: $3c
	ld   [de], a                                     ; $2005: $12
	cp   $0f                                         ; $2006: $fe $0f
	jr   c, .br_201e                              ; $2008: $38 $14

	ld   hl, $2c80                                   ; $200a: $21 $80 $2c
	ld   a, [$cdad]                                  ; $200d: $fa $ad $cd
	add  l                                           ; $2010: $85
	ld   l, a                                        ; $2011: $6f
	ld   a, $00                                      ; $2012: $3e $00
	adc  h                                           ; $2014: $8c
	ld   h, a                                        ; $2015: $67
	ld   c, [hl]                                     ; $2016: $4e
	ld   a, [$cdb5]                                  ; $2017: $fa $b5 $cd
	and  c                                           ; $201a: $a1
	ld   [$cdb5], a                                  ; $201b: $ea $b5 $cd

.br_201e:
	pop  hl                                          ; $201e: $e1

.cont_201f:
	ld   a, [$cdc5]                                  ; $201f: $fa $c5 $cd
	srl  a                                           ; $2022: $cb $3f
	ld   [$cdc5], a                                  ; $2024: $ea $c5 $cd
	jr   nc, .dont_206e                             ; $2027: $30 $45

	push hl                                          ; $2029: $e5
	ld   hl, $cdb7                                   ; $202a: $21 $b7 $cd
	ld   a, [$cdad]                                  ; $202d: $fa $ad $cd
	add  a                                           ; $2030: $87
	add  l                                           ; $2031: $85
	ld   l, a                                        ; $2032: $6f
	ld   a, $00                                      ; $2033: $3e $00
	adc  h                                           ; $2035: $8c
	ld   h, a                                        ; $2036: $67
	ld   a, [hl+]                                    ; $2037: $2a
	ld   c, a                                        ; $2038: $4f
	ld   a, [hl]                                     ; $2039: $7e
	inc  a                                           ; $203a: $3c
	ld   [hl-], a                                    ; $203b: $32
	cp   c                                           ; $203c: $b9
	jr   c, .br_206d                              ; $203d: $38 $2e

	inc  hl                                          ; $203f: $23
	ld   [hl], $00                                   ; $2040: $36 $00
	dec  hl                                          ; $2042: $2b
	ld   de, $cdaf                                   ; $2043: $11 $af $cd
	ld   a, [$cdad]                                  ; $2046: $fa $ad $cd
	add  e                                           ; $2049: $83
	ld   e, a                                        ; $204a: $5f
	ld   a, $00                                      ; $204b: $3e $00
	adc  d                                           ; $204d: $8a
	ld   d, a                                        ; $204e: $57
	ld   a, [de]                                     ; $204f: $1a
	dec  a                                           ; $2050: $3d
	ld   [de], a                                     ; $2051: $12
	cp   $ff                                         ; $2052: $fe $ff
	jr   nz, .br_206d                             ; $2054: $20 $17

	ld   a, $00                                      ; $2056: $3e $00
	ld   [de], a                                     ; $2058: $12
	ld   hl, $2c80                                   ; $2059: $21 $80 $2c
	ld   a, [$cdad]                                  ; $205c: $fa $ad $cd
	add  l                                           ; $205f: $85
	ld   l, a                                        ; $2060: $6f
	ld   a, $00                                      ; $2061: $3e $00
	adc  h                                           ; $2063: $8c
	ld   h, a                                        ; $2064: $67
	ld   c, [hl]                                     ; $2065: $4e
	ld   a, [$cdb6]                                  ; $2066: $fa $b6 $cd
	and  c                                           ; $2069: $a1
	ld   [$cdb6], a                                  ; $206a: $ea $b6 $cd

.br_206d:
	pop  hl                                          ; $206d: $e1

.dont_206e:
	ld   a, [hl+]                                    ; $206e: $2a
	ld   b, a                                        ; $206f: $47
	ld   a, [hl-]                                    ; $2070: $3a
	and  b                                           ; $2071: $a0
	cp   $ff                                         ; $2072: $fe $ff
	jp   z, .fromAbove_2250                            ; $2074: $ca $50 $22

	ld   de, $2c86                                   ; $2077: $11 $86 $2c
	ld   a, [$cdad]                                  ; $207a: $fa $ad $cd
	add  e                                           ; $207d: $83
	ld   e, a                                        ; $207e: $5f
	ld   a, $00                                      ; $207f: $3e $00
	adc  d                                           ; $2081: $8a
	ld   d, a                                        ; $2082: $57
	ld   a, [$cdd9]                                  ; $2083: $fa $d9 $cd
	ld   b, a                                        ; $2086: $47
	ld   a, [de]                                     ; $2087: $1a
	and  b                                           ; $2088: $a0
	jp   nz, .fromAbove_2250                           ; $2089: $c2 $50 $22

	push hl                                          ; $208c: $e5
	ld   c, $d0                                      ; $208d: $0e $d0

rept 32
	ld   a, [hl+]                                    ; $208f: $2a
	ldh  [c], a                                      ; $2090: $e2
	inc  c                                           ; $2091: $0c
endr

;
	ld   a, [$ffd5]                                  ; $20ef: $fa $d5 $ff
	ld   [wRomBank], a                                  ; $20f2: $ea $92 $c2
	ld   [rROMB0], a                                  ; $20f5: $ea $00 $20

;
	ld   a, [$ffd2]                                  ; $20f8: $fa $d2 $ff
	and  $03                                         ; $20fb: $e6 $03
	ld   [wCurrAudChannelIdx], a                                  ; $20fd: $ea $a9 $cd

;
	ld   b, a                                        ; $2100: $47
	add  a                                           ; $2101: $87
	add  a                                           ; $2102: $87
	add  b                                           ; $2103: $80
	ld   [wCurrAudChannelTimes5], a                                  ; $2104: $ea $ab $cd

;
	inc  b                                           ; $2107: $04
	ld   a, $88                                      ; $2108: $3e $88
:	rlca                                             ; $210a: $07
	dec  b                                           ; $210b: $05
	jr   nz, :-                             ; $210c: $20 $fc

;
	ld   [$cdaa], a                                  ; $210e: $ea $aa $cd
	ld   a, [$ffd0]                                  ; $2111: $fa $d0 $ff
	ld   b, a                                        ; $2114: $47
	ld   a, [$ffd1]                                  ; $2115: $fa $d1 $ff
	or   b                                           ; $2118: $b0
	and  a                                           ; $2119: $a7
	jp   z, .fromAbove_2279                            ; $211a: $ca $79 $22

	call Call_000_2779                               ; $211d: $cd $79 $27
	call Call_000_285d                               ; $2120: $cd $5d $28
	ld   a, [$ffde]                                  ; $2123: $fa $de $ff
	ld   b, a                                        ; $2126: $47
	ld   a, [$ffdf]                                  ; $2127: $fa $df $ff
	inc  a                                           ; $212a: $3c
	cp   b                                           ; $212b: $b8
	jr   c, :+                              ; $212c: $38 $01
	ld   a, b                                        ; $212e: $78
:	ld   [$ffdf], a                                  ; $212f: $ea $df $ff
	ld   hl, $ffd7                                   ; $2132: $21 $d7 $ff
	ld   a, [$ffd6]                                  ; $2135: $fa $d6 $ff
	and  $0f                                         ; $2138: $e6 $0f
	add  [hl]                                        ; $213a: $86
	cp   $10                                         ; $213b: $fe $10
	jr   c, .br_2144                              ; $213d: $38 $05

	sub  $10                                         ; $213f: $d6 $10
	ld   [hl], a                                     ; $2141: $77
	jr   .cont_21a2                                 ; $2142: $18 $5e

.br_2144:
	ld   [hl], a                                     ; $2144: $77
	ld   a, [$ffe8]                                  ; $2145: $fa $e8 $ff
	and  a                                           ; $2148: $a7
	jr   z, :+                              ; $2149: $28 $04
	dec  a                                           ; $214b: $3d
	ld   [$ffe8], a                                  ; $214c: $ea $e8 $ff
:	ld   a, [$ffd9]                                  ; $214f: $fa $d9 $ff
	and  a                                           ; $2152: $a7
	jr   nz, .br_2193                             ; $2153: $20 $3e

	ld   a, [$ffeb]                                  ; $2155: $fa $eb $ff
	and  $f0                                         ; $2158: $e6 $f0
	jr   z, .br_2171                              ; $215a: $28 $15

	ld   hl, $ffea                                   ; $215c: $21 $ea $ff
	dec  [hl]                                        ; $215f: $35
	jr   nz, .br_217f                             ; $2160: $20 $1d

	ld   a, [$ffe5]                                  ; $2162: $fa $e5 $ff
	and  $f0                                         ; $2165: $e6 $f0
	ld   c, a                                        ; $2167: $4f
	ld   a, [$ffd8]                                  ; $2168: $fa $d8 $ff
	and  $0f                                         ; $216b: $e6 $0f
	or   c                                           ; $216d: $b1
	ld   [$ffd8], a                                  ; $216e: $ea $d8 $ff

.br_2171:
	call Call_000_1e7b                               ; $2171: $cd $7b $1e

.fromBelow_2174:
	ld   a, [$ffe7]                                  ; $2174: $fa $e7 $ff
	ld   [$ffe8], a                                  ; $2177: $ea $e8 $ff
	call Call_000_2304                               ; $217a: $cd $04 $23
	jr   .cont_21a2                                 ; $217d: $18 $23

.br_217f:
	ld   a, [$ffeb]                                  ; $217f: $fa $eb $ff
	and  $0f                                         ; $2182: $e6 $0f
	dec  a                                           ; $2184: $3d
	cp   [hl]                                        ; $2185: $be
	jr   nz, .cont_21a2                             ; $2186: $20 $1a

	call Call_000_2bb5                               ; $2188: $cd $b5 $2b
	ld   a, [$ffd8]                                  ; $218b: $fa $d8 $ff
	call Call_000_27b8                               ; $218e: $cd $b8 $27
	jr   .cont_21a2                                 ; $2191: $18 $0f

.br_2193:
	dec  a                                           ; $2193: $3d
	ld   [$ffd9], a                                  ; $2194: $ea $d9 $ff
	jr   nz, .cont_21a2                             ; $2197: $20 $09

	ld   a, [$ffeb]                                  ; $2199: $fa $eb $ff
	and  $f0                                         ; $219c: $e6 $f0
	jr   nz, .cont_21a2                             ; $219e: $20 $02

	jr   .br_2171                                 ; $21a0: $18 $cf

.cont_21a2:
	ld   a, [$cddd]                                  ; $21a2: $fa $dd $cd
	and  a                                           ; $21a5: $a7
	jr   z, .cont_21e0                              ; $21a6: $28 $38

	ld   a, [wCurrAudChannelIdx]                                  ; $21a8: $fa $a9 $cd
	cp   $02                                         ; $21ab: $fe $02
	jr   nz, .cont_21e0                             ; $21ad: $20 $31

	ld   a, [$cdad]                                  ; $21af: $fa $ad $cd
	cp   $02                                         ; $21b2: $fe $02
	jr   c, .cont_21e0                              ; $21b4: $38 $2a

	ld   a, [$cdaa]                                  ; $21b6: $fa $aa $cd
	ld   b, a                                        ; $21b9: $47
	ld   a, [$cda7]                                  ; $21ba: $fa $a7 $cd
	and  b                                           ; $21bd: $a0
	jr   nz, .cont_21e0                             ; $21be: $20 $20

	ld   a, [$cddb]                                  ; $21c0: $fa $db $cd
	ld   b, a                                        ; $21c3: $47
	ld   a, [$ffda]                                  ; $21c4: $fa $da $ff
	cp   b                                           ; $21c7: $b8
	jr   z, .cont_21e0                              ; $21c8: $28 $16

	ld   e, a                                        ; $21ca: $5f
	ld   [$cddb], a                                  ; $21cb: $ea $db $cd
	swap e                                           ; $21ce: $cb $33
	xor  a                                           ; $21d0: $af
	ld   [$cddd], a                                  ; $21d1: $ea $dd $cd
	ld   [rAUD3ENA], a                                  ; $21d4: $ea $1a $ff
	ld   d, a                                        ; $21d7: $57
	call Call_000_2b79                               ; $21d8: $cd $79 $2b
	ld   a, $80                                      ; $21db: $3e $80
	ld   [rAUD3ENA], a                                  ; $21dd: $ea $1a $ff

.cont_21e0:
;
	ld   a, [$cdaa]                                  ; $21e0: $fa $aa $cd
	ld   b, a                                        ; $21e3: $47

;
	ld   a, [$cda7]                                  ; $21e4: $fa $a7 $cd
	or   b                                           ; $21e7: $b0
	ld   [$cda7], a                                  ; $21e8: $ea $a7 $cd

;
	pop  hl                                          ; $21eb: $e1
	push hl                                          ; $21ec: $e5
	ld   c, $d0                                      ; $21ed: $0e $d0

rept 32
	ldh  a, [c]                                      ; $21ef: $f2
	ld   [hl+], a                                    ; $21f0: $22
	inc  c                                           ; $21f1: $0c
endr

	pop  hl                                          ; $224f: $e1

.fromAbove_2250:
;
	ld   de, $0020                                   ; $2250: $11 $20 $00
	add  hl, de                                      ; $2253: $19

;
	ld   a, [$cdad]                                  ; $2254: $fa $ad $cd
	inc  a                                           ; $2257: $3c
	ld   [$cdad], a                                  ; $2258: $ea $ad $cd
	cp   $06                                         ; $225b: $fe $06
	jp   c, .toNextStruct                            ; $225d: $da $d3 $1f

	ld   a, [$cda7]                                  ; $2260: $fa $a7 $cd
	ld   b, a                                        ; $2263: $47
	ld   a, [$cda8]                                  ; $2264: $fa $a8 $cd
	and  b                                           ; $2267: $a0
	ld   [$cda8], a                                  ; $2268: $ea $a8 $cd
	ld   [rAUDTERM], a                                  ; $226b: $ea $25 $ff

; Restore rom bank
	pop  af                                          ; $226e: $f1
	ld   [wRomBank], a                                  ; $226f: $ea $92 $c2
	ld   [rROMB0], a                                  ; $2272: $ea $00 $20

;
	call Call_000_1e91                               ; $2275: $cd $91 $1e
	ret                                              ; $2278: $c9

.fromAbove_2279:
	ld   a, [$ffd3]                                  ; $2279: $fa $d3 $ff
	ld   l, a                                        ; $227c: $6f
	ld   a, [$ffd4]                                  ; $227d: $fa $d4 $ff
	ld   h, a                                        ; $2280: $67
	ld   a, [hl+]                                    ; $2281: $2a
	and  $0f                                         ; $2282: $e6 $0f
	ld   d, a                                        ; $2284: $57
	ld   [$ffd7], a                                  ; $2285: $ea $d7 $ff
	ld   a, [wCurrAudChannelIdx]                                  ; $2288: $fa $a9 $cd
	cp   $02                                         ; $228b: $fe $02
	jr   z, .br_22c5                              ; $228d: $28 $36

	ld   a, [hl+]                                    ; $228f: $2a
	rrca                                             ; $2290: $0f
	rrca                                             ; $2291: $0f
	and  $c0                                         ; $2292: $e6 $c0
	or   d                                           ; $2294: $b2

.fromBelow_2295:
	ld   [$ffd6], a                                  ; $2295: $ea $d6 $ff
	ld   a, [hl+]                                    ; $2298: $2a
	swap a                                           ; $2299: $cb $37
	ld   [$ffd8], a                                  ; $229b: $ea $d8 $ff
	ld   a, [wCurrAudChannelIdx]                                  ; $229e: $fa $a9 $cd
	cp   $02                                         ; $22a1: $fe $02
	jr   z, .br_22cc                              ; $22a3: $28 $27

	ld   a, [hl+]                                    ; $22a5: $2a
	ld   [$ffda], a                                  ; $22a6: $ea $da $ff

.fromBelow_22a9:
	xor  a                                           ; $22a9: $af
	ld   [$ffdb], a                                  ; $22aa: $ea $db $ff
	ld   [$ffdc], a                                  ; $22ad: $ea $dc $ff
	ld   [$ffdd], a                                  ; $22b0: $ea $dd $ff
	ld   [$ffe0], a                                  ; $22b3: $ea $e0 $ff
	ld   [$ffd1], a                                  ; $22b6: $ea $d1 $ff
	dec  a                                           ; $22b9: $3d
	ld   [$ffe6], a                                  ; $22ba: $ea $e6 $ff
	ld   a, $02                                      ; $22bd: $3e $02
	ld   [$ffd0], a                                  ; $22bf: $ea $d0 $ff
	jp   .fromBelow_2174                               ; $22c2: $c3 $74 $21

.br_22c5:
	ld   a, [hl+]                                    ; $22c5: $2a
	ld   [$ffde], a                                  ; $22c6: $ea $de $ff
	ld   a, d                                        ; $22c9: $7a
	jr   .fromBelow_2295                                 ; $22ca: $18 $c9

.br_22cc:
	xor  a                                           ; $22cc: $af
	ld   [rAUD3ENA], a                                  ; $22cd: $ea $1a $ff
	ld   d, a                                        ; $22d0: $57
	ld   a, [$ffda]                                  ; $22d1: $fa $da $ff
	ld   e, a                                        ; $22d4: $5f
	cp   $ff                                         ; $22d5: $fe $ff
	jr   nz, :+                             ; $22d7: $20 $05
	ld   e, [hl]                                     ; $22d9: $5e
	ld   a, e                                        ; $22da: $7b
	ld   [$ffda], a                                  ; $22db: $ea $da $ff
:	ld   [$cddb], a                                  ; $22de: $ea $db $cd
	swap e                                           ; $22e1: $cb $33
	ld   hl, $189e                                   ; $22e3: $21 $9e $18
	push de                                          ; $22e6: $d5
	ld   a, [$ffe9]                                  ; $22e7: $fa $e9 $ff
	swap a                                           ; $22ea: $cb $37
	and  $0f                                         ; $22ec: $e6 $0f
	add  a                                           ; $22ee: $87
	ld   e, a                                        ; $22ef: $5f
	ld   d, $00                                      ; $22f0: $16 $00
	add  hl, de                                      ; $22f2: $19
	ld   a, [hl+]                                    ; $22f3: $2a
	ld   h, [hl]                                     ; $22f4: $66
	ld   l, a                                        ; $22f5: $6f
	pop  de                                          ; $22f6: $d1
	add  hl, de                                      ; $22f7: $19
	ld   c, LOW(_AUD3WAVERAM)                                      ; $22f8: $0e $30
	ld   b, $10                                      ; $22fa: $06 $10
:	ld   a, [hl+]                                    ; $22fc: $2a
	ldh  [c], a                                      ; $22fd: $e2
	inc  c                                           ; $22fe: $0c
	dec  b                                           ; $22ff: $05
	jr   nz, :-                             ; $2300: $20 $fa

	jr   .fromBelow_22a9                                 ; $2302: $18 $a5


Call_000_2304:
	ld   a, [$ffd0]                                  ; $2304: $fa $d0 $ff
	ld   l, a                                        ; $2307: $6f
	ld   a, [$ffd1]                                  ; $2308: $fa $d1 $ff
	ld   h, a                                        ; $230b: $67
	add  hl, hl                                      ; $230c: $29
	ld   a, [$ffd3]                                  ; $230d: $fa $d3 $ff
	ld   e, a                                        ; $2310: $5f
	ld   a, [$ffd4]                                  ; $2311: $fa $d4 $ff
	ld   d, a                                        ; $2314: $57
	add  hl, de                                      ; $2315: $19

Jump_000_2316:
	ld   a, [$ffd0]                                  ; $2316: $fa $d0 $ff
	add  $01                                         ; $2319: $c6 $01
	ld   [$ffd0], a                                  ; $231b: $ea $d0 $ff
	ld   a, [$ffd1]                                  ; $231e: $fa $d1 $ff
	adc  $00                                         ; $2321: $ce $00
	ld   [$ffd1], a                                  ; $2323: $ea $d1 $ff
	ld   a, [hl+]                                    ; $2326: $2a
	cp   $a0                                         ; $2327: $fe $a0
	jp   c, Jump_000_2633                            ; $2329: $da $33 $26

	cp   $d0                                         ; $232c: $fe $d0
	jr   nc, jr_000_2381                             ; $232e: $30 $51

	ld   c, a                                        ; $2330: $4f
	sub  $a0                                         ; $2331: $d6 $a0
	push hl                                          ; $2333: $e5
	ld   hl, $2d99                                   ; $2334: $21 $99 $2d
	add  a                                           ; $2337: $87
	ld   e, a                                        ; $2338: $5f
	ld   d, $00                                      ; $2339: $16 $00
	add  hl, de                                      ; $233b: $19
	ld   e, [hl]                                     ; $233c: $5e
	inc  hl                                          ; $233d: $23
	ld   d, [hl]                                     ; $233e: $56
	pop  hl                                          ; $233f: $e1
	push de                                          ; $2340: $d5
	ld   a, c                                        ; $2341: $79
	ret                                              ; $2342: $c9


jr_000_2343:
	cp   $fd                                         ; $2343: $fe $fd
	jr   z, jr_000_234d                              ; $2345: $28 $06

	cp   $ff                                         ; $2347: $fe $ff
	jr   z, jr_000_2361                              ; $2349: $28 $16

	jr   jr_000_235d                                 ; $234b: $18 $10

jr_000_234d:
	push hl                                          ; $234d: $e5
	ld   b, [hl]                                     ; $234e: $46
	call Call_000_2b9b                               ; $234f: $cd $9b $2b
	xor  a                                           ; $2352: $af
	ld   [hl+], a                                    ; $2353: $22
	ld   a, [$ffd0]                                  ; $2354: $fa $d0 $ff
	ld   [hl+], a                                    ; $2357: $22
	ld   a, [$ffd1]                                  ; $2358: $fa $d1 $ff
	ld   [hl], a                                     ; $235b: $77
	pop  hl                                          ; $235c: $e1

jr_000_235d:
	inc  hl                                          ; $235d: $23
	jp   Jump_000_2316                               ; $235e: $c3 $16 $23


jr_000_2361:
	ld   [$ffd0], a                                  ; $2361: $ea $d0 $ff
	ld   [$ffd1], a                                  ; $2364: $ea $d1 $ff
	ld   [$ffef], a                                  ; $2367: $ea $ef $ff
	ld   a, [wCurrAudChannelIdx]                                  ; $236a: $fa $a9 $cd
	cp   $02                                         ; $236d: $fe $02
	jr   nz, jr_000_237d                             ; $236f: $20 $0c

	ld   a, [$cdad]                                  ; $2371: $fa $ad $cd
	cp   $02                                         ; $2374: $fe $02
	jr   nc, jr_000_237d                             ; $2376: $30 $05

	ld   a, $ff                                      ; $2378: $3e $ff
	ld   [$cddd], a                                  ; $237a: $ea $dd $cd

jr_000_237d:
	call Call_000_292b                               ; $237d: $cd $2b $29
	ret                                              ; $2380: $c9


jr_000_2381:
	cp   $f0                                         ; $2381: $fe $f0
	jr   nc, jr_000_2343                             ; $2383: $30 $be

	cp   $e0                                         ; $2385: $fe $e0
	jr   nc, jr_000_238d                             ; $2387: $30 $04

	and  $0f                                         ; $2389: $e6 $0f
	jr   jr_000_2391                                 ; $238b: $18 $04

jr_000_238d:
	and  $0f                                         ; $238d: $e6 $0f
	cpl                                              ; $238f: $2f
	inc  a                                           ; $2390: $3c

jr_000_2391:
	ld   b, a                                        ; $2391: $47
	ld   a, [wCurrAudChannelIdx]                                  ; $2392: $fa $a9 $cd
	cp   $02                                         ; $2395: $fe $02
	jr   z, jr_000_23a4                              ; $2397: $28 $0b

	ld   a, b                                        ; $2399: $78
	ld   [$ffe0], a                                  ; $239a: $ea $e0 $ff
	ld   a, [hl]                                     ; $239d: $7e
	ld   [$ffe1], a                                  ; $239e: $ea $e1 $ff
	ld   [$ffe2], a                                  ; $23a1: $ea $e2 $ff

jr_000_23a4:
	inc  hl                                          ; $23a4: $23
	jp   Jump_000_2316                               ; $23a5: $c3 $16 $23


	and  $0f                                         ; $23a8: $e6 $0f
	ld   b, a                                        ; $23aa: $47
	ld   a, [wCurrAudChannelIdx]                                  ; $23ab: $fa $a9 $cd
	cp   $02                                         ; $23ae: $fe $02
	jr   z, jr_000_23c3                              ; $23b0: $28 $11

	ld   a, [$ffd8]                                  ; $23b2: $fa $d8 $ff
	and  $0f                                         ; $23b5: $e6 $0f
	jr   nz, jr_000_23c3                             ; $23b7: $20 $0a

	ld   a, [hl]                                     ; $23b9: $7e
	ld   [$ffde], a                                  ; $23ba: $ea $de $ff
	ld   a, b                                        ; $23bd: $78
	swap a                                           ; $23be: $cb $37
	ld   [$ffdd], a                                  ; $23c0: $ea $dd $ff

jr_000_23c3:
	inc  hl                                          ; $23c3: $23
	jp   Jump_000_2316                               ; $23c4: $c3 $16 $23


	and  $0f                                         ; $23c7: $e6 $0f
	jp   z, Jump_000_23e4                            ; $23c9: $ca $e4 $23

	ld   e, a                                        ; $23cc: $5f
	ld   b, [hl]                                     ; $23cd: $46
	push hl                                          ; $23ce: $e5
	call Call_000_2b9b                               ; $23cf: $cd $9b $2b
	inc  [hl]                                        ; $23d2: $34
	ld   a, [hl+]                                    ; $23d3: $2a
	inc  e                                           ; $23d4: $1c
	cp   e                                           ; $23d5: $bb
	jr   nc, jr_000_23e0                             ; $23d6: $30 $08

	ld   a, [hl+]                                    ; $23d8: $2a
	ld   [$ffd0], a                                  ; $23d9: $ea $d0 $ff
	ld   a, [hl]                                     ; $23dc: $7e
	ld   [$ffd1], a                                  ; $23dd: $ea $d1 $ff

jr_000_23e0:
	pop  hl                                          ; $23e0: $e1
	jp   Call_000_2304                               ; $23e1: $c3 $04 $23


Jump_000_23e4:
	ld   a, [hl]                                     ; $23e4: $7e
	ld   b, a                                        ; $23e5: $47
	and  $f0                                         ; $23e6: $e6 $f0
	cp   $f0                                         ; $23e8: $fe $f0
	jp   nz, Jump_000_23ff                           ; $23ea: $c2 $ff $23

	ld   b, [hl]                                     ; $23ed: $46
	push hl                                          ; $23ee: $e5
	call Call_000_2b9b                               ; $23ef: $cd $9b $2b
	inc  hl                                          ; $23f2: $23
	ld   a, [hl+]                                    ; $23f3: $2a
	ld   [$ffd0], a                                  ; $23f4: $ea $d0 $ff
	ld   a, [hl]                                     ; $23f7: $7e
	ld   [$ffd1], a                                  ; $23f8: $ea $d1 $ff
	pop  hl                                          ; $23fb: $e1
	jp   Call_000_2304                               ; $23fc: $c3 $04 $23


Jump_000_23ff:
	inc  hl                                          ; $23ff: $23
	jp   Jump_000_2316                               ; $2400: $c3 $16 $23


	ld   a, [hl+]                                    ; $2403: $2a
	swap a                                           ; $2404: $cb $37
	ld   [$ffd8], a                                  ; $2406: $ea $d8 $ff
	ld   a, [$cdaa]                                  ; $2409: $fa $aa $cd
	ld   b, a                                        ; $240c: $47
	ld   a, [$cda7]                                  ; $240d: $fa $a7 $cd
	and  b                                           ; $2410: $a0
	jp   nz, Jump_000_2316                           ; $2411: $c2 $16 $23

	call Call_000_27b8                               ; $2414: $cd $b8 $27
	jp   Jump_000_2316                               ; $2417: $c3 $16 $23


	ld   a, [wCurrAudChannelIdx]                                  ; $241a: $fa $a9 $cd
	cp   $02                                         ; $241d: $fe $02
	jr   z, jr_000_2428                              ; $241f: $28 $07

	ld   a, [hl+]                                    ; $2421: $2a
	ld   [$ffda], a                                  ; $2422: $ea $da $ff
	jp   Jump_000_2316                               ; $2425: $c3 $16 $23


jr_000_2428:
	ld   a, [hl+]                                    ; $2428: $2a
	ld   e, a                                        ; $2429: $5f
	ld   [$ffda], a                                  ; $242a: $ea $da $ff
	ld   a, [$cdaa]                                  ; $242d: $fa $aa $cd
	ld   b, a                                        ; $2430: $47
	ld   a, [$cda7]                                  ; $2431: $fa $a7 $cd
	and  b                                           ; $2434: $a0
	jr   z, jr_000_243a                              ; $2435: $28 $03

	jp   Jump_000_2316                               ; $2437: $c3 $16 $23

jr_000_243a:
	xor  a                                           ; $243a: $af
	ld   [rAUD3ENA], a                                  ; $243b: $ea $1a $ff
	ld   d, a                                        ; $243e: $57
	push hl                                          ; $243f: $e5
	ld   a, e                                        ; $2440: $7b
	ld   [$cddb], a                                  ; $2441: $ea $db $cd
	swap e                                           ; $2444: $cb $33
	ld   hl, $189e                                   ; $2446: $21 $9e $18
	push de                                          ; $2449: $d5
	ld   a, [$ffe9]                                  ; $244a: $fa $e9 $ff
	swap a                                           ; $244d: $cb $37
	and  $0f                                         ; $244f: $e6 $0f
	add  a                                           ; $2451: $87
	ld   e, a                                        ; $2452: $5f
	ld   d, $00                                      ; $2453: $16 $00
	add  hl, de                                      ; $2455: $19
	ld   a, [hl+]                                    ; $2456: $2a
	ld   h, [hl]                                     ; $2457: $66
	ld   l, a                                        ; $2458: $6f
	pop  de                                          ; $2459: $d1
	add  hl, de                                      ; $245a: $19
	ld   c, LOW(_AUD3WAVERAM)                                      ; $245b: $0e $30
	ld   b, $10                                      ; $245d: $06 $10

jr_000_245f:
	ld   a, [hl+]                                    ; $245f: $2a
	ldh  [c], a                                      ; $2460: $e2
	inc  c                                           ; $2461: $0c
	dec  b                                           ; $2462: $05
	jr   nz, jr_000_245f                             ; $2463: $20 $fa

	pop  hl                                          ; $2465: $e1
	jp   Jump_000_2316                               ; $2466: $c3 $16 $23


	ld   a, [wCurrAudChannelIdx]                                  ; $2469: $fa $a9 $cd
	cp   $02                                         ; $246c: $fe $02
	jr   z, jr_000_2482                              ; $246e: $28 $12

	ld   a, [hl+]                                    ; $2470: $2a
	rrca                                             ; $2471: $0f
	rrca                                             ; $2472: $0f
	and  $c0                                         ; $2473: $e6 $c0
	ld   d, a                                        ; $2475: $57
	ld   a, [$ffd6]                                  ; $2476: $fa $d6 $ff
	and  $3f                                         ; $2479: $e6 $3f
	or   d                                           ; $247b: $b2
	ld   [$ffd6], a                                  ; $247c: $ea $d6 $ff
	jp   Jump_000_2316                               ; $247f: $c3 $16 $23


jr_000_2482:
	ld   a, [hl+]                                    ; $2482: $2a
	ld   [$ffde], a                                  ; $2483: $ea $de $ff
	jp   Jump_000_2316                               ; $2486: $c3 $16 $23


	ld   a, [hl+]                                    ; $2489: $2a
	cp   $fe                                         ; $248a: $fe $fe
	jr   z, jr_000_24aa                              ; $248c: $28 $1c

	ld   b, a                                        ; $248e: $47
	and  $0f                                         ; $248f: $e6 $0f
	add  a                                           ; $2491: $87
	ld   [$ffe7], a                                  ; $2492: $ea $e7 $ff
	ld   [$ffe8], a                                  ; $2495: $ea $e8 $ff
	ld   a, b                                        ; $2498: $78
	add  $10                                         ; $2499: $c6 $10
	and  $f0                                         ; $249b: $e6 $f0
	ld   e, a                                        ; $249d: $5f
	ld   a, [$ffd2]                                  ; $249e: $fa $d2 $ff
	and  $0f                                         ; $24a1: $e6 $0f
	or   e                                           ; $24a3: $b3

jr_000_24a4:
	ld   [$ffd2], a                                  ; $24a4: $ea $d2 $ff
	jp   Jump_000_2316                               ; $24a7: $c3 $16 $23


jr_000_24aa:
	ld   a, [$ffd2]                                  ; $24aa: $fa $d2 $ff
	and  $0f                                         ; $24ad: $e6 $0f
	jr   jr_000_24a4                                 ; $24af: $18 $f3

	ld   a, [hl+]                                    ; $24b1: $2a
	cp   $01                                         ; $24b2: $fe $01
	jr   nz, jr_000_24bb                             ; $24b4: $20 $05

	ld   a, [$ffe6]                                  ; $24b6: $fa $e6 $ff
	swap a                                           ; $24b9: $cb $37

jr_000_24bb:
	ld   [$ffe6], a                                  ; $24bb: $ea $e6 $ff
	jp   Jump_000_2316                               ; $24be: $c3 $16 $23


	ld   a, [hl+]                                    ; $24c1: $2a
	ld   [rAUDVOL], a                                  ; $24c2: $ea $24 $ff
	jp   Jump_000_2316                               ; $24c5: $c3 $16 $23


	ld   a, [hl]                                     ; $24c8: $7e
	ld   [$ffd9], a                                  ; $24c9: $ea $d9 $ff
	jp   Jump_000_270e                               ; $24cc: $c3 $0e $27


	ld   a, [hl+]                                    ; $24cf: $2a
	ld   c, a                                        ; $24d0: $4f
	and  $0f                                         ; $24d1: $e6 $0f
	ld   b, a                                        ; $24d3: $47
	ld   a, c                                        ; $24d4: $79
	and  $f0                                         ; $24d5: $e6 $f0
	or   b                                           ; $24d7: $b0
	ld   [$ffe9], a                                  ; $24d8: $ea $e9 $ff
	jp   Jump_000_2316                               ; $24db: $c3 $16 $23


	ld   a, [hl+]                                    ; $24de: $2a
	cp   $f0                                         ; $24df: $fe $f0
	jr   z, jr_000_2524                              ; $24e1: $28 $41

	cp   $f1                                         ; $24e3: $fe $f1
	jr   z, jr_000_252e                              ; $24e5: $28 $47

	cp   $f2                                         ; $24e7: $fe $f2
	jr   z, jr_000_2538                              ; $24e9: $28 $4d

	cp   $f3                                         ; $24eb: $fe $f3
	jr   z, jr_000_2542                              ; $24ed: $28 $53

	cp   $fe                                         ; $24ef: $fe $fe
	jr   z, jr_000_24fc                              ; $24f1: $28 $09

	cp   $ff                                         ; $24f3: $fe $ff
	jr   nz, jr_000_2512                             ; $24f5: $20 $1b

	ld   a, [$ffdc]                                  ; $24f7: $fa $dc $ff
	jr   jr_000_24ff                                 ; $24fa: $18 $03

jr_000_24fc:
	ld   a, [$cddc]                                  ; $24fc: $fa $dc $cd

jr_000_24ff:
	sla  a                                           ; $24ff: $cb $27
	add  l                                           ; $2501: $85
	ld   l, a                                        ; $2502: $6f
	ld   a, h                                        ; $2503: $7c
	adc  $00                                         ; $2504: $ce $00
	ld   h, a                                        ; $2506: $67
	ld   a, [hl+]                                    ; $2507: $2a
	ld   [$ffd0], a                                  ; $2508: $ea $d0 $ff
	ld   a, [hl]                                     ; $250b: $7e
	ld   [$ffd1], a                                  ; $250c: $ea $d1 $ff
	jp   Call_000_2304                               ; $250f: $c3 $04 $23


jr_000_2512:
	cp   $80                                         ; $2512: $fe $80
	jr   nc, jr_000_251c                             ; $2514: $30 $06

	ld   [$ffdc], a                                  ; $2516: $ea $dc $ff
	jp   Jump_000_2316                               ; $2519: $c3 $16 $23


jr_000_251c:
	sub  $80                                         ; $251c: $d6 $80
	ld   [$cddc], a                                  ; $251e: $ea $dc $cd
	jp   Jump_000_2316                               ; $2521: $c3 $16 $23


jr_000_2524:
	ld   a, [$ffdc]                                  ; $2524: $fa $dc $ff
	inc  a                                           ; $2527: $3c
	ld   [$ffdc], a                                  ; $2528: $ea $dc $ff
	jp   Jump_000_2316                               ; $252b: $c3 $16 $23


jr_000_252e:
	ld   a, [$ffdc]                                  ; $252e: $fa $dc $ff
	dec  a                                           ; $2531: $3d
	ld   [$ffdc], a                                  ; $2532: $ea $dc $ff
	jp   Jump_000_2316                               ; $2535: $c3 $16 $23


jr_000_2538:
	ld   a, [$cddc]                                  ; $2538: $fa $dc $cd
	inc  a                                           ; $253b: $3c
	ld   [$cddc], a                                  ; $253c: $ea $dc $cd
	jp   Jump_000_2316                               ; $253f: $c3 $16 $23


jr_000_2542:
	ld   a, [$cddc]                                  ; $2542: $fa $dc $cd
	dec  a                                           ; $2545: $3d
	ld   [$cddc], a                                  ; $2546: $ea $dc $cd
	jp   Jump_000_2316                               ; $2549: $c3 $16 $23


	ld   a, [hl+]                                    ; $254c: $2a
	ld   c, a                                        ; $254d: $4f
	and  $f0                                         ; $254e: $e6 $f0
	jr   z, jr_000_256c                              ; $2550: $28 $1a

	swap a                                           ; $2552: $cb $37
	ld   [$ffea], a                                  ; $2554: $ea $ea $ff
	or   $f0                                         ; $2557: $f6 $f0
	ld   [$ffeb], a                                  ; $2559: $ea $eb $ff
	ld   a, c                                        ; $255c: $79
	and  $0f                                         ; $255d: $e6 $0f
	ld   c, a                                        ; $255f: $4f
	ld   a, [$ffe5]                                  ; $2560: $fa $e5 $ff
	and  $f0                                         ; $2563: $e6 $f0
	or   c                                           ; $2565: $b1
	ld   [$ffe5], a                                  ; $2566: $ea $e5 $ff
	jp   Jump_000_2316                               ; $2569: $c3 $16 $23


jr_000_256c:
	xor  a                                           ; $256c: $af
	ld   [$ffea], a                                  ; $256d: $ea $ea $ff
	ld   [$ffe5], a                                  ; $2570: $ea $e5 $ff
	ld   [$ffeb], a                                  ; $2573: $ea $eb $ff
	jp   Jump_000_2316                               ; $2576: $c3 $16 $23


	ld   a, [$ffec]                                  ; $2579: $fa $ec $ff
	sub  $01                                         ; $257c: $d6 $01
	jr   z, jr_000_25a9                              ; $257e: $28 $29

	jr   nc, jr_000_2583                             ; $2580: $30 $01

	ld   a, [hl]                                     ; $2582: $7e

jr_000_2583:
	ld   [$ffec], a                                  ; $2583: $ea $ec $ff
	ld   a, [$ffd0]                                  ; $2586: $fa $d0 $ff
	sub  $01                                         ; $2589: $d6 $01
	ld   [$ffed], a                                  ; $258b: $ea $ed $ff
	ld   a, [$ffd1]                                  ; $258e: $fa $d1 $ff
	sbc  $00                                         ; $2591: $de $00
	ld   [$ffee], a                                  ; $2593: $ea $ee $ff
	inc  hl                                          ; $2596: $23
	ld   a, [hl+]                                    ; $2597: $2a
	ld   h, [hl]                                     ; $2598: $66
	ld   l, a                                        ; $2599: $6f
	srl  h                                           ; $259a: $cb $3c
	rr   l                                           ; $259c: $cb $1d
	ld   a, l                                        ; $259e: $7d
	ld   [$ffd0], a                                  ; $259f: $ea $d0 $ff
	ld   a, h                                        ; $25a2: $7c
	ld   [$ffd1], a                                  ; $25a3: $ea $d1 $ff
	jp   Call_000_2304                               ; $25a6: $c3 $04 $23


jr_000_25a9:
	xor  a                                           ; $25a9: $af
	ld   [$ffec], a                                  ; $25aa: $ea $ec $ff
	ld   a, [$ffd0]                                  ; $25ad: $fa $d0 $ff
	add  $01                                         ; $25b0: $c6 $01
	ld   [$ffd0], a                                  ; $25b2: $ea $d0 $ff
	ld   a, [$ffd1]                                  ; $25b5: $fa $d1 $ff
	adc  $00                                         ; $25b8: $ce $00
	ld   [$ffd1], a                                  ; $25ba: $ea $d1 $ff
	jp   Call_000_2304                               ; $25bd: $c3 $04 $23


	ld   a, [$ffed]                                  ; $25c0: $fa $ed $ff
	ld   [$ffd0], a                                  ; $25c3: $ea $d0 $ff
	ld   a, [$ffee]                                  ; $25c6: $fa $ee $ff
	ld   [$ffd1], a                                  ; $25c9: $ea $d1 $ff
	jp   Call_000_2304                               ; $25cc: $c3 $04 $23


	ld   a, [hl+]                                    ; $25cf: $2a
	and  $10                                         ; $25d0: $e6 $10
	ld   b, a                                        ; $25d2: $47
	ld   a, [$ffd6]                                  ; $25d3: $fa $d6 $ff
	and  $ef                                         ; $25d6: $e6 $ef
	or   b                                           ; $25d8: $b0
	ld   [$ffd6], a                                  ; $25d9: $ea $d6 $ff
	jp   Jump_000_2316                               ; $25dc: $c3 $16 $23


	ld   a, [hl+]                                    ; $25df: $2a
	and  $0f                                         ; $25e0: $e6 $0f
	ld   [$ffd7], a                                  ; $25e2: $ea $d7 $ff
	ld   b, a                                        ; $25e5: $47
	ld   a, [$ffd6]                                  ; $25e6: $fa $d6 $ff
	and  $f0                                         ; $25e9: $e6 $f0
	or   b                                           ; $25eb: $b0
	ld   [$ffd6], a                                  ; $25ec: $ea $d6 $ff
	jp   Jump_000_2316                               ; $25ef: $c3 $16 $23


	inc  hl                                          ; $25f2: $23
	jp   Jump_000_2316                               ; $25f3: $c3 $16 $23


	nop                                              ; $25f6: $00
	ld   bc, $1211                                   ; $25f7: $01 $11 $12
	inc  d                                           ; $25fa: $14
	inc  hl                                          ; $25fb: $23
	rlca                                             ; $25fc: $07
	dec  d                                           ; $25fd: $15
	rla                                              ; $25fe: $17
	ld   [hl-], a                                    ; $25ff: $32
	inc  sp                                          ; $2600: $33
	ld   h, b                                        ; $2601: $60
	ld   h, c                                        ; $2602: $61
	ld   b, l                                        ; $2603: $45
	ld   d, e                                        ; $2604: $53
	ld   h, d                                        ; $2605: $62

jr_000_2606:
	xor  a                                           ; $2606: $af
	ld   [$ffe3], a                                  ; $2607: $ea $e3 $ff
	ld   a, $80                                      ; $260a: $3e $80
	ld   [$ffe4], a                                  ; $260c: $ea $e4 $ff
	ld   a, [wCurrAudChannelIdx]                                  ; $260f: $fa $a9 $cd
	cp   $02                                         ; $2612: $fe $02
	jr   z, jr_000_261a                              ; $2614: $28 $04

	call Call_000_2923                               ; $2616: $cd $23 $29
	ret                                              ; $2619: $c9


jr_000_261a:
	call Call_000_293b                               ; $261a: $cd $3b $29
	push hl                                          ; $261d: $e5
	ld   hl, $cdaf                                   ; $261e: $21 $af $cd
	ld   a, [$cdad]                                  ; $2621: $fa $ad $cd
	add  l                                           ; $2624: $85
	ld   l, a                                        ; $2625: $6f
	ld   a, $00                                      ; $2626: $3e $00
	adc  h                                           ; $2628: $8c
	ld   h, a                                        ; $2629: $67
	ld   a, [hl]                                     ; $262a: $7e
	and  a                                           ; $262b: $a7
	pop  hl                                          ; $262c: $e1
	ret  z                                           ; $262d: $c8

	xor  a                                           ; $262e: $af
	ld   [rAUD3ENA], a                                  ; $262f: $ea $1a $ff
	ret                                              ; $2632: $c9


Jump_000_2633:
	ld   b, a                                        ; $2633: $47
	ld   a, [$ffeb]                                  ; $2634: $fa $eb $ff
	and  $f0                                         ; $2637: $e6 $f0
	jr   z, jr_000_264d                              ; $2639: $28 $12

	push de                                          ; $263b: $d5
	ld   a, [$ffeb]                                  ; $263c: $fa $eb $ff
	and  $0f                                         ; $263f: $e6 $0f
	ld   [$ffea], a                                  ; $2641: $ea $ea $ff
	ld   c, a                                        ; $2644: $4f
	ld   a, [hl]                                     ; $2645: $7e
	sub  c                                           ; $2646: $91
	ld   [$ffd9], a                                  ; $2647: $ea $d9 $ff
	pop  de                                          ; $264a: $d1
	jr   jr_000_2651                                 ; $264b: $18 $04

jr_000_264d:
	ld   a, [hl]                                     ; $264d: $7e
	ld   [$ffd9], a                                  ; $264e: $ea $d9 $ff

jr_000_2651:
	ld   a, [wCurrAudChannelIdx]                                  ; $2651: $fa $a9 $cd
	cp   $03                                         ; $2654: $fe $03
	jr   nz, jr_000_2674                             ; $2656: $20 $1c

	ld   a, b                                        ; $2658: $78
	cp   $1f                                         ; $2659: $fe $1f
	jr   z, jr_000_2606                              ; $265b: $28 $a9

	cp   $10                                         ; $265d: $fe $10
	jr   nc, jr_000_266f                             ; $265f: $30 $0e

	ld   hl, $25f6                                   ; $2661: $21 $f6 $25
	add  l                                           ; $2664: $85
	ld   l, a                                        ; $2665: $6f
	ld   a, h                                        ; $2666: $7c
	adc  $00                                         ; $2667: $ce $00
	ld   h, a                                        ; $2669: $67
	ld   l, [hl]                                     ; $266a: $6e
	ld   h, $00                                      ; $266b: $26 $00
	jr   jr_000_26a8                                 ; $266d: $18 $39

jr_000_266f:
	ld   l, a                                        ; $266f: $6f
	ld   h, $00                                      ; $2670: $26 $00
	jr   jr_000_26a8                                 ; $2672: $18 $34

jr_000_2674:
	ld   a, b                                        ; $2674: $78
	and  $0f                                         ; $2675: $e6 $0f
	cp   $0c                                         ; $2677: $fe $0c
	jr   nc, jr_000_2606                             ; $2679: $30 $8b

	add  a                                           ; $267b: $87
	ld   e, a                                        ; $267c: $5f
	ld   a, [$ffd6]                                  ; $267d: $fa $d6 $ff
	and  $10                                         ; $2680: $e6 $10
	jr   z, jr_000_2688                              ; $2682: $28 $04

	ld   a, e                                        ; $2684: $7b
	add  $18                                         ; $2685: $c6 $18
	ld   e, a                                        ; $2687: $5f

jr_000_2688:
	ld   d, $00                                      ; $2688: $16 $00
	ld   hl, $2946                                   ; $268a: $21 $46 $29
	add  hl, de                                      ; $268d: $19
	ld   a, [hl+]                                    ; $268e: $2a
	ld   h, [hl]                                     ; $268f: $66
	ld   l, a                                        ; $2690: $6f
	ld   a, b                                        ; $2691: $78
	swap a                                           ; $2692: $cb $37
	and  $0f                                         ; $2694: $e6 $0f
	jr   z, jr_000_26a0                              ; $2696: $28 $08

	ld   b, a                                        ; $2698: $47

jr_000_2699:
	srl  h                                           ; $2699: $cb $3c
	rr   l                                           ; $269b: $cb $1d
	dec  b                                           ; $269d: $05
	jr   nz, jr_000_2699                             ; $269e: $20 $f9

jr_000_26a0:
	ld   a, $00                                      ; $26a0: $3e $00
	sub  l                                           ; $26a2: $95
	ld   l, a                                        ; $26a3: $6f
	ld   a, $08                                      ; $26a4: $3e $08
	sbc  h                                           ; $26a6: $9c
	ld   h, a                                        ; $26a7: $67

jr_000_26a8:
	xor  a                                           ; $26a8: $af
	ld   [$ffdf], a                                  ; $26a9: $ea $df $ff
	call Call_000_293b                               ; $26ac: $cd $3b $29
	ld   a, [wCurrAudChannelIdx]                                  ; $26af: $fa $a9 $cd
	cp   $02                                         ; $26b2: $fe $02
	jr   nz, jr_000_26be                             ; $26b4: $20 $08

	call Call_000_2b66                               ; $26b6: $cd $66 $2b
	ld   a, $80                                      ; $26b9: $3e $80
	ld   [rAUD3ENA], a                                  ; $26bb: $ea $1a $ff

jr_000_26be:
	push hl                                          ; $26be: $e5
	call Call_000_27a6                               ; $26bf: $cd $a6 $27
	pop  hl                                          ; $26c2: $e1

; 
	ld   a, [wCurrAudChannelIdx]                                  ; $26c3: $fa $a9 $cd
	and  a                                           ; $26c6: $a7

; aud 1 sweep
	ld   a, [$ffda]                                  ; $26c7: $fa $da $ff
	ld   c, AUD_SWEEP_OR_WAVENA                                      ; $26ca: $0e $10
	call z, SetAudHwReg                            ; $26cc: $cc $29 $28

; freq low
	ld   a, l                                        ; $26cf: $7d
	ld   c, AUD_FREQ_LO_OR_NOISE_POLY                                      ; $26d0: $0e $13
	call SetAudHwReg                               ; $26d2: $cd $29 $28
	ld   a, l                                        ; $26d5: $7d
	cp   $02                                         ; $26d6: $fe $02
	jr   c, jr_000_26e2                              ; $26d8: $38 $08

	cp   $fe                                         ; $26da: $fe $fe
	jr   c, jr_000_26e4                              ; $26dc: $38 $06

	ld   a, $fd                                      ; $26de: $3e $fd
	jr   jr_000_26e4                                 ; $26e0: $18 $02

jr_000_26e2:
	ld   a, $02                                      ; $26e2: $3e $02

jr_000_26e4:
	ld   [$ffe3], a                                  ; $26e4: $ea $e3 $ff
	ld   a, [wCurrAudChannelIdx]                                  ; $26e7: $fa $a9 $cd
	cp   $02                                         ; $26ea: $fe $02
	jr   z, jr_000_2722                              ; $26ec: $28 $34

	cp   $02                                         ; $26ee: $fe $02
	jr   nc, jr_000_26fe                             ; $26f0: $30 $0c

; len
	ld   a, [$ffd6]                                  ; $26f2: $fa $d6 $ff
	and  $c0                                         ; $26f5: $e6 $c0
	or   $3f                                         ; $26f7: $f6 $3f
	ld   c, AUD_LEN                                      ; $26f9: $0e $11
	call SetAudHwReg                               ; $26fb: $cd $29 $28

jr_000_26fe:
	ld   a, h                                        ; $26fe: $7c
	and  $07                                         ; $26ff: $e6 $07
	or   $80                                         ; $2701: $f6 $80

jr_000_2703:
	ld   [$ffe4], a                                  ; $2703: $ea $e4 $ff

; Set lo freq reg
	ld   c, AUD_FREQ_HI_OR_NOISE_GO                                      ; $2706: $0e $14
	call SetAudHwReg                               ; $2708: $cd $29 $28
	call ClearLenPartOfChannelAudLen                               ; $270b: $cd $3c $28

Jump_000_270e:
	ld   a, [$cdaa]                                  ; $270e: $fa $aa $cd
	ld   b, a                                        ; $2711: $47
	cpl                                              ; $2712: $2f
	ld   c, a                                        ; $2713: $4f
	ld   a, [$ffe6]                                  ; $2714: $fa $e6 $ff
	and  b                                           ; $2717: $a0
	ld   b, a                                        ; $2718: $47
	ld   a, [$cda8]                                  ; $2719: $fa $a8 $cd
	and  c                                           ; $271c: $a1
	or   b                                           ; $271d: $b0
	ld   [$cda8], a                                  ; $271e: $ea $a8 $cd
	ret                                              ; $2721: $c9


jr_000_2722:
	xor  a                                           ; $2722: $af
	ld   [rAUD3LEN], a                                  ; $2723: $ea $1b $ff
	ld   a, [rAUDENA]                                  ; $2726: $fa $26 $ff
	and  $04                                         ; $2729: $e6 $04
	jr   z, jr_000_26fe                              ; $272b: $28 $d1

	ld   a, h                                        ; $272d: $7c
	and  $07                                         ; $272e: $e6 $07
	jr   jr_000_2703                                 ; $2730: $18 $d1

	ld   a, [wCurrAudChannelIdx]                                  ; $2732: $fa $a9 $cd
	cp   $02                                         ; $2735: $fe $02
	ret  z                                           ; $2737: $c8

	ld   a, [$ffe0]                                  ; $2738: $fa $e0 $ff
	and  a                                           ; $273b: $a7
	ret  z                                           ; $273c: $c8

	ld   hl, $ffe2                                   ; $273d: $21 $e2 $ff
	dec  [hl]                                        ; $2740: $35
	ret  nz                                          ; $2741: $c0

	ld   a, [$ffd8]                                  ; $2742: $fa $d8 $ff
	swap a                                           ; $2745: $cb $37
	cp   $10                                         ; $2747: $fe $10
	ret  nc                                          ; $2749: $d0

	and  $0f                                         ; $274a: $e6 $0f
	ld   b, a                                        ; $274c: $47
	ld   a, [$ffe1]                                  ; $274d: $fa $e1 $ff
	ld   [$ffe2], a                                  ; $2750: $ea $e2 $ff
	ld   hl, $ffe0                                   ; $2753: $21 $e0 $ff
	ld   a, [hl]                                     ; $2756: $7e
	bit  7, a                                        ; $2757: $cb $7f
	jr   nz, jr_000_276b                             ; $2759: $20 $10

	dec  [hl]                                        ; $275b: $35
	ld   a, b                                        ; $275c: $78
	cp   $0f                                         ; $275d: $fe $0f
	ret  z                                           ; $275f: $c8

	ld   a, [$ffd8]                                  ; $2760: $fa $d8 $ff
	add  $10                                         ; $2763: $c6 $10
	ld   [$ffd8], a                                  ; $2765: $ea $d8 $ff
	jp   Call_000_27b8                               ; $2768: $c3 $b8 $27


jr_000_276b:
	inc  [hl]                                        ; $276b: $34
	ld   a, b                                        ; $276c: $78
	and  a                                           ; $276d: $a7
	ret  z                                           ; $276e: $c8

	ld   a, [$ffd8]                                  ; $276f: $fa $d8 $ff
	sub  $10                                         ; $2772: $d6 $10
	ld   [$ffd8], a                                  ; $2774: $ea $d8 $ff
	jr   Call_000_27b8                                 ; $2777: $18 $3f


Call_000_2779:
	call Call_000_293b                               ; $2779: $cd $3b $29
	ld   a, [wCurrAudChannelIdx]                                  ; $277c: $fa $a9 $cd
	cp   $03                                         ; $277f: $fe $03
	ret  z                                           ; $2781: $c8

	ld   a, [$ffe8]                                  ; $2782: $fa $e8 $ff
	and  a                                           ; $2785: $a7
	ret  nz                                          ; $2786: $c0

	ld   a, [$ffd2]                                  ; $2787: $fa $d2 $ff
	and  $f0                                         ; $278a: $e6 $f0
	ret  z                                           ; $278c: $c8

	sub  $10                                         ; $278d: $d6 $10
	ld   b, a                                        ; $278f: $47
	ld   a, [$cdac]                                  ; $2790: $fa $ac $cd
	and  $0f                                         ; $2793: $e6 $0f
	or   b                                           ; $2795: $b0
	ld   e, a                                        ; $2796: $5f
	ld   d, $00                                      ; $2797: $16 $00
	ld   hl, $2a76                                   ; $2799: $21 $76 $2a
	add  hl, de                                      ; $279c: $19

; freq lo
	ld   a, [$ffe3]                                  ; $279d: $fa $e3 $ff
	add  [hl]                                        ; $27a0: $86
	ld   c, AUD_FREQ_LO_OR_NOISE_POLY                                     ; $27a1: $0e $13
	jp   SetAudHwReg                               ; $27a3: $c3 $29 $28


Call_000_27a6:
	ld   a, [wCurrAudChannelIdx]                                  ; $27a6: $fa $a9 $cd
	cp   $02                                         ; $27a9: $fe $02
	jp   z, SetWavLevel                            ; $27ab: $ca $32 $28

	ld   a, [$ffdd]                                  ; $27ae: $fa $dd $ff
	and  a                                           ; $27b1: $a7
	jp   nz, Jump_000_287a                           ; $27b2: $c2 $7a $28

	ld   a, [$ffd8]                                  ; $27b5: $fa $d8 $ff

Call_000_27b8:
	push hl                                          ; $27b8: $e5
	ld   b, a                                        ; $27b9: $47
	ld   hl, $cdaf                                   ; $27ba: $21 $af $cd
	ld   a, [$cdad]                                  ; $27bd: $fa $ad $cd
	add  l                                           ; $27c0: $85
	ld   l, a                                        ; $27c1: $6f
	ld   a, $00                                      ; $27c2: $3e $00
	adc  h                                           ; $27c4: $8c
	ld   h, a                                        ; $27c5: $67
	ld   a, [hl]                                     ; $27c6: $7e
	cp   $0f                                         ; $27c7: $fe $0f
	ld   a, b                                        ; $27c9: $78
	jr   z, jr_000_27f2                              ; $27ca: $28 $26

	ld   c, [hl]                                     ; $27cc: $4e
	inc  c                                           ; $27cd: $0c
	ld   a, b                                        ; $27ce: $78
	push af                                          ; $27cf: $f5
	swap a                                           ; $27d0: $cb $37
	and  $0f                                         ; $27d2: $e6 $0f
	push de                                          ; $27d4: $d5
	ld   hl, $0000                                   ; $27d5: $21 $00 $00
	ld   b, l                                        ; $27d8: $45
	ld   d, $08                                      ; $27d9: $16 $08

jr_000_27db:
	rrca                                             ; $27db: $0f
	jr   nc, jr_000_27df                             ; $27dc: $30 $01

	add  hl, bc                                      ; $27de: $09

jr_000_27df:
	sla  c                                           ; $27df: $cb $21
	rl   b                                           ; $27e1: $cb $10
	dec  d                                           ; $27e3: $15
	jr   nz, jr_000_27db                             ; $27e4: $20 $f5

	pop  de                                          ; $27e6: $d1
	ld   a, $10                                      ; $27e7: $3e $10
	call Call_000_2d86                               ; $27e9: $cd $86 $2d
	pop  af                                          ; $27ec: $f1
	swap l                                           ; $27ed: $cb $35
	and  $0f                                         ; $27ef: $e6 $0f
	or   l                                           ; $27f1: $b5

jr_000_27f2:
	ld   b, a                                        ; $27f2: $47
	ld   hl, $cdc8                                   ; $27f3: $21 $c8 $cd
	ld   a, [$cdad]                                  ; $27f6: $fa $ad $cd
	add  l                                           ; $27f9: $85
	ld   l, a                                        ; $27fa: $6f
	ld   a, $00                                      ; $27fb: $3e $00
	adc  h                                           ; $27fd: $8c
	ld   h, a                                        ; $27fe: $67
	ld   c, [hl]                                     ; $27ff: $4e
	ld   a, b                                        ; $2800: $78
	and  $f0                                         ; $2801: $e6 $f0
	ld   [hl], a                                     ; $2803: $77
	pop  hl                                          ; $2804: $e1
	jr   nz, jr_000_2809                             ; $2805: $20 $02

	cp   c                                           ; $2807: $b9
	ret  z                                           ; $2808: $c8

jr_000_2809:
	ld   a, b                                        ; $2809: $78
	and  $07                                         ; $280a: $e6 $07
	jr   nz, jr_000_2812                             ; $280c: $20 $04

	ld   a, b                                        ; $280e: $78
	or   $08                                         ; $280f: $f6 $08
	ld   b, a                                        ; $2811: $47

jr_000_2812:
	ld   a, [wCurrAudChannelTimes5]                                  ; $2812: $fa $ab $cd
	add  AUD_ENV_OR_WAVLEVEL                                         ; $2815: $c6 $12
	ld   c, a                                        ; $2817: $4f
	ldh  a, [c]                                      ; $2818: $f2
	cp   b                                           ; $2819: $b8
	ret  z                                           ; $281a: $c8

	ld   a, b                                        ; $281b: $78
	ldh  [c], a                                      ; $281c: $e2

; freq hi
	ld   a, [$ffe4]                                  ; $281d: $fa $e4 $ff
	ld   c, AUD_FREQ_HI_OR_NOISE_GO                                      ; $2820: $0e $14
	call SetAudHwReg                               ; $2822: $cd $29 $28
	call ClearLenPartOfChannelAudLen                               ; $2825: $cd $3c $28
	ret                                              ; $2828: $c9


; A - value to set
; C - aud reg offset to write for channel, +$10
SetAudHwReg:
	ld   b, a                                                       ; $2829
	
; Get base offset for aud hw regs, and add C offset
	ld   a, [wCurrAudChannelTimes5]                                 ; $282a
	add  c                                                          ; $282d
	ld   c, a                                                       ; $282e
	
; Set value from orig A
	ld   a, b                                                       ; $282f
	ldh  [c], a                                                     ; $2830
	ret                                                             ; $2831


SetWavLevel:
	ld   a, [$ffd8]                                  ; $2832: $fa $d8 $ff
	call Call_000_2c06                               ; $2835: $cd $06 $2c
	ld   c, AUD_ENV_OR_WAVLEVEL                                      ; $2838: $0e $12
	jr   SetAudHwReg                                 ; $283a: $18 $ed


ClearLenPartOfChannelAudLen:
; C = low byte of len/wave pattern regs
	ld   c, AUD_LEN                                      ; $283c: $0e $11
	ld   a, [wCurrAudChannelTimes5]                                  ; $283e: $fa $ab $cd
	add  c                                           ; $2841: $81
	ld   c, a                                        ; $2842: $4f

; Remove len part
	ldh  a, [c]                                      ; $2843: $f2
	and  $c0                                         ; $2844: $e6 $c0
	ldh  [c], a                                      ; $2846: $e2
	ret                                              ; $2847: $c9


jr_000_2848:
	ld   a, e                                        ; $2848: $7b
	srl  a                                           ; $2849: $cb $3f
	add  $02                                         ; $284b: $c6 $02
	swap a                                           ; $284d: $cb $37
	ld   hl, $ffd8                                   ; $284f: $21 $d8 $ff
	cp   [hl]                                        ; $2852: $be
	ret  c                                           ; $2853: $d8

	and  $60                                         ; $2854: $e6 $60
	call Call_000_2c06                               ; $2856: $cd $06 $2c
	ld   [rAUD3LEVEL], a                                  ; $2859: $ea $1c $ff
	ret                                              ; $285c: $c9


Call_000_285d:
	call Call_000_293b                               ; $285d: $cd $3b $29
	ld   a, [$ffe3]                                  ; $2860: $fa $e3 $ff
	and  a                                           ; $2863: $a7
	jr   nz, jr_000_286e                             ; $2864: $20 $08

	ld   a, [$ffe4]                                  ; $2866: $fa $e4 $ff
	and  $7f                                         ; $2869: $e6 $7f
	jp   z, Jump_000_2923                            ; $286b: $ca $23 $29

jr_000_286e:
	ld   a, [wCurrAudChannelIdx]                                  ; $286e: $fa $a9 $cd
	cp   $02                                         ; $2871: $fe $02
	jr   z, jr_000_287a                              ; $2873: $28 $05

	ld   a, [$ffdd]                                  ; $2875: $fa $dd $ff
	and  a                                           ; $2878: $a7
	ret  z                                           ; $2879: $c8

Jump_000_287a:
jr_000_287a:
	ld   a, [$ffde]                                  ; $287a: $fa $de $ff
	and  a                                           ; $287d: $a7
	ret  z                                           ; $287e: $c8

	ld   e, $00                                      ; $287f: $1e $00
	ld   c, a                                        ; $2881: $4f
	ld   a, [$ffdf]                                  ; $2882: $fa $df $ff
	ld   b, $04                                      ; $2885: $06 $04

jr_000_2887:
	add  a                                           ; $2887: $87
	cp   c                                           ; $2888: $b9
	jr   c, jr_000_288c                              ; $2889: $38 $01

	sub  c                                           ; $288b: $91

jr_000_288c:
	ccf                                              ; $288c: $3f
	rl   e                                           ; $288d: $cb $13
	dec  b                                           ; $288f: $05
	jr   nz, jr_000_2887                             ; $2890: $20 $f5

	ld   a, [wCurrAudChannelIdx]                                  ; $2892: $fa $a9 $cd
	cp   $02                                         ; $2895: $fe $02
	jr   z, jr_000_2848                              ; $2897: $28 $af

	ld   a, [$ffdd]                                  ; $2899: $fa $dd $ff
	or   e                                           ; $289c: $b3
	ld   e, a                                        ; $289d: $5f
	ld   d, $00                                      ; $289e: $16 $00
	push de                                          ; $28a0: $d5
	ld   a, [$ffe9]                                  ; $28a1: $fa $e9 $ff
	and  $0f                                         ; $28a4: $e6 $0f
	ld   de, $19a0                                   ; $28a6: $11 $a0 $19
	sla  a                                           ; $28a9: $cb $27
	add  e                                           ; $28ab: $83
	ld   e, a                                        ; $28ac: $5f
	xor  a                                           ; $28ad: $af
	adc  d                                           ; $28ae: $8a
	ld   d, a                                        ; $28af: $57
	ld   a, [de]                                     ; $28b0: $1a
	ld   l, a                                        ; $28b1: $6f
	inc  de                                          ; $28b2: $13
	ld   a, [de]                                     ; $28b3: $1a
	ld   h, a                                        ; $28b4: $67
	pop  de                                          ; $28b5: $d1
	ld   a, l                                        ; $28b6: $7d
	sub  $10                                         ; $28b7: $d6 $10
	ld   l, a                                        ; $28b9: $6f
	ld   a, h                                        ; $28ba: $7c
	sbc  $00                                         ; $28bb: $de $00
	ld   h, a                                        ; $28bd: $67
	add  hl, de                                      ; $28be: $19
	ld   a, [$ffd8]                                  ; $28bf: $fa $d8 $ff
	swap a                                           ; $28c2: $cb $37
	ld   e, a                                        ; $28c4: $5f
	ld   a, [hl]                                     ; $28c5: $7e
	ld   h, a                                        ; $28c6: $67
	and  $f0                                         ; $28c7: $e6 $f0
	or   e                                           ; $28c9: $b3
	ld   e, a                                        ; $28ca: $5f
	bit  2, h                                        ; $28cb: $cb $54
	jr   nz, jr_000_28ef                             ; $28cd: $20 $20

	inc  b                                           ; $28cf: $04
	ld   a, c                                        ; $28d0: $79
	swap a                                           ; $28d1: $cb $37
	and  $0f                                         ; $28d3: $e6 $0f
	jr   z, jr_000_28ef                              ; $28d5: $28 $18

	ld   b, a                                        ; $28d7: $47
	bit  3, e                                        ; $28d8: $cb $5b
	jr   nz, jr_000_28e8                             ; $28da: $20 $0c

	sla  b                                           ; $28dc: $cb $20
	bit  2, e                                        ; $28de: $cb $53
	jr   nz, jr_000_28e8                             ; $28e0: $20 $06

	sla  b                                           ; $28e2: $cb $20
	bit  1, e                                        ; $28e4: $cb $4b
	jr   z, jr_000_28ed                              ; $28e6: $28 $05

jr_000_28e8:
	ld   a, b                                        ; $28e8: $78
	cp   $08                                         ; $28e9: $fe $08
	jr   c, jr_000_28ef                              ; $28eb: $38 $02

jr_000_28ed:
	ld   b, $00                                      ; $28ed: $06 $00

jr_000_28ef:
	bit  1, h                                        ; $28ef: $cb $4c
	jr   z, jr_000_28f8                              ; $28f1: $28 $05

	ld   a, b                                        ; $28f3: $78
	jr   z, jr_000_28f8                              ; $28f4: $28 $02

	srl  b                                           ; $28f6: $cb $38

jr_000_28f8:
	ld   a, h                                        ; $28f8: $7c
	and  $08                                         ; $28f9: $e6 $08
	or   b                                           ; $28fb: $b0
	ld   b, a                                        ; $28fc: $47
	bit  0, h                                        ; $28fd: $cb $44
	jr   z, jr_000_290a                              ; $28ff: $28 $09

	ld   hl, $2976                                   ; $2901: $21 $76 $29
	add  hl, de                                      ; $2904: $19
	ld   a, [hl]                                     ; $2905: $7e
	or   b                                           ; $2906: $b0
	jp   Call_000_27b8                               ; $2907: $c3 $b8 $27


jr_000_290a:
	ld   c, $12                                      ; $290a: $0e $12
	ld   a, [wCurrAudChannelTimes5]                                  ; $290c: $fa $ab $cd
	add  c                                           ; $290f: $81
	ld   c, a                                        ; $2910: $4f
	ldh  a, [c]                                      ; $2911: $f2
	and  $08                                         ; $2912: $e6 $08
	ld   l, a                                        ; $2914: $6f
	ld   a, h                                        ; $2915: $7c
	and  $08                                         ; $2916: $e6 $08
	cp   l                                           ; $2918: $bd
	ret  z                                           ; $2919: $c8

	ld   hl, $2976                                   ; $291a: $21 $76 $29
	add  hl, de                                      ; $291d: $19
	ld   a, [hl]                                     ; $291e: $7e
	or   b                                           ; $291f: $b0
	jp   Call_000_27b8                               ; $2920: $c3 $b8 $27


Call_000_2923:
Jump_000_2923:
	call Call_000_293b                               ; $2923: $cd $3b $29
	ld   a, $00                                      ; $2926: $3e $00
	jp   Call_000_27b8                               ; $2928: $c3 $b8 $27


Call_000_292b:
	call Call_000_293b                               ; $292b: $cd $3b $29
	ld   a, [$cdaa]                                  ; $292e: $fa $aa $cd
	cpl                                              ; $2931: $2f
	ld   b, a                                        ; $2932: $47
	ld   a, [$cda8]                                  ; $2933: $fa $a8 $cd
	and  b                                           ; $2936: $a0
	ld   [$cda8], a                                  ; $2937: $ea $a8 $cd
	ret                                              ; $293a: $c9


Call_000_293b:
	ld   a, [$cdaa]                                  ; $293b: $fa $aa $cd
	ld   b, a                                        ; $293e: $47
	ld   a, [$cda7]                                  ; $293f: $fa $a7 $cd
	and  b                                           ; $2942: $a0
	ret  z                                           ; $2943: $c8

	pop  af                                          ; $2944: $f1
	ret                                              ; $2945: $c9


	call nc, $6407                                   ; $2946: $d4 $07 $64
	rlca                                             ; $2949: $07
	ld   sp, hl                                      ; $294a: $f9
	ld   b, $95                                      ; $294b: $06 $95
	ld   b, $37                                      ; $294d: $06 $37
	ld   b, $dd                                      ; $294f: $06 $dd
	dec  b                                           ; $2951: $05
	adc  c                                           ; $2952: $89
	dec  b                                           ; $2953: $05
	ld   a, [hl-]                                    ; $2954: $3a
	dec  b                                           ; $2955: $05
	ldh  a, [rDIV]                                   ; $2956: $f0 $04
	xor  b                                           ; $2958: $a8
	inc  b                                           ; $2959: $04
	ld   h, l                                        ; $295a: $65
	inc  b                                           ; $295b: $04
	ld   h, $04                                      ; $295c: $26 $04
	sbc  h                                           ; $295e: $9c
	rlca                                             ; $295f: $07
	ld   l, $07                                      ; $2960: $2e $07
	rst  ToBoot                                         ; $2962: $c7
	ld   b, $66                                      ; $2963: $06 $66
	ld   b, $0a                                      ; $2965: $06 $0a
	ld   b, $b3                                      ; $2967: $06 $b3
	dec  b                                           ; $2969: $05
	ld   h, c                                        ; $296a: $61
	dec  b                                           ; $296b: $05
	dec  d                                           ; $296c: $15
	dec  b                                           ; $296d: $05
	call z, $8604                                    ; $296e: $cc $04 $86
	inc  b                                           ; $2971: $04
	ld   b, l                                        ; $2972: $45
	inc  b                                           ; $2973: $04
	ld   [$0004], sp                                 ; $2974: $08 $04 $00
	nop                                              ; $2977: $00
	nop                                              ; $2978: $00
	nop                                              ; $2979: $00
	nop                                              ; $297a: $00
	nop                                              ; $297b: $00
	nop                                              ; $297c: $00
	nop                                              ; $297d: $00
	nop                                              ; $297e: $00
	nop                                              ; $297f: $00
	nop                                              ; $2980: $00
	nop                                              ; $2981: $00
	nop                                              ; $2982: $00
	nop                                              ; $2983: $00
	nop                                              ; $2984: $00
	nop                                              ; $2985: $00
	nop                                              ; $2986: $00
	nop                                              ; $2987: $00
	nop                                              ; $2988: $00
	nop                                              ; $2989: $00
	nop                                              ; $298a: $00
	nop                                              ; $298b: $00
	nop                                              ; $298c: $00
	nop                                              ; $298d: $00
	db   $10                                         ; $298e: $10
	db   $10                                         ; $298f: $10
	db   $10                                         ; $2990: $10
	db   $10                                         ; $2991: $10
	db   $10                                         ; $2992: $10
	db   $10                                         ; $2993: $10
	db   $10                                         ; $2994: $10
	stop                                             ; $2995: $10 $00
	nop                                              ; $2997: $00
	nop                                              ; $2998: $00
	nop                                              ; $2999: $00
	db   $10                                         ; $299a: $10
	db   $10                                         ; $299b: $10
	db   $10                                         ; $299c: $10
	db   $10                                         ; $299d: $10
	db   $10                                         ; $299e: $10
	db   $10                                         ; $299f: $10
	db   $10                                         ; $29a0: $10
	db   $10                                         ; $29a1: $10
	jr   nz, jr_000_29c4                             ; $29a2: $20 $20

	jr   nz, jr_000_29c6                             ; $29a4: $20 $20

	nop                                              ; $29a6: $00
	nop                                              ; $29a7: $00
	nop                                              ; $29a8: $00
	db   $10                                         ; $29a9: $10
	db   $10                                         ; $29aa: $10
	db   $10                                         ; $29ab: $10
	db   $10                                         ; $29ac: $10
	db   $10                                         ; $29ad: $10
	jr   nz, @+$22                                   ; $29ae: $20 $20

	jr   nz, jr_000_29d2                             ; $29b0: $20 $20

	jr   nz, jr_000_29e4                             ; $29b2: $20 $30

	jr   nc, jr_000_29e6                             ; $29b4: $30 $30

	nop                                              ; $29b6: $00
	nop                                              ; $29b7: $00
	db   $10                                         ; $29b8: $10
	db   $10                                         ; $29b9: $10
	db   $10                                         ; $29ba: $10
	db   $10                                         ; $29bb: $10
	jr   nz, jr_000_29de                             ; $29bc: $20 $20

	jr   nz, jr_000_29e0                             ; $29be: $20 $20

	jr   nc, jr_000_29f2                             ; $29c0: $30 $30

	jr   nc, jr_000_29f4                             ; $29c2: $30 $30

jr_000_29c4:
	ld   b, b                                        ; $29c4: $40
	ld   b, b                                        ; $29c5: $40

jr_000_29c6:
	nop                                              ; $29c6: $00
	nop                                              ; $29c7: $00
	db   $10                                         ; $29c8: $10
	db   $10                                         ; $29c9: $10
	db   $10                                         ; $29ca: $10
	jr   nz, @+$22                                   ; $29cb: $20 $20

	jr   nz, jr_000_29ff                             ; $29cd: $20 $30

	jr   nc, jr_000_2a01                             ; $29cf: $30 $30

	ld   b, b                                        ; $29d1: $40

jr_000_29d2:
	ld   b, b                                        ; $29d2: $40
	ld   b, b                                        ; $29d3: $40
	ld   d, b                                        ; $29d4: $50
	ld   d, b                                        ; $29d5: $50
	nop                                              ; $29d6: $00
	nop                                              ; $29d7: $00
	db   $10                                         ; $29d8: $10
	db   $10                                         ; $29d9: $10
	jr   nz, @+$22                                   ; $29da: $20 $20

	jr   nz, jr_000_2a0e                             ; $29dc: $20 $30

jr_000_29de:
	jr   nc, jr_000_2a20                             ; $29de: $30 $40

jr_000_29e0:
	ld   b, b                                        ; $29e0: $40
	ld   b, b                                        ; $29e1: $40
	ld   d, b                                        ; $29e2: $50
	ld   d, b                                        ; $29e3: $50

jr_000_29e4:
	ld   h, b                                        ; $29e4: $60
	ld   h, b                                        ; $29e5: $60

jr_000_29e6:
	nop                                              ; $29e6: $00
	nop                                              ; $29e7: $00
	db   $10                                         ; $29e8: $10
	db   $10                                         ; $29e9: $10
	jr   nz, @+$22                                   ; $29ea: $20 $20

	jr   nc, jr_000_2a1e                             ; $29ec: $30 $30

	ld   b, b                                        ; $29ee: $40
	ld   b, b                                        ; $29ef: $40
	ld   d, b                                        ; $29f0: $50
	ld   d, b                                        ; $29f1: $50

jr_000_29f2:
	ld   h, b                                        ; $29f2: $60
	ld   h, b                                        ; $29f3: $60

jr_000_29f4:
	ld   [hl], b                                     ; $29f4: $70
	ld   [hl], b                                     ; $29f5: $70
	nop                                              ; $29f6: $00
	db   $10                                         ; $29f7: $10
	db   $10                                         ; $29f8: $10
	jr   nz, jr_000_2a1b                             ; $29f9: $20 $20

	jr   nc, jr_000_2a2d                             ; $29fb: $30 $30

	ld   b, b                                        ; $29fd: $40
	ld   b, b                                        ; $29fe: $40

jr_000_29ff:
	ld   d, b                                        ; $29ff: $50
	ld   d, b                                        ; $2a00: $50

jr_000_2a01:
	ld   h, b                                        ; $2a01: $60
	ld   h, b                                        ; $2a02: $60
	ld   [hl], b                                     ; $2a03: $70
	ld   [hl], b                                     ; $2a04: $70
	add  b                                           ; $2a05: $80
	nop                                              ; $2a06: $00
	db   $10                                         ; $2a07: $10
	db   $10                                         ; $2a08: $10
	jr   nz, jr_000_2a2b                             ; $2a09: $20 $20

	jr   nc, jr_000_2a4d                             ; $2a0b: $30 $40

	ld   b, b                                        ; $2a0d: $40

jr_000_2a0e:
	ld   d, b                                        ; $2a0e: $50
	ld   d, b                                        ; $2a0f: $50
	ld   h, b                                        ; $2a10: $60
	ld   [hl], b                                     ; $2a11: $70
	ld   [hl], b                                     ; $2a12: $70
	add  b                                           ; $2a13: $80
	add  b                                           ; $2a14: $80
	sub  b                                           ; $2a15: $90
	nop                                              ; $2a16: $00
	db   $10                                         ; $2a17: $10
	db   $10                                         ; $2a18: $10
	jr   nz, @+$32                                   ; $2a19: $20 $30

jr_000_2a1b:
	jr   nc, jr_000_2a5d                             ; $2a1b: $30 $40

	ld   d, b                                        ; $2a1d: $50

jr_000_2a1e:
	ld   d, b                                        ; $2a1e: $50
	ld   h, b                                        ; $2a1f: $60

jr_000_2a20:
	ld   [hl], b                                     ; $2a20: $70
	ld   [hl], b                                     ; $2a21: $70
	add  b                                           ; $2a22: $80
	sub  b                                           ; $2a23: $90
	sub  b                                           ; $2a24: $90
	and  b                                           ; $2a25: $a0
	nop                                              ; $2a26: $00
	db   $10                                         ; $2a27: $10
	db   $10                                         ; $2a28: $10
	jr   nz, jr_000_2a5b                             ; $2a29: $20 $30

jr_000_2a2b:
	ld   b, b                                        ; $2a2b: $40
	ld   b, b                                        ; $2a2c: $40

jr_000_2a2d:
	ld   d, b                                        ; $2a2d: $50
	ld   h, b                                        ; $2a2e: $60
	ld   [hl], b                                     ; $2a2f: $70
	ld   [hl], b                                     ; $2a30: $70
	add  b                                           ; $2a31: $80
	sub  b                                           ; $2a32: $90
	and  b                                           ; $2a33: $a0
	and  b                                           ; $2a34: $a0
	or   b                                           ; $2a35: $b0
	nop                                              ; $2a36: $00
	db   $10                                         ; $2a37: $10
	jr   nz, jr_000_2a5a                             ; $2a38: $20 $20

	jr   nc, jr_000_2a7c                             ; $2a3a: $30 $40

	ld   d, b                                        ; $2a3c: $50
	ld   h, b                                        ; $2a3d: $60
	ld   h, b                                        ; $2a3e: $60
	ld   [hl], b                                     ; $2a3f: $70
	add  b                                           ; $2a40: $80
	sub  b                                           ; $2a41: $90
	and  b                                           ; $2a42: $a0
	and  b                                           ; $2a43: $a0
	or   b                                           ; $2a44: $b0
	ret  nz                                          ; $2a45: $c0

	nop                                              ; $2a46: $00
	db   $10                                         ; $2a47: $10
	jr   nz, @+$32                                   ; $2a48: $20 $30

	jr   nc, @+$42                                   ; $2a4a: $30 $40

	ld   d, b                                        ; $2a4c: $50

jr_000_2a4d:
	ld   h, b                                        ; $2a4d: $60
	ld   [hl], b                                     ; $2a4e: $70
	add  b                                           ; $2a4f: $80
	sub  b                                           ; $2a50: $90
	and  b                                           ; $2a51: $a0
	and  b                                           ; $2a52: $a0
	or   b                                           ; $2a53: $b0
	ret  nz                                          ; $2a54: $c0

	ret  nc                                          ; $2a55: $d0

	nop                                              ; $2a56: $00
	db   $10                                         ; $2a57: $10
	jr   nz, jr_000_2a8a                             ; $2a58: $20 $30

jr_000_2a5a:
	ld   b, b                                        ; $2a5a: $40

jr_000_2a5b:
	ld   d, b                                        ; $2a5b: $50
	ld   h, b                                        ; $2a5c: $60

jr_000_2a5d:
	ld   [hl], b                                     ; $2a5d: $70
	ld   [hl], b                                     ; $2a5e: $70
	add  b                                           ; $2a5f: $80
	sub  b                                           ; $2a60: $90
	and  b                                           ; $2a61: $a0
	or   b                                           ; $2a62: $b0
	ret  nz                                          ; $2a63: $c0

	ret  nc                                          ; $2a64: $d0

	ldh  [rP1], a                                    ; $2a65: $e0 $00
	db   $10                                         ; $2a67: $10
	jr   nz, jr_000_2a9a                             ; $2a68: $20 $30

	ld   b, b                                        ; $2a6a: $40
	ld   d, b                                        ; $2a6b: $50
	ld   h, b                                        ; $2a6c: $60
	ld   [hl], b                                     ; $2a6d: $70
	add  b                                           ; $2a6e: $80
	sub  b                                           ; $2a6f: $90
	and  b                                           ; $2a70: $a0
	or   b                                           ; $2a71: $b0
	ret  nz                                          ; $2a72: $c0

	ret  nc                                          ; $2a73: $d0

	ldh  [$f0], a                                    ; $2a74: $e0 $f0
	nop                                              ; $2a76: $00
	nop                                              ; $2a77: $00
	ld   bc, $0001                                   ; $2a78: $01 $01 $00
	nop                                              ; $2a7b: $00

jr_000_2a7c:
	rst  $38                                         ; $2a7c: $ff
	rst  $38                                         ; $2a7d: $ff
	nop                                              ; $2a7e: $00
	nop                                              ; $2a7f: $00
	ld   bc, $0001                                   ; $2a80: $01 $01 $00
	nop                                              ; $2a83: $00
	rst  $38                                         ; $2a84: $ff
	rst  $38                                         ; $2a85: $ff
	nop                                              ; $2a86: $00
	nop                                              ; $2a87: $00
	nop                                              ; $2a88: $00
	nop                                              ; $2a89: $00

jr_000_2a8a:
	ld   bc, $0101                                   ; $2a8a: $01 $01 $01
	ld   bc, $0000                                   ; $2a8d: $01 $00 $00
	nop                                              ; $2a90: $00
	nop                                              ; $2a91: $00
	rst  $38                                         ; $2a92: $ff
	rst  $38                                         ; $2a93: $ff
	rst  $38                                         ; $2a94: $ff
	rst  $38                                         ; $2a95: $ff
	nop                                              ; $2a96: $00
	ld   bc, $0102                                   ; $2a97: $01 $02 $01

jr_000_2a9a:
	nop                                              ; $2a9a: $00
	rst  $38                                         ; $2a9b: $ff
	cp   $ff                                         ; $2a9c: $fe $ff
	nop                                              ; $2a9e: $00
	ld   bc, $0102                                   ; $2a9f: $01 $02 $01
	nop                                              ; $2aa2: $00
	rst  $38                                         ; $2aa3: $ff
	cp   $ff                                         ; $2aa4: $fe $ff
	nop                                              ; $2aa6: $00
	nop                                              ; $2aa7: $00
	ld   bc, $0201                                   ; $2aa8: $01 $01 $02
	ld   [bc], a                                     ; $2aab: $02
	ld   bc, $0001                                   ; $2aac: $01 $01 $00
	nop                                              ; $2aaf: $00
	rst  $38                                         ; $2ab0: $ff
	rst  $38                                         ; $2ab1: $ff
	cp   $fe                                         ; $2ab2: $fe $fe
	rst  $38                                         ; $2ab4: $ff
	rst  $38                                         ; $2ab5: $ff
	rst  $38                                         ; $2ab6: $ff
	rst  $38                                         ; $2ab7: $ff
	rst  $38                                         ; $2ab8: $ff
	rst  $38                                         ; $2ab9: $ff
	rst  $38                                         ; $2aba: $ff
	rst  $38                                         ; $2abb: $ff
	rst  $38                                         ; $2abc: $ff
	rst  $38                                         ; $2abd: $ff
	rst  $38                                         ; $2abe: $ff
	rst  $38                                         ; $2abf: $ff
	rst  $38                                         ; $2ac0: $ff
	rst  $38                                         ; $2ac1: $ff
	rst  $38                                         ; $2ac2: $ff
	rst  $38                                         ; $2ac3: $ff
	rst  $38                                         ; $2ac4: $ff
	rst  $38                                         ; $2ac5: $ff
	cp   $fe                                         ; $2ac6: $fe $fe
	cp   $fe                                         ; $2ac8: $fe $fe
	cp   $fe                                         ; $2aca: $fe $fe
	cp   $fe                                         ; $2acc: $fe $fe
	cp   $fe                                         ; $2ace: $fe $fe
	cp   $fe                                         ; $2ad0: $fe $fe
	cp   $fe                                         ; $2ad2: $fe $fe
	cp   $fe                                         ; $2ad4: $fe $fe
	ld   bc, $0101                                   ; $2ad6: $01 $01 $01
	ld   bc, $0101                                   ; $2ad9: $01 $01 $01
	ld   bc, $0101                                   ; $2adc: $01 $01 $01
	ld   bc, $0101                                   ; $2adf: $01 $01 $01
	ld   bc, $0101                                   ; $2ae2: $01 $01 $01
	ld   bc, $0202                                   ; $2ae5: $01 $02 $02
	ld   [bc], a                                     ; $2ae8: $02
	ld   [bc], a                                     ; $2ae9: $02
	ld   [bc], a                                     ; $2aea: $02
	ld   [bc], a                                     ; $2aeb: $02
	ld   [bc], a                                     ; $2aec: $02
	ld   [bc], a                                     ; $2aed: $02
	ld   [bc], a                                     ; $2aee: $02
	ld   [bc], a                                     ; $2aef: $02
	ld   [bc], a                                     ; $2af0: $02
	ld   [bc], a                                     ; $2af1: $02
	ld   [bc], a                                     ; $2af2: $02
	ld   [bc], a                                     ; $2af3: $02
	ld   [bc], a                                     ; $2af4: $02
	ld   [bc], a                                     ; $2af5: $02
	nop                                              ; $2af6: $00
	nop                                              ; $2af7: $00
	nop                                              ; $2af8: $00
	nop                                              ; $2af9: $00
	nop                                              ; $2afa: $00
	nop                                              ; $2afb: $00
	nop                                              ; $2afc: $00
	nop                                              ; $2afd: $00
	nop                                              ; $2afe: $00
	nop                                              ; $2aff: $00
	nop                                              ; $2b00: $00
	nop                                              ; $2b01: $00
	nop                                              ; $2b02: $00
	nop                                              ; $2b03: $00
	nop                                              ; $2b04: $00
	nop                                              ; $2b05: $00
	nop                                              ; $2b06: $00
	nop                                              ; $2b07: $00
	nop                                              ; $2b08: $00
	nop                                              ; $2b09: $00
	nop                                              ; $2b0a: $00
	nop                                              ; $2b0b: $00
	nop                                              ; $2b0c: $00
	nop                                              ; $2b0d: $00
	nop                                              ; $2b0e: $00
	nop                                              ; $2b0f: $00
	nop                                              ; $2b10: $00
	nop                                              ; $2b11: $00
	nop                                              ; $2b12: $00
	nop                                              ; $2b13: $00
	nop                                              ; $2b14: $00
	nop                                              ; $2b15: $00
	nop                                              ; $2b16: $00
	nop                                              ; $2b17: $00
	nop                                              ; $2b18: $00
	nop                                              ; $2b19: $00
	nop                                              ; $2b1a: $00
	nop                                              ; $2b1b: $00
	nop                                              ; $2b1c: $00
	nop                                              ; $2b1d: $00
	nop                                              ; $2b1e: $00
	nop                                              ; $2b1f: $00
	nop                                              ; $2b20: $00
	nop                                              ; $2b21: $00
	nop                                              ; $2b22: $00
	nop                                              ; $2b23: $00
	nop                                              ; $2b24: $00
	nop                                              ; $2b25: $00
	nop                                              ; $2b26: $00
	nop                                              ; $2b27: $00
	nop                                              ; $2b28: $00
	nop                                              ; $2b29: $00
	nop                                              ; $2b2a: $00
	nop                                              ; $2b2b: $00
	nop                                              ; $2b2c: $00
	nop                                              ; $2b2d: $00
	nop                                              ; $2b2e: $00
	nop                                              ; $2b2f: $00
	nop                                              ; $2b30: $00
	nop                                              ; $2b31: $00
	nop                                              ; $2b32: $00
	nop                                              ; $2b33: $00
	nop                                              ; $2b34: $00
	nop                                              ; $2b35: $00
	nop                                              ; $2b36: $00
	nop                                              ; $2b37: $00
	nop                                              ; $2b38: $00
	nop                                              ; $2b39: $00
	nop                                              ; $2b3a: $00
	nop                                              ; $2b3b: $00
	nop                                              ; $2b3c: $00
	nop                                              ; $2b3d: $00
	nop                                              ; $2b3e: $00
	nop                                              ; $2b3f: $00
	nop                                              ; $2b40: $00
	nop                                              ; $2b41: $00
	nop                                              ; $2b42: $00
	nop                                              ; $2b43: $00
	nop                                              ; $2b44: $00
	nop                                              ; $2b45: $00
	nop                                              ; $2b46: $00
	nop                                              ; $2b47: $00
	nop                                              ; $2b48: $00
	nop                                              ; $2b49: $00
	nop                                              ; $2b4a: $00
	nop                                              ; $2b4b: $00
	nop                                              ; $2b4c: $00
	nop                                              ; $2b4d: $00
	nop                                              ; $2b4e: $00
	nop                                              ; $2b4f: $00
	nop                                              ; $2b50: $00
	nop                                              ; $2b51: $00
	nop                                              ; $2b52: $00
	nop                                              ; $2b53: $00
	nop                                              ; $2b54: $00
	nop                                              ; $2b55: $00
	nop                                              ; $2b56: $00
	nop                                              ; $2b57: $00
	nop                                              ; $2b58: $00
	nop                                              ; $2b59: $00
	nop                                              ; $2b5a: $00
	nop                                              ; $2b5b: $00
	nop                                              ; $2b5c: $00
	nop                                              ; $2b5d: $00
	nop                                              ; $2b5e: $00
	nop                                              ; $2b5f: $00
	nop                                              ; $2b60: $00
	nop                                              ; $2b61: $00
	nop                                              ; $2b62: $00
	nop                                              ; $2b63: $00
	nop                                              ; $2b64: $00
	nop                                              ; $2b65: $00

Call_000_2b66:
	ld   a, [$cddb]                                  ; $2b66: $fa $db $cd
	ld   b, a                                        ; $2b69: $47
	ld   a, [$ffda]                                  ; $2b6a: $fa $da $ff
	cp   b                                           ; $2b6d: $b8
	ret  z                                           ; $2b6e: $c8

	ld   [$cddb], a                                  ; $2b6f: $ea $db $cd
	ld   e, a                                        ; $2b72: $5f
	swap e                                           ; $2b73: $cb $33
	xor  a                                           ; $2b75: $af
	ld   [rAUD3ENA], a                                  ; $2b76: $ea $1a $ff

Call_000_2b79:
	ld   d, a                                        ; $2b79: $57
	ld   hl, $189e                                   ; $2b7a: $21 $9e $18
	push de                                          ; $2b7d: $d5
	ld   a, [$ffe9]                                  ; $2b7e: $fa $e9 $ff
	swap a                                           ; $2b81: $cb $37
	and  $0f                                         ; $2b83: $e6 $0f
	add  a                                           ; $2b85: $87
	ld   e, a                                        ; $2b86: $5f
	ld   d, $00                                      ; $2b87: $16 $00
	add  hl, de                                      ; $2b89: $19
	ld   a, [hl+]                                    ; $2b8a: $2a
	ld   h, [hl]                                     ; $2b8b: $66
	ld   l, a                                        ; $2b8c: $6f
	pop  de                                          ; $2b8d: $d1
	add  hl, de                                      ; $2b8e: $19
	ld   de, $ff30                                   ; $2b8f: $11 $30 $ff
	ld   b, $10                                      ; $2b92: $06 $10

jr_000_2b94:
	ld   a, [hl+]                                    ; $2b94: $2a
	ld   [de], a                                     ; $2b95: $12
	inc  de                                          ; $2b96: $13
	dec  b                                           ; $2b97: $05
	jr   nz, jr_000_2b94                             ; $2b98: $20 $fa

	ret                                              ; $2b9a: $c9


Call_000_2b9b:
	ld   a, [$cdad]                                  ; $2b9b: $fa $ad $cd
	add  a                                           ; $2b9e: $87
	ld   c, a                                        ; $2b9f: $4f
	add  a                                           ; $2ba0: $87
	add  c                                           ; $2ba1: $81
	add  a                                           ; $2ba2: $87
	ld   c, a                                        ; $2ba3: $4f
	ld   a, b                                        ; $2ba4: $78
	and  $0f                                         ; $2ba5: $e6 $0f
	ld   b, a                                        ; $2ba7: $47
	add  a                                           ; $2ba8: $87
	add  b                                           ; $2ba9: $80
	add  c                                           ; $2baa: $81
	ld   hl, $cd5f                                   ; $2bab: $21 $5f $cd
	add  l                                           ; $2bae: $85
	ld   l, a                                        ; $2baf: $6f
	ld   a, $00                                      ; $2bb0: $3e $00
	adc  h                                           ; $2bb2: $8c
	ld   h, a                                        ; $2bb3: $67
	ret                                              ; $2bb4: $c9


Call_000_2bb5:
	push de                                          ; $2bb5: $d5
	push bc                                          ; $2bb6: $c5
	ld   a, [$ffe5]                                  ; $2bb7: $fa $e5 $ff
	and  $0f                                         ; $2bba: $e6 $0f
	inc  a                                           ; $2bbc: $3c
	ld   d, a                                        ; $2bbd: $57
	ld   bc, $0000                                   ; $2bbe: $01 $00 $00
	ld   a, [$ffd8]                                  ; $2bc1: $fa $d8 $ff
	swap a                                           ; $2bc4: $cb $37
	and  $0f                                         ; $2bc6: $e6 $0f
	inc  a                                           ; $2bc8: $3c
	ld   e, a                                        ; $2bc9: $5f

jr_000_2bca:
	ld   a, e                                        ; $2bca: $7b
	add  c                                           ; $2bcb: $81
	ld   c, a                                        ; $2bcc: $4f
	ld   a, $00                                      ; $2bcd: $3e $00
	adc  b                                           ; $2bcf: $88
	ld   b, a                                        ; $2bd0: $47
	dec  d                                           ; $2bd1: $15
	jr   nz, jr_000_2bca                             ; $2bd2: $20 $f6

	srl  b                                           ; $2bd4: $cb $38
	rr   c                                           ; $2bd6: $cb $19
	srl  b                                           ; $2bd8: $cb $38
	rr   c                                           ; $2bda: $cb $19
	srl  b                                           ; $2bdc: $cb $38
	rr   c                                           ; $2bde: $cb $19
	srl  b                                           ; $2be0: $cb $38
	rr   c                                           ; $2be2: $cb $19
	ld   a, c                                        ; $2be4: $79
	and  a                                           ; $2be5: $a7
	jr   nz, jr_000_2bea                             ; $2be6: $20 $02

	ld   c, $01                                      ; $2be8: $0e $01

jr_000_2bea:
	swap c                                           ; $2bea: $cb $31
	ld   a, [$ffd8]                                  ; $2bec: $fa $d8 $ff
	ld   d, a                                        ; $2bef: $57
	and  $f0                                         ; $2bf0: $e6 $f0
	ld   e, a                                        ; $2bf2: $5f
	ld   a, [$ffe5]                                  ; $2bf3: $fa $e5 $ff
	and  $0f                                         ; $2bf6: $e6 $0f
	or   e                                           ; $2bf8: $b3
	ld   [$ffe5], a                                  ; $2bf9: $ea $e5 $ff
	ld   a, d                                        ; $2bfc: $7a
	and  $0f                                         ; $2bfd: $e6 $0f
	or   c                                           ; $2bff: $b1
	ld   [$ffd8], a                                  ; $2c00: $ea $d8 $ff
	pop  bc                                          ; $2c03: $c1
	pop  de                                          ; $2c04: $d1
	ret                                              ; $2c05: $c9


Call_000_2c06:
	push hl                                          ; $2c06: $e5
	ld   b, a                                        ; $2c07: $47
	ld   hl, $cdaf                                   ; $2c08: $21 $af $cd
	ld   a, [$cdad]                                  ; $2c0b: $fa $ad $cd
	add  l                                           ; $2c0e: $85
	ld   l, a                                        ; $2c0f: $6f
	ld   a, $00                                      ; $2c10: $3e $00
	adc  h                                           ; $2c12: $8c
	ld   h, a                                        ; $2c13: $67
	ld   c, [hl]                                     ; $2c14: $4e
	ld   a, $0f                                      ; $2c15: $3e $0f
	cp   c                                           ; $2c17: $b9
	jr   z, jr_000_2c75                              ; $2c18: $28 $5b

	inc  c                                           ; $2c1a: $0c
	ld   a, b                                        ; $2c1b: $78
	push af                                          ; $2c1c: $f5
	srl  a                                           ; $2c1d: $cb $3f
	srl  a                                           ; $2c1f: $cb $3f
	srl  a                                           ; $2c21: $cb $3f
	srl  a                                           ; $2c23: $cb $3f
	srl  a                                           ; $2c25: $cb $3f
	and  $03                                         ; $2c27: $e6 $03
	ld   hl, $2c78                                   ; $2c29: $21 $78 $2c
	add  l                                           ; $2c2c: $85
	ld   l, a                                        ; $2c2d: $6f
	ld   a, $00                                      ; $2c2e: $3e $00
	adc  h                                           ; $2c30: $8c
	ld   h, a                                        ; $2c31: $67
	ld   a, [hl]                                     ; $2c32: $7e
	push de                                          ; $2c33: $d5
	ld   hl, $0000                                   ; $2c34: $21 $00 $00
	ld   b, l                                        ; $2c37: $45
	ld   d, $08                                      ; $2c38: $16 $08

jr_000_2c3a:
	rrca                                             ; $2c3a: $0f
	jr   nc, jr_000_2c3e                             ; $2c3b: $30 $01

	add  hl, bc                                      ; $2c3d: $09

jr_000_2c3e:
	sla  c                                           ; $2c3e: $cb $21
	rl   b                                           ; $2c40: $cb $10
	dec  d                                           ; $2c42: $15
	jr   nz, jr_000_2c3a                             ; $2c43: $20 $f5

	pop  de                                          ; $2c45: $d1
	ld   a, $10                                      ; $2c46: $3e $10
	call Call_000_2d86                               ; $2c48: $cd $86 $2d
	pop  af                                          ; $2c4b: $f1
	ld   a, l                                        ; $2c4c: $7d
	ld   hl, $2c7c                                   ; $2c4d: $21 $7c $2c
	add  l                                           ; $2c50: $85
	ld   l, a                                        ; $2c51: $6f
	ld   a, $00                                      ; $2c52: $3e $00
	adc  h                                           ; $2c54: $8c
	ld   h, a                                        ; $2c55: $67
	push hl                                          ; $2c56: $e5
	ld   c, [hl]                                     ; $2c57: $4e
	ld   hl, $cdc8                                   ; $2c58: $21 $c8 $cd
	ld   a, [$cdad]                                  ; $2c5b: $fa $ad $cd
	add  l                                           ; $2c5e: $85
	ld   l, a                                        ; $2c5f: $6f
	ld   a, $00                                      ; $2c60: $3e $00
	adc  h                                           ; $2c62: $8c
	ld   h, a                                        ; $2c63: $67
	ld   a, c                                        ; $2c64: $79
	ld   c, [hl]                                     ; $2c65: $4e
	and  $60                                         ; $2c66: $e6 $60
	ld   [hl], a                                     ; $2c68: $77
	pop  hl                                          ; $2c69: $e1
	jr   nz, jr_000_2c72                             ; $2c6a: $20 $06

	cp   c                                           ; $2c6c: $b9
	jr   nz, jr_000_2c72                             ; $2c6d: $20 $03

	pop  af                                          ; $2c6f: $f1
	pop  af                                          ; $2c70: $f1
	ret                                              ; $2c71: $c9


jr_000_2c72:
	ld   a, [hl]                                     ; $2c72: $7e
	pop  hl                                          ; $2c73: $e1
	ret                                              ; $2c74: $c9


jr_000_2c75:
	ld   a, b                                        ; $2c75: $78
	pop  hl                                          ; $2c76: $e1
	ret                                              ; $2c77: $c9


	nop                                              ; $2c78: $00
	inc  bc                                          ; $2c79: $03
	ld   [bc], a                                     ; $2c7a: $02
	ld   bc, $6000                                   ; $2c7b: $01 $00 $60
	ld   b, b                                        ; $2c7e: $40

jr_000_2c7f:
	jr   nz, jr_000_2c7f                             ; $2c7f: $20 $fe

	db   $fd                                         ; $2c81: $fd
	ei                                               ; $2c82: $fb
	rst  $30                                         ; $2c83: $f7
	rst  $28                                         ; $2c84: $ef
	rst  JumpTable                                         ; $2c85: $df
	ld   bc, $0402                                   ; $2c86: $01 $02 $04
	ld   [$2010], sp                                 ; $2c89: $08 $10 $20

Call_000_2c8c:
	push hl                                          ; $2c8c: $e5
	push de                                          ; $2c8d: $d5
	push bc                                          ; $2c8e: $c5
	ld   de, $1714                                   ; $2c8f: $11 $14 $17
	ld   l, a                                        ; $2c92: $6f
	ld   h, $00                                      ; $2c93: $26 $00
	add  hl, hl                                      ; $2c95: $29
	add  hl, hl                                      ; $2c96: $29
	add  hl, de                                      ; $2c97: $19
	ld   a, [hl]                                     ; $2c98: $7e
	ld   [$cdb5], a                                  ; $2c99: $ea $b5 $cd
	ld   c, $06                                      ; $2c9c: $0e $06
	ld   de, $cdaf                                   ; $2c9e: $11 $af $cd
	ld   hl, $cdb7                                   ; $2ca1: $21 $b7 $cd

jr_000_2ca4:
	srl  a                                           ; $2ca4: $cb $3f
	jr   nc, jr_000_2cb2                             ; $2ca6: $30 $0a

	push af                                          ; $2ca8: $f5
	xor  a                                           ; $2ca9: $af
	ld   [de], a                                     ; $2caa: $12
	pop  af                                          ; $2cab: $f1
	ld   [hl], b                                     ; $2cac: $70
	inc  hl                                          ; $2cad: $23
	ld   [hl], $00                                   ; $2cae: $36 $00
	jr   jr_000_2cb3                                 ; $2cb0: $18 $01

jr_000_2cb2:
	inc  hl                                          ; $2cb2: $23

jr_000_2cb3:
	inc  hl                                          ; $2cb3: $23
	inc  de                                          ; $2cb4: $13
	dec  c                                           ; $2cb5: $0d
	jr   nz, jr_000_2ca4                             ; $2cb6: $20 $ec

	pop  bc                                          ; $2cb8: $c1
	pop  de                                          ; $2cb9: $d1
	pop  hl                                          ; $2cba: $e1
	ret                                              ; $2cbb: $c9


Call_000_2cbc:
	push hl                                          ; $2cbc: $e5
	push de                                          ; $2cbd: $d5
	push bc                                          ; $2cbe: $c5
	ld   de, $1714                                   ; $2cbf: $11 $14 $17
	ld   l, a                                        ; $2cc2: $6f
	ld   h, $00                                      ; $2cc3: $26 $00
	add  hl, hl                                      ; $2cc5: $29
	add  hl, hl                                      ; $2cc6: $29
	add  hl, de                                      ; $2cc7: $19
	ld   a, [hl]                                     ; $2cc8: $7e
	ld   [$cdb6], a                                  ; $2cc9: $ea $b6 $cd
	ld   c, $06                                      ; $2ccc: $0e $06
	ld   hl, $cdb7                                   ; $2cce: $21 $b7 $cd

jr_000_2cd1:
	srl  a                                           ; $2cd1: $cb $3f
	jr   nc, jr_000_2cdb                             ; $2cd3: $30 $06

	ld   [hl], b                                     ; $2cd5: $70
	inc  hl                                          ; $2cd6: $23
	ld   [hl], $00                                   ; $2cd7: $36 $00
	jr   jr_000_2cdc                                 ; $2cd9: $18 $01

jr_000_2cdb:
	inc  hl                                          ; $2cdb: $23

jr_000_2cdc:
	inc  hl                                          ; $2cdc: $23
	dec  c                                           ; $2cdd: $0d
	jr   nz, jr_000_2cd1                             ; $2cde: $20 $f1

	pop  bc                                          ; $2ce0: $c1
	pop  de                                          ; $2ce1: $d1
	pop  hl                                          ; $2ce2: $e1
	ret                                              ; $2ce3: $c9


	nop                                              ; $2ce4: $00
	nop                                              ; $2ce5: $00
	nop                                              ; $2ce6: $00
	nop                                              ; $2ce7: $00
	rst  $38                                         ; $2ce8: $ff
	rst  $38                                         ; $2ce9: $ff

Call_000_2cea:
	push de                                          ; $2cea: $d5
	push hl                                          ; $2ceb: $e5
	push bc                                          ; $2cec: $c5
	push af                                          ; $2ced: $f5
	ld   de, $1714                                   ; $2cee: $11 $14 $17
	ld   l, a                                        ; $2cf1: $6f
	ld   h, $00                                      ; $2cf2: $26 $00
	add  hl, hl                                      ; $2cf4: $29
	add  hl, hl                                      ; $2cf5: $29
	add  hl, de                                      ; $2cf6: $19
	ld   c, [hl]                                     ; $2cf7: $4e
	ld   a, [$cdc3]                                  ; $2cf8: $fa $c3 $cd
	or   c                                           ; $2cfb: $b1
	ld   [$cdc3], a                                  ; $2cfc: $ea $c3 $cd
	ld   a, $ff                                      ; $2cff: $3e $ff
	ld   [$cdc6], a                                  ; $2d01: $ea $c6 $cd
	pop  af                                          ; $2d04: $f1
	ld   de, $1712                                   ; $2d05: $11 $12 $17
	ld   l, a                                        ; $2d08: $6f
	ld   h, $00                                      ; $2d09: $26 $00
	add  hl, hl                                      ; $2d0b: $29
	add  hl, hl                                      ; $2d0c: $29
	add  hl, de                                      ; $2d0d: $19
	ld   a, [hl+]                                    ; $2d0e: $2a
	cp   $01                                         ; $2d0f: $fe $01
	jr   z, jr_000_2d21                              ; $2d11: $28 $0e

	cp   $02                                         ; $2d13: $fe $02
	jr   z, jr_000_2d27                              ; $2d15: $28 $10

	cp   $03                                         ; $2d17: $fe $03
	jr   z, jr_000_2d2d                              ; $2d19: $28 $12

	ld   a, [hl]                                     ; $2d1b: $7e
	call Call_000_1ede                               ; $2d1c: $cd $de $1e
	jr   jr_000_2d31                                 ; $2d1f: $18 $10

jr_000_2d21:
	ld   a, [hl]                                     ; $2d21: $7e
	call Call_000_1ee7                               ; $2d22: $cd $e7 $1e
	jr   jr_000_2d31                                 ; $2d25: $18 $0a

jr_000_2d27:
	ld   a, [hl]                                     ; $2d27: $7e
	call Call_000_1ee4                               ; $2d28: $cd $e4 $1e
	jr   jr_000_2d31                                 ; $2d2b: $18 $04

jr_000_2d2d:
	ld   a, [hl]                                     ; $2d2d: $7e
	call Call_000_1ee1                               ; $2d2e: $cd $e1 $1e

jr_000_2d31:
	pop  bc                                          ; $2d31: $c1
	pop  hl                                          ; $2d32: $e1
	pop  de                                          ; $2d33: $d1
	ret                                              ; $2d34: $c9


Call_000_2d35:
	push de                                          ; $2d35: $d5
	push hl                                          ; $2d36: $e5
	push bc                                          ; $2d37: $c5
	ld   [$cdc6], a                                  ; $2d38: $ea $c6 $cd
	ld   de, $1712                                   ; $2d3b: $11 $12 $17
	ld   l, a                                        ; $2d3e: $6f
	ld   h, $00                                      ; $2d3f: $26 $00
	add  hl, hl                                      ; $2d41: $29
	add  hl, hl                                      ; $2d42: $29
	add  hl, de                                      ; $2d43: $19
	ld   a, [hl+]                                    ; $2d44: $2a
	cp   $01                                         ; $2d45: $fe $01
	jr   z, jr_000_2d57                              ; $2d47: $28 $0e

	cp   $02                                         ; $2d49: $fe $02
	jr   z, jr_000_2d5d                              ; $2d4b: $28 $10

	cp   $03                                         ; $2d4d: $fe $03
	jr   z, jr_000_2d63                              ; $2d4f: $28 $12

	ld   a, [hl]                                     ; $2d51: $7e
	call Call_000_1ede                               ; $2d52: $cd $de $1e
	jr   jr_000_2d67                                 ; $2d55: $18 $10

jr_000_2d57:
	ld   a, [hl]                                     ; $2d57: $7e
	call Call_000_1ee7                               ; $2d58: $cd $e7 $1e
	jr   jr_000_2d67                                 ; $2d5b: $18 $0a

jr_000_2d5d:
	ld   a, [hl]                                     ; $2d5d: $7e
	call Call_000_1ee4                               ; $2d5e: $cd $e4 $1e
	jr   jr_000_2d67                                 ; $2d61: $18 $04

jr_000_2d63:
	ld   a, [hl]                                     ; $2d63: $7e
	call Call_000_1ee1                               ; $2d64: $cd $e1 $1e

jr_000_2d67:
	pop  bc                                          ; $2d67: $c1
	pop  hl                                          ; $2d68: $e1
	pop  de                                          ; $2d69: $d1
	ret                                              ; $2d6a: $c9


Call_000_2d6b:
	push hl                                          ; $2d6b: $e5
	push de                                          ; $2d6c: $d5
	push bc                                          ; $2d6d: $c5
	ld   hl, $ccbe                                   ; $2d6e: $21 $be $cc
	ld   de, $0020                                   ; $2d71: $11 $20 $00
	ld   c, $06                                      ; $2d74: $0e $06

jr_000_2d76:
	cp   [hl]                                        ; $2d76: $be
	jr   z, jr_000_2d80                              ; $2d77: $28 $07

	add  hl, de                                      ; $2d79: $19
	dec  c                                           ; $2d7a: $0d
	jr   nz, jr_000_2d76                             ; $2d7b: $20 $f9

	xor  a                                           ; $2d7d: $af
	jr   jr_000_2d82                                 ; $2d7e: $18 $02

jr_000_2d80:
	ld   a, $01                                      ; $2d80: $3e $01

jr_000_2d82:
	pop  bc                                          ; $2d82: $c1
	pop  de                                          ; $2d83: $d1
	pop  hl                                          ; $2d84: $e1
	ret                                              ; $2d85: $c9


Call_000_2d86:
	push de                                          ; $2d86: $d5
	ld   d, $10                                      ; $2d87: $16 $10
	ld   e, a                                        ; $2d89: $5f
	xor  a                                           ; $2d8a: $af

jr_000_2d8b:
	add  hl, hl                                      ; $2d8b: $29
	rla                                              ; $2d8c: $17
	jr   c, jr_000_2d92                              ; $2d8d: $38 $03

	cp   e                                           ; $2d8f: $bb
	jr   c, jr_000_2d94                              ; $2d90: $38 $02

jr_000_2d92:
	sub  e                                           ; $2d92: $93
	inc  l                                           ; $2d93: $2c

jr_000_2d94:
	dec  d                                           ; $2d94: $15
	jr   nz, jr_000_2d8b                             ; $2d95: $20 $f4

	pop  de                                          ; $2d97: $d1
	ret                                              ; $2d98: $c9


	inc  bc                                          ; $2d99: $03
	inc  h                                           ; $2d9a: $24
	ld   a, [de]                                     ; $2d9b: $1a
	inc  h                                           ; $2d9c: $24
	ld   l, c                                        ; $2d9d: $69
	inc  h                                           ; $2d9e: $24
	adc  c                                           ; $2d9f: $89
	inc  h                                           ; $2da0: $24
	or   c                                           ; $2da1: $b1
	inc  h                                           ; $2da2: $24
	or   c                                           ; $2da3: $b1
	inc  h                                           ; $2da4: $24
	pop  bc                                          ; $2da5: $c1
	inc  h                                           ; $2da6: $24
	ret  z                                           ; $2da7: $c8

	inc  h                                           ; $2da8: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $2da9: $cf
	inc  h                                           ; $2daa: $24
	sbc  $24                                         ; $2dab: $de $24
	ld   c, h                                        ; $2dad: $4c
	dec  h                                           ; $2dae: $25
	ld   a, c                                        ; $2daf: $79
	dec  h                                           ; $2db0: $25
	ld   a, c                                        ; $2db1: $79
	dec  h                                           ; $2db2: $25
	ret  nz                                          ; $2db3: $c0

	dec  h                                           ; $2db4: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $2db5: $cf
	dec  h                                           ; $2db6: $25
	rst  JumpTable                                         ; $2db7: $df
	dec  h                                           ; $2db8: $25
	rst  ToBoot                                         ; $2db9: $c7
	inc  hl                                          ; $2dba: $23
	rst  ToBoot                                         ; $2dbb: $c7
	inc  hl                                          ; $2dbc: $23
	rst  ToBoot                                         ; $2dbd: $c7
	inc  hl                                          ; $2dbe: $23
	rst  ToBoot                                         ; $2dbf: $c7
	inc  hl                                          ; $2dc0: $23
	rst  ToBoot                                         ; $2dc1: $c7
	inc  hl                                          ; $2dc2: $23
	rst  ToBoot                                         ; $2dc3: $c7
	inc  hl                                          ; $2dc4: $23
	rst  ToBoot                                         ; $2dc5: $c7
	inc  hl                                          ; $2dc6: $23
	rst  ToBoot                                         ; $2dc7: $c7
	inc  hl                                          ; $2dc8: $23
	rst  ToBoot                                         ; $2dc9: $c7
	inc  hl                                          ; $2dca: $23
	rst  ToBoot                                         ; $2dcb: $c7
	inc  hl                                          ; $2dcc: $23
	rst  ToBoot                                         ; $2dcd: $c7
	inc  hl                                          ; $2dce: $23
	rst  ToBoot                                         ; $2dcf: $c7
	inc  hl                                          ; $2dd0: $23
	rst  ToBoot                                         ; $2dd1: $c7
	inc  hl                                          ; $2dd2: $23
	rst  ToBoot                                         ; $2dd3: $c7
	inc  hl                                          ; $2dd4: $23
	rst  ToBoot                                         ; $2dd5: $c7
	inc  hl                                          ; $2dd6: $23
	rst  ToBoot                                         ; $2dd7: $c7
	inc  hl                                          ; $2dd8: $23
	xor  b                                           ; $2dd9: $a8
	inc  hl                                          ; $2dda: $23
	xor  b                                           ; $2ddb: $a8
	inc  hl                                          ; $2ddc: $23
	xor  b                                           ; $2ddd: $a8
	inc  hl                                          ; $2dde: $23
	xor  b                                           ; $2ddf: $a8
	inc  hl                                          ; $2de0: $23
	xor  b                                           ; $2de1: $a8
	inc  hl                                          ; $2de2: $23
	xor  b                                           ; $2de3: $a8
	inc  hl                                          ; $2de4: $23
	xor  b                                           ; $2de5: $a8
	inc  hl                                          ; $2de6: $23
	xor  b                                           ; $2de7: $a8
	inc  hl                                          ; $2de8: $23
	xor  b                                           ; $2de9: $a8
	inc  hl                                          ; $2dea: $23
	xor  b                                           ; $2deb: $a8
	inc  hl                                          ; $2dec: $23
	xor  b                                           ; $2ded: $a8
	inc  hl                                          ; $2dee: $23
	xor  b                                           ; $2def: $a8
	inc  hl                                          ; $2df0: $23
	xor  b                                           ; $2df1: $a8
	inc  hl                                          ; $2df2: $23
	xor  b                                           ; $2df3: $a8
	inc  hl                                          ; $2df4: $23
	xor  b                                           ; $2df5: $a8
	inc  hl                                          ; $2df6: $23
	xor  b                                           ; $2df7: $a8
	inc  hl                                          ; $2df8: $23


; B - bits set for sound channels in use
; C - src bank
; HL - src address
_PlaySampledSound:
; Reset sound
	xor  a                                                          ; $2df9
	ld   [rAUDENA], a                                               ; $2dfa
	ld   a, $80                                                     ; $2dfd
	ld   [rAUDENA], a                                               ; $2dff

; Preserve rom bank, and set it to src of sample
	ld   a, [wRomBank]                                              ; $2e02
	push af                                                         ; $2e05

	ld   a, c                                                       ; $2e06
	ld   [wRomBank], a                                              ; $2e07
	ld   [rROMB0], a                                                ; $2e0a

; Preserve that bank in E (unused)
	ld   e, c                                                       ; $2e0d

; Fill wav ram with $ff
	push de                                                         ; $2e0e
	push hl                                                         ; $2e0f

	ld   a, $ff                                                     ; $2e10
	ld   hl, _AUD3WAVERAM                                           ; $2e12
	ld   e, $10                                                     ; $2e15
:	ld   [hl+], a                                                   ; $2e17
	dec  e                                                          ; $2e18
	jr   nz, :-                                                     ; $2e19

	pop  hl                                                         ; $2e1b
	pop  de                                                         ; $2e1c

; Set some sound hw reg defaults while bitbanging audvol
	xor  a                                                          ; $2e1d
	ld   [rAUDVOL], a                                               ; $2e1e
	ld   [rAUDTERM], a                                              ; $2e21
	ld   a, $08                                                     ; $2e24
	ld   [rAUD1ENV], a                                              ; $2e26
	ld   [rAUD2ENV], a                                              ; $2e29
	ld   [rAUD4ENV], a                                              ; $2e2c
	ld   a, $80                                                     ; $2e2f
	ld   [rAUD1HIGH], a                                             ; $2e31
	ld   [rAUD2HIGH], a                                             ; $2e34
	ld   [rAUD4GO], a                                               ; $2e37
	ld   a, $20                                                     ; $2e3a
	ld   [rAUD3LEVEL], a                                            ; $2e3c
	ld   a, $ff                                                     ; $2e3f
	ld   [rAUD3LOW], a                                              ; $2e41
	ld   a, $87                                                     ; $2e44
	ld   [rAUD3HIGH], a                                             ; $2e46
	ld   a, $80                                                     ; $2e49
	ld   [rAUD3ENA], a                                              ; $2e4b

; Mirror SO1 onto SO2 using B param
	ld   a, b                                                       ; $2e4e
	swap b                                                          ; $2e4f
	or   b                                                          ; $2e51
	ld   [rAUDTERM], a                                              ; $2e52

.nextSample:
; Get high nybble of sample, and set audvol
	ld   a, [hl]                                                    ; $2e55
	and  $f0                                                        ; $2e56
	call SetAudVolForSampledSound                                   ; $2e58
	call Burn45cyclesIncludingCall                                  ; $2e5b

; If double speed, repeat the above
	ld   a, [wIsDoubleSpeed]                                        ; $2e5e
	and  a                                                          ; $2e61
	jr   z, .afterHighNybble                                        ; $2e62

	ld   a, [hl]                                                    ; $2e64
	and  $f0                                                        ; $2e65
	call SetAudVolForSampledSound                                   ; $2e67
	call Burn45cyclesIncludingCall                                  ; $2e6a

.afterHighNybble:
; Repeat with low nybble of sample, ending the sample if it equals 0
	ld   a, [hl]                                                    ; $2e6d
	swap a                                                          ; $2e6e
	and  $f0                                                        ; $2e70
	jr   z, EndSampledSound                                         ; $2e72

	call SetAudVolForSampledSound                                   ; $2e74
	call Burn45cyclesIncludingCall                                  ; $2e77

; If double speed, repeat the above
	ld   a, [wIsDoubleSpeed]                                        ; $2e7a
	and  a                                                          ; $2e7d
	jr   z, .toNextSample                                           ; $2e7e

	ld   a, [hl]                                                    ; $2e80
	swap a                                                          ; $2e81
	and  $f0                                                        ; $2e83
	jr   z, EndSampledSound                                         ; $2e85

	call SetAudVolForSampledSound                                   ; $2e87
	call Burn45cyclesIncludingCall                                  ; $2e8a

.toNextSample:
	inc  hl                                                         ; $2e8d
	jr   .nextSample                                                ; $2e8e


; A - vol in upper 3 bits
; C - src rom bank
; HL - next src address
SetAudVolForSampledSound:
; Get vol in lower 3 bits of upper nybble
	srl  a                                                          ; $2e90
	and  $f0                                                        ; $2e92

; Mirror for SO1, and set aud vol
	ld   e, a                                                       ; $2e94
	swap e                                                          ; $2e95
	or   e                                                          ; $2e97
	ld   [rAUDVOL], a                                               ; $2e98

; Jump if next address has overrun bank
	bit  7, h                                                       ; $2e9b
	jr   nz, .nextBank                                              ; $2e9d

; Else burn 4 + 3 + 1 = 8 cycles excluding ret
	push hl                                                         ; $2e9f
	pop  hl                                                         ; $2ea0
	nop                                                             ; $2ea1
	ret                                                             ; $2ea2

.nextBank:
; Burn 1 (jump taken) + 1 + 1 + 4 + 4 + 3 = 14 cycles excluding ret
	inc  c                                                          ; $2ea3
	ld   a, c                                                       ; $2ea4
	ld   [wRomBank], a                                              ; $2ea5
	ld   [rROMB0], a                                                ; $2ea8
	ld   hl, $4000                                                  ; $2eab
	ret                                                             ; $2eae


Burn45cyclesIncludingCall:
; push + pop = 7 cycles, call = 6, ret = 4
rept 5
	push hl                                                         ; $2eaf
	pop  hl                                                         ; $2eb0
endr
	ret                                                             ; $2eb9


EndSampledSound:
; Restore rom bank
	pop  af                                                         ; $2eba
	ld   [wRomBank], a                                              ; $2ebb
	ld   [rROMB0], a                                                ; $2ebe

; Clear sound output and disable sound
	xor  a                                                          ; $2ec1
	ld   [rAUDTERM], a                                              ; $2ec2
	ld   [rAUDENA], a                                               ; $2ec5
	ret                                                             ; $2ec8


ClearBaseAnimSpriteSpecDetails::
	ld   hl, wBaseAnimSpriteSpecDetails                             ; $2ec9
	ld   bc, wBaseAnimSpriteSpecDetails.end-wBaseAnimSpriteSpecDetails ; $2ecc
	call MemClear                                                   ; $2ecf
	ret                                                             ; $2ed2


AnimateAllAnimatedSpriteSpecs::
; Loop exited on bit 7 set, so use -1
	ld   a, NUM_ANIM_SPRITE_SPECS-1                                 ; $2ed3

.bigLoop:
	push af                                                         ; $2ed5

; HL = addr of base anim sprite spec details
	sla  a                                                          ; $2ed6
	sla  a                                                          ; $2ed8
	add  LOW(wBaseAnimSpriteSpecDetails)                            ; $2eda
	ld   l, a                                                       ; $2edc
	ld   h, HIGH(wBaseAnimSpriteSpecDetails)                        ; $2edd

; Proceed if bit 0 set (in use) and bit 1 set (animatable)
	ld   a, [hl+]                                                   ; $2edf
	bit  0, a                                                       ; $2ee0
	jr   z, .toBigLoop                                              ; $2ee2

	bit  1, a                                                       ; $2ee4
	jr   z, .toBigLoop                                              ; $2ee6

; Push next 2 bytes (anim sprite spec instance addr)
	ld   a, [hl+]                                                   ; $2ee8
	ld   b, a                                                       ; $2ee9
	ld   a, [hl+]                                                   ; $2eea
	ld   c, a                                                       ; $2eeb
	push bc                                                         ; $2eec

; HL = anim type idx * 8 into table
	xor  a                                                          ; $2eed
	ld   l, [hl]                                                    ; $2eee
	sla  l                                                          ; $2eef
	rla                                                             ; $2ef1
	sla  l                                                          ; $2ef2
	rla                                                             ; $2ef4
	sla  l                                                          ; $2ef5
	rla                                                             ; $2ef7
	add  HIGH(AnimatedSpriteSpecTypeDetails)                        ; $2ef8
	ld   h, a                                                       ; $2efa

; 1st byte is num bytes this anim type uses, jump if 0
	ld   a, [hl+]                                                   ; $2efb
	ld   [wNumStructBytesForCurrAnimSpriteSpec], a                  ; $2efc
	or   a                                                          ; $2eff
	jr   z, .afterCopyIntoHram                                      ; $2f00

; Else copy those details into hram
	push hl                                                         ; $2f02
	ld   h, b                                                       ; $2f03
	ld   l, c                                                       ; $2f04
	call CopyCurrAnimSpriteSpecDetailsIntoHram                      ; $2f05
	pop  hl                                                         ; $2f08

.afterCopyIntoHram:
; Preserve rom bank and push return addr
	ld   a, [wRomBank]                                              ; $2f09
	push af                                                         ; $2f0c

	ld   de, .return                                                ; $2f0d
	push de                                                         ; $2f10

; 2nd byte in table is rom bank
	ld   a, [hl+]                                                   ; $2f11
	ld   [wRomBank], a                                              ; $2f12
	ld   [rROMB0], a                                                ; $2f15

; ; Push 1st word to ret to (Update function)
	ld   a, [hl+]                                                   ; $2f18
	ld   e, a                                                       ; $2f19
	ld   d, [hl]                                                    ; $2f1a
	push de                                                         ; $2f1b

; HL = anim sprite spec instance addr
	ld   h, b                                                       ; $2f1c
	ld   l, c                                                       ; $2f1d
	ret                                                             ; $2f1e

.return:
; Restore rom bank
	pop  af                                                         ; $2f1f
	ld   [wRomBank], a                                              ; $2f20
	ld   [rROMB0], a                                                ; $2f23

; HL = anim sprite spec instance addr, copy from hram if anim type uses bytes
	pop  hl                                                         ; $2f26
	ld   a, [wNumStructBytesForCurrAnimSpriteSpec]                  ; $2f27
	or   a                                                          ; $2f2a
	jr   z, .toBigLoop                                              ; $2f2b

	call CopyCurrAnimSpriteSpecDetailsFromHram                      ; $2f2d

.toBigLoop:
	pop  af                                                         ; $2f30
	dec  a                                                          ; $2f31
	bit  7, a                                                       ; $2f32
	jr   z, .bigLoop                                                ; $2f34

	ret                                                             ; $2f36


; A - num bytes to copy
; HL - addr of current sprite spec details
CopyCurrAnimSpriteSpecDetailsIntoHram:
	ld   b, a                                                       ; $2f37
	ld   c, LOW(hCurrAnimSpriteSpec)                                ; $2f38

:	ld   a, [hl+]                                                   ; $2f3a
	ldh  [c], a                                                     ; $2f3b
	inc  c                                                          ; $2f3c
	dec  b                                                          ; $2f3d
	jr   nz, :-                                                     ; $2f3e

	ret                                                             ; $2f40


; A - num bytes to copy
; HL - addr of current sprite spec details
CopyCurrAnimSpriteSpecDetailsFromHram:
	ld   b, a                                                       ; $2f41
	ld   c, LOW(hCurrAnimSpriteSpec)                                ; $2f42

:	ldh  a, [c]                                                     ; $2f44
	ld   [hl+], a                                                   ; $2f45
	inc  c                                                          ; $2f46
	dec  b                                                          ; $2f47
	jr   nz, :-                                                     ; $2f48

	ret                                                             ; $2f4a


; A - animation type
; HL - if 0, base anim sprite spec idx $0a uses spot $c1a0
;      if non-0, force the spot addr
; Returns base anim sprite spec idx used in A
ReserveBaseAnimSpriteSpecAndInstance::
; C = animation type
	ld   c, a                                                       ; $2f4b

; Preserve DE
	ld   a, e                                                       ; $2f4c
	ld   [wPreservedDEduringAnimSpriteSpecLoad], a                  ; $2f4d
	ld   a, d                                                       ; $2f50
	ld   [wPreservedDEduringAnimSpriteSpecLoad+1], a                ; $2f51

; DE = forced BASS_ADDR if not 0
	ld   d, h                                                       ; $2f54
	ld   e, l                                                       ; $2f55

; Loop through base details struct until BASS_CTRL bit 0 is unset
	ld   hl, wBaseAnimSpriteSpecDetails                             ; $2f56
	xor  a                                                          ; $2f59

.toNextBaseDetails:
	bit  0, [hl]                                                    ; $2f5a
	jr   z, .foundEmptySpot                                         ; $2f5c

; HL will point to the BASS_CTRL of a struct, A to idx of struct
	inc  l                                                          ; $2f5e
	inc  l                                                          ; $2f5f
	inc  l                                                          ; $2f60
	inc  l                                                          ; $2f61

; If no spot found, ret 0
	inc  a                                                          ; $2f62
	cp   NUM_ANIM_SPRITE_SPECS                                      ; $2f63
	jr   nz, .toNextBaseDetails                                     ; $2f65

	xor  a                                                          ; $2f67
	ret                                                             ; $2f68

.foundEmptySpot:
; Store idx of struct
	ld   [wFoundBaseAnimSpriteSpecDetailsIdx], a                    ; $2f69
	ld   b, a                                                       ; $2f6c

; DE to be BASS_ADDR, if 0..
	ld   a, d                                                       ; $2f6d
	or   e                                                          ; $2f6e
	jr   nz, :+                                                     ; $2f6f

; Use a spot in the anim sprite spec instances struct that is base idx * $10
	ld   d, HIGH(wAnimatedSpriteSpecInstances)                      ; $2f71
	ld   e, b                                                       ; $2f73
	swap e                                                          ; $2f74

; Set bit 0 of BASS_CTRL to reserve this spot
:	ld   a, $01                                                     ; $2f76
	ld   [hl+], a                                                   ; $2f78

; Save BASS_ADDR and BASS_TYPE
	ld   [hl], d                                                    ; $2f79
	inc  hl                                                         ; $2f7a
	ld   [hl], e                                                    ; $2f7b
	inc  hl                                                         ; $2f7c
	ld   [hl], c                                                    ; $2f7d

; HL points to the table using BASS_TYPE * 8, skip past 1st byte
	xor  a                                                          ; $2f7e
	ld   l, c                                                       ; $2f7f
	sla  l                                                          ; $2f80
	rla                                                             ; $2f82
	sla  l                                                          ; $2f83
	rla                                                             ; $2f85
	sla  l                                                          ; $2f86
	rla                                                             ; $2f88
	add  HIGH(AnimatedSpriteSpecTypeDetails)                        ; $2f89
	ld   h, a                                                       ; $2f8b
	inc  l                                                          ; $2f8c

; Preserve rom bank and push return addr
	ld   a, [wRomBank]                                              ; $2f8d
	push af                                                         ; $2f90

	ld   bc, .return                                                ; $2f91
	push bc                                                         ; $2f94

; 1st byte is the rom bank to set
	ld   a, [hl+]                                                   ; $2f95
	ld   [wRomBank], a                                              ; $2f96
	ld   [rROMB0], a                                                ; $2f99

; Push 2nd word to ret to (Load function)
	inc  l                                                          ; $2f9c
	inc  l                                                          ; $2f9d
	ld   a, [hl+]                                                   ; $2f9e
	ld   c, a                                                       ; $2f9f
	ld   b, [hl]                                                    ; $2fa0
	push bc                                                         ; $2fa1

; HL = BASE_ADDR
	ld   h, d                                                       ; $2fa2
	ld   l, e                                                       ; $2fa3

; Restore DE, and execute func with the base spec detail idx used
	ld   a, [wPreservedDEduringAnimSpriteSpecLoad]                  ; $2fa4
	ld   e, a                                                       ; $2fa7
	ld   a, [wPreservedDEduringAnimSpriteSpecLoad+1]                ; $2fa8
	ld   d, a                                                       ; $2fab

	ld   a, [wFoundBaseAnimSpriteSpecDetailsIdx]                    ; $2fac
	ret                                                             ; $2faf

.return:
; Restore rom bank and return the idx used for this anim sprite spec
	pop  af                                                         ; $2fb0
	ld   [wRomBank], a                                              ; $2fb1
	ld   [rROMB0], a                                                ; $2fb4

	ld   a, [wFoundBaseAnimSpriteSpecDetailsIdx]                    ; $2fb7
	ret                                                             ; $2fba


DeleteAnimatedSpriteSpec::
; HL points to base anim sprite spec details ctrl
	sla  a                                                          ; $2fbb
	sla  a                                                          ; $2fbd
	add  LOW(wBaseAnimSpriteSpecDetails+BASS_CTRL)                  ; $2fbf
	ld   l, a                                                       ; $2fc1
	ld   h, HIGH(wBaseAnimSpriteSpecDetails+BASS_CTRL)              ; $2fc2

; Clear spot in use and animatable bit
	xor  a                                                          ; $2fc4
	ld   [hl+], a                                                   ; $2fc5

; Address in DE
	ld   a, [hl+]                                                   ; $2fc6
	ld   d, a                                                       ; $2fc7
	ld   a, [hl+]                                                   ; $2fc8
	ld   e, a                                                       ; $2fc9

; HL points to the table using BASS_TYPE * 8, skip past 1st byte
	xor  a                                                          ; $2fca
	ld   l, [hl]                                                    ; $2fcb
	sla  l                                                          ; $2fcc
	rla                                                             ; $2fce
	sla  l                                                          ; $2fcf
	rla                                                             ; $2fd1
	sla  l                                                          ; $2fd2
	rla                                                             ; $2fd4
	add  HIGH(AnimatedSpriteSpecTypeDetails)                        ; $2fd5
	ld   h, a                                                       ; $2fd7
	inc  l                                                          ; $2fd8

; Preserve rom bank and push return addr
	ld   a, [wRomBank]                                              ; $2fd9
	push af                                                         ; $2fdc

	ld   bc, .return                                                ; $2fdd
	push bc                                                         ; $2fe0

; 1st byte is the rom bank to set
	ld   a, [hl+]                                                   ; $2fe1
	ld   [wRomBank], a                                              ; $2fe2
	ld   [rROMB0], a                                                ; $2fe5

; Push 3rd word to ret to (Delete)
	inc  l                                                          ; $2fe8
	inc  l                                                          ; $2fe9
	inc  l                                                          ; $2fea
	inc  l                                                          ; $2feb
	ld   a, [hl+]                                                   ; $2fec
	ld   c, a                                                       ; $2fed
	ld   b, [hl]                                                    ; $2fee
	push bc                                                         ; $2fef
	ret                                                             ; $2ff0

.return:
; Restore rom bank
	pop  af                                                         ; $2ff1
	ld   [wRomBank], a                                              ; $2ff2
	ld   [rROMB0], a                                                ; $2ff5
	ret                                                             ; $2ff8


CheckIfAnimatedSpriteSpecIsAnimating::
; HL points to base anim sprite spec details ctrl
	sla  a                                                          ; $2ff9
	sla  a                                                          ; $2ffb
	add  LOW(wBaseAnimSpriteSpecDetails+BASS_CTRL)                 ; $2ffd
	ld   l, a                                                       ; $2fff
	ld   h, HIGH(wBaseAnimSpriteSpecDetails+BASS_CTRL)             ; $3000

; Check of animatable bit set
	ld   a, [hl]                                                    ; $3002
	and  $02                                                        ; $3003
	ret                                                             ; $3005


StopAnimatingAnimatedSpriteSpec::
	push af                                                         ; $3006

; HL points to base anim sprite spec details ctrl
	sla  a                                                          ; $3007
	sla  a                                                          ; $3009
	add  LOW(wBaseAnimSpriteSpecDetails+BASS_CTRL)                  ; $300b
	ld   l, a                                                       ; $300d
	ld   h, HIGH(wBaseAnimSpriteSpecDetails+BASS_CTRL)              ; $300e

; Reset bit 1 of BASS_CTRL (animatable)
	res  1, [hl]                                                    ; $3010
	pop  af                                                         ; $3012
	ret                                                             ; $3013


; A - base anim sprite spec details idx used
StartAnimatingAnimatedSpriteSpec::
	push af                                                         ; $3014

; HL points to base anim sprite spec details ctrl
	sla  a                                                          ; $3015
	sla  a                                                          ; $3017
	add  LOW(wBaseAnimSpriteSpecDetails+BASS_CTRL)                  ; $3019
	ld   l, a                                                       ; $301b
	ld   h, HIGH(wBaseAnimSpriteSpecDetails+BASS_CTRL)              ; $301c

; Set bit 1 of BASS_CTRL (animatable)
	set  1, [hl]                                                    ; $301e
	pop  af                                                         ; $3020
	ret                                                             ; $3021


;
	sla  a                                           ; $3022: $cb $27
	sla  a                                           ; $3024: $cb $27
	add  $c0                                         ; $3026: $c6 $c0
	ld   l, a                                        ; $3028: $6f
	ld   h, $c1                                      ; $3029: $26 $c1
	ld   a, [hl+]                                    ; $302b: $2a
	bit  0, a                                        ; $302c: $cb $47
	jr   z, jr_000_304b                              ; $302e: $28 $1b

	ld   a, [hl+]                                    ; $3030: $2a
	ld   d, a                                        ; $3031: $57
	ld   a, [hl+]                                    ; $3032: $2a
	ld   e, a                                        ; $3033: $5f
	xor  a                                           ; $3034: $af
	ld   l, [hl]                                     ; $3035: $6e
	sla  l                                           ; $3036: $cb $25
	rla                                              ; $3038: $17
	sla  l                                           ; $3039: $cb $25
	rla                                              ; $303b: $17
	sla  l                                           ; $303c: $cb $25
	rla                                              ; $303e: $17
	or   HIGH(AnimatedSpriteSpecTypeDetails)                                         ; $303f: $f6 $3e
	ld   h, a                                        ; $3041: $67
	ld   a, [hl+]                                    ; $3042: $2a
	or   a                                           ; $3043: $b7
	jr   z, jr_000_304b                              ; $3044: $28 $05

	ld   h, d                                        ; $3046: $62
	ld   l, e                                        ; $3047: $6b
	call CopyCurrAnimSpriteSpecDetailsIntoHram                               ; $3048: $cd $37 $2f

jr_000_304b:
	ret                                              ; $304b: $c9


; A - base anim sprite spec details idx used
CopyAnimSpriteSpecDetailsFromHramBasedOnAnimType::
; HL points to base anim sprite spec addr
	sla  a                                                          ; $304c
	sla  a                                                          ; $304e
	add  LOW(wBaseAnimSpriteSpecDetails)                            ; $3050
	ld   l, a                                                       ; $3052
	ld   h, HIGH(wBaseAnimSpriteSpecDetails)                        ; $3053

; Bit 0 should be set (spot used), if not, end
	ld   a, [hl+]                                                   ; $3055
	bit  0, a                                                       ; $3056
	jr   z, .done                                                   ; $3058

; DE = animated sprite spec instance addr
	ld   a, [hl+]                                                   ; $305a
	ld   d, a                                                       ; $305b
	ld   a, [hl+]                                                   ; $305c
	ld   e, a                                                       ; $305d

; HL = anim type struct in table (8 bytes each)
	xor  a                                                          ; $305e
	ld   l, [hl]                                                    ; $305f
	sla  l                                                          ; $3060
	rla                                                             ; $3062
	sla  l                                                          ; $3063
	rla                                                             ; $3065
	sla  l                                                          ; $3066
	rla                                                             ; $3068
	or   HIGH(AnimatedSpriteSpecTypeDetails)                        ; $3069
	ld   h, a                                                       ; $306b

; If 0, do nothing
	ld   a, [hl+]                                                   ; $306c
	or   a                                                          ; $306d
	jr   z, .done                                                   ; $306e

; Else it's the number of bytes to copy from hram into instance struct
	ld   h, d                                                       ; $3070
	ld   l, e                                                       ; $3071
	call CopyCurrAnimSpriteSpecDetailsFromHram                      ; $3072

.done:
	ret                                                             ; $3075


; A - idx of animate sprite spec instance struct
HLequAddrOfAnimSpriteSpecDetails::
; BASS_SIZEOF = 4
	sla  a                                                          ; $3076
	sla  a                                                          ; $3078
	add  LOW(wBaseAnimSpriteSpecDetails+BASS_ADDR)                  ; $307a
	ld   l, a                                                       ; $307c
	ld   h, HIGH(wBaseAnimSpriteSpecDetails+BASS_ADDR)              ; $307d

; Get word BASS_ADDR in HL
	ld   a, [hl+]                                                   ; $307f
	ld   l, [hl]                                                    ; $3080
	ld   h, a                                                       ; $3081
	ret                                                             ; $3082


if def(VWF)
; A - kanji idx
; Returns width+1 pixel space in B
GetCharWidth0:
	push af
	ld   a, [wGameState]
	cp   GS_ENTER_NAME
	jr   nz, .notEnterName

	ld   b, $08
	pop  af
	ret

.notEnterName:
	pop  af
	cp   a, $4f
	jr   nc, .notAlpha

; i and l are 1 pixel wide, so takes up 1+1 space
	ld   b, $02
	cp   $3d ; i
	ret  z

	cp   $40 ; l
	ret  z

; The following take up 3 pixels+1 space
	ld   b, $04
	cp   $12 ; 1
	ret  z

	cp   $23 ; I
	ret  z

	cp   $2e ; T
	ret  z

	cp   $48 ; t
	ret  z

; The following take up 2 pixels+1 space
	ld   b, $03
	cp   $10 ; <space>
	ret  z

; Other alphanumeric tiles are 4 pixels
	ld   b, $05
	ret

.notAlpha:
; The following takes up 2 pixels, so takes up 2+1 space
	ld   b, $03
	cp   $e1 ; ,
	ret  z

	cp   $f2 ; .
	ret  z

; The following takes up 1 pixel, so 1+1 space
	ld   b, $02
	cp   $fa ; !
	ret  z

; By default, other non-alphanumeric tiles take up a full 8 pixels
	ld   b, $08
	ret


; A - kanji idx
; Returns width+1 pixel space in B
GetCharWidth1:
; The following takes up 2 pixels + 1 space
	ld   b, $03
	cp   $01 ; '
	ret  z

	cp   $15 ; :
	ret  z

	cp   $18 ; ;
	ret  z

; The following takes up 3 pixels + 1 space
	ld   b, $04
	cp   $03 ; (
	ret  z

	cp   $04 ; )
	ret  z

; The following takes up 4 pixels + 1 space
	ld   b, $05
	cp   $19 ; è
	ret  z

	cp   $1a ; ó
	ret  z

	cp   $1b ; é
	ret  z

; The following takes up 5 pixels + 1 space
	ld   b, $06
	cp   $00 ; /
	ret  z

	cp   $02 ; "
	ret  z

	cp   $09 ; +
	ret   z

	cp   $0a ; -
	ret  z

	cp   $0d ; =
	ret  z

	cp   $11 ; <
	ret  z

	cp   $12 ; >
	ret  z

	cp   $1c ; *
	ret  z

; The following takes up 6 pixels + 1 space
	ld   b, $07
	cp   $1d ; &
	ret  z

; Regular kanji takes up 8 pixels
	ld   b, $08
	ret


; A - 0
OtherSpecialTextByte:
	ld   [wCurrKanjiCol], a
	ld   [wKanjiPixelInTileIdx], a
	ret


; A - kanji idx
SaveKanjiIdx:
	ld   [wSavedKanjiIdx], a
	ld   a, [wNumKanjiTextBoxCols]
	ret


; A - kanji idx
InstantSaveKanjiIdx:
; Set saved kanji idx
	ld   [wSavedKanjiIdx], a

; Copy replaced instructions and jump
	ld   c, a
	push hl
	push de

	jp   LoadInstantText.instantSaveRet


; Returns width+1 pixel space in B
GetCharWidth:
	push af
	ld   b, $08
	ld   a, [wCurrKanjiDataQuarterBankOffset]
	cp   $00
	jr   nz, .notPage0Kanji

; Page 0 kanji
	ld   a, [wSavedKanjiIdx]
	call GetCharWidth0
	jr   .gotWidth

.notPage0Kanji:
	cp   $01
	jr   nz, .gotWidth

; Page 1 kanji
	ld   a, [wSavedKanjiIdx]
	call GetCharWidth1

.gotWidth:
	pop  af
	ret


; DE - src addr
; HL - dest addr
; trashes A, B, C, HL
VWFLoadInstantKanjiTileDataWithTextStyle:
	ld   a, h
	ld   [wPointerToInstantTileDataBuffer], a
	ld   a, l
	ld   [wPointerToInstantTileDataBuffer+1], a

; Load single tile into a buffer
	ld   hl, wInstantTextSingleTileDataBuffer
	call LoadKanjiTileDataWithTextStyle

; Cache if we cross into next tile
	call GetCharWidth
	ld   a, b
	ld   [wInstantCharWidth], a
	ld   a, [wKanjiPixelInTileIdx]
	add  b
	cp   $08
	ld   a, 0
	jr   c, :+
	inc  a
:	ld   [wInstantCrossedTile], a

; Shift a given byte in the buffer B times, with remainder in C
	ld   a, [wKanjiPixelInTileIdx]
	and  a
	jr   nz, :+

; If starting from the leftmost of a col, load the 1 tile
	ld   a, [wPointerToInstantTileDataBuffer]
	ld   d, a
	ld   a, [wPointerToInstantTileDataBuffer+1]
	ld   e, a
	ld   hl, wInstantTextSingleTileDataBuffer
	ld   bc, $20
	call MemCopy
	jr   .fromNoShift

:	ld   b, a

	ld   a, [wPointerToInstantTileDataBuffer]
	ld   h, a
	ld   a, [wPointerToInstantTileDataBuffer+1]
	ld   l, a
	ld   de, wInstantTextSingleTileDataBuffer
	ld   c, $20
.nextByte:
	push bc
	push de

; Shift currently loaded tile
	ld   a, [de]
	ld   c, 0
.nextShift:
	srl  a
	rr   c
	dec  b
	jr   nz, .nextShift

; Mix with previous remainder, and store in single tile
	or   [hl]
	ld   [hl+], a
	push hl

	ld   a, [wInstantCrossedTile]
	and  a
	jr   z, :+

; Store shifted remainder into curr remainder buffer
	ld   de, $1f
	add  hl, de
	ld   a, c
	ld   [hl], a
:	pop  hl

	pop  de
	inc  de
	pop  bc
	dec  c
	jr   nz, .nextByte

; Get char width so we know how where to draw to next
.fromNoShift:
	ld   a, [wInstantCharWidth]
	ld   b, a

	ld   a, [wKanjiPixelInTileIdx]
	add  b
	sub  $08
	jr   c, .withinCol

	ld   [wKanjiPixelInTileIdx], a

; Inc pointer to next dest
	ld   a, [wPointerToInstantTileDataBuffer]
	ld   h, a
	ld   a, [wPointerToInstantTileDataBuffer+1]
	ld   l, a
	ld   de, $20
	add  hl, de
	ld   a, h
	ld   [wPointerToInstantTileDataBuffer], a
	ld   a, l
	ld   [wPointerToInstantTileDataBuffer+1], a

; Inc col
	ld   hl, wCurrKanjiCol
	inc  [hl]
	jr   .end

.withinCol:
	add  $08
	ld   [wKanjiPixelInTileIdx], a

.end:
; Restore rom bank
	pop  af
	ld   [wRomBank], a
	ld   [rROMB0], a

	jp   LoadInstantKanjiTileData.done


; DE - kanji tile data src addr
; HL - 1 of 8 $20 byte locs in 1:$d000
; trashes A, B, C, HL
VWFLoadKanjiTileDataWithTextStyle:
	ld   a, $01
	ld   [wEnqueue2VwfTiles], a

; Load single tile into a buffer
	ld   hl, wSingleTileDataBuffer
	call LoadKanjiTileDataWithTextStyle

; Shift a given byte in the buffer B times, with remainder in C
	ld   a, [wKanjiPixelInTileIdx]
	and  a
	jr   nz, :+

; If starting from the leftmost of a col, enqueue only 1 tile
	ld   [wEnqueue2VwfTiles], a
	jr   .fromNoShift

:	ld   b, a

	ld   hl, wRemainderTileDataBuffer
	ld   de, wSingleTileDataBuffer
	ld   c, $20
.nextByte:
	push bc
	ld   a, [de]
	ld   c, 0
.nextShift:
	srl  a
	rr   c
	dec  b
	jr   nz, .nextShift

; Mix with previous remainder, and store in single tile
	or   [hl]
	ld   [de], a
	inc  de

; Store shifted remainder into curr remainder buffer
	ld   a, c
	ld   [hl+], a

	pop  bc
	dec  c
	jr   nz, .nextByte

; Get char width so we know how where to draw to next
.fromNoShift:
	call GetCharWidth

	ld   a, [wKanjiPixelInTileIdx]
	add  b
	sub  $08
	jr   c, .withinCol

	jr   z, .exactHitCol

	ld   hl, wCurrKanjiCol
	inc  [hl]
	ld   [wKanjiPixelInTileIdx], a
	jr   .end

.exactHitCol:
	ld   [wKanjiPixelInTileIdx], a
	ld   hl, wCurrKanjiCol
	inc  [hl]
	jr   :+

.withinCol:
	add  $08
	ld   [wKanjiPixelInTileIdx], a

; Copy single tile into remainder to copy
:	xor  a
	ld   [wEnqueue2VwfTiles], a

	ld   bc, $20
	ld   de, wRemainderTileDataBuffer
	ld   hl, wSingleTileDataBuffer
	call MemCopy

.end:
; Use a mask
	ld   a, [wKanjiPixelInTileIdx]
	and  a
	jr   z, .restoreRomBank

	dec  a
	ld   hl, .masks
	add  l
	ld   l, a
	jr   nc, :+
	inc  h
:	ld   b, [hl]

	ld   hl, wRemainderTileDataBuffer
	ld   c, $20
:	ld   a, [hl]
	and  b
	ld   [hl+], a
	dec  c
	jr   nz, :-

.restoreRomBank:
; Restore rom bank
	pop  af
	ld   [wRomBank], a
	ld   [rROMB0], a

; Start enqueuing process
	pop  hl
	pop  de

	ld   a, [wEnqueue2VwfTiles]
	and  a
	jr   z, .enqueue1

; Enqueue 2
	ld   hl, wSingleTileDataBuffer
	ldbc $04, $81
	jr   .enqueue
	
.enqueue1:
	ld   hl, wRemainderTileDataBuffer
	ldbc $02, $81
	
.enqueue:
	call EnqueueHDMATransfer

	jp   HDMAEnqueueNextTextBoxKanji.done

.masks:
	db $80, $c0, $e0, $f0, $f8, $fc, $fe


; A - kanji col to set
ClearVwfVars:
	push af
	push hl

	ld   [wCurrKanjiCol], a

	ld   a, [wWramBank]
	push af

	ld   a, BANK(wSingleTileDataBuffer)
	ld   [wWramBank], a
	ldh  [rSVBK], a

	xor  a
	ld   [wKanjiPixelInTileIdx], a

ClearVwfTileBuffers:
	ld   b, $40
	ld   hl, wSingleTileDataBuffer
.nextByte:
	ld   [hl+], a
	dec  b
	jr   nz, .nextByte

	pop  af
	ld   [wWramBank], a
	ldh  [rSVBK], a

	pop  hl
	pop  af
	ret


; B - cols
; C - rows
; HL - start address
CommsLayoutSwapSource::
.nextRow:
	push bc
	push hl
:	ld   a, [hl]
	or   $08
	and  $9f
	ld   [hl+], a
	dec  b
	jr   nz, :-
	pop  hl
	ld   de, $20
	add  hl, de
	pop  bc
	dec  c
	jr   nz, .nextRow
	ret


VWFInstantCode0fh:
	ld   a, [wKanjiPixelInTileIdx]
	inc  a
	ld   [wKanjiPixelInTileIdx], a
	jp   LoadInstantText.toNextKanji


EnInitFlags:
	ld   hl, FLAG1_CANDY_CURSOR
	M_FarCall SetOrUnsetFlag1

	ld   a, [wVisitedTitleScreen]
	ret

endc

	
SECTION "Bank $00, $3e00", ROM0[$3e00]

AnimatedSpriteSpecTypeDetails:
	db $00 ; num sprite spec struct bytes (incorrect, it uses 4)
	db $01 ; rom bank of the below
	dw AnimSpriteSpecType0Update
	dw AnimSpriteSpecType0Load
	dw AnimSpriteSpecType0Delete

	db $06 ; num sprite spec struct bytes
	db $01 ; rom bank of the below
	dw AnimSpriteSpecType1Update
	dw AnimSpriteSpecType1Load
	dw AnimSpriteSpecType1Delete

	db $10 ; num sprite spec struct bytes
	db $01 ; rom bank of the below
	dw AnimSpriteSpecType2Update
	dw AnimSpriteSpecType2Load
	dw AnimSpriteSpecType2Delete
