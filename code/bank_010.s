; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

GameState21_KannaMiniGameHelpScreen::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	dw KannaMiniGameHelpScreenSubstate0
	dw $410f
	dw $4120


KannaMiniGameHelpScreenSubstate0:
	ld   a, $ff                                      ; $400a: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $400c: $ea $0e $c2
	ld   a, $0c                                      ; $400f: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4011: $ea $13 $c2
	ld   a, $04                                      ; $4014: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4016: $ea $14 $c2
	call ClearOam                                       ; $4019: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $401c: $cd $59 $0b
	ld   a, LCDCF_ON|LCDCF_WIN9C00|LCDCF_OBJON|LCDCF_BGON                                      ; $401f: $3e $c3
	ld   [wLCDC], a                                  ; $4021: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4024: $fa $93 $c2
	push af                                          ; $4027: $f5
	ld   a, $03                                      ; $4028: $3e $03
	ld   [wWramBank], a                                  ; $402a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $402d: $e0 $70

;
	ld   a, $1e                                      ; $402f: $3e $1e
	ld   hl, $d000                                   ; $4031: $21 $00 $d0
	ld   de, $4c0c                                   ; $4034: $11 $0c $4c
if def(VWF)
	call KannaMiniGameHelpScreenTileAttrHook
else
	call RLEXorCopy                                       ; $4037: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $403a: $0e $81
	ld   de, $9800                                   ; $403c: $11 $00 $98
	ld   a, $03                                      ; $403f: $3e $03
	ld   hl, $d000                                   ; $4041: $21 $00 $d0
	ld   b, $24                                      ; $4044: $06 $24
	call EnqueueHDMATransfer                                       ; $4046: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4049: $cf

;
	ld   a, $1e                                      ; $404a: $3e $1e
	ld   hl, $d000                                   ; $404c: $21 $00 $d0
	ld   de, $449c                                   ; $404f: $11 $9c $44
if def(VWF)
	call KannaMiniGameHelpScreenTileMapHook
else
	call RLEXorCopy                                       ; $4052: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $4055: $0e $80
	ld   de, $9800                                   ; $4057: $11 $00 $98
	ld   a, $03                                      ; $405a: $3e $03
	ld   hl, $d000                                   ; $405c: $21 $00 $d0
	ld   b, $24                                      ; $405f: $06 $24
	call EnqueueHDMATransfer                                       ; $4061: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4064: $cf

;
	ld   a, $1a                                      ; $4065: $3e $1a
	ld   hl, $d000                                   ; $4067: $21 $00 $d0
	ld   de, $5728                                   ; $406a: $11 $28 $57
if def(VWF)
	call KannaMiniGameHelpScreenTileDataHook
else
	call RLEXorCopy                                       ; $406d: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $4070: $0e $80
	ld   de, $8800                                   ; $4072: $11 $00 $88
	ld   a, $03                                      ; $4075: $3e $03
	ld   hl, $d000                                   ; $4077: $21 $00 $d0
	ld   b, $40                                      ; $407a: $06 $40
	call EnqueueHDMATransfer                                       ; $407c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407f: $cf

;
	ld   c, $80                                      ; $4080: $0e $80
	ld   de, $8c00                                   ; $4082: $11 $00 $8c
	ld   a, $03                                      ; $4085: $3e $03
	ld   hl, $d400                                   ; $4087: $21 $00 $d4
	ld   b, $60                                      ; $408a: $06 $60
	call EnqueueHDMATransfer                                       ; $408c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $408f: $cf

;
	ld   c, $80                                      ; $4090: $0e $80
	ld   de, $9200                                   ; $4092: $11 $00 $92
	ld   a, $03                                      ; $4095: $3e $03
	ld   hl, $da00                                   ; $4097: $21 $00 $da
	ld   b, $60                                      ; $409a: $06 $60
	call EnqueueHDMATransfer                                       ; $409c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $409f: $cf

;
	pop  af                                          ; $40a0: $f1
	ld   [wWramBank], a                                  ; $40a1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40a4: $e0 $70
	xor  a                                           ; $40a6: $af
	ld   [wWX], a                                  ; $40a7: $ea $09 $c2
	ld   [wWY], a                                  ; $40aa: $ea $0a $c2
	ld   [wSCX], a                                  ; $40ad: $ea $07 $c2
	ld   [wSCY], a                                  ; $40b0: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $40b3: $cd $c9 $2e
	ld   a, $01                                      ; $40b6: $3e $01
	ld   hl, $7000                                   ; $40b8: $21 $00 $70
	ld   de, wBGPalettes                                   ; $40bb: $11 $de $c2
	ld   bc, $0080                                   ; $40be: $01 $80 $00
	call FarMemCopy                                       ; $40c1: $cd $b2 $09
	ld   bc, $003f                                   ; $40c4: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $40c7: $cd $aa $04
	xor  a                                           ; $40ca: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $40cb: $ea $62 $c3
	ld   a, $20                                      ; $40ce: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $40d0: $ea $63 $c3
	ld   a, $03                                      ; $40d3: $3e $03
	ld   b, $01                                      ; $40d5: $06 $01
	ld   hl, $7000                                   ; $40d7: $21 $00 $70
	ld   c, $1e                                      ; $40da: $0e $1e
	ld   de, $647c                                   ; $40dc: $11 $7c $64
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $40df: $cd $48 $07
	push af                                          ; $40e2: $f5
	ld   a, $54                                      ; $40e3: $3e $54
	ld   [wFarCallAddr], a                                  ; $40e5: $ea $98 $c2
	ld   a, $57                                      ; $40e8: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $40ea: $ea $99 $c2
	ld   a, $11                                      ; $40ed: $3e $11
	ld   [wFarCallBank], a                                  ; $40ef: $ea $9a $c2
	pop  af                                          ; $40f2: $f1
	call FarCall                                       ; $40f3: $cd $62 $09
	ld   a, $1e                                      ; $40f6: $3e $1e
	ld   hl, $647c                                   ; $40f8: $21 $7c $64
	ld   de, wBGPalettes                                   ; $40fb: $11 $de $c2
	ld   bc, $0040                                   ; $40fe: $01 $40 $00
	call FarMemCopy                                       ; $4101: $cd $b2 $09
	ld   bc, $001f                                   ; $4104: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4107: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $410a: $21 $a1 $c2
	inc  [hl]                                        ; $410d: $34
	ret                                              ; $410e: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $410f: $fa $10 $c2
	and  $03                                         ; $4112: $e6 $03
	jr   z, jr_010_411f                              ; $4114: $28 $09

	ld   a, $21                                      ; $4116: $3e $21
	call PlaySoundEffect                                       ; $4118: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $411b: $21 $a1 $c2
	inc  [hl]                                        ; $411e: $34

jr_010_411f:
	ret                                              ; $411f: $c9


	xor  a                                           ; $4120: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4121: $ea $62 $c3
	ld   a, $20                                      ; $4124: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4126: $ea $63 $c3
	ld   a, $03                                      ; $4129: $3e $03
	ld   b, $1e                                      ; $412b: $06 $1e
	ld   hl, $647c                                   ; $412d: $21 $7c $64
	ld   c, $01                                      ; $4130: $0e $01
	ld   de, $7000                                   ; $4132: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4135: $cd $48 $07
	push af                                          ; $4138: $f5
	ld   a, $54                                      ; $4139: $3e $54
	ld   [wFarCallAddr], a                                  ; $413b: $ea $98 $c2
	ld   a, $57                                      ; $413e: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $4140: $ea $99 $c2
	ld   a, $11                                      ; $4143: $3e $11
	ld   [wFarCallBank], a                                  ; $4145: $ea $9a $c2
	pop  af                                          ; $4148: $f1
	call FarCall                                       ; $4149: $cd $62 $09
	ld   a, $01                                      ; $414c: $3e $01
	ld   hl, $7000                                   ; $414e: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4151: $11 $de $c2
	ld   bc, $0040                                   ; $4154: $01 $40 $00
	call FarMemCopy                                       ; $4157: $cd $b2 $09
	ld   bc, $001f                                   ; $415a: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $415d: $cd $aa $04
	ld   a, [$c9fb]                                  ; $4160: $fa $fb $c9
	ld   [wGameState], a                                  ; $4163: $ea $a0 $c2
	ld   a, [$c9fc]                                  ; $4166: $fa $fc $c9
	ld   [wGameSubstate], a                                  ; $4169: $ea $a1 $c2
	ret                                              ; $416c: $c9


	ld   a, h                                        ; $416d: $7c
	ld   [$c9fb], a                                  ; $416e: $ea $fb $c9
	ld   a, l                                        ; $4171: $7d
	ld   [$c9fc], a                                  ; $4172: $ea $fc $c9
	ld   a, GS_KANNA_MINI_GAME_HELP_SCREEN                                      ; $4175: $3e $21
	ld   [wGameState], a                                  ; $4177: $ea $a0 $c2
	ld   a, $00                                      ; $417a: $3e $00
	ld   [wGameSubstate], a                                  ; $417c: $ea $a1 $c2
	ret                                              ; $417f: $c9


GameState0e_SaveScreen::
	ld   a, [wGameSubstate]                                         ; $4180
	rst  JumpTable                                                  ; $4183
	dw .substate0
	dw .substate1
	dw .substate2
	dw .substate3
	dw .substate4

.substate0:
	ld   a, $00                                      ; $418e: $3e $00
	ld   [$c8b6], a                                  ; $4190: $ea $b6 $c8
	ld   a, $02                                      ; $4193: $3e $02
	ld   [wGameSubstate], a                                  ; $4195: $ea $a1 $c2
	ret                                              ; $4198: $c9

.substate1:
; eg from title menu screen
	ld   a, $01                                      ; $4199: $3e $01
	ld   [$c8b6], a                                  ; $419b: $ea $b6 $c8

	ld   a, $02                                      ; $419e: $3e $02
	ld   [wGameSubstate], a                                  ; $41a0: $ea $a1 $c2
	ret                                              ; $41a3: $c9

.substate2:
; Allow inputs and set sticky button settings
	ld   a, $ff                                                     ; $41a4
	ld   [wInGameInputsEnabled], a                                  ; $41a6
	ld   a, $0c                                                     ; $41a9
	ld   [wBaseInitialStickyCounter], a                             ; $41ab
	ld   a, $04                                                     ; $41ae
	ld   [wBaseRepeatedStickyCounter], a                            ; $41b0

; Clear oam and display regs, turn on LCD
	call ClearOam                                                   ; $41b3
	call ClearDisplayRegsAllowVBlankInt                             ; $41b6
	ld   a, LCDCF_ON|LCDCF_OBJON|LCDCF_BGON                         ; $41b9
	ld   [wLCDC], a                                                 ; $41bb

; Preserve ram bank, and set ram bank of data load buffers
	ld   a, [wWramBank]                                             ; $41be
	push af                                                         ; $41c1

	ld   a, BANK(wSaveScreenTileDataBuffer)                         ; $41c2
	ld   [wWramBank], a                                             ; $41c4
	ldh  [rSVBK], a                                                 ; $41c7

; Decompress tile data from vram bank 0, $8000-$87ff into ram
	ld   a, BANK(RleXorTileData_SaveScreenBank0_8000)                                      ; $41c9: $3e $1b
	ld   hl, $d000                                   ; $41cb: $21 $00 $d0
	ld   de, RleXorTileData_SaveScreenBank0_8000                                   ; $41ce: $11 $0c $45
if def(VWF)
	call SaveScreenTileDataBank0_8000h_hook
else
	call RLEXorCopy                                       ; $41d1: $cd $d2 $09
endc

; VBlank enqueue that tile data
	ld   c, $80                                      ; $41d4: $0e $80
	ld   de, $8000                                   ; $41d6: $11 $00 $80
	ld   a, $03                                      ; $41d9: $3e $03
	ld   hl, $d000                                   ; $41db: $21 $00 $d0
	ld   b, $40                                      ; $41de: $06 $40
	call EnqueueHDMATransfer                                       ; $41e0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e3: $cf

	ld   c, $80                                      ; $41e4: $0e $80
	ld   de, $8400                                   ; $41e6: $11 $00 $84
	ld   a, $03                                      ; $41e9: $3e $03
	ld   hl, $d400                                   ; $41eb: $21 $00 $d4
	ld   b, $40                                      ; $41ee: $06 $40
	call EnqueueHDMATransfer                                       ; $41f0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f3: $cf

; Decompress tile data from vram bank 0, $8800-$97ff into ram
	ld   a, BANK(RleXorTileData_SaveScreenBank0_8800)                                      ; $41f4: $3e $14
	ld   hl, $d000                                   ; $41f6: $21 $00 $d0
	ld   de, RleXorTileData_SaveScreenBank0_8800                                   ; $41f9: $11 $31 $6e
if def(VWF)
	call SaveScreenTileDataBank0_8800h_hook
else
	call RLEXorCopy                                       ; $41fc: $cd $d2 $09
endc

; VBlank enqueue that tile data
	ld   c, $80                                      ; $41ff: $0e $80
	ld   de, $8800                                   ; $4201: $11 $00 $88
	ld   a, $03                                      ; $4204: $3e $03
	ld   hl, $d000                                   ; $4206: $21 $00 $d0
	ld   b, $40                                      ; $4209: $06 $40
	call EnqueueHDMATransfer                                       ; $420b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $420e: $cf

	ld   c, $80                                      ; $420f: $0e $80
	ld   de, $8c00                                   ; $4211: $11 $00 $8c
	ld   a, $03                                      ; $4214: $3e $03
	ld   hl, $d400                                   ; $4216: $21 $00 $d4
	ld   b, $60                                      ; $4219: $06 $60
	call EnqueueHDMATransfer                                       ; $421b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $421e: $cf

	ld   c, $80                                      ; $421f: $0e $80
	ld   de, $9200                                   ; $4221: $11 $00 $92
	ld   a, $03                                      ; $4224: $3e $03
	ld   hl, $da00                                   ; $4226: $21 $00 $da
	ld   b, $60                                      ; $4229: $06 $60
	call EnqueueHDMATransfer                                       ; $422b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422e: $cf

; Decompress tile data from vram bank 1, $8800-$8fff into ram
	ld   a, BANK(RleXorTileData_SaveScreenBank1_8800)                                      ; $422f: $3e $19
	ld   hl, $d000                                   ; $4231: $21 $00 $d0
	ld   de, RleXorTileData_SaveScreenBank1_8800                                   ; $4234: $11 $b2 $5f
if def(VWF)
	call SaveScreenTileDataBank1_8800h_hook
else
	call RLEXorCopy                                       ; $4237: $cd $d2 $09
endc

; VBlank enqueue that tile data
	ld   c, $81                                      ; $423a: $0e $81
	ld   de, $8800                                   ; $423c: $11 $00 $88
	ld   a, $03                                      ; $423f: $3e $03
	ld   hl, $d000                                   ; $4241: $21 $00 $d0
	ld   b, $40                                      ; $4244: $06 $40
	call EnqueueHDMATransfer                                       ; $4246: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4249: $cf

	ld   c, $81                                      ; $424a: $0e $81
	ld   de, $8c00                                   ; $424c: $11 $00 $8c
	ld   a, $03                                      ; $424f: $3e $03
	ld   hl, $d400                                   ; $4251: $21 $00 $d4
	ld   b, $40                                      ; $4254: $06 $40
	call EnqueueHDMATransfer                                       ; $4256: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4259: $cf

; Decompress tile map into ram
	ld   a, BANK(RleXorTileMap_SaveScreen)                                      ; $425a: $3e $1c
	ld   hl, $d400                                   ; $425c: $21 $00 $d4
	ld   de, RleXorTileMap_SaveScreen                                   ; $425f: $11 $a7 $79
if def(VWF)
	call SaveScreenTileMap_hook
else
	call RLEXorCopy                                       ; $4262: $cd $d2 $09
endc

; VBlank enqueue that tile map
	ld   c, $80                                      ; $4265: $0e $80
	ld   de, $9800                                   ; $4267: $11 $00 $98
	ld   a, $03                                      ; $426a: $3e $03
	ld   hl, $d400                                   ; $426c: $21 $00 $d4
	ld   b, $40                                      ; $426f: $06 $40
	call EnqueueHDMATransfer                                       ; $4271: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4274: $cf

; Decompress tile attr into ram
	ld   a, BANK(RleXorTileAttr_SaveScreen)                                      ; $4275: $3e $1d
	ld   hl, $d000                                   ; $4277: $21 $00 $d0
	ld   de, RleXorTileAttr_SaveScreen                                   ; $427a: $11 $0b $75
if def(VWF)
	call SaveScreenTileAttr_hook
else
	call RLEXorCopy                                       ; $427d: $cd $d2 $09
endc

; VBlank enqueue that tile attr
	ld   c, $81                                      ; $4280: $0e $81
	ld   de, $9800                                   ; $4282: $11 $00 $98
	ld   a, $03                                      ; $4285: $3e $03
	ld   hl, $d000                                   ; $4287: $21 $00 $d0
	ld   b, $40                                      ; $428a: $06 $40
	call EnqueueHDMATransfer                                       ; $428c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $428f: $cf

;
	ld   de, $de00                                   ; $4290: $11 $00 $de
	ld   hl, $d0a0                                   ; $4293: $21 $a0 $d0
	ld   bc, $0040                                   ; $4296: $01 $40 $00
	call MemCopy                                       ; $4299: $cd $a9 $09

;
	ld   de, $de40                                   ; $429c: $11 $40 $de
	ld   hl, $d0a0                                   ; $429f: $21 $a0 $d0
	ld   bc, $0040                                   ; $42a2: $01 $40 $00
	call MemCopy                                       ; $42a5: $cd $a9 $09

;
	ld   hl, $de42                                   ; $42a8: $21 $42 $de
	ld   c, $10                                      ; $42ab: $0e $10
	ld   e, $05                                      ; $42ad: $1e $05
	call Call_010_4522                               ; $42af: $cd $22 $45

;
	ld   de, $de80                                   ; $42b2: $11 $80 $de
	ld   hl, $d0a0                                   ; $42b5: $21 $a0 $d0
	ld   bc, $0040                                   ; $42b8: $01 $40 $00
	call MemCopy                                       ; $42bb: $cd $a9 $09

;
	ld   hl, $de82                                   ; $42be: $21 $82 $de
	ld   c, $10                                      ; $42c1: $0e $10
	ld   e, $06                                      ; $42c3: $1e $06
	call Call_010_4522                               ; $42c5: $cd $22 $45

;
	ld   de, $dec0                                   ; $42c8: $11 $c0 $de
	ld   hl, $d160                                   ; $42cb: $21 $60 $d1
	ld   bc, $0040                                   ; $42ce: $01 $40 $00
	call MemCopy                                       ; $42d1: $cd $a9 $09

;
	ld   de, $df00                                   ; $42d4: $11 $00 $df
	ld   hl, $d160                                   ; $42d7: $21 $60 $d1
	ld   bc, $0040                                   ; $42da: $01 $40 $00
	call MemCopy                                       ; $42dd: $cd $a9 $09

;
	ld   hl, $df02                                   ; $42e0: $21 $02 $df
	ld   c, $10                                      ; $42e3: $0e $10
	ld   e, $05                                      ; $42e5: $1e $05
	call Call_010_4522                               ; $42e7: $cd $22 $45

;
	ld   de, $df40                                   ; $42ea: $11 $40 $df
	ld   hl, $d160                                   ; $42ed: $21 $60 $d1
	ld   bc, $0040                                   ; $42f0: $01 $40 $00
	call MemCopy                                       ; $42f3: $cd $a9 $09

;
	ld   hl, $df42                                   ; $42f6: $21 $42 $df
	ld   c, $10                                      ; $42f9: $0e $10
	ld   e, $06                                      ; $42fb: $1e $06
	call Call_010_4522                               ; $42fd: $cd $22 $45

; Restore ram bank
	pop  af                                          ; $4300: $f1
	ld   [wWramBank], a                                  ; $4301: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4304: $e0 $70

;
	call Call_010_4b82                               ; $4306: $cd $82 $4b
	xor  a                                           ; $4309: $af
	ld   [wWY], a                                  ; $430a: $ea $0a $c2
	ld   [wWX], a                                  ; $430d: $ea $09 $c2
	ld   [wSCX], a                                  ; $4310: $ea $07 $c2
	ld   [wSCY], a                                  ; $4313: $ea $08 $c2
	ld   [$c8b3], a                                  ; $4316: $ea $b3 $c8
	ld   a, $01                                      ; $4319: $3e $01
	ld   [$c8b5], a                                  ; $431b: $ea $b5 $c8
	ld   a, $10                                      ; $431e: $3e $10
	ld   [$c8b4], a                                  ; $4320: $ea $b4 $c8

;
	call LoadAndDisplayAllFileNames                               ; $4323: $cd $92 $4b
	call Call_010_478e                               ; $4326: $cd $8e $47

;
	call ClearBaseAnimSpriteSpecDetails                                       ; $4329: $cd $c9 $2e
	ld   a, $01                                      ; $432c: $3e $01
	ld   hl, $0000                                   ; $432e: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4331: $cd $4b $2f
	ld   [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed], a                                  ; $4334: $ea $af $c8

;
	call StartAnimatingAnimatedSpriteSpec                                       ; $4337: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $433a: $cd $76 $30

	ld   a, $00                                      ; $433d: $3e $00
	ld   [$c8b0], a                                  ; $433f: $ea $b0 $c8
	ld   bc, $0000                                   ; $4342: $01 $00 $00
	ld   de, AnimatedSpriteSpecs                                   ; $4345: $11 $80 $71
	M_FarCall LoadType1NewAnimatedSpriteSpecDetails
	
;
	ld   a, $01                                      ; $435c: $3e $01
	ld   hl, $0000                                   ; $435e: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4361: $cd $4b $2f
	ld   [wSaveScreenPopUpTopRowSpriteSpecIdxUsed], a                                  ; $4364: $ea $b1 $c8

;
	call StartAnimatingAnimatedSpriteSpec                                       ; $4367: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $436a: $cd $76 $30
	ld   a, $00                                      ; $436d: $3e $00
	ld   bc, $0000                                   ; $436f: $01 $00 $00
	ld   de, AnimatedSpriteSpecs                                   ; $4372: $11 $80 $71
	M_FarCall LoadType1NewAnimatedSpriteSpecDetails
	
;
	ld   a, $01                                      ; $4389: $3e $01
	ld   hl, $7000                                   ; $438b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $438e: $11 $de $c2
	ld   bc, $0080                                   ; $4391: $01 $80 $00
	call FarMemCopy                                       ; $4394: $cd $b2 $09

	ld   bc, $003f                                   ; $4397: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $439a: $cd $aa $04

;
	xor  a                                           ; $439d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $439e: $ea $62 $c3
	ld   a, $40                                      ; $43a1: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $43a3: $ea $63 $c3

	ld   a, $03                                      ; $43a6: $3e $03
	ld   b, $01                                      ; $43a8: $06 $01
	ld   hl, $7000                                   ; $43aa: $21 $00 $70
	ld   c, $1e                                      ; $43ad: $0e $1e
	ld   de, $65fc                                   ; $43af: $11 $fc $65
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $43b2: $cd $48 $07

;
	ld   a, [$c8b6]                                  ; $43b5: $fa $b6 $c8
	or   a                                           ; $43b8: $b7
	jr   z, :+                              ; $43b9: $28 $05

	ld   a, $05                                      ; $43bb: $3e $05
	call PlaySong                                       ; $43bd: $cd $92 $1a

:	call Call_010_4571                               ; $43c0: $cd $71 $45

	M_FarCall FadeBGpals8timesHandlingAnimatedSpriteSpecs
	
;
	ld   a, $1e                                      ; $43d7: $3e $1e
	ld   hl, $65fc                                   ; $43d9: $21 $fc $65
	ld   de, wBGPalettes                                   ; $43dc: $11 $de $c2
	ld   bc, $0080                                   ; $43df: $01 $80 $00
	call FarMemCopy                                       ; $43e2: $cd $b2 $09

	ld   bc, $003f                                   ; $43e5: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $43e8: $cd $aa $04

;
	call Call_010_473c                               ; $43eb: $cd $3c $47

; To next substate
	ld   hl, wGameSubstate                                   ; $43ee: $21 $a1 $c2
	inc  [hl]                                        ; $43f1: $34
	ret                                              ; $43f2: $c9

.substate3:
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $43f3: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $43f6: $cd $76 $30

	M_FarCall Func_01_4143
	
	ld   a, c                                        ; $440d: $79
	cp   $2a                                         ; $440e: $fe $2a
	jr   z, .thing_2ah                              ; $4410: $28 $27

	cp   $2b                                         ; $4412: $fe $2b
	jr   z, .thing_2bh                              ; $4414: $28 $64

	cp   $21                                         ; $4416: $fe $21
	jp   z, .substate3end                            ; $4418: $ca $90 $44

	cp   $22                                         ; $441b: $fe $22
	jp   z, .substate3end                            ; $441d: $ca $90 $44

	ld   a, [$c8b0]                                  ; $4420: $fa $b0 $c8
	cp   $1c                                         ; $4423: $fe $1c
	jp   z, .substate3end                            ; $4425: $ca $90 $44

	call Call_010_4588                               ; $4428: $cd $88 $45
	call Call_010_461b                               ; $442b: $cd $1b $46
	call Call_010_4571                               ; $442e: $cd $71 $45
	call HandleSaveScreenAPressed                               ; $4431: $cd $6d $48
	call Call_010_498c                               ; $4434: $cd $8c $49
	jr   .substate3end                                 ; $4437: $18 $57

.thing_2ah:
	ld   a, [wInGameButtonsPressed]                                  ; $4439: $fa $10 $c2
	and  $03                                         ; $443c: $e6 $03
	jr   z, .substate3end                              ; $443e: $28 $50

	ld   a, [$c8b6]                                  ; $4440: $fa $b6 $c8
	bit  0, a                                        ; $4443: $cb $47
	jr   z, .br_4456                              ; $4445: $28 $0f

	call Call_010_4d73                               ; $4447: $cd $73 $4d
	jr   nz, .br_4456                             ; $444a: $20 $0a

	call Call_010_4d50                               ; $444c: $cd $50 $4d
	ld   a, $21                                      ; $444f: $3e $21
	call PlaySoundEffect                                       ; $4451: $cd $df $1a
	jr   .substate3end                                 ; $4454: $18 $3a

.br_4456:
	ld   hl, $c8b6                                   ; $4456: $21 $b6 $c8
	bit  3, [hl]                                     ; $4459: $cb $5e
	jr   nz, .br_4462                             ; $445b: $20 $05

	call Call_010_4992                               ; $445d: $cd $92 $49
	jr   .substate3end                                 ; $4460: $18 $2e

.br_4462:
	call Call_010_49ea                               ; $4462: $cd $ea $49
	res  3, [hl]                                     ; $4465: $cb $9e
	call Call_010_4588                               ; $4467: $cd $88 $45
	ld   a, $04                                      ; $446a: $3e $04
	ld   [$c8b2], a                                  ; $446c: $ea $b2 $c8
	call Call_010_4588                               ; $446f: $cd $88 $45
	call Call_010_478e                               ; $4472: $cd $8e $47
	call Call_010_4b82                               ; $4475: $cd $82 $4b
	jr   .substate3end                                 ; $4478: $18 $16

.thing_2bh:
	ld   a, [wInGameButtonsPressed]                                  ; $447a: $fa $10 $c2
	and  $03                                         ; $447d: $e6 $03
	jr   z, .substate3end                              ; $447f: $28 $0f

	ld   hl, $c8b6                                   ; $4481: $21 $b6 $c8
	set  7, [hl]                                     ; $4484: $cb $fe
	ld   a, $04                                      ; $4486: $3e $04
	ld   [wGameSubstate], a                                  ; $4488: $ea $a1 $c2
	ld   a, $22                                      ; $448b: $3e $22
	call PlaySoundEffect                                       ; $448d: $cd $df $1a

.substate3end:
	call todo_SaveScreenPalettePulseRelated                               ; $4490: $cd $4f $45
	call ClearOam                                       ; $4493: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4496: $cd $d3 $2e
	ret                                              ; $4499: $c9

.substate4:
	ld   a, [$c8b6]                                  ; $449a: $fa $b6 $c8
	bit  7, a                                        ; $449d: $cb $7f
	jr   nz, .cont_44ac                             ; $449f: $20 $0b

	bit  0, a                                        ; $44a1: $cb $47
	jr   z, .cont_44ac                              ; $44a3: $28 $07

	bit  4, a                                        ; $44a5: $cb $67
	jr   z, .cont_44ac                              ; $44a7: $28 $03

	call Call_010_4d8e                               ; $44a9: $cd $8e $4d

.cont_44ac:
	xor  a                                           ; $44ac: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $44ad: $ea $62 $c3
	ld   a, $40                                      ; $44b0: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $44b2: $ea $63 $c3
	ld   a, $03                                      ; $44b5: $3e $03
	ld   b, $1e                                      ; $44b7: $06 $1e
	ld   hl, $65fc                                   ; $44b9: $21 $fc $65
	ld   c, $01                                      ; $44bc: $0e $01
	ld   de, $7000                                   ; $44be: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $44c1: $cd $48 $07
	push af                                          ; $44c4: $f5
	ld   a, $54                                      ; $44c5: $3e $54
	ld   [wFarCallAddr], a                                  ; $44c7: $ea $98 $c2
	ld   a, $57                                      ; $44ca: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $44cc: $ea $99 $c2
	ld   a, $11                                      ; $44cf: $3e $11
	ld   [wFarCallBank], a                                  ; $44d1: $ea $9a $c2
	pop  af                                          ; $44d4: $f1
	call FarCall                                       ; $44d5: $cd $62 $09
	ld   a, $01                                      ; $44d8: $3e $01
	ld   hl, $7000                                   ; $44da: $21 $00 $70
	ld   de, wBGPalettes                                   ; $44dd: $11 $de $c2
	ld   bc, $0080                                   ; $44e0: $01 $80 $00
	call FarMemCopy                                       ; $44e3: $cd $b2 $09
	ld   bc, $003f                                   ; $44e6: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $44e9: $cd $aa $04
	ld   a, [$c8bf]                                  ; $44ec: $fa $bf $c8
	ld   [wGameState], a                                  ; $44ef: $ea $a0 $c2
	ld   a, [$c8c0]                                  ; $44f2: $fa $c0 $c8
	ld   [wGameSubstate], a                                  ; $44f5: $ea $a1 $c2

;
	ld   a, [$c8b6]                                  ; $44f8: $fa $b6 $c8
	bit  7, a                                        ; $44fb: $cb $7f
	jr   nz, .returnToPrevState                             ; $44fd: $20 $16

	bit  0, a                                        ; $44ff: $cb $47
	jr   z, .done                              ; $4501: $28 $1e

	bit  4, a                                        ; $4503: $cb $67
	jr   z, .returnToPrevState                              ; $4505: $28 $0e

	ld   a, [$c8bb]                                  ; $4507: $fa $bb $c8
	ld   [wGameState], a                                  ; $450a: $ea $a0 $c2
	ld   a, [$c8bc]                                  ; $450d: $fa $bc $c8
	ld   [wGameSubstate], a                                  ; $4510: $ea $a1 $c2
	jr   .done                                 ; $4513: $18 $0c

.returnToPrevState:
; Set specified state and substate
	ld   a, [wSaveScreenReturnState]                                  ; $4515: $fa $bd $c8
	ld   [wGameState], a                                  ; $4518: $ea $a0 $c2

	ld   a, [wSaveScreenReturnSubstate]                                  ; $451b: $fa $be $c8
	ld   [wGameSubstate], a                                  ; $451e: $ea $a1 $c2

.done:
	ret                                              ; $4521: $c9


Call_010_4522:
	ld   b, $02                                      ; $4522: $06 $02

jr_010_4524:
	push bc                                          ; $4524: $c5
	push hl                                          ; $4525: $e5

jr_010_4526:
	ld   a, [hl]                                     ; $4526: $7e
	or   e                                           ; $4527: $b3
	ld   [hl+], a                                    ; $4528: $22
	dec  c                                           ; $4529: $0d
	jr   nz, jr_010_4526                             ; $452a: $20 $fa

	pop  hl                                          ; $452c: $e1
	ld   bc, $0020                                   ; $452d: $01 $20 $00
	add  hl, bc                                      ; $4530: $09
	pop  bc                                          ; $4531: $c1
	dec  b                                           ; $4532: $05
	jr   nz, jr_010_4524                             ; $4533: $20 $ef

	ret                                              ; $4535: $c9


Call_010_4536:
	xor  a                                           ; $4536: $af
	ld   [$c8b3], a                                  ; $4537: $ea $b3 $c8
	call Call_010_4a54                               ; $453a: $cd $54 $4a
	ld   b, $14                                      ; $453d: $06 $14
	ld   c, $01                                      ; $453f: $0e $01
	call FadePalettesAndSetRangeToUpdate                                       ; $4541: $cd $32 $08
	ld   a, $10                                      ; $4544: $3e $10
	ld   [$c8b5], a                                  ; $4546: $ea $b5 $c8
	ld   a, $0f                                      ; $4549: $3e $0f
	ld   [$c8b4], a                                  ; $454b: $ea $b4 $c8
	ret                                              ; $454e: $c9


todo_SaveScreenPalettePulseRelated:
	ld   hl, $c8b5                                   ; $454f: $21 $b5 $c8
	dec  [hl]                                        ; $4552: $35
	jr   nz, .done                             ; $4553: $20 $1b

	ld   a, $01                                      ; $4555: $3e $01
	ld   [hl], a                                     ; $4557: $77
	ld   b, $14                                      ; $4558: $06 $14
	ld   c, $01                                      ; $455a: $0e $01
	call FadePalettesAndSetRangeToUpdate                                       ; $455c: $cd $32 $08
	ld   hl, $c8b4                                   ; $455f: $21 $b4 $c8
	dec  [hl]                                        ; $4562: $35
	jr   nz, .done                             ; $4563: $20 $0b

	ld   a, $10                                      ; $4565: $3e $10
	ld   [hl], a                                     ; $4567: $77
	ld   a, $08                                      ; $4568: $3e $08
	ld   [$c8b5], a                                  ; $456a: $ea $b5 $c8
	call Call_010_4a54                               ; $456d: $cd $54 $4a

.done:
	ret                                              ; $4570: $c9


Call_010_4571:
	call Call_010_45f3                               ; $4571: $cd $f3 $45
	ld   hl, $de40                                   ; $4574: $21 $40 $de
	ld   a, [$c8b2]                                  ; $4577: $fa $b2 $c8
	or   a                                           ; $457a: $b7
	jr   z, jr_010_4584                              ; $457b: $28 $07

	cp   $03                                         ; $457d: $fe $03
	jr   nc, jr_010_4584                             ; $457f: $30 $03

	ld   hl, $df00                                   ; $4581: $21 $00 $df

jr_010_4584:
	call Call_010_45b6                               ; $4584: $cd $b6 $45
	ret                                              ; $4587: $c9


Call_010_4588:
	call Call_010_45f3                               ; $4588: $cd $f3 $45
	ld   hl, $de00                                   ; $458b: $21 $00 $de
	ld   a, [$c8b2]                                  ; $458e: $fa $b2 $c8
	or   a                                           ; $4591: $b7
	jr   z, jr_010_459b                              ; $4592: $28 $07

	cp   $03                                         ; $4594: $fe $03
	jr   nc, jr_010_459b                             ; $4596: $30 $03

	ld   hl, $dec0                                   ; $4598: $21 $c0 $de

jr_010_459b:
	call Call_010_45b6                               ; $459b: $cd $b6 $45
	ret                                              ; $459e: $c9


Call_010_459f:
	call Call_010_45f3                               ; $459f: $cd $f3 $45
	ld   hl, $de80                                   ; $45a2: $21 $80 $de
	ld   a, [$c8b2]                                  ; $45a5: $fa $b2 $c8
	or   a                                           ; $45a8: $b7
	jr   z, jr_010_45b2                              ; $45a9: $28 $07

	cp   $03                                         ; $45ab: $fe $03
	jr   nc, jr_010_45b2                             ; $45ad: $30 $03

	ld   hl, $df40                                   ; $45af: $21 $40 $df

jr_010_45b2:
	call Call_010_45b6                               ; $45b2: $cd $b6 $45
	ret                                              ; $45b5: $c9


Call_010_45b6:
	ld   a, c                                        ; $45b6: $79
	cp   $40                                         ; $45b7: $fe $40
	jr   z, jr_010_45e9                              ; $45b9: $28 $2e

	ld   a, [wWramBank]                                  ; $45bb: $fa $93 $c2
	push af                                          ; $45be: $f5
	ld   a, $03                                      ; $45bf: $3e $03
	ld   [wWramBank], a                                  ; $45c1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45c4: $e0 $70
	ld   a, $01                                      ; $45c6: $3e $01
	ldh  [rVBK], a                                   ; $45c8: $e0 $4f
	inc  hl                                          ; $45ca: $23
	inc  hl                                          ; $45cb: $23
	push hl                                          ; $45cc: $e5
	push de                                          ; $45cd: $d5
	push bc                                          ; $45ce: $c5
	ld   a, $00                                      ; $45cf: $3e $00
	call HBlankFarMemCopy                                       ; $45d1: $cd $23 $0a
	pop  bc                                          ; $45d4: $c1
	pop  de                                          ; $45d5: $d1
	ld   hl, $0020                                   ; $45d6: $21 $20 $00
	add  hl, de                                      ; $45d9: $19
	ld   d, h                                        ; $45da: $54
	ld   e, l                                        ; $45db: $5d
	pop  hl                                          ; $45dc: $e1
	ld   a, $00                                      ; $45dd: $3e $00
	call HBlankFarMemCopy                                       ; $45df: $cd $23 $0a
	pop  af                                          ; $45e2: $f1
	ld   [wWramBank], a                                  ; $45e3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45e6: $e0 $70
	ret                                              ; $45e8: $c9


jr_010_45e9:
	ld   a, $03                                      ; $45e9: $3e $03
	ld   c, $81                                      ; $45eb: $0e $81
	ld   b, $04                                      ; $45ed: $06 $04
	call EnqueueHDMATransfer                                       ; $45ef: $cd $7c $02
	ret                                              ; $45f2: $c9


Call_010_45f3:
	ld   a, [$c8b2]                                  ; $45f3: $fa $b2 $c8
	add  a                                           ; $45f6: $87
	add  a                                           ; $45f7: $87
	ld   c, a                                        ; $45f8: $4f
	ld   b, $00                                      ; $45f9: $06 $00
	ld   hl, $4607                                   ; $45fb: $21 $07 $46
	add  hl, bc                                      ; $45fe: $09
	ld   a, [hl+]                                    ; $45ff: $2a
	ld   e, a                                        ; $4600: $5f
	ld   a, [hl+]                                    ; $4601: $2a
	ld   d, a                                        ; $4602: $57
	ld   a, [hl+]                                    ; $4603: $2a
	ld   c, a                                        ; $4604: $4f
	ld   b, [hl]                                     ; $4605: $46
	ret                                              ; $4606: $c9


	and  b                                           ; $4607: $a0
	sbc  b                                           ; $4608: $98
	ld   b, b                                        ; $4609: $40
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	sbc  c                                           ; $460c: $99
	ld   b, b                                        ; $460d: $40
	nop                                              ; $460e: $00
	ld   h, b                                        ; $460f: $60
	sbc  c                                           ; $4610: $99
	ld   b, b                                        ; $4611: $40
	nop                                              ; $4612: $00
	db   $eb                                         ; $4613: $eb
	sbc  c                                           ; $4614: $99
	inc  b                                           ; $4615: $04
	nop                                              ; $4616: $00
	rst  $28                                         ; $4617: $ef
	sbc  c                                           ; $4618: $99
	inc  b                                           ; $4619: $04
	nop                                              ; $461a: $00

Call_010_461b:
	ld   hl, $c8b6                                   ; $461b: $21 $b6 $c8
	ld   a, [hl]                                     ; $461e: $7e
	bit  4, a                                        ; $461f: $cb $67
	jr   nz, jr_010_4637                             ; $4621: $20 $14

	bit  5, a                                        ; $4623: $cb $6f
	jr   z, jr_010_4646                              ; $4625: $28 $1f

	ld   a, [wInGameButtonsPressed]                                  ; $4627: $fa $10 $c2
	bit  5, a                                        ; $462a: $cb $6f
	ret  z                                           ; $462c: $c8

	res  5, [hl]                                     ; $462d: $cb $ae
	set  4, [hl]                                     ; $462f: $cb $e6
	call Call_010_46f6                               ; $4631: $cd $f6 $46
	jp   Jump_010_46c1                               ; $4634: $c3 $c1 $46


jr_010_4637:
	ld   a, [wInGameButtonsPressed]                                  ; $4637: $fa $10 $c2
	bit  4, a                                        ; $463a: $cb $67
	ret  z                                           ; $463c: $c8

	res  4, [hl]                                     ; $463d: $cb $a6
	set  5, [hl]                                     ; $463f: $cb $ee
	call Call_010_4719                               ; $4641: $cd $19 $47
	jr   jr_010_46c1                                 ; $4644: $18 $7b

jr_010_4646:
	ld   hl, $c8b2                                   ; $4646: $21 $b2 $c8
	ld   a, [hl]                                     ; $4649: $7e
	cp   $03                                         ; $464a: $fe $03
	jr   z, jr_010_4691                              ; $464c: $28 $43

	cp   $04                                         ; $464e: $fe $04
	jr   z, jr_010_46af                              ; $4650: $28 $5d

	ld   a, [wInGameButtonsPressed]                                  ; $4652: $fa $10 $c2
	bit  6, a                                        ; $4655: $cb $77
	jr   z, jr_010_4665                              ; $4657: $28 $0c

	ld   a, [hl]                                     ; $4659: $7e

jr_010_465a:
	or   a                                           ; $465a: $b7
	jr   z, jr_010_46c6                              ; $465b: $28 $69

	dec  a                                           ; $465d: $3d
	call Call_010_46c7                               ; $465e: $cd $c7 $46
	jr   nz, jr_010_465a                             ; $4661: $20 $f7

	jr   jr_010_468e                                 ; $4663: $18 $29

jr_010_4665:
	ld   a, [wInGameButtonsPressed]                                  ; $4665: $fa $10 $c2
	bit  7, a                                        ; $4668: $cb $7f
	jr   z, jr_010_46c6                              ; $466a: $28 $5a

	ld   a, [hl]                                     ; $466c: $7e

jr_010_466d:
	cp   $02                                         ; $466d: $fe $02
	jr   z, jr_010_4679                              ; $466f: $28 $08

	inc  a                                           ; $4671: $3c
	call Call_010_46c7                               ; $4672: $cd $c7 $46
	jr   nz, jr_010_466d                             ; $4675: $20 $f6

	jr   jr_010_468e                                 ; $4677: $18 $15

jr_010_4679:
	ld   a, [$c8b6]                                  ; $4679: $fa $b6 $c8
	and  $0e                                         ; $467c: $e6 $0e
	jr   nz, jr_010_46c6                             ; $467e: $20 $46

	push hl                                          ; $4680: $e5
	call Call_010_4d73                               ; $4681: $cd $73 $4d
	pop  hl                                          ; $4684: $e1
	jr   z, jr_010_46c6                              ; $4685: $28 $3f

	push hl                                          ; $4687: $e5
	call Call_010_4a9a                               ; $4688: $cd $9a $4a
	pop  hl                                          ; $468b: $e1
	ld   a, $03                                      ; $468c: $3e $03

jr_010_468e:
	ld   [hl], a                                     ; $468e: $77
	jr   jr_010_46be                                 ; $468f: $18 $2d

jr_010_4691:
	ld   a, [wInGameButtonsPressed]                                  ; $4691: $fa $10 $c2
	bit  6, a                                        ; $4694: $cb $77
	jr   z, jr_010_46a8                              ; $4696: $28 $10

jr_010_4698:
	ld   a, [hl]                                     ; $4698: $7e

jr_010_4699:
	or   a                                           ; $4699: $b7
	jr   z, jr_010_46c6                              ; $469a: $28 $2a

	dec  a                                           ; $469c: $3d
	call Call_010_46c7                               ; $469d: $cd $c7 $46
	jr   nz, jr_010_4699                             ; $46a0: $20 $f7

	ld   [hl], a                                     ; $46a2: $77
	call Call_010_4b82                               ; $46a3: $cd $82 $4b
	jr   jr_010_46be                                 ; $46a6: $18 $16

jr_010_46a8:
	bit  4, a                                        ; $46a8: $cb $67
	jr   z, jr_010_46c6                              ; $46aa: $28 $1a

	inc  [hl]                                        ; $46ac: $34
	jr   jr_010_46be                                 ; $46ad: $18 $0f

jr_010_46af:
	ld   a, [wInGameButtonsPressed]                                  ; $46af: $fa $10 $c2
	bit  5, a                                        ; $46b2: $cb $6f
	jr   nz, jr_010_46bd                             ; $46b4: $20 $07

	bit  6, a                                        ; $46b6: $cb $77
	jr   z, jr_010_46c6                              ; $46b8: $28 $0c

	dec  [hl]                                        ; $46ba: $35
	jr   jr_010_4698                                 ; $46bb: $18 $db

jr_010_46bd:
	dec  [hl]                                        ; $46bd: $35

jr_010_46be:
	call Call_010_473c                               ; $46be: $cd $3c $47

Jump_010_46c1:
jr_010_46c1:
	ld   a, $20                                      ; $46c1: $3e $20
	call PlaySoundEffect                                       ; $46c3: $cd $df $1a

jr_010_46c6:
	ret                                              ; $46c6: $c9


Call_010_46c7:
	ld   c, a                                        ; $46c7: $4f
	ld   a, [$c8b6]                                  ; $46c8: $fa $b6 $c8
	and  $0a                                         ; $46cb: $e6 $0a
	jr   nz, jr_010_46da                             ; $46cd: $20 $0b

	ld   a, [$c8b6]                                  ; $46cf: $fa $b6 $c8
	bit  2, a                                        ; $46d2: $cb $57
	jr   nz, jr_010_46e8                             ; $46d4: $20 $12

	bit  0, a                                        ; $46d6: $cb $47
	jr   z, jr_010_46f2                              ; $46d8: $28 $18

jr_010_46da:
	push hl                                          ; $46da: $e5
	ld   b, $00                                      ; $46db: $06 $00
	ld   hl, $c8b8                                   ; $46dd: $21 $b8 $c8
	add  hl, bc                                      ; $46e0: $09
	ld   a, [hl]                                     ; $46e1: $7e
	pop  hl                                          ; $46e2: $e1
	or   a                                           ; $46e3: $b7
	jr   z, jr_010_46ee                              ; $46e4: $28 $08

	jr   jr_010_46f2                                 ; $46e6: $18 $0a

jr_010_46e8:
	ld   a, [$c8b7]                                  ; $46e8: $fa $b7 $c8
	cp   c                                           ; $46eb: $b9
	jr   nz, jr_010_46f2                             ; $46ec: $20 $04

jr_010_46ee:
	or   $01                                         ; $46ee: $f6 $01
	jr   jr_010_46f4                                 ; $46f0: $18 $02

jr_010_46f2:
	and  $00                                         ; $46f2: $e6 $00

jr_010_46f4:
	ld   a, c                                        ; $46f4: $79
	ret                                              ; $46f5: $c9


Call_010_46f6:
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $46f6: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $46f9: $cd $76 $30
	ld   a, $11                                      ; $46fc: $3e $11
	ld   [$c8b0], a                                  ; $46fe: $ea $b0 $c8
	ld   de, AnimatedSpriteSpecs                                   ; $4701: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $4718: $c9


Call_010_4719:
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4719: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $471c: $cd $76 $30
	ld   a, $13                                      ; $471f: $3e $13
	ld   [$c8b0], a                                  ; $4721: $ea $b0 $c8
	ld   de, AnimatedSpriteSpecs                                   ; $4724: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $473b: $c9


Call_010_473c:
	call Call_010_4536                               ; $473c: $cd $36 $45
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $473f: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4742: $cd $76 $30
	push hl                                          ; $4745: $e5
	ld   a, [$c8b2]                                  ; $4746: $fa $b2 $c8
	add  a                                           ; $4749: $87
	ld   c, a                                        ; $474a: $4f
	ld   b, $00                                      ; $474b: $06 $00
	ld   hl, $4784                                   ; $474d: $21 $84 $47
	add  hl, bc                                      ; $4750: $09
	ld   a, [hl+]                                    ; $4751: $2a
	ld   c, a                                        ; $4752: $4f
	ld   b, [hl]                                     ; $4753: $46
	pop  hl                                          ; $4754: $e1
	push af                                          ; $4755: $f5
	ld   a, $2f                                      ; $4756: $3e $2f
	ld   [wFarCallAddr], a                                  ; $4758: $ea $98 $c2
	ld   a, $41                                      ; $475b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $475d: $ea $99 $c2
	ld   a, $01                                      ; $4760: $3e $01
	ld   [wFarCallBank], a                                  ; $4762: $ea $9a $c2
	pop  af                                          ; $4765: $f1
	call FarCall                                       ; $4766: $cd $62 $09
	ld   a, [wSaveScreenPopUpTopRowSpriteSpecIdxUsed]                                  ; $4769: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $476c: $cd $76 $30
	push af                                          ; $476f: $f5
	ld   a, $2f                                      ; $4770: $3e $2f
	ld   [wFarCallAddr], a                                  ; $4772: $ea $98 $c2
	ld   a, $41                                      ; $4775: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4777: $ea $99 $c2
	ld   a, $01                                      ; $477a: $3e $01
	ld   [wFarCallBank], a                                  ; $477c: $ea $9a $c2
	pop  af                                          ; $477f: $f1
	call FarCall                                       ; $4780: $cd $62 $09
	ret                                              ; $4783: $c9


	jr   nc, jr_010_47d6                             ; $4784: $30 $50

	ld   c, b                                        ; $4786: $48
	ld   d, b                                        ; $4787: $50
	ld   h, b                                        ; $4788: $60
	ld   d, b                                        ; $4789: $50
	add  b                                           ; $478a: $80
	ld   l, b                                        ; $478b: $68
	add  b                                           ; $478c: $80
	adc  b                                           ; $478d: $88

Call_010_478e:
	xor  a                                           ; $478e: $af

jr_010_478f:
	call Call_010_46c7                               ; $478f: $cd $c7 $46
	jr   z, jr_010_479b                              ; $4792: $28 $07

	inc  a                                           ; $4794: $3c
	cp   $03                                         ; $4795: $fe $03
	jr   z, jr_010_479e                              ; $4797: $28 $05

	jr   jr_010_478f                                 ; $4799: $18 $f4

jr_010_479b:
	ld   [$c8b2], a                                  ; $479b: $ea $b2 $c8

jr_010_479e:
	ret                                              ; $479e: $c9


Call_010_479f:
	ld   a, [$c8b7]                                  ; $479f: $fa $b7 $c8
	ld   l, a                                        ; $47a2: $6f
	ld   a, [$c8b2]                                  ; $47a3: $fa $b2 $c8
	ld   h, a                                        ; $47a6: $67
	push af                                          ; $47a7: $f5
	ld   a, $7a                                      ; $47a8: $3e $7a
	ld   [wFarCallAddr], a                                  ; $47aa: $ea $98 $c2
	ld   a, $46                                      ; $47ad: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $47af: $ea $99 $c2
	ld   a, $0a                                      ; $47b2: $3e $0a
	ld   [wFarCallBank], a                                  ; $47b4: $ea $9a $c2
	pop  af                                          ; $47b7: $f1
	call FarCall                                       ; $47b8: $cd $62 $09
	call Call_010_4b9f                               ; $47bb: $cd $9f $4b
	ret                                              ; $47be: $c9


Call_010_47bf:
	ld   a, [$c8b2]                                  ; $47bf: $fa $b2 $c8
	push af                                          ; $47c2: $f5
	ld   a, $8d                                      ; $47c3: $3e $8d
	ld   [wFarCallAddr], a                                  ; $47c5: $ea $98 $c2
	ld   a, $46                                      ; $47c8: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $47ca: $ea $99 $c2
	ld   a, $0a                                      ; $47cd: $3e $0a
	ld   [wFarCallBank], a                                  ; $47cf: $ea $9a $c2
	pop  af                                          ; $47d2: $f1
	call FarCall                                       ; $47d3: $cd $62 $09

jr_010_47d6:
	call Call_010_4b9f                               ; $47d6: $cd $9f $4b
	ret                                              ; $47d9: $c9


Call_010_47da:
	ld   a, [$c8b2]                                  ; $47da: $fa $b2 $c8

	M_FarCall Func_0a_46aa

	call Call_010_4b9f                               ; $47f1: $cd $9f $4b
	ret                                              ; $47f4: $c9


Call_010_47f5:
	ld   a, [$c8b2]                                  ; $47f5: $fa $b2 $c8
	push af                                          ; $47f8: $f5
	ld   a, $91                                      ; $47f9: $3e $91
	ld   [wFarCallAddr], a                                  ; $47fb: $ea $98 $c2
	ld   a, $46                                      ; $47fe: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $4800: $ea $99 $c2
	ld   a, $0a                                      ; $4803: $3e $0a
	ld   [wFarCallBank], a                                  ; $4805: $ea $9a $c2
	pop  af                                          ; $4808: $f1
	call FarCall                                       ; $4809: $cd $62 $09
	call Call_010_4b9f                               ; $480c: $cd $9f $4b
	ret                                              ; $480f: $c9


Call_010_4810:
	ld   hl, $c8b6                                   ; $4810: $21 $b6 $c8
	set  6, [hl]                                     ; $4813: $cb $f6
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4815: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4818: $cd $76 $30
	ld   a, ASS_SAVE_SCREEN_SHOW_SAVE_COMPLETE                                      ; $481b: $3e $1c
	ld   [$c8b0], a                                  ; $481d: $ea $b0 $c8
	ld   de, AnimatedSpriteSpecs                                   ; $4820: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress

	ld   a, [wSaveScreenPopUpTopRowSpriteSpecIdxUsed]                                  ; $4837: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $483a: $cd $76 $30
	ld   b, $19                                      ; $483d: $06 $19
	ld   a, [$c8b6]                                  ; $483f: $fa $b6 $c8
	bit  3, a                                        ; $4842: $cb $5f
	jr   nz, jr_010_4854                             ; $4844: $20 $0e

	ld   b, $1b                                      ; $4846: $06 $1b
	bit  2, a                                        ; $4848: $cb $57
	jr   nz, jr_010_4854                             ; $484a: $20 $08

	ld   b, $17                                      ; $484c: $06 $17
	bit  0, a                                        ; $484e: $cb $47
	jr   nz, jr_010_4854                             ; $4850: $20 $02

	ld   b, $15                                      ; $4852: $06 $15

jr_010_4854:
	ld   a, b                                        ; $4854: $78
	ld   de, AnimatedSpriteSpecs                                   ; $4855: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $486c: $c9


HandleSaveScreenAPressed:
; Return if A not pressed
	ld   a, [wInGameButtonsPressed]                                  ; $486d: $fa $10 $c2
	bit  PADB_A, a                                        ; $4870: $cb $47
	ret  z                                           ; $4872: $c8

;
	ld   a, [$c8b6]                                  ; $4873: $fa $b6 $c8
	bit  5, a                                        ; $4876: $cb $6f
	jr   nz, .br_48ac                             ; $4878: $20 $32

	bit  4, a                                        ; $487a: $cb $67
	jr   z, .br_48b0                              ; $487c: $28 $32

	ld   a, SE_21                                      ; $487e: $3e $21
	call PlaySoundEffect                                       ; $4880: $cd $df $1a
	ld   a, [$c8b6]                                  ; $4883: $fa $b6 $c8
	bit  2, a                                        ; $4886: $cb $57
	jr   nz, .br_4897                             ; $4888: $20 $0d

	bit  3, a                                        ; $488a: $cb $5f
	jr   nz, .br_489c                             ; $488c: $20 $0e

	bit  0, a                                        ; $488e: $cb $47
	jr   nz, .br_48a3                             ; $4890: $20 $11

	call Call_010_47f5                               ; $4892: $cd $f5 $47
	jr   .br_489f                                 ; $4895: $18 $08

.br_4897:
	call Call_010_479f                               ; $4897: $cd $9f $47
	jr   .br_489f                                 ; $489a: $18 $03

.br_489c:
	call Call_010_47bf                               ; $489c: $cd $bf $47

.br_489f:
	call Call_010_4810                               ; $489f: $cd $10 $48
	ret                                              ; $48a2: $c9

.br_48a3:
	call Call_010_47da                               ; $48a3: $cd $da $47
	ld   a, $04                                      ; $48a6: $3e $04
	ld   [wGameSubstate], a                                  ; $48a8: $ea $a1 $c2
	ret                                              ; $48ab: $c9

.br_48ac:
	call Call_010_4992                               ; $48ac: $cd $92 $49
	ret                                              ; $48af: $c9

.br_48b0:
	ld   a, [$c8b2]                                  ; $48b0: $fa $b2 $c8
	cp   $03                                         ; $48b3: $fe $03
	jr   z, .br_48c8                              ; $48b5: $28 $11

	cp   $04                                         ; $48b7: $fe $04
	jr   nz, .br_48d5                             ; $48b9: $20 $1a

	call Call_010_459f                               ; $48bb: $cd $9f $45
	ld   hl, $c8b6                                   ; $48be: $21 $b6 $c8
	set  3, [hl]                                     ; $48c1: $cb $de
	call Call_010_4ad8                               ; $48c3: $cd $d8 $4a
	jr   .cont_48ef                                 ; $48c6: $18 $27

.br_48c8:
	call Call_010_459f                               ; $48c8: $cd $9f $45
	ld   hl, $c8b6                                   ; $48cb: $21 $b6 $c8
	set  1, [hl]                                     ; $48ce: $cb $ce
	call Call_010_4b1c                               ; $48d0: $cd $1c $4b
	jr   .cont_48ef                                 ; $48d3: $18 $1a

.br_48d5:
	ld   a, [$c8b6]                                  ; $48d5: $fa $b6 $c8
	bit  1, a                                        ; $48d8: $cb $4f
	jr   z, .br_48fd                              ; $48da: $28 $21

	ld   a, [$c8b2]                                  ; $48dc: $fa $b2 $c8
	ld   [$c8b7], a                                  ; $48df: $ea $b7 $c8
	call Call_010_459f                               ; $48e2: $cd $9f $45
	ld   hl, $c8b6                                   ; $48e5: $21 $b6 $c8
	res  1, [hl]                                     ; $48e8: $cb $8e
	set  2, [hl]                                     ; $48ea: $cb $d6
	call Call_010_4afa                               ; $48ec: $cd $fa $4a

.cont_48ef:
	call Call_010_478e                               ; $48ef: $cd $8e $47
	call Call_010_473c                               ; $48f2: $cd $3c $47
	ld   a, $21                                      ; $48f5: $3e $21
	call PlaySoundEffect                                       ; $48f7: $cd $df $1a
	jp   .done                               ; $48fa: $c3 $8b $49

.br_48fd:
	ld   b, ASS_SAVE_SCREEN_SHOW_DELETE_POPUP                                      ; $48fd: $06 $18
	bit  3, a                                        ; $48ff: $cb $5f
	jr   nz, .br_493d                             ; $4901: $20 $3a

	ld   b, ASS_SAVE_SCREEN_SHOW_COPY_POPUP                                      ; $4903: $06 $1a
	bit  2, a                                        ; $4905: $cb $57
	jr   nz, .br_493d                             ; $4907: $20 $34

	ld   b, ASS_SAVE_SCREEN_SHOW_SAVE_POPUP                                      ; $4909: $06 $14
	bit  0, a                                        ; $490b: $cb $47
	jr   z, .br_493d                              ; $490d: $28 $2e

	ld   hl, $c8b6                                   ; $490f: $21 $b6 $c8
	set  4, [hl]                                     ; $4912: $cb $e6
	ld   a, [wSaveScreenPopUpTopRowSpriteSpecIdxUsed]                                  ; $4914: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4917: $cd $76 $30
	ld   a, ASS_SAVE_SCREEN_SHOW_LOAD_POPUP                                      ; $491a: $3e $16
	ld   de, AnimatedSpriteSpecs                                   ; $491c: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4933: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4936: $cd $76 $30
	ld   a, ASS_SAVE_SCREEN_POPUP_YES_SELECTED                                      ; $4939: $3e $0f
	jr   .cont_4969                                 ; $493b: $18 $2c

.br_493d:
	ld   hl, $c8b6                                   ; $493d: $21 $b6 $c8
	set  5, [hl]                                     ; $4940: $cb $ee
	push bc                                          ; $4942: $c5
	ld   a, [wSaveScreenPopUpTopRowSpriteSpecIdxUsed]                                  ; $4943: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4946: $cd $76 $30
	pop  af                                          ; $4949: $f1
	ld   de, AnimatedSpriteSpecs                                   ; $494a: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4961: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4964: $cd $76 $30
	ld   a, ASS_SAVE_SCREEN_POPUP_NO_SELECTED                                      ; $4967: $3e $10

.cont_4969:
	ld   [$c8b0], a                                  ; $4969: $ea $b0 $c8
	ld   de, AnimatedSpriteSpecs                                   ; $496c: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	
	call Call_010_473c                               ; $4983: $cd $3c $47
	ld   a, SE_23                                      ; $4986: $3e $23
	call PlaySoundEffect                                       ; $4988: $cd $df $1a

.done:
	ret                                              ; $498b: $c9


Call_010_498c:
	ld   a, [wInGameButtonsPressed]                                  ; $498c: $fa $10 $c2
	cp   $02                                         ; $498f: $fe $02
	ret  nz                                          ; $4991: $c0

Call_010_4992:
	ld   hl, $c8b6                                   ; $4992: $21 $b6 $c8
	ld   a, [hl]                                     ; $4995: $7e
	and  $fe                                         ; $4996: $e6 $fe
	jr   z, jr_010_49c2                              ; $4998: $28 $28

	ld   a, [hl]                                     ; $499a: $7e
	and  $70                                         ; $499b: $e6 $70
	jr   z, jr_010_49a4                              ; $499d: $28 $05

	call Call_010_49ea                               ; $499f: $cd $ea $49
	jr   jr_010_49a9                                 ; $49a2: $18 $05

jr_010_49a4:
	ld   a, $22                                      ; $49a4: $3e $22
	call PlaySoundEffect                                       ; $49a6: $cd $df $1a

jr_010_49a9:
	ld   hl, $c8b6                                   ; $49a9: $21 $b6 $c8
	ld   a, [hl]                                     ; $49ac: $7e
	bit  1, a                                        ; $49ad: $cb $4f
	jr   nz, jr_010_49ce                             ; $49af: $20 $1d

	bit  2, a                                        ; $49b1: $cb $57
	jr   nz, jr_010_49d7                             ; $49b3: $20 $22

	bit  3, a                                        ; $49b5: $cb $5f
	jr   z, jr_010_49e9                              ; $49b7: $28 $30

	res  3, [hl]                                     ; $49b9: $cb $9e
	call Call_010_4a9a                               ; $49bb: $cd $9a $4a
	ld   a, $04                                      ; $49be: $3e $04
	jr   jr_010_49e1                                 ; $49c0: $18 $1f

jr_010_49c2:
	ld   a, $04                                      ; $49c2: $3e $04
	ld   [wGameSubstate], a                                  ; $49c4: $ea $a1 $c2
	ld   a, $22                                      ; $49c7: $3e $22
	call PlaySoundEffect                                       ; $49c9: $cd $df $1a
	jr   jr_010_49e9                                 ; $49cc: $18 $1b

jr_010_49ce:
	res  1, [hl]                                     ; $49ce: $cb $8e
	call Call_010_4a9a                               ; $49d0: $cd $9a $4a
	ld   a, $03                                      ; $49d3: $3e $03
	jr   jr_010_49e1                                 ; $49d5: $18 $0a

jr_010_49d7:
	res  2, [hl]                                     ; $49d7: $cb $96
	set  1, [hl]                                     ; $49d9: $cb $ce
	call Call_010_4b1c                               ; $49db: $cd $1c $4b
	ld   a, [$c8b7]                                  ; $49de: $fa $b7 $c8

jr_010_49e1:
	push af                                          ; $49e1: $f5
	call Call_010_4588                               ; $49e2: $cd $88 $45
	pop  af                                          ; $49e5: $f1
	ld   [$c8b2], a                                  ; $49e6: $ea $b2 $c8

jr_010_49e9:
	ret                                              ; $49e9: $c9


Call_010_49ea:
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $49ea: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $49ed: $cd $76 $30
	ld   c, $0e                                      ; $49f0: $0e $0e
	ld   a, [$c8b6]                                  ; $49f2: $fa $b6 $c8
	bit  6, a                                        ; $49f5: $cb $77
	jr   z, jr_010_49fb                              ; $49f7: $28 $02

	ld   c, $1d                                      ; $49f9: $0e $1d

jr_010_49fb:
	ld   a, c                                        ; $49fb: $79
	ld   [$c8b0], a                                  ; $49fc: $ea $b0 $c8
	ld   de, AnimatedSpriteSpecs                                   ; $49ff: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	
	ld   a, [wSaveScreenPopUpTopRowSpriteSpecIdxUsed]                                  ; $4a16: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4a19: $cd $76 $30
	ld   a, $00                                      ; $4a1c: $3e $00
	ld   de, AnimatedSpriteSpecs                                   ; $4a1e: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	
	ld   hl, $c8b6                                   ; $4a35: $21 $b6 $c8
	ld   a, [hl]                                     ; $4a38: $7e
	and  $8f                                         ; $4a39: $e6 $8f
	ld   [hl], a                                     ; $4a3b: $77
	ld   a, [hl]                                     ; $4a3c: $7e
	bit  2, a                                        ; $4a3d: $cb $57
	jr   z, jr_010_4a4e                              ; $4a3f: $28 $0d

	res  2, [hl]                                     ; $4a41: $cb $96
	set  1, [hl]                                     ; $4a43: $cb $ce
	call Call_010_4588                               ; $4a45: $cd $88 $45
	ld   a, [$c8b7]                                  ; $4a48: $fa $b7 $c8
	ld   [$c8b2], a                                  ; $4a4b: $ea $b2 $c8

jr_010_4a4e:
	ld   a, $24                                      ; $4a4e: $3e $24
	call PlaySoundEffect                                       ; $4a50: $cd $df $1a
	ret                                              ; $4a53: $c9


Call_010_4a54:
	ld   hl, $c8b3                                   ; $4a54: $21 $b3 $c8
	ld   a, [hl]                                     ; $4a57: $7e
	xor  $01                                         ; $4a58: $ee $01
	ld   [hl], a                                     ; $4a5a: $77
	jr   nz, jr_010_4a62                             ; $4a5b: $20 $05

	call Call_010_4a66                               ; $4a5d: $cd $66 $4a
	jr   jr_010_4a65                                 ; $4a60: $18 $03

jr_010_4a62:
	call Call_010_4a80                               ; $4a62: $cd $80 $4a

jr_010_4a65:
	ret                                              ; $4a65: $c9


Call_010_4a66:
	ld   a, $14                                      ; $4a66: $3e $14
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4a68: $ea $62 $c3
	ld   a, $01                                      ; $4a6b: $3e $01
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4a6d: $ea $63 $c3
	ld   a, $04                                      ; $4a70: $3e $04
	ld   b, $01                                      ; $4a72: $06 $01
	ld   hl, $7000                                   ; $4a74: $21 $00 $70
	ld   c, $1e                                      ; $4a77: $0e $1e
	ld   de, $65fc                                   ; $4a79: $11 $fc $65
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4a7c: $cd $48 $07
	ret                                              ; $4a7f: $c9


Call_010_4a80:
	ld   a, $14                                      ; $4a80: $3e $14
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4a82: $ea $62 $c3
	ld   a, $01                                      ; $4a85: $3e $01
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4a87: $ea $63 $c3
	ld   a, $04                                      ; $4a8a: $3e $04
	ld   b, $1e                                      ; $4a8c: $06 $1e
	ld   hl, $65fc                                   ; $4a8e: $21 $fc $65
	ld   c, $01                                      ; $4a91: $0e $01
	ld   de, $7000                                   ; $4a93: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4a96: $cd $48 $07
	ret                                              ; $4a99: $c9


Call_010_4a9a:
	ld   c, $81                                      ; $4a9a: $0e $81
	ld   de, $9800                                   ; $4a9c: $11 $00 $98
	ld   a, $03                                      ; $4a9f: $3e $03
	ld   hl, $d3a0                                   ; $4aa1: $21 $a0 $d3
	ld   b, $05                                      ; $4aa4: $06 $05
	call EnqueueHDMATransfer                                       ; $4aa6: $cd $7c $02
	ld   c, $80                                      ; $4aa9: $0e $80
	ld   de, $9800                                   ; $4aab: $11 $00 $98
	ld   a, $03                                      ; $4aae: $3e $03
	ld   hl, $d7a0                                   ; $4ab0: $21 $a0 $d7
	ld   b, $05                                      ; $4ab3: $06 $05
	call EnqueueHDMATransfer                                       ; $4ab5: $cd $7c $02
	ret                                              ; $4ab8: $c9


Call_010_4ab9:
	ld   c, $81                                      ; $4ab9: $0e $81
	ld   de, $9800                                   ; $4abb: $11 $00 $98
	ld   a, $03                                      ; $4abe: $3e $03
	ld   hl, $d240                                   ; $4ac0: $21 $40 $d2
	ld   b, $01                                      ; $4ac3: $06 $01
	call EnqueueHDMATransfer                                       ; $4ac5: $cd $7c $02
	ld   c, $80                                      ; $4ac8: $0e $80
	ld   de, $9800                                   ; $4aca: $11 $00 $98
	ld   a, $03                                      ; $4acd: $3e $03
	ld   hl, $d640                                   ; $4acf: $21 $40 $d6
	ld   b, $01                                      ; $4ad2: $06 $01
	call EnqueueHDMATransfer                                       ; $4ad4: $cd $7c $02
	ret                                              ; $4ad7: $c9


Call_010_4ad8:
	call Call_010_4ab9                               ; $4ad8: $cd $b9 $4a
	ld   c, $81                                      ; $4adb: $0e $81
	ld   de, $9820                                   ; $4add: $11 $20 $98
	ld   a, $03                                      ; $4ae0: $3e $03
	ld   hl, $d360                                   ; $4ae2: $21 $60 $d3
	ld   b, $03                                      ; $4ae5: $06 $03
	call EnqueueHDMATransfer                                       ; $4ae7: $cd $7c $02
	ld   c, $80                                      ; $4aea: $0e $80
	ld   de, $9820                                   ; $4aec: $11 $20 $98
	ld   a, $03                                      ; $4aef: $3e $03
	ld   hl, $d760                                   ; $4af1: $21 $60 $d7
	ld   b, $03                                      ; $4af4: $06 $03
	call EnqueueHDMATransfer                                       ; $4af6: $cd $7c $02
	ret                                              ; $4af9: $c9


Call_010_4afa:
	call Call_010_4ab9                               ; $4afa: $cd $b9 $4a
	ld   c, $81                                      ; $4afd: $0e $81
	ld   de, $9820                                   ; $4aff: $11 $20 $98
	ld   a, $03                                      ; $4b02: $3e $03
	ld   hl, $d320                                   ; $4b04: $21 $20 $d3
	ld   b, $03                                      ; $4b07: $06 $03
	call EnqueueHDMATransfer                                       ; $4b09: $cd $7c $02
	ld   c, $80                                      ; $4b0c: $0e $80
	ld   de, $9820                                   ; $4b0e: $11 $20 $98
	ld   a, $03                                      ; $4b11: $3e $03
	ld   hl, $d720                                   ; $4b13: $21 $20 $d7
	ld   b, $03                                      ; $4b16: $06 $03
	call EnqueueHDMATransfer                                       ; $4b18: $cd $7c $02
	ret                                              ; $4b1b: $c9


Call_010_4b1c:
	call Call_010_4ab9                               ; $4b1c: $cd $b9 $4a
	ld   c, $81                                      ; $4b1f: $0e $81
	ld   de, $9820                                   ; $4b21: $11 $20 $98
	ld   a, $03                                      ; $4b24: $3e $03
	ld   hl, $d2e0                                   ; $4b26: $21 $e0 $d2
	ld   b, $03                                      ; $4b29: $06 $03
	call EnqueueHDMATransfer                                       ; $4b2b: $cd $7c $02
	ld   c, $80                                      ; $4b2e: $0e $80
	ld   de, $9820                                   ; $4b30: $11 $20 $98
	ld   a, $03                                      ; $4b33: $3e $03
	ld   hl, $d6e0                                   ; $4b35: $21 $e0 $d6
	ld   b, $03                                      ; $4b38: $06 $03
	call EnqueueHDMATransfer                                       ; $4b3a: $cd $7c $02
	ret                                              ; $4b3d: $c9


Call_010_4b3e:
	call Call_010_4ab9                               ; $4b3e: $cd $b9 $4a
	ld   c, $81                                      ; $4b41: $0e $81
	ld   de, $9820                                   ; $4b43: $11 $20 $98
	ld   a, $03                                      ; $4b46: $3e $03
	ld   hl, $d2a0                                   ; $4b48: $21 $a0 $d2
	ld   b, $03                                      ; $4b4b: $06 $03
	call EnqueueHDMATransfer                                       ; $4b4d: $cd $7c $02
	ld   c, $80                                      ; $4b50: $0e $80
	ld   de, $9820                                   ; $4b52: $11 $20 $98
	ld   a, $03                                      ; $4b55: $3e $03
	ld   hl, $d6a0                                   ; $4b57: $21 $a0 $d6
	ld   b, $03                                      ; $4b5a: $06 $03
	call EnqueueHDMATransfer                                       ; $4b5c: $cd $7c $02
	ret                                              ; $4b5f: $c9


Call_010_4b60:
	call Call_010_4ab9                               ; $4b60: $cd $b9 $4a
	ld   c, $81                                      ; $4b63: $0e $81
	ld   de, $9820                                   ; $4b65: $11 $20 $98
	ld   a, $03                                      ; $4b68: $3e $03
	ld   hl, $d260                                   ; $4b6a: $21 $60 $d2
	ld   b, $03                                      ; $4b6d: $06 $03
	call EnqueueHDMATransfer                                       ; $4b6f: $cd $7c $02
	ld   c, $80                                      ; $4b72: $0e $80
	ld   de, $9820                                   ; $4b74: $11 $20 $98
	ld   a, $03                                      ; $4b77: $3e $03
	ld   hl, $d660                                   ; $4b79: $21 $60 $d6
	ld   b, $03                                      ; $4b7c: $06 $03
	call EnqueueHDMATransfer                                       ; $4b7e: $cd $7c $02
	ret                                              ; $4b81: $c9


Call_010_4b82:
	ld   a, [$c8b6]                                  ; $4b82: $fa $b6 $c8
	and  $01                                         ; $4b85: $e6 $01
	jr   nz, jr_010_4b8e                             ; $4b87: $20 $05

	call Call_010_4b3e                               ; $4b89: $cd $3e $4b
	jr   jr_010_4b91                                 ; $4b8c: $18 $03

jr_010_4b8e:
	call Call_010_4b60                               ; $4b8e: $cd $60 $4b

jr_010_4b91:
	ret                                              ; $4b91: $c9


LoadAndDisplayAllFileNames:
	call LoadAndDisplay1stFileName                                  ; $4b92
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $4b95

	call LoadAndDisplay2ndFileName                                  ; $4b96
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $4b99

	call LoadAndDisplay3rdFileName                                  ; $4b9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $4b9d
	ret                                                             ; $4b9e


Call_010_4b9f:
	ld   hl, $c8b5                                   ; $4b9f: $21 $b5 $c8
	inc  [hl]                                        ; $4ba2: $34
	ld   a, [$c8b2]                                  ; $4ba3: $fa $b2 $c8
	rst  JumpTable                                         ; $4ba6: $df
	xor  l                                           ; $4ba7: $ad
	ld   c, e                                        ; $4ba8: $4b
	push hl                                          ; $4ba9: $e5
	ld   c, e                                        ; $4baa: $4b
	dec  e                                           ; $4bab: $1d
	ld   c, h                                        ; $4bac: $4c


LoadAndDisplay1stFileName:
	ld   a, [wWramBank]                                  ; $4bad: $fa $93 $c2
	push af                                          ; $4bb0: $f5
	ld   a, $03                                      ; $4bb1: $3e $03
	ld   [wWramBank], a                                  ; $4bb3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bb6: $e0 $70
	ld   a, $00                                      ; $4bb8: $3e $00
	ld   hl, $db00                                   ; $4bba: $21 $00 $db

	M_FarCall PopulateHLwithDayAndFileNameChars
	
	ld   hl, $db00                                   ; $4bd1: $21 $00 $db
	ld   a, [hl]                                     ; $4bd4: $7e
	ld   [$c8b8], a                                  ; $4bd5: $ea $b8 $c8
	call FillAndAdjustRestOfFileName                               ; $4bd8: $cd $55 $4c
	call Display1stFileName                               ; $4bdb: $cd $b9 $4c
	pop  af                                          ; $4bde: $f1
	ld   [wWramBank], a                                  ; $4bdf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4be2: $e0 $70
	ret                                              ; $4be4: $c9


LoadAndDisplay2ndFileName:
	ld   a, [wWramBank]                                  ; $4be5: $fa $93 $c2
	push af                                          ; $4be8: $f5
	ld   a, $03                                      ; $4be9: $3e $03
	ld   [wWramBank], a                                  ; $4beb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bee: $e0 $70
	ld   a, $01                                      ; $4bf0: $3e $01
	ld   hl, $db0f                                   ; $4bf2: $21 $0f $db

	M_FarCall PopulateHLwithDayAndFileNameChars
	
	ld   hl, $db0f                                   ; $4c09: $21 $0f $db
	ld   a, [hl]                                     ; $4c0c: $7e
	ld   [$c8b9], a                                  ; $4c0d: $ea $b9 $c8
	call FillAndAdjustRestOfFileName                               ; $4c10: $cd $55 $4c
	call Display2ndFileName                               ; $4c13: $cd $e3 $4c
	pop  af                                          ; $4c16: $f1
	ld   [wWramBank], a                                  ; $4c17: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c1a: $e0 $70
	ret                                              ; $4c1c: $c9


LoadAndDisplay3rdFileName:
	ld   a, [wWramBank]                                  ; $4c1d: $fa $93 $c2
	push af                                          ; $4c20: $f5
	ld   a, $03                                      ; $4c21: $3e $03
	ld   [wWramBank], a                                  ; $4c23: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c26: $e0 $70
	ld   a, $02                                      ; $4c28: $3e $02
	ld   hl, $db1e                                   ; $4c2a: $21 $1e $db

	M_FarCall PopulateHLwithDayAndFileNameChars
	
	ld   hl, $db1e                                   ; $4c41: $21 $1e $db
	ld   a, [hl]                                     ; $4c44: $7e
	ld   [$c8ba], a                                  ; $4c45: $ea $ba $c8
	call FillAndAdjustRestOfFileName                               ; $4c48: $cd $55 $4c
	call Display3rdFileName                               ; $4c4b: $cd $0d $4d
	pop  af                                          ; $4c4e: $f1
	ld   [wWramBank], a                                  ; $4c4f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c52: $e0 $70
	ret                                              ; $4c54: $c9


; HL - addr of days + filename chars
FillAndAdjustRestOfFileName:
	ld   a, [hl]                                     ; $4c55: $7e
	or   a                                           ; $4c56: $b7
	jr   z, .noFile                              ; $4c57: $28 $29

	call FillUnusedPartsOfFileNameCharsWithSpaces                               ; $4c59: $cd $a7 $4c
	ld   bc, $0007                                   ; $4c5c: $01 $07 $00
	add  hl, bc                                      ; $4c5f: $09
	ld   d, h                                        ; $4c60: $54
	ld   e, l                                        ; $4c61: $5d
if def(VWF)
	ld   bc, 5
else
	ld   bc, $0007                                   ; $4c62: $01 $07 $00
endc
	add  hl, bc                                      ; $4c65: $09
	ld   c, $06                                      ; $4c66: $0e $06

.loop1:
	ld   a, [de]                                     ; $4c68: $1a
	dec  de                                          ; $4c69: $1b
	ld   [hl-], a                                    ; $4c6a: $32
	dec  c                                           ; $4c6b: $0d
	jr   nz, .loop1                             ; $4c6c: $20 $fa

	ld   c, $07                                      ; $4c6e: $0e $07
if def(VWF)
	jp   EnFillAndAdjustFileNameHook
else
	ld   de, $4c96                                   ; $4c70: $11 $96 $4c
endc

.loop2:
	ld   a, [de]                                     ; $4c73: $1a
	dec  de                                          ; $4c74: $1b
	ld   [hl-], a                                    ; $4c75: $32
	dec  c                                           ; $4c76: $0d
	jr   nz, .loop2                             ; $4c77: $20 $fa

	ld   bc, $000d                                   ; $4c79: $01 $0d $00
	add  hl, bc                                      ; $4c7c: $09
	ld   a, $00                                      ; $4c7d: $3e $00
	ld   [hl], $00                                   ; $4c7f: $36 $00
	ret                                              ; $4c81: $c9

.noFile:
if def(VWF)
	ld   de, EnNoSaveData
	ld   c, EnNoSaveData.end-EnNoSaveData
else
	ld   de, Text_NoSaveData                                   ; $4c82: $11 $9a $4c
	ld   c, $0d                                      ; $4c85: $0e $0d
endc

:	ld   a, [de]                                     ; $4c87: $1a
	inc  de                                          ; $4c88: $13
	ld   [hl+], a                                    ; $4c89: $22
	dec  c                                           ; $4c8a: $0d
	jr   nz, :-                             ; $4c8b: $20 $fa

	ret                                              ; $4c8d: $c9


;
	ld   [bc], a                                     ; $4c8e: $02
	nop                                              ; $4c8f: $00


	inc  b                                           ; $4c90: $04


	xor  d                                           ; $4c91: $aa
	inc  b                                           ; $4c92: $04
	call nc, $10fc                                   ; $4c93: $d4 $fc $10


	stop                                             ; $4c96: $10 $00
	ld   [bc], a                                     ; $4c98: $02
	nop                                              ; $4c99: $00


Text_NoSaveData:
	db   $10                                         ; $4c9a: $10


;
	db   $10                                         ; $4c9b: $10
	db   $10                                         ; $4c9c: $10
	ld   e, e                                        ; $4c9d: $5b
	sbc  e                                           ; $4c9e: $9b
	ld   e, l                                        ; $4c9f: $5d
	ld   a, b                                        ; $4ca0: $78
	ld   h, l                                        ; $4ca1: $65
	db   $10                                         ; $4ca2: $10
	db   $10                                         ; $4ca3: $10
	db   $10                                         ; $4ca4: $10
	stop                                             ; $4ca5: $10 $00


; HL - addr of days + filename chars
FillUnusedPartsOfFileNameCharsWithSpaces:
	push hl                                          ; $4ca7: $e5
	ld   c, $08                                      ; $4ca8: $0e $08

.loop1:
	dec  c                                           ; $4caa: $0d
	ld   a, [hl+]                                    ; $4cab: $2a
	or   a                                           ; $4cac: $b7
	jr   nz, .loop1                             ; $4cad: $20 $fb

	dec  hl                                          ; $4caf: $2b
	ld   a, [Text_NoSaveData]                                  ; $4cb0: $fa $9a $4c

.loop2:
	ld   [hl+], a                                    ; $4cb3: $22
	dec  c                                           ; $4cb4: $0d
	jr   nz, .loop2                             ; $4cb5: $20 $fc

	pop  hl                                          ; $4cb7: $e1
	ret                                              ; $4cb8: $c9


Display1stFileName:
	ld   a, [wWramBank]                                  ; $4cb9: $fa $93 $c2
	push af                                          ; $4cbc: $f5
	ld   a, $03                                      ; $4cbd: $3e $03
	ld   [wWramBank], a                                  ; $4cbf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cc2: $e0 $70
	call Call_010_4d37                               ; $4cc4: $cd $37 $4d
	ld   de, $db00                                   ; $4cc7: $11 $00 $db
	call LoadInstantText                                       ; $4cca: $cd $06 $13
	ld   c, $80                                      ; $4ccd: $0e $80
	ld   de, $9580                                   ; $4ccf: $11 $80 $95
	ld   a, $03                                      ; $4cd2: $3e $03
	ld   hl, $d800                                   ; $4cd4: $21 $00 $d8
	ld   b, $18                                      ; $4cd7: $06 $18
	call EnqueueHDMATransfer                                       ; $4cd9: $cd $7c $02
	pop  af                                          ; $4cdc: $f1
	ld   [wWramBank], a                                  ; $4cdd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ce0: $e0 $70
	ret                                              ; $4ce2: $c9


Display2ndFileName:
	ld   a, [wWramBank]                                  ; $4ce3: $fa $93 $c2
	push af                                          ; $4ce6: $f5
	ld   a, $03                                      ; $4ce7: $3e $03
	ld   [wWramBank], a                                  ; $4ce9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cec: $e0 $70
	call Call_010_4d37                               ; $4cee: $cd $37 $4d
	ld   de, $db0f                                   ; $4cf1: $11 $0f $db
	call LoadInstantText                                       ; $4cf4: $cd $06 $13
	ld   c, $81                                      ; $4cf7: $0e $81
	ld   de, $8d60                                   ; $4cf9: $11 $60 $8d
	ld   a, $03                                      ; $4cfc: $3e $03
	ld   hl, $d800                                   ; $4cfe: $21 $00 $d8
	ld   b, $18                                      ; $4d01: $06 $18
	call EnqueueHDMATransfer                                       ; $4d03: $cd $7c $02
	pop  af                                          ; $4d06: $f1
	ld   [wWramBank], a                                  ; $4d07: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d0a: $e0 $70
	ret                                              ; $4d0c: $c9


Display3rdFileName:
	ld   a, [wWramBank]                                  ; $4d0d: $fa $93 $c2
	push af                                          ; $4d10: $f5
	ld   a, $03                                      ; $4d11: $3e $03
	ld   [wWramBank], a                                  ; $4d13: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d16: $e0 $70
	call Call_010_4d37                               ; $4d18: $cd $37 $4d
	ld   de, $db1e                                   ; $4d1b: $11 $1e $db
	call LoadInstantText                                       ; $4d1e: $cd $06 $13
	ld   c, $81                                      ; $4d21: $0e $81
	ld   de, $8f00                                   ; $4d23: $11 $00 $8f
	ld   a, $03                                      ; $4d26: $3e $03
	ld   hl, $d800                                   ; $4d28: $21 $00 $d8
	ld   b, $18                                      ; $4d2b: $06 $18
	call EnqueueHDMATransfer                                       ; $4d2d: $cd $7c $02
	pop  af                                          ; $4d30: $f1
	ld   [wWramBank], a                                  ; $4d31: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d34: $e0 $70
	ret                                              ; $4d36: $c9


Call_010_4d37:
	call InitWideTextBoxDimensions                                       ; $4d37: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $4d3a: $cd $09 $14
	ld   b, $0c                                      ; $4d3d: $06 $0c
	ld   c, $00                                      ; $4d3f: $0e $00
	call SetKanjiTextBoxDimensions                                       ; $4d41: $cd $24 $14
	ld   bc, $0000                                   ; $4d44: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $4d47: $cd $34 $14
if def(VWF)
	call ClearFileNameBoxBeforeLoadingText
else
	ld   hl, $d800                                   ; $4d4a: $21 $00 $d8
endc
	ld   a, $00                                      ; $4d4d: $3e $00
	ret                                              ; $4d4f: $c9


Call_010_4d50:
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4d50: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4d53: $cd $76 $30
	ld   a, $1e                                      ; $4d56: $3e $1e
	ld   [$c8b0], a                                  ; $4d58: $ea $b0 $c8
	ld   de, AnimatedSpriteSpecs                                   ; $4d5b: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $4d72: $c9


Call_010_4d73:
	ld   hl, $c8b8                                   ; $4d73: $21 $b8 $c8
	ld   a, [hl+]                                    ; $4d76: $2a
	or   [hl]                                        ; $4d77: $b6
	inc  hl                                          ; $4d78: $23
	or   [hl]                                        ; $4d79: $b6
	ret                                              ; $4d7a: $c9


	ld   a, h                                        ; $4d7b: $7c
	ld   [$c8bf], a                                  ; $4d7c: $ea $bf $c8
	ld   a, l                                        ; $4d7f: $7d
	ld   [$c8c0], a                                  ; $4d80: $ea $c0 $c8
	ld   a, GS_SAVE_SCREEN                                      ; $4d83: $3e $0e
	ld   [wGameState], a                                  ; $4d85: $ea $a0 $c2
	ld   a, $00                                      ; $4d88: $3e $00
	ld   [wGameSubstate], a                                  ; $4d8a: $ea $a1 $c2
	ret                                              ; $4d8d: $c9


Call_010_4d8e:
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4d8e: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4d91: $cd $76 $30
	ld   a, $12                                      ; $4d94: $3e $12
	ld   de, AnimatedSpriteSpecs                                   ; $4d96: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress

jr_010_4dad:
	call ClearOam                                       ; $4dad: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4db0: $cd $d3 $2e
	call todo_SaveScreenPalettePulseRelated                               ; $4db3: $cd $4f $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db6: $cf
	ld   a, [$c8b3]                                  ; $4db7: $fa $b3 $c8
	or   a                                           ; $4dba: $b7
	jr   z, jr_010_4dad                              ; $4dbb: $28 $f0

	ld   a, [$c8b4]                                  ; $4dbd: $fa $b4 $c8
	cp   $0f                                         ; $4dc0: $fe $0f
	jr   c, jr_010_4dad                              ; $4dc2: $38 $e9

	push af                                          ; $4dc4: $f5
	ld   a, $40                                      ; $4dc5: $3e $40
	ld   [wFarCallAddr], a                                  ; $4dc7: $ea $98 $c2
	ld   a, $45                                      ; $4dca: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $4dcc: $ea $99 $c2
	ld   a, $05                                      ; $4dcf: $3e $05
	ld   [wFarCallBank], a                                  ; $4dd1: $ea $9a $c2
	pop  af                                          ; $4dd4: $f1
	call FarCall                                       ; $4dd5: $cd $62 $09
	dec  a                                           ; $4dd8: $3d
	add  a                                           ; $4dd9: $87
	ld   c, a                                        ; $4dda: $4f
	ld   b, $00                                      ; $4ddb: $06 $00
	ld   hl, $4e65                                   ; $4ddd: $21 $65 $4e
	add  hl, bc                                      ; $4de0: $09
	ld   a, [hl+]                                    ; $4de1: $2a
	ld   h, [hl]                                     ; $4de2: $66
	ld   l, a                                        ; $4de3: $6f
	ld   c, $00                                      ; $4de4: $0e $00
	ld   a, [sCurrDay]                                  ; $4de6: $fa $b0 $af
	inc  a                                           ; $4de9: $3c
	cp   $08                                         ; $4dea: $fe $08
	jr   c, jr_010_4df9                              ; $4dec: $38 $0b

	inc  c                                           ; $4dee: $0c
	cp   $0f                                         ; $4def: $fe $0f
	jr   c, jr_010_4df9                              ; $4df1: $38 $06

	inc  c                                           ; $4df3: $0c
	cp   $16                                         ; $4df4: $fe $16
	jr   c, jr_010_4df9                              ; $4df6: $38 $01

	inc  c                                           ; $4df8: $0c

jr_010_4df9:
	ld   b, $00                                      ; $4df9: $06 $00
	add  hl, bc                                      ; $4dfb: $09
	ld   a, [hl]                                     ; $4dfc: $7e
	call PlaySampledSound                                       ; $4dfd: $cd $64 $1b
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4e00: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e03: $cd $76 $30
	ld   a, $0e                                      ; $4e06: $3e $0e
	ld   de, AnimatedSpriteSpecs                                   ; $4e08: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	
	ld   a, [wSaveScreenPopUpTopRowSpriteSpecIdxUsed]                                  ; $4e1f: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e22: $cd $76 $30
	ld   a, $00                                      ; $4e25: $3e $00
	ld   de, AnimatedSpriteSpecs                                   ; $4e27: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress

jr_010_4e3e:
	call ClearOam                                       ; $4e3e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4e41: $cd $d3 $2e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e44: $cf
	ld   a, [wSaveScreenPopUpBottomRowSpriteSpecIdxUsed]                                  ; $4e45: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e48: $cd $76 $30

	M_FarCall Func_01_4143

	ld   a, b                                        ; $4e5f: $78
	cp   $80                                         ; $4e60: $fe $80
	jr   c, jr_010_4e3e                              ; $4e62: $38 $da

	ret                                              ; $4e64: $c9


	ld   [hl], c                                     ; $4e65: $71
	ld   c, [hl]                                     ; $4e66: $4e
	ld   [hl], l                                     ; $4e67: $75
	ld   c, [hl]                                     ; $4e68: $4e
	ld   a, c                                        ; $4e69: $79
	ld   c, [hl]                                     ; $4e6a: $4e
	ld   a, l                                        ; $4e6b: $7d
	ld   c, [hl]                                     ; $4e6c: $4e
	add  c                                           ; $4e6d: $81
	ld   c, [hl]                                     ; $4e6e: $4e
	add  l                                           ; $4e6f: $85
	ld   c, [hl]                                     ; $4e70: $4e
	ld   h, $27                                      ; $4e71: $26 $27
	db $28, $29

	ld   [hl-], a                                    ; $4e75: $32
	inc  sp                                          ; $4e76: $33
	inc  [hl]                                        ; $4e77: $34
	dec  [hl]                                        ; $4e78: $35
	ld   a, $3f                                      ; $4e79: $3e $3f
	ld   b, b                                        ; $4e7b: $40
	ld   b, c                                        ; $4e7c: $41
	ld   c, d                                        ; $4e7d: $4a
	ld   c, e                                        ; $4e7e: $4b
	ld   c, h                                        ; $4e7f: $4c
	ld   c, l                                        ; $4e80: $4d
	ld   d, [hl]                                     ; $4e81: $56
	ld   d, a                                        ; $4e82: $57
	ld   e, b                                        ; $4e83: $58
	ld   e, c                                        ; $4e84: $59
	ld   h, d                                        ; $4e85: $62
	ld   h, e                                        ; $4e86: $63
	ld   h, h                                        ; $4e87: $64
	ld   h, l                                        ; $4e88: $65


SetSaveScreenState::
	ld   a, h                                        ; $4e89: $7c
	ld   [$c8bb], a                                  ; $4e8a: $ea $bb $c8
	ld   a, l                                        ; $4e8d: $7d
	ld   [$c8bc], a                                  ; $4e8e: $ea $bc $c8
	ld   a, d                                        ; $4e91: $7a
	ld   [wSaveScreenReturnState], a                                  ; $4e92: $ea $bd $c8
	ld   a, e                                        ; $4e95: $7b
	ld   [wSaveScreenReturnSubstate], a                                  ; $4e96: $ea $be $c8
	ld   a, GS_SAVE_SCREEN                                      ; $4e99: $3e $0e
	ld   [wGameState], a                                  ; $4e9b: $ea $a0 $c2
	ld   a, $01                                      ; $4e9e: $3e $01
	ld   [wGameSubstate], a                                  ; $4ea0: $ea $a1 $c2
	ret                                              ; $4ea3: $c9


GameState0f_GameBoyComms::
	ld   a, [wGameSubstate]                                  ; $4ea4: $fa $a1 $c2
	rst  JumpTable                                         ; $4ea7: $df
	or   d                                           ; $4ea8: $b2
	ld   c, [hl]                                     ; $4ea9: $4e
	xor  e                                           ; $4eaa: $ab
	ld   c, a                                        ; $4eab: $4f
	sbc  $4f                                         ; $4eac: $de $4f
	db   $ec                                         ; $4eae: $ec
	ld   c, a                                        ; $4eaf: $4f
	db   $fd                                         ; $4eb0: $fd
	ld   c, a                                        ; $4eb1: $4f
	call TurnOffLCD                                       ; $4eb2: $cd $e3 $08
	ld   a, $00                                      ; $4eb5: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $4eb7: $cd $e0 $1c
	ld   hl, $c905                                   ; $4eba: $21 $05 $c9
	push af                                          ; $4ebd: $f5
	ld   a, $5b                                      ; $4ebe: $3e $5b
	ld   [wFarCallAddr], a                                  ; $4ec0: $ea $98 $c2
	ld   a, $6a                                      ; $4ec3: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $4ec5: $ea $99 $c2
	ld   a, $04                                      ; $4ec8: $3e $04
	ld   [wFarCallBank], a                                  ; $4eca: $ea $9a $c2
	pop  af                                          ; $4ecd: $f1
	call FarCall                                       ; $4ece: $cd $62 $09
	ld   [$c904], a                                  ; $4ed1: $ea $04 $c9
	ld   a, $ff                                      ; $4ed4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4ed6: $ea $0e $c2
	ld   a, $0c                                      ; $4ed9: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4edb: $ea $13 $c2
	ld   a, $04                                      ; $4ede: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4ee0: $ea $14 $c2
	call ClearOam                                       ; $4ee3: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $4ee6: $cd $59 $0b
	ld   a, LCDCF_OBJON|LCDCF_BGON                                      ; $4ee9: $3e $03
	ld   [wLCDC], a                                  ; $4eeb: $ea $03 $c2
	ld   a, $01                                      ; $4eee: $3e $01
	ldh  [rVBK], a                                   ; $4ef0: $e0 $4f
	ld   a, $1d                                      ; $4ef2: $3e $1d
	ld   hl, $9800                                   ; $4ef4: $21 $00 $98
	ld   de, $7d89                                   ; $4ef7: $11 $89 $7d
	call RLEXorCopy                                       ; $4efa: $cd $d2 $09
	ld   a, $1e                                      ; $4efd: $3e $1e
	ld   hl, $9000                                   ; $4eff: $21 $00 $90
	ld   de, $432e                                   ; $4f02: $11 $2e $43
	call RLEXorCopy                                       ; $4f05: $cd $d2 $09
	xor  a                                           ; $4f08: $af
	ldh  [rVBK], a                                   ; $4f09: $e0 $4f
	ld   a, $12                                      ; $4f0b: $3e $12
	ld   hl, $9800                                   ; $4f0d: $21 $00 $98
	ld   de, $7dee                                   ; $4f10: $11 $ee $7d
	call RLEXorCopy                                       ; $4f13: $cd $d2 $09
	ld   a, $1b                                      ; $4f16: $3e $1b
	ld   hl, $9000                                   ; $4f18: $21 $00 $90
	ld   de, $4000                                   ; $4f1b: $11 $00 $40
	call RLEXorCopy                                       ; $4f1e: $cd $d2 $09
	ld   a, [wWramBank]                                  ; $4f21: $fa $93 $c2
	push af                                          ; $4f24: $f5
	ld   a, $03                                      ; $4f25: $3e $03
	ld   [wWramBank], a                                  ; $4f27: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f2a: $e0 $70
	ld   a, $12                                      ; $4f2c: $3e $12
	ld   hl, $d000                                   ; $4f2e: $21 $00 $d0
	ld   de, $7dee                                   ; $4f31: $11 $ee $7d
	call RLEXorCopy                                       ; $4f34: $cd $d2 $09
	ld   a, $1d                                      ; $4f37: $3e $1d
	ld   hl, $d400                                   ; $4f39: $21 $00 $d4
	ld   de, $7d89                                   ; $4f3c: $11 $89 $7d
	call RLEXorCopy                                       ; $4f3f: $cd $d2 $09
	pop  af                                          ; $4f42: $f1
	ld   [wWramBank], a                                  ; $4f43: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f46: $e0 $70
	xor  a                                           ; $4f48: $af
	ld   [wWY], a                                  ; $4f49: $ea $0a $c2
	ld   [wWX], a                                  ; $4f4c: $ea $09 $c2
	ld   [wSCX], a                                  ; $4f4f: $ea $07 $c2
	ld   [wSCY], a                                  ; $4f52: $ea $08 $c2
	ld   [$c915], a                                  ; $4f55: $ea $15 $c9
	ld   [$c941], a                                  ; $4f58: $ea $41 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $4f5b: $cd $c9 $2e
	xor  a                                           ; $4f5e: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4f5f: $ea $62 $c3
	ld   a, $20                                      ; $4f62: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4f64: $ea $63 $c3
	ld   a, $03                                      ; $4f67: $3e $03
	ld   b, $01                                      ; $4f69: $06 $01
	ld   hl, $7000                                   ; $4f6b: $21 $00 $70
	ld   c, $1e                                      ; $4f6e: $0e $1e
	ld   de, $7a0e                                   ; $4f70: $11 $0e $7a
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4f73: $cd $48 $07
	call TurnOnLCD                                       ; $4f76: $cd $09 $09
	ld   a, $07                                      ; $4f79: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4f7b: $cd $e0 $1c
	push af                                          ; $4f7e: $f5
	ld   a, $54                                      ; $4f7f: $3e $54
	ld   [wFarCallAddr], a                                  ; $4f81: $ea $98 $c2
	ld   a, $57                                      ; $4f84: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $4f86: $ea $99 $c2
	ld   a, $11                                      ; $4f89: $3e $11
	ld   [wFarCallBank], a                                  ; $4f8b: $ea $9a $c2
	pop  af                                          ; $4f8e: $f1
	call FarCall                                       ; $4f8f: $cd $62 $09
	ld   a, $1e                                      ; $4f92: $3e $1e
	ld   hl, $7a0e                                   ; $4f94: $21 $0e $7a
	ld   de, wBGPalettes                                   ; $4f97: $11 $de $c2
	ld   bc, $0080                                   ; $4f9a: $01 $80 $00
	call FarMemCopy                                       ; $4f9d: $cd $b2 $09
	ld   bc, $003f                                   ; $4fa0: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4fa3: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $4fa6: $21 $a1 $c2
	inc  [hl]                                        ; $4fa9: $34
	ret                                              ; $4faa: $c9


	call Call_010_50aa                               ; $4fab: $cd $aa $50
	ld   a, [$c902]                                  ; $4fae: $fa $02 $c9
	cp   $6c                                         ; $4fb1: $fe $6c
	jr   nz, jr_010_4fd6                             ; $4fb3: $20 $21

	ld   hl, $c90d                                   ; $4fb5: $21 $0d $c9
	push af                                          ; $4fb8: $f5
	ld   a, $26                                      ; $4fb9: $3e $26
	ld   [wFarCallAddr], a                                  ; $4fbb: $ea $98 $c2
	ld   a, $6b                                      ; $4fbe: $3e $6b
	ld   [wFarCallAddr+1], a                                  ; $4fc0: $ea $99 $c2
	ld   a, $04                                      ; $4fc3: $3e $04
	ld   [wFarCallBank], a                                  ; $4fc5: $ea $9a $c2
	pop  af                                          ; $4fc8: $f1
	call FarCall                                       ; $4fc9: $cd $62 $09
	ld   a, $01                                      ; $4fcc: $3e $01
	ld   [$c941], a                                  ; $4fce: $ea $41 $c9
	call Call_010_504d                               ; $4fd1: $cd $4d $50
	jr   jr_010_4fd9                                 ; $4fd4: $18 $03

jr_010_4fd6:
	call Call_010_506c                               ; $4fd6: $cd $6c $50

jr_010_4fd9:
	ld   hl, wGameSubstate                                   ; $4fd9: $21 $a1 $c2
	inc  [hl]                                        ; $4fdc: $34
	ret                                              ; $4fdd: $c9


	ld   a, [$c941]                                  ; $4fde: $fa $41 $c9
	or   a                                           ; $4fe1: $b7
	jr   z, jr_010_4fe7                              ; $4fe2: $28 $03

	call PlayRandomConnSuccessfulSample                               ; $4fe4: $cd $7d $51

jr_010_4fe7:
	ld   hl, wGameSubstate                                   ; $4fe7: $21 $a1 $c2
	inc  [hl]                                        ; $4fea: $34
	ret                                              ; $4feb: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $4fec: $fa $10 $c2
	and  $03                                         ; $4fef: $e6 $03
	jr   z, jr_010_4ffc                              ; $4ff1: $28 $09

	ld   a, $21                                      ; $4ff3: $3e $21
	call PlaySoundEffect                                       ; $4ff5: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $4ff8: $21 $a1 $c2
	inc  [hl]                                        ; $4ffb: $34

jr_010_4ffc:
	ret                                              ; $4ffc: $c9


	xor  a                                           ; $4ffd: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4ffe: $ea $62 $c3
	ld   a, $20                                      ; $5001: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5003: $ea $63 $c3
	ld   a, $03                                      ; $5006: $3e $03
	ld   b, $1e                                      ; $5008: $06 $1e
	ld   hl, $7a0e                                   ; $500a: $21 $0e $7a
	ld   c, $01                                      ; $500d: $0e $01
	ld   de, $7000                                   ; $500f: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5012: $cd $48 $07
	push af                                          ; $5015: $f5
	ld   a, $6f                                      ; $5016: $3e $6f
	ld   [wFarCallAddr], a                                  ; $5018: $ea $98 $c2
	ld   a, $57                                      ; $501b: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $501d: $ea $99 $c2
	ld   a, $11                                      ; $5020: $3e $11
	ld   [wFarCallBank], a                                  ; $5022: $ea $9a $c2
	pop  af                                          ; $5025: $f1
	call FarCall                                       ; $5026: $cd $62 $09
	ld   a, $01                                      ; $5029: $3e $01
	ld   hl, $7000                                   ; $502b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $502e: $11 $de $c2
	ld   bc, $0080                                   ; $5031: $01 $80 $00
	call FarMemCopy                                       ; $5034: $cd $b2 $09
	ld   bc, $003f                                   ; $5037: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $503a: $cd $aa $04
	call TurnOffLCD                                       ; $503d: $cd $e3 $08
	ld   a, [wGameBoyOrTVCommsReturnState]                                  ; $5040: $fa $3f $c9
	ld   [wGameState], a                                  ; $5043: $ea $a0 $c2
	ld   a, [wGameBoyOrTVCommsReturnSubstate]                                  ; $5046: $fa $40 $c9
	ld   [wGameSubstate], a                                  ; $5049: $ea $a1 $c2
	ret                                              ; $504c: $c9


Call_010_504d:
	ld   c, $80                                      ; $504d: $0e $80
	ld   de, $98c0                                   ; $504f: $11 $c0 $98
	ld   a, $03                                      ; $5052: $3e $03
	ld   hl, $d300                                   ; $5054: $21 $00 $d3
	ld   b, $08                                      ; $5057: $06 $08
	call EnqueueHDMATransfer                                       ; $5059: $cd $7c $02
	ld   c, $81                                      ; $505c: $0e $81
	ld   de, $98c0                                   ; $505e: $11 $c0 $98
	ld   a, $03                                      ; $5061: $3e $03
	ld   hl, $d700                                   ; $5063: $21 $00 $d7
	ld   b, $08                                      ; $5066: $06 $08
	call EnqueueHDMATransfer                                       ; $5068: $cd $7c $02
	ret                                              ; $506b: $c9


Call_010_506c:
	ld   c, $80                                      ; $506c: $0e $80
	ld   de, $9880                                   ; $506e: $11 $80 $98
	ld   a, $03                                      ; $5071: $3e $03
	ld   hl, $d240                                   ; $5073: $21 $40 $d2
	ld   b, $0c                                      ; $5076: $06 $0c
	call EnqueueHDMATransfer                                       ; $5078: $cd $7c $02
	ld   c, $81                                      ; $507b: $0e $81
	ld   de, $9880                                   ; $507d: $11 $80 $98
	ld   a, $03                                      ; $5080: $3e $03
	ld   hl, $d640                                   ; $5082: $21 $40 $d6
	ld   b, $0c                                      ; $5085: $06 $0c
	call EnqueueHDMATransfer                                       ; $5087: $cd $7c $02
	ret                                              ; $508a: $c9


	ld   c, $80                                      ; $508b: $0e $80
	ld   de, $9880                                   ; $508d: $11 $80 $98
	ld   a, $03                                      ; $5090: $3e $03
	ld   hl, $d080                                   ; $5092: $21 $80 $d0
	ld   b, $0c                                      ; $5095: $06 $0c
	call EnqueueHDMATransfer                                       ; $5097: $cd $7c $02
	ld   c, $81                                      ; $509a: $0e $81
	ld   de, $9880                                   ; $509c: $11 $80 $98
	ld   a, $03                                      ; $509f: $3e $03
	ld   hl, $d480                                   ; $50a1: $21 $80 $d4
	ld   b, $0c                                      ; $50a4: $06 $0c
	call EnqueueHDMATransfer                                       ; $50a6: $cd $7c $02
	ret                                              ; $50a9: $c9


Call_010_50aa:
	ld   a, $b8                                      ; $50aa: $3e $b8
	ld   [$c903], a                                  ; $50ac: $ea $03 $c9
	call Call_010_550b                               ; $50af: $cd $0b $55

jr_010_50b2:
	push af                                          ; $50b2: $f5
	ld   a, $00                                      ; $50b3: $3e $00
	ld   [$c8c1], a                                  ; $50b5: $ea $c1 $c8
	pop  af                                          ; $50b8: $f1
	call Call_010_5986                               ; $50b9: $cd $86 $59
	ld   a, [$c782]                                  ; $50bc: $fa $82 $c7
	cp   $ff                                         ; $50bf: $fe $ff
	jp   z, Jump_010_54fc                            ; $50c1: $ca $fc $54

	cp   $6c                                         ; $50c4: $fe $6c
	jr   nz, jr_010_50b2                             ; $50c6: $20 $ea

	ld   a, [$c781]                                  ; $50c8: $fa $81 $c7
	cp   $02                                         ; $50cb: $fe $02
	jp   nz, Jump_010_543a                           ; $50cd: $c2 $3a $54

Jump_010_50d0:
	push af                                          ; $50d0: $f5
	ld   a, $01                                      ; $50d1: $3e $01
	ld   [$c8c1], a                                  ; $50d3: $ea $c1 $c8
	pop  af                                          ; $50d6: $f1
	ld   hl, $c8c2                                   ; $50d7: $21 $c2 $c8
	ld   a, [$c903]                                  ; $50da: $fa $03 $c9
	ld   [hl], a                                     ; $50dd: $77
	ld   b, $01                                      ; $50de: $06 $01
	call Call_010_5a37                               ; $50e0: $cd $37 $5a
	ld   a, [$c782]                                  ; $50e3: $fa $82 $c7
	cp   $6c                                         ; $50e6: $fe $6c
	jp   nz, Jump_010_54fc                           ; $50e8: $c2 $fc $54

	call Call_010_5bfc                               ; $50eb: $cd $fc $5b
	ld   a, [$c782]                                  ; $50ee: $fa $82 $c7
	cp   $6c                                         ; $50f1: $fe $6c
	jp   nz, Jump_010_54fc                           ; $50f3: $c2 $fc $54

	push af                                          ; $50f6: $f5
	ld   a, $02                                      ; $50f7: $3e $02
	ld   [$c8c1], a                                  ; $50f9: $ea $c1 $c8
	pop  af                                          ; $50fc: $f1
	call Call_010_593e                               ; $50fd: $cd $3e $59
	call Call_010_59aa                               ; $5100: $cd $aa $59
	ld   a, [$c782]                                  ; $5103: $fa $82 $c7
	cp   $6c                                         ; $5106: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5108: $c2 $fc $54

	ld   hl, $c8c2                                   ; $510b: $21 $c2 $c8
	ld   b, $01                                      ; $510e: $06 $01
	call Call_010_5b12                               ; $5110: $cd $12 $5b
	ld   a, [$c782]                                  ; $5113: $fa $82 $c7
	cp   $6c                                         ; $5116: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5118: $c2 $fc $54

	call Call_010_5c01                               ; $511b: $cd $01 $5c
	ld   a, [$c782]                                  ; $511e: $fa $82 $c7
	cp   $6c                                         ; $5121: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5123: $c2 $fc $54

	ld   hl, $c903                                   ; $5126: $21 $03 $c9
	ld   a, [$c8c2]                                  ; $5129: $fa $c2 $c8
	cp   [hl]                                        ; $512c: $be
	jp   nz, Jump_010_54fc                           ; $512d: $c2 $fc $54

	push af                                          ; $5130: $f5
	ld   a, $03                                      ; $5131: $3e $03
	ld   [$c8c1], a                                  ; $5133: $ea $c1 $c8
	pop  af                                          ; $5136: $f1
	ld   hl, $c8c2                                   ; $5137: $21 $c2 $c8
	ld   de, $c905                                   ; $513a: $11 $05 $c9
	ld   a, [$c904]                                  ; $513d: $fa $04 $c9
	ld   c, a                                        ; $5140: $4f

jr_010_5141:
	ld   a, [de]                                     ; $5141: $1a
	ld   [hl+], a                                    ; $5142: $22
	inc  de                                          ; $5143: $13
	dec  c                                           ; $5144: $0d
	jr   nz, jr_010_5141                             ; $5145: $20 $fa

	call Call_010_593e                               ; $5147: $cd $3e $59
	call Call_010_59e7                               ; $514a: $cd $e7 $59
	ld   a, [$c782]                                  ; $514d: $fa $82 $c7
	cp   $6c                                         ; $5150: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5152: $c2 $fc $54

	ld   hl, $c8c2                                   ; $5155: $21 $c2 $c8
	ld   a, [$c904]                                  ; $5158: $fa $04 $c9
	ld   b, a                                        ; $515b: $47
	call Call_010_5a37                               ; $515c: $cd $37 $5a
	ld   a, [$c782]                                  ; $515f: $fa $82 $c7
	cp   $6c                                         ; $5162: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5164: $c2 $fc $54

	call Call_010_5bfc                               ; $5167: $cd $fc $5b
	ld   a, [$c782]                                  ; $516a: $fa $82 $c7
	cp   $6c                                         ; $516d: $fe $6c
	ld   hl, $c915                                   ; $516f: $21 $15 $c9
	ld   a, [hl]                                     ; $5172: $7e
	or   a                                           ; $5173: $b7
	jp   nz, Jump_010_54fc                           ; $5174: $c2 $fc $54

	ld   a, $01                                      ; $5177: $3e $01
	ld   [hl], a                                     ; $5179: $77
	jp   Jump_010_543a                               ; $517a: $c3 $3a $54


PlayRandomConnSuccessfulSample:
; Clear ram state of double speed if unset (so sample nybbles sent once)
	ldh  a, [rKEY1]                                                 ; $517d
	bit  7, a                                                       ; $517f
	jr   nz, :+                                                     ; $5181

	xor  a                                                          ; $5183
	ld   [wIsDoubleSpeed], a                                        ; $5184

; Frame counter mod 6 is idx into below table
:	ld   a, [wFrameCounter]                                         ; $5187
	ld   h, a                                                       ; $518a
	ld   l, $06                                                     ; $518b
	call HLequHdivModL                                              ; $518d
	ld   h, $00                                                     ; $5190
	ld   bc, .samples                                               ; $5192
	add  hl, bc                                                     ; $5195

; Play sample idxed in the table
	ld   a, [hl]                                                    ; $5196
	call PlaySampledSound                                           ; $5197

; If we weren't double speed, set it in ram anyway
	ldh  a, [rKEY1]                                                 ; $519a
	bit  7, a                                                       ; $519c
	jr   nz, .done                                                  ; $519e

	ld   a, $01                                                     ; $51a0
	ld   [wIsDoubleSpeed], a                                        ; $51a2

.done:
	ret                                                             ; $51a5

.samples:
	db SMPL_2d
	db SMPL_39
	db SMPL_45
	db SMPL_51
	db SMPL_5d
	db SMPL_69


; H - return state
; L - return substate
SetGameboyCommsState:
; Save return state/substate
	ld   a, h                                                       ; $51ac
	ld   [wGameBoyOrTVCommsReturnState], a                          ; $51ad
	ld   a, l                                                       ; $51b0
	ld   [wGameBoyOrTVCommsReturnSubstate], a                       ; $51b1

; Set gameboy comms state
	ld   a, GS_GAMEBOY_COMMS                                        ; $51b4
	ld   [wGameState], a                                            ; $51b6
	ld   a, $00                                                     ; $51b9
	ld   [wGameSubstate], a                                         ; $51bb
	ret                                                             ; $51be


GameState10_PocketSakuraComms::
	ld   a, [wGameSubstate]                                  ; $51bf: $fa $a1 $c2
	rst  JumpTable                                         ; $51c2: $df
	call wEnterNameNumCharsEntered                                       ; $51c3: $cd $51 $c9
	ld   d, d                                        ; $51c6: $52
	ld   hl, $2f53                                   ; $51c7: $21 $53 $2f
	ld   d, e                                        ; $51ca: $53
	ld   b, b                                        ; $51cb: $40
	ld   d, e                                        ; $51cc: $53
	call TurnOffLCD                                       ; $51cd: $cd $e3 $08
	ld   a, $00                                      ; $51d0: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $51d2: $cd $e0 $1c
	ld   a, $ff                                      ; $51d5: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $51d7: $ea $0e $c2
	ld   a, $0c                                      ; $51da: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $51dc: $ea $13 $c2
	ld   a, $04                                      ; $51df: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $51e1: $ea $14 $c2
	call ClearOam                                       ; $51e4: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $51e7: $cd $59 $0b
	ld   a, LCDCF_OBJON|LCDCF_BGON                                      ; $51ea: $3e $03
	ld   [wLCDC], a                                  ; $51ec: $ea $03 $c2
	ld   a, $01                                      ; $51ef: $3e $01
	ldh  [rVBK], a                                   ; $51f1: $e0 $4f
	ld   a, $1d                                      ; $51f3: $3e $1d
	ld   hl, $9800                                   ; $51f5: $21 $00 $98
	ld   de, $7be3                                   ; $51f8: $11 $e3 $7b
	call RLEXorCopy                                       ; $51fb: $cd $d2 $09
	ld   a, $1e                                      ; $51fe: $3e $1e
	ld   hl, $9000                                   ; $5200: $21 $00 $90
	ld   de, $4e0b                                   ; $5203: $11 $0b $4e
	call RLEXorCopy                                       ; $5206: $cd $d2 $09
	xor  a                                           ; $5209: $af
	ldh  [rVBK], a                                   ; $520a: $e0 $4f
	ld   a, $1d                                      ; $520c: $3e $1d
	ld   hl, $9800                                   ; $520e: $21 $00 $98
	ld   de, $69ad                                   ; $5211: $11 $ad $69
	call RLEXorCopy                                       ; $5214: $cd $d2 $09
	ld   a, $1b                                      ; $5217: $3e $1b
	ld   hl, $9000                                   ; $5219: $21 $00 $90
	ld   de, $4f14                                   ; $521c: $11 $14 $4f
	call RLEXorCopy                                       ; $521f: $cd $d2 $09
	ld   a, [wWramBank]                                  ; $5222: $fa $93 $c2
	push af                                          ; $5225: $f5
	ld   a, $03                                      ; $5226: $3e $03
	ld   [wWramBank], a                                  ; $5228: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $522b: $e0 $70
	ld   a, $1d                                      ; $522d: $3e $1d
	ld   hl, $d000                                   ; $522f: $21 $00 $d0
	ld   de, $69ad                                   ; $5232: $11 $ad $69
	call RLEXorCopy                                       ; $5235: $cd $d2 $09
	ld   a, $1d                                      ; $5238: $3e $1d
	ld   hl, $d400                                   ; $523a: $21 $00 $d4
	ld   de, $7be3                                   ; $523d: $11 $e3 $7b
	call RLEXorCopy                                       ; $5240: $cd $d2 $09
	pop  af                                          ; $5243: $f1
	ld   [wWramBank], a                                  ; $5244: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5247: $e0 $70
	xor  a                                           ; $5249: $af
	ld   [wWY], a                                  ; $524a: $ea $0a $c2
	ld   [wWX], a                                  ; $524d: $ea $09 $c2
	ld   [wSCX], a                                  ; $5250: $ea $07 $c2
	ld   [wSCY], a                                  ; $5253: $ea $08 $c2
	ld   [$c8c2], a                                  ; $5256: $ea $c2 $c8
	ld   [$c941], a                                  ; $5259: $ea $41 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $525c: $cd $c9 $2e
	ld   a, $01                                      ; $525f: $3e $01
	ld   hl, $7000                                   ; $5261: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5264: $11 $de $c2
	ld   bc, $0080                                   ; $5267: $01 $80 $00
	call FarMemCopy                                       ; $526a: $cd $b2 $09
	ld   bc, $003f                                   ; $526d: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5270: $cd $aa $04
	xor  a                                           ; $5273: $af
	ld   a, $08                                      ; $5274: $3e $08
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5276: $ea $62 $c3
	ld   a, $20                                      ; $5279: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $527b: $ea $63 $c3
	ld   a, $03                                      ; $527e: $3e $03
	ld   b, $01                                      ; $5280: $06 $01
	ld   hl, $7000                                   ; $5282: $21 $00 $70
	ld   c, $1e                                      ; $5285: $0e $1e
	ld   de, $7a0e                                   ; $5287: $11 $0e $7a
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $528a: $cd $48 $07
	call TurnOnLCD                                       ; $528d: $cd $09 $09
	ld   a, $07                                      ; $5290: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5292: $cd $e0 $1c
	push af                                          ; $5295: $f5
	ld   a, $54                                      ; $5296: $3e $54
	ld   [wFarCallAddr], a                                  ; $5298: $ea $98 $c2
	ld   a, $57                                      ; $529b: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $529d: $ea $99 $c2
	ld   a, $11                                      ; $52a0: $3e $11
	ld   [wFarCallBank], a                                  ; $52a2: $ea $9a $c2
	pop  af                                          ; $52a5: $f1
	call FarCall                                       ; $52a6: $cd $62 $09
	ld   a, $1e                                      ; $52a9: $3e $1e
	ld   hl, $7a0e                                   ; $52ab: $21 $0e $7a
	ld   de, wBGPalettes                                   ; $52ae: $11 $de $c2
	ld   bc, $0080                                   ; $52b1: $01 $80 $00
	call FarMemCopy                                       ; $52b4: $cd $b2 $09
	ld   bc, $003f                                   ; $52b7: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $52ba: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $52bd: $21 $a1 $c2
	inc  [hl]                                        ; $52c0: $34
	ldh  a, [rKEY1]                                  ; $52c1: $f0 $4d
	bit  7, a                                        ; $52c3: $cb $7f
	call nz, ToggleDoubleSpeedMode                           ; $52c5: $c4 $f4 $53
	ret                                              ; $52c8: $c9


	call Call_010_540c                               ; $52c9: $cd $0c $54
	ld   a, [$c902]                                  ; $52cc: $fa $02 $c9
	cp   $6c                                         ; $52cf: $fe $6c
	jr   nz, jr_010_5319                             ; $52d1: $20 $46

	ld   a, [$c903]                                  ; $52d3: $fa $03 $c9
	cp   $43                                         ; $52d6: $fe $43
	jr   z, jr_010_52f3                              ; $52d8: $28 $19

	ld   hl, $c8c2                                   ; $52da: $21 $c2 $c8
	push af                                          ; $52dd: $f5
	ld   a, $90                                      ; $52de: $3e $90
	ld   [wFarCallAddr], a                                  ; $52e0: $ea $98 $c2
	ld   a, $6b                                      ; $52e3: $3e $6b
	ld   [wFarCallAddr+1], a                                  ; $52e5: $ea $99 $c2
	ld   a, $04                                      ; $52e8: $3e $04
	ld   [wFarCallBank], a                                  ; $52ea: $ea $9a $c2
	pop  af                                          ; $52ed: $f1
	call FarCall                                       ; $52ee: $cd $62 $09
	jr   jr_010_530f                                 ; $52f1: $18 $1c

jr_010_52f3:
	call Call_010_5550                               ; $52f3: $cd $50 $55
	jr   nz, jr_010_5319                             ; $52f6: $20 $21

	ld   hl, $c8ca                                   ; $52f8: $21 $ca $c8

	M_FarCall GiveIRBasedRewards

jr_010_530f:
	ld   a, $01                                      ; $530f: $3e $01
	ld   [$c941], a                                  ; $5311: $ea $41 $c9
	call Call_010_5397                               ; $5314: $cd $97 $53
	jr   jr_010_531c                                 ; $5317: $18 $03

jr_010_5319:
	call Call_010_53b6                               ; $5319: $cd $b6 $53

jr_010_531c:
	ld   hl, wGameSubstate                                   ; $531c: $21 $a1 $c2
	inc  [hl]                                        ; $531f: $34
	ret                                              ; $5320: $c9


	ld   a, [$c941]                                  ; $5321: $fa $41 $c9
	or   a                                           ; $5324: $b7
	jr   z, jr_010_532a                              ; $5325: $28 $03

	call PlayRandomConnSuccessfulSample                               ; $5327: $cd $7d $51

jr_010_532a:
	ld   hl, wGameSubstate                                   ; $532a: $21 $a1 $c2
	inc  [hl]                                        ; $532d: $34
	ret                                              ; $532e: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $532f: $fa $10 $c2
	and  $03                                         ; $5332: $e6 $03
	jr   z, jr_010_533f                              ; $5334: $28 $09

	ld   a, $21                                      ; $5336: $3e $21
	call PlaySoundEffect                                       ; $5338: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $533b: $21 $a1 $c2
	inc  [hl]                                        ; $533e: $34

jr_010_533f:
	ret                                              ; $533f: $c9


	ldh  a, [rKEY1]                                  ; $5340: $f0 $4d
	bit  7, a                                        ; $5342: $cb $7f
	call z, ToggleDoubleSpeedMode                            ; $5344: $cc $f4 $53
	xor  a                                           ; $5347: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5348: $ea $62 $c3
	ld   a, $40                                      ; $534b: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $534d: $ea $63 $c3
	ld   a, $03                                      ; $5350: $3e $03
	ld   b, $1e                                      ; $5352: $06 $1e
	ld   hl, $7a0e                                   ; $5354: $21 $0e $7a
	ld   c, $01                                      ; $5357: $0e $01
	ld   de, $7000                                   ; $5359: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $535c: $cd $48 $07
	push af                                          ; $535f: $f5
	ld   a, $6f                                      ; $5360: $3e $6f
	ld   [wFarCallAddr], a                                  ; $5362: $ea $98 $c2
	ld   a, $57                                      ; $5365: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $5367: $ea $99 $c2
	ld   a, $11                                      ; $536a: $3e $11
	ld   [wFarCallBank], a                                  ; $536c: $ea $9a $c2
	pop  af                                          ; $536f: $f1
	call FarCall                                       ; $5370: $cd $62 $09
	ld   a, $01                                      ; $5373: $3e $01
	ld   hl, $7000                                   ; $5375: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5378: $11 $de $c2
	ld   bc, $0080                                   ; $537b: $01 $80 $00
	call FarMemCopy                                       ; $537e: $cd $b2 $09
	ld   bc, $003f                                   ; $5381: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5384: $cd $aa $04
	call TurnOffLCD                                       ; $5387: $cd $e3 $08
	ld   a, [$c942]                                  ; $538a: $fa $42 $c9
	ld   [wGameState], a                                  ; $538d: $ea $a0 $c2
	ld   a, [$c943]                                  ; $5390: $fa $43 $c9
	ld   [wGameSubstate], a                                  ; $5393: $ea $a1 $c2
	ret                                              ; $5396: $c9


Call_010_5397:
	ld   c, $80                                      ; $5397: $0e $80
	ld   de, $98a0                                   ; $5399: $11 $a0 $98
	ld   a, $03                                      ; $539c: $3e $03
	ld   hl, $d300                                   ; $539e: $21 $00 $d3
	ld   b, $08                                      ; $53a1: $06 $08
	call EnqueueHDMATransfer                                       ; $53a3: $cd $7c $02
	ld   c, $81                                      ; $53a6: $0e $81
	ld   de, $98a0                                   ; $53a8: $11 $a0 $98
	ld   a, $03                                      ; $53ab: $3e $03
	ld   hl, $d700                                   ; $53ad: $21 $00 $d7
	ld   b, $08                                      ; $53b0: $06 $08
	call EnqueueHDMATransfer                                       ; $53b2: $cd $7c $02
	ret                                              ; $53b5: $c9


Call_010_53b6:
	ld   c, $80                                      ; $53b6: $0e $80
	ld   de, $98a0                                   ; $53b8: $11 $a0 $98
	ld   a, $03                                      ; $53bb: $3e $03
	ld   hl, $d240                                   ; $53bd: $21 $40 $d2
	ld   b, $0c                                      ; $53c0: $06 $0c
	call EnqueueHDMATransfer                                       ; $53c2: $cd $7c $02
	ld   c, $81                                      ; $53c5: $0e $81
	ld   de, $98a0                                   ; $53c7: $11 $a0 $98
	ld   a, $03                                      ; $53ca: $3e $03
	ld   hl, $d640                                   ; $53cc: $21 $40 $d6
	ld   b, $0c                                      ; $53cf: $06 $0c
	call EnqueueHDMATransfer                                       ; $53d1: $cd $7c $02
	ret                                              ; $53d4: $c9


	ld   c, $80                                      ; $53d5: $0e $80
	ld   de, $98a0                                   ; $53d7: $11 $a0 $98
	ld   a, $03                                      ; $53da: $3e $03
	ld   hl, $d0a0                                   ; $53dc: $21 $a0 $d0
	ld   b, $0c                                      ; $53df: $06 $0c
	call EnqueueHDMATransfer                                       ; $53e1: $cd $7c $02
	ld   c, $81                                      ; $53e4: $0e $81
	ld   de, $98a0                                   ; $53e6: $11 $a0 $98
	ld   a, $03                                      ; $53e9: $3e $03
	ld   hl, $d4a0                                   ; $53eb: $21 $a0 $d4
	ld   b, $0c                                      ; $53ee: $06 $0c
	call EnqueueHDMATransfer                                       ; $53f0: $cd $7c $02
	ret                                              ; $53f3: $c9


ToggleDoubleSpeedMode::
; Preserve IE, then unset double speed mode
	ldh  a, [rIE]                                                   ; $53f4
	push af                                                         ; $53f6

	ld   a, $01                                                     ; $53f7
	ldh  [rKEY1], a                                                 ; $53f9

; Disable ints, hold inputs high, then stop
	xor  a                                                          ; $53fb
	ldh  [rIF], a                                                   ; $53fc
	ldh  [rIE], a                                                   ; $53fe
	ldh  a, [rP1]                                                   ; $5400
	or   $30                                                        ; $5402
	ldh  [rP1], a                                                   ; $5404

	stop                                                            ; $5406
	
; Once double speed done, restore IE
	pop  af                                                         ; $5408
	ldh  [rIE], a                                                   ; $5409
	ret                                                             ; $540b


Call_010_540c:
	ld   a, $b7                                      ; $540c: $3e $b7
	ld   [$c903], a                                  ; $540e: $ea $03 $c9
	ld   a, $3d                                      ; $5411: $3e $3d
	ld   [$c904], a                                  ; $5413: $ea $04 $c9
	call Call_010_550b                               ; $5416: $cd $0b $55
	push af                                          ; $5419: $f5
	ld   a, $00                                      ; $541a: $3e $00
	ld   [$c8c1], a                                  ; $541c: $ea $c1 $c8
	pop  af                                          ; $541f: $f1
	ld   bc, $012c                                   ; $5420: $01 $2c $01

jr_010_5423:
	push bc                                          ; $5423: $c5
	call Call_010_593e                               ; $5424: $cd $3e $59
	call Call_010_59aa                               ; $5427: $cd $aa $59
	pop  bc                                          ; $542a: $c1
	ld   a, [$c782]                                  ; $542b: $fa $82 $c7
	cp   $6c                                         ; $542e: $fe $6c
	jr   z, jr_010_543a                              ; $5430: $28 $08

	dec  bc                                          ; $5432: $0b
	ld   a, b                                        ; $5433: $78
	or   c                                           ; $5434: $b1
	jr   nz, jr_010_5423                             ; $5435: $20 $ec

	jp   Jump_010_54f7                               ; $5437: $c3 $f7 $54


Jump_010_543a:
jr_010_543a:
	push af                                          ; $543a: $f5
	ld   a, $04                                      ; $543b: $3e $04
	ld   [$c8c1], a                                  ; $543d: $ea $c1 $c8
	pop  af                                          ; $5440: $f1
	ld   hl, $c8c2                                   ; $5441: $21 $c2 $c8
	ld   b, $01                                      ; $5444: $06 $01
	call Call_010_5b12                               ; $5446: $cd $12 $5b
	ld   a, [$c782]                                  ; $5449: $fa $82 $c7
	cp   $6c                                         ; $544c: $fe $6c
	jp   nz, Jump_010_54fc                           ; $544e: $c2 $fc $54

	push af                                          ; $5451: $f5
	ld   a, $4a                                      ; $5452: $3e $4a
	ld   [$c8c1], a                                  ; $5454: $ea $c1 $c8
	pop  af                                          ; $5457: $f1
	call Call_010_5c01                               ; $5458: $cd $01 $5c
	ld   a, [$c782]                                  ; $545b: $fa $82 $c7
	cp   $6c                                         ; $545e: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5460: $c2 $fc $54

	ld   hl, $c903                                   ; $5463: $21 $03 $c9
	ld   a, [$c8c2]                                  ; $5466: $fa $c2 $c8
	cp   $43                                         ; $5469: $fe $43
	jp   z, Jump_010_5522                            ; $546b: $ca $22 $55

	cp   [hl]                                        ; $546e: $be
	jp   nz, Jump_010_54f7                           ; $546f: $c2 $f7 $54

	push af                                          ; $5472: $f5
	ld   a, $05                                      ; $5473: $3e $05
	ld   [$c8c1], a                                  ; $5475: $ea $c1 $c8
	pop  af                                          ; $5478: $f1
	call Call_010_593e                               ; $5479: $cd $3e $59
	call Call_010_59e7                               ; $547c: $cd $e7 $59
	ld   a, [$c782]                                  ; $547f: $fa $82 $c7
	cp   $6c                                         ; $5482: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5484: $c2 $fc $54

	ld   hl, $c8c2                                   ; $5487: $21 $c2 $c8
	ld   b, $01                                      ; $548a: $06 $01
	call Call_010_5a37                               ; $548c: $cd $37 $5a
	ld   a, [$c782]                                  ; $548f: $fa $82 $c7
	cp   $6c                                         ; $5492: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5494: $c2 $fc $54

	call Call_010_5bfc                               ; $5497: $cd $fc $5b
	ld   a, [$c782]                                  ; $549a: $fa $82 $c7
	cp   $6c                                         ; $549d: $fe $6c
	jp   nz, Jump_010_54fc                           ; $549f: $c2 $fc $54

	push af                                          ; $54a2: $f5
	ld   a, $06                                      ; $54a3: $3e $06
	ld   [$c8c1], a                                  ; $54a5: $ea $c1 $c8
	pop  af                                          ; $54a8: $f1
	call Call_010_593e                               ; $54a9: $cd $3e $59
	call Call_010_59aa                               ; $54ac: $cd $aa $59
	ld   a, [$c782]                                  ; $54af: $fa $82 $c7
	cp   $6c                                         ; $54b2: $fe $6c
	jp   nz, Jump_010_54fc                           ; $54b4: $c2 $fc $54

	ld   hl, $c8c2                                   ; $54b7: $21 $c2 $c8
	ld   a, [$c904]                                  ; $54ba: $fa $04 $c9
	ld   b, a                                        ; $54bd: $47
	call Call_010_5b12                               ; $54be: $cd $12 $5b
	ld   a, [$c782]                                  ; $54c1: $fa $82 $c7
	cp   $6c                                         ; $54c4: $fe $6c
	jp   nz, Jump_010_54fc                           ; $54c6: $c2 $fc $54

	call Call_010_5c01                               ; $54c9: $cd $01 $5c
	ld   a, [$c782]                                  ; $54cc: $fa $82 $c7
	cp   $6c                                         ; $54cf: $fe $6c
	ld   a, [$c903]                                  ; $54d1: $fa $03 $c9
	cp   $b7                                         ; $54d4: $fe $b7
	jp   z, Jump_010_54fc                            ; $54d6: $ca $fc $54

	ld   hl, $c8c2                                   ; $54d9: $21 $c2 $c8
	ld   de, $c90d                                   ; $54dc: $11 $0d $c9
	ld   a, [$c904]                                  ; $54df: $fa $04 $c9
	ld   c, a                                        ; $54e2: $4f

jr_010_54e3:
	ld   a, [hl+]                                    ; $54e3: $2a
	ld   [de], a                                     ; $54e4: $12
	inc  de                                          ; $54e5: $13
	dec  c                                           ; $54e6: $0d
	jr   nz, jr_010_54e3                             ; $54e7: $20 $fa

	ld   hl, $c915                                   ; $54e9: $21 $15 $c9
	ld   a, [hl]                                     ; $54ec: $7e
	or   a                                           ; $54ed: $b7
	jp   nz, Jump_010_54fc                           ; $54ee: $c2 $fc $54

	ld   a, $01                                      ; $54f1: $3e $01
	ld   [hl], a                                     ; $54f3: $77
	jp   Jump_010_50d0                               ; $54f4: $c3 $d0 $50


Jump_010_54f7:
	ld   a, $08                                      ; $54f7: $3e $08
	ld   [$c782], a                                  ; $54f9: $ea $82 $c7

Jump_010_54fc:
	ld   a, [$c782]                                  ; $54fc: $fa $82 $c7
	ld   [$c902], a                                  ; $54ff: $ea $02 $c9
	call Call_010_5949                               ; $5502: $cd $49 $59
	ld   a, $01                                      ; $5505: $3e $01
	ldh  [rIE], a                                    ; $5507: $e0 $ff
	ei                                               ; $5509: $fb
	ret                                              ; $550a: $c9


Call_010_550b:
	ld   a, $3c                                      ; $550b: $3e $3c
	ld   [wRandomNumRange], a                                  ; $550d: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $5510: $cd $70 $0c
	di                                               ; $5513: $f3
	call Call_010_5906                               ; $5514: $cd $06 $59
	call Call_010_551b                               ; $5517: $cd $1b $55
	ret                                              ; $551a: $c9


Call_010_551b:
	call GetRandomNumInPreSpecifiedRange                                       ; $551b: $cd $10 $0d

jr_010_551e:
	dec  a                                           ; $551e: $3d
	jr   nz, jr_010_551e                             ; $551f: $20 $fd

	ret                                              ; $5521: $c9


Jump_010_5522:
	ld   [$c903], a                                  ; $5522: $ea $03 $c9
	push af                                          ; $5525: $f5
	ld   a, $06                                      ; $5526: $3e $06
	ld   [$c8c1], a                                  ; $5528: $ea $c1 $c8
	pop  af                                          ; $552b: $f1
	call Call_010_593e                               ; $552c: $cd $3e $59
	call Call_010_59aa                               ; $552f: $cd $aa $59
	ld   a, [$c782]                                  ; $5532: $fa $82 $c7
	cp   $6c                                         ; $5535: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5537: $c2 $fc $54

	ld   hl, $c8c2                                   ; $553a: $21 $c2 $c8
	ld   b, $0c                                      ; $553d: $06 $0c
	call Call_010_5b12                               ; $553f: $cd $12 $5b
	ld   a, [$c782]                                  ; $5542: $fa $82 $c7
	cp   $6c                                         ; $5545: $fe $6c
	jp   nz, Jump_010_54fc                           ; $5547: $c2 $fc $54

	call Call_010_5c01                               ; $554a: $cd $01 $5c
	jp   Jump_010_54fc                               ; $554d: $c3 $fc $54


Call_010_5550:
	ld   hl, $c8c2                                   ; $5550: $21 $c2 $c8
	ld   de, $5566                                   ; $5553: $11 $66 $55
	ld   c, $05                                      ; $5556: $0e $05

jr_010_5558:
	ld   a, [de]                                     ; $5558: $1a
	cp   [hl]                                        ; $5559: $be
	jr   nz, jr_010_5563                             ; $555a: $20 $07

	inc  de                                          ; $555c: $13
	inc  hl                                          ; $555d: $23
	dec  c                                           ; $555e: $0d
	jr   nz, jr_010_5558                             ; $555f: $20 $f7

	xor  a                                           ; $5561: $af
	ret                                              ; $5562: $c9


jr_010_5563:
	or   $ff                                         ; $5563: $f6 $ff
	ret                                              ; $5565: $c9


	ld   b, e                                        ; $5566: $43
	ld   d, d                                        ; $5567: $52
	ld   c, d                                        ; $5568: $4a
	ld   b, h                                        ; $5569: $44
	ld   c, l                                        ; $556a: $4d

SetPocketSakuraCommsState:
	ld   a, h                                        ; $556b: $7c
	ld   [$c942], a                                  ; $556c: $ea $42 $c9
	ld   a, l                                        ; $556f: $7d
	ld   [$c943], a                                  ; $5570: $ea $43 $c9
	ld   a, GS_POCKET_SAKURA_COMMS                                      ; $5573: $3e $10
	ld   [wGameState], a                                  ; $5575: $ea $a0 $c2
	ld   a, $00                                      ; $5578: $3e $00
	ld   [wGameSubstate], a                                  ; $557a: $ea $a1 $c2
	ret                                              ; $557d: $c9


GameState11_TVComms::
	ld   a, [wGameSubstate]                                         ; $557e
	rst  JumpTable                                                  ; $5581
	dw TVCommsSubstate0_Init
	dw TVCommsSubstate1_CheckConnection
	dw TVCommsSubstate2_Main
	dw TVCommsSubstate3_DisplaySuccessfulBox
	dw TVCommsSubstate4_PlaySuccessfulSample
	dw TVCommsSubstate5_FadeOutWhenPrompted
	dw TVCommsSubstate6_FadeOut


TVCommsSubstate0_Init:
;
	ld   hl, $c8c2                                   ; $5590: $21 $c2 $c8
	ld   c, $14                                      ; $5593: $0e $14
	xor  a                                           ; $5595: $af

:	ld   [hl+], a                                    ; $5596: $22
	dec  c                                           ; $5597: $0d
	jr   nz, :-                             ; $5598: $20 $fc

; Turn off LCD, and mute volume
	call TurnOffLCD                                                 ; $559a
	ld   a, $00                                                     ; $559d
	call SafeSetAudVolForMultipleChannels                           ; $559f

; Set sticky buttons parameters
	ld   a, $ff                                                     ; $55a2
	ld   [wInGameInputsEnabled], a                                  ; $55a4
	ld   a, $0c                                                     ; $55a7
	ld   [wBaseInitialStickyCounter], a                             ; $55a9
	ld   a, $04                                                     ; $55ac
	ld   [wBaseRepeatedStickyCounter], a                            ; $55ae

; Clear oam, display regs, and turn off LCD
	call ClearOam                                                   ; $55b1
	call ClearDisplayRegsAllowVBlankInt                             ; $55b4

	ld   a, LCDCF_OBJON|LCDCF_BGON                                  ; $55b7
	ld   [wLCDC], a                                                 ; $55b9

; Load tile attr, map, then tile data
	ld   a, $01                                                     ; $55bc
	ldh  [rVBK], a                                                  ; $55be
	ld   a, BANK(RLEXorTileAttr_TVComms)                            ; $55c0
	ld   hl, _SCRN0                                                 ; $55c2
	ld   de, RLEXorTileAttr_TVComms                                 ; $55c5
	call RLEXorCopy                                                 ; $55c8

	xor  a                                                          ; $55cb
	ldh  [rVBK], a                                                  ; $55cc
	ld   a, BANK(RleXorTileMap_TVComms)                             ; $55ce
	ld   hl, _SCRN0                                                 ; $55d0
	ld   de, RleXorTileMap_TVComms                                  ; $55d3
	call RLEXorCopy                                                 ; $55d6

	ld   a, BANK(RLEXorTileData_TVComms)                            ; $55d9
	ld   hl, _VRAM+$800                                             ; $55db
	ld   de, RLEXorTileData_TVComms                                 ; $55de
	call RLEXorCopy                                                 ; $55e1

; Preserve ram bank, and set it to the bank of our buffer space
	ld   a, [wWramBank]                                             ; $55e4
	push af                                                         ; $55e7

	ld   a, BANK(wTVCommsTileMapBuffer)                             ; $55e8
	ld   [wWramBank], a                                             ; $55ea
	ldh  [rSVBK], a                                                 ; $55ed

; Decompress tile map and attr into ram as well
	ld   a, BANK(RleXorTileMap_TVComms)                             ; $55ef
	ld   hl, wTVCommsTileMapBuffer                                  ; $55f1
	ld   de, RleXorTileMap_TVComms                                  ; $55f4
	call RLEXorCopy                                                 ; $55f7

	ld   a, BANK(RLEXorTileAttr_TVComms)                            ; $55fa
	ld   hl, wTVCommsTileAttrBuffer                                 ; $55fc
	ld   de, RLEXorTileAttr_TVComms                                 ; $55ff
	call RLEXorCopy                                                 ; $5602

; Restore ram bank
	pop  af                                                         ; $5605
	ld   [wWramBank], a                                             ; $5606
	ldh  [rSVBK], a                                                 ; $5609

;
	xor  a                                           ; $560b: $af
	ld   [wWY], a                                  ; $560c: $ea $0a $c2
	ld   [wWX], a                                  ; $560f: $ea $09 $c2
	ld   [wSCX], a                                  ; $5612: $ea $07 $c2
	ld   [wSCY], a                                  ; $5615: $ea $08 $c2
	ld   [$c941], a                                  ; $5618: $ea $41 $c9

	call ClearBaseAnimSpriteSpecDetails                                       ; $561b: $cd $c9 $2e

; Load color comps for all BG colors
	xor  a                                                          ; $561e
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $561f
	ld   a, NUM_COLORS                                              ; $5622
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $5624

; Fade from white palettes at 1/8th speed
	ld   a, $03                                                     ; $5627
	ld   b, BANK(Palettes_AllWhite)                                 ; $5629
	ld   hl, Palettes_AllWhite                                      ; $562b
	ld   c, BANK(BGPalettes_InfraComms)                             ; $562e
	ld   de, BGPalettes_InfraComms                                  ; $5630
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $5633

; Turn on LCD, max out vol, then fade until done
	call TurnOnLCD                                                  ; $5636
	ld   a, $07                                                     ; $5639
	call SafeSetAudVolForMultipleChannels                           ; $563b

	M_FarCall FadeBGpals8timesHandlingAnimatedSpriteSpecs
	
; Set updated palettes
	ld   a, BANK(BGPalettes_InfraComms)                             ; $5652
	ld   hl, BGPalettes_InfraComms                                  ; $5654
	ld   de, wBGPalettes                                            ; $5657
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $565a
	call FarMemCopy                                                 ; $565d

	ldbc $00, $3f                                                   ; $5660
	call SetBGandOBJPaletteRangesToUpdate                           ; $5663

; To next substate
	ld   hl, wGameSubstate                                          ; $5666
	inc  [hl]                                                       ; $5669

; Unset double speed mode
	ldh  a, [rKEY1]                                                 ; $566a
	bit  7, a                                                       ; $566c
	call nz, ToggleDoubleSpeedMode                                  ; $566e
	ret                                                             ; $5671


TVCommsSubstate1_CheckConnection:
; Check if TV adapter is connected and branch based on success
	di                                                              ; $5672
	call CheckIfTVAdapterConnected                                  ; $5673
	ei                                                              ; $5676

	or   a                                                          ; $5677
	jr   z, .nextSubstate                                           ; $5678

; Display unsuccessful and go to "fade out when pressed" state
	call DisplayTVCommsConnUnsuccessfulBox                          ; $567a

	ld   a, $05                                                     ; $567d
	ld   [wGameSubstate], a                                         ; $567f
	jr   .done                                                      ; $5682

.nextSubstate:
; Display that we're waiting for reception, then go to main substate
	call DisplayTVCommsWaitingConnText                              ; $5684

	ld   hl, wGameSubstate                                          ; $5687
	inc  [hl]                                                       ; $568a

.done:
	ret                                                             ; $568b


TVCommsSubstate2_Main:
	di                                                              ; $568c

.checkBarcode:
; When this func returns successful, give rewards accrued
	call ScanBarcode                                                ; $568d
	or   a                                                          ; $5690
	jr   z, .giveRewards                                            ; $5691

; Update input, breaking out of loop if B pressed
	call PollInput                                                  ; $5693
	ld   a, [wInGameButtonsPressed]                                 ; $5696
	and  PADF_B                                                     ; $5699
	jr   z, .checkBarcode                                           ; $569b

; Go to fade out substate, and play sound
	ld   a, $06                                                     ; $569d
	ld   [wGameSubstate], a                                         ; $569f

	ld   a, SE_22                                                   ; $56a2
	call PlaySoundEffect                                            ; $56a4
	jr   .done                                                      ; $56a7

.giveRewards:
; This will set flags, and add pts
	ld   hl, wTVAdapterRewardsStruct                                ; $56a9
	M_FarCall GiveIRBasedRewards

; To next substate. going down success route, then end route
	ld   hl, wGameSubstate                                          ; $56c0
	inc  [hl]                                                       ; $56c3

.done:
	ei                                                              ; $56c4
	ret                                                             ; $56c5


TVCommsSubstate3_DisplaySuccessfulBox:
	ld   a, $01                                      ; $56c6: $3e $01
	ld   [$c941], a                                  ; $56c8: $ea $41 $c9
	call DisplayTVCommsConnSuccessfulBox                               ; $56cb: $cd $43 $57

	ld   hl, wGameSubstate                                   ; $56ce: $21 $a1 $c2
	inc  [hl]                                        ; $56d1: $34
	ret                                              ; $56d2: $c9


TVCommsSubstate4_PlaySuccessfulSample:
; Play successful sound, then go to next substate (exit when prompted)
	call PlayRandomConnSuccessfulSample                             ; $56d3

	ld   hl, wGameSubstate                                          ; $56d6
	inc  [hl]                                                       ; $56d9
	ret                                                             ; $56da


TVCommsSubstate5_FadeOutWhenPrompted:
; When B or A is pressed..
	ld   a, [wInGameButtonsPressed]                                 ; $56db
	and  PADF_B|PADF_A                                              ; $56de
	jr   z, .done                                                   ; $56e0

; Play sound, and go to the exit substate
	ld   a, SE_21                                                   ; $56e2
	call PlaySoundEffect                                            ; $56e4

	ld   hl, wGameSubstate                                          ; $56e7
	inc  [hl]                                                       ; $56ea

.done:
	ret                                                             ; $56eb


TVCommsSubstate6_FadeOut:
; Set double speed mode again
	ldh  a, [rKEY1]                                                 ; $56ec
	bit  7, a                                                       ; $56ee
	call z, ToggleDoubleSpeedMode                                   ; $56f0

; Load color comp data for all BG palettes
	xor  a                                                          ; $56f3
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $56f4
	ld   a, NUM_COLORS                                              ; $56f7
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $56f9

; Load white palettes and fade to them
	ld   a, $03                                                     ; $56fc
	ld   b, BANK(BGPalettes_InfraComms)                             ; $56fe
	ld   hl, BGPalettes_InfraComms                                  ; $5700
	ld   c, BANK(Palettes_AllWhite)                                 ; $5703
	ld   de, Palettes_AllWhite                                      ; $5705
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $5708

	M_FarCall FadeBGpalsToWhiteAndAudVol8timesHandlingAnimatedSpriteSpecs

; Set white palettes and update hw pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $571f
	ld   hl, Palettes_AllWhite                                      ; $5721
	ld   de, wBGPalettes                                            ; $5724
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $5727
	call FarMemCopy                                                 ; $572a

	ldbc $00, $3f                                                   ; $572d
	call SetBGandOBJPaletteRangesToUpdate                           ; $5730

; Turn off LCD and go back to previous state
	call TurnOffLCD                                                 ; $5733

	ld   a, [wGameBoyOrTVCommsReturnState]                          ; $5736
	ld   [wGameState], a                                            ; $5739
	ld   a, [wGameBoyOrTVCommsReturnSubstate]                       ; $573c
	ld   [wGameSubstate], a                                         ; $573f
	ret                                                             ; $5742


DisplayTVCommsConnSuccessfulBox:
	ld   c, $80                                                     ; $5743
	ld   de, _SCRN0+$e0                                             ; $5745
	ld   a, BANK(wTVCommsTileMapBuffer)                             ; $5748
	ld   hl, wTVCommsTileMapBuffer+$380                             ; $574a
	ld   b, $80/$10                                                 ; $574d
	call EnqueueHDMATransfer                                        ; $574f

	ld   c, $81                                                     ; $5752
	ld   de, _SCRN0+$e0                                             ; $5754
	ld   a, BANK(wTVCommsTileAttrBuffer)                            ; $5757
	ld   hl, wTVCommsTileAttrBuffer+$380                            ; $5759
	ld   b, $80/$10                                                 ; $575c
	call EnqueueHDMATransfer                                        ; $575e
	ret                                                             ; $5761


DisplayTVCommsWaitingConnText:
	ld   c, $80                                                     ; $5762
	ld   de, _SCRN0+$1c0                                            ; $5764
	ld   a, BANK(wTVCommsTileMapBuffer)                             ; $5767
	ld   hl, wTVCommsTileMapBuffer+$300                             ; $5769
	ld   b, $80/$10                                                 ; $576c
	call EnqueueHDMATransfer                                        ; $576e

	ld   c, $81                                                     ; $5771
	ld   de, _SCRN0+$1c0                                            ; $5773
	ld   a, BANK(wTVCommsTileAttrBuffer)                            ; $5776
	ld   hl, wTVCommsTileAttrBuffer+$300                            ; $5778
	ld   b, $80/$10                                                 ; $577b
	call EnqueueHDMATransfer                                        ; $577d
	ret                                                             ; $5780


DisplayTVCommsConnUnsuccessfulBox:
	ld   c, $80                                                     ; $5781
	ld   de, _SCRN0+$c0                                             ; $5783
	ld   a, BANK(wTVCommsTileMapBuffer)                             ; $5786
	ld   hl, wTVCommsTileMapBuffer+$240                             ; $5788
	ld   b, $c0/$10                                                 ; $578b
	call EnqueueHDMATransfer                                        ; $578d

	ld   c, $81                                                     ; $5790
	ld   de, _SCRN0+$c0                                             ; $5792
	ld   a, BANK(wTVCommsTileAttrBuffer)                            ; $5795
	ld   hl, wTVCommsTileAttrBuffer+$240                            ; $5797
	ld   b, $c0/$10                                                 ; $579a
	call EnqueueHDMATransfer                                        ; $579c
	ret                                                             ; $579f


; H - return state
; L - return substate
SetTVCommsState:
; Set return state/substate
	ld   a, h                                                       ; $57a0
	ld   [wGameBoyOrTVCommsReturnState], a                          ; $57a1
	ld   a, l                                                       ; $57a4
	ld   [wGameBoyOrTVCommsReturnSubstate], a                       ; $57a5

; Then set tv comms state
	ld   a, GS_TV_COMMS                                             ; $57a8
	ld   [wGameState], a                                            ; $57aa
	ld   a, $00                                                     ; $57ad
	ld   [wGameSubstate], a                                         ; $57af
	ret                                                             ; $57b2


; Returns length in a range of 0-3 if successful, else $ff
CheckBarcodeBarLength:
	ld   hl, rRP                                                    ; $57b3
	ld   bc, $05b0                                                  ; $57b6

; Wait for bit 4 set
.waitForBitSet1:
	dec  bc                                                         ; $57b9
	ld   a, b                                                       ; $57ba
	or   c                                                          ; $57bb
	jr   z, .returnFFh                                              ; $57bc

	bit  4, [hl]                                                    ; $57be
	jr   z, .waitForBitSet1                                         ; $57c0

; Wait for bit 4 clear before $11 loops, storing loops in B
	xor  a                                                          ; $57c2

.waitForBitClear:
	inc  a                                                          ; $57c3
	cp   $11                                                        ; $57c4
	jr   z, .returnFFh                                              ; $57c6

	bit  4, [hl]                                                    ; $57c8
	jr   nz, .waitForBitClear                                       ; $57ca

	ld   b, a                                                       ; $57cc

; Wait for bit 4 set before $28 loops, A = loops + B
	xor  a                                                          ; $57cd

.waitForBitSet2:
	inc  a                                                          ; $57ce
	cp   $28                                                        ; $57cf
	jr   z, .returnFFh                                              ; $57d1

	bit  4, [hl]                                                    ; $57d3
	jr   z, .waitForBitSet2                                         ; $57d5

	add  b                                                          ; $57d7

; B to total pair idx
	ld   b, $00                                                     ; $57d8
	ld   hl, .pairsData                                             ; $57da

.nextPair:
; If below 1st byte in a pair, return -1
	cp   [hl]                                                       ; $57dd
	jr   c, .returnFFh                                              ; $57de

; If between 1st byte and 2nd byte-1 inclusive, we've found the length
	inc  hl                                                         ; $57e0
	cp   [hl]                                                       ; $57e1
	jr   c, .endLoop                                                ; $57e2

; To next pair entry
	inc  hl                                                         ; $57e4
	inc  b                                                          ; $57e5
	jr   .nextPair                                                  ; $57e6

.returnFFh:
	ld   b, $ff                                                     ; $57e8
	jr   .endLoop                                                   ; $57ea

.endLoop:
; Wait for signal fade
	ld   de, $00bf                                                  ; $57ec

:	dec  de                                                         ; $57ef
	ld   a, d                                                       ; $57f0
	or   e                                                          ; $57f1
	jr   nz, :-                                                     ; $57f2

; Save pair idx in A
	ld   a, b                                                       ; $57f4
	ret                                                             ; $57f5

.pairsData:
	db $04, $09
	db $0a, $0f
	db $10, $15
	db $16, $1b
	db $ff


; Returns A = 0 on success, else $ff
CheckBarcodeStartBar:
	ld   hl, rRP                                                    ; $57ff

; Now wait for rRP to return bit 4 set (after checking it cleared before)
	ld   bc, $05b0                                                  ; $5802

.waitForBitSet1:
	dec  bc                                                         ; $5805
	ld   a, b                                                       ; $5806
	or   c                                                          ; $5807
	jr   z, .returnFFh                                              ; $5808

	bit  4, [hl]                                                    ; $580a
	jr   z, .waitForBitSet1                                         ; $580c

; ; Loop $11 times waiting bit 4 to be cleared again
	xor  a                                                          ; $580e

.waitForBitClear:
	inc  a                                                          ; $580f
	cp   $11                                                        ; $5810
	jr   z, .returnFFh                                              ; $5812

	bit  4, [hl]                                                    ; $5814
	jr   nz, .waitForBitClear                                       ; $5816

; Store num loops in B, then wait $28 times for bit 4 to be set again
	ld   b, a                                                       ; $5818
	xor  a                                                          ; $5819

.waitForBitSet2:
	inc  a                                                          ; $581a
	cp   $28                                                        ; $581b
	jr   z, .returnFFh                                              ; $581d

	bit  4, [hl]                                                    ; $581f
	jr   z, .waitForBitSet2                                         ; $5821

; Add num loops onto prev num loops
	add  b                                                          ; $5823

; The below simply checks that the total loops above is between $1c and $20 inclusive
	ld   b, $00                                                     ; $5824
	ld   hl, .pairData                                              ; $5826

.nextPair:
	cp   [hl]                                                       ; $5829
	jr   c, .returnFFh                                              ; $582a

	inc  hl                                                         ; $582c
	cp   [hl]                                                       ; $582d
	jr   c, .endLoop                                                ; $582e

	inc  hl                                                         ; $5830
	inc  b                                                          ; $5831
	jr   .nextPair                                                  ; $5832

.returnFFh:
; If above loop done more than once, or any other failures in algo, returns $ff
	ld   b, $ff                                                     ; $5834
	jr   .endLoop                                                   ; $5836

.endLoop:
; Wait for signal fade
	ld   de, $00bf                                                  ; $5838

:	dec  de                                                         ; $583b
	ld   a, d                                                       ; $583c
	or   e                                                          ; $583d
	jr   nz, :-                                                     ; $583e

	ld   a, b                                                       ; $5840
	ret                                                             ; $5841

.pairData:
	db $1c, $21
	db $ff
	
	
; Returns A=0 when successful
; Returns 1 if start bar is incorrect
; Returns 2 if the initial bars after are incorrect
; Returns 5 if rewards struct length byte given as >$40
; Returns 6 if the rewards bars are incorrect
; Returns 7 if the check byte bars are incorrect
; Returns 9 if the total bar bytes does not equal the last check byte
; See GiveIRBasedRewards for populating the barcode rewards struct
DEF BARCODE_XOR_BYTE = $c6b3
DEF BARCODE_REWARDS_LENGTH = $c6b4
ASSERT wTVAdapterBarcodeLengths.end-3 == $c6b3
ASSERT wTVAdapterBarcodeLengths.end-2 == $c6b4
ScanBarcode:
; --
; -- Starting bar
; --
; Check barcode starting bar, returning error 1 if $ff, else jump
	call CheckBarcodeStartBar                                       ; $5845
	or   a                                                          ; $5848
	jr   z, .notError1                                              ; $5849

	ld   a, $01                                                     ; $584b
	ret                                                             ; $584d

.notError1:
; --
; -- Getting bar lengths
; --
; Process $20 bars, 2 bits each (8 bytes)
	ld   hl, wTVAdapterBarcodeLengths                               ; $584e
	ld   b, 8 * 4                                                   ; $5851

.loopPopulatingInitialBarLengths:
; Get bar length
	push bc                                                         ; $5853
	push hl                                                         ; $5854
	call CheckBarcodeBarLength                                      ; $5855
	pop  hl                                                         ; $5858
	pop  bc                                                         ; $5859

; Error 2 if any length is of invalid length
	cp   $ff                                                        ; $585a
	jr   nz, .notError2                                             ; $585c

	ld   a, $02                                                     ; $585e
	ret                                                             ; $5860

.notError2:
; Store 2 bits per bar
	srl  a                                                          ; $5861
	rr   [hl]                                                       ; $5863
	srl  a                                                          ; $5865
	rr   [hl]                                                       ; $5867

; Every 4 bars, go to next struct byte
	ld   a, b                                                       ; $5869
	dec  a                                                          ; $586a
	and  $03                                                        ; $586b
	jr   nz, :+                                                     ; $586d
	inc  hl                                                         ; $586f

; To next bar
:	dec  b                                                          ; $5870
	jr   nz, .loopPopulatingInitialBarLengths                       ; $5871

; --
; -- Rewards length byte
; --
; Length byte must be < $40
	ld   a, [BARCODE_REWARDS_LENGTH]                                ; $5873
	or   a                                                          ; $5876
	jr   z, .return05h                                              ; $5877

	cp   $40                                                        ; $5879
	jr   c, .notError5                                              ; $587b

.return05h:
	ld   a, $05                                                     ; $587d
	ret                                                             ; $587f

.notError5:
; B = length byte * 4 (num bars to read)
	ld   a, [BARCODE_REWARDS_LENGTH]                                ; $5880
	sla  a                                                          ; $5883
	sla  a                                                          ; $5885
	ld   b, a                                                       ; $5887

; --
; -- Populating rewards struct
; --
; Next bars determine bytes in rewards struct
	ld   hl, wTVAdapterRewardsStruct                                ; $5888

.loopPopulatingRewardsStruct:
	push bc                                                         ; $588b
	push hl                                                         ; $588c
	call CheckBarcodeBarLength                                      ; $588d
	pop  hl                                                         ; $5890
	pop  bc                                                         ; $5891

	cp   $ff                                                        ; $5892
	jr   nz, .notError6                                             ; $5894

	ld   a, $06                                                     ; $5896
	ret                                                             ; $5898

.notError6:
; Store 2 bits per bar
	srl  a                                                          ; $5899
	rr   [hl]                                                       ; $589b
	srl  a                                                          ; $589d
	rr   [hl]                                                       ; $589f

; Every 4 bars, go to next struct byte
	ld   a, b                                                       ; $58a1
	dec  a                                                          ; $58a2
	and  $03                                                        ; $58a3
	jr   nz, :+                                                     ; $58a5
	inc  hl                                                         ; $58a7

; To next bar
:	dec  b                                                          ; $58a8
	jr   nz, .loopPopulatingRewardsStruct                           ; $58a9

; --
; -- Check byte
; --
; 4 more bars determine the check byte
	ld   b, $04                                                     ; $58ab

.loopPopulatingCheckByte:
	push bc                                                         ; $58ad
	call CheckBarcodeBarLength                                      ; $58ae
	pop  bc                                                         ; $58b1

	cp   $ff                                                        ; $58b2
	jr   nz, .notError7                                             ; $58b4

	ld   a, $07                                                     ; $58b6
	ret                                                             ; $58b8

.notError7:
	ld   hl, wTVAdapterRewardsCheckByte                             ; $58b9
	srl  a                                                          ; $58bc
	rr   [hl]                                                       ; $58be
	srl  a                                                          ; $58c0
	rr   [hl]                                                       ; $58c2
	dec  b                                                          ; $58c4
	jr   nz, .loopPopulatingCheckByte                               ; $58c5

; --
; -- Final processing
; --
; B = total bytes, except the check byte
	ld   hl, wTVAdapterBarcodeLengths                               ; $58c7
	ld   a, [BARCODE_REWARDS_LENGTH]                                ; $58ca
	add  $07                                                        ; $58cd
	ld   b, a                                                       ; $58cf

; Add all the bytes together
	ld   a, [hl+]                                                   ; $58d0

:	add  [hl]                                                       ; $58d1
	inc  hl                                                         ; $58d2
	dec  b                                                          ; $58d3
	jr   nz, :-                                                     ; $58d4

; It must equal the check byte
	ld   hl, wTVAdapterRewardsCheckByte                             ; $58d6
	cp   [hl]                                                       ; $58d9
	jr   z, .notError9                                              ; $58da

	ld   a, $09                                                     ; $58dc
	ret                                                             ; $58de

.notError9:
; For every barcode reward struct byte..
	ld   a, [BARCODE_REWARDS_LENGTH]                                ; $58df
	ld   b, a                                                       ; $58e2
	ld   a, [BARCODE_XOR_BYTE]                                      ; $58e3
	ld   c, a                                                       ; $58e6

; Adjust it using xor
	ld   hl, wTVAdapterRewardsStruct                                ; $58e7

:	ld   a, [hl]                                                    ; $58ea
	xor  c                                                          ; $58eb
	ld   [hl+], a                                                   ; $58ec
	dec  b                                                          ; $58ed
	jr   nz, :-                                                     ; $58ee

; Return successful
	xor  a                                                          ; $58f0
	ret                                                             ; $58f1


; Returns A=0 if successful
CheckIfTVAdapterConnected:
	ld   hl, rRP                                                    ; $58f2

; Loop waiting a fixed amount of cycles
	ld   bc, $05b0                                                  ; $58f5

.loop:
	dec  bc                                                         ; $58f8
	ld   a, b                                                       ; $58f9
	or   c                                                          ; $58fa
	jr   z, .noConn                                                 ; $58fb

; If at any point bit 4 is cleared on rRP, the TV adapter is connected
	bit  4, [hl]                                                    ; $58fd
	jr   nz, .loop                                                  ; $58ff

	xor  a                                                          ; $5901
	ret                                                             ; $5902

.noConn:
	ld   a, $01                                                     ; $5903
	ret                                                             ; $5905


Call_010_5906:
	call Call_010_591c                               ; $5906: $cd $1c $59
	ld   a, $04                                      ; $5909: $3e $04
	ldh  [rIE], a                                    ; $590b: $e0 $ff
	xor  a                                           ; $590d: $af
	ldh  [rIF], a                                    ; $590e: $e0 $0f
	call Call_010_593e                               ; $5910: $cd $3e $59
	xor  a                                           ; $5913: $af
	ld   b, a                                        ; $5914: $47

jr_010_5915:
	inc  a                                           ; $5915: $3c
	jr   nz, jr_010_5915                             ; $5916: $20 $fd

	inc  b                                           ; $5918: $04
	jr   nz, jr_010_5915                             ; $5919: $20 $fa

	ret                                              ; $591b: $c9


Call_010_591c:
	xor  a                                           ; $591c: $af
	ldh  [rTAC], a                                   ; $591d: $e0 $07
	ld   a, $fe                                      ; $591f: $3e $fe
	ldh  [rTMA], a                                   ; $5921: $e0 $06
	ldh  [rTIMA], a                                  ; $5923: $e0 $05
	ld   a, $02                                      ; $5925: $3e $02
	ldh  [rTAC], a                                   ; $5927: $e0 $07
	or   $04                                         ; $5929: $f6 $04
	ldh  [rTAC], a                                   ; $592b: $e0 $07
	ret                                              ; $592d: $c9


Call_010_592e:
	xor  a                                           ; $592e: $af
	ldh  [rTAC], a                                   ; $592f: $e0 $07
	ldh  [rTMA], a                                   ; $5931: $e0 $06
	ldh  [rTIMA], a                                  ; $5933: $e0 $05
	ld   a, $02                                      ; $5935: $3e $02
	ldh  [rTAC], a                                   ; $5937: $e0 $07
	or   $04                                         ; $5939: $f6 $04
	ldh  [rTAC], a                                   ; $593b: $e0 $07
	ret                                              ; $593d: $c9


Call_010_593e:
	ld   a, $c0                                      ; $593e: $3e $c0
	call Call_010_5a2f                               ; $5940: $cd $2f $5a
	ld   a, $01                                      ; $5943: $3e $01
	ld   [$c781], a                                  ; $5945: $ea $81 $c7
	ret                                              ; $5948: $c9


Call_010_5949:
	xor  a                                           ; $5949: $af
	call Call_010_5a2f                               ; $594a: $cd $2f $5a
	ld   a, $02                                      ; $594d: $3e $02
	ldh  [rTAC], a                                   ; $594f: $e0 $07
	ret                                              ; $5951: $c9


Call_010_5952:
jr_010_5952:
	inc  d                                           ; $5952: $14
	ret  z                                           ; $5953: $c8

	xor  a                                           ; $5954: $af
	ldh  [rIF], a                                    ; $5955: $e0 $0f
	halt                                             ; $5957: $76
	nop                                              ; $5958: $00
	ldh  a, [c]                                      ; $5959: $f2
	bit  1, a                                        ; $595a: $cb $4f
	jr   z, jr_010_5952                              ; $595c: $28 $f4

	or   a                                           ; $595e: $b7
	ret                                              ; $595f: $c9


Call_010_5960:
jr_010_5960:
	inc  d                                           ; $5960: $14
	ret  z                                           ; $5961: $c8

	xor  a                                           ; $5962: $af
	ldh  [rIF], a                                    ; $5963: $e0 $0f
	halt                                             ; $5965: $76
	nop                                              ; $5966: $00
	ldh  a, [c]                                      ; $5967: $f2
	bit  1, a                                        ; $5968: $cb $4f
	jr   nz, jr_010_5960                             ; $596a: $20 $f4

	or   a                                           ; $596c: $b7
	ret                                              ; $596d: $c9


Call_010_596e:
	ld   a, $c1                                      ; $596e: $3e $c1
	ldh  [c], a                                      ; $5970: $e2

jr_010_5971:
	dec  d                                           ; $5971: $15
	ret  z                                           ; $5972: $c8

	xor  a                                           ; $5973: $af
	ldh  [rIF], a                                    ; $5974: $e0 $0f
	halt                                             ; $5976: $76
	nop                                              ; $5977: $00
	jr   jr_010_5971                                 ; $5978: $18 $f7


; C - rRP
; D -
Call_010_597a:
	ld   a, $c0                                      ; $597a: $3e $c0
	ldh  [c], a                                      ; $597c: $e2

jr_010_597d:
	dec  d                                           ; $597d: $15
	ret  z                                           ; $597e: $c8

	xor  a                                           ; $597f: $af
	ldh  [rIF], a                                    ; $5980: $e0 $0f
	halt                                             ; $5982: $76
	nop                                              ; $5983: $00
	jr   jr_010_597d                                 ; $5984: $18 $f7


Call_010_5986:
	ld   d, $00                                      ; $5986: $16 $00
	ld   e, d                                        ; $5988: $5a
	ld   a, $01                                      ; $5989: $3e $01
	ld   [$c781], a                                  ; $598b: $ea $81 $c7

jr_010_598e:
	call PollInput                                       ; $598e: $cd $a9 $03
	ld   b, $02                                      ; $5991: $06 $02
	ld   c, LOW(rRP)                                      ; $5993: $0e $56
	ld   a, [wInGameButtonsPressed]                                  ; $5995: $fa $10 $c2
	bit  1, a                                        ; $5998: $cb $4f
	jr   z, jr_010_59a2                              ; $599a: $28 $06

	ld   a, $ff                                      ; $599c: $3e $ff
	ld   [$c782], a                                  ; $599e: $ea $82 $c7
	ret                                              ; $59a1: $c9

jr_010_59a2:
	bit  0, a                                        ; $59a2: $cb $47
	jr   nz, jr_010_59e7                             ; $59a4: $20 $41

	ldh  a, [c]                                      ; $59a6: $f2
	and  b                                           ; $59a7: $a0
	jr   nz, jr_010_598e                             ; $59a8: $20 $e4

Call_010_59aa:
	ld   c, LOW(rRP)                                      ; $59aa: $0e $56
	ld   d, $00                                      ; $59ac: $16 $00
	ld   e, d                                        ; $59ae: $5a
	call Call_010_5960                               ; $59af: $cd $60 $59
	jp   z, Jump_010_5af7                            ; $59b2: $ca $f7 $5a

	ld   d, e                                        ; $59b5: $53
	call Call_010_5952                               ; $59b6: $cd $52 $59
	jp   z, Jump_010_5af7                            ; $59b9: $ca $f7 $5a

	call Call_010_5960                               ; $59bc: $cd $60 $59
	jp   z, Jump_010_5af7                            ; $59bf: $ca $f7 $5a

	call Call_010_5952                               ; $59c2: $cd $52 $59
	jp   z, Jump_010_5af7                            ; $59c5: $ca $f7 $5a

	ld   a, $6c                                      ; $59c8: $3e $6c
	ld   [$c782], a                                  ; $59ca: $ea $82 $c7
	ld   d, $3d                                      ; $59cd: $16 $3d
	call Call_010_597a                               ; $59cf: $cd $7a $59
	ld   d, $05                                      ; $59d2: $16 $05
	call Call_010_596e                               ; $59d4: $cd $6e $59
	ld   d, $15                                      ; $59d7: $16 $15
	call Call_010_597a                               ; $59d9: $cd $7a $59
	ld   d, $05                                      ; $59dc: $16 $05
	call Call_010_596e                               ; $59de: $cd $6e $59
	ld   d, $05                                      ; $59e1: $16 $05
	call Call_010_597a                               ; $59e3: $cd $7a $59
	ret                                              ; $59e6: $c9


Call_010_59e7:
jr_010_59e7:
	ld   a, $02                                      ; $59e7: $3e $02
	ld   [$c781], a                                  ; $59e9: $ea $81 $c7
	ld   c, LOW(rRP)                                      ; $59ec: $0e $56
	ld   d, $00                                      ; $59ee: $16 $00
	ld   e, d                                        ; $59f0: $5a
	ld   d, $3d                                      ; $59f1: $16 $3d
	call Call_010_597a                               ; $59f3: $cd $7a $59
	ld   d, $05                                      ; $59f6: $16 $05
	call Call_010_596e                               ; $59f8: $cd $6e $59
	ld   d, $15                                      ; $59fb: $16 $15
	call Call_010_597a                               ; $59fd: $cd $7a $59
	ld   d, $05                                      ; $5a00: $16 $05
	call Call_010_596e                               ; $5a02: $cd $6e $59
	ld   d, $05                                      ; $5a05: $16 $05
	call Call_010_597a                               ; $5a07: $cd $7a $59
	ld   d, e                                        ; $5a0a: $53
	call Call_010_5960                               ; $5a0b: $cd $60 $59
	jp   z, Jump_010_5af7                            ; $5a0e: $ca $f7 $5a

	ld   d, e                                        ; $5a11: $53
	call Call_010_5952                               ; $5a12: $cd $52 $59
	jp   z, Jump_010_5af7                            ; $5a15: $ca $f7 $5a

	call Call_010_5960                               ; $5a18: $cd $60 $59
	jp   z, Jump_010_5af7                            ; $5a1b: $ca $f7 $5a

	call Call_010_5952                               ; $5a1e: $cd $52 $59
	jp   z, Jump_010_5af7                            ; $5a21: $ca $f7 $5a

	ld   d, $3d                                      ; $5a24: $16 $3d
	call Call_010_597a                               ; $5a26: $cd $7a $59
	ld   a, $6c                                      ; $5a29: $3e $6c
	ld   [$c782], a                                  ; $5a2b: $ea $82 $c7
	ret                                              ; $5a2e: $c9


Call_010_5a2f:
	ldh  [rRP], a                                    ; $5a2f: $e0 $56
	ld   a, $ff                                      ; $5a31: $3e $ff
	ld   [$c782], a                                  ; $5a33: $ea $82 $c7
	ret                                              ; $5a36: $c9


Call_010_5a37:
	xor  a                                           ; $5a37: $af
	ld   [$c77c], a                                  ; $5a38: $ea $7c $c7
	ld   [$c77d], a                                  ; $5a3b: $ea $7d $c7
	push hl                                          ; $5a3e: $e5
	push bc                                          ; $5a3f: $c5
	ld   c, LOW(rRP)                                      ; $5a40: $0e $56
	ld   d, $3d                                      ; $5a42: $16 $3d
	call Call_010_597a                               ; $5a44: $cd $7a $59
	ld   hl, $c77e                                   ; $5a47: $21 $7e $c7
	ld   a, $5a                                      ; $5a4a: $3e $5a
	ld   [hl+], a                                    ; $5a4c: $22
	ld   [hl], b                                     ; $5a4d: $70
	dec  hl                                          ; $5a4e: $2b
	ld   b, $02                                      ; $5a4f: $06 $02
	call Call_010_5a84                               ; $5a51: $cd $84 $5a
	pop  bc                                          ; $5a54: $c1
	pop  hl                                          ; $5a55: $e1
	call Call_010_5a84                               ; $5a56: $cd $84 $5a
	ld   a, [$c77c]                                  ; $5a59: $fa $7c $c7
	ld   [$c77e], a                                  ; $5a5c: $ea $7e $c7
	ld   a, [$c77d]                                  ; $5a5f: $fa $7d $c7
	ld   [$c77f], a                                  ; $5a62: $ea $7f $c7
	push hl                                          ; $5a65: $e5
	ld   hl, $c77e                                   ; $5a66: $21 $7e $c7
	ld   b, $02                                      ; $5a69: $06 $02
	call Call_010_5a84                               ; $5a6b: $cd $84 $5a
	ld   hl, $c782                                   ; $5a6e: $21 $82 $c7
	ld   b, $01                                      ; $5a71: $06 $01
	call Call_010_5b73                               ; $5a73: $cd $73 $5b
	ld   a, [$c77e]                                  ; $5a76: $fa $7e $c7
	ld   [$c77c], a                                  ; $5a79: $ea $7c $c7
	ld   a, [$c77f]                                  ; $5a7c: $fa $7f $c7
	ld   [$c77d], a                                  ; $5a7f: $ea $7d $c7
	pop  hl                                          ; $5a82: $e1
	ret                                              ; $5a83: $c9


Call_010_5a84:
	ld   c, LOW(rRP)                                      ; $5a84: $0e $56
	ld   d, $05                                      ; $5a86: $16 $05
	call Call_010_597a                               ; $5a88: $cd $7a $59
	ld   d, $05                                      ; $5a8b: $16 $05
	call Call_010_596e                               ; $5a8d: $cd $6e $59
	ld   d, $15                                      ; $5a90: $16 $15
	call Call_010_597a                               ; $5a92: $cd $7a $59
	ld   a, b                                        ; $5a95: $78
	cpl                                              ; $5a96: $2f
	ld   b, a                                        ; $5a97: $47
	ld   a, $f4                                      ; $5a98: $3e $f4
	ldh  [rTMA], a                                   ; $5a9a: $e0 $06

jr_010_5a9c:
	inc  b                                           ; $5a9c: $04
	jr   z, jr_010_5ae3                              ; $5a9d: $28 $44

	ld   a, $08                                      ; $5a9f: $3e $08
	ld   [$c77b], a                                  ; $5aa1: $ea $7b $c7
	ld   a, [hl+]                                    ; $5aa4: $2a
	ld   e, a                                        ; $5aa5: $5f
	ld   a, [$c77c]                                  ; $5aa6: $fa $7c $c7
	add  e                                           ; $5aa9: $83
	ld   [$c77c], a                                  ; $5aaa: $ea $7c $c7
	ld   a, [$c77d]                                  ; $5aad: $fa $7d $c7
	adc  $00                                         ; $5ab0: $ce $00
	ld   [$c77d], a                                  ; $5ab2: $ea $7d $c7

jr_010_5ab5:
	xor  a                                           ; $5ab5: $af
	ldh  [rIF], a                                    ; $5ab6: $e0 $0f
	halt                                             ; $5ab8: $76
	nop                                              ; $5ab9: $00
	ld   a, $c1                                      ; $5aba: $3e $c1
	ldh  [rRP], a                                    ; $5abc: $e0 $56
	ld   d, $01                                      ; $5abe: $16 $01
	ld   a, e                                        ; $5ac0: $7b
	rlca                                             ; $5ac1: $07
	ld   e, a                                        ; $5ac2: $5f
	jr   nc, jr_010_5ac6                             ; $5ac3: $30 $01

	inc  d                                           ; $5ac5: $14

jr_010_5ac6:
	ldh  a, [rTIMA]                                  ; $5ac6: $f0 $05
	cp   $f8                                         ; $5ac8: $fe $f8
	jr   c, jr_010_5ac6                              ; $5aca: $38 $fa

	ld   a, $c0                                      ; $5acc: $3e $c0
	ldh  [rRP], a                                    ; $5ace: $e0 $56
	dec  d                                           ; $5ad0: $15
	jr   z, jr_010_5ad8                              ; $5ad1: $28 $05

	xor  a                                           ; $5ad3: $af
	ldh  [rIF], a                                    ; $5ad4: $e0 $0f
	halt                                             ; $5ad6: $76
	nop                                              ; $5ad7: $00

jr_010_5ad8:
	ld   a, [$c77b]                                  ; $5ad8: $fa $7b $c7
	dec  a                                           ; $5adb: $3d
	jr   z, jr_010_5a9c                              ; $5adc: $28 $be

	ld   [$c77b], a                                  ; $5ade: $ea $7b $c7
	jr   jr_010_5ab5                                 ; $5ae1: $18 $d2

jr_010_5ae3:
	ld   a, $fe                                      ; $5ae3: $3e $fe
	ldh  [rTMA], a                                   ; $5ae5: $e0 $06
	xor  a                                           ; $5ae7: $af
	ldh  [rIF], a                                    ; $5ae8: $e0 $0f
	halt                                             ; $5aea: $76
	nop                                              ; $5aeb: $00
	ld   d, $05                                      ; $5aec: $16 $05
	call Call_010_596e                               ; $5aee: $cd $6e $59
	ld   d, $11                                      ; $5af1: $16 $11
	call Call_010_597a                               ; $5af3: $cd $7a $59
	ret                                              ; $5af6: $c9


Jump_010_5af7:
	ld   a, [$c782]                                  ; $5af7: $fa $82 $c7
	or   $02                                         ; $5afa: $f6 $02
	ld   [$c782], a                                  ; $5afc: $ea $82 $c7
	ret                                              ; $5aff: $c9


Call_010_5b00:
	ld   a, [$c782]                                  ; $5b00: $fa $82 $c7
	or   $01                                         ; $5b03: $f6 $01
	ld   [$c782], a                                  ; $5b05: $ea $82 $c7
	ret                                              ; $5b08: $c9


Jump_010_5b09:
	ld   a, [$c782]                                  ; $5b09: $fa $82 $c7
	or   $80                                         ; $5b0c: $f6 $80
	ld   [$c782], a                                  ; $5b0e: $ea $82 $c7
	ret                                              ; $5b11: $c9


Call_010_5b12:
Jump_010_5b12:
	xor  a                                           ; $5b12: $af
	ld   [$c77c], a                                  ; $5b13: $ea $7c $c7
	ld   [$c77d], a                                  ; $5b16: $ea $7d $c7
	push bc                                          ; $5b19: $c5
	push hl                                          ; $5b1a: $e5
	ld   hl, $c77e                                   ; $5b1b: $21 $7e $c7
	ld   b, $02                                      ; $5b1e: $06 $02
	call Call_010_5b73                               ; $5b20: $cd $73 $5b
	ld   a, [$c77f]                                  ; $5b23: $fa $7f $c7
	ld   [$c780], a                                  ; $5b26: $ea $80 $c7
	ld   b, a                                        ; $5b29: $47
	pop  hl                                          ; $5b2a: $e1
	pop  af                                          ; $5b2b: $f1
	cp   b                                           ; $5b2c: $b8
	jp   c, Jump_010_5b09                            ; $5b2d: $da $09 $5b

	ld   a, [$c77e]                                  ; $5b30: $fa $7e $c7
	cp   $5a                                         ; $5b33: $fe $5a
	jp   nz, Jump_010_5b09                           ; $5b35: $c2 $09 $5b

	call Call_010_5b73                               ; $5b38: $cd $73 $5b
	ld   a, [$c77c]                                  ; $5b3b: $fa $7c $c7
	ld   d, a                                        ; $5b3e: $57
	ld   a, [$c77d]                                  ; $5b3f: $fa $7d $c7
	ld   e, a                                        ; $5b42: $5f
	push hl                                          ; $5b43: $e5
	push de                                          ; $5b44: $d5
	ld   hl, $c77e                                   ; $5b45: $21 $7e $c7
	ld   b, $02                                      ; $5b48: $06 $02
	call Call_010_5b73                               ; $5b4a: $cd $73 $5b
	pop  de                                          ; $5b4d: $d1
	ld   hl, $c77e                                   ; $5b4e: $21 $7e $c7
	ld   a, [hl+]                                    ; $5b51: $2a
	xor  d                                           ; $5b52: $aa
	ld   b, a                                        ; $5b53: $47
	ld   a, [hl]                                     ; $5b54: $7e
	xor  e                                           ; $5b55: $ab
	or   b                                           ; $5b56: $b0
	call nz, Call_010_5b00                           ; $5b57: $c4 $00 $5b
	push de                                          ; $5b5a: $d5
	ld   d, $3d                                      ; $5b5b: $16 $3d
	call Call_010_597a                               ; $5b5d: $cd $7a $59
	ld   hl, $c782                                   ; $5b60: $21 $82 $c7
	ld   b, $01                                      ; $5b63: $06 $01
	call Call_010_5a84                               ; $5b65: $cd $84 $5a
	pop  de                                          ; $5b68: $d1
	pop  hl                                          ; $5b69: $e1
	ld   a, d                                        ; $5b6a: $7a
	ld   [$c77c], a                                  ; $5b6b: $ea $7c $c7
	ld   a, e                                        ; $5b6e: $7b
	ld   [$c77d], a                                  ; $5b6f: $ea $7d $c7
	ret                                              ; $5b72: $c9


Call_010_5b73:
	ld   c, LOW(rRP)                                      ; $5b73: $0e $56
	ld   d, $00                                      ; $5b75: $16 $00
	call Call_010_5960                               ; $5b77: $cd $60 $59
	jp   z, Jump_010_5af7                            ; $5b7a: $ca $f7 $5a

	ld   d, $00                                      ; $5b7d: $16 $00
	call Call_010_5952                               ; $5b7f: $cd $52 $59
	jp   z, Jump_010_5af7                            ; $5b82: $ca $f7 $5a

	ld   d, $00                                      ; $5b85: $16 $00
	call Call_010_5960                               ; $5b87: $cd $60 $59
	jp   z, Jump_010_5af7                            ; $5b8a: $ca $f7 $5a

	ld   a, b                                        ; $5b8d: $78
	cpl                                              ; $5b8e: $2f
	ld   b, a                                        ; $5b8f: $47
	xor  a                                           ; $5b90: $af
	ld   [$c788], a                                  ; $5b91: $ea $88 $c7
	call Call_010_592e                               ; $5b94: $cd $2e $59

jr_010_5b97:
	inc  b                                           ; $5b97: $04
	jr   z, jr_010_5be8                              ; $5b98: $28 $4e

	ld   a, $08                                      ; $5b9a: $3e $08
	ld   [$c77b], a                                  ; $5b9c: $ea $7b $c7

jr_010_5b9f:
	ld   d, $00                                      ; $5b9f: $16 $00

jr_010_5ba1:
	inc  d                                           ; $5ba1: $14
	jr   z, jr_010_5bab                              ; $5ba2: $28 $07

	ldh  a, [c]                                      ; $5ba4: $f2
	bit  1, a                                        ; $5ba5: $cb $4f
	jr   z, jr_010_5ba1                              ; $5ba7: $28 $f8

	ld   d, $00                                      ; $5ba9: $16 $00

jr_010_5bab:
	inc  d                                           ; $5bab: $14
	jr   z, jr_010_5bb3                              ; $5bac: $28 $05

	ldh  a, [c]                                      ; $5bae: $f2
	bit  1, a                                        ; $5baf: $cb $4f
	jr   nz, jr_010_5bab                             ; $5bb1: $20 $f8

jr_010_5bb3:
	ld   a, [$c788]                                  ; $5bb3: $fa $88 $c7
	ld   d, a                                        ; $5bb6: $57
	ldh  a, [rTIMA]                                  ; $5bb7: $f0 $05
	ld   [$c788], a                                  ; $5bb9: $ea $88 $c7
	sub  d                                           ; $5bbc: $92
	cp   $12                                         ; $5bbd: $fe $12
	jr   c, jr_010_5bc5                              ; $5bbf: $38 $04

	set  0, e                                        ; $5bc1: $cb $c3
	jr   jr_010_5bc7                                 ; $5bc3: $18 $02

jr_010_5bc5:
	res  0, e                                        ; $5bc5: $cb $83

jr_010_5bc7:
	ld   a, [$c77b]                                  ; $5bc7: $fa $7b $c7
	dec  a                                           ; $5bca: $3d
	ld   [$c77b], a                                  ; $5bcb: $ea $7b $c7
	jr   z, jr_010_5bd5                              ; $5bce: $28 $05

	ld   a, e                                        ; $5bd0: $7b
	rlca                                             ; $5bd1: $07
	ld   e, a                                        ; $5bd2: $5f
	jr   jr_010_5b9f                                 ; $5bd3: $18 $ca

jr_010_5bd5:
	ld   a, e                                        ; $5bd5: $7b
	ld   [hl+], a                                    ; $5bd6: $22
	ld   a, [$c77c]                                  ; $5bd7: $fa $7c $c7
	add  e                                           ; $5bda: $83
	ld   [$c77c], a                                  ; $5bdb: $ea $7c $c7
	ld   a, [$c77d]                                  ; $5bde: $fa $7d $c7
	adc  $00                                         ; $5be1: $ce $00
	ld   [$c77d], a                                  ; $5be3: $ea $7d $c7
	jr   jr_010_5b97                                 ; $5be6: $18 $af

jr_010_5be8:
	call Call_010_591c                               ; $5be8: $cd $1c $59
	xor  a                                           ; $5beb: $af
	ldh  [rIF], a                                    ; $5bec: $e0 $0f
	ld   d, $00                                      ; $5bee: $16 $00
	call Call_010_5952                               ; $5bf0: $cd $52 $59
	jp   z, Jump_010_5af7                            ; $5bf3: $ca $f7 $5a

	ld   d, $10                                      ; $5bf6: $16 $10
	call Call_010_597a                               ; $5bf8: $cd $7a $59
	ret                                              ; $5bfb: $c9


Call_010_5bfc:
	ld   b, $00                                      ; $5bfc: $06 $00
	jp   Call_010_5a37                               ; $5bfe: $c3 $37 $5a


Call_010_5c01:
	ld   b, $00                                      ; $5c01: $06 $00
	jp   Jump_010_5b12                               ; $5c03: $c3 $12 $5b


GameState14_Cinematron::
	ld   a, [wGameSubstate]                                         ; $5c06
	rst  JumpTable                                                  ; $5c09
	dw CinematronSubstate0_DefaultInit
	dw CinematronSubstate1_MainInit
	dw CinematronSubstate2
	dw CinematronSubstate3_SelectedOption
	dw CinematronSubstate4
	
	
CinematronSubstate0_DefaultInit:
; Start off on the 'return' option
	ld   a, $03                                                     ; $5c14
	ld   [wCinematronChosenOption], a                               ; $5c16

;
	xor  a                                           ; $5c19: $af
	ld   [$c941], a                                  ; $5c1a: $ea $41 $c9

; Inc to main substate
	ld   hl, wGameSubstate                                          ; $5c1d
	inc  [hl]                                                       ; $5c20

CinematronSubstate1_MainInit:
; Check if TV adapter is connected, set flag, and jump if it is
	di                                                              ; $5c21
	call CheckIfTVAdapterConnected                                  ; $5c22
	ei                                                              ; $5c25

	ld   [wTVAdapterDisconnected], a                                ; $5c26
	or   a                                                          ; $5c29
	jr   z, .afterTVadapterCheck                                    ; $5c2a

; If no TV adapter, and chosen opt is sitting on TV adapter..
	ld   hl, wCinematronChosenOption                                ; $5c2c
	ld   a, [hl]                                                    ; $5c2f
	cp   $02                                                        ; $5c30
	jr   nz, .afterTVadapterCheck                                   ; $5c32

; Set it to the 'return' button instead
	ld   a, $03                                                     ; $5c34
	ld   [hl], a                                                    ; $5c36

.afterTVadapterCheck:
;
	call Call_010_65e0                               ; $5c37: $cd $e0 $65

; Turn off LCD and mute volume
	call TurnOffLCD                                                 ; $5c3a
	ld   a, $00                                                     ; $5c3d
	call SafeSetAudVolForMultipleChannels                           ; $5c3f

; Set sticky buttons params
	ld   a, $ff                                                     ; $5c42
	ld   [wInGameInputsEnabled], a                                  ; $5c44
	ld   a, $0c                                                     ; $5c47
	ld   [wBaseInitialStickyCounter], a                             ; $5c49
	ld   a, $04                                                     ; $5c4c
	ld   [wBaseRepeatedStickyCounter], a                            ; $5c4e

; Clear oam and display regs, then turn off LCD
	call ClearOam                                                   ; $5c51

	call ClearDisplayRegsAllowVBlankInt                             ; $5c54
	ld   a, LCDCF_OBJON|LCDCF_BGON                                  ; $5c57
	ld   [wLCDC], a                                                 ; $5c59

;
	ld   a, [wWramBank]                                  ; $5c5c: $fa $93 $c2
	push af                                          ; $5c5f: $f5
	ld   a, $03                                      ; $5c60: $3e $03
	ld   [wWramBank], a                                  ; $5c62: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c65: $e0 $70

;
	ld   a, $1d                                      ; $5c67: $3e $1d
	ld   hl, $d000                                   ; $5c69: $21 $00 $d0
	ld   de, $60f4                                   ; $5c6c: $11 $f4 $60
if def(VWF)
	call CinematronTileAttrHook
else
	call RLEXorCopy                                       ; $5c6f: $cd $d2 $09
endc

;
	ld   a, $1c                                      ; $5c72: $3e $1c
	ld   hl, $d400                                   ; $5c74: $21 $00 $d4
	ld   de, $66fd                                   ; $5c77: $11 $fd $66
if def(VWF)
	call CinematronTileMapHook
else
	call RLEXorCopy                                       ; $5c7a: $cd $d2 $09
endc

;
	call Stub_10_6473                               ; $5c7d: $cd $73 $64
	call Call_010_62fd                               ; $5c80: $cd $fd $62
	call Call_010_6388                               ; $5c83: $cd $88 $63
	call Func_10_66a8                                       ; $5c86: $cd $a8 $66
	pop  af                                          ; $5c89: $f1
	ld   [wWramBank], a                                  ; $5c8a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c8d: $e0 $70

;
	ld   a, $01                                      ; $5c8f: $3e $01
	ldh  [rVBK], a                                   ; $5c91: $e0 $4f
	ld   a, $14                                      ; $5c93: $3e $14
	ld   hl, $8000                                   ; $5c95: $21 $00 $80
	ld   de, $60df                                   ; $5c98: $11 $df $60
if def(VWF)
	call CinematronTileDataHook_1_8000h
else
	call RLEXorCopy                                       ; $5c9b: $cd $d2 $09
endc

;
	xor  a                                           ; $5c9e: $af
	ldh  [rVBK], a                                   ; $5c9f: $e0 $4f
	ld   a, $13                                      ; $5ca1: $3e $13
	ld   hl, $8000                                   ; $5ca3: $21 $00 $80
	ld   de, $6a00                                   ; $5ca6: $11 $00 $6a
	call RLEXorCopy                                       ; $5ca9: $cd $d2 $09
	ld   c, $81                                      ; $5cac: $0e $81
	ld   de, $9800                                   ; $5cae: $11 $00 $98
	ld   a, $03                                      ; $5cb1: $3e $03
	ld   hl, $d000                                   ; $5cb3: $21 $00 $d0
	ld   b, $24                                      ; $5cb6: $06 $24
	call EnqueueHDMATransfer                                       ; $5cb8: $cd $7c $02
	ld   c, $80                                      ; $5cbb: $0e $80
	ld   de, $9800                                   ; $5cbd: $11 $00 $98
	ld   a, $03                                      ; $5cc0: $3e $03
	ld   hl, $d400                                   ; $5cc2: $21 $00 $d4
	ld   b, $24                                      ; $5cc5: $06 $24
	call EnqueueHDMATransfer                                       ; $5cc7: $cd $7c $02
	ld   a, [wWramBank]                                  ; $5cca: $fa $93 $c2
	push af                                          ; $5ccd: $f5
	ld   a, $06                                      ; $5cce: $3e $06
	ld   [wWramBank], a                                  ; $5cd0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5cd3: $e0 $70
	ld   hl, $d000                                   ; $5cd5: $21 $00 $d0
	ld   bc, $0400                                   ; $5cd8: $01 $00 $04
	call MemClear                                       ; $5cdb: $cd $95 $09
	pop  af                                          ; $5cde: $f1
	ld   [wWramBank], a                                  ; $5cdf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ce2: $e0 $70
	xor  a                                           ; $5ce4: $af
	ld   [wSCX], a                                  ; $5ce5: $ea $07 $c2
	ld   [wSCY], a                                  ; $5ce8: $ea $08 $c2
	call Call_010_5ea3                               ; $5ceb: $cd $a3 $5e
	ld   [$c91e], a                                  ; $5cee: $ea $1e $c9
	ld   [$c91f], a                                  ; $5cf1: $ea $1f $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $5cf4: $cd $c9 $2e
	ld   a, $01                                      ; $5cf7: $3e $01
	ld   hl, $0000                                   ; $5cf9: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5cfc: $cd $4b $2f
	ld   [$c91a], a                                  ; $5cff: $ea $1a $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $5d02: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5d05: $cd $76 $30
	ld   a, $20                                      ; $5d08: $3e $20
	ld   bc, $0808                                   ; $5d0a: $01 $08 $08
	ld   de, AnimatedSpriteSpecs                                   ; $5d0d: $11 $80 $71
	push af                                          ; $5d10: $f5
	ld   a, $03                                      ; $5d11: $3e $03
	ld   [wFarCallAddr], a                                  ; $5d13: $ea $98 $c2
	ld   a, $41                                      ; $5d16: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5d18: $ea $99 $c2
	ld   a, $01                                      ; $5d1b: $3e $01
	ld   [wFarCallBank], a                                  ; $5d1d: $ea $9a $c2
	pop  af                                          ; $5d20: $f1
	call FarCall                                       ; $5d21: $cd $62 $09
	ld   a, $01                                      ; $5d24: $3e $01
	ld   hl, $0000                                   ; $5d26: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5d29: $cd $4b $2f
	ld   [$c91c], a                                  ; $5d2c: $ea $1c $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $5d2f: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5d32: $cd $76 $30
	call Call_010_625e                               ; $5d35: $cd $5e $62
	ld   d, $00                                      ; $5d38: $16 $00
	ld   a, [$c926]                                  ; $5d3a: $fa $26 $c9
	or   a                                           ; $5d3d: $b7
	jr   nz, jr_010_5d42                             ; $5d3e: $20 $02

	ld   d, $28                                      ; $5d40: $16 $28

jr_010_5d42:
	ld   a, d                                        ; $5d42: $7a
	ld   de, AnimatedSpriteSpecs                                   ; $5d43: $11 $80 $71
	push af                                          ; $5d46: $f5
	ld   a, $03                                      ; $5d47: $3e $03
	ld   [wFarCallAddr], a                                  ; $5d49: $ea $98 $c2
	ld   a, $41                                      ; $5d4c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5d4e: $ea $99 $c2
	ld   a, $01                                      ; $5d51: $3e $01
	ld   [wFarCallBank], a                                  ; $5d53: $ea $9a $c2
	pop  af                                          ; $5d56: $f1
	call FarCall                                       ; $5d57: $cd $62 $09
	ld   a, $01                                      ; $5d5a: $3e $01
	ld   hl, $0000                                   ; $5d5c: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5d5f: $cd $4b $2f
	ld   [$c91b], a                                  ; $5d62: $ea $1b $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $5d65: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5d68: $cd $76 $30
	ld   a, $00                                      ; $5d6b: $3e $00
	ld   bc, $2c77                                   ; $5d6d: $01 $77 $2c
	ld   de, AnimatedSpriteSpecs                                   ; $5d70: $11 $80 $71
	push af                                          ; $5d73: $f5
	ld   a, $03                                      ; $5d74: $3e $03
	ld   [wFarCallAddr], a                                  ; $5d76: $ea $98 $c2
	ld   a, $41                                      ; $5d79: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5d7b: $ea $99 $c2
	ld   a, $01                                      ; $5d7e: $3e $01
	ld   [wFarCallBank], a                                  ; $5d80: $ea $9a $c2
	pop  af                                          ; $5d83: $f1
	call FarCall                                       ; $5d84: $cd $62 $09
	ld   a, $01                                      ; $5d87: $3e $01
	ld   hl, $7000                                   ; $5d89: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5d8c: $11 $de $c2
	ld   bc, $0080                                   ; $5d8f: $01 $80 $00
	call FarMemCopy                                       ; $5d92: $cd $b2 $09
	ld   bc, $003f                                   ; $5d95: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5d98: $cd $aa $04
	xor  a                                           ; $5d9b: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5d9c: $ea $62 $c3
	ld   a, $40                                      ; $5d9f: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5da1: $ea $63 $c3
	ld   a, $03                                      ; $5da4: $3e $03
	ld   b, $01                                      ; $5da6: $06 $01
	ld   hl, $7000                                   ; $5da8: $21 $00 $70
	ld   c, $1e                                      ; $5dab: $0e $1e
	ld   de, $667c                                   ; $5dad: $11 $7c $66
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5db0: $cd $48 $07
	ld   a, $08                                      ; $5db3: $3e $08
	ld   [$c920], a                                  ; $5db5: $ea $20 $c9
	ld   a, $04                                      ; $5db8: $3e $04
	ld   [$c921], a                                  ; $5dba: $ea $21 $c9
	call Call_010_6612                               ; $5dbd: $cd $12 $66
	call TurnOnLCD                                       ; $5dc0: $cd $09 $09
	ld   a, $02                                      ; $5dc3: $3e $02
	call PlaySong                                       ; $5dc5: $cd $92 $1a
	ld   a, $07                                      ; $5dc8: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5dca: $cd $e0 $1c
	call Call_010_61b8                               ; $5dcd: $cd $b8 $61
	call Call_010_6401                               ; $5dd0: $cd $01 $64
	ld   a, $02                                      ; $5dd3: $3e $02
	ld   [wGameSubstate], a                                  ; $5dd5: $ea $a1 $c2
	xor  a                                           ; $5dd8: $af
	ld   [$c919], a                                  ; $5dd9: $ea $19 $c9
	ld   a, [$c926]                                  ; $5ddc: $fa $26 $c9
	or   a                                           ; $5ddf: $b7
	jr   z, jr_010_5de7                              ; $5de0: $28 $05

	ld   a, $04                                      ; $5de2: $3e $04
	ld   [wGameSubstate], a                                  ; $5de4: $ea $a1 $c2

jr_010_5de7:
	ret                                              ; $5de7: $c9


CinematronSubstate2:
	call ClearOam                                       ; $5de8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5deb: $cd $d3 $2e
	call Call_010_61f3                               ; $5dee: $cd $f3 $61
	call Call_010_5eb3                               ; $5df1: $cd $b3 $5e
	ld   a, [$c919]                                  ; $5df4: $fa $19 $c9
	rst  JumpTable                                         ; $5df7: $df
	dw $6151
	dw $5e3b
	dw $5ec6
	dw $5ef2
	dw $5f03
	dw $5f7f
	dw $5f8e
	dw $5fb5


CinematronSubstate4:
	call ClearOam                                       ; $5e08: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5e0b: $cd $d3 $2e
	call Call_010_61f3                               ; $5e0e: $cd $f3 $61
	call Call_010_5eb3                               ; $5e11: $cd $b3 $5e
	ld   a, [$c919]                                  ; $5e14: $fa $19 $c9
	rst  JumpTable                                         ; $5e17: $df
	dw $5fe9
	dw $6151
	dw $5ff1
	dw $610b
	dw $612e
	dw $5e24


	ld   hl, $c920                                   ; $5e24: $21 $20 $c9
	dec  [hl]                                        ; $5e27: $35
	jr   nz, jr_010_5e3a                             ; $5e28: $20 $10

	call Call_010_6543                               ; $5e2a: $cd $43 $65
	call Call_010_61fa                               ; $5e2d: $cd $fa $61
	ld   a, $02                                      ; $5e30: $3e $02
	ld   [wGameSubstate], a                                  ; $5e32: $ea $a1 $c2
	ld   a, $01                                      ; $5e35: $3e $01
	ld   [$c919], a                                  ; $5e37: $ea $19 $c9

jr_010_5e3a:
	ret                                              ; $5e3a: $c9


	call Call_010_61b8                               ; $5e3b: $cd $b8 $61
	ld   a, [wInGameButtonsPressed]                                  ; $5e3e: $fa $10 $c2
	bit  0, a                                        ; $5e41: $cb $47
	jr   z, jr_010_5e67                              ; $5e43: $28 $22

	ld   a, [wCinematronChosenOption]                                  ; $5e45: $fa $1d $c9
	cp   $03                                         ; $5e48: $fe $03
	jr   nz, jr_010_5e53                             ; $5e4a: $20 $07

	ld   a, $21                                      ; $5e4c: $3e $21
	call PlaySoundEffect                                       ; $5e4e: $cd $df $1a
	jr   jr_010_5e7e                                 ; $5e51: $18 $2b

jr_010_5e53:
	call Call_010_5ea3                               ; $5e53: $cd $a3 $5e
	ld   [$c91f], a                                  ; $5e56: $ea $1f $c9
	call Call_010_6444                               ; $5e59: $cd $44 $64
	ld   hl, $c919                                   ; $5e5c: $21 $19 $c9
	inc  [hl]                                        ; $5e5f: $34
	ld   a, $23                                      ; $5e60: $3e $23
	call PlaySoundEffect                                       ; $5e62: $cd $df $1a
	jr   jr_010_5e83                                 ; $5e65: $18 $1c

jr_010_5e67:
	bit  1, a                                        ; $5e67: $cb $4f
	jr   z, jr_010_5ea2                              ; $5e69: $28 $37

	ld   a, $22                                      ; $5e6b: $3e $22
	call PlaySoundEffect                                       ; $5e6d: $cd $df $1a
	call Call_010_62a6                               ; $5e70: $cd $a6 $62
	ld   a, $03                                      ; $5e73: $3e $03
	ld   [wCinematronChosenOption], a                                  ; $5e75: $ea $1d $c9
	call Call_010_62b6                               ; $5e78: $cd $b6 $62
	call Call_010_6240                               ; $5e7b: $cd $40 $62

jr_010_5e7e:
	ld   a, $06                                      ; $5e7e: $3e $06
	ld   [$c919], a                                  ; $5e80: $ea $19 $c9

jr_010_5e83:
	ld   a, [$c91c]                                  ; $5e83: $fa $1c $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5e86: $cd $76 $30
	ld   a, $29                                      ; $5e89: $3e $29
	ld   de, AnimatedSpriteSpecs                                   ; $5e8b: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress

jr_010_5ea2:
	ret                                              ; $5ea2: $c9


Call_010_5ea3:
	ld   a, [wCinematronChosenOption]                                  ; $5ea3: $fa $1d $c9
	ld   c, a                                        ; $5ea6: $4f
	ld   b, $00                                      ; $5ea7: $06 $00
	ld   hl, $5eaf                                   ; $5ea9: $21 $af $5e
	add  hl, bc                                      ; $5eac: $09
	ld   a, [hl]                                     ; $5ead: $7e
	ret                                              ; $5eae: $c9


	add  hl, de                                      ; $5eaf: $19
	ld   [hl-], a                                    ; $5eb0: $32
	ld   c, e                                        ; $5eb1: $4b
	nop                                              ; $5eb2: $00

Call_010_5eb3:
	ld   hl, $c91e                                   ; $5eb3: $21 $1e $c9
	ld   a, [$c91f]                                  ; $5eb6: $fa $1f $c9
	cp   [hl]                                        ; $5eb9: $be
	jr   z, jr_010_5ec5                              ; $5eba: $28 $09

	jr   nc, jr_010_5ec1                             ; $5ebc: $30 $03

	dec  [hl]                                        ; $5ebe: $35
	jr   jr_010_5ec2                                 ; $5ebf: $18 $01

jr_010_5ec1:
	inc  [hl]                                        ; $5ec1: $34

jr_010_5ec2:
	call Call_010_6401                               ; $5ec2: $cd $01 $64

jr_010_5ec5:
	ret                                              ; $5ec5: $c9


	ld   a, [$c91a]                                  ; $5ec6: $fa $1a $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5ec9: $cd $76 $30

	M_FarCall Func_01_4143

	ld   a, c                                        ; $5ee0: $79
	cp   $69                                         ; $5ee1: $fe $69
	jr   c, jr_010_5ef1                              ; $5ee3: $38 $0c

	call Call_010_6474                               ; $5ee5: $cd $74 $64
	ld   hl, $c919                                   ; $5ee8: $21 $19 $c9
	inc  [hl]                                        ; $5eeb: $34
	ld   a, $04                                      ; $5eec: $3e $04
	ld   [$c920], a                                  ; $5eee: $ea $20 $c9

jr_010_5ef1:
	ret                                              ; $5ef1: $c9


	ld   hl, $c920                                   ; $5ef2: $21 $20 $c9
	dec  [hl]                                        ; $5ef5: $35
	jr   nz, jr_010_5f02                             ; $5ef6: $20 $0a

	call Call_010_6582                               ; $5ef8: $cd $82 $65
	call Call_010_6493                               ; $5efb: $cd $93 $64
	ld   hl, $c919                                   ; $5efe: $21 $19 $c9
	inc  [hl]                                        ; $5f01: $34

jr_010_5f02:
	ret                                              ; $5f02: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $5f03: $fa $10 $c2
	bit  4, a                                        ; $5f06: $cb $67
	jr   z, jr_010_5f16                              ; $5f08: $28 $0c

	call Call_010_65a6                               ; $5f0a: $cd $a6 $65
	cp   $58                                         ; $5f0d: $fe $58
	jp   z, Jump_010_5f7e                            ; $5f0f: $ca $7e $5f

	ld   b, $5c                                      ; $5f12: $06 $5c
	jr   jr_010_5f26                                 ; $5f14: $18 $10

jr_010_5f16:
	bit  5, a                                        ; $5f16: $cb $6f
	jr   z, jr_010_5f30                              ; $5f18: $28 $16

	call Call_010_65a6                               ; $5f1a: $cd $a6 $65
	cp   $2c                                         ; $5f1d: $fe $2c
	jp   z, Jump_010_5f7e                            ; $5f1f: $ca $7e $5f

	ld   b, $2c                                      ; $5f22: $06 $2c
	ld   c, $77                                      ; $5f24: $0e $77

jr_010_5f26:
	call Call_010_6584                               ; $5f26: $cd $84 $65
	ld   a, $20                                      ; $5f29: $3e $20
	call PlaySoundEffect                                       ; $5f2b: $cd $df $1a
	jr   jr_010_5f7e                                 ; $5f2e: $18 $4e

jr_010_5f30:
	bit  0, a                                        ; $5f30: $cb $47
	jr   z, jr_010_5f47                              ; $5f32: $28 $13

	call Call_010_65a6                               ; $5f34: $cd $a6 $65
	cp   $5c                                         ; $5f37: $fe $5c
	jr   z, jr_010_5f4b                              ; $5f39: $28 $10

	ld   a, $21                                      ; $5f3b: $3e $21
	call PlaySoundEffect                                       ; $5f3d: $cd $df $1a
	ld   a, $06                                      ; $5f40: $3e $06
	ld   [$c919], a                                  ; $5f42: $ea $19 $c9
	jr   jr_010_5f7e                                 ; $5f45: $18 $37

jr_010_5f47:
	bit  1, a                                        ; $5f47: $cb $4f
	jr   z, jr_010_5f7e                              ; $5f49: $28 $33

jr_010_5f4b:
	ld   a, $24                                      ; $5f4b: $3e $24
	call PlaySoundEffect                                       ; $5f4d: $cd $df $1a
	ld   a, [$c91a]                                  ; $5f50: $fa $1a $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f53: $cd $76 $30
	ld   a, $26                                      ; $5f56: $3e $26
	ld   de, AnimatedSpriteSpecs                                   ; $5f58: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress

	call Call_010_6474                               ; $5f6f: $cd $74 $64
	call Call_010_6562                               ; $5f72: $cd $62 $65
	ld   hl, $c919                                   ; $5f75: $21 $19 $c9
	inc  [hl]                                        ; $5f78: $34
	ld   a, $04                                      ; $5f79: $3e $04
	ld   [$c920], a                                  ; $5f7b: $ea $20 $c9

Jump_010_5f7e:
jr_010_5f7e:
	ret                                              ; $5f7e: $c9


	ld   hl, $c920                                   ; $5f7f: $21 $20 $c9
	dec  [hl]                                        ; $5f82: $35
	jr   nz, jr_010_5f8d                             ; $5f83: $20 $08

	call Call_010_6543                               ; $5f85: $cd $43 $65
	ld   a, $01                                      ; $5f88: $3e $01
	ld   [$c919], a                                  ; $5f8a: $ea $19 $c9

jr_010_5f8d:
	ret                                              ; $5f8d: $c9


	xor  a                                           ; $5f8e: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5f8f: $ea $62 $c3
	ld   a, $40                                      ; $5f92: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5f94: $ea $63 $c3
	ld   a, $03                                      ; $5f97: $3e $03
	ld   b, $1e                                      ; $5f99: $06 $1e
	ld   hl, $667c                                   ; $5f9b: $21 $7c $66
	ld   c, $01                                      ; $5f9e: $0e $01
	ld   de, $7000                                   ; $5fa0: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5fa3: $cd $48 $07
	ld   a, $08                                      ; $5fa6: $3e $08
	ld   [$c920], a                                  ; $5fa8: $ea $20 $c9
	ld   a, $04                                      ; $5fab: $3e $04
	ld   [$c921], a                                  ; $5fad: $ea $21 $c9
	ld   hl, $c919                                   ; $5fb0: $21 $19 $c9
	inc  [hl]                                        ; $5fb3: $34
	ret                                              ; $5fb4: $c9


	ld   hl, $c921                                   ; $5fb5: $21 $21 $c9
	dec  [hl]                                        ; $5fb8: $35
	jr   nz, jr_010_5fe8                             ; $5fb9: $20 $2d

	ld   [hl], $04                                   ; $5fbb: $36 $04
	ld   b, $00                                      ; $5fbd: $06 $00
	ld   c, $40                                      ; $5fbf: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $5fc1: $cd $32 $08
	ld   hl, $c920                                   ; $5fc4: $21 $20 $c9
	dec  [hl]                                        ; $5fc7: $35
	jr   nz, jr_010_5fe2                             ; $5fc8: $20 $18

	ld   a, $01                                      ; $5fca: $3e $01
	ld   hl, $7000                                   ; $5fcc: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5fcf: $11 $de $c2
	ld   bc, $0080                                   ; $5fd2: $01 $80 $00
	call FarMemCopy                                       ; $5fd5: $cd $b2 $09
	ld   bc, $003f                                   ; $5fd8: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5fdb: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $5fde: $21 $a1 $c2
	inc  [hl]                                        ; $5fe1: $34

jr_010_5fe2:
	ld   a, [$c920]                                  ; $5fe2: $fa $20 $c9
	call SafeSetAudVolForMultipleChannels                                       ; $5fe5: $cd $e0 $1c

jr_010_5fe8:
	ret                                              ; $5fe8: $c9


	call Call_010_6493                               ; $5fe9: $cd $93 $64
	ld   hl, $c919                                   ; $5fec: $21 $19 $c9
	inc  [hl]                                        ; $5fef: $34
	ret                                              ; $5ff0: $c9


	call InitWideTextBoxDimensions                                       ; $5ff1: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $5ff4: $cd $09 $14
	ld   bc, $1202                                   ; $5ff7: $01 $02 $12
	call SetKanjiTextBoxDimensions                                       ; $5ffa: $cd $24 $14
	ld   bc, $0000                                   ; $5ffd: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6000: $cd $34 $14
	ld   c, $81                                      ; $6003: $0e $81
	ld   de, $8800                                   ; $6005: $11 $00 $88
	ld   a, $06                                      ; $6008: $3e $06
	ld   hl, $d000                                   ; $600a: $21 $00 $d0
	ld   b, $40                                      ; $600d: $06 $40
	call EnqueueHDMATransfer                                       ; $600f: $cd $7c $02
	ld   a, [wWramBank]                                  ; $6012: $fa $93 $c2
	push af                                          ; $6015: $f5
	ld   a, $03                                      ; $6016: $3e $03
	ld   [wWramBank], a                                  ; $6018: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $601b: $e0 $70
	ld   a, [$c926]                                  ; $601d: $fa $26 $c9
	cp   $02                                         ; $6020: $fe $02
	jr   c, jr_010_603a                              ; $6022: $38 $16

	dec  a                                           ; $6024: $3d
	dec  a                                           ; $6025: $3d
	ld   [$c926], a                                  ; $6026: $ea $26 $c9
	ld   hl, $6076                                   ; $6029: $21 $76 $60
	ld   de, $da00                                   ; $602c: $11 $00 $da
	call Call_010_60a0                               ; $602f: $cd $a0 $60
	call Call_010_60a9                               ; $6032: $cd $a9 $60
	call Call_010_60a0                               ; $6035: $cd $a0 $60
	jr   jr_010_6058                                 ; $6038: $18 $1e

jr_010_603a:
	ld   a, [$c926]                                  ; $603a: $fa $26 $c9
	cp   $01                                         ; $603d: $fe $01
	jr   c, jr_010_6058                              ; $603f: $38 $17

	dec  a                                           ; $6041: $3d
	ld   [$c926], a                                  ; $6042: $ea $26 $c9
	ld   hl, $6074                                   ; $6045: $21 $74 $60
	ld   a, [hl+]                                    ; $6048: $2a
	ld   b, [hl]                                     ; $6049: $46
	ld   c, a                                        ; $604a: $4f
	ld   hl, $6070                                   ; $604b: $21 $70 $60
	add  hl, bc                                      ; $604e: $09
	ld   de, $da00                                   ; $604f: $11 $00 $da
	call Call_010_60c9                               ; $6052: $cd $c9 $60
	call Call_010_60a0                               ; $6055: $cd $a0 $60

jr_010_6058:
	ld   a, $00                                      ; $6058: $3e $00
	ld   [de], a                                     ; $605a: $12
	ld   hl, $da00                                   ; $605b: $21 $00 $da
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $605e: $cd $27 $10
	pop  af                                          ; $6061: $f1
	ld   [wWramBank], a                                  ; $6062: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6065: $e0 $70
	ld   hl, $c919                                   ; $6067: $21 $19 $c9
	inc  [hl]                                        ; $606a: $34
	xor  a                                           ; $606b: $af
	ld   [$c925], a                                  ; $606c: $ea $25 $c9
	ret                                              ; $606f: $c9

if def(VWF)

Data_10_6070::
	dw Data_10_6070entry00-Data_10_6070
	dw Data_10_6070entry01-Data_10_6070
	dw Data_10_6070entry02-Data_10_6070

Data_10_6070entry00::
	db $2c, $43, $41, $35, $42, $38, $43, $01, $01, $47, $10, $3b, $43, $48, $48, $39, $42, $00
Data_10_6070entry01::
	db $10, $42, $39, $4b, $10, $3d, $48, $39, $41, $47, $10, $3d, $42, $10, $47, $48, $43, $37, $3f, $f2, $00

	ds $60a0-@, 0

else
	ld   b, $00                                      ; $6070: $06 $00
	inc  c                                           ; $6072: $0c
	nop                                              ; $6073: $00
	ld   hl, $a300                                   ; $6074: $21 $00 $a3
	and  l                                           ; $6077: $a5
	rst  ToBoot                                         ; $6078: $c7
	ldh  [c], a                                      ; $6079: $e2
	ld   e, d                                        ; $607a: $5a
	nop                                              ; $607b: $00
	ld   [bc], a                                     ; $607c: $02
	inc  a                                           ; $607d: $3c
	dec  c                                           ; $607e: $0d
	ld   b, $37                                      ; $607f: $06 $37
	ld   b, $a8                                      ; $6081: $06 $a8
	inc  bc                                          ; $6083: $03
	db   $db                                         ; $6084: $db
	ld   a, c                                        ; $6085: $79
	inc  b                                           ; $6086: $04
	ld   b, l                                        ; $6087: $45
	ld   [bc], a                                     ; $6088: $02
	rst  JumpTable                                         ; $6089: $df
	ld   h, l                                        ; $608a: $65
	adc  h                                           ; $608b: $8c
	ld   h, l                                        ; $608c: $65
	ld   l, l                                        ; $608d: $6d
	sbc  a                                           ; $608e: $9f
	dec  c                                           ; $608f: $0d
	nop                                              ; $6090: $00
	sbc  $a5                                         ; $6091: $de $a5
	push af                                          ; $6093: $f5
	ret                                              ; $6094: $c9


	inc  bc                                          ; $6095: $03
	ld   l, e                                        ; $6096: $6b
	ld   a, c                                        ; $6097: $79
	inc  b                                           ; $6098: $04
	ld   b, l                                        ; $6099: $45
	sbc  d                                           ; $609a: $9a
	adc  h                                           ; $609b: $8c
	ld   h, l                                        ; $609c: $65
	ld   l, l                                        ; $609d: $6d
	sbc  a                                           ; $609e: $9f
	nop                                              ; $609f: $00

endc

Call_010_60a0:
jr_010_60a0:
	ld   a, [hl+]                                    ; $60a0: $2a
	or   a                                           ; $60a1: $b7
	jr   z, jr_010_60a8                              ; $60a2: $28 $04

	ld   [de], a                                     ; $60a4: $12
	inc  de                                          ; $60a5: $13
	jr   jr_010_60a0                                 ; $60a6: $18 $f8

jr_010_60a8:
	ret                                              ; $60a8: $c9


; DE -
Call_010_60a9:
	push hl                                          ; $60a9: $e5
	push de                                          ; $60aa: $d5

	ld   a, [$cc95]                                  ; $60ab: $fa $95 $cc
	call ConvertAintoBCD                                       ; $60ae: $cd $7d $0d

; C = 1s, B = 10s, trash 100s
	ld   c, a                                        ; $60b1: $4f
	pop  af                                          ; $60b2: $f1
	ld   b, a                                        ; $60b3: $47
	pop  af                                          ; $60b4: $f1

	pop  de                                          ; $60b5: $d1
	pop  hl                                          ; $60b6: $e1

; Jump if 10s == 0
	ld   a, b                                        ; $60b7: $78
	or   a                                           ; $60b8: $b7
	jr   z, .store1s                              ; $60b9: $28 $08

	cp   10                                         ; $60bb: $fe $0a
	jr   z, .store1s                              ; $60bd: $28 $04

;
	add  $11                                         ; $60bf: $c6 $11
	ld   [de], a                                     ; $60c1: $12
	inc  de                                          ; $60c2: $13

.store1s:
	ld   a, c                                        ; $60c3: $79
	add  $11                                         ; $60c4: $c6 $11
	ld   [de], a                                     ; $60c6: $12
	inc  de                                          ; $60c7: $13
	ret                                              ; $60c8: $c9


Call_010_60c9:
	push hl                                          ; $60c9: $e5
	push de                                          ; $60ca: $d5
	ld   hl, $cc96                                   ; $60cb: $21 $96 $cc
	ld   a, [hl+]                                    ; $60ce: $2a
	ld   h, [hl]                                     ; $60cf: $66
	ld   l, a                                        ; $60d0: $6f
	call Call_010_664b                               ; $60d1: $cd $4b $66
	ld   l, a                                        ; $60d4: $6f
	pop  af                                          ; $60d5: $f1
	ld   h, a                                        ; $60d6: $67
	pop  af                                          ; $60d7: $f1
	ld   c, a                                        ; $60d8: $4f
	pop  af                                          ; $60d9: $f1
	ld   b, a                                        ; $60da: $47
	pop  af                                          ; $60db: $f1
	pop  de                                          ; $60dc: $d1
	or   a                                           ; $60dd: $b7
	jr   z, jr_010_60e9                              ; $60de: $28 $09

	add  $11                                         ; $60e0: $c6 $11
	ld   [de], a                                     ; $60e2: $12
	inc  de                                          ; $60e3: $13
	ld   a, b                                        ; $60e4: $78
	ld   b, $ff                                      ; $60e5: $06 $ff
	jr   jr_010_60ec                                 ; $60e7: $18 $03

jr_010_60e9:
	ld   a, b                                        ; $60e9: $78
	ld   b, $00                                      ; $60ea: $06 $00

jr_010_60ec:
	call Call_010_60fd                               ; $60ec: $cd $fd $60
	ld   a, c                                        ; $60ef: $79
	call Call_010_60fd                               ; $60f0: $cd $fd $60
	ld   a, h                                        ; $60f3: $7c
	call Call_010_60fd                               ; $60f4: $cd $fd $60
	ld   a, l                                        ; $60f7: $7d
	call Call_010_60fd                               ; $60f8: $cd $fd $60
	pop  hl                                          ; $60fb: $e1
	ret                                              ; $60fc: $c9


Call_010_60fd:
	bit  0, b                                        ; $60fd: $cb $40
	jr   nz, jr_010_6104                             ; $60ff: $20 $03

	or   a                                           ; $6101: $b7
	jr   z, jr_010_610a                              ; $6102: $28 $06

jr_010_6104:
	add  $11                                         ; $6104: $c6 $11
	ld   [de], a                                     ; $6106: $12
	inc  de                                          ; $6107: $13
	ld   b, $ff                                      ; $6108: $06 $ff

jr_010_610a:
	ret                                              ; $610a: $c9


	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $610b: $cd $71 $14
	or   a                                           ; $610e: $b7
	jp   nz, Jump_010_6117                           ; $610f: $c2 $17 $61

	ld   hl, $c919                                   ; $6112: $21 $19 $c9
	inc  [hl]                                        ; $6115: $34
	ret                                              ; $6116: $c9


Jump_010_6117:
	ld   a, [wInGameButtonsHeld]                                  ; $6117: $fa $0f $c2
	and  $82                                         ; $611a: $e6 $82
	jr   nz, jr_010_6125                             ; $611c: $20 $07

	ld   hl, $c925                                   ; $611e: $21 $25 $c9
	dec  [hl]                                        ; $6121: $35
	bit  7, [hl]                                     ; $6122: $cb $7e
	ret  z                                           ; $6124: $c8

jr_010_6125:
	ld   a, [sTextSpeedBaseCounter]                                  ; $6125: $fa $b3 $b1
	ld   [$c925], a                                  ; $6128: $ea $25 $c9
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $612b: $c3 $55 $10


	call Call_010_6666                               ; $612e: $cd $66 $66
	jr   nz, jr_010_6150                             ; $6131: $20 $1d

	ld   a, $02                                      ; $6133: $3e $02
	ld   [$c919], a                                  ; $6135: $ea $19 $c9
	ld   a, [$c926]                                  ; $6138: $fa $26 $c9
	or   a                                           ; $613b: $b7
	jr   nz, jr_010_6150                             ; $613c: $20 $12

	ld   a, $24                                      ; $613e: $3e $24
	call PlaySoundEffect                                       ; $6140: $cd $df $1a
	call Call_010_6474                               ; $6143: $cd $74 $64
	ld   a, $05                                      ; $6146: $3e $05
	ld   [$c919], a                                  ; $6148: $ea $19 $c9
	ld   a, $04                                      ; $614b: $3e $04
	ld   [$c920], a                                  ; $614d: $ea $20 $c9

jr_010_6150:
	ret                                              ; $6150: $c9


	ld   hl, $c921                                   ; $6151: $21 $21 $c9
	dec  [hl]                                        ; $6154: $35
	jr   nz, jr_010_617e                             ; $6155: $20 $27

	ld   [hl], $04                                   ; $6157: $36 $04
	ld   b, $00                                      ; $6159: $06 $00
	ld   c, $40                                      ; $615b: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $615d: $cd $32 $08
	ld   hl, $c920                                   ; $6160: $21 $20 $c9
	dec  [hl]                                        ; $6163: $35
	jr   nz, jr_010_617e                             ; $6164: $20 $18

	ld   a, $1e                                      ; $6166: $3e $1e
	ld   hl, $667c                                   ; $6168: $21 $7c $66
	ld   de, wBGPalettes                                   ; $616b: $11 $de $c2
	ld   bc, $0080                                   ; $616e: $01 $80 $00
	call FarMemCopy                                       ; $6171: $cd $b2 $09
	ld   bc, $003f                                   ; $6174: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6177: $cd $aa $04
	ld   hl, $c919                                   ; $617a: $21 $19 $c9
	inc  [hl]                                        ; $617d: $34

jr_010_617e:
	ret                                              ; $617e: $c9


CinematronSubstate3_SelectedOption:
; Turn off LCD and mute song
	call TurnOffLCD                                                 ; $617f

	ld   a, $00                                                     ; $6182
	call PlaySong                                                   ; $6184
	
; Branch based on opt chosen, returning to the 'main init' state
	ld   a, [wCinematronChosenOption]                               ; $6187
	rst  JumpTable                                                  ; $618a
	dw .pocketSakuraComms
	dw .gameboyComms
	dw .tvComms
	dw .returnState

.pocketSakuraComms:
	ld   h, GS_CINEMATRON                                           ; $6193
	ld   l, $01                                                     ; $6195
	call SetPocketSakuraCommsState                                  ; $6197
	ret                                                             ; $619a

.gameboyComms:
	ld   h, GS_CINEMATRON                                           ; $619b
	ld   l, $01                                                     ; $619d
	call SetGameboyCommsState                                       ; $619f
	ret                                                             ; $61a2

.tvComms:
	ld   h, GS_CINEMATRON                                           ; $61a3
	ld   l, $01                                                     ; $61a5
	call SetTVCommsState                                            ; $61a7
	ret                                                             ; $61aa

.returnState:
	ld   a, [wCinematronReturnState]                                ; $61ab
	ld   [wGameState], a                                            ; $61ae
	ld   a, [wCinematronReturnSubstate]                             ; $61b1
	ld   [wGameSubstate], a                                         ; $61b4
	ret                                                             ; $61b7


Call_010_61b8:
	call Call_010_62a6                               ; $61b8: $cd $a6 $62
	ld   hl, wCinematronChosenOption                                   ; $61bb: $21 $1d $c9
	ld   a, [wInGameButtonsPressed]                                  ; $61be: $fa $10 $c2
	bit  6, a                                        ; $61c1: $cb $77
	jr   z, jr_010_61d5                              ; $61c3: $28 $10

jr_010_61c5:
	dec  [hl]                                        ; $61c5: $35
	call Call_010_66d3                               ; $61c6: $cd $d3 $66
	jr   nz, jr_010_61c5                             ; $61c9: $20 $fa

	ld   a, [hl]                                     ; $61cb: $7e
	cp   $ff                                         ; $61cc: $fe $ff
	jr   nz, jr_010_61e7                             ; $61ce: $20 $17

	ld   a, $03                                      ; $61d0: $3e $03
	ld   [hl], a                                     ; $61d2: $77
	jr   jr_010_61e7                                 ; $61d3: $18 $12

jr_010_61d5:
	bit  7, a                                        ; $61d5: $cb $7f
	jr   z, jr_010_61ec                              ; $61d7: $28 $13

jr_010_61d9:
	inc  [hl]                                        ; $61d9: $34
	call Call_010_66d3                               ; $61da: $cd $d3 $66
	jr   nz, jr_010_61d9                             ; $61dd: $20 $fa

	ld   a, [hl]                                     ; $61df: $7e
	cp   $04                                         ; $61e0: $fe $04
	jr   nz, jr_010_61e7                             ; $61e2: $20 $03

	ld   a, $00                                      ; $61e4: $3e $00
	ld   [hl], a                                     ; $61e6: $77

jr_010_61e7:
	ld   a, $20                                      ; $61e7: $3e $20
	call PlaySoundEffect                                       ; $61e9: $cd $df $1a

jr_010_61ec:
	call Call_010_62b6                               ; $61ec: $cd $b6 $62
	call Call_010_6240                               ; $61ef: $cd $40 $62
	ret                                              ; $61f2: $c9


Call_010_61f3:
	call Call_010_6272                               ; $61f3: $cd $72 $62
	call Call_010_65c2                               ; $61f6: $cd $c2 $65
	ret                                              ; $61f9: $c9


Call_010_61fa:
	ld   a, [$c91c]                                  ; $61fa: $fa $1c $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $61fd: $cd $76 $30
	call Call_010_625e                               ; $6200: $cd $5e $62
	ld   a, $28                                      ; $6203: $3e $28
	ld   de, AnimatedSpriteSpecs                                   ; $6205: $11 $80 $71
	push af                                          ; $6208: $f5
	ld   a, $03                                      ; $6209: $3e $03
	ld   [wFarCallAddr], a                                  ; $620b: $ea $98 $c2
	ld   a, $41                                      ; $620e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6210: $ea $99 $c2
	ld   a, $01                                      ; $6213: $3e $01
	ld   [wFarCallBank], a                                  ; $6215: $ea $9a $c2
	pop  af                                          ; $6218: $f1
	call FarCall                                       ; $6219: $cd $62 $09
	ret                                              ; $621c: $c9


	ld   a, [$c91c]                                  ; $621d: $fa $1c $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6220: $cd $76 $30
	call Call_010_625e                               ; $6223: $cd $5e $62
	ld   a, $00                                      ; $6226: $3e $00
	ld   de, AnimatedSpriteSpecs                                   ; $6228: $11 $80 $71
	push af                                          ; $622b: $f5
	ld   a, $03                                      ; $622c: $3e $03
	ld   [wFarCallAddr], a                                  ; $622e: $ea $98 $c2
	ld   a, $41                                      ; $6231: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6233: $ea $99 $c2
	ld   a, $01                                      ; $6236: $3e $01
	ld   [wFarCallBank], a                                  ; $6238: $ea $9a $c2
	pop  af                                          ; $623b: $f1
	call FarCall                                       ; $623c: $cd $62 $09
	ret                                              ; $623f: $c9


Call_010_6240:
	ld   a, [$c91c]                                  ; $6240: $fa $1c $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6243: $cd $76 $30
	call Call_010_625e                               ; $6246: $cd $5e $62
	push af                                          ; $6249: $f5
	ld   a, $2f                                      ; $624a: $3e $2f
	ld   [wFarCallAddr], a                                  ; $624c: $ea $98 $c2
	ld   a, $41                                      ; $624f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6251: $ea $99 $c2
	ld   a, $01                                      ; $6254: $3e $01
	ld   [wFarCallBank], a                                  ; $6256: $ea $9a $c2
	pop  af                                          ; $6259: $f1
	call FarCall                                       ; $625a: $cd $62 $09
	ret                                              ; $625d: $c9


Call_010_625e:
	push hl                                          ; $625e: $e5
	ld   a, [wCinematronChosenOption]                                  ; $625f: $fa $1d $c9
	ld   c, a                                        ; $6262: $4f
	ld   b, $00                                      ; $6263: $06 $00
	ld   hl, $626e                                   ; $6265: $21 $6e $62
	add  hl, bc                                      ; $6268: $09
	ld   c, [hl]                                     ; $6269: $4e
	ld   b, $61                                      ; $626a: $06 $61
	pop  hl                                          ; $626c: $e1
	ret                                              ; $626d: $c9


	ld   d, $26                                      ; $626e: $16 $26
	ld   [hl], $4e                                   ; $6270: $36 $4e

Call_010_6272:
	ld   a, [$c919]                                  ; $6272: $fa $19 $c9
	cp   $01                                         ; $6275: $fe $01
	jr   z, jr_010_6291                              ; $6277: $28 $18

	cp   $00                                         ; $6279: $fe $00
	jr   z, jr_010_6291                              ; $627b: $28 $14

	ld   a, [wGameSubstate]                                  ; $627d: $fa $a1 $c2
	cp   $04                                         ; $6280: $fe $04
	jr   z, jr_010_6291                              ; $6282: $28 $0d

	call Call_010_6292                               ; $6284: $cd $92 $62
	ld   a, $0a                                      ; $6287: $3e $0a
	ld   [wSpriteGroup], a                                  ; $6289: $ea $1a $c2
	ld   a, $62                                      ; $628c: $3e $62
	call LoadSpriteFromMainTable                                       ; $628e: $cd $16 $0e

jr_010_6291:
	ret                                              ; $6291: $c9


Call_010_6292:
	push hl                                          ; $6292: $e5
	ld   a, [wCinematronChosenOption]                                  ; $6293: $fa $1d $c9
	ld   c, a                                        ; $6296: $4f
	ld   b, $00                                      ; $6297: $06 $00
	ld   hl, $62a2                                   ; $6299: $21 $a2 $62
	add  hl, bc                                      ; $629c: $09
	ld   c, [hl]                                     ; $629d: $4e
	ld   b, $68                                      ; $629e: $06 $68
	pop  hl                                          ; $62a0: $e1
	ret                                              ; $62a1: $c9


	db   $10                                         ; $62a2: $10
	jr   nz, jr_010_62d5                             ; $62a3: $20 $30

	ld   c, b                                        ; $62a5: $48

Call_010_62a6:
	call Call_010_62c6                               ; $62a6: $cd $c6 $62
	call Call_010_62dd                               ; $62a9: $cd $dd $62
	ld   a, $03                                      ; $62ac: $3e $03
	ld   c, $81                                      ; $62ae: $0e $81
	ld   b, $04                                      ; $62b0: $06 $04
	call EnqueueHDMATransfer                                       ; $62b2: $cd $7c $02
	ret                                              ; $62b5: $c9


Call_010_62b6:
	call Call_010_62c6                               ; $62b6: $cd $c6 $62
	call Call_010_62ed                               ; $62b9: $cd $ed $62
	ld   a, $03                                      ; $62bc: $3e $03

jr_010_62be:
	ld   c, $81                                      ; $62be: $0e $81
	ld   b, $04                                      ; $62c0: $06 $04
	call EnqueueHDMATransfer                                       ; $62c2: $cd $7c $02
	ret                                              ; $62c5: $c9


Call_010_62c6:
	ld   a, [wCinematronChosenOption]                                  ; $62c6: $fa $1d $c9
	add  a                                           ; $62c9: $87
	ld   c, a                                        ; $62ca: $4f
	ld   b, $00                                      ; $62cb: $06 $00
	ld   hl, $62d5                                   ; $62cd: $21 $d5 $62
	add  hl, bc                                      ; $62d0: $09
	ld   a, [hl+]                                    ; $62d1: $2a
	ld   d, [hl]                                     ; $62d2: $56
	ld   e, a                                        ; $62d3: $5f
	ret                                              ; $62d4: $c9


jr_010_62d5:
	ld   b, b                                        ; $62d5: $40

jr_010_62d6:
	sbc  b                                           ; $62d6: $98
	add  b                                           ; $62d7: $80
	sbc  b                                           ; $62d8: $98
	ret  nz                                          ; $62d9: $c0

	sbc  b                                           ; $62da: $98
	jr   nz, @-$65                                   ; $62db: $20 $99

Call_010_62dd:
	ld   hl, $62e5                                   ; $62dd: $21 $e5 $62
	add  hl, bc                                      ; $62e0: $09
	ld   a, [hl+]                                    ; $62e1: $2a
	ld   h, [hl]                                     ; $62e2: $66
	ld   l, a                                        ; $62e3: $6f
	ret                                              ; $62e4: $c9


	ld   b, b                                        ; $62e5: $40
	ret  nc                                          ; $62e6: $d0

	add  b                                           ; $62e7: $80
	ret  nc                                          ; $62e8: $d0

	ret  nz                                          ; $62e9: $c0

	ret  nc                                          ; $62ea: $d0

	jr   nz, jr_010_62be                             ; $62eb: $20 $d1

Call_010_62ed:
	ld   hl, $62f5                                   ; $62ed: $21 $f5 $62
	add  hl, bc                                      ; $62f0: $09
	ld   a, [hl+]                                    ; $62f1: $2a
	ld   h, [hl]                                     ; $62f2: $66
	ld   l, a                                        ; $62f3: $6f
	ret                                              ; $62f4: $c9


	ld   b, b                                        ; $62f5: $40
	ret  c                                           ; $62f6: $d8

	add  b                                           ; $62f7: $80
	ret  c                                           ; $62f8: $d8

	ret  nz                                          ; $62f9: $c0

	ret  c                                           ; $62fa: $d8

	jr   nz, jr_010_62d6                             ; $62fb: $20 $d9

Call_010_62fd:
	ld   de, $d800                                   ; $62fd: $11 $00 $d8
	ld   hl, $d000                                   ; $6300: $21 $00 $d0
	ld   bc, $0160                                   ; $6303: $01 $60 $01
	call MemCopy                                       ; $6306: $cd $a9 $09
	ld   de, $d84e                                   ; $6309: $11 $4e $d8
	ld   hl, $d014                                   ; $630c: $21 $14 $d0
	ld   bc, $0006                                   ; $630f: $01 $06 $00
	call MemCopy                                       ; $6312: $cd $a9 $09
	ld   de, $d86e                                   ; $6315: $11 $6e $d8
	ld   hl, $d034                                   ; $6318: $21 $34 $d0
	ld   bc, $0006                                   ; $631b: $01 $06 $00
	call MemCopy                                       ; $631e: $cd $a9 $09
	ld   de, $d88e                                   ; $6321: $11 $8e $d8
	ld   hl, $d054                                   ; $6324: $21 $54 $d0
	ld   bc, $0006                                   ; $6327: $01 $06 $00
	call MemCopy                                       ; $632a: $cd $a9 $09
	ld   de, $d8ae                                   ; $632d: $11 $ae $d8
	ld   hl, $d074                                   ; $6330: $21 $74 $d0
	ld   bc, $0006                                   ; $6333: $01 $06 $00
	call MemCopy                                       ; $6336: $cd $a9 $09
	ld   a, [wTVAdapterDisconnected]                                  ; $6339: $fa $24 $c9
	or   a                                           ; $633c: $b7
	jr   z, jr_010_6357                              ; $633d: $28 $18

	ld   de, $d88e                                   ; $633f: $11 $8e $d8
	ld   hl, $d194                                   ; $6342: $21 $94 $d1
	ld   bc, $0006                                   ; $6345: $01 $06 $00
	call MemCopy                                       ; $6348: $cd $a9 $09
	ld   de, $d8ae                                   ; $634b: $11 $ae $d8
	ld   hl, $d1b4                                   ; $634e: $21 $b4 $d1
	ld   bc, $0006                                   ; $6351: $01 $06 $00
	call MemCopy                                       ; $6354: $cd $a9 $09

jr_010_6357:
	ld   de, $d8ce                                   ; $6357: $11 $ce $d8
	ld   hl, $d094                                   ; $635a: $21 $94 $d0
	ld   bc, $0006                                   ; $635d: $01 $06 $00
	call MemCopy                                       ; $6360: $cd $a9 $09
	ld   de, $d8ee                                   ; $6363: $11 $ee $d8
	ld   hl, $d0b4                                   ; $6366: $21 $b4 $d0
	ld   bc, $0006                                   ; $6369: $01 $06 $00
	call MemCopy                                       ; $636c: $cd $a9 $09
	ld   de, $d92e                                   ; $636f: $11 $2e $d9
	ld   hl, $d0d4                                   ; $6372: $21 $d4 $d0
	ld   bc, $0006                                   ; $6375: $01 $06 $00
	call MemCopy                                       ; $6378: $cd $a9 $09
	ld   de, $d94e                                   ; $637b: $11 $4e $d9
	ld   hl, $d0f4                                   ; $637e: $21 $f4 $d0
	ld   bc, $0006                                   ; $6381: $01 $06 $00
	call MemCopy                                       ; $6384: $cd $a9 $09
	ret                                              ; $6387: $c9


Call_010_6388:
	ld   de, $dcc0                                   ; $6388: $11 $c0 $dc
	ld   hl, $d180                                   ; $638b: $21 $80 $d1
	ld   bc, $00b4                                   ; $638e: $01 $b4 $00
	call MemCopy                                       ; $6391: $cd $a9 $09
	ld   de, $dc00                                   ; $6394: $11 $00 $dc
	ld   hl, $d580                                   ; $6397: $21 $80 $d5
	ld   bc, $00b4                                   ; $639a: $01 $b4 $00
	call MemCopy                                       ; $639d: $cd $a9 $09
	ld   de, $dce4                                   ; $63a0: $11 $e4 $dc
	ld   hl, $d254                                   ; $63a3: $21 $54 $d2
	ld   bc, $000c                                   ; $63a6: $01 $0c $00
	call MemCopy                                       ; $63a9: $cd $a9 $09
	ld   de, $dd04                                   ; $63ac: $11 $04 $dd
	ld   hl, $d274                                   ; $63af: $21 $74 $d2
	ld   bc, $000c                                   ; $63b2: $01 $0c $00
	call MemCopy                                       ; $63b5: $cd $a9 $09
	ld   de, $dd24                                   ; $63b8: $11 $24 $dd
	ld   hl, $d294                                   ; $63bb: $21 $94 $d2
	ld   bc, $000c                                   ; $63be: $01 $0c $00
	call MemCopy                                       ; $63c1: $cd $a9 $09
	ld   de, $dd44                                   ; $63c4: $11 $44 $dd
	ld   hl, $d2b4                                   ; $63c7: $21 $b4 $d2
	ld   bc, $000c                                   ; $63ca: $01 $0c $00
	call MemCopy                                       ; $63cd: $cd $a9 $09
	ld   de, $dc24                                   ; $63d0: $11 $24 $dc
	ld   hl, $d654                                   ; $63d3: $21 $54 $d6
	ld   bc, $000c                                   ; $63d6: $01 $0c $00
	call MemCopy                                       ; $63d9: $cd $a9 $09
	ld   de, $dc44                                   ; $63dc: $11 $44 $dc
	ld   hl, $d674                                   ; $63df: $21 $74 $d6
	ld   bc, $000c                                   ; $63e2: $01 $0c $00
	call MemCopy                                       ; $63e5: $cd $a9 $09
	ld   de, $dc64                                   ; $63e8: $11 $64 $dc
	ld   hl, $d694                                   ; $63eb: $21 $94 $d6
	ld   bc, $000c                                   ; $63ee: $01 $0c $00
	call MemCopy                                       ; $63f1: $cd $a9 $09
	ld   de, $dc84                                   ; $63f4: $11 $84 $dc
	ld   hl, $d6b4                                   ; $63f7: $21 $b4 $d6
	ld   bc, $000c                                   ; $63fa: $01 $0c $00
	call MemCopy                                       ; $63fd: $cd $a9 $09
	ret                                              ; $6400: $c9


Call_010_6401:
	ld   a, [wWramBank]                                  ; $6401: $fa $93 $c2
	push af                                          ; $6404: $f5
	ld   a, $03                                      ; $6405: $3e $03
	ld   [wWramBank], a                                  ; $6407: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $640a: $e0 $70
	ld   a, [$c91e]                                  ; $640c: $fa $1e $c9
	ld   c, a                                        ; $640f: $4f
	ld   b, $00                                      ; $6410: $06 $00
	ld   hl, $0546                                   ; $6412: $21 $46 $05
	add  hl, bc                                      ; $6415: $09
	call $0da8                                       ; $6416: $cd $a8 $0d
	ld   hl, $d40a                                   ; $6419: $21 $0a $d4
	ld   de, $d42a                                   ; $641c: $11 $2a $d4
	ld   c, $04                                      ; $641f: $0e $04

jr_010_6421:
	add  $04                                         ; $6421: $c6 $04
	ld   [hl-], a                                    ; $6423: $32
	add  $10                                         ; $6424: $c6 $10
	ld   [de], a                                     ; $6426: $12
	dec  de                                          ; $6427: $1b
	dec  c                                           ; $6428: $0d
	jr   z, jr_010_642e                              ; $6429: $28 $03

	pop  af                                          ; $642b: $f1
	jr   jr_010_6421                                 ; $642c: $18 $f3

jr_010_642e:
	ld   c, $80                                      ; $642e: $0e $80
	ld   de, $9800                                   ; $6430: $11 $00 $98
	ld   a, $03                                      ; $6433: $3e $03
	ld   hl, $d400                                   ; $6435: $21 $00 $d4
	ld   b, $03                                      ; $6438: $06 $03
	call EnqueueHDMATransfer                                       ; $643a: $cd $7c $02
	pop  af                                          ; $643d: $f1
	ld   [wWramBank], a                                  ; $643e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6441: $e0 $70
	ret                                              ; $6443: $c9


Call_010_6444:
	ld   a, [wCinematronChosenOption]                                  ; $6444: $fa $1d $c9
	ld   c, a                                        ; $6447: $4f
	ld   b, $00                                      ; $6448: $06 $00
	ld   hl, $646f                                   ; $644a: $21 $6f $64
	add  hl, bc                                      ; $644d: $09
	ld   a, [hl]                                     ; $644e: $7e
	push af                                          ; $644f: $f5
	ld   a, [$c91a]                                  ; $6450: $fa $1a $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6453: $cd $76 $30
	pop  af                                          ; $6456: $f1
	ld   de, AnimatedSpriteSpecs                                   ; $6457: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $646e: $c9


	ld   hl, $2322                                   ; $646f: $21 $22 $23
	inc  h                                           ; $6472: $24

Stub_10_6473:
	ret                                              ; $6473: $c9


Call_010_6474:
	ld   c, $80                                      ; $6474: $0e $80
	ld   de, $9980                                   ; $6476: $11 $80 $99
	ld   a, $03                                      ; $6479: $3e $03
	ld   hl, $dc00                                   ; $647b: $21 $00 $dc
	ld   b, $0c                                      ; $647e: $06 $0c
	call EnqueueHDMATransfer                                       ; $6480: $cd $7c $02
	ld   c, $81                                      ; $6483: $0e $81
	ld   de, $9980                                   ; $6485: $11 $80 $99
	ld   a, $03                                      ; $6488: $3e $03
	ld   hl, $dcc0                                   ; $648a: $21 $c0 $dc
	ld   b, $0c                                      ; $648d: $06 $0c
	call EnqueueHDMATransfer                                       ; $648f: $cd $7c $02
	ret                                              ; $6492: $c9


Call_010_6493:
	ld   a, [wWramBank]                                  ; $6493: $fa $93 $c2
	push af                                          ; $6496: $f5
	ld   a, $03                                      ; $6497: $3e $03
	ld   [wWramBank], a                                  ; $6499: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $649c: $e0 $70
	ld   de, $de40                                   ; $649e: $11 $40 $de
	ld   hl, $d240                                   ; $64a1: $21 $40 $d2
	ld   bc, $00b4                                   ; $64a4: $01 $b4 $00
	call MemCopy                                       ; $64a7: $cd $a9 $09
	ld   de, $dd80                                   ; $64aa: $11 $80 $dd
	ld   hl, $d640                                   ; $64ad: $21 $40 $d6
	ld   bc, $00b4                                   ; $64b0: $01 $b4 $00
	call MemCopy                                       ; $64b3: $cd $a9 $09
	ld   a, [wGameSubstate]                                  ; $64b6: $fa $a1 $c2
	cp   $04                                         ; $64b9: $fe $04
	jr   z, jr_010_64f5                              ; $64bb: $28 $38

	call Call_010_65fd                               ; $64bd: $cd $fd $65
	ld   a, [wCinematronChosenOption]                                  ; $64c0: $fa $1d $c9
	add  a                                           ; $64c3: $87
	ld   c, a                                        ; $64c4: $4f
	ld   b, $00                                      ; $64c5: $06 $00
	push bc                                          ; $64c7: $c5
	ld   hl, $651a                                   ; $64c8: $21 $1a $65
	add  hl, bc                                      ; $64cb: $09
	ld   a, [hl+]                                    ; $64cc: $2a
	ld   h, [hl]                                     ; $64cd: $66
	ld   l, a                                        ; $64ce: $6f
	ld   de, $dda2                                   ; $64cf: $11 $a2 $dd
	call Copy2RowsOf10hBytes                               ; $64d2: $cd $2a $65
	pop  bc                                          ; $64d5: $c1
	ld   hl, $6522                                   ; $64d6: $21 $22 $65
	add  hl, bc                                      ; $64d9: $09
	ld   a, [hl+]                                    ; $64da: $2a
	ld   h, [hl]                                     ; $64db: $66
	ld   l, a                                        ; $64dc: $6f
	ld   de, $de62                                   ; $64dd: $11 $62 $de
	call Copy2RowsOf10hBytes                               ; $64e0: $cd $2a $65
	ld   hl, $d740                                   ; $64e3: $21 $40 $d7
	ld   de, $dde2                                   ; $64e6: $11 $e2 $dd
	call Copy2RowsOf10hBytes                               ; $64e9: $cd $2a $65
	ld   hl, $d340                                   ; $64ec: $21 $40 $d3
	ld   de, $dea2                                   ; $64ef: $11 $a2 $de
	call Copy2RowsOf10hBytes                               ; $64f2: $cd $2a $65

jr_010_64f5:
	pop  af                                          ; $64f5: $f1
	ld   [wWramBank], a                                  ; $64f6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64f9: $e0 $70
	ld   c, $80                                      ; $64fb: $0e $80
	ld   de, $9980                                   ; $64fd: $11 $80 $99
	ld   a, $03                                      ; $6500: $3e $03
	ld   hl, $dd80                                   ; $6502: $21 $80 $dd
	ld   b, $0c                                      ; $6505: $06 $0c
	call EnqueueHDMATransfer                                       ; $6507: $cd $7c $02
	ld   c, $81                                      ; $650a: $0e $81
	ld   de, $9980                                   ; $650c: $11 $80 $99
	ld   a, $03                                      ; $650f: $3e $03
	ld   hl, $de40                                   ; $6511: $21 $40 $de
	ld   b, $0c                                      ; $6514: $06 $0c
	call EnqueueHDMATransfer                                       ; $6516: $cd $7c $02
	ret                                              ; $6519: $c9


	nop                                              ; $651a: $00
	rst  $10                                         ; $651b: $d7
	add  b                                           ; $651c: $80
	rst  $10                                         ; $651d: $d7
	ret  nz                                          ; $651e: $c0

	rst  $10                                         ; $651f: $d7
	db   $10                                         ; $6520: $10
	rst  $10                                         ; $6521: $d7
	nop                                              ; $6522: $00
	db   $d3                                         ; $6523: $d3
	add  b                                           ; $6524: $80
	db   $d3                                         ; $6525: $d3
	ret  nz                                          ; $6526: $c0

	db   $d3                                         ; $6527: $d3
	db   $10                                         ; $6528: $10
	db   $d3                                         ; $6529: $d3


; DE - dest addr
; HL - src addr
Copy2RowsOf10hBytes:
; Copy $10 bytes
	ld   bc, $0010                                                  ; $652a
	call MemCopy                                                    ; $652d

; Push HL+$10 (orig HL+$20)
	ld   bc, $0010                                                  ; $6530
	add  hl, bc                                                     ; $6533
	push hl                                                         ; $6534

; DE += $10 (orig DE+$20)
	ld   hl, $0010                                                  ; $6535
	add  hl, de                                                     ; $6538
	ld   e, l                                                       ; $6539
	ld   d, h                                                       ; $653a

; Copy another $10 bytes
	pop  hl                                                         ; $653b
	ld   bc, $0010                                                  ; $653c
	call MemCopy                                                    ; $653f
	ret                                                             ; $6542


Call_010_6543:
	ld   c, $80                                      ; $6543: $0e $80
	ld   de, $9980                                   ; $6545: $11 $80 $99
	ld   a, $03                                      ; $6548: $3e $03
	ld   hl, $d580                                   ; $654a: $21 $80 $d5
	ld   b, $0c                                      ; $654d: $06 $0c
	call EnqueueHDMATransfer                                       ; $654f: $cd $7c $02
	ld   c, $81                                      ; $6552: $0e $81
	ld   de, $9980                                   ; $6554: $11 $80 $99
	ld   a, $03                                      ; $6557: $3e $03
	ld   hl, $d180                                   ; $6559: $21 $80 $d1
	ld   b, $0c                                      ; $655c: $06 $0c
	call EnqueueHDMATransfer                                       ; $655e: $cd $7c $02
	ret                                              ; $6561: $c9


Call_010_6562:
	ld   a, [$c91b]                                  ; $6562: $fa $1b $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6565: $cd $76 $30
	ld   a, $00                                      ; $6568: $3e $00
	ld   de, AnimatedSpriteSpecs                                   ; $656a: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $6581: $c9


Call_010_6582:
	ld   b, $2c                                      ; $6582: $06 $2c

Call_010_6584:
	ld   a, [$c91b]                                  ; $6584: $fa $1b $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6587: $cd $76 $30
	ld   a, $25                                      ; $658a: $3e $25
	ld   c, $77                                      ; $658c: $0e $77
	ld   de, AnimatedSpriteSpecs                                   ; $658e: $11 $80 $71
	push af                                          ; $6591: $f5
	ld   a, $03                                      ; $6592: $3e $03
	ld   [wFarCallAddr], a                                  ; $6594: $ea $98 $c2
	ld   a, $41                                      ; $6597: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6599: $ea $99 $c2
	ld   a, $01                                      ; $659c: $3e $01
	ld   [wFarCallBank], a                                  ; $659e: $ea $9a $c2
	pop  af                                          ; $65a1: $f1
	call FarCall                                       ; $65a2: $cd $62 $09
	ret                                              ; $65a5: $c9


Call_010_65a6:
	ld   a, [$c91b]                                  ; $65a6: $fa $1b $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $65a9: $cd $76 $30
	push af                                          ; $65ac: $f5
	ld   a, $39                                      ; $65ad: $3e $39
	ld   [wFarCallAddr], a                                  ; $65af: $ea $98 $c2
	ld   a, $41                                      ; $65b2: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $65b4: $ea $99 $c2
	ld   a, $01                                      ; $65b7: $3e $01
	ld   [wFarCallBank], a                                  ; $65b9: $ea $9a $c2
	pop  af                                          ; $65bc: $f1
	call FarCall                                       ; $65bd: $cd $62 $09
	ld   a, b                                        ; $65c0: $78
	ret                                              ; $65c1: $c9


Call_010_65c2:
	ld   h, $00                                      ; $65c2: $26 $00
	ld   a, [$c91e]                                  ; $65c4: $fa $1e $c9
	or   a                                           ; $65c7: $b7
	jr   z, jr_010_65d1                              ; $65c8: $28 $07

	ld   h, a                                        ; $65ca: $67
	ld   l, $05                                      ; $65cb: $2e $05
	call HLequHdivModL                                       ; $65cd: $cd $fb $0b
	inc  h                                           ; $65d0: $24

jr_010_65d1:
	ld   bc, $4030                                   ; $65d1: $01 $30 $40
	ld   a, $0a                                      ; $65d4: $3e $0a
	ld   [wSpriteGroup], a                                  ; $65d6: $ea $1a $c2
	ld   a, $74                                      ; $65d9: $3e $74
	add  h                                           ; $65db: $84
	call LoadSpriteFromMainTable                                       ; $65dc: $cd $16 $0e
	ret                                              ; $65df: $c9


Call_010_65e0:
	ld   c, $00                                      ; $65e0: $0e $00
	ld   a, [$c941]                                  ; $65e2: $fa $41 $c9
	or   a                                           ; $65e5: $b7
	jr   z, jr_010_65f8                              ; $65e6: $28 $10

	ld   a, [$cc95]                                  ; $65e8: $fa $95 $cc
	or   a                                           ; $65eb: $b7
	jr   z, jr_010_65f0                              ; $65ec: $28 $02

	ld   c, $02                                      ; $65ee: $0e $02

jr_010_65f0:
	ld   hl, $cc96                                   ; $65f0: $21 $96 $cc
	ld   a, [hl+]                                    ; $65f3: $2a
	or   [hl]                                        ; $65f4: $b6
	jr   z, jr_010_65f8                              ; $65f5: $28 $01

	inc  c                                           ; $65f7: $0c

jr_010_65f8:
	ld   a, c                                        ; $65f8: $79
	ld   [$c926], a                                  ; $65f9: $ea $26 $c9
	ret                                              ; $65fc: $c9


Call_010_65fd:
	ld   hl, $dda1                                   ; $65fd: $21 $a1 $dd
	ld   b, $04                                      ; $6600: $06 $04
	ld   a, $65                                      ; $6602: $3e $65

jr_010_6604:
	ld   c, $12                                      ; $6604: $0e $12

jr_010_6606:
	ld   [hl+], a                                    ; $6606: $22
	dec  c                                           ; $6607: $0d
	jr   nz, jr_010_6606                             ; $6608: $20 $fc

	ld   de, $000e                                   ; $660a: $11 $0e $00
	add  hl, de                                      ; $660d: $19
	dec  b                                           ; $660e: $05
	jr   nz, jr_010_6604                             ; $660f: $20 $f3

	ret                                              ; $6611: $c9


Call_010_6612:
	push af                                          ; $6612: $f5
	ld   a, $4e                                      ; $6613: $3e $4e
	ld   [wFarCallAddr], a                                  ; $6615: $ea $98 $c2
	ld   a, $42                                      ; $6618: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $661a: $ea $99 $c2
	ld   a, $0a                                      ; $661d: $3e $0a
	ld   [wFarCallBank], a                                  ; $661f: $ea $9a $c2
	pop  af                                          ; $6622: $f1
	call FarCall                                       ; $6623: $cd $62 $09
	call Call_010_664b                               ; $6626: $cd $4b $66
	ld   hl, $9925                                   ; $6629: $21 $25 $99
	ld   de, $9945                                   ; $662c: $11 $45 $99
	call Call_010_6643                               ; $662f: $cd $43 $66
	pop  af                                          ; $6632: $f1
	call Call_010_6643                               ; $6633: $cd $43 $66
	pop  af                                          ; $6636: $f1
	call Call_010_6643                               ; $6637: $cd $43 $66
	pop  af                                          ; $663a: $f1
	call Call_010_6643                               ; $663b: $cd $43 $66
	pop  af                                          ; $663e: $f1
	call Call_010_6643                               ; $663f: $cd $43 $66
	ret                                              ; $6642: $c9


Call_010_6643:
	add  $24                                         ; $6643: $c6 $24
	ld   [hl-], a                                    ; $6645: $32
	add  $10                                         ; $6646: $c6 $10
	ld   [de], a                                     ; $6648: $12
	dec  de                                          ; $6649: $1b
	ret                                              ; $664a: $c9


Call_010_664b:
	ld   d, $00                                      ; $664b: $16 $00
	ld   bc, $d8f0                                   ; $664d: $01 $f0 $d8

jr_010_6650:
	ld   a, h                                        ; $6650: $7c
	cp   $27                                         ; $6651: $fe $27
	jr   c, jr_010_6660                              ; $6653: $38 $0b

	jr   nz, jr_010_665c                             ; $6655: $20 $05

	ld   a, l                                        ; $6657: $7d
	cp   $10                                         ; $6658: $fe $10
	jr   c, jr_010_6660                              ; $665a: $38 $04

jr_010_665c:
	add  hl, bc                                      ; $665c: $09
	inc  d                                           ; $665d: $14
	jr   jr_010_6650                                 ; $665e: $18 $f0

jr_010_6660:
	pop  bc                                          ; $6660: $c1
	push de                                          ; $6661: $d5
	push bc                                          ; $6662: $c5
	jp   $0da8                                       ; $6663: $c3 $a8 $0d


Call_010_6666:
	ld   a, [wInGameButtonsHeld]                                  ; $6666: $fa $0f $c2
	bit  1, a                                        ; $6669: $cb $4f
	jr   nz, jr_010_6699                             ; $666b: $20 $2c

	ld   a, [wInGameButtonsPressed]                                  ; $666d: $fa $10 $c2
	bit  0, a                                        ; $6670: $cb $47
	jr   nz, jr_010_6699                             ; $6672: $20 $25

	ld   hl, $cbe3                                   ; $6674: $21 $e3 $cb
	ld   b, $4c                                      ; $6677: $06 $4c
	ld   a, [hl]                                     ; $6679: $7e
	inc  [hl]                                        ; $667a: $34
	srl  a                                           ; $667b: $cb $3f
	srl  a                                           ; $667d: $cb $3f
	and  $07                                         ; $667f: $e6 $07
	ld   h, $00                                      ; $6681: $26 $00
	ld   l, a                                        ; $6683: $6f
	ld   de, $66a0                                   ; $6684: $11 $a0 $66
	add  hl, de                                      ; $6687: $19
	ld   a, [hl]                                     ; $6688: $7e
	add  $7c                                         ; $6689: $c6 $7c
	ld   c, a                                        ; $668b: $4f
	ld   a, $0a                                      ; $668c: $3e $0a
	ld   [wSpriteGroup], a                                  ; $668e: $ea $1a $c2
	ld   a, $73                                      ; $6691: $3e $73
	call LoadSpriteFromMainTable                                       ; $6693: $cd $16 $0e
	or   $ff                                         ; $6696: $f6 $ff
	ret                                              ; $6698: $c9


jr_010_6699:
	ld   a, $01                                      ; $6699: $3e $01
	call PlaySoundEffect                                       ; $669b: $cd $df $1a
	xor  a                                           ; $669e: $af
	ret                                              ; $669f: $c9


	nop                                              ; $66a0: $00
	ld   bc, $0302                                   ; $66a1: $01 $02 $03
	inc  b                                           ; $66a4: $04
	inc  bc                                          ; $66a5: $03
	ld   [bc], a                                     ; $66a6: $02
	db $01 
	
	
Func_10_66a8:
	ld   a, [wTVAdapterDisconnected] ; $66a8: $fa $24 $c9
	or   a                                           ; $66ab: $b7
	jr   z, jr_010_66d2                              ; $66ac: $28 $24

	ld   hl, $d514                                   ; $66ae: $21 $14 $d5
	ld   de, $d4cd                                   ; $66b1: $11 $cd $d4
	call Call_010_66e5                               ; $66b4: $cd $e5 $66
	ld   hl, $d114                                   ; $66b7: $21 $14 $d1
	ld   de, $d0cd                                   ; $66ba: $11 $cd $d0
	call Call_010_66e5                               ; $66bd: $cd $e5 $66
	ld   hl, $d554                                   ; $66c0: $21 $54 $d5
	ld   de, $d48e                                   ; $66c3: $11 $8e $d4
	call Call_010_66e5                               ; $66c6: $cd $e5 $66
	ld   hl, $d154                                   ; $66c9: $21 $54 $d1
	ld   de, $d08e                                   ; $66cc: $11 $8e $d0
	call Call_010_66e5                               ; $66cf: $cd $e5 $66

jr_010_66d2:
	ret                                              ; $66d2: $c9


Call_010_66d3:
	ld   a, [wTVAdapterDisconnected]                                  ; $66d3: $fa $24 $c9
	or   a                                           ; $66d6: $b7
	jr   z, jr_010_66e2                              ; $66d7: $28 $09

	ld   a, [hl]                                     ; $66d9: $7e
	cp   $02                                         ; $66da: $fe $02
	jr   nz, jr_010_66e2                             ; $66dc: $20 $04

	or   $ff                                         ; $66de: $f6 $ff
	jr   jr_010_66e4                                 ; $66e0: $18 $02

jr_010_66e2:
	and  $00                                         ; $66e2: $e6 $00

jr_010_66e4:
	ret                                              ; $66e4: $c9


Call_010_66e5:
	ld   b, $02                                      ; $66e5: $06 $02

jr_010_66e7:
	ld   c, $07                                      ; $66e7: $0e $07

jr_010_66e9:
	ld   a, [hl+]                                    ; $66e9: $2a
	ld   [de], a                                     ; $66ea: $12
	inc  de                                          ; $66eb: $13
	dec  c                                           ; $66ec: $0d
	jr   nz, jr_010_66e9                             ; $66ed: $20 $fa

	push bc                                          ; $66ef: $c5
	ld   bc, $0019                                   ; $66f0: $01 $19 $00
	add  hl, bc                                      ; $66f3: $09
	push hl                                          ; $66f4: $e5
	ld   h, d                                        ; $66f5: $62
	ld   l, e                                        ; $66f6: $6b
	add  hl, bc                                      ; $66f7: $09
	ld   d, h                                        ; $66f8: $54
	ld   e, l                                        ; $66f9: $5d
	pop  hl                                          ; $66fa: $e1
	pop  bc                                          ; $66fb: $c1
	dec  b                                           ; $66fc: $05
	jr   nz, jr_010_66e7                             ; $66fd: $20 $e8

	ret                                              ; $66ff: $c9


; H - return state
; L - return substate
SetCinematronState::
; Save return state
	ld   a, h                                                       ; $6700
	ld   [wCinematronReturnState], a                                ; $6701
	ld   a, l                                                       ; $6704
	ld   [wCinematronReturnSubstate], a                             ; $6705

; Set new state
	ld   a, GS_CINEMATRON                                           ; $6708
	ld   [wGameState], a                                            ; $670a
	ld   a, $00                                                     ; $670d
	ld   [wGameSubstate], a                                         ; $670f
	ret                                                             ; $6712


GameState16_EnterName::
	ld   a, [wGameSubstate]                                         ; $6713
	rst  JumpTable                                                  ; $6716
	dw .substate0_init
	dw .substate1_main
	dw .substate2_exit

.substate0_init:
; Enable inputs, and set up sticky params
	ld   a, $ff                                                     ; $671d
	ld   [wInGameInputsEnabled], a                                  ; $671f
	ld   a, $0c                                                     ; $6722
	ld   [wBaseInitialStickyCounter], a                             ; $6724
	ld   a, $04                                                     ; $6727
	ld   [wBaseRepeatedStickyCounter], a                            ; $6729

; Clear oam, display regs, and turn on LCD
	call ClearOam                                                   ; $672c
	call ClearDisplayRegsAllowVBlankInt                             ; $672f
	ld   a, LCDCF_ON|LCDCF_OBJON|LCDCF_BGON                         ; $6732
	ld   [wLCDC], a                                                 ; $6734

; Preserve ram bank, set ram bank of buffer area, then wait until vblank int handled
	ld   a, [wWramBank]                                             ; $6737
	push af                                                         ; $673a

	ld   a, BANK(wEnterNameTileDataOrLayoutBuffer)                  ; $673b
	ld   [wWramBank], a                                             ; $673d
	ldh  [rSVBK], a                                                 ; $6740
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6742

; Load tile attrs
	ld   a, BANK(RLEXorTileAttr_EnterName)                          ; $6743
	ld   hl, wEnterNameTileDataOrLayoutBuffer                       ; $6745
	ld   de, RLEXorTileAttr_EnterName                               ; $6748
	call RLEXorCopy                                                 ; $674b

; Enqueue attrs transfer
	ld   c, $81                                                     ; $674e
	ld   de, _SCRN0                                                 ; $6750
	ld   a, BANK(wEnterNameTileDataOrLayoutBuffer)                  ; $6753
	ld   hl, wEnterNameTileDataOrLayoutBuffer                       ; $6755
	ld   b, $400/$10                                                ; $6758
	call EnqueueHDMATransfer                                        ; $675a
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $675d

; Load tile data
	ld   a, BANK(RleXorTileData_EnterName)                          ; $675e
	ld   hl, wEnterNameTileDataOrLayoutBuffer                       ; $6760
	ld   de, RleXorTileData_EnterName                               ; $6763
if def(VWF)
	call EnterNameTileDataHook
else
	call RLEXorCopy                                                 ; $6766
endc

; Enqueue tile data transfer
	ld   c, $81                                                     ; $6769
	ld   de, _VRAM+$800                                             ; $676b
	ld   a, BANK(wEnterNameTileDataOrLayoutBuffer)                  ; $676e
	ld   hl, wEnterNameTileDataOrLayoutBuffer                       ; $6770
	ld   b, $800/$10                                                ; $6773
	call EnqueueHDMATransfer                                        ; $6775
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6778

; Load tile map
	ld   a, BANK(RleXorTileMap_EnterName)                           ; $6779
	ld   hl, wEnterNameTileDataOrLayoutBuffer                       ; $677b
	ld   de, RleXorTileMap_EnterName                                ; $677e
if def(VWF)
	call EnterNameTileMapHook
else
	call RLEXorCopy                                                 ; $6781
endc

; Enqueue tile map transfer
	ld   c, $80                                                     ; $6784
	ld   de, _SCRN0                                                 ; $6786
	ld   a, BANK(wEnterNameTileDataOrLayoutBuffer)                  ; $6789
	ld   hl, wEnterNameTileDataOrLayoutBuffer                       ; $678b
	ld   b, $400/$10                                                ; $678e
	call EnqueueHDMATransfer                                        ; $6790
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6793

; Restore ram bank
	pop  af                                                         ; $6794
	ld   [wWramBank], a                                             ; $6795
	ldh  [rSVBK], a                                                 ; $6798

; Clear window vars, and slightly adjust scroll to offset chars
	xor  a                                                          ; $679a
	ld   [wWY], a                                                   ; $679b
	ld   [wWX], a                                                   ; $679e
	ld   [wSCY], a                                                  ; $67a1
	ld   a, $04                                                     ; $67a4
	ld   [wSCX], a                                                  ; $67a6

; Set alphabet, space kanji idx, and init the inputted chars at the top of the screen
if def(VWF)
	ld   a, ENTER_NAME_EN_ALPHABET
else
	ld   a, ENTER_NAME_HIRA_ALPHABET                                ; $67a9
endc
	ld   [wEnterNameAlphabetChosen], a                              ; $67ab
	call SetSpaceKanjiIdx                                           ; $67ae
	call InitEnterNameInputtedChars                                 ; $67b1

; Start cursor row and col pointing to top-left char
	xor  a                                                          ; $67b4
if def(VWF)
	call SetEnterNameEnCoords
else
	ld   [wEnterNameCursorLetterColIdx], a                          ; $67b5
endc
	ld   [wEnterNameCursorLetterRowIdx], a                          ; $67b8

; Clear anim sprite spec details, and get a new one using anim type 1
	call ClearBaseAnimSpriteSpecDetails                             ; $67bb
	ld   a, ASST_1                                                  ; $67be
	ld   hl, $0000                                                  ; $67c0
	call ReserveBaseAnimSpriteSpecAndInstance                       ; $67c3
	ld   [wEnterNameLetterCursorBaseAnimSpriteSpecUsed], a          ; $67c6

; Enable animating it, then load its addr and coords
	call StartAnimatingAnimatedSpriteSpec                           ; $67c9
	call HLequAddrOfAnimSpriteSpecDetails                           ; $67cc
	call GetEnterNameCursorCoords                                   ; $67cf
	ld   a, ASS_ENTER_NAME_SMALL_CURSOR                             ; $67d2
	ld   de, AnimatedSpriteSpecs                                    ; $67d4
	M_FarCall LoadType1NewAnimatedSpriteSpecDetails

; Clear anim sprite spec details, and get a new one using anim type 1
	ld   a, ASST_1                                                  ; $67eb
	ld   hl, $0000                                                  ; $67ed
	call ReserveBaseAnimSpriteSpecAndInstance                       ; $67f0
	ld   [wEnterNameNameUnderlineBaseAnimSpriteSpecUsed], a         ; $67f3

; Enable animating it, then load its addr and coords
	call StartAnimatingAnimatedSpriteSpec                           ; $67f6
	call HLequAddrOfAnimSpriteSpecDetails                           ; $67f9
	call GetEnterNameUnderlineCoords                                ; $67fc
	ld   a, ASS_ENTER_NAME_UNDERLINE                                ; $67ff
	ld   de, AnimatedSpriteSpecs                                    ; $6801
	M_FarCall LoadType1NewAnimatedSpriteSpecDetails

; Load all white palettes, and update all
	ld   a, BANK(Palettes_AllWhite)                                 ; $6818
	ld   hl, Palettes_AllWhite                                      ; $681a
	ld   de, wBGPalettes                                            ; $681d
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $6820
	call FarMemCopy                                                 ; $6823

	ldbc $00, $3f                                                   ; $6826
	call SetBGandOBJPaletteRangesToUpdate                           ; $6829

; Load comps and set to fade at 1/8th speed
	xor  a                                                          ; $682c
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $682d
	ld   a, $40                                                     ; $6830
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $6832

	ld   a, $03                                                     ; $6835
	ld   b, BANK(Palettes_AllWhite)                                 ; $6837
	ld   hl, Palettes_AllWhite                                      ; $6839
	ld   c, BANK(Palettes_EnterName)                                ; $683c
	ld   de, Palettes_EnterName                                     ; $683e
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $6841

; Draw selectable char options, and the inputted name (cleared)
	call DrawEnterNameSelectableChars                               ; $6844
	call DisplayEnterNamesInputtedName                              ; $6847

	M_FarCall FadeBGpals8timesHandlingAnimatedSpriteSpecs
	
; Load all palettes, and s
	ld   a, BANK(Palettes_EnterName)                                ; $685e
	ld   hl, Palettes_EnterName                                     ; $6860
	ld   de, wBGPalettes                                            ; $6863
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $6866
	call FarMemCopy                                                 ; $6869

	ldbc $00, $3f                                                   ; $686c
	call SetBGandOBJPaletteRangesToUpdate                           ; $686f

; To next substate
	ld   hl, wGameSubstate                                          ; $6872
	inc  [hl]                                                       ; $6875
	ret                                                             ; $6876

.substate1_main:
; Clear oam (handling hiding sprites), and animate
	call ClearOam                                                   ; $6877
	call AnimateAllAnimatedSpriteSpecs                              ; $687a

; Handle inputs
	call HandleEnterNameDirInput                                    ; $687d
	call HandleEnterNameNonDirInput                                 ; $6880

; Update either the entire sprite spec for the cursor, or the underline's coords
	call SetEnterNameLetterCursorAnimSpriteSpecIdx                  ; $6883
	call SetEnterNameUnderLineAnimSpriteSpecCoords                  ; $6886
	ret                                                             ; $6889

.substate2_exit:
; Load all white for all colors, and fade at 1/8th speed
	xor  a                                                          ; $688a
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $688b
	ld   a, $40                                                     ; $688e
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $6890

	ld   a, $03                                                     ; $6893
	ld   b, BANK(Palettes_EnterName)                                ; $6895
	ld   hl, Palettes_EnterName                                     ; $6897
	ld   c, BANK(Palettes_AllWhite)                                 ; $689a
	ld   de, Palettes_AllWhite                                      ; $689c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $689f

; Fade the 8 times, to white, while still animating
	M_FarCall FadeBGpals8timesHandlingAnimatedSpriteSpecs

; Set all palettes to white, updating all pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $68b6
	ld   hl, Palettes_AllWhite                                      ; $68b8
	ld   de, wBGPalettes                                            ; $68bb
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $68be
	call FarMemCopy                                                 ; $68c1

	ldbc $00, $3f                                                   ; $68c4
	call SetBGandOBJPaletteRangesToUpdate                           ; $68c7

; Return to next state
	ld   a, [wEnterNameReturnState]                                 ; $68ca
	ld   [wGameState], a                                            ; $68cd
	ld   a, [wEnterNameReturnSubstate]                              ; $68d0
	ld   [wGameSubstate], a                                         ; $68d3
	ret                                                             ; $68d6


;
	ld   a, [wEnterNameMaxChars]                                  ; $68d7: $fa $4b $c9
	ld   c, a                                        ; $68da: $4f
	ld   b, $00                                      ; $68db: $06 $00
	ld   hl, $9807                                   ; $68dd: $21 $07 $98
	add  hl, bc                                      ; $68e0: $09
	ld   a, [$9812]                                  ; $68e1: $fa $12 $98
	ld   [hl], a                                     ; $68e4: $77
	ld   a, [$9832]                                  ; $68e5: $fa $32 $98
	ld   bc, $0020                                   ; $68e8: $01 $20 $00
	add  hl, bc                                      ; $68eb: $09
	ld   [hl], a                                     ; $68ec: $77
	ld   a, $81                                      ; $68ed: $3e $81
	ld   [$9812], a                                  ; $68ef: $ea $12 $98
	ld   [$9832], a                                  ; $68f2: $ea $32 $98
	ret                                              ; $68f5: $c9


DrawEnterNameSelectableChars:
; Init dimensions, and clear textbox
	call InitWideTextBoxDimensions                                  ; $68f6
	call ClearTextBoxDimensionsAndSetDefaultTextStyle               ; $68f9

; Set actual dimensions of selectable chars, and reset initial col/row
	ldbc ENTER_NAME_SELECTABLE_LETTERS_COLS, $06                    ; $68fc
	call SetKanjiTextBoxDimensions                                  ; $68ff

	ld   bc, $0000                                                  ; $6902
	call SetCurrKanjiColAndRowToDrawOn                              ; $6905

; HL points to the alphabet kanjis to process
	call HLequAddressOfAlphabetsKanjiIdxes                          ; $6908

; Preserve ram bank, and set instant tile data ram bank
	ld   a, [wWramBank]                                             ; $690b
	push af                                                         ; $690e

	ld   a, BANK(wEnterNameSelectableCharsTileDataBuffer)           ; $690f
	ld   [wWramBank], a                                             ; $6911
	ldh  [rSVBK], a                                                 ; $6914

; DE (source of instance text) now, load instant text into buffer
	ld   e, l                                                       ; $6916
	ld   d, h                                                       ; $6917
	ld   hl, wEnterNameSelectableCharsTileDataBuffer                ; $6918
	ld   a, BANK(EnterNameAlphabetKanjaIdxes)                       ; $691b
	call LoadInstantText                                            ; $691d

; Restore ram bank, and wait until vblank handled
	pop  af                                                         ; $6920
	ld   [wWramBank], a                                             ; $6921
	ldh  [rSVBK], a                                                 ; $6924
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6926

; Transfer all the loaded tile data over 3 frames
	ld   c, $80                                                     ; $6927
	ld   de, _VRAM+$1000                                            ; $6929
	ld   a, BANK(wEnterNameSelectableCharsTileDataBuffer)           ; $692c
	ld   hl, wEnterNameSelectableCharsTileDataBuffer                ; $692e
	ld   b, $400/$10                                                ; $6931
	call EnqueueHDMATransfer                                        ; $6933
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6936

	ld   c, $80                                                     ; $6937
	ld   de, _VRAM+$1400                                            ; $6939
	ld   a, BANK(wEnterNameSelectableCharsTileDataBuffer)           ; $693c
	ld   hl, wEnterNameSelectableCharsTileDataBuffer+$400           ; $693e
	ld   b, $400/$10                                                ; $6941
	call EnqueueHDMATransfer                                        ; $6943
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6946

	ld   c, $81                                                     ; $6947
	ld   de, _VRAM+$1000                                            ; $6949
	ld   a, BANK(wEnterNameSelectableCharsTileDataBuffer)           ; $694c
	ld   hl, wEnterNameSelectableCharsTileDataBuffer+$800           ; $694e
	ld   b, $4c0/$10                                                ; $6951
	call EnqueueHDMATransfer                                        ; $6953

; Update screen with the 2 other alphabet choices
if def(VWF)
	nop
	nop
	nop
else
	call UpdateEnterName2AlphabetChoices                            ; $6956
endc
	ret                                                             ; $6959


EnterNameAlphabetKanjaIdxes:
	dw .hiragana-EnterNameAlphabetKanjaIdxes
	dw .katakana-EnterNameAlphabetKanjaIdxes
	dw .english-EnterNameAlphabetKanjaIdxes

.hiragana:
	db $50, $52, $54, $56, $58, $10, $59, $5b, $5d, $5f, $61, $10, $63, $65, $67, $69, $6b, $0d
	db $6d, $6f, $72, $74, $76, $10, $78, $79, $7a, $7b, $7c, $10, $7d, $80, $83, $86, $89, $0d
	db $8c, $8d, $8e, $8f, $90, $10, $92, $10, $94, $10, $96, $10, $97, $98, $99, $9a, $9b, $0d
	db $9d, $10, $a0, $10, $a1, $10, $5a, $5c, $5e, $60, $62, $10, $64, $66, $68, $6a, $6c, $0d
	db $6e, $70, $73, $75, $77, $10, $7e, $81, $84, $87, $8a, $10, $7f, $82, $85, $88, $8b, $0d
	db $4f, $51, $53, $55, $57, $10, $91, $10, $93, $10, $95, $10, $71, $10, $10, $10, $fb, $00

.katakana:
	db $a3, $a5, $a7, $a9, $ab, $10, $ac, $ae, $b0, $b2, $b4, $10, $b6, $b8, $ba, $bc, $be, $0d
	db $c0, $c2, $c5, $c7, $c9, $10, $cb, $cc, $cd, $ce, $cf, $10, $d0, $d3, $d6, $d9, $dc, $0d
	db $df, $e0, $e2, $e3, $e4, $10, $e6, $10, $e8, $10, $ea, $10, $eb, $ec, $ed, $ee, $ef, $0d
	db $f1, $10, $f4, $10, $f5, $10, $ad, $af, $b1, $b3, $b5, $10, $b7, $b9, $bb, $bd, $bf, $0d
	db $c1, $c3, $c6, $c8, $ca, $10, $d1, $d4, $d7, $da, $dd, $10, $d2, $d5, $d8, $db, $de, $0d
	db $a2, $a4, $a6, $a8, $aa, $10, $e5, $10, $e7, $10, $e9, $10, $c4, $10, $10, $10, $fb, $00

.english:
	db $10, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $10, $0d
	db $10, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $10, $10, $10, $10, $10, $0d
	db $10, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $10, $0d
	db $10, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $10, $10, $10, $10, $10, $0d
	db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $10, $10, $10, $10, $10, $10, $0d
	db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $00


UpdateEnterName2AlphabetChoices:
; HL points to a screen region containing the combinations of alphabet choices
	ld   a, [wEnterNameAlphabetChosen]                              ; $6aa4
	add  a                                                          ; $6aa7
	ld   c, a                                                       ; $6aa8
	ld   b, $00                                                     ; $6aa9
	ld   hl, .twoOptSources                                         ; $6aab
	add  hl, bc                                                     ; $6aae

; HL equals that screen address
	ld   a, [hl+]                                                   ; $6aaf
	ld   h, [hl]                                                    ; $6ab0
	ld   l, a                                                       ; $6ab1

; DE = the on-screen address of the 2 opts, set to copy tilemaps
	ld   de, _SCRN0+$1e2                                            ; $6ab2

	xor  a                                                          ; $6ab5
	ldh  [rVBK], a                                                  ; $6ab6

; Copy the top 8 tiles
	ld   bc, $0008                                                  ; $6ab8
	ld   a, $00                                                     ; $6abb
	call HBlankFarMemCopy                                           ; $6abd

; Have dest point to start of bottom 8 tiles
	push hl                                                         ; $6ac0
	ld   hl, SCRN_VX_B-8                                            ; $6ac1
	add  hl, de                                                     ; $6ac4
	ld   e, l                                                       ; $6ac5
	ld   d, h                                                       ; $6ac6
	pop  hl                                                         ; $6ac7

; Same with src, then copy 8 tiles
	ld   bc, SCRN_VX_B-8                                            ; $6ac8
	add  hl, bc                                                     ; $6acb

	ld   bc, $0008                                                  ; $6acc
	ld   a, $00                                                     ; $6acf
	call HBlankFarMemCopy                                           ; $6ad1
	ret                                                             ; $6ad4

.twoOptSources:
	dw _SCRN0+$240
	dw _SCRN0+$280
	dw _SCRN0+$248


HandleEnterNameDirInput:
; Clear flag to say cursor moved
	xor  a                                                          ; $6adb
	ld   [wEnterNameCursorMoved], a                                 ; $6adc

; If on bottom row, handle when pressing left/right
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6adf
	cp   $06                                                        ; $6ae2
	call z, HandleEnterNameBottomRowLeftRightInput                  ; $6ae4

; Jump if english
	ld   a, [wEnterNameAlphabetChosen]                              ; $6ae7
	cp   ENTER_NAME_EN_ALPHABET                                     ; $6aea
	jr   z, .english                                                ; $6aec

; Either way handle left/right if not on bottom row, then up/down
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6aee
	cp   $06                                                        ; $6af1
	call nz, HandleKanaNonBottomRowLeftRightInput                   ; $6af3
	call HandleKanaUpDownInput                                      ; $6af6
	jr   .done                                                      ; $6af9

.english:
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6afb
	cp   $06                                                        ; $6afe
	call nz, HandleEnNonBottomRowLeftRightInput                     ; $6b00
	call HandleEnUpDownInput                                        ; $6b03

.done:
	ret                                                             ; $6b06


HandleKanaNonBottomRowLeftRightInput:
	ld   hl, wEnterNameCursorLetterColIdx                           ; $6b07

; Jump if not right
	ld   a, [wInGameStickyButtonsPressed]                           ; $6b0a
	bit  PADB_RIGHT, a                                              ; $6b0d
	jr   z, .notRight                                               ; $6b0f

; Jump if looping from the last element
	ld   a, [hl]                                                    ; $6b11
	cp   ENTER_NAME_SELECTABLE_LETTERS_COLS-1                       ; $6b12
	jr   z, .loopAround                                             ; $6b14

; Else inc col idx. Inc past gaps between blocks of 5
	inc  a                                                          ; $6b16
	cp   $05                                                        ; $6b17
	jr   z, .incColIdx                                              ; $6b19

	cp   $0b                                                        ; $6b1b
	jr   nz, .setColIdx                                             ; $6b1d

.incColIdx:
	inc  a                                                          ; $6b1f
	jr   .setColIdx                                                 ; $6b20

.notRight:
; Jump if not left
	bit  PADB_LEFT, a                                               ; $6b22
	jr   z, .done                                                   ; $6b24

; Jump if looping from the 1st element
	ld   a, [hl]                                                    ; $6b26
	or   a                                                          ; $6b27
	jr   z, .loopAround                                             ; $6b28

; Else dec col idx. Dec past gaps between blocks of 5
	dec  a                                                          ; $6b2a
	cp   $05                                                        ; $6b2b
	jr   z, .decColIdx                                              ; $6b2d

	cp   $0b                                                        ; $6b2f
	jr   nz, .setColIdx                                             ; $6b31

.decColIdx:
	dec  a                                                          ; $6b33
	jr   .setColIdx                                                 ; $6b34

.loopAround:
; Set col based on if looping left/right
	ld   a, [wInGameButtonsPressed]                                 ; $6b36
	bit  PADB_RIGHT, a                                              ; $6b39
	jr   z, .loopLeftAround                                         ; $6b3b

	xor  a                                                          ; $6b3d
	jr   .setColIdx                                                 ; $6b3e

.loopLeftAround:
	bit  PADB_LEFT, a                                               ; $6b40
	jr   z, .done                                                   ; $6b42

	ld   a, ENTER_NAME_SELECTABLE_LETTERS_COLS-1                    ; $6b44

.setColIdx:
	ld   [hl], a                                                    ; $6b46

; Set that we've moved to update cursor, and play sound effect
	call SetEnterNameCursorMoved                                    ; $6b47

	ld   a, SE_20                                                   ; $6b4a
	call PlaySoundEffect                                            ; $6b4c

.done:
	ret                                                             ; $6b4f


HandleKanaUpDownInput:
	ld   hl, wEnterNameCursorLetterRowIdx                           ; $6b50

; Jump if not up
	ld   a, [wInGameStickyButtonsPressed]                           ; $6b53
	bit  PADB_UP, a                                                 ; $6b56
	jr   z, .notUp                                                  ; $6b58

; Jump if looping from top row
	ld   a, [hl]                                                    ; $6b5a
	or   a                                                          ; $6b5b
	jr   z, .loopAround                                             ; $6b5c

; Else dec row idx
	dec  a                                                          ; $6b5e
	jr   .setRowIdx                                                 ; $6b5f

.notUp:
; Jump if not down
	bit  PADB_DOWN, a                                               ; $6b61
	jr   z, .done                                                   ; $6b63

; Jump if looping from bottom row
	ld   a, [hl]                                                    ; $6b65
	cp   $06                                                        ; $6b66
	jr   z, .loopAround                                             ; $6b68

; Else inc row idx
	inc  a                                                          ; $6b6a
	jr   .setRowIdx                                                 ; $6b6b

.loopAround:
; Set row based on if looping up/down
	ld   a, [wInGameButtonsPressed]                                 ; $6b6d
	bit  PADB_UP, a                                                 ; $6b70
	jr   z, .loopDownAround                                         ; $6b72

	ld   a, $06                                                     ; $6b74
	jr   .setRowIdx                                                 ; $6b76

.loopDownAround:
	bit  PADB_DOWN, a                                               ; $6b78
	jr   z, .done                                                   ; $6b7a

	xor  a                                                          ; $6b7c

.setRowIdx:
	ld   [hl], a                                                    ; $6b7d

; Set that we've moved to update cursor, and play sound effect
	call SetEnterNameCursorMoved                                    ; $6b7e
	
	ld   a, SE_20                                                   ; $6b81
	call PlaySoundEffect                                            ; $6b83

.done:
	ret                                                             ; $6b86


HandleEnNonBottomRowLeftRightInput:
	ld   hl, wEnterNameCursorLetterColIdx                           ; $6b87

; Jump if not right
	ld   a, [wInGameStickyButtonsPressed]                           ; $6b8a
	bit  PADB_RIGHT, a                                              ; $6b8d
	jr   z, .notRight                                               ; $6b8f

; En has a gap on the right side, so jump if looping from the gap or last letter
	ld   a, [hl]                                                    ; $6b91
	cp   ENTER_NAME_SELECTABLE_LETTERS_COLS-1                       ; $6b92
	jr   z, .loopAround                                             ; $6b94

	cp   ENTER_NAME_SELECTABLE_LETTERS_COLS-2                       ; $6b96
	jr   z, .loopAround                                             ; $6b98

; Else inc col idx
	inc  a                                                          ; $6b9a
	jr   .setColIdx                                                 ; $6b9b

.notRight:
; Jump if not left
	bit  PADB_LEFT, a                                               ; $6b9d
	jr   z, .done                                                   ; $6b9f

; En has a gap on the left side, so jump if looping from the gap or 1st letter
	ld   a, [hl]                                                    ; $6ba1
	or   a                                                          ; $6ba2
	jr   z, .loopAround                                             ; $6ba3

	cp   $01                                                        ; $6ba5
	jr   z, .loopAround                                             ; $6ba7

; Else dec col idx
	dec  a                                                          ; $6ba9
	jr   .setColIdx                                                 ; $6baa

.loopAround:
; Set col based on if looping left/right, setting past the gaps
	ld   a, [wInGameButtonsPressed]                                 ; $6bac
	bit  PADB_RIGHT, a                                              ; $6baf
	jr   z, .loopAroundLeft                                         ; $6bb1

	ld   a, $01                                                     ; $6bb3
	jr   .setColIdx                                                 ; $6bb5

.loopAroundLeft:
	bit  PADB_LEFT, a                                               ; $6bb7
	jr   z, .done                                                   ; $6bb9

	ld   a, ENTER_NAME_SELECTABLE_LETTERS_COLS-2                    ; $6bbb

.setColIdx:
	ld   [hl], a                                                    ; $6bbd

; Set that we've moved to update cursor, and play sound effect
	call SetEnterNameCursorMoved                                    ; $6bbe

	ld   a, SE_20                                                   ; $6bc1
	call PlaySoundEffect                                            ; $6bc3

.done:
	ret                                                             ; $6bc6


HandleEnUpDownInput:
	ld   hl, wEnterNameCursorLetterRowIdx                           ; $6bc7

; Jump if not up
	ld   a, [wInGameStickyButtonsPressed]                           ; $6bca
	bit  PADB_UP, a                                                 ; $6bcd
	jr   z, .notUp                                                  ; $6bcf

; Jump if looping from the 1st row
	ld   a, [hl]                                                    ; $6bd1
	or   a                                                          ; $6bd2
	jr   z, .loopAround                                             ; $6bd3

; Else dec row, dec'ing again past gap between letters and bottom row
	dec  a                                                          ; $6bd5
	cp   $05                                                        ; $6bd6
	jr   nz, .setRowIdx                                             ; $6bd8

	dec  a                                                          ; $6bda
	jr   .setRowIdx                                                 ; $6bdb

.notUp:
; Jump if not down
	bit  PADB_DOWN, a                                               ; $6bdd
	jr   z, .done                                                   ; $6bdf

; Jump if looping from the bottom row
	ld   a, [hl]                                                    ; $6be1
	cp   $06                                                        ; $6be2
	jr   z, .loopAround                                             ; $6be4

; Else inc row, inc'ing again past gap between letters and bottom row
	inc  a                                                          ; $6be6
	cp   $05                                                        ; $6be7
	jr   nz, .setRowIdx                                             ; $6be9

	inc  a                                                          ; $6beb
	jr   .setRowIdx                                                 ; $6bec

.loopAround:
; Set col based on if looping up/down
	ld   a, [wInGameButtonsPressed]                                 ; $6bee
	bit  PADB_UP, a                                                 ; $6bf1
	jr   z, .loopDownAround                                         ; $6bf3

	ld   a, $06                                                     ; $6bf5
	jr   .setRowIdx                                                 ; $6bf7

.loopDownAround:
	bit  PADB_DOWN, a                                               ; $6bf9
	jr   z, .done                                                   ; $6bfb

	xor  a                                                          ; $6bfd

.setRowIdx:
	ld   [hl], a                                                    ; $6bfe

; Inc past 1st col if needed, eg if going up from the left kana opt
	ld   a, [wEnterNameCursorLetterColIdx]                          ; $6bff
	or   a                                                          ; $6c02
	jr   nz, :+                                                     ; $6c03

	inc  a                                                          ; $6c05
	ld   [wEnterNameCursorLetterColIdx], a                          ; $6c06

; Set that we've moved to update cursor, and play sound effect
:	call SetEnterNameCursorMoved                                    ; $6c09

	ld   a, SE_20                                                   ; $6c0c
	call PlaySoundEffect                                            ; $6c0e

.done:
	ret                                                             ; $6c11


HandleEnterNameBottomRowLeftRightInput:
; Jump if left not pressed
	ld   a, [wInGameButtonsPressed]                                 ; $6c12
	bit  PADB_LEFT, a                                               ; $6c15
	jr   z, .notLeft                                                ; $6c17

; Jump if at the left most option
if def(VWF)
	jp   .loopAround
else
	call GetEnterNameBottomRowCol                                   ; $6c19
endc
	or   a                                                          ; $6c1c
	jr   z, .loopAround                                             ; $6c1d

; Else set col idx to the previous option
	call GetEnterNamePreviousBottomRowColIdx                        ; $6c1f
	jr   .setColIdx                                                 ; $6c22

.notLeft:
	bit  PADB_RIGHT, a                                              ; $6c24
	jr   z, .done                                                   ; $6c26

; If right pressed, jump if on the rightmost option
if def(VWF)
	jp   .loopAround
else
	call GetEnterNameBottomRowCol                                   ; $6c28
endc
	cp   ENTER_NAME_SUBMIT_COL                                      ; $6c2b
	jr   z, .loopAround                                             ; $6c2d

; Else set col idx to the next option
	call GetEnterNameNextBottomRowColIdx                            ; $6c2f
	jr   .setColIdx                                                 ; $6c32

.loopAround:
; Set appropriate opt based on the button pressed
if def(VWF)
	call GetEnterNameBottomRowCol ; 3
	cp   ENTER_NAME_DELETE_COL ; 2
	jr   z, .setSubmit ; 2
	ld   a, ENTER_NAME_DELETE_COL ; 2
	jr   .setColIdx ; 2
.setSubmit:
	ld   a, ENTER_NAME_SUBMIT_COL ; 2
	jr   .setColIdx ; 2
	nop ; 1
else
	ld   a, [wInGameButtonsPressed]                                 ; $6c34
	bit  PADB_RIGHT, a                                              ; $6c37
	jr   z, .checkLoopedLeft                                        ; $6c39

	lda  ENTER_NAME_HIRA_KATA_COL                                   ; $6c3b
	jr   .setColIdx                                                 ; $6c3c

.checkLoopedLeft:
	bit  PADB_LEFT, a                                               ; $6c3e
	jr   z, .done                                                   ; $6c40

	ld   a, ENTER_NAME_SUBMIT_COL                                   ; $6c42
endc

.setColIdx:
	ld   [wEnterNameCursorLetterColIdx], a                          ; $6c44

; Set that we've moved to update cursor, and play sound effect
	call SetEnterNameCursorMoved                                    ; $6c47

	ld   a, SE_20                                                   ; $6c4a
	call PlaySoundEffect                                            ; $6c4c

.done:
	ret                                                             ; $6c4f


; A - curr bottom row col idx
; Returns previous possible col idx in A
GetEnterNamePreviousBottomRowColIdx:
	ld   hl, BottomRowColIdxes                                      ; $6c50

.loop:
; Go through possible col idxes forwards, until one matches, then jump
	cp   [hl]                                                       ; $6c53
	jr   z, .done                                                   ; $6c54

	inc  hl                                                         ; $6c56
	jr   .loop                                                      ; $6c57

.done:
; Get the previous possible option
	dec  hl                                                         ; $6c59
	ld   a, [hl]                                                    ; $6c5a
	ret                                                             ; $6c5b


; A - curr bottom row col idx
; Returns next possible col idx in A
GetEnterNameNextBottomRowColIdx:
	ld   hl, BottomRowColIdxes.end-1                                ; $6c5c

.loop:
; Go through possible col idxes backwards, until one matches, then jump
	cp   [hl]                                                       ; $6c5f
	jr   z, .done                                                   ; $6c60

	dec  hl                                                         ; $6c62
	jr   .loop                                                      ; $6c63

.done:
; Get the next possible option
	inc  hl                                                         ; $6c65
	ld   a, [hl]                                                    ; $6c66
	ret                                                             ; $6c67


; Returns col idx in A
GetEnterNameBottomRowCol:
; HL points to bottom row col based on current col
	ld   a, [wEnterNameCursorLetterColIdx]                          ; $6c68
	ld   c, a                                                       ; $6c6b
	ld   b, $00                                                     ; $6c6c
	ld   hl, BottomRowColIdxes                                      ; $6c6e
	add  hl, bc                                                     ; $6c71

; Return value in A
	ld   a, [hl]                                                    ; $6c72
	ret                                                             ; $6c73


BottomRowColIdxes:
if def (VWF)
rept 7
	db ENTER_NAME_DELETE_COL
endr

else

rept 3
	db ENTER_NAME_HIRA_KATA_COL
endr
rept 4
	db ENTER_NAME_ENGLISH_COL
endr
endc

rept 5
	db ENTER_NAME_DELETE_COL
endr
rept 5
	db ENTER_NAME_SUBMIT_COL
endr
.end:


SetEnterNameCursorMoved:
	ld   a, $01                                                     ; $6c85
	ld   [wEnterNameCursorMoved], a                                 ; $6c87
	ret                                                             ; $6c8a


SetEnterNameLetterCursorAnimSpriteSpecIdx:
; Return if cursor didn't move
	ld   a, [wEnterNameCursorMoved]                                 ; $6c8b
	or   a                                                          ; $6c8e
	ret  z                                                          ; $6c8f

; Get coords of letter cursor
	ld   a, [wEnterNameLetterCursorBaseAnimSpriteSpecUsed]          ; $6c90
	call HLequAddrOfAnimSpriteSpecDetails                           ; $6c93
	call GetEnterNameCursorCoords                                   ; $6c96

; Animated sprite spec idx is small cursor if not on the last row, else the big cursor
	ld   e, ASS_ENTER_NAME_SMALL_CURSOR                             ; $6c99
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6c9b
	cp   $06                                                        ; $6c9e
	jr   nz, :+                                                     ; $6ca0
	ld   e, ASS_ENTER_NAME_BIG_CURSOR                               ; $6ca2
:	ld   a, e                                                       ; $6ca4

; Overwrite current sprite spec details
	ld   de, AnimatedSpriteSpecs                                    ; $6ca5
	M_FarCall LoadType1NewAnimatedSpriteSpecDetails
	ret                                                             ; $6cbc


SetEnterNameUnderLineAnimSpriteSpecCoords:
; Get coords of inputted chars underline, and set it in anim sprite spec in ram
	ld   a, [wEnterNameNameUnderlineBaseAnimSpriteSpecUsed]         ; $6cbd
	call HLequAddrOfAnimSpriteSpecDetails                           ; $6cc0
	call GetEnterNameUnderlineCoords                                ; $6cc3
	M_FarCall SetType1AnimSpriteSpecInstanceCoords
	ret                                                             ; $6cda


; Returns base X in B, and base Y in C
GetEnterNameCursorCoords:
	push hl                                                         ; $6cdb

; Jump if not the last row
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6cdc
	cp   $06                                                        ; $6cdf
	jr   nz, .normalChar                                            ; $6ce1

; If bottom, get col based on col normal row col idx
	call GetEnterNameBottomRowCol                                   ; $6ce3
	jr   :+                                                         ; $6ce6

.normalChar:
	ld   a, [wEnterNameCursorLetterColIdx]                          ; $6ce8

; B = $0c + 8 * col idx
:	add  a                                                          ; $6ceb
	add  a                                                          ; $6cec
	add  a                                                          ; $6ced
	add  $0c                                                        ; $6cee
	ld   b, a                                                       ; $6cf0

; C = $18 + $10 * row idx
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6cf1
	swap a                                                          ; $6cf4
	add  $18                                                        ; $6cf6
	ld   c, a                                                       ; $6cf8

	pop  hl                                                         ; $6cf9
	ret                                                             ; $6cfa


; Returns base X in B, and base Y in C
GetEnterNameUnderlineCoords:
	push hl                                                         ; $6cfb

; B = leftmost possible X for underline (the more chars, the more left)
	ld   a, [wEnterNameMaxChars]                                    ; $6cfc
	ld   c, a                                                       ; $6cff
	ld   b, $00                                                     ; $6d00
	ld   hl, .startXs                                               ; $6d02
	add  hl, bc                                                     ; $6d05
	ld   b, [hl]                                                    ; $6d06

; If num chars entered == max chars, have underline point to last char position
	ld   a, [wEnterNameNumCharsEntered]                             ; $6d07
	cp   c                                                          ; $6d0a
	jr   nz, :+                                                     ; $6d0b
	dec  a                                                          ; $6d0d

; Base X = previous leftmost X + 8 * chars entered
:	add  a                                                          ; $6d0e
	add  a                                                          ; $6d0f
	add  a                                                          ; $6d10
	add  b                                                          ; $6d11
	ld   b, a                                                       ; $6d12

; Base Y = 0
	ld   c, $00                                                     ; $6d13

	pop  hl                                                         ; $6d15
	ret                                                             ; $6d16

.startXs:
	db $7c, $74, $6c, $64, $5c, $54, $4c, $44
	db $44, $3c, $3c


HandleEnterNameNonDirInput:
; Return if cursor moved
	ld   a, [wEnterNameCursorMoved]                                 ; $6d22
	or   a                                                          ; $6d25
	ret  nz                                                         ; $6d26

; Jump if A not pressed
	ld   a, [wInGameButtonsPressed]                                 ; $6d27
	bit  PADB_A, a                                                  ; $6d2a
	jr   z, .aNotPressed                                            ; $6d2c

; If A pressed, branch based on if on bottom row
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6d2e
	cp   $06                                                        ; $6d31
	jr   z, .bottomRow                                              ; $6d33

	call HandleEnterNameLetterSelected                              ; $6d35
	jr   .done                                                      ; $6d38

.bottomRow:
	call HandleEnterNameBottomOptSelected                           ; $6d3a
	jr   .done                                                      ; $6d3d

.aNotPressed:
	bit  PADB_B, a                                                  ; $6d3f
	jr   z, .aOrBNotPressed                                         ; $6d41

; If B pressed, delete a name char
	call DeleteEnterNameChar                                        ; $6d43
	jr   .done                                                      ; $6d46

.aOrBNotPressed:
	bit  PADB_SELECT, a                                             ; $6d48
	jr   z, .checkStartPressed                                      ; $6d4a

; If select pressed, and not currently on English..
	ld   a, [wEnterNameAlphabetChosen]                              ; $6d4c
	cp   ENTER_NAME_EN_ALPHABET                                     ; $6d4f
	jr   z, .toDone                                                 ; $6d51

; Flip the kana alphabet chosen, redraw the selectable chars, and play sound
	xor  $01                                                        ; $6d53
	ld   [wEnterNameAlphabetChosen], a                              ; $6d55
	call DrawEnterNameSelectableChars                               ; $6d58

	ld   a, SE_21                                                   ; $6d5b
	call PlaySoundEffect                                            ; $6d5d

.toDone:
	jr   .done                                                      ; $6d60

.checkStartPressed:
	bit  PADB_START, a                                              ; $6d62
	jr   z, .done                                                   ; $6d64

; If start pressed, jump to the submit button
	call GoToEnterNameSubmitButton                                  ; $6d66

.done:
	ret                                                             ; $6d69


GoToEnterNameSubmitButton:
; Set coords to get cursor on submit button
	ld   a, $06                                                     ; $6d6a
	ld   [wEnterNameCursorLetterRowIdx], a                          ; $6d6c
	ld   a, $0f                                                     ; $6d6f
	ld   [wEnterNameCursorLetterColIdx], a                          ; $6d71

; Set that we've moved to update cursor, and play sound effect
	call SetEnterNameCursorMoved                                    ; $6d74
	
	ld   a, SE_21                                                   ; $6d77
	call PlaySoundEffect                                            ; $6d79
	ret                                                             ; $6d7c


HLequAddressOfAlphabetsKanjiIdxes:
; HL = alphabet double idxed into table
	ld   a, [wEnterNameAlphabetChosen]                              ; $6d7d
	add  a                                                          ; $6d80
	ld   h, $00                                                     ; $6d81
	ld   l, a                                                       ; $6d83
	ld   bc, EnterNameAlphabetKanjaIdxes                            ; $6d84
	add  hl, bc                                                     ; $6d87

; HL = word in table
	ld   a, [hl+]                                                   ; $6d88
	ld   h, [hl]                                                    ; $6d89
	ld   l, a                                                       ; $6d8a

; Use as offset in table again
	ld   bc, EnterNameAlphabetKanjaIdxes                            ; $6d8b
	add  hl, bc                                                     ; $6d8e
	ret                                                             ; $6d8f


SetSpaceKanjiIdx:
; Called when alphabet is hiragana, the 6th byte is $10 (space)
	call HLequAddressOfAlphabetsKanjiIdxes                          ; $6d90
	ld   bc, $0005                                                  ; $6d93
if def(VWF)
	ld   a, $10
else
	add  hl, bc                                                     ; $6d96
	ld   a, [hl]                                                    ; $6d97
endc
	ld   [wEnterNameSpaceKanjiIdx], a                               ; $6d98
	ret                                                             ; $6d9b


InitEnterNameInputtedChars:
; Fill inputted chars with a space kanji idx
	ld   hl, wEnterNameInputtedChars                                ; $6d9c
	ld   c, $0a                                                     ; $6d9f
	ld   a, [wEnterNameSpaceKanjiIdx]                               ; $6da1

:	ld   [hl+], a                                                   ; $6da4
	dec  c                                                          ; $6da5
	jr   nz, :-                                                     ; $6da6

; Add a null terminator, and set that 0 chars have been entered
	xor  a                                                          ; $6da8
	ld   [hl], a                                                    ; $6da9
	ld   [wEnterNameNumCharsEntered], a                             ; $6daa

; If bit 2 set on state control byte, pre-fill with player name
	ld   a, [wEnterNameControlByte]                                 ; $6dad
	bit  2, a                                                       ; $6db0
	jr   z, .done                                                   ; $6db2

; Preserve ram bank, and set it to where the player's name is
	ld   a, [wWramBank]                                             ; $6db4
	push af                                                         ; $6db7

	ld   a, [wPlayerNameRamBank]                                    ; $6db8
	ld   [wWramBank], a                                             ; $6dbb
	ldh  [rSVBK], a                                                 ; $6dbe

; HL = addr of player name
	ld   hl, wPointerToPlayerNameToEnter                            ; $6dc0
	ld   a, [hl+]                                                   ; $6dc3
	ld   h, [hl]                                                    ; $6dc4
	ld   l, a                                                       ; $6dc5

; Loop max chars times, B counting the number of player name chars..
	ld   de, wEnterNameInputtedChars                                ; $6dc6
	ld   a, [wEnterNameMaxChars]                                    ; $6dc9
	ld   c, a                                                       ; $6dcc
	ld   b, $00                                                     ; $6dcd

.loopChars:
; Copying from player name to inputted chars, exiting when null terminator found
	ld   a, [hl+]                                                   ; $6dcf
	or   a                                                          ; $6dd0
	jr   z, .end                                                    ; $6dd1

	ld   [de], a                                                    ; $6dd3
	inc  de                                                         ; $6dd4

; Inc num player chars, and dec from max chars
	inc  b                                                          ; $6dd5
	dec  c                                                          ; $6dd6
	jr   nz, .loopChars                                             ; $6dd7

.end:
; Set null terminator, and num inputted chars
	ld   [hl], $00                                                  ; $6dd9
	ld   a, b                                                       ; $6ddb
	ld   [wEnterNameNumCharsEntered], a                             ; $6ddc

; Restore ram bank
	pop  af                                                         ; $6ddf
	ld   [wWramBank], a                                             ; $6de0
	ldh  [rSVBK], a                                                 ; $6de3

.done:
	ret                                                             ; $6de5


HandleEnterNameLetterSelected:
; HL = row * (num selectable opts in row + newline code)
	ld   a, [wEnterNameCursorLetterRowIdx]                          ; $6de6
	ld   l, a                                                       ; $6de9
	ld   h, ENTER_NAME_SELECTABLE_LETTERS_COLS+1                    ; $6dea
	call AequHtimesL                                                ; $6dec

; HL = above + col idx, ie 1-dimensional value of the letter
	ld   a, [wEnterNameCursorLetterColIdx]                          ; $6def
	add  l                                                          ; $6df2
	ld   l, a                                                       ; $6df3
	ld   h, $00                                                     ; $6df4

; HL points to the kanji idx in the chosen alphabet's table
	push hl                                                         ; $6df6
	call HLequAddressOfAlphabetsKanjiIdxes                          ; $6df7
	pop  bc                                                         ; $6dfa
	add  hl, bc                                                     ; $6dfb

; If state control byte bit 1 set, allow spaces
	ld   a, [wEnterNameControlByte]                                 ; $6dfc
	bit  1, a                                                       ; $6dff
	jr   nz, .addLetter                                             ; $6e01

; Don't do anything if space is selected
	ld   a, [wEnterNameSpaceKanjiIdx]                               ; $6e03
	cp   [hl]                                                       ; $6e06
	jr   z, .done                                                   ; $6e07

.addLetter:
; E = kanji idx
	ld   e, [hl]                                                    ; $6e09

; If num chars entered == max, dec num entered to replace the last char
	ld   hl, wEnterNameNumCharsEntered                              ; $6e0a
	ld   a, [wEnterNameMaxChars]                                    ; $6e0d
	cp   [hl]                                                       ; $6e10
	jr   nz, :+                                                     ; $6e11
	dec  [hl]                                                       ; $6e13

; Get BC = num chars entered, inc num entered
:	ld   a, [hl]                                                    ; $6e14
	inc  [hl]                                                       ; $6e15
	ld   c, a                                                       ; $6e16
	ld   b, $00                                                     ; $6e17

; HL points to next point in inputted chars to fill, store kanji idx there
	ld   hl, wEnterNameInputtedChars                                ; $6e19
	add  hl, bc                                                     ; $6e1c
	ld   [hl], e                                                    ; $6e1d

; Redraw the inputted name
	call DisplayEnterNamesInputtedName                              ; $6e1e

; If we're now at the max chars entered, jump to the submit button
	ld   hl, wEnterNameNumCharsEntered                              ; $6e21
	ld   a, [wEnterNameMaxChars]                                    ; $6e24
	cp   [hl]                                                       ; $6e27
	call z, GoToEnterNameSubmitButton                               ; $6e28

; Lastly play sound effect
	ld   a, SE_21                                                   ; $6e2b
	call PlaySoundEffect                                            ; $6e2d

.done:
	ret                                                             ; $6e30


HandleEnterNameBottomOptSelected:
; Jump if submit not selected
	call GetEnterNameBottomRowCol                                   ; $6e31
	cp   ENTER_NAME_SUBMIT_COL                                      ; $6e34
	jr   nz, .notSubmit                                             ; $6e36

; Ignore following code if no characters were entered
	ld   a, [wEnterNameNumCharsEntered]                             ; $6e38
	or   a                                                          ; $6e3b
	jr   z, .done                                                   ; $6e3c

; Otherwise start process to copy name and leave state
	call CopyEnteredNameIntoPlayerName                              ; $6e3e
	ld   hl, wGameSubstate                                          ; $6e41
	inc  [hl]                                                       ; $6e44

; Play sound effect
	ld   a, SE_21                                                   ; $6e45
	call PlaySoundEffect                                            ; $6e47
	jr   .done                                                      ; $6e4a

.notSubmit:
; Jump if delete not chosen, else delete char
	cp   ENTER_NAME_DELETE_COL                                      ; $6e4c
	jr   nz, .notSubmitOrDelete                                     ; $6e4e

	call DeleteEnterNameChar                                        ; $6e50
	jr   .done                                                      ; $6e53

.notSubmitOrDelete:
; Jump if english not chosen..
	cp   ENTER_NAME_ENGLISH_COL                                     ; $6e55
	jr   nz, .hiraOrKata                                            ; $6e57

; Else toggle between english and katakana
	ld   a, [wEnterNameAlphabetChosen]                              ; $6e59
	cp   ENTER_NAME_EN_ALPHABET                                     ; $6e5c
	jr   nz, .selectEnglish                                         ; $6e5e

	jr   .selectKatakana                                            ; $6e60

.hiraOrKata:
; Toggle between hiragana and katakana
	ld   a, [wEnterNameAlphabetChosen]                              ; $6e62
	cp   ENTER_NAME_HIRA_ALPHABET                                   ; $6e65
	jr   nz, .selectHiragana                                        ; $6e67

.selectKatakana:
	ld   a, ENTER_NAME_KATA_ALPHABET                                ; $6e69
	jr   .setAlphabet                                               ; $6e6b

.selectHiragana:
	ld   a, ENTER_NAME_HIRA_ALPHABET                                ; $6e6d
	jr   .setAlphabet                                               ; $6e6f

.selectEnglish:
	ld   a, ENTER_NAME_EN_ALPHABET                                  ; $6e71

.setAlphabet:
	ld   [wEnterNameAlphabetChosen], a                              ; $6e73

; Redraw selected chars based on option, then play sound effect
	call DrawEnterNameSelectableChars                               ; $6e76

	ld   a, SE_21                                                   ; $6e79
	call PlaySoundEffect                                            ; $6e7b

.done:
	ret                                                             ; $6e7e


DeleteEnterNameChar:
; Always play this sound
	ld   a, SE_22                                                   ; $6e7f
	call PlaySoundEffect                                            ; $6e81

; Jump if there are chars to delete
	ld   hl, wEnterNameNumCharsEntered                              ; $6e84
	ld   a, [hl]                                                    ; $6e87
	or   a                                                          ; $6e88
	jr   nz, .deleteChar                                            ; $6e89

; Else if 0 chars, and control byte bit 0 set, exit state
	ld   a, [wEnterNameControlByte]                                 ; $6e8b
	bit  0, a                                                       ; $6e8e
	jr   z, .done                                                   ; $6e90

	ld   hl, wGameSubstate                                          ; $6e92
	inc  [hl]                                                       ; $6e95
	jr   .done                                                      ; $6e96

.deleteChar:
; Dec num chars entered, and have HL point to past that char
	dec  [hl]                                                       ; $6e98
	ld   c, a                                                       ; $6e99
	ld   b, $00                                                     ; $6e9a
	ld   hl, wEnterNameInputtedChars                                ; $6e9c
	add  hl, bc                                                     ; $6e9f

; Fill the space after, as well as the deleted char, the redraw the input name
	ld   a, [wEnterNameSpaceKanjiIdx]                               ; $6ea0
	ld   [hl-], a                                                   ; $6ea3
	ld   [hl], a                                                    ; $6ea4
	call DisplayEnterNamesInputtedName                              ; $6ea5

.done:
	ret                                                             ; $6ea8


;
	ld   a, [wEnterNameNumCharsEntered]                                  ; $6ea9: $fa $51 $c9
	or   a                                           ; $6eac: $b7
	jr   nz, jr_010_6eba                             ; $6ead: $20 $0b

	ld   a, [wEnterNameControlByte]                                  ; $6eaf: $fa $4c $c9
	bit  0, a                                        ; $6eb2: $cb $47
	jr   z, jr_010_6eba                              ; $6eb4: $28 $04

	ld   hl, wGameSubstate                                   ; $6eb6: $21 $a1 $c2
	inc  [hl]                                        ; $6eb9: $34

jr_010_6eba:
	ret                                              ; $6eba: $c9


DisplayEnterNamesInputtedName:
; Preserve ram bank, and set ram bank containing inputted name tile data buffer
	ld   a, [wWramBank]                                             ; $6ebb
	push af                                                         ; $6ebe

	ld   a, BANK(wEnterNameInputtedNameTileDataBuffer)              ; $6ebf
	ld   [wWramBank], a                                             ; $6ec1
	ldh  [rSVBK], a                                                 ; $6ec4

; Clear text box dimensions and text style
	call InitWideTextBoxDimensions                                  ; $6ec6
	call ClearTextBoxDimensionsAndSetDefaultTextStyle               ; $6ec9

; Set text box dimensions, and clear col+row
	ld   b, $0b                                                     ; $6ecc
	ld   c, $01                                                     ; $6ece
	call SetKanjiTextBoxDimensions                                  ; $6ed0

	ld   bc, $0000                                                  ; $6ed3
	call SetCurrKanjiColAndRowToDrawOn                              ; $6ed6

; Load text based on inputted chars kanji idx into ram
	ld   hl, wEnterNameInputtedNameTileDataBuffer                   ; $6ed9
	ld   a, $00                                                     ; $6edc
	ld   de, wEnterNameInputtedChars                                ; $6ede
	call LoadInstantText                                            ; $6ee1

; Restore ram bank, and wait until vblank int handled
	pop  af                                                         ; $6ee4
	ld   [wWramBank], a                                             ; $6ee5
	ldh  [rSVBK], a                                                 ; $6ee8
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $6eea

; B (num bytes to hdma transfer) = max chars * 2 (2 tiles per kanji char)
	ld   a, [wEnterNameMaxChars]                                    ; $6eeb
	add  a                                                          ; $6eee
	ld   b, a                                                       ; $6eef

; Set the rest of the hdma transfer params to display the name text
	ld   a, BANK(wEnterNameInputtedNameTileDataBuffer)              ; $6ef0
	ld   hl, wEnterNameInputtedNameTileDataBuffer                   ; $6ef2
	ld   c, $81                                                     ; $6ef5
	ld   de, _VRAM+$ba0                                             ; $6ef7
	call EnqueueHDMATransfer                                        ; $6efa
	ret                                                             ; $6efd


; A - num chars entered
CopyEnteredNameIntoPlayerName:
; HL points to after inputted chars
	ld   c, a                                                       ; $6efe
	ld   b, $00                                                     ; $6eff
	ld   hl, wEnterNameInputtedChars                                ; $6f01
	add  hl, bc                                                     ; $6f04

; Set null terminator there
	xor  a                                                          ; $6f05
	ld   [hl], a                                                    ; $6f06

; Preserve ram bank, and set it to where the player's name is
	ld   a, [wWramBank]                                             ; $6f07
	push af                                                         ; $6f0a

	ld   a, [wPlayerNameRamBank]                                    ; $6f0b
	ld   [wWramBank], a                                             ; $6f0e
	ldh  [rSVBK], a                                                 ; $6f11

; DE = addr of player name
	ld   hl, wPointerToPlayerNameToEnter                            ; $6f13
	ld   a, [hl+]                                                   ; $6f16
	ld   d, [hl]                                                    ; $6f17
	ld   e, a                                                       ; $6f18

; Copy name + null terminator
	ld   hl, wEnterNameInputtedChars                                ; $6f19
	ld   a, [wEnterNameMaxChars]                                    ; $6f1c
	inc  a                                                          ; $6f1f
	ld   c, a                                                       ; $6f20
	ld   b, $00                                                     ; $6f21
	call MemCopy                                                    ; $6f23

; Restore ram bank
	pop  af                                                         ; $6f26
	ld   [wWramBank], a                                             ; $6f27
	ldh  [rSVBK], a                                                 ; $6f2a
	ret                                                             ; $6f2c


; A - state control byte, see wEnterNameControlByte
; B - wram bank of player name
; C - max name chars
; DE - player name ram addr
; H - return state
; L - return substate
SetEnterNameState::
	ld   [wEnterNameControlByte], a                                 ; $6f2d

; Set return state
	ld   a, h                                                       ; $6f30
	ld   [wEnterNameReturnState], a                                 ; $6f31
	ld   a, l                                                       ; $6f34
	ld   [wEnterNameReturnSubstate], a                              ; $6f35

; Save pointer to where we'll fill the name
	ld   hl, wPointerToPlayerNameToEnter                            ; $6f38
	ld   a, e                                                       ; $6f3b
	ld   [hl+], a                                                   ; $6f3c
	ld   a, d                                                       ; $6f3d
	ld   [hl+], a                                                   ; $6f3e

; Set wPlayerNameRamBank and max chars
	ld   [hl], b                                                    ; $6f3f
	ld   a, c                                                       ; $6f40
	ld   [wEnterNameMaxChars], a                                    ; $6f41

; Set Enter Name state, and initial substate
	ld   a, GS_ENTER_NAME                                           ; $6f44
	ld   [wGameState], a                                            ; $6f46
	ld   a, $00                                                     ; $6f49
	ld   [wGameSubstate], a                                         ; $6f4b
	ret                                                             ; $6f4e


GameState1d_SumireMiniGameTitleScreen::
	ld   a, [wGameSubstate]                                  ; $6f4f: $fa $a1 $c2
	rst  JumpTable                                         ; $6f52: $df
	dw SumireMiniGameTitleScreenSubstate0
	dw $6f66
	dw $720c
	dw $7255
	dw $72bf
	dw $7307


SumireMiniGameTitleScreenSubstate0:
	xor  a                                           ; $6f5f: $af
	ld   [$c9f3], a                                  ; $6f60: $ea $f3 $c9
	ld   [$c9f8], a                                  ; $6f63: $ea $f8 $c9
	call TurnOnLCD                                       ; $6f66: $cd $09 $09
	ld   a, $07                                      ; $6f69: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $6f6b: $cd $e0 $1c
	ld   a, $00                                      ; $6f6e: $3e $00
	ld   [$c9f7], a                                  ; $6f70: $ea $f7 $c9
	ld   a, [$cb1d]                                  ; $6f73: $fa $1d $cb
	or   a                                           ; $6f76: $b7
	jr   z, jr_010_6f98                              ; $6f77: $28 $1f

	ld   hl, $011c                                   ; $6f79: $21 $1c $01

	M_FarCall CheckIfNextFlagSet1

	or   a                                           ; $6f90: $b7
	jr   z, jr_010_6f98                              ; $6f91: $28 $05

	ld   a, $01                                      ; $6f93: $3e $01
	ld   [$c9f7], a                                  ; $6f95: $ea $f7 $c9

jr_010_6f98:
	ld   a, $ff                                      ; $6f98: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $6f9a: $ea $0e $c2
	ld   a, $0c                                      ; $6f9d: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $6f9f: $ea $13 $c2
	ld   a, $04                                      ; $6fa2: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6fa4: $ea $14 $c2
	call ClearOam                                       ; $6fa7: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $6faa: $cd $59 $0b
	ld   a, LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                                      ; $6fad: $3e $87
	ld   [wLCDC], a                                  ; $6faf: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $6fb2: $fa $93 $c2
	push af                                          ; $6fb5: $f5
	ld   a, $03                                      ; $6fb6: $3e $03
	ld   [wWramBank], a                                  ; $6fb8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fbb: $e0 $70

;
	ld   a, $17                                      ; $6fbd: $3e $17
	ld   hl, $d000                                   ; $6fbf: $21 $00 $d0
	ld   de, $5763                                   ; $6fc2: $11 $63 $57
if def(VWF)
	call SumireMiniGameTitleScreenBank1_9000hHook
else
	call RLEXorCopy                                       ; $6fc5: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $6fc8: $0e $81
	ld   de, $9000                                   ; $6fca: $11 $00 $90
	ld   a, $03                                      ; $6fcd: $3e $03
	ld   hl, $d000                                   ; $6fcf: $21 $00 $d0
	ld   b, $40                                      ; $6fd2: $06 $40
	call EnqueueHDMATransfer                                       ; $6fd4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fd7: $cf

;
	ld   c, $81                                      ; $6fd8: $0e $81
	ld   de, $9400                                   ; $6fda: $11 $00 $94
	ld   a, $03                                      ; $6fdd: $3e $03
	ld   hl, $d400                                   ; $6fdf: $21 $00 $d4
	ld   b, $40                                      ; $6fe2: $06 $40
	call EnqueueHDMATransfer                                       ; $6fe4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fe7: $cf

;
	ld   a, $1c                                      ; $6fe8: $3e $1c
	ld   hl, $d000                                   ; $6fea: $21 $00 $d0
	ld   de, $70a5                                   ; $6fed: $11 $a5 $70
if def(VWF)
	call SumireMiniGameTitleScreenBank0_8000hHook
else
	call RLEXorCopy                                       ; $6ff0: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $6ff3: $0e $80
	ld   de, $8000                                   ; $6ff5: $11 $00 $80
	ld   a, $03                                      ; $6ff8: $3e $03
	ld   hl, $d000                                   ; $6ffa: $21 $00 $d0
	ld   b, $40                                      ; $6ffd: $06 $40
	call EnqueueHDMATransfer                                       ; $6fff: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7002: $cf

;
	ld   c, $80                                      ; $7003: $0e $80
	ld   de, $8400                                   ; $7005: $11 $00 $84
	ld   a, $03                                      ; $7008: $3e $03
	ld   hl, $d400                                   ; $700a: $21 $00 $d4
	ld   b, $40                                      ; $700d: $06 $40
	call EnqueueHDMATransfer                                       ; $700f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7012: $cf

;
	ld   a, $14                                      ; $7013: $3e $14
	ld   hl, $d000                                   ; $7015: $21 $00 $d0
	ld   de, $5298                                   ; $7018: $11 $98 $52
if def(VWF)
	call SumireMiniGameTitleScreenBank0_8800hHook
else
	call RLEXorCopy                                       ; $701b: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $701e: $0e $80
	ld   de, $8800                                   ; $7020: $11 $00 $88
	ld   a, $03                                      ; $7023: $3e $03
	ld   hl, $d000                                   ; $7025: $21 $00 $d0
	ld   b, $40                                      ; $7028: $06 $40
	call EnqueueHDMATransfer                                       ; $702a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $702d: $cf

;
	ld   c, $80                                      ; $702e: $0e $80
	ld   de, $8c00                                   ; $7030: $11 $00 $8c
	ld   a, $03                                      ; $7033: $3e $03
	ld   hl, $d400                                   ; $7035: $21 $00 $d4
	ld   b, $60                                      ; $7038: $06 $60
	call EnqueueHDMATransfer                                       ; $703a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $703d: $cf

;
	ld   c, $80                                      ; $703e: $0e $80
	ld   de, $9200                                   ; $7040: $11 $00 $92
	ld   a, $03                                      ; $7043: $3e $03
	ld   hl, $da00                                   ; $7045: $21 $00 $da
	ld   b, $60                                      ; $7048: $06 $60
	call EnqueueHDMATransfer                                       ; $704a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $704d: $cf

;
	ld   a, BANK(TileAttr_SumireMiniGameTitleScreen)                                      ; $704e: $3e $1d
	ld   de, TileAttr_SumireMiniGameTitleScreen                                   ; $7050: $11 $18 $4e
	ld   hl, $dc40                                   ; $7053: $21 $40 $dc
	ld   bc, $1412                                   ; $7056: $01 $12 $14
	call FarCopyLayout                                       ; $7059: $cd $2c $0b

;
	ld   a, BANK(TileMap_SumireMiniGameTitleScreen)                                      ; $705c: $3e $1d
	ld   hl, $da00                                   ; $705e: $21 $00 $da
	call FarCopyLayout                                       ; $7061: $cd $2c $0b

;
	ld   c, $81                                      ; $7064: $0e $81
	ld   de, $9800                                   ; $7066: $11 $00 $98
	ld   a, $03                                      ; $7069: $3e $03
	ld   hl, $dc40                                   ; $706b: $21 $40 $dc
	ld   b, $24                                      ; $706e: $06 $24
	call EnqueueHDMATransfer                                       ; $7070: $cd $7c $02

;
	ld   c, $80                                      ; $7073: $0e $80
	ld   de, $9800                                   ; $7075: $11 $00 $98
	ld   a, $03                                      ; $7078: $3e $03
	ld   hl, $da00                                   ; $707a: $21 $00 $da
	ld   b, $24                                      ; $707d: $06 $24
	call EnqueueHDMATransfer                                       ; $707f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7082: $cf

; Show flashing text tile attr, then map
	ld   de, $d600                                   ; $7083: $11 $00 $d6
	ld   hl, $dae0                                   ; $7086: $21 $e0 $da
	ld   bc, $00c0                                   ; $7089: $01 $c0 $00
	call MemCopy                                       ; $708c: $cd $a9 $09

	ld   de, $d200                                   ; $708f: $11 $00 $d2
	ld   hl, $dae0                                   ; $7092: $21 $e0 $da
	ld   bc, $00c0                                   ; $7095: $01 $c0 $00
	call MemCopy                                       ; $7098: $cd $a9 $09

;
	ld   de, $d700                                   ; $709b: $11 $00 $d7
	ld   hl, $dd20                                   ; $709e: $21 $20 $dd
	ld   bc, $00c0                                   ; $70a1: $01 $c0 $00
	call MemCopy                                       ; $70a4: $cd $a9 $09
	ld   de, $d500                                   ; $70a7: $11 $00 $d5
	ld   hl, $dd20                                   ; $70aa: $21 $20 $dd
	ld   bc, $00c0                                   ; $70ad: $01 $c0 $00
	call MemCopy                                       ; $70b0: $cd $a9 $09

; Hide flashing text tile attr, then map
	ld   a, BANK(TileAttr_SumireMiniGameTSHidingAText)                                      ; $70b3: $3e $1e
	ld   de, TileAttr_SumireMiniGameTSHidingAText                                   ; $70b5: $11 $11 $7e
if def(VWF)
	ld   hl, $d765
else
	ld   hl, $d784                                   ; $70b8: $21 $84 $d7
endc
	ld   bc, $0c02                                   ; $70bb: $01 $02 $0c
	call FarCopyLayout                                       ; $70be: $cd $2c $0b

	ld   a, BANK(TileMap_SumireMiniGameTSHidingAText)                                      ; $70c1: $3e $1e
if def(VWF)
	ld   hl, $d665
else
	ld   hl, $d684                                   ; $70c3: $21 $84 $d6
endc
	call FarCopyLayout                                       ; $70c6: $cd $2c $0b

;
	ld   de, $d400                                   ; $70c9: $11 $00 $d4
	ld   hl, $d700                                   ; $70cc: $21 $00 $d7
	ld   bc, $00c0                                   ; $70cf: $01 $c0 $00
	call MemCopy                                       ; $70d2: $cd $a9 $09
	ld   de, $d300                                   ; $70d5: $11 $00 $d3
	ld   hl, $d700                                   ; $70d8: $21 $00 $d7
	ld   bc, $00c0                                   ; $70db: $01 $c0 $00
	call MemCopy                                       ; $70de: $cd $a9 $09
	ld   de, $d900                                   ; $70e1: $11 $00 $d9
	ld   hl, $d700                                   ; $70e4: $21 $00 $d7
	ld   bc, $00c0                                   ; $70e7: $01 $c0 $00
	call MemCopy                                       ; $70ea: $cd $a9 $09
	ld   de, $d100                                   ; $70ed: $11 $00 $d1
	ld   hl, $d600                                   ; $70f0: $21 $00 $d6
	ld   bc, $00c0                                   ; $70f3: $01 $c0 $00
	call MemCopy                                       ; $70f6: $cd $a9 $09
	ld   de, $d000                                   ; $70f9: $11 $00 $d0
	ld   hl, $d600                                   ; $70fc: $21 $00 $d6
	ld   bc, $00c0                                   ; $70ff: $01 $c0 $00
	call MemCopy                                       ; $7102: $cd $a9 $09
	ld   de, $d800                                   ; $7105: $11 $00 $d8
	ld   hl, $d600                                   ; $7108: $21 $00 $d6
	ld   bc, $00c0                                   ; $710b: $01 $c0 $00
	call MemCopy                                       ; $710e: $cd $a9 $09

; Practice popup box
	ld   a, BANK(TileAttr_SumireMiniGameTSPracticeBox)                                      ; $7111: $3e $1e
	ld   de, TileAttr_SumireMiniGameTSPracticeBox                                   ; $7113: $11 $00 $77
	ld   hl, $d406                                   ; $7116: $21 $06 $d4
	ld   bc, $0806                                   ; $7119: $01 $06 $08
	call FarCopyLayout                                       ; $711c: $cd $2c $0b
	
	ld   a, BANK(TileMap_SumireMiniGameTSPracticeBox)                                      ; $711f: $3e $1e
	ld   hl, $d106                                   ; $7121: $21 $06 $d1
	call FarCopyLayout                                       ; $7124: $cd $2c $0b

; 1st popup box
	ld   a, BANK(TileAttr_SumireMiniGameTSPopupBox)                                      ; $7127: $3e $1e
	ld   de, TileAttr_SumireMiniGameTSPopupBox                                   ; $7129: $11 $0e $7c
	ld   hl, $d326                                   ; $712c: $21 $26 $d3
	ld   bc, $0804                                   ; $712f: $01 $04 $08
	call FarCopyLayout                                       ; $7132: $cd $2c $0b

	ld   a, BANK(TileMap_SumireMiniGameTSPopupBox)                                      ; $7135: $3e $1e
	ld   hl, $d026                                   ; $7137: $21 $26 $d0
	call FarCopyLayout                                       ; $713a: $cd $2c $0b

; Difficulty popup box
	ld   a, BANK(TileAttr_SumireMiniGameTSDifficultyBox)                                      ; $713d: $3e $1e
	ld   de, TileAttr_SumireMiniGameTSDifficultyBox                                   ; $713f: $11 $60 $77
	ld   hl, $d906                                   ; $7142: $21 $06 $d9
	ld   bc, $0806                                   ; $7145: $01 $06 $08
	call FarCopyLayout                                       ; $7148: $cd $2c $0b

	ld   a, BANK(TileMap_SumireMiniGameTSDifficultyBox)                                      ; $714b: $3e $1e
	ld   hl, $d806                                   ; $714d: $21 $06 $d8
	call FarCopyLayout                                       ; $7150: $cd $2c $0b

;
	pop  af                                          ; $7153: $f1
	ld   [wWramBank], a                                  ; $7154: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7157: $e0 $70
	xor  a                                           ; $7159: $af
	ld   [wWX], a                                  ; $715a: $ea $09 $c2
	ld   [wWY], a                                  ; $715d: $ea $0a $c2
	ld   [wSCX], a                                  ; $7160: $ea $07 $c2
	ld   [wSCY], a                                  ; $7163: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $7166: $cd $c9 $2e
	ld   a, $01                                      ; $7169: $3e $01
	ld   hl, $0000                                   ; $716b: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $716e: $cd $4b $2f
	ld   [$c9f6], a                                  ; $7171: $ea $f6 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $7174: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7177: $cd $76 $30
	ld   a, $00                                      ; $717a: $3e $00
	ld   bc, $0000                                   ; $717c: $01 $00 $00
	ld   de, AnimatedSpriteSpecs                                   ; $717f: $11 $80 $71
	push af                                          ; $7182: $f5
	ld   a, $03                                      ; $7183: $3e $03
	ld   [wFarCallAddr], a                                  ; $7185: $ea $98 $c2
	ld   a, $41                                      ; $7188: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $718a: $ea $99 $c2
	ld   a, $01                                      ; $718d: $3e $01
	ld   [wFarCallBank], a                                  ; $718f: $ea $9a $c2
	pop  af                                          ; $7192: $f1
	call FarCall                                       ; $7193: $cd $62 $09
	ld   a, $01                                      ; $7196: $3e $01
	ld   hl, $7000                                   ; $7198: $21 $00 $70
	ld   de, wBGPalettes                                   ; $719b: $11 $de $c2
	ld   bc, $0080                                   ; $719e: $01 $80 $00
	call FarMemCopy                                       ; $71a1: $cd $b2 $09
	ld   bc, $003f                                   ; $71a4: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $71a7: $cd $aa $04
	xor  a                                           ; $71aa: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $71ab: $ea $62 $c3
	ld   a, $40                                      ; $71ae: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $71b0: $ea $63 $c3
	ld   a, $03                                      ; $71b3: $3e $03
	ld   b, $01                                      ; $71b5: $06 $01
	ld   hl, $7000                                   ; $71b7: $21 $00 $70
	ld   c, BANK(Palettes_SumireMiniGameTitleScreen)                                      ; $71ba: $0e $1e
	ld   de, Palettes_SumireMiniGameTitleScreen                                   ; $71bc: $11 $fc $6c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $71bf: $cd $48 $07
	ld   a, $07                                      ; $71c2: $3e $07
	call PlaySong                                       ; $71c4: $cd $92 $1a
	ld   a, [wGameSubstate]                                  ; $71c7: $fa $a1 $c2
	cp   $01                                         ; $71ca: $fe $01
	jr   z, jr_010_71d8                              ; $71cc: $28 $0a

	call Call_010_74cb                               ; $71ce: $cd $cb $74
	ld   a, $02                                      ; $71d1: $3e $02
	ld   [wGameSubstate], a                                  ; $71d3: $ea $a1 $c2
	jr   jr_010_71e0                                 ; $71d6: $18 $08

jr_010_71d8:
	call DisplaySumire1stPopupBox                               ; $71d8: $cd $d5 $74
	ld   a, $03                                      ; $71db: $3e $03
	ld   [wGameSubstate], a                                  ; $71dd: $ea $a1 $c2

jr_010_71e0:
	call Call_010_73cf                               ; $71e0: $cd $cf $73
	push af                                          ; $71e3: $f5
	ld   a, $43                                      ; $71e4: $3e $43
	ld   [wFarCallAddr], a                                  ; $71e6: $ea $98 $c2
	ld   a, $6a                                      ; $71e9: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $71eb: $ea $99 $c2
	ld   a, $11                                      ; $71ee: $3e $11
	ld   [wFarCallBank], a                                  ; $71f0: $ea $9a $c2
	pop  af                                          ; $71f3: $f1
	call FarCall                                       ; $71f4: $cd $62 $09
	ld   a, BANK(Palettes_SumireMiniGameTitleScreen)                                     ; $71f7: $3e $1e
	ld   hl, Palettes_SumireMiniGameTitleScreen                                   ; $71f9: $21 $fc $6c
	ld   de, wBGPalettes                                   ; $71fc: $11 $de $c2
	ld   bc, $0080                                   ; $71ff: $01 $80 $00
	call FarMemCopy                                       ; $7202: $cd $b2 $09
	ld   bc, $003f                                   ; $7205: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7208: $cd $aa $04
	ret                                              ; $720b: $c9


	call Call_010_73cf                               ; $720c: $cd $cf $73
	call FlashABtnTextOnSumireMiniGameTitleScreen                               ; $720f: $cd $7a $74
	push af                                          ; $7212: $f5
	ld   a, $47                                      ; $7213: $3e $47
	ld   [wFarCallAddr], a                                  ; $7215: $ea $98 $c2
	ld   a, $46                                      ; $7218: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $721a: $ea $99 $c2
	ld   a, $3f                                      ; $721d: $3e $3f
	ld   [wFarCallBank], a                                  ; $721f: $ea $9a $c2
	pop  af                                          ; $7222: $f1
	call FarCall                                       ; $7223: $cd $62 $09
	ld   a, [wInGameButtonsPressed]                                  ; $7226: $fa $10 $c2
	bit  0, a                                        ; $7229: $cb $47
	jr   z, jr_010_723b                              ; $722b: $28 $0e

	call DisplaySumire1stPopupBox                               ; $722d: $cd $d5 $74
	ld   hl, wGameSubstate                                   ; $7230: $21 $a1 $c2
	inc  [hl]                                        ; $7233: $34
	ld   a, $21                                      ; $7234: $3e $21
	call PlaySoundEffect                                       ; $7236: $cd $df $1a
	jr   jr_010_7254                                 ; $7239: $18 $19

jr_010_723b:
	bit  1, a                                        ; $723b: $cb $4f
	jr   z, jr_010_7254                              ; $723d: $28 $15

	ld   a, [$cb1d]                                  ; $723f: $fa $1d $cb
	or   a                                           ; $7242: $b7
	jr   z, jr_010_7254                              ; $7243: $28 $0f

	ld   a, $03                                      ; $7245: $3e $03
	ld   [$c9f3], a                                  ; $7247: $ea $f3 $c9
	ld   a, $05                                      ; $724a: $3e $05
	ld   [wGameSubstate], a                                  ; $724c: $ea $a1 $c2
	ld   a, $22                                      ; $724f: $3e $22
	call PlaySoundEffect                                       ; $7251: $cd $df $1a

jr_010_7254:
	ret                                              ; $7254: $c9


	ld   hl, $c9f3                                   ; $7255: $21 $f3 $c9
	ld   c, $01                                      ; $7258: $0e $01
	ld   a, [$cb1d]                                  ; $725a: $fa $1d $cb
	or   a                                           ; $725d: $b7
	jr   nz, jr_010_7262                             ; $725e: $20 $02

	ld   c, $02                                      ; $7260: $0e $02

jr_010_7262:
	ld   a, [wInGameButtonsPressed]                                  ; $7262: $fa $10 $c2
	bit  6, a                                        ; $7265: $cb $77
	jr   z, jr_010_7270                              ; $7267: $28 $07

	ld   a, [hl]                                     ; $7269: $7e
	or   a                                           ; $726a: $b7
	jr   z, jr_010_72bb                              ; $726b: $28 $4e

	dec  [hl]                                        ; $726d: $35
	jr   jr_010_7279                                 ; $726e: $18 $09

jr_010_7270:
	bit  7, a                                        ; $7270: $cb $7f
	jr   z, jr_010_7283                              ; $7272: $28 $0f

	ld   a, [hl]                                     ; $7274: $7e
	cp   c                                           ; $7275: $b9
	jr   z, jr_010_72bb                              ; $7276: $28 $43

	inc  [hl]                                        ; $7278: $34

jr_010_7279:
	call Call_010_743d                               ; $7279: $cd $3d $74
	ld   a, $20                                      ; $727c: $3e $20
	call PlaySoundEffect                                       ; $727e: $cd $df $1a
	jr   jr_010_72bb                                 ; $7281: $18 $38

jr_010_7283:
	bit  1, a                                        ; $7283: $cb $4f
	jr   z, jr_010_7298                              ; $7285: $28 $11

	call Call_010_753f                               ; $7287: $cd $3f $75
	call Call_010_74cb                               ; $728a: $cd $cb $74
	ld   hl, wGameSubstate                                   ; $728d: $21 $a1 $c2
	dec  [hl]                                        ; $7290: $35
	ld   a, $22                                      ; $7291: $3e $22
	call PlaySoundEffect                                       ; $7293: $cd $df $1a
	jr   jr_010_72bb                                 ; $7296: $18 $23

jr_010_7298:
	bit  0, a                                        ; $7298: $cb $47
	jr   z, jr_010_72bb                              ; $729a: $28 $1f

	ld   a, $21                                      ; $729c: $3e $21
	call PlaySoundEffect                                       ; $729e: $cd $df $1a
	ld   a, $05                                      ; $72a1: $3e $05
	ld   [wGameSubstate], a                                  ; $72a3: $ea $a1 $c2
	ld   a, [$c9f3]                                  ; $72a6: $fa $f3 $c9
	or   a                                           ; $72a9: $b7
	jr   z, jr_010_72bb                              ; $72aa: $28 $0f

	ld   a, [$c9f7]                                  ; $72ac: $fa $f7 $c9
	cp   $00                                         ; $72af: $fe $00
	jr   z, jr_010_72bb                              ; $72b1: $28 $08

	call DisplaySumireDifficultyPopupBox                               ; $72b3: $cd $1d $75
	ld   a, $04                                      ; $72b6: $3e $04
	ld   [wGameSubstate], a                                  ; $72b8: $ea $a1 $c2

jr_010_72bb:
	call Call_010_73cf                               ; $72bb: $cd $cf $73
	ret                                              ; $72be: $c9


	ld   hl, $c9f8                                   ; $72bf: $21 $f8 $c9
	ld   a, [wInGameButtonsPressed]                                  ; $72c2: $fa $10 $c2
	bit  6, a                                        ; $72c5: $cb $77
	jr   z, jr_010_72d0                              ; $72c7: $28 $07

	ld   a, [hl]                                     ; $72c9: $7e
	or   a                                           ; $72ca: $b7
	jr   z, jr_010_7303                              ; $72cb: $28 $36

	dec  [hl]                                        ; $72cd: $35
	jr   jr_010_72da                                 ; $72ce: $18 $0a

jr_010_72d0:
	bit  7, a                                        ; $72d0: $cb $7f
	jr   z, jr_010_72e4                              ; $72d2: $28 $10

	ld   a, [hl]                                     ; $72d4: $7e
	cp   $01                                         ; $72d5: $fe $01
	jr   z, jr_010_7303                              ; $72d7: $28 $2a

	inc  [hl]                                        ; $72d9: $34

jr_010_72da:
	call Call_010_7433                               ; $72da: $cd $33 $74
	ld   a, $20                                      ; $72dd: $3e $20
	call PlaySoundEffect                                       ; $72df: $cd $df $1a
	jr   jr_010_7303                                 ; $72e2: $18 $1f

jr_010_72e4:
	bit  1, a                                        ; $72e4: $cb $4f
	jr   z, jr_010_72f6                              ; $72e6: $28 $0e

	call DisplaySumire1stPopupBox                               ; $72e8: $cd $d5 $74
	ld   hl, wGameSubstate                                   ; $72eb: $21 $a1 $c2
	dec  [hl]                                        ; $72ee: $35
	ld   a, $22                                      ; $72ef: $3e $22
	call PlaySoundEffect                                       ; $72f1: $cd $df $1a
	jr   jr_010_7303                                 ; $72f4: $18 $0d

jr_010_72f6:
	bit  0, a                                        ; $72f6: $cb $47
	jr   z, jr_010_7303                              ; $72f8: $28 $09

	ld   a, $21                                      ; $72fa: $3e $21
	call PlaySoundEffect                                       ; $72fc: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $72ff: $21 $a1 $c2
	inc  [hl]                                        ; $7302: $34

jr_010_7303:
	call Call_010_73cf                               ; $7303: $cd $cf $73
	ret                                              ; $7306: $c9


	call Call_010_73cf                               ; $7307: $cd $cf $73
	ld   a, [$c9f3]                                  ; $730a: $fa $f3 $c9
	or   a                                           ; $730d: $b7
	jr   z, jr_010_7338                              ; $730e: $28 $28

	cp   $03                                         ; $7310: $fe $03
	jr   z, jr_010_7338                              ; $7312: $28 $24

	ld   a, [$c9f6]                                  ; $7314: $fa $f6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7317: $cd $76 $30

	M_FarCall Func_01_4143

	ld   a, c                                        ; $732e: $79
	cp   $56                                         ; $732f: $fe $56
	ret  nz                                          ; $7331: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7332: $cf
	ld   a, $37                                      ; $7333: $3e $37
	call PlaySampledSound                                       ; $7335: $cd $64 $1b

jr_010_7338:
	xor  a                                           ; $7338: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7339: $ea $62 $c3
	ld   a, $40                                      ; $733c: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $733e: $ea $63 $c3
	ld   a, $03                                      ; $7341: $3e $03
	ld   b, BANK(Palettes_SumireMiniGameTitleScreen)                                      ; $7343: $06 $1e
	ld   hl, Palettes_SumireMiniGameTitleScreen                                   ; $7345: $21 $fc $6c
	ld   c, $01                                      ; $7348: $0e $01
	ld   de, $7000                                   ; $734a: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $734d: $cd $48 $07
	ld   a, [$c9f3]                                  ; $7350: $fa $f3 $c9
	push af                                          ; $7353: $f5
	ld   a, $83                                      ; $7354: $3e $83
	ld   [wFarCallAddr], a                                  ; $7356: $ea $98 $c2
	ld   a, $77                                      ; $7359: $3e $77
	ld   [wFarCallAddr+1], a                                  ; $735b: $ea $99 $c2
	ld   a, $3e                                      ; $735e: $3e $3e
	ld   [wFarCallBank], a                                  ; $7360: $ea $9a $c2
	pop  af                                          ; $7363: $f1
	call FarCall                                       ; $7364: $cd $62 $09
	ld   h, $1d                                      ; $7367: $26 $1d
	ld   l, $01                                      ; $7369: $2e $01
	push af                                          ; $736b: $f5
	ld   a, $32                                      ; $736c: $3e $32
	ld   [wFarCallAddr], a                                  ; $736e: $ea $98 $c2
	ld   a, $40                                      ; $7371: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $7373: $ea $99 $c2
	ld   a, $20                                      ; $7376: $3e $20
	ld   [wFarCallBank], a                                  ; $7378: $ea $9a $c2
	pop  af                                          ; $737b: $f1
	call FarCall                                       ; $737c: $cd $62 $09
	ld   a, [$c9f3]                                  ; $737f: $fa $f3 $c9
	or   a                                           ; $7382: $b7
	jr   z, jr_010_73ce                              ; $7383: $28 $49

	ld   b, $00                                      ; $7385: $06 $00
	ld   a, [$c9f9]                                  ; $7387: $fa $f9 $c9
	ld   h, a                                        ; $738a: $67
	ld   a, [$c9fa]                                  ; $738b: $fa $fa $c9
	ld   l, a                                        ; $738e: $6f
	ld   a, [$cb1d]                                  ; $738f: $fa $1d $cb
	or   a                                           ; $7392: $b7
	jr   nz, jr_010_73a2                             ; $7393: $20 $0d

	ld   a, [$c9f3]                                  ; $7395: $fa $f3 $c9
	cp   $02                                         ; $7398: $fe $02
	jr   z, jr_010_73a2                              ; $739a: $28 $06

	ld   h, $1d                                      ; $739c: $26 $1d
	ld   l, $01                                      ; $739e: $2e $01
	ld   b, $01                                      ; $73a0: $06 $01

jr_010_73a2:
	ld   a, [$c9f8]                                  ; $73a2: $fa $f8 $c9
	ld   c, a                                        ; $73a5: $4f
	ld   a, b                                        ; $73a6: $78
	push af                                          ; $73a7: $f5
	ld   a, $18                                      ; $73a8: $3e $18
	ld   [wFarCallAddr], a                                  ; $73aa: $ea $98 $c2
	ld   a, $40                                      ; $73ad: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $73af: $ea $99 $c2
	ld   a, $20                                      ; $73b2: $3e $20
	ld   [wFarCallBank], a                                  ; $73b4: $ea $9a $c2
	pop  af                                          ; $73b7: $f1
	call FarCall                                       ; $73b8: $cd $62 $09
	ld   a, [$c9f3]                                  ; $73bb: $fa $f3 $c9
	cp   $03                                         ; $73be: $fe $03
	jr   nz, jr_010_73ce                             ; $73c0: $20 $0c

	ld   a, [$c9f9]                                  ; $73c2: $fa $f9 $c9
	ld   [wGameState], a                                  ; $73c5: $ea $a0 $c2
	ld   a, [$c9fa]                                  ; $73c8: $fa $fa $c9
	ld   [wGameSubstate], a                                  ; $73cb: $ea $a1 $c2

jr_010_73ce:
	ret                                              ; $73ce: $c9


Call_010_73cf:
	call ClearOam                                       ; $73cf: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $73d2: $cd $d3 $2e
	call Call_010_73d9                               ; $73d5: $cd $d9 $73
	ret                                              ; $73d8: $c9


Call_010_73d9:
;
	ld   bc, $5020                                   ; $73d9: $01 $20 $50
	ld   a, $0a                                      ; $73dc: $3e $0a
	ld   [wSpriteGroup], a                                  ; $73de: $ea $1a $c2
	ld   a, $54                                      ; $73e1: $3e $54
	call LoadSpriteFromMainTable                                       ; $73e3: $cd $16 $0e

;
	ld   a, [$c9ee]                                  ; $73e6: $fa $ee $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $73e9: $cd $76 $30

	M_FarCall Func_01_4143

	ld   a, b                                        ; $7400: $78
	cp   $80                                         ; $7401: $fe $80
	jr   c, .done                              ; $7403: $38 $0d

	ld   bc, $5020                                   ; $7405: $01 $20 $50
	ld   a, $0a                                      ; $7408: $3e $0a
	ld   [wSpriteGroup], a                                  ; $740a: $ea $1a $c2
	ld   a, $55                                      ; $740d: $3e $55
	call LoadSpriteFromMainTable                                       ; $740f: $cd $16 $0e

.done:
	ret                                              ; $7412: $c9


Call_010_7413:
	ld   a, [$c9f6]                                  ; $7413: $fa $f6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7416: $cd $76 $30
	ld   a, $00                                      ; $7419: $3e $00
	ld   de, AnimatedSpriteSpecs                                   ; $741b: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecAddress
	ret                                              ; $7432: $c9


Call_010_7433:
	ld   hl, $743b                                   ; $7433: $21 $3b $74
	ld   a, [$c9f8]                                  ; $7436: $fa $f8 $c9
	jr   jr_010_7453                                 ; $7439: $18 $18

	ld   d, b                                        ; $743b: $50
	ld   e, [hl]                                     ; $743c: $5e

Call_010_743d:
	ld   hl, $7451                                   ; $743d: $21 $51 $74
	ld   a, [$cb1d]                                  ; $7440: $fa $1d $cb
	or   a                                           ; $7443: $b7
	jr   nz, jr_010_7449                             ; $7444: $20 $03

	ld   hl, $744e                                   ; $7446: $21 $4e $74

jr_010_7449:
	ld   a, [$c9f3]                                  ; $7449: $fa $f3 $c9
	jr   jr_010_7453                                 ; $744c: $18 $05

	ld   b, d                                        ; $744e: $42
	ld   d, b                                        ; $744f: $50
	ld   e, [hl]                                     ; $7450: $5e
	ld   c, d                                        ; $7451: $4a
	ld   d, [hl]                                     ; $7452: $56

jr_010_7453:
	ld   c, a                                        ; $7453: $4f
	ld   b, $00                                      ; $7454: $06 $00
	add  hl, bc                                      ; $7456: $09
	ld   c, [hl]                                     ; $7457: $4e
	ld   b, $3d                                      ; $7458: $06 $3d
	ld   a, [$c9f6]                                  ; $745a: $fa $f6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $745d: $cd $76 $30
	ld   a, $69                                      ; $7460: $3e $69
	ld   de, AnimatedSpriteSpecs                                   ; $7462: $11 $80 $71
	push af                                          ; $7465: $f5
	ld   a, $03                                      ; $7466: $3e $03
	ld   [wFarCallAddr], a                                  ; $7468: $ea $98 $c2
	ld   a, $41                                      ; $746b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $746d: $ea $99 $c2
	ld   a, $01                                      ; $7470: $3e $01
	ld   [wFarCallBank], a                                  ; $7472: $ea $9a $c2
	pop  af                                          ; $7475: $f1
	call FarCall                                       ; $7476: $cd $62 $09
	ret                                              ; $7479: $c9


FlashABtnTextOnSumireMiniGameTitleScreen:
	ld   hl, $c9f4                                   ; $747a: $21 $f4 $c9
	dec  [hl]                                        ; $747d: $35
	jr   nz, .done                             ; $747e: $20 $4a

	ld   [hl], $21                                   ; $7480: $36 $21
	ld   hl, $c9f5                                   ; $7482: $21 $f5 $c9
	ld   a, [hl]                                     ; $7485: $7e
	xor  $01                                         ; $7486: $ee $01
	ld   [hl], a                                     ; $7488: $77
	or   a                                           ; $7489: $b7
	jr   nz, .hideText                             ; $748a: $20 $20

	ld   c, $80                                      ; $748c: $0e $80
if def(VWF)
	ld   de, $9940
	ld   a, $03
	ld   hl, $d260
else
	ld   de, $9960                                   ; $748e: $11 $60 $99
	ld   a, $03                                      ; $7491: $3e $03
	ld   hl, $d280                                   ; $7493: $21 $80 $d2
endc
	ld   b, $04                                      ; $7496: $06 $04
	call EnqueueHDMATransfer                                       ; $7498: $cd $7c $02
	ld   c, $81                                      ; $749b: $0e $81
if def(VWF)
	ld   de, $9940
	ld   a, $03
	ld   hl, $d560
else
	ld   de, $9960                                   ; $749d: $11 $60 $99
	ld   a, $03                                      ; $74a0: $3e $03
	ld   hl, $d580                                   ; $74a2: $21 $80 $d5
endc
	ld   b, $04                                      ; $74a5: $06 $04
	call EnqueueHDMATransfer                                       ; $74a7: $cd $7c $02
	jr   .done                                 ; $74aa: $18 $1e

.hideText:
	ld   c, $80                                      ; $74ac: $0e $80
if def(VWF)
	ld   de, $9940
	ld   a, $03
	ld   hl, $d660
else
	ld   de, $9960                                   ; $74ae: $11 $60 $99
	ld   a, $03                                      ; $74b1: $3e $03
	ld   hl, $d680                                   ; $74b3: $21 $80 $d6
endc
	ld   b, $04                                      ; $74b6: $06 $04
	call EnqueueHDMATransfer                                       ; $74b8: $cd $7c $02
	ld   c, $81                                      ; $74bb: $0e $81
if def(VWF)
	ld   de, $9940
	ld   a, $03
	ld   hl, $d760
else
	ld   de, $9960                                   ; $74bd: $11 $60 $99
	ld   a, $03                                      ; $74c0: $3e $03
	ld   hl, $d780                                   ; $74c2: $21 $80 $d7
endc
	ld   b, $04                                      ; $74c5: $06 $04
	call EnqueueHDMATransfer                                       ; $74c7: $cd $7c $02

.done:
	ret                                              ; $74ca: $c9


Call_010_74cb:
	ld   a, $21                                      ; $74cb: $3e $21
	ld   [$c9f4], a                                  ; $74cd: $ea $f4 $c9
	xor  a                                           ; $74d0: $af
	ld   [$c9f5], a                                  ; $74d1: $ea $f5 $c9
	ret                                              ; $74d4: $c9


DisplaySumire1stPopupBox:
	call Call_010_743d                               ; $74d5: $cd $3d $74
	ld   a, [$cb1d]                                  ; $74d8: $fa $1d $cb
	or   a                                           ; $74db: $b7
	jr   nz, .noPractice                             ; $74dc: $20 $20

	ld   c, $80                                      ; $74de: $0e $80
	ld   de, $98e0                                   ; $74e0: $11 $e0 $98
	ld   a, $03                                      ; $74e3: $3e $03
	ld   hl, $d100                                   ; $74e5: $21 $00 $d1
	ld   b, $0c                                      ; $74e8: $06 $0c
	call EnqueueHDMATransfer                                       ; $74ea: $cd $7c $02
	ld   c, $81                                      ; $74ed: $0e $81
	ld   de, $98e0                                   ; $74ef: $11 $e0 $98
	ld   a, $03                                      ; $74f2: $3e $03
	ld   hl, $d400                                   ; $74f4: $21 $00 $d4
	ld   b, $0c                                      ; $74f7: $06 $0c
	call EnqueueHDMATransfer                                       ; $74f9: $cd $7c $02
	jr   jr_010_751c                                 ; $74fc: $18 $1e

.noPractice:
	ld   c, $80                                      ; $74fe: $0e $80
	ld   de, $98e0                                   ; $7500: $11 $e0 $98
	ld   a, $03                                      ; $7503: $3e $03
	ld   hl, $d000                                   ; $7505: $21 $00 $d0
	ld   b, $0c                                      ; $7508: $06 $0c
	call EnqueueHDMATransfer                                       ; $750a: $cd $7c $02
	ld   c, $81                                      ; $750d: $0e $81
	ld   de, $98e0                                   ; $750f: $11 $e0 $98
	ld   a, $03                                      ; $7512: $3e $03
	ld   hl, $d300                                   ; $7514: $21 $00 $d3
	ld   b, $0c                                      ; $7517: $06 $0c
	call EnqueueHDMATransfer                                       ; $7519: $cd $7c $02

jr_010_751c:
	ret                                              ; $751c: $c9


DisplaySumireDifficultyPopupBox:
	call Call_010_7433                               ; $751d: $cd $33 $74
	ld   c, $80                                      ; $7520: $0e $80
	ld   de, $98e0                                   ; $7522: $11 $e0 $98
	ld   a, $03                                      ; $7525: $3e $03
	ld   hl, $d800                                   ; $7527: $21 $00 $d8
	ld   b, $0c                                      ; $752a: $06 $0c
	call EnqueueHDMATransfer                                       ; $752c: $cd $7c $02
	ld   c, $81                                      ; $752f: $0e $81
	ld   de, $98e0                                   ; $7531: $11 $e0 $98
	ld   a, $03                                      ; $7534: $3e $03
	ld   hl, $d900                                   ; $7536: $21 $00 $d9
	ld   b, $0c                                      ; $7539: $06 $0c
	call EnqueueHDMATransfer                                       ; $753b: $cd $7c $02
	ret                                              ; $753e: $c9


Call_010_753f:
	call Call_010_7413                               ; $753f: $cd $13 $74
	ld   c, $80                                      ; $7542: $0e $80
	ld   de, $98e0                                   ; $7544: $11 $e0 $98
	ld   a, $03                                      ; $7547: $3e $03
	ld   hl, $d200                                   ; $7549: $21 $00 $d2
	ld   b, $0c                                      ; $754c: $06 $0c
	call EnqueueHDMATransfer                                       ; $754e: $cd $7c $02
	ld   c, $81                                      ; $7551: $0e $81
	ld   de, $98e0                                   ; $7553: $11 $e0 $98
	ld   a, $03                                      ; $7556: $3e $03
	ld   hl, $d500                                   ; $7558: $21 $00 $d5
	ld   b, $0c                                      ; $755b: $06 $0c
	call EnqueueHDMATransfer                                       ; $755d: $cd $7c $02
	ret                                              ; $7560: $c9


SetSumireMiniGameTitleScreenState::
	ld   a, h                                        ; $7561: $7c
	ld   [$c9f9], a                                  ; $7562: $ea $f9 $c9
	ld   a, l                                        ; $7565: $7d
	ld   [$c9fa], a                                  ; $7566: $ea $fa $c9
	ld   a, GS_SUMIRE_MINI_GAME_TITLE_SCREEN                                      ; $7569: $3e $1d
	ld   [wGameState], a                                  ; $756b: $ea $a0 $c2
	ld   a, $00                                      ; $756e: $3e $00
	ld   [wGameSubstate], a                                  ; $7570: $ea $a1 $c2
	ret                                              ; $7573: $c9


GameState22_IrisMiniGameHelpScreen::
	ld   a, [wGameSubstate]                                  ; $7574: $fa $a1 $c2
	rst  JumpTable                                         ; $7577: $df
	dw IrisMiniGameHelpScreenSubstate0
	dw $7682
	dw $7693


IrisMiniGameHelpScreenSubstate0:
	ld   a, $ff                                      ; $757e: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $7580: $ea $0e $c2
	ld   a, $0c                                      ; $7583: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $7585: $ea $13 $c2
	ld   a, $04                                      ; $7588: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $758a: $ea $14 $c2
	call ClearOam                                       ; $758d: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $7590: $cd $59 $0b
	ld   a, LCDCF_ON|LCDCF_WIN9C00|LCDCF_OBJON|LCDCF_BGON                                      ; $7593: $3e $c3
	ld   [wLCDC], a                                  ; $7595: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $7598: $fa $93 $c2
	push af                                          ; $759b: $f5
	ld   a, $03                                      ; $759c: $3e $03
	ld   [wWramBank], a                                  ; $759e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $75a1: $e0 $70

;
	ld   a, $19                                      ; $75a3: $3e $19
	ld   hl, $d000                                   ; $75a5: $21 $00 $d0
	ld   de, $6bd7                                   ; $75a8: $11 $d7 $6b
if def(VWF)
	call IrisMiniGameHelpScreenTileDataHook
else
	call RLEXorCopy                                       ; $75ab: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $75ae: $0e $80
	ld   de, $8800                                   ; $75b0: $11 $00 $88
	ld   a, $03                                      ; $75b3: $3e $03
	ld   hl, $d000                                   ; $75b5: $21 $00 $d0
	ld   b, $40                                      ; $75b8: $06 $40
	call EnqueueHDMATransfer                                       ; $75ba: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75bd: $cf

;
	ld   c, $80                                      ; $75be: $0e $80
	ld   de, $8c00                                   ; $75c0: $11 $00 $8c
	ld   a, $03                                      ; $75c3: $3e $03
	ld   hl, $d400                                   ; $75c5: $21 $00 $d4
	ld   b, $60                                      ; $75c8: $06 $60
	call EnqueueHDMATransfer                                       ; $75ca: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75cd: $cf

;
	ld   c, $80                                      ; $75ce: $0e $80
	ld   de, $9200                                   ; $75d0: $11 $00 $92
	ld   a, $03                                      ; $75d3: $3e $03
	ld   hl, $da00                                   ; $75d5: $21 $00 $da
	ld   b, $60                                      ; $75d8: $06 $60
	call EnqueueHDMATransfer                                       ; $75da: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75dd: $cf

; Tile attr, then map
	ld   a, $1d                                      ; $75de: $3e $1d
	ld   de, $50e8                                   ; $75e0: $11 $e8 $50
	ld   hl, $d000                                   ; $75e3: $21 $00 $d0
	ld   bc, $1412                                   ; $75e6: $01 $12 $14
if def(VWF)
	call IrisMiniGameHelpScreenTileAttrHook
else
	call FarCopyLayout                                       ; $75e9: $cd $2c $0b
endc

	ld   a, $1d                                      ; $75ec: $3e $1d
	ld   hl, $d400                                   ; $75ee: $21 $00 $d4
if def(VWF)
	call IrisMiniGameHelpScreenTileMapHook
else
	call FarCopyLayout                                       ; $75f1: $cd $2c $0b
endc

;
	ld   c, $81                                      ; $75f4: $0e $81
	ld   de, $9800                                   ; $75f6: $11 $00 $98
	ld   a, $03                                      ; $75f9: $3e $03
	ld   hl, $d000                                   ; $75fb: $21 $00 $d0
	ld   b, $24                                      ; $75fe: $06 $24
	call EnqueueHDMATransfer                                       ; $7600: $cd $7c $02
	ld   c, $80                                      ; $7603: $0e $80
	ld   de, $9800                                   ; $7605: $11 $00 $98
	ld   a, $03                                      ; $7608: $3e $03
	ld   hl, $d400                                   ; $760a: $21 $00 $d4
	ld   b, $24                                      ; $760d: $06 $24
	call EnqueueHDMATransfer                                       ; $760f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7612: $cf
	pop  af                                          ; $7613: $f1
	ld   [wWramBank], a                                  ; $7614: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7617: $e0 $70
	xor  a                                           ; $7619: $af
	ld   [wWX], a                                  ; $761a: $ea $09 $c2
	ld   [wWY], a                                  ; $761d: $ea $0a $c2
	ld   [wSCX], a                                  ; $7620: $ea $07 $c2
	ld   [wSCY], a                                  ; $7623: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $7626: $cd $c9 $2e
	ld   a, $01                                      ; $7629: $3e $01
	ld   hl, $7000                                   ; $762b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $762e: $11 $de $c2
	ld   bc, $0080                                   ; $7631: $01 $80 $00
	call FarMemCopy                                       ; $7634: $cd $b2 $09
	ld   bc, $003f                                   ; $7637: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $763a: $cd $aa $04
	xor  a                                           ; $763d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $763e: $ea $62 $c3
	ld   a, $20                                      ; $7641: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7643: $ea $63 $c3
	ld   a, $03                                      ; $7646: $3e $03
	ld   b, $01                                      ; $7648: $06 $01
	ld   hl, $7000                                   ; $764a: $21 $00 $70
	ld   c, $1e                                      ; $764d: $0e $1e
	ld   de, $7c8e                                   ; $764f: $11 $8e $7c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7652: $cd $48 $07
	push af                                          ; $7655: $f5
	ld   a, $54                                      ; $7656: $3e $54
	ld   [wFarCallAddr], a                                  ; $7658: $ea $98 $c2
	ld   a, $57                                      ; $765b: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $765d: $ea $99 $c2
	ld   a, $11                                      ; $7660: $3e $11
	ld   [wFarCallBank], a                                  ; $7662: $ea $9a $c2
	pop  af                                          ; $7665: $f1
	call FarCall                                       ; $7666: $cd $62 $09
	ld   a, $1e                                      ; $7669: $3e $1e
	ld   hl, $7c8e                                   ; $766b: $21 $8e $7c
	ld   de, wBGPalettes                                   ; $766e: $11 $de $c2
	ld   bc, $0040                                   ; $7671: $01 $40 $00
	call FarMemCopy                                       ; $7674: $cd $b2 $09
	ld   bc, $001f                                   ; $7677: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $767a: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $767d: $21 $a1 $c2
	inc  [hl]                                        ; $7680: $34
	ret                                              ; $7681: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $7682: $fa $10 $c2
	and  $03                                         ; $7685: $e6 $03
	jr   z, jr_010_7692                              ; $7687: $28 $09

	ld   a, $21                                      ; $7689: $3e $21
	call PlaySoundEffect                                       ; $768b: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $768e: $21 $a1 $c2
	inc  [hl]                                        ; $7691: $34

jr_010_7692:
	ret                                              ; $7692: $c9


	xor  a                                           ; $7693: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7694: $ea $62 $c3
	ld   a, $20                                      ; $7697: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7699: $ea $63 $c3
	ld   a, $03                                      ; $769c: $3e $03
	ld   b, $1e                                      ; $769e: $06 $1e
	ld   hl, $7c8e                                   ; $76a0: $21 $8e $7c
	ld   c, $01                                      ; $76a3: $0e $01
	ld   de, $7000                                   ; $76a5: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $76a8: $cd $48 $07
	push af                                          ; $76ab: $f5
	ld   a, $54                                      ; $76ac: $3e $54
	ld   [wFarCallAddr], a                                  ; $76ae: $ea $98 $c2
	ld   a, $57                                      ; $76b1: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $76b3: $ea $99 $c2
	ld   a, $11                                      ; $76b6: $3e $11
	ld   [wFarCallBank], a                                  ; $76b8: $ea $9a $c2
	pop  af                                          ; $76bb: $f1
	call FarCall                                       ; $76bc: $cd $62 $09
	ld   a, $01                                      ; $76bf: $3e $01
	ld   hl, $7000                                   ; $76c1: $21 $00 $70
	ld   de, wBGPalettes                                   ; $76c4: $11 $de $c2
	ld   bc, $0040                                   ; $76c7: $01 $40 $00
	call FarMemCopy                                       ; $76ca: $cd $b2 $09
	ld   bc, $001f                                   ; $76cd: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $76d0: $cd $aa $04
	ld   a, [$c9fd]                                  ; $76d3: $fa $fd $c9
	ld   [wGameState], a                                  ; $76d6: $ea $a0 $c2
	ld   a, [$c9fe]                                  ; $76d9: $fa $fe $c9
	ld   [wGameSubstate], a                                  ; $76dc: $ea $a1 $c2
	ret                                              ; $76df: $c9


	ld   a, h                                        ; $76e0: $7c
	ld   [$c9fd], a                                  ; $76e1: $ea $fd $c9
	ld   a, l                                        ; $76e4: $7d
	ld   [$c9fe], a                                  ; $76e5: $ea $fe $c9
	ld   a, GS_IRIS_MINI_GAME_HELP_SCREEN                                      ; $76e8: $3e $22
	ld   [wGameState], a                                  ; $76ea: $ea $a0 $c2
	ld   a, $00                                      ; $76ed: $3e $00
	ld   [wGameSubstate], a                                  ; $76ef: $ea $a1 $c2
	ret                                              ; $76f2: $c9


GameState23::
	ld   a, [wGameSubstate]                                  ; $76f3: $fa $a1 $c2
	rst  JumpTable                                         ; $76f6: $df
	ld   bc, $fd77                                   ; $76f7: $01 $77 $fd
	ld   [hl], a                                     ; $76fa: $77
	dec  de                                          ; $76fb: $1b
	ld   a, b                                        ; $76fc: $78
	add  hl, hl                                      ; $76fd: $29
	ld   a, b                                        ; $76fe: $78
	ld   a, [hl-]                                    ; $76ff: $3a
	ld   a, b                                        ; $7700: $78
	call TurnOffLCD                                       ; $7701: $cd $e3 $08
	ld   a, $00                                      ; $7704: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $7706: $cd $e0 $1c
	ld   a, $ff                                      ; $7709: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $770b: $ea $0e $c2
	ld   a, $0c                                      ; $770e: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $7710: $ea $13 $c2
	ld   a, $04                                      ; $7713: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $7715: $ea $14 $c2
	call ClearOam                                       ; $7718: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $771b: $cd $59 $0b
	ld   a, LCDCF_OBJON|LCDCF_BGON                                      ; $771e: $3e $03
	ld   [wLCDC], a                                  ; $7720: $ea $03 $c2
	ld   a, $01                                      ; $7723: $3e $01
	ldh  [rVBK], a                                   ; $7725: $e0 $4f
	ld   a, $1d                                      ; $7727: $3e $1d
	ld   hl, $9800                                   ; $7729: $21 $00 $98
	ld   de, $7be3                                   ; $772c: $11 $e3 $7b
	call RLEXorCopy                                       ; $772f: $cd $d2 $09
	ld   a, $1e                                      ; $7732: $3e $1e
	ld   hl, $9000                                   ; $7734: $21 $00 $90
	ld   de, $4e0b                                   ; $7737: $11 $0b $4e
	call RLEXorCopy                                       ; $773a: $cd $d2 $09
	xor  a                                           ; $773d: $af
	ldh  [rVBK], a                                   ; $773e: $e0 $4f
	ld   a, $1d                                      ; $7740: $3e $1d
	ld   hl, $9800                                   ; $7742: $21 $00 $98
	ld   de, $69ad                                   ; $7745: $11 $ad $69
	call RLEXorCopy                                       ; $7748: $cd $d2 $09
	ld   a, $1b                                      ; $774b: $3e $1b
	ld   hl, $9000                                   ; $774d: $21 $00 $90
	ld   de, $4f14                                   ; $7750: $11 $14 $4f
	call RLEXorCopy                                       ; $7753: $cd $d2 $09
	ld   a, [wWramBank]                                  ; $7756: $fa $93 $c2
	push af                                          ; $7759: $f5
	ld   a, $03                                      ; $775a: $3e $03
	ld   [wWramBank], a                                  ; $775c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $775f: $e0 $70
	ld   a, $1d                                      ; $7761: $3e $1d
	ld   hl, $d000                                   ; $7763: $21 $00 $d0
	ld   de, $69ad                                   ; $7766: $11 $ad $69
	call RLEXorCopy                                       ; $7769: $cd $d2 $09
	ld   a, $1d                                      ; $776c: $3e $1d
	ld   hl, $d400                                   ; $776e: $21 $00 $d4
	ld   de, $7be3                                   ; $7771: $11 $e3 $7b
	call RLEXorCopy                                       ; $7774: $cd $d2 $09
	pop  af                                          ; $7777: $f1
	ld   [wWramBank], a                                  ; $7778: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $777b: $e0 $70
	xor  a                                           ; $777d: $af
	ld   [wWY], a                                  ; $777e: $ea $0a $c2
	ld   [wWX], a                                  ; $7781: $ea $09 $c2
	ld   [wSCX], a                                  ; $7784: $ea $07 $c2
	ld   [wSCY], a                                  ; $7787: $ea $08 $c2
	ld   [$c8c2], a                                  ; $778a: $ea $c2 $c8
	ld   [$c941], a                                  ; $778d: $ea $41 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $7790: $cd $c9 $2e
	ld   a, $01                                      ; $7793: $3e $01
	ld   hl, $7000                                   ; $7795: $21 $00 $70
	ld   de, wBGPalettes                                   ; $7798: $11 $de $c2
	ld   bc, $0080                                   ; $779b: $01 $80 $00
	call FarMemCopy                                       ; $779e: $cd $b2 $09
	ld   bc, $003f                                   ; $77a1: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $77a4: $cd $aa $04
	xor  a                                           ; $77a7: $af
	ld   a, $08                                      ; $77a8: $3e $08
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $77aa: $ea $62 $c3
	ld   a, $20                                      ; $77ad: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $77af: $ea $63 $c3
	ld   a, $03                                      ; $77b2: $3e $03
	ld   b, $01                                      ; $77b4: $06 $01
	ld   hl, $7000                                   ; $77b6: $21 $00 $70
	ld   c, $1e                                      ; $77b9: $0e $1e
	ld   de, $7a0e                                   ; $77bb: $11 $0e $7a
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $77be: $cd $48 $07
	call TurnOnLCD                                       ; $77c1: $cd $09 $09
	ld   a, $07                                      ; $77c4: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $77c6: $cd $e0 $1c
	push af                                          ; $77c9: $f5
	ld   a, $54                                      ; $77ca: $3e $54
	ld   [wFarCallAddr], a                                  ; $77cc: $ea $98 $c2
	ld   a, $57                                      ; $77cf: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $77d1: $ea $99 $c2
	ld   a, $11                                      ; $77d4: $3e $11
	ld   [wFarCallBank], a                                  ; $77d6: $ea $9a $c2
	pop  af                                          ; $77d9: $f1
	call FarCall                                       ; $77da: $cd $62 $09
	ld   a, $1e                                      ; $77dd: $3e $1e
	ld   hl, $7a0e                                   ; $77df: $21 $0e $7a
	ld   de, wBGPalettes                                   ; $77e2: $11 $de $c2
	ld   bc, $0080                                   ; $77e5: $01 $80 $00
	call FarMemCopy                                       ; $77e8: $cd $b2 $09
	ld   bc, $003f                                   ; $77eb: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $77ee: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $77f1: $21 $a1 $c2
	inc  [hl]                                        ; $77f4: $34
	ldh  a, [rKEY1]                                  ; $77f5: $f0 $4d
	bit  7, a                                        ; $77f7: $cb $7f
	call nz, ToggleDoubleSpeedMode                           ; $77f9: $c4 $f4 $53
	ret                                              ; $77fc: $c9


	call Call_010_78ee                               ; $77fd: $cd $ee $78
	jr   jr_010_7813                                 ; $7800: $18 $11

	ld   a, [$c902]                                  ; $7802: $fa $02 $c9
	cp   $6c                                         ; $7805: $fe $6c
	jr   nz, jr_010_7813                             ; $7807: $20 $0a

	ld   a, $01                                      ; $7809: $3e $01
	ld   [$c941], a                                  ; $780b: $ea $41 $c9
	call Call_010_7891                               ; $780e: $cd $91 $78
	jr   jr_010_7816                                 ; $7811: $18 $03

jr_010_7813:
	call Call_010_78b0                               ; $7813: $cd $b0 $78

jr_010_7816:
	ld   hl, wGameSubstate                                   ; $7816: $21 $a1 $c2
	inc  [hl]                                        ; $7819: $34
	ret                                              ; $781a: $c9


	ld   a, [$c941]                                  ; $781b: $fa $41 $c9
	or   a                                           ; $781e: $b7
	jr   z, jr_010_7824                              ; $781f: $28 $03

	call PlayRandomConnSuccessfulSample                               ; $7821: $cd $7d $51

jr_010_7824:
	ld   hl, wGameSubstate                                   ; $7824: $21 $a1 $c2
	inc  [hl]                                        ; $7827: $34
	ret                                              ; $7828: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $7829: $fa $10 $c2
	and  $03                                         ; $782c: $e6 $03
	jr   z, jr_010_7839                              ; $782e: $28 $09

	ld   a, $21                                      ; $7830: $3e $21
	call PlaySoundEffect                                       ; $7832: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $7835: $21 $a1 $c2
	inc  [hl]                                        ; $7838: $34

jr_010_7839:
	ret                                              ; $7839: $c9


	ldh  a, [rKEY1]                                  ; $783a: $f0 $4d
	bit  7, a                                        ; $783c: $cb $7f
	call z, ToggleDoubleSpeedMode                            ; $783e: $cc $f4 $53
	xor  a                                           ; $7841: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7842: $ea $62 $c3
	ld   a, $40                                      ; $7845: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7847: $ea $63 $c3
	ld   a, $03                                      ; $784a: $3e $03
	ld   b, $1e                                      ; $784c: $06 $1e
	ld   hl, $7a0e                                   ; $784e: $21 $0e $7a
	ld   c, $01                                      ; $7851: $0e $01
	ld   de, $7000                                   ; $7853: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7856: $cd $48 $07
	push af                                          ; $7859: $f5
	ld   a, $6f                                      ; $785a: $3e $6f
	ld   [wFarCallAddr], a                                  ; $785c: $ea $98 $c2
	ld   a, $57                                      ; $785f: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $7861: $ea $99 $c2
	ld   a, $11                                      ; $7864: $3e $11
	ld   [wFarCallBank], a                                  ; $7866: $ea $9a $c2
	pop  af                                          ; $7869: $f1
	call FarCall                                       ; $786a: $cd $62 $09
	ld   a, $01                                      ; $786d: $3e $01
	ld   hl, $7000                                   ; $786f: $21 $00 $70
	ld   de, wBGPalettes                                   ; $7872: $11 $de $c2
	ld   bc, $0080                                   ; $7875: $01 $80 $00
	call FarMemCopy                                       ; $7878: $cd $b2 $09
	ld   bc, $003f                                   ; $787b: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $787e: $cd $aa $04
	call TurnOffLCD                                       ; $7881: $cd $e3 $08
	ld   a, [$ca40]                                  ; $7884: $fa $40 $ca
	ld   [wGameState], a                                  ; $7887: $ea $a0 $c2
	ld   a, [$ca41]                                  ; $788a: $fa $41 $ca
	ld   [wGameSubstate], a                                  ; $788d: $ea $a1 $c2
	ret                                              ; $7890: $c9


Call_010_7891:
	ld   c, $80                                      ; $7891: $0e $80
	ld   de, $98a0                                   ; $7893: $11 $a0 $98
	ld   a, $03                                      ; $7896: $3e $03
	ld   hl, $d300                                   ; $7898: $21 $00 $d3
	ld   b, $08                                      ; $789b: $06 $08
	call EnqueueHDMATransfer                                       ; $789d: $cd $7c $02
	ld   c, $81                                      ; $78a0: $0e $81
	ld   de, $98a0                                   ; $78a2: $11 $a0 $98
	ld   a, $03                                      ; $78a5: $3e $03
	ld   hl, $d700                                   ; $78a7: $21 $00 $d7
	ld   b, $08                                      ; $78aa: $06 $08
	call EnqueueHDMATransfer                                       ; $78ac: $cd $7c $02
	ret                                              ; $78af: $c9


Call_010_78b0:
	ld   c, $80                                      ; $78b0: $0e $80
	ld   de, $98a0                                   ; $78b2: $11 $a0 $98
	ld   a, $03                                      ; $78b5: $3e $03
	ld   hl, $d240                                   ; $78b7: $21 $40 $d2
	ld   b, $0c                                      ; $78ba: $06 $0c
	call EnqueueHDMATransfer                                       ; $78bc: $cd $7c $02
	ld   c, $81                                      ; $78bf: $0e $81
	ld   de, $98a0                                   ; $78c1: $11 $a0 $98
	ld   a, $03                                      ; $78c4: $3e $03
	ld   hl, $d640                                   ; $78c6: $21 $40 $d6
	ld   b, $0c                                      ; $78c9: $06 $0c
	call EnqueueHDMATransfer                                       ; $78cb: $cd $7c $02
	ret                                              ; $78ce: $c9


	ld   c, $80                                      ; $78cf: $0e $80
	ld   de, $98a0                                   ; $78d1: $11 $a0 $98
	ld   a, $03                                      ; $78d4: $3e $03
	ld   hl, $d0a0                                   ; $78d6: $21 $a0 $d0
	ld   b, $0c                                      ; $78d9: $06 $0c
	call EnqueueHDMATransfer                                       ; $78db: $cd $7c $02
	ld   c, $81                                      ; $78de: $0e $81
	ld   de, $98a0                                   ; $78e0: $11 $a0 $98
	ld   a, $03                                      ; $78e3: $3e $03
	ld   hl, $d4a0                                   ; $78e5: $21 $a0 $d4
	ld   b, $0c                                      ; $78e8: $06 $0c
	call EnqueueHDMATransfer                                       ; $78ea: $cd $7c $02
	ret                                              ; $78ed: $c9


Call_010_78ee:
	call Call_010_550b                               ; $78ee: $cd $0b $55

jr_010_78f1:
	ld   a, $43                                      ; $78f1: $3e $43
	ld   [$c8c2], a                                  ; $78f3: $ea $c2 $c8
	ld   hl, $c8c2                                   ; $78f6: $21 $c2 $c8
	ld   b, $01                                      ; $78f9: $06 $01
	call Call_010_7932                               ; $78fb: $cd $32 $79
	ld   hl, $7913                                   ; $78fe: $21 $13 $79
	ld   b, $0c                                      ; $7901: $06 $0c
	call Call_010_7932                               ; $7903: $cd $32 $79
	call PollInput                                       ; $7906: $cd $a9 $03
	ld   a, [wInGameButtonsPressed]                                  ; $7909: $fa $10 $c2
	bit  1, a                                        ; $790c: $cb $4f
	jr   z, jr_010_78f1                              ; $790e: $28 $e1

	jp   Jump_010_54fc                               ; $7910: $c3 $fc $54


	ld   b, e                                        ; $7913: $43
	ld   d, d                                        ; $7914: $52
	ld   c, d                                        ; $7915: $4a
	ld   b, h                                        ; $7916: $44
	ld   c, l                                        ; $7917: $4d
	rst  $38                                         ; $7918: $ff
	inc  bc                                          ; $7919: $03
	nop                                              ; $791a: $00
	ld   [bc], a                                     ; $791b: $02
	nop                                              ; $791c: $00
	rst  $38                                         ; $791d: $ff
	nop                                              ; $791e: $00
	ld   a, h                                        ; $791f: $7c
	ld   [$ca40], a                                  ; $7920: $ea $40 $ca
	ld   a, l                                        ; $7923: $7d
	ld   [$ca41], a                                  ; $7924: $ea $41 $ca
	ld   a, GS_23                                      ; $7927: $3e $23
	ld   [wGameState], a                                  ; $7929: $ea $a0 $c2
	ld   a, $00                                      ; $792c: $3e $00
	ld   [wGameSubstate], a                                  ; $792e: $ea $a1 $c2
	ret                                              ; $7931: $c9


Call_010_7932:
	push bc                                          ; $7932: $c5
	push hl                                          ; $7933: $e5
	call Call_010_593e                               ; $7934: $cd $3e $59
	call Call_010_7994                               ; $7937: $cd $94 $79
	pop  hl                                          ; $793a: $e1
	pop  bc                                          ; $793b: $c1
	call Call_010_7945                               ; $793c: $cd $45 $79
	ld   b, $00                                      ; $793f: $06 $00
	call Call_010_7945                               ; $7941: $cd $45 $79
	ret                                              ; $7944: $c9


Call_010_7945:
	xor  a                                           ; $7945: $af
	ld   [$c77c], a                                  ; $7946: $ea $7c $c7
	ld   [$c77d], a                                  ; $7949: $ea $7d $c7
	push hl                                          ; $794c: $e5
	push bc                                          ; $794d: $c5
	ld   c, LOW(rRP)                                      ; $794e: $0e $56
	ld   d, $3d                                      ; $7950: $16 $3d
	call Call_010_597a                               ; $7952: $cd $7a $59
	ld   hl, $c77e                                   ; $7955: $21 $7e $c7
	ld   a, $5a                                      ; $7958: $3e $5a
	ld   [hl+], a                                    ; $795a: $22
	ld   [hl], b                                     ; $795b: $70
	dec  hl                                          ; $795c: $2b
	ld   b, $02                                      ; $795d: $06 $02
	call Call_010_5a84                               ; $795f: $cd $84 $5a
	pop  bc                                          ; $7962: $c1
	pop  hl                                          ; $7963: $e1
	call Call_010_5a84                               ; $7964: $cd $84 $5a
	ld   a, [$c77c]                                  ; $7967: $fa $7c $c7
	ld   [$c77e], a                                  ; $796a: $ea $7e $c7
	ld   a, [$c77d]                                  ; $796d: $fa $7d $c7
	ld   [$c77f], a                                  ; $7970: $ea $7f $c7
	push hl                                          ; $7973: $e5
	ld   hl, $c77e                                   ; $7974: $21 $7e $c7
	ld   b, $02                                      ; $7977: $06 $02
	call Call_010_5a84                               ; $7979: $cd $84 $5a
	ld   hl, $c782                                   ; $797c: $21 $82 $c7
	ld   b, $01                                      ; $797f: $06 $01
	ld   d, $3d                                      ; $7981: $16 $3d
	call Call_010_79ca                               ; $7983: $cd $ca $79
	ld   a, [$c77e]                                  ; $7986: $fa $7e $c7
	ld   [$c77c], a                                  ; $7989: $ea $7c $c7
	ld   a, [$c77f]                                  ; $798c: $fa $7f $c7
	ld   [$c77d], a                                  ; $798f: $ea $7d $c7
	pop  hl                                          ; $7992: $e1
	ret                                              ; $7993: $c9


Call_010_7994:
	ld   a, $02                                      ; $7994: $3e $02
	ld   [$c781], a                                  ; $7996: $ea $81 $c7
	ld   c, LOW(rRP)                                      ; $7999: $0e $56
	ld   d, $00                                      ; $799b: $16 $00
	ld   e, d                                        ; $799d: $5a
	ld   d, $3d                                      ; $799e: $16 $3d
	call Call_010_597a                               ; $79a0: $cd $7a $59
	ld   d, $05                                      ; $79a3: $16 $05
	call Call_010_596e                               ; $79a5: $cd $6e $59
	ld   d, $15                                      ; $79a8: $16 $15
	call Call_010_597a                               ; $79aa: $cd $7a $59
	ld   d, $05                                      ; $79ad: $16 $05
	call Call_010_596e                               ; $79af: $cd $6e $59
	ld   d, $05                                      ; $79b2: $16 $05
	call Call_010_597a                               ; $79b4: $cd $7a $59
	ld   d, $3d                                      ; $79b7: $16 $3d
	ld   d, $05                                      ; $79b9: $16 $05
	ld   d, $15                                      ; $79bb: $16 $15
	ld   d, $05                                      ; $79bd: $16 $05
	ld   d, $3d                                      ; $79bf: $16 $3d
	call Call_010_597a                               ; $79c1: $cd $7a $59
	ld   a, $6c                                      ; $79c4: $3e $6c
	ld   [$c782], a                                  ; $79c6: $ea $82 $c7
	ret                                              ; $79c9: $c9


Call_010_79ca:
jr_010_79ca:
	inc  d                                           ; $79ca: $14
	ret  z                                           ; $79cb: $c8

	xor  a                                           ; $79cc: $af
	ldh  [rIF], a                                    ; $79cd: $e0 $0f
	halt                                             ; $79cf: $76
	nop                                              ; $79d0: $00
	ldh  a, [c]                                      ; $79d1: $f2
	bit  1, a                                        ; $79d2: $cb $4f
	jr   jr_010_79ca                                 ; $79d4: $18 $f4

	or   a                                           ; $79d6: $b7
	ret                                              ; $79d7: $c9


	xor  a                                           ; $79d8: $af
	ld   [$c77c], a                                  ; $79d9: $ea $7c $c7
	ld   [$c77d], a                                  ; $79dc: $ea $7d $c7
	push bc                                          ; $79df: $c5
	push hl                                          ; $79e0: $e5
	ld   hl, $c77e                                   ; $79e1: $21 $7e $c7
	ld   b, $02                                      ; $79e4: $06 $02
	call Call_010_5b73                               ; $79e6: $cd $73 $5b
	ld   a, [$c77f]                                  ; $79e9: $fa $7f $c7
	ld   [$c780], a                                  ; $79ec: $ea $80 $c7
	ld   b, a                                        ; $79ef: $47
	pop  hl                                          ; $79f0: $e1
	pop  af                                          ; $79f1: $f1
	cp   b                                           ; $79f2: $b8
	jp   c, Jump_010_5b09                            ; $79f3: $da $09 $5b

	ld   a, [$c77e]                                  ; $79f6: $fa $7e $c7
	cp   $5a                                         ; $79f9: $fe $5a
	jp   nz, Jump_010_5b09                           ; $79fb: $c2 $09 $5b

	call Call_010_5b73                               ; $79fe: $cd $73 $5b
	ld   a, [$c77c]                                  ; $7a01: $fa $7c $c7
	ld   d, a                                        ; $7a04: $57
	ld   a, [$c77d]                                  ; $7a05: $fa $7d $c7
	ld   e, a                                        ; $7a08: $5f
	push hl                                          ; $7a09: $e5
	push de                                          ; $7a0a: $d5
	ld   hl, $c77e                                   ; $7a0b: $21 $7e $c7
	ld   b, $02                                      ; $7a0e: $06 $02
	call Call_010_5b73                               ; $7a10: $cd $73 $5b
	pop  de                                          ; $7a13: $d1
	ld   hl, $c77e                                   ; $7a14: $21 $7e $c7
	ld   a, [hl+]                                    ; $7a17: $2a
	xor  d                                           ; $7a18: $aa
	ld   b, a                                        ; $7a19: $47
	ld   a, [hl]                                     ; $7a1a: $7e
	xor  e                                           ; $7a1b: $ab
	or   b                                           ; $7a1c: $b0
	call nz, Call_010_5b00                           ; $7a1d: $c4 $00 $5b
	push de                                          ; $7a20: $d5
	ld   d, $3d                                      ; $7a21: $16 $3d
	call Call_010_597a                               ; $7a23: $cd $7a $59
	ld   hl, $c782                                   ; $7a26: $21 $82 $c7
	ld   b, $01                                      ; $7a29: $06 $01
	pop  de                                          ; $7a2b: $d1
	pop  hl                                          ; $7a2c: $e1
	ld   a, d                                        ; $7a2d: $7a
	ld   [$c77c], a                                  ; $7a2e: $ea $7c $c7
	ld   a, e                                        ; $7a31: $7b
	ld   [$c77d], a                                  ; $7a32: $ea $7d $c7
	ret                                              ; $7a35: $c9

if def(VWF)

SaveScreenTileDataBank0_8000h_hook:
	call RLEXorCopy

	M_FarCall EnLoadSaveScreenPopupGfx
	ret

SaveScreenTileDataBank0_8800h_hook:
	call RLEXorCopy

; S/Sav in Save Data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $10
	ld   de, wSaveScreenTileDataBuffer+$d20-$800
	ld   hl, Gfx_EnSaveScreen
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $30
	ld   de, wSaveScreenTileDataBuffer+$10a0-$800
	ld   hl, Gfx_EnSaveScreen+$390
	call FarMemCopy

; av in Save Data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$1080-$800
	ld   hl, Gfx_EnSaveScreen+$10
	call FarMemCopy

; e Data in Save Data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $50
	ld   de, wSaveScreenTileDataBuffer+$940-$800
	ld   hl, Gfx_EnSaveScreen+$30
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $50
	ld   de, wSaveScreenTileDataBuffer+$a80-$800
	ld   hl, Gfx_EnSaveScreen+$390+$30
	call FarMemCopy

; Loa in Load Data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $30
	ld   de, wSaveScreenTileDataBuffer+$910-$800
	ld   hl, Gfx_EnSaveScreen+$80
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $30
	ld   de, wSaveScreenTileDataBuffer+$a50-$800
	ld   hl, Gfx_EnSaveScreen+$390+$80
	call FarMemCopy

; Copy missing letters in Load/Copy data and Copy/Erase
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $10
	ld   de, wSaveScreenTileDataBuffer+$1700-$800
	ld   hl, Gfx_EnSaveScreen+$b0
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $10
	ld   de, wSaveScreenTileDataBuffer+$1710-$800
	ld   hl, Gfx_EnSaveScreen+$390+$b0
	call FarMemCopy

	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$1720-$800
	ld   hl, Gfx_EnSaveScreen+$e0
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$1740-$800
	ld   hl, Gfx_EnSaveScreen+$390+$e0
	call FarMemCopy

	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $10
	ld   de, wSaveScreenTileDataBuffer+$1760-$800
	ld   hl, Gfx_EnSaveScreen+$380
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $10
	ld   de, wSaveScreenTileDataBuffer+$1770-$800
	ld   hl, Gfx_EnSaveScreen+$390+$380
	call FarMemCopy

; Copy 1/2/3
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$dc0-$800
	ld   hl, Gfx_EnSaveScreen+$200
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$e50-$800
	ld   hl, Gfx_EnSaveScreen+$390+$200
	call FarMemCopy

	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$f10-$800
	ld   hl, Gfx_EnSaveScreen+$220
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$f60-$800
	ld   hl, Gfx_EnSaveScreen+$390+$220
	call FarMemCopy

	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$fe0-$800
	ld   hl, Gfx_EnSaveScreen+$240
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$1020-$800
	ld   hl, Gfx_EnSaveScreen+$390+$240
	call FarMemCopy

; Copy copy/eras of copy/erase
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $70
	ld   de, wSaveScreenTileDataBuffer+$12c0-$800
	ld   hl, Gfx_EnSaveScreen+$310
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $70
	ld   de, wSaveScreenTileDataBuffer+$13f0-$800
	ld   hl, Gfx_EnSaveScreen+$390+$310
	call FarMemCopy

	ret


SaveScreenTileDataBank1_8800h_hook:
	call RLEXorCopy

; Co in Copy Data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$8a0-$800
	ld   hl, Gfx_EnSaveScreen+$c0
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $20
	ld   de, wSaveScreenTileDataBuffer+$8c0-$800
	ld   hl, Gfx_EnSaveScreen+$390+$c0
	call FarMemCopy

; Copy to which data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $80
	ld   de, wSaveScreenTileDataBuffer+$8e0-$800
	ld   hl, Gfx_EnSaveScreen+$100
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $80
	ld   de, wSaveScreenTileDataBuffer+$970-$800
	ld   hl, Gfx_EnSaveScreen+$390+$100
	call FarMemCopy

; Delete data
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $80
	ld   de, wSaveScreenTileDataBuffer+$9f0-$800
	ld   hl, Gfx_EnSaveScreen+$180
	call FarMemCopy
	ld   a, BANK(Gfx_EnSaveScreen)
	ld   bc, $80
	ld   de, wSaveScreenTileDataBuffer+$a70-$800
	ld   hl, Gfx_EnSaveScreen+$390+$180
	call FarMemCopy

	ret


SaveScreenTileMap_hook:
	call RLEXorCopy

	ld   a, $a4
	ld   [$d400+$341], a

	ld   a, $70
	ld   [$d400+$2a5], a
	ld   a, $71
	ld   [$d400+$2c5], a

	ld   a, $72
	ld   [$d400+$2e4], a
	ld   a, $73
	ld   [$d400+$2e5], a

	ld   a, $74
	ld   [$d400+$304], a
	ld   a, $75
	ld   [$d400+$305], a

	ld   a, $76
	ld   [$d400+$1f2], a
	ld   a, $77
	ld   [$d400+$212], a

	ret


SaveScreenTileAttr_hook:
	call RLEXorCopy

	ld   a, $00
	ld   [$d000+$341], a

	ret


; HL - points to filename chars before player name
EnFillAndAdjustFileNameHook:
; 2 spaces between day and name
	ld   a, $10
	ld   [hl-], a
	ld   [hl-], a

; Adjust day num
	ld   bc, -3
	add  hl, bc
	ld   d, h
	ld   e, l
	ld   bc, 3
	add  hl, bc
	ld   c, 2
.loop1:
	ld   a, [de]
	dec  de
	ld   [hl-], a
	dec  c
	jr   nz, .loop1

; Copy Day
	ld   de, .end-1
	ld   c, .end-.day
.loop2:
	ld   a, [de]
	dec  de
	ld   [hl-], a
	dec  c
	jr   nz, .loop2

; Terminator
	ld   bc, $0e
	add  hl, bc
	ld   a, 0
	ld   [hl], 0
	ret

.day:
	db "Day"
.end:


EnNoSaveData:
	db "   No Save Data", 0
.end:


; Trashes BC, E
ClearFileNameBoxBeforeLoadingText:
	ld   bc, $180
	ld   hl, $d800
	call MemClear
	ld   hl, $d800
	ret


SetEnterNameEnCoords:
	inc  a
	ld   [wEnterNameCursorLetterColIdx], a
	xor  a
	ret


EnterNameTileMapHook:
	call RLEXorCopy

; Hide kana options
	ld   a, $81
	ld   [wEnterNameTileDataOrLayoutBuffer+$1e2], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$1e3], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$1e6], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$1e7], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$202], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$203], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$206], a
	ld   [wEnterNameTileDataOrLayoutBuffer+$207], a

; Your name
	ld   a, $d0
	ld   b, $dc
	ld   c, 6
	ld   de, wEnterNameTileDataOrLayoutBuffer+$02
	ld   hl, wEnterNameTileDataOrLayoutBuffer+$22
:	ld   [de], a
	ld   [hl], b
	inc  de
	inc  a
	inc  hl
	inc  b
	dec  c
	jr   nz, :-

; Back space
	ld   a, $d6
	ld   b, $e2
	ld   c, 3
	ld   de, wEnterNameTileDataOrLayoutBuffer+$1e9
	ld   hl, wEnterNameTileDataOrLayoutBuffer+$209
:	ld   [de], a
	ld   [hl], b
	inc  de
	inc  a
	inc  hl
	inc  b
	dec  c
	jr   nz, :-

; Done
	ld   a, $d9
	ld   b, $e5
	ld   c, 3
	ld   de, wEnterNameTileDataOrLayoutBuffer+$1f0
	ld   hl, wEnterNameTileDataOrLayoutBuffer+$210
:	ld   [de], a
	ld   [hl], b
	inc  de
	inc  a
	inc  hl
	inc  b
	dec  c
	jr   nz, :-

	ret


EnterNameTileDataHook:
	call RLEXorCopy

	ld   bc, Gfx_EnEnterName.end-Gfx_EnEnterName
	ld   de, $d500
	ld   hl, Gfx_EnEnterName
	call MemCopy

	ret


Gfx_EnEnterName:
	INCBIN "en_enterName.2bpp"
.end:


CinematronTileDataHook_1_8000h:
	call RLEXorCopy
	ret

	ld   a, BANK(Gfx_EnCinematron)
	ld   bc, Gfx_EnCinematron.end-Gfx_EnCinematron
	ld   de, $8800
	ld   hl, Gfx_EnCinematron
	call FarMemCopy
	ret


CinematronTileMapHook:
	call RLEXorCopy
	ret

	ld   a, BANK(.topLayout)
	ldbc 6, 4
	ld   de, .topLayout
	ld   hl, $d400+$4e
	call FarCopyLayout

	ld   a, BANK(.bottomLayout)
	ldbc 6, 2
	ld   de, .bottomLayout
	ld   hl, $d400+$12e
	call FarCopyLayout

	ret

.topLayout:
	db $80, $81, $82, $83, $84, $85
	db $86, $87, $88, $89, $8a, $8b
	db $8c, $8d, $8e, $8f, $90, $91
	db $92, $93, $94, $95, $96, $97
.bottomLayout:
	db $98, $99, $9a, $9b, $9c, $9d
	db $9e, $9f, $a0, $a1, $a2, $a3


CinematronTileAttrHook:
	call RLEXorCopy
	ret

	ld   a, [$d000+$12e]
	res  3, a
	ld   [$d000+$12e], a
	ld   a, [$d000+$12f]
	res  3, a
	ld   [$d000+$12f], a
	ld   a, [$d000+$14e]
	res  3, a
	ld   [$d000+$14e], a
	ld   a, [$d000+$14f]
	res  3, a
	ld   [$d000+$14f], a

	ret


SumireMiniGameTitleScreenBank0_8000hHook:
	call RLEXorCopy

	M_FarCall LoadSumireMiniGameTitleScreenGfxSpr
	ret


SumireMiniGameTitleScreenBank0_8800hHook:
	call RLEXorCopy

	M_FarCall LoadSumireMiniGameTitleScreenGfx0
	ret


SumireMiniGameTitleScreenBank1_9000hHook:
	M_FarCall ReplaceSumireMiniGameTSPopup

	ld   a, $17                                      ; $6fbd: $3e $17
	ld   hl, $d000                                   ; $6fbf: $21 $00 $d0
	ld   de, $5763                                   ; $6fc2: $11 $63 $57
	call RLEXorCopy

	M_FarCall LoadSumireMiniGameTitleScreenGfx1	
	ret


IrisMiniGameHelpScreenTileAttrHook:
	call FarCopyLayout

	M_FarCall AlterMiniGameHelpScreenAttrs
	ret


IrisMiniGameHelpScreenTileMapHook:
	;call RLEXorCopy

	ld   a, BANK(TileMap_IrisMiniGameHelpScreen)
	ldbc $14, $12
	ld   de, TileMap_IrisMiniGameHelpScreen
	ld   hl, $d400
	call FarCopyLayout
	ret


IrisMiniGameHelpScreenTileDataHook:
	;call RLEXorCopy

	ld   a, BANK(Gfx_IrisMiniGameHelpScreen)
	ld   bc, Gfx_IrisMiniGameHelpScreen.end-Gfx_IrisMiniGameHelpScreen
	ld   de, $d000
	ld   hl, Gfx_IrisMiniGameHelpScreen
	call FarMemCopy
	ret


KannaMiniGameHelpScreenTileAttrHook:
	call RLEXorCopy

	ld   a, $07
	ld   [$d000+$e6], a
	ld   [$d000+$ed], a
	ld   [$d000+$14a], a
	ld   [$d000+$14b], a
	ld   [$d000+$14c], a

	M_FarCall AlterMiniGameHelpScreenAttrs
	ret


KannaMiniGameHelpScreenTileMapHook:
	;call RLEXorCopy

	ld   a, BANK(TileMap_KannaMiniGameHelpScreen)
	ldbc $14, $12
	ld   de, TileMap_KannaMiniGameHelpScreen
	ld   hl, $d000
	call FarCopyLayout
	ret


KannaMiniGameHelpScreenTileDataHook:
	;call RLEXorCopy

	ld   a, BANK(Gfx_KannaMiniGameHelpScreen)
	ld   bc, Gfx_KannaMiniGameHelpScreen.end-Gfx_KannaMiniGameHelpScreen
	ld   de, $d000
	ld   hl, Gfx_KannaMiniGameHelpScreen
	call FarMemCopy
	ret


Data_10_6070entry02::
	db $10, $44, $43, $3d, $42, $48, $47, $10, $46, $39, $37, $39, $3d, $4a, $39, $38, $f2, $00

endc