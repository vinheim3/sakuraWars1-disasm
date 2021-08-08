; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

GameState21::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	dw $400a
	dw $410f
	dw $4120

	ld   a, $ff                                      ; $400a: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $400c: $ea $0e $c2
	ld   a, $0c                                      ; $400f: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4011: $ea $13 $c2
	ld   a, $04                                      ; $4014: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4016: $ea $14 $c2
	call ClearOam                                       ; $4019: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $401c: $cd $59 $0b
	ld   a, $c3                                      ; $401f: $3e $c3
	ld   [wLCDC], a                                  ; $4021: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4024: $fa $93 $c2
	push af                                          ; $4027: $f5
	ld   a, $03                                      ; $4028: $3e $03
	ld   [wWramBank], a                                  ; $402a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $402d: $e0 $70
	ld   a, $1e                                      ; $402f: $3e $1e
	ld   hl, $d000                                   ; $4031: $21 $00 $d0
	ld   de, $4c0c                                   ; $4034: $11 $0c $4c
	call RLEXorCopy                                       ; $4037: $cd $d2 $09
	ld   c, $81                                      ; $403a: $0e $81
	ld   de, $9800                                   ; $403c: $11 $00 $98
	ld   a, $03                                      ; $403f: $3e $03
	ld   hl, $d000                                   ; $4041: $21 $00 $d0
	ld   b, $24                                      ; $4044: $06 $24
	call EnqueueHDMATransfer                                       ; $4046: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4049: $cf
	ld   a, $1e                                      ; $404a: $3e $1e
	ld   hl, $d000                                   ; $404c: $21 $00 $d0
	ld   de, $449c                                   ; $404f: $11 $9c $44
	call RLEXorCopy                                       ; $4052: $cd $d2 $09
	ld   c, $80                                      ; $4055: $0e $80
	ld   de, $9800                                   ; $4057: $11 $00 $98
	ld   a, $03                                      ; $405a: $3e $03
	ld   hl, $d000                                   ; $405c: $21 $00 $d0
	ld   b, $24                                      ; $405f: $06 $24
	call EnqueueHDMATransfer                                       ; $4061: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4064: $cf
	ld   a, $1a                                      ; $4065: $3e $1a
	ld   hl, $d000                                   ; $4067: $21 $00 $d0
	ld   de, $5728                                   ; $406a: $11 $28 $57
	call RLEXorCopy                                       ; $406d: $cd $d2 $09
	ld   c, $80                                      ; $4070: $0e $80
	ld   de, $8800                                   ; $4072: $11 $00 $88
	ld   a, $03                                      ; $4075: $3e $03
	ld   hl, $d000                                   ; $4077: $21 $00 $d0
	ld   b, $40                                      ; $407a: $06 $40
	call EnqueueHDMATransfer                                       ; $407c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407f: $cf
	ld   c, $80                                      ; $4080: $0e $80
	ld   de, $8c00                                   ; $4082: $11 $00 $8c
	ld   a, $03                                      ; $4085: $3e $03
	ld   hl, $d400                                   ; $4087: $21 $00 $d4
	ld   b, $60                                      ; $408a: $06 $60
	call EnqueueHDMATransfer                                       ; $408c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $408f: $cf
	ld   c, $80                                      ; $4090: $0e $80
	ld   de, $9200                                   ; $4092: $11 $00 $92
	ld   a, $03                                      ; $4095: $3e $03
	ld   hl, $da00                                   ; $4097: $21 $00 $da
	ld   b, $60                                      ; $409a: $06 $60
	call EnqueueHDMATransfer                                       ; $409c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $409f: $cf
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
	call Func_1adf                                       ; $4118: $cd $df $1a
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
	ld   a, $21                                      ; $4175: $3e $21
	ld   [wGameState], a                                  ; $4177: $ea $a0 $c2
	ld   a, $00                                      ; $417a: $3e $00
	ld   [wGameSubstate], a                                  ; $417c: $ea $a1 $c2
	ret                                              ; $417f: $c9


GameState0e_SaveScreen::
	ld   a, [wGameSubstate]                                  ; $4180: $fa $a1 $c2
	rst  JumpTable                                         ; $4183: $df
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
	ld   a, $01                                      ; $4199: $3e $01
	ld   [$c8b6], a                                  ; $419b: $ea $b6 $c8
	ld   a, $02                                      ; $419e: $3e $02
	ld   [wGameSubstate], a                                  ; $41a0: $ea $a1 $c2
	ret                                              ; $41a3: $c9

.substate2:
	ld   a, $ff                                      ; $41a4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $41a6: $ea $0e $c2
	ld   a, $0c                                      ; $41a9: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $41ab: $ea $13 $c2
	ld   a, $04                                      ; $41ae: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $41b0: $ea $14 $c2
	call ClearOam                                       ; $41b3: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $41b6: $cd $59 $0b
	ld   a, $83                                      ; $41b9: $3e $83
	ld   [wLCDC], a                                  ; $41bb: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $41be: $fa $93 $c2
	push af                                          ; $41c1: $f5
	ld   a, $03                                      ; $41c2: $3e $03
	ld   [wWramBank], a                                  ; $41c4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41c7: $e0 $70
	ld   a, $1b                                      ; $41c9: $3e $1b
	ld   hl, $d000                                   ; $41cb: $21 $00 $d0
	ld   de, $450c                                   ; $41ce: $11 $0c $45
	call RLEXorCopy                                       ; $41d1: $cd $d2 $09
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
	ld   a, $14                                      ; $41f4: $3e $14
	ld   hl, $d000                                   ; $41f6: $21 $00 $d0
	ld   de, $6e31                                   ; $41f9: $11 $31 $6e
	call RLEXorCopy                                       ; $41fc: $cd $d2 $09
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
	ld   a, $19                                      ; $422f: $3e $19
	ld   hl, $d000                                   ; $4231: $21 $00 $d0
	ld   de, $5fb2                                   ; $4234: $11 $b2 $5f
	call RLEXorCopy                                       ; $4237: $cd $d2 $09
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
	ld   a, $1c                                      ; $425a: $3e $1c
	ld   hl, $d400                                   ; $425c: $21 $00 $d4
	ld   de, $79a7                                   ; $425f: $11 $a7 $79
	call RLEXorCopy                                       ; $4262: $cd $d2 $09
	ld   c, $80                                      ; $4265: $0e $80
	ld   de, $9800                                   ; $4267: $11 $00 $98
	ld   a, $03                                      ; $426a: $3e $03
	ld   hl, $d400                                   ; $426c: $21 $00 $d4
	ld   b, $40                                      ; $426f: $06 $40
	call EnqueueHDMATransfer                                       ; $4271: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4274: $cf
	ld   a, $1d                                      ; $4275: $3e $1d
	ld   hl, $d000                                   ; $4277: $21 $00 $d0
	ld   de, $750b                                   ; $427a: $11 $0b $75
	call RLEXorCopy                                       ; $427d: $cd $d2 $09
	ld   c, $81                                      ; $4280: $0e $81
	ld   de, $9800                                   ; $4282: $11 $00 $98
	ld   a, $03                                      ; $4285: $3e $03
	ld   hl, $d000                                   ; $4287: $21 $00 $d0
	ld   b, $40                                      ; $428a: $06 $40
	call EnqueueHDMATransfer                                       ; $428c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $428f: $cf
	ld   de, $de00                                   ; $4290: $11 $00 $de
	ld   hl, $d0a0                                   ; $4293: $21 $a0 $d0
	ld   bc, $0040                                   ; $4296: $01 $40 $00
	call MemCopy                                       ; $4299: $cd $a9 $09
	ld   de, $de40                                   ; $429c: $11 $40 $de
	ld   hl, $d0a0                                   ; $429f: $21 $a0 $d0
	ld   bc, $0040                                   ; $42a2: $01 $40 $00
	call MemCopy                                       ; $42a5: $cd $a9 $09
	ld   hl, $de42                                   ; $42a8: $21 $42 $de
	ld   c, $10                                      ; $42ab: $0e $10
	ld   e, $05                                      ; $42ad: $1e $05
	call Call_010_4522                               ; $42af: $cd $22 $45
	ld   de, $de80                                   ; $42b2: $11 $80 $de
	ld   hl, $d0a0                                   ; $42b5: $21 $a0 $d0
	ld   bc, $0040                                   ; $42b8: $01 $40 $00
	call MemCopy                                       ; $42bb: $cd $a9 $09
	ld   hl, $de82                                   ; $42be: $21 $82 $de
	ld   c, $10                                      ; $42c1: $0e $10
	ld   e, $06                                      ; $42c3: $1e $06
	call Call_010_4522                               ; $42c5: $cd $22 $45
	ld   de, $dec0                                   ; $42c8: $11 $c0 $de
	ld   hl, $d160                                   ; $42cb: $21 $60 $d1
	ld   bc, $0040                                   ; $42ce: $01 $40 $00
	call MemCopy                                       ; $42d1: $cd $a9 $09
	ld   de, $df00                                   ; $42d4: $11 $00 $df
	ld   hl, $d160                                   ; $42d7: $21 $60 $d1
	ld   bc, $0040                                   ; $42da: $01 $40 $00
	call MemCopy                                       ; $42dd: $cd $a9 $09
	ld   hl, $df02                                   ; $42e0: $21 $02 $df
	ld   c, $10                                      ; $42e3: $0e $10
	ld   e, $05                                      ; $42e5: $1e $05
	call Call_010_4522                               ; $42e7: $cd $22 $45
	ld   de, $df40                                   ; $42ea: $11 $40 $df
	ld   hl, $d160                                   ; $42ed: $21 $60 $d1
	ld   bc, $0040                                   ; $42f0: $01 $40 $00
	call MemCopy                                       ; $42f3: $cd $a9 $09
	ld   hl, $df42                                   ; $42f6: $21 $42 $df
	ld   c, $10                                      ; $42f9: $0e $10
	ld   e, $06                                      ; $42fb: $1e $06
	call Call_010_4522                               ; $42fd: $cd $22 $45
	pop  af                                          ; $4300: $f1
	ld   [wWramBank], a                                  ; $4301: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4304: $e0 $70
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
	call Call_010_4b92                               ; $4323: $cd $92 $4b
	call Call_010_478e                               ; $4326: $cd $8e $47
	call ClearBaseAnimSpriteSpecDetails                                       ; $4329: $cd $c9 $2e
	ld   a, $01                                      ; $432c: $3e $01
	ld   hl, $0000                                   ; $432e: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4331: $cd $4b $2f
	ld   [$c8af], a                                  ; $4334: $ea $af $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $4337: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $433a: $cd $76 $30
	ld   a, $00                                      ; $433d: $3e $00
	ld   [$c8b0], a                                  ; $433f: $ea $b0 $c8
	ld   bc, $0000                                   ; $4342: $01 $00 $00
	ld   de, $7180                                   ; $4345: $11 $80 $71
	push af                                          ; $4348: $f5
	ld   a, $03                                      ; $4349: $3e $03
	ld   [wFarCallAddr], a                                  ; $434b: $ea $98 $c2
	ld   a, $41                                      ; $434e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4350: $ea $99 $c2
	ld   a, $01                                      ; $4353: $3e $01
	ld   [wFarCallBank], a                                  ; $4355: $ea $9a $c2
	pop  af                                          ; $4358: $f1
	call FarCall                                       ; $4359: $cd $62 $09
	ld   a, $01                                      ; $435c: $3e $01
	ld   hl, $0000                                   ; $435e: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4361: $cd $4b $2f
	ld   [$c8b1], a                                  ; $4364: $ea $b1 $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $4367: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $436a: $cd $76 $30
	ld   a, $00                                      ; $436d: $3e $00
	ld   bc, $0000                                   ; $436f: $01 $00 $00
	ld   de, $7180                                   ; $4372: $11 $80 $71
	push af                                          ; $4375: $f5
	ld   a, $03                                      ; $4376: $3e $03
	ld   [wFarCallAddr], a                                  ; $4378: $ea $98 $c2
	ld   a, $41                                      ; $437b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $437d: $ea $99 $c2
	ld   a, $01                                      ; $4380: $3e $01
	ld   [wFarCallBank], a                                  ; $4382: $ea $9a $c2
	pop  af                                          ; $4385: $f1
	call FarCall                                       ; $4386: $cd $62 $09
	ld   a, $01                                      ; $4389: $3e $01
	ld   hl, $7000                                   ; $438b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $438e: $11 $de $c2
	ld   bc, $0080                                   ; $4391: $01 $80 $00
	call FarMemCopy                                       ; $4394: $cd $b2 $09
	ld   bc, $003f                                   ; $4397: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $439a: $cd $aa $04
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
	ld   a, [$c8b6]                                  ; $43b5: $fa $b6 $c8
	or   a                                           ; $43b8: $b7
	jr   z, :+                              ; $43b9: $28 $05

	ld   a, $05                                      ; $43bb: $3e $05
	call PlaySound                                       ; $43bd: $cd $92 $1a

:	call Call_010_4571                               ; $43c0: $cd $71 $45
	push af                                          ; $43c3: $f5
	ld   a, $54                                      ; $43c4: $3e $54
	ld   [wFarCallAddr], a                                  ; $43c6: $ea $98 $c2
	ld   a, $57                                      ; $43c9: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $43cb: $ea $99 $c2
	ld   a, $11                                      ; $43ce: $3e $11
	ld   [wFarCallBank], a                                  ; $43d0: $ea $9a $c2
	pop  af                                          ; $43d3: $f1
	call FarCall                                       ; $43d4: $cd $62 $09
	ld   a, $1e                                      ; $43d7: $3e $1e
	ld   hl, $65fc                                   ; $43d9: $21 $fc $65
	ld   de, wBGPalettes                                   ; $43dc: $11 $de $c2
	ld   bc, $0080                                   ; $43df: $01 $80 $00
	call FarMemCopy                                       ; $43e2: $cd $b2 $09
	ld   bc, $003f                                   ; $43e5: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $43e8: $cd $aa $04
	call Call_010_473c                               ; $43eb: $cd $3c $47
	ld   hl, wGameSubstate                                   ; $43ee: $21 $a1 $c2
	inc  [hl]                                        ; $43f1: $34
	ret                                              ; $43f2: $c9

.substate3:
	ld   a, [$c8af]                                  ; $43f3: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $43f6: $cd $76 $30

	M_FarCall Func_01_4143
	
	ld   a, c                                        ; $440d: $79
	cp   $2a                                         ; $440e: $fe $2a
	jr   z, .thing_2ah                              ; $4410: $28 $27

	cp   $2b                                         ; $4412: $fe $2b
	jr   z, .thing_2bh                              ; $4414: $28 $64

	cp   $21                                         ; $4416: $fe $21
	jp   z, .thing_other                            ; $4418: $ca $90 $44

	cp   $22                                         ; $441b: $fe $22
	jp   z, .thing_other                            ; $441d: $ca $90 $44

	ld   a, [$c8b0]                                  ; $4420: $fa $b0 $c8
	cp   $1c                                         ; $4423: $fe $1c
	jp   z, .thing_other                            ; $4425: $ca $90 $44

	call Call_010_4588                               ; $4428: $cd $88 $45
	call Call_010_461b                               ; $442b: $cd $1b $46
	call Call_010_4571                               ; $442e: $cd $71 $45
	call Call_010_486d                               ; $4431: $cd $6d $48
	call Call_010_498c                               ; $4434: $cd $8c $49
	jr   .thing_other                                 ; $4437: $18 $57

.thing_2ah:
	ld   a, [wInGameButtonsPressed]                                  ; $4439: $fa $10 $c2
	and  $03                                         ; $443c: $e6 $03
	jr   z, .thing_other                              ; $443e: $28 $50

	ld   a, [$c8b6]                                  ; $4440: $fa $b6 $c8
	bit  0, a                                        ; $4443: $cb $47
	jr   z, .br_4456                              ; $4445: $28 $0f

	call Call_010_4d73                               ; $4447: $cd $73 $4d
	jr   nz, .br_4456                             ; $444a: $20 $0a

	call Call_010_4d50                               ; $444c: $cd $50 $4d
	ld   a, $21                                      ; $444f: $3e $21
	call Func_1adf                                       ; $4451: $cd $df $1a
	jr   .thing_other                                 ; $4454: $18 $3a

.br_4456:
	ld   hl, $c8b6                                   ; $4456: $21 $b6 $c8
	bit  3, [hl]                                     ; $4459: $cb $5e
	jr   nz, .br_4462                             ; $445b: $20 $05

	call Call_010_4992                               ; $445d: $cd $92 $49
	jr   .thing_other                                 ; $4460: $18 $2e

.br_4462:
	call Call_010_49ea                               ; $4462: $cd $ea $49
	res  3, [hl]                                     ; $4465: $cb $9e
	call Call_010_4588                               ; $4467: $cd $88 $45
	ld   a, $04                                      ; $446a: $3e $04
	ld   [$c8b2], a                                  ; $446c: $ea $b2 $c8
	call Call_010_4588                               ; $446f: $cd $88 $45
	call Call_010_478e                               ; $4472: $cd $8e $47
	call Call_010_4b82                               ; $4475: $cd $82 $4b
	jr   .thing_other                                 ; $4478: $18 $16

.thing_2bh:
	ld   a, [wInGameButtonsPressed]                                  ; $447a: $fa $10 $c2
	and  $03                                         ; $447d: $e6 $03
	jr   z, .thing_other                              ; $447f: $28 $0f

	ld   hl, $c8b6                                   ; $4481: $21 $b6 $c8
	set  7, [hl]                                     ; $4484: $cb $fe
	ld   a, $04                                      ; $4486: $3e $04
	ld   [wGameSubstate], a                                  ; $4488: $ea $a1 $c2
	ld   a, $22                                      ; $448b: $3e $22
	call Func_1adf                                       ; $448d: $cd $df $1a

.thing_other:
	call Call_010_454f                               ; $4490: $cd $4f $45
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
	ld   a, [$c8b6]                                  ; $44f8: $fa $b6 $c8
	bit  7, a                                        ; $44fb: $cb $7f
	jr   nz, .br_4515                             ; $44fd: $20 $16

	bit  0, a                                        ; $44ff: $cb $47
	jr   z, .done                              ; $4501: $28 $1e

	bit  4, a                                        ; $4503: $cb $67
	jr   z, .br_4515                              ; $4505: $28 $0e

	ld   a, [$c8bb]                                  ; $4507: $fa $bb $c8
	ld   [wGameState], a                                  ; $450a: $ea $a0 $c2
	ld   a, [$c8bc]                                  ; $450d: $fa $bc $c8
	ld   [wGameSubstate], a                                  ; $4510: $ea $a1 $c2
	jr   .done                                 ; $4513: $18 $0c

.br_4515:
	ld   a, [$c8bd]                                  ; $4515: $fa $bd $c8
	ld   [wGameState], a                                  ; $4518: $ea $a0 $c2
	ld   a, [$c8be]                                  ; $451b: $fa $be $c8
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


Call_010_454f:
	ld   hl, $c8b5                                   ; $454f: $21 $b5 $c8
	dec  [hl]                                        ; $4552: $35
	jr   nz, jr_010_4570                             ; $4553: $20 $1b

	ld   a, $01                                      ; $4555: $3e $01
	ld   [hl], a                                     ; $4557: $77
	ld   b, $14                                      ; $4558: $06 $14
	ld   c, $01                                      ; $455a: $0e $01
	call FadePalettesAndSetRangeToUpdate                                       ; $455c: $cd $32 $08
	ld   hl, $c8b4                                   ; $455f: $21 $b4 $c8
	dec  [hl]                                        ; $4562: $35
	jr   nz, jr_010_4570                             ; $4563: $20 $0b

	ld   a, $10                                      ; $4565: $3e $10
	ld   [hl], a                                     ; $4567: $77
	ld   a, $08                                      ; $4568: $3e $08
	ld   [$c8b5], a                                  ; $456a: $ea $b5 $c8
	call Call_010_4a54                               ; $456d: $cd $54 $4a

jr_010_4570:
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
	call $0a23                                       ; $45d1: $cd $23 $0a
	pop  bc                                          ; $45d4: $c1
	pop  de                                          ; $45d5: $d1
	ld   hl, $0020                                   ; $45d6: $21 $20 $00
	add  hl, de                                      ; $45d9: $19
	ld   d, h                                        ; $45da: $54
	ld   e, l                                        ; $45db: $5d
	pop  hl                                          ; $45dc: $e1
	ld   a, $00                                      ; $45dd: $3e $00
	call $0a23                                       ; $45df: $cd $23 $0a
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
	call Func_1adf                                       ; $46c3: $cd $df $1a

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
	ld   a, [$c8af]                                  ; $46f6: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $46f9: $cd $76 $30
	ld   a, $11                                      ; $46fc: $3e $11
	ld   [$c8b0], a                                  ; $46fe: $ea $b0 $c8
	ld   de, $7180                                   ; $4701: $11 $80 $71
	push af                                          ; $4704: $f5
	ld   a, $1c                                      ; $4705: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4707: $ea $98 $c2
	ld   a, $41                                      ; $470a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $470c: $ea $99 $c2
	ld   a, $01                                      ; $470f: $3e $01
	ld   [wFarCallBank], a                                  ; $4711: $ea $9a $c2
	pop  af                                          ; $4714: $f1
	call FarCall                                       ; $4715: $cd $62 $09
	ret                                              ; $4718: $c9


Call_010_4719:
	ld   a, [$c8af]                                  ; $4719: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $471c: $cd $76 $30
	ld   a, $13                                      ; $471f: $3e $13
	ld   [$c8b0], a                                  ; $4721: $ea $b0 $c8
	ld   de, $7180                                   ; $4724: $11 $80 $71
	push af                                          ; $4727: $f5
	ld   a, $1c                                      ; $4728: $3e $1c
	ld   [wFarCallAddr], a                                  ; $472a: $ea $98 $c2
	ld   a, $41                                      ; $472d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $472f: $ea $99 $c2
	ld   a, $01                                      ; $4732: $3e $01
	ld   [wFarCallBank], a                                  ; $4734: $ea $9a $c2
	pop  af                                          ; $4737: $f1
	call FarCall                                       ; $4738: $cd $62 $09
	ret                                              ; $473b: $c9


Call_010_473c:
	call Call_010_4536                               ; $473c: $cd $36 $45
	ld   a, [$c8af]                                  ; $473f: $fa $af $c8
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
	ld   a, [$c8b1]                                  ; $4769: $fa $b1 $c8
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
	push af                                          ; $47dd: $f5
	ld   a, $aa                                      ; $47de: $3e $aa
	ld   [wFarCallAddr], a                                  ; $47e0: $ea $98 $c2
	ld   a, $46                                      ; $47e3: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $47e5: $ea $99 $c2
	ld   a, $0a                                      ; $47e8: $3e $0a
	ld   [wFarCallBank], a                                  ; $47ea: $ea $9a $c2
	pop  af                                          ; $47ed: $f1
	call FarCall                                       ; $47ee: $cd $62 $09
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
	ld   a, [$c8af]                                  ; $4815: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4818: $cd $76 $30
	ld   a, $1c                                      ; $481b: $3e $1c
	ld   [$c8b0], a                                  ; $481d: $ea $b0 $c8
	ld   de, $7180                                   ; $4820: $11 $80 $71
	push af                                          ; $4823: $f5
	ld   a, $1c                                      ; $4824: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4826: $ea $98 $c2
	ld   a, $41                                      ; $4829: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $482b: $ea $99 $c2
	ld   a, $01                                      ; $482e: $3e $01
	ld   [wFarCallBank], a                                  ; $4830: $ea $9a $c2
	pop  af                                          ; $4833: $f1
	call FarCall                                       ; $4834: $cd $62 $09
	ld   a, [$c8b1]                                  ; $4837: $fa $b1 $c8
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
	ld   de, $7180                                   ; $4855: $11 $80 $71
	push af                                          ; $4858: $f5
	ld   a, $1c                                      ; $4859: $3e $1c
	ld   [wFarCallAddr], a                                  ; $485b: $ea $98 $c2
	ld   a, $41                                      ; $485e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4860: $ea $99 $c2
	ld   a, $01                                      ; $4863: $3e $01
	ld   [wFarCallBank], a                                  ; $4865: $ea $9a $c2
	pop  af                                          ; $4868: $f1
	call FarCall                                       ; $4869: $cd $62 $09
	ret                                              ; $486c: $c9


Call_010_486d:
	ld   a, [wInGameButtonsPressed]                                  ; $486d: $fa $10 $c2
	bit  0, a                                        ; $4870: $cb $47
	ret  z                                           ; $4872: $c8

	ld   a, [$c8b6]                                  ; $4873: $fa $b6 $c8
	bit  5, a                                        ; $4876: $cb $6f
	jr   nz, jr_010_48ac                             ; $4878: $20 $32

	bit  4, a                                        ; $487a: $cb $67
	jr   z, jr_010_48b0                              ; $487c: $28 $32

	ld   a, $21                                      ; $487e: $3e $21
	call Func_1adf                                       ; $4880: $cd $df $1a
	ld   a, [$c8b6]                                  ; $4883: $fa $b6 $c8
	bit  2, a                                        ; $4886: $cb $57
	jr   nz, jr_010_4897                             ; $4888: $20 $0d

	bit  3, a                                        ; $488a: $cb $5f
	jr   nz, jr_010_489c                             ; $488c: $20 $0e

	bit  0, a                                        ; $488e: $cb $47
	jr   nz, jr_010_48a3                             ; $4890: $20 $11

	call Call_010_47f5                               ; $4892: $cd $f5 $47
	jr   jr_010_489f                                 ; $4895: $18 $08

jr_010_4897:
	call Call_010_479f                               ; $4897: $cd $9f $47
	jr   jr_010_489f                                 ; $489a: $18 $03

jr_010_489c:
	call Call_010_47bf                               ; $489c: $cd $bf $47

jr_010_489f:
	call Call_010_4810                               ; $489f: $cd $10 $48
	ret                                              ; $48a2: $c9


jr_010_48a3:
	call Call_010_47da                               ; $48a3: $cd $da $47
	ld   a, $04                                      ; $48a6: $3e $04
	ld   [wGameSubstate], a                                  ; $48a8: $ea $a1 $c2
	ret                                              ; $48ab: $c9


jr_010_48ac:
	call Call_010_4992                               ; $48ac: $cd $92 $49
	ret                                              ; $48af: $c9


jr_010_48b0:
	ld   a, [$c8b2]                                  ; $48b0: $fa $b2 $c8
	cp   $03                                         ; $48b3: $fe $03
	jr   z, jr_010_48c8                              ; $48b5: $28 $11

	cp   $04                                         ; $48b7: $fe $04
	jr   nz, jr_010_48d5                             ; $48b9: $20 $1a

	call Call_010_459f                               ; $48bb: $cd $9f $45
	ld   hl, $c8b6                                   ; $48be: $21 $b6 $c8
	set  3, [hl]                                     ; $48c1: $cb $de
	call Call_010_4ad8                               ; $48c3: $cd $d8 $4a
	jr   jr_010_48ef                                 ; $48c6: $18 $27

jr_010_48c8:
	call Call_010_459f                               ; $48c8: $cd $9f $45
	ld   hl, $c8b6                                   ; $48cb: $21 $b6 $c8
	set  1, [hl]                                     ; $48ce: $cb $ce
	call Call_010_4b1c                               ; $48d0: $cd $1c $4b
	jr   jr_010_48ef                                 ; $48d3: $18 $1a

jr_010_48d5:
	ld   a, [$c8b6]                                  ; $48d5: $fa $b6 $c8
	bit  1, a                                        ; $48d8: $cb $4f
	jr   z, jr_010_48fd                              ; $48da: $28 $21

	ld   a, [$c8b2]                                  ; $48dc: $fa $b2 $c8
	ld   [$c8b7], a                                  ; $48df: $ea $b7 $c8
	call Call_010_459f                               ; $48e2: $cd $9f $45
	ld   hl, $c8b6                                   ; $48e5: $21 $b6 $c8
	res  1, [hl]                                     ; $48e8: $cb $8e
	set  2, [hl]                                     ; $48ea: $cb $d6
	call Call_010_4afa                               ; $48ec: $cd $fa $4a

jr_010_48ef:
	call Call_010_478e                               ; $48ef: $cd $8e $47
	call Call_010_473c                               ; $48f2: $cd $3c $47
	ld   a, $21                                      ; $48f5: $3e $21
	call Func_1adf                                       ; $48f7: $cd $df $1a
	jp   Jump_010_498b                               ; $48fa: $c3 $8b $49


jr_010_48fd:
	ld   b, $18                                      ; $48fd: $06 $18
	bit  3, a                                        ; $48ff: $cb $5f
	jr   nz, jr_010_493d                             ; $4901: $20 $3a

	ld   b, $1a                                      ; $4903: $06 $1a
	bit  2, a                                        ; $4905: $cb $57
	jr   nz, jr_010_493d                             ; $4907: $20 $34

	ld   b, $14                                      ; $4909: $06 $14
	bit  0, a                                        ; $490b: $cb $47
	jr   z, jr_010_493d                              ; $490d: $28 $2e

	ld   hl, $c8b6                                   ; $490f: $21 $b6 $c8
	set  4, [hl]                                     ; $4912: $cb $e6
	ld   a, [$c8b1]                                  ; $4914: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4917: $cd $76 $30
	ld   a, $16                                      ; $491a: $3e $16
	ld   de, $7180                                   ; $491c: $11 $80 $71
	push af                                          ; $491f: $f5
	ld   a, $1c                                      ; $4920: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4922: $ea $98 $c2
	ld   a, $41                                      ; $4925: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4927: $ea $99 $c2
	ld   a, $01                                      ; $492a: $3e $01
	ld   [wFarCallBank], a                                  ; $492c: $ea $9a $c2
	pop  af                                          ; $492f: $f1
	call FarCall                                       ; $4930: $cd $62 $09
	ld   a, [$c8af]                                  ; $4933: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4936: $cd $76 $30
	ld   a, $0f                                      ; $4939: $3e $0f
	jr   jr_010_4969                                 ; $493b: $18 $2c

jr_010_493d:
	ld   hl, $c8b6                                   ; $493d: $21 $b6 $c8
	set  5, [hl]                                     ; $4940: $cb $ee
	push bc                                          ; $4942: $c5
	ld   a, [$c8b1]                                  ; $4943: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4946: $cd $76 $30
	pop  af                                          ; $4949: $f1
	ld   de, $7180                                   ; $494a: $11 $80 $71
	push af                                          ; $494d: $f5
	ld   a, $1c                                      ; $494e: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4950: $ea $98 $c2
	ld   a, $41                                      ; $4953: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4955: $ea $99 $c2
	ld   a, $01                                      ; $4958: $3e $01
	ld   [wFarCallBank], a                                  ; $495a: $ea $9a $c2
	pop  af                                          ; $495d: $f1
	call FarCall                                       ; $495e: $cd $62 $09
	ld   a, [$c8af]                                  ; $4961: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4964: $cd $76 $30
	ld   a, $10                                      ; $4967: $3e $10

jr_010_4969:
	ld   [$c8b0], a                                  ; $4969: $ea $b0 $c8
	ld   de, $7180                                   ; $496c: $11 $80 $71
	push af                                          ; $496f: $f5
	ld   a, $1c                                      ; $4970: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4972: $ea $98 $c2
	ld   a, $41                                      ; $4975: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4977: $ea $99 $c2
	ld   a, $01                                      ; $497a: $3e $01
	ld   [wFarCallBank], a                                  ; $497c: $ea $9a $c2
	pop  af                                          ; $497f: $f1
	call FarCall                                       ; $4980: $cd $62 $09
	call Call_010_473c                               ; $4983: $cd $3c $47
	ld   a, $23                                      ; $4986: $3e $23
	call Func_1adf                                       ; $4988: $cd $df $1a

Jump_010_498b:
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
	call Func_1adf                                       ; $49a6: $cd $df $1a

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
	call Func_1adf                                       ; $49c9: $cd $df $1a
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
	ld   a, [$c8af]                                  ; $49ea: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $49ed: $cd $76 $30
	ld   c, $0e                                      ; $49f0: $0e $0e
	ld   a, [$c8b6]                                  ; $49f2: $fa $b6 $c8
	bit  6, a                                        ; $49f5: $cb $77
	jr   z, jr_010_49fb                              ; $49f7: $28 $02

	ld   c, $1d                                      ; $49f9: $0e $1d

jr_010_49fb:
	ld   a, c                                        ; $49fb: $79
	ld   [$c8b0], a                                  ; $49fc: $ea $b0 $c8
	ld   de, $7180                                   ; $49ff: $11 $80 $71
	push af                                          ; $4a02: $f5
	ld   a, $1c                                      ; $4a03: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4a05: $ea $98 $c2
	ld   a, $41                                      ; $4a08: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4a0a: $ea $99 $c2
	ld   a, $01                                      ; $4a0d: $3e $01
	ld   [wFarCallBank], a                                  ; $4a0f: $ea $9a $c2
	pop  af                                          ; $4a12: $f1
	call FarCall                                       ; $4a13: $cd $62 $09
	ld   a, [$c8b1]                                  ; $4a16: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4a19: $cd $76 $30
	ld   a, $00                                      ; $4a1c: $3e $00
	ld   de, $7180                                   ; $4a1e: $11 $80 $71
	push af                                          ; $4a21: $f5
	ld   a, $1c                                      ; $4a22: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4a24: $ea $98 $c2
	ld   a, $41                                      ; $4a27: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4a29: $ea $99 $c2
	ld   a, $01                                      ; $4a2c: $3e $01
	ld   [wFarCallBank], a                                  ; $4a2e: $ea $9a $c2
	pop  af                                          ; $4a31: $f1
	call FarCall                                       ; $4a32: $cd $62 $09
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
	call Func_1adf                                       ; $4a50: $cd $df $1a
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


Call_010_4b92:
	call Call_010_4bad                               ; $4b92: $cd $ad $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b95: $cf
	call Call_010_4be5                               ; $4b96: $cd $e5 $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b99: $cf
	call Call_010_4c1d                               ; $4b9a: $cd $1d $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b9d: $cf
	ret                                              ; $4b9e: $c9


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

Call_010_4bad:
	ld   a, [wWramBank]                                  ; $4bad: $fa $93 $c2
	push af                                          ; $4bb0: $f5
	ld   a, $03                                      ; $4bb1: $3e $03
	ld   [wWramBank], a                                  ; $4bb3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bb6: $e0 $70
	ld   a, $00                                      ; $4bb8: $3e $00
	ld   hl, $db00                                   ; $4bba: $21 $00 $db
	push af                                          ; $4bbd: $f5
	ld   a, $b7                                      ; $4bbe: $3e $b7
	ld   [wFarCallAddr], a                                  ; $4bc0: $ea $98 $c2
	ld   a, $46                                      ; $4bc3: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $4bc5: $ea $99 $c2
	ld   a, $0a                                      ; $4bc8: $3e $0a
	ld   [wFarCallBank], a                                  ; $4bca: $ea $9a $c2
	pop  af                                          ; $4bcd: $f1
	call FarCall                                       ; $4bce: $cd $62 $09
	ld   hl, $db00                                   ; $4bd1: $21 $00 $db
	ld   a, [hl]                                     ; $4bd4: $7e
	ld   [$c8b8], a                                  ; $4bd5: $ea $b8 $c8
	call Call_010_4c55                               ; $4bd8: $cd $55 $4c
	call Call_010_4cb9                               ; $4bdb: $cd $b9 $4c
	pop  af                                          ; $4bde: $f1
	ld   [wWramBank], a                                  ; $4bdf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4be2: $e0 $70
	ret                                              ; $4be4: $c9


Call_010_4be5:
	ld   a, [wWramBank]                                  ; $4be5: $fa $93 $c2
	push af                                          ; $4be8: $f5
	ld   a, $03                                      ; $4be9: $3e $03
	ld   [wWramBank], a                                  ; $4beb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bee: $e0 $70
	ld   a, $01                                      ; $4bf0: $3e $01
	ld   hl, $db0f                                   ; $4bf2: $21 $0f $db
	push af                                          ; $4bf5: $f5
	ld   a, $b7                                      ; $4bf6: $3e $b7
	ld   [wFarCallAddr], a                                  ; $4bf8: $ea $98 $c2
	ld   a, $46                                      ; $4bfb: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $4bfd: $ea $99 $c2
	ld   a, $0a                                      ; $4c00: $3e $0a
	ld   [wFarCallBank], a                                  ; $4c02: $ea $9a $c2
	pop  af                                          ; $4c05: $f1
	call FarCall                                       ; $4c06: $cd $62 $09
	ld   hl, $db0f                                   ; $4c09: $21 $0f $db
	ld   a, [hl]                                     ; $4c0c: $7e
	ld   [$c8b9], a                                  ; $4c0d: $ea $b9 $c8
	call Call_010_4c55                               ; $4c10: $cd $55 $4c
	call Call_010_4ce3                               ; $4c13: $cd $e3 $4c
	pop  af                                          ; $4c16: $f1
	ld   [wWramBank], a                                  ; $4c17: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c1a: $e0 $70
	ret                                              ; $4c1c: $c9


Call_010_4c1d:
	ld   a, [wWramBank]                                  ; $4c1d: $fa $93 $c2
	push af                                          ; $4c20: $f5
	ld   a, $03                                      ; $4c21: $3e $03
	ld   [wWramBank], a                                  ; $4c23: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c26: $e0 $70
	ld   a, $02                                      ; $4c28: $3e $02
	ld   hl, $db1e                                   ; $4c2a: $21 $1e $db
	push af                                          ; $4c2d: $f5
	ld   a, $b7                                      ; $4c2e: $3e $b7
	ld   [wFarCallAddr], a                                  ; $4c30: $ea $98 $c2
	ld   a, $46                                      ; $4c33: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $4c35: $ea $99 $c2
	ld   a, $0a                                      ; $4c38: $3e $0a
	ld   [wFarCallBank], a                                  ; $4c3a: $ea $9a $c2
	pop  af                                          ; $4c3d: $f1
	call FarCall                                       ; $4c3e: $cd $62 $09
	ld   hl, $db1e                                   ; $4c41: $21 $1e $db
	ld   a, [hl]                                     ; $4c44: $7e
	ld   [$c8ba], a                                  ; $4c45: $ea $ba $c8
	call Call_010_4c55                               ; $4c48: $cd $55 $4c
	call Call_010_4d0d                               ; $4c4b: $cd $0d $4d
	pop  af                                          ; $4c4e: $f1
	ld   [wWramBank], a                                  ; $4c4f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c52: $e0 $70
	ret                                              ; $4c54: $c9


Call_010_4c55:
	ld   a, [hl]                                     ; $4c55: $7e
	or   a                                           ; $4c56: $b7
	jr   z, jr_010_4c82                              ; $4c57: $28 $29

	call Call_010_4ca7                               ; $4c59: $cd $a7 $4c
	ld   bc, $0007                                   ; $4c5c: $01 $07 $00
	add  hl, bc                                      ; $4c5f: $09
	ld   d, h                                        ; $4c60: $54
	ld   e, l                                        ; $4c61: $5d
	ld   bc, $0007                                   ; $4c62: $01 $07 $00
	add  hl, bc                                      ; $4c65: $09
	ld   c, $06                                      ; $4c66: $0e $06

jr_010_4c68:
	ld   a, [de]                                     ; $4c68: $1a
	dec  de                                          ; $4c69: $1b
	ld   [hl-], a                                    ; $4c6a: $32
	dec  c                                           ; $4c6b: $0d
	jr   nz, jr_010_4c68                             ; $4c6c: $20 $fa

	ld   c, $07                                      ; $4c6e: $0e $07
	ld   de, $4c96                                   ; $4c70: $11 $96 $4c

jr_010_4c73:
	ld   a, [de]                                     ; $4c73: $1a
	dec  de                                          ; $4c74: $1b
	ld   [hl-], a                                    ; $4c75: $32
	dec  c                                           ; $4c76: $0d
	jr   nz, jr_010_4c73                             ; $4c77: $20 $fa

	ld   bc, $000d                                   ; $4c79: $01 $0d $00
	add  hl, bc                                      ; $4c7c: $09
	ld   a, $00                                      ; $4c7d: $3e $00
	ld   [hl], $00                                   ; $4c7f: $36 $00
	ret                                              ; $4c81: $c9


jr_010_4c82:
	ld   de, $4c9a                                   ; $4c82: $11 $9a $4c
	ld   c, $0d                                      ; $4c85: $0e $0d

jr_010_4c87:
	ld   a, [de]                                     ; $4c87: $1a
	inc  de                                          ; $4c88: $13
	ld   [hl+], a                                    ; $4c89: $22
	dec  c                                           ; $4c8a: $0d
	jr   nz, jr_010_4c87                             ; $4c8b: $20 $fa

	ret                                              ; $4c8d: $c9


	ld   [bc], a                                     ; $4c8e: $02
	nop                                              ; $4c8f: $00
	inc  b                                           ; $4c90: $04
	xor  d                                           ; $4c91: $aa
	inc  b                                           ; $4c92: $04
	call nc, $10fc                                   ; $4c93: $d4 $fc $10
	stop                                             ; $4c96: $10 $00
	ld   [bc], a                                     ; $4c98: $02
	nop                                              ; $4c99: $00
	db   $10                                         ; $4c9a: $10
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

Call_010_4ca7:
	push hl                                          ; $4ca7: $e5
	ld   c, $08                                      ; $4ca8: $0e $08

jr_010_4caa:
	dec  c                                           ; $4caa: $0d
	ld   a, [hl+]                                    ; $4cab: $2a
	or   a                                           ; $4cac: $b7
	jr   nz, jr_010_4caa                             ; $4cad: $20 $fb

	dec  hl                                          ; $4caf: $2b
	ld   a, [$4c9a]                                  ; $4cb0: $fa $9a $4c

jr_010_4cb3:
	ld   [hl+], a                                    ; $4cb3: $22
	dec  c                                           ; $4cb4: $0d
	jr   nz, jr_010_4cb3                             ; $4cb5: $20 $fc

	pop  hl                                          ; $4cb7: $e1
	ret                                              ; $4cb8: $c9


Call_010_4cb9:
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


Call_010_4ce3:
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


Call_010_4d0d:
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
	ld   hl, $d800                                   ; $4d4a: $21 $00 $d8
	ld   a, $00                                      ; $4d4d: $3e $00
	ret                                              ; $4d4f: $c9


Call_010_4d50:
	ld   a, [$c8af]                                  ; $4d50: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4d53: $cd $76 $30
	ld   a, $1e                                      ; $4d56: $3e $1e
	ld   [$c8b0], a                                  ; $4d58: $ea $b0 $c8
	ld   de, $7180                                   ; $4d5b: $11 $80 $71
	push af                                          ; $4d5e: $f5
	ld   a, $1c                                      ; $4d5f: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4d61: $ea $98 $c2
	ld   a, $41                                      ; $4d64: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4d66: $ea $99 $c2
	ld   a, $01                                      ; $4d69: $3e $01
	ld   [wFarCallBank], a                                  ; $4d6b: $ea $9a $c2
	pop  af                                          ; $4d6e: $f1
	call FarCall                                       ; $4d6f: $cd $62 $09
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
	ld   a, $0e                                      ; $4d83: $3e $0e
	ld   [wGameState], a                                  ; $4d85: $ea $a0 $c2
	ld   a, $00                                      ; $4d88: $3e $00
	ld   [wGameSubstate], a                                  ; $4d8a: $ea $a1 $c2
	ret                                              ; $4d8d: $c9


Call_010_4d8e:
	ld   a, [$c8af]                                  ; $4d8e: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4d91: $cd $76 $30
	ld   a, $12                                      ; $4d94: $3e $12
	ld   de, $7180                                   ; $4d96: $11 $80 $71
	push af                                          ; $4d99: $f5
	ld   a, $1c                                      ; $4d9a: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4d9c: $ea $98 $c2
	ld   a, $41                                      ; $4d9f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4da1: $ea $99 $c2
	ld   a, $01                                      ; $4da4: $3e $01
	ld   [wFarCallBank], a                                  ; $4da6: $ea $9a $c2
	pop  af                                          ; $4da9: $f1
	call FarCall                                       ; $4daa: $cd $62 $09

jr_010_4dad:
	call ClearOam                                       ; $4dad: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4db0: $cd $d3 $2e
	call Call_010_454f                               ; $4db3: $cd $4f $45
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
	ld   a, [$afb0]                                  ; $4de6: $fa $b0 $af
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
	call $1b64                                       ; $4dfd: $cd $64 $1b
	ld   a, [$c8af]                                  ; $4e00: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e03: $cd $76 $30
	ld   a, $0e                                      ; $4e06: $3e $0e
	ld   de, $7180                                   ; $4e08: $11 $80 $71
	push af                                          ; $4e0b: $f5
	ld   a, $1c                                      ; $4e0c: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4e0e: $ea $98 $c2
	ld   a, $41                                      ; $4e11: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4e13: $ea $99 $c2
	ld   a, $01                                      ; $4e16: $3e $01
	ld   [wFarCallBank], a                                  ; $4e18: $ea $9a $c2
	pop  af                                          ; $4e1b: $f1
	call FarCall                                       ; $4e1c: $cd $62 $09
	ld   a, [$c8b1]                                  ; $4e1f: $fa $b1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e22: $cd $76 $30
	ld   a, $00                                      ; $4e25: $3e $00
	ld   de, $7180                                   ; $4e27: $11 $80 $71
	push af                                          ; $4e2a: $f5
	ld   a, $1c                                      ; $4e2b: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4e2d: $ea $98 $c2
	ld   a, $41                                      ; $4e30: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4e32: $ea $99 $c2
	ld   a, $01                                      ; $4e35: $3e $01
	ld   [wFarCallBank], a                                  ; $4e37: $ea $9a $c2
	pop  af                                          ; $4e3a: $f1
	call FarCall                                       ; $4e3b: $cd $62 $09

jr_010_4e3e:
	call ClearOam                                       ; $4e3e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4e41: $cd $d3 $2e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e44: $cf
	ld   a, [$c8af]                                  ; $4e45: $fa $af $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e48: $cd $76 $30
	push af                                          ; $4e4b: $f5
	ld   a, $43                                      ; $4e4c: $3e $43
	ld   [wFarCallAddr], a                                  ; $4e4e: $ea $98 $c2
	ld   a, $41                                      ; $4e51: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4e53: $ea $99 $c2
	ld   a, $01                                      ; $4e56: $3e $01
	ld   [wFarCallBank], a                                  ; $4e58: $ea $9a $c2
	pop  af                                          ; $4e5b: $f1
	call FarCall                                       ; $4e5c: $cd $62 $09
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
	jr   z, jr_010_4e9e                              ; $4e73: $28 $29

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
	ld   a, h                                        ; $4e89: $7c
	ld   [$c8bb], a                                  ; $4e8a: $ea $bb $c8
	ld   a, l                                        ; $4e8d: $7d
	ld   [$c8bc], a                                  ; $4e8e: $ea $bc $c8
	ld   a, d                                        ; $4e91: $7a
	ld   [$c8bd], a                                  ; $4e92: $ea $bd $c8
	ld   a, e                                        ; $4e95: $7b
	ld   [$c8be], a                                  ; $4e96: $ea $be $c8
	ld   a, $0e                                      ; $4e99: $3e $0e
	ld   [wGameState], a                                  ; $4e9b: $ea $a0 $c2

jr_010_4e9e:
	ld   a, $01                                      ; $4e9e: $3e $01
	ld   [wGameSubstate], a                                  ; $4ea0: $ea $a1 $c2
	ret                                              ; $4ea3: $c9


GameState0f::
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
	ld   a, $03                                      ; $4ee9: $3e $03
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

	call Call_010_517d                               ; $4fe4: $cd $7d $51

jr_010_4fe7:
	ld   hl, wGameSubstate                                   ; $4fe7: $21 $a1 $c2
	inc  [hl]                                        ; $4fea: $34
	ret                                              ; $4feb: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $4fec: $fa $10 $c2
	and  $03                                         ; $4fef: $e6 $03
	jr   z, jr_010_4ffc                              ; $4ff1: $28 $09

	ld   a, $21                                      ; $4ff3: $3e $21
	call Func_1adf                                       ; $4ff5: $cd $df $1a
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
	ld   a, [$c93f]                                  ; $5040: $fa $3f $c9
	ld   [wGameState], a                                  ; $5043: $ea $a0 $c2
	ld   a, [$c940]                                  ; $5046: $fa $40 $c9
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


Call_010_517d:
	ldh  a, [rKEY1]                                  ; $517d: $f0 $4d
	bit  7, a                                        ; $517f: $cb $7f
	jr   nz, jr_010_5187                             ; $5181: $20 $04

	xor  a                                           ; $5183: $af
	ld   [wIsDoubleSpeed], a                                  ; $5184: $ea $02 $c2

jr_010_5187:
	ld   a, [wFrameCounter]                                  ; $5187: $fa $8f $c2
	ld   h, a                                        ; $518a: $67
	ld   l, $06                                      ; $518b: $2e $06
	call HLequHdivModL                                       ; $518d: $cd $fb $0b
	ld   h, $00                                      ; $5190: $26 $00
	ld   bc, $51a6                                   ; $5192: $01 $a6 $51
	add  hl, bc                                      ; $5195: $09
	ld   a, [hl]                                     ; $5196: $7e
	call $1b64                                       ; $5197: $cd $64 $1b
	ldh  a, [rKEY1]                                  ; $519a: $f0 $4d
	bit  7, a                                        ; $519c: $cb $7f
	jr   nz, jr_010_51a5                             ; $519e: $20 $05

	ld   a, $01                                      ; $51a0: $3e $01
	ld   [wIsDoubleSpeed], a                                  ; $51a2: $ea $02 $c2

jr_010_51a5:
	ret                                              ; $51a5: $c9


	dec  l                                           ; $51a6: $2d
	add  hl, sp                                      ; $51a7: $39
	ld   b, l                                        ; $51a8: $45
	ld   d, c                                        ; $51a9: $51
	ld   e, l                                        ; $51aa: $5d
	ld   l, c                                        ; $51ab: $69

Call_010_51ac:
	ld   a, h                                        ; $51ac: $7c
	ld   [$c93f], a                                  ; $51ad: $ea $3f $c9
	ld   a, l                                        ; $51b0: $7d
	ld   [$c940], a                                  ; $51b1: $ea $40 $c9
	ld   a, $0f                                      ; $51b4: $3e $0f
	ld   [wGameState], a                                  ; $51b6: $ea $a0 $c2
	ld   a, $00                                      ; $51b9: $3e $00
	ld   [wGameSubstate], a                                  ; $51bb: $ea $a1 $c2
	ret                                              ; $51be: $c9


GameState10::
	ld   a, [wGameSubstate]                                  ; $51bf: $fa $a1 $c2
	rst  JumpTable                                         ; $51c2: $df
	call $c951                                       ; $51c3: $cd $51 $c9
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
	ld   a, $03                                      ; $51ea: $3e $03
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
	call nz, SetDoubleSpeedMode                           ; $52c5: $c4 $f4 $53
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
	push af                                          ; $52fb: $f5
	ld   a, $3a                                      ; $52fc: $3e $3a
	ld   [wFarCallAddr], a                                  ; $52fe: $ea $98 $c2
	ld   a, $6c                                      ; $5301: $3e $6c
	ld   [wFarCallAddr+1], a                                  ; $5303: $ea $99 $c2
	ld   a, $04                                      ; $5306: $3e $04
	ld   [wFarCallBank], a                                  ; $5308: $ea $9a $c2
	pop  af                                          ; $530b: $f1
	call FarCall                                       ; $530c: $cd $62 $09

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

	call Call_010_517d                               ; $5327: $cd $7d $51

jr_010_532a:
	ld   hl, wGameSubstate                                   ; $532a: $21 $a1 $c2
	inc  [hl]                                        ; $532d: $34
	ret                                              ; $532e: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $532f: $fa $10 $c2
	and  $03                                         ; $5332: $e6 $03
	jr   z, jr_010_533f                              ; $5334: $28 $09

	ld   a, $21                                      ; $5336: $3e $21
	call Func_1adf                                       ; $5338: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $533b: $21 $a1 $c2
	inc  [hl]                                        ; $533e: $34

jr_010_533f:
	ret                                              ; $533f: $c9


	ldh  a, [rKEY1]                                  ; $5340: $f0 $4d
	bit  7, a                                        ; $5342: $cb $7f
	call z, SetDoubleSpeedMode                            ; $5344: $cc $f4 $53
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


SetDoubleSpeedMode:
	ldh  a, [rIE]                                    ; $53f4: $f0 $ff
	push af                                          ; $53f6: $f5

	ld   a, $01                                      ; $53f7: $3e $01
	ldh  [rKEY1], a                                  ; $53f9: $e0 $4d

	xor  a                                           ; $53fb: $af
	ldh  [rIF], a                                    ; $53fc: $e0 $0f
	ldh  [rIE], a                                    ; $53fe: $e0 $ff
	ldh  a, [rP1]                                    ; $5400: $f0 $00
	or   $30                                         ; $5402: $f6 $30
	ldh  [rP1], a                                    ; $5404: $e0 $00

	stop                                             ; $5406: $10 $00
	
	pop  af                                          ; $5408: $f1
	ldh  [rIE], a                                    ; $5409: $e0 $ff
	ret                                              ; $540b: $c9


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

Call_010_556b:
	ld   a, h                                        ; $556b: $7c
	ld   [$c942], a                                  ; $556c: $ea $42 $c9
	ld   a, l                                        ; $556f: $7d
	ld   [$c943], a                                  ; $5570: $ea $43 $c9
	ld   a, $10                                      ; $5573: $3e $10
	ld   [wGameState], a                                  ; $5575: $ea $a0 $c2
	ld   a, $00                                      ; $5578: $3e $00
	ld   [wGameSubstate], a                                  ; $557a: $ea $a1 $c2
	ret                                              ; $557d: $c9


GameState11::
	ld   a, [wGameSubstate]                                  ; $557e: $fa $a1 $c2
	rst  JumpTable                                         ; $5581: $df
	sub  b                                           ; $5582: $90
	ld   d, l                                        ; $5583: $55
	ld   [hl], d                                     ; $5584: $72
	ld   d, [hl]                                     ; $5585: $56
	adc  h                                           ; $5586: $8c
	ld   d, [hl]                                     ; $5587: $56
	add  $56                                         ; $5588: $c6 $56
	db   $d3                                         ; $558a: $d3
	ld   d, [hl]                                     ; $558b: $56
	db   $db                                         ; $558c: $db
	ld   d, [hl]                                     ; $558d: $56
	db   $ec                                         ; $558e: $ec
	ld   d, [hl]                                     ; $558f: $56
	ld   hl, $c8c2                                   ; $5590: $21 $c2 $c8
	ld   c, $14                                      ; $5593: $0e $14
	xor  a                                           ; $5595: $af

jr_010_5596:
	ld   [hl+], a                                    ; $5596: $22
	dec  c                                           ; $5597: $0d
	jr   nz, jr_010_5596                             ; $5598: $20 $fc

	call TurnOffLCD                                       ; $559a: $cd $e3 $08
	ld   a, $00                                      ; $559d: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $559f: $cd $e0 $1c
	ld   a, $ff                                      ; $55a2: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $55a4: $ea $0e $c2
	ld   a, $0c                                      ; $55a7: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $55a9: $ea $13 $c2
	ld   a, $04                                      ; $55ac: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $55ae: $ea $14 $c2
	call ClearOam                                       ; $55b1: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $55b4: $cd $59 $0b
	ld   a, $03                                      ; $55b7: $3e $03
	ld   [wLCDC], a                                  ; $55b9: $ea $03 $c2
	ld   a, $01                                      ; $55bc: $3e $01
	ldh  [rVBK], a                                   ; $55be: $e0 $4f
	ld   a, $1d                                      ; $55c0: $3e $1d
	ld   hl, $9800                                   ; $55c2: $21 $00 $98
	ld   de, $7160                                   ; $55c5: $11 $60 $71
	call RLEXorCopy                                       ; $55c8: $cd $d2 $09
	xor  a                                           ; $55cb: $af
	ldh  [rVBK], a                                   ; $55cc: $e0 $4f
	ld   a, $1d                                      ; $55ce: $3e $1d
	ld   hl, $9800                                   ; $55d0: $21 $00 $98
	ld   de, $5937                                   ; $55d3: $11 $37 $59
	call RLEXorCopy                                       ; $55d6: $cd $d2 $09
	ld   a, $16                                      ; $55d9: $3e $16
	ld   hl, $8800                                   ; $55db: $21 $00 $88
	ld   de, $628a                                   ; $55de: $11 $8a $62
	call RLEXorCopy                                       ; $55e1: $cd $d2 $09
	ld   a, [wWramBank]                                  ; $55e4: $fa $93 $c2
	push af                                          ; $55e7: $f5
	ld   a, $03                                      ; $55e8: $3e $03
	ld   [wWramBank], a                                  ; $55ea: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55ed: $e0 $70
	ld   a, $1d                                      ; $55ef: $3e $1d
	ld   hl, $d000                                   ; $55f1: $21 $00 $d0
	ld   de, $5937                                   ; $55f4: $11 $37 $59
	call RLEXorCopy                                       ; $55f7: $cd $d2 $09
	ld   a, $1d                                      ; $55fa: $3e $1d
	ld   hl, $d400                                   ; $55fc: $21 $00 $d4
	ld   de, $7160                                   ; $55ff: $11 $60 $71
	call RLEXorCopy                                       ; $5602: $cd $d2 $09
	pop  af                                          ; $5605: $f1
	ld   [wWramBank], a                                  ; $5606: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5609: $e0 $70
	xor  a                                           ; $560b: $af
	ld   [wWY], a                                  ; $560c: $ea $0a $c2
	ld   [wWX], a                                  ; $560f: $ea $09 $c2
	ld   [wSCX], a                                  ; $5612: $ea $07 $c2
	ld   [wSCY], a                                  ; $5615: $ea $08 $c2
	ld   [$c941], a                                  ; $5618: $ea $41 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $561b: $cd $c9 $2e
	xor  a                                           ; $561e: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $561f: $ea $62 $c3
	ld   a, $20                                      ; $5622: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5624: $ea $63 $c3
	ld   a, $03                                      ; $5627: $3e $03
	ld   b, $01                                      ; $5629: $06 $01
	ld   hl, $7000                                   ; $562b: $21 $00 $70
	ld   c, $1e                                      ; $562e: $0e $1e
	ld   de, $7a0e                                   ; $5630: $11 $0e $7a
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5633: $cd $48 $07
	call TurnOnLCD                                       ; $5636: $cd $09 $09
	ld   a, $07                                      ; $5639: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $563b: $cd $e0 $1c
	push af                                          ; $563e: $f5
	ld   a, $54                                      ; $563f: $3e $54
	ld   [wFarCallAddr], a                                  ; $5641: $ea $98 $c2
	ld   a, $57                                      ; $5644: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $5646: $ea $99 $c2
	ld   a, $11                                      ; $5649: $3e $11
	ld   [wFarCallBank], a                                  ; $564b: $ea $9a $c2
	pop  af                                          ; $564e: $f1
	call FarCall                                       ; $564f: $cd $62 $09
	ld   a, $1e                                      ; $5652: $3e $1e
	ld   hl, $7a0e                                   ; $5654: $21 $0e $7a
	ld   de, wBGPalettes                                   ; $5657: $11 $de $c2
	ld   bc, $0080                                   ; $565a: $01 $80 $00
	call FarMemCopy                                       ; $565d: $cd $b2 $09
	ld   bc, $003f                                   ; $5660: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5663: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $5666: $21 $a1 $c2
	inc  [hl]                                        ; $5669: $34
	ldh  a, [rKEY1]                                  ; $566a: $f0 $4d
	bit  7, a                                        ; $566c: $cb $7f
	call nz, SetDoubleSpeedMode                           ; $566e: $c4 $f4 $53
	ret                                              ; $5671: $c9


	di                                               ; $5672: $f3
	call Call_010_58f2                               ; $5673: $cd $f2 $58
	ei                                               ; $5676: $fb
	or   a                                           ; $5677: $b7
	jr   z, jr_010_5684                              ; $5678: $28 $0a

	call Call_010_5781                               ; $567a: $cd $81 $57
	ld   a, $05                                      ; $567d: $3e $05
	ld   [wGameSubstate], a                                  ; $567f: $ea $a1 $c2
	jr   jr_010_568b                                 ; $5682: $18 $07

jr_010_5684:
	call Call_010_5762                               ; $5684: $cd $62 $57
	ld   hl, wGameSubstate                                   ; $5687: $21 $a1 $c2
	inc  [hl]                                        ; $568a: $34

jr_010_568b:
	ret                                              ; $568b: $c9


	di                                               ; $568c: $f3

jr_010_568d:
	call Func_10_5845                                       ; $568d: $cd $45 $58
	or   a                                           ; $5690: $b7
	jr   z, jr_010_56a9                              ; $5691: $28 $16

	call PollInput                                       ; $5693: $cd $a9 $03
	ld   a, [wInGameButtonsPressed]                                  ; $5696: $fa $10 $c2
	and  $02                                         ; $5699: $e6 $02
	jr   z, jr_010_568d                              ; $569b: $28 $f0

	ld   a, $06                                      ; $569d: $3e $06
	ld   [wGameSubstate], a                                  ; $569f: $ea $a1 $c2
	ld   a, $22                                      ; $56a2: $3e $22
	call Func_1adf                                       ; $56a4: $cd $df $1a
	jr   jr_010_56c4                                 ; $56a7: $18 $1b

jr_010_56a9:
	ld   hl, $c6b6                                   ; $56a9: $21 $b6 $c6
	push af                                          ; $56ac: $f5
	ld   a, $3a                                      ; $56ad: $3e $3a
	ld   [wFarCallAddr], a                                  ; $56af: $ea $98 $c2
	ld   a, $6c                                      ; $56b2: $3e $6c
	ld   [wFarCallAddr+1], a                                  ; $56b4: $ea $99 $c2
	ld   a, $04                                      ; $56b7: $3e $04
	ld   [wFarCallBank], a                                  ; $56b9: $ea $9a $c2
	pop  af                                          ; $56bc: $f1
	call FarCall                                       ; $56bd: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $56c0: $21 $a1 $c2
	inc  [hl]                                        ; $56c3: $34

jr_010_56c4:
	ei                                               ; $56c4: $fb
	ret                                              ; $56c5: $c9


	ld   a, $01                                      ; $56c6: $3e $01
	ld   [$c941], a                                  ; $56c8: $ea $41 $c9
	call Call_010_5743                               ; $56cb: $cd $43 $57
	ld   hl, wGameSubstate                                   ; $56ce: $21 $a1 $c2
	inc  [hl]                                        ; $56d1: $34
	ret                                              ; $56d2: $c9


	call Call_010_517d                               ; $56d3: $cd $7d $51
	ld   hl, wGameSubstate                                   ; $56d6: $21 $a1 $c2
	inc  [hl]                                        ; $56d9: $34
	ret                                              ; $56da: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $56db: $fa $10 $c2
	and  $03                                         ; $56de: $e6 $03
	jr   z, jr_010_56eb                              ; $56e0: $28 $09

	ld   a, $21                                      ; $56e2: $3e $21
	call Func_1adf                                       ; $56e4: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $56e7: $21 $a1 $c2
	inc  [hl]                                        ; $56ea: $34

jr_010_56eb:
	ret                                              ; $56eb: $c9


	ldh  a, [rKEY1]                                  ; $56ec: $f0 $4d
	bit  7, a                                        ; $56ee: $cb $7f
	call z, SetDoubleSpeedMode                            ; $56f0: $cc $f4 $53
	xor  a                                           ; $56f3: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $56f4: $ea $62 $c3
	ld   a, $20                                      ; $56f7: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $56f9: $ea $63 $c3
	ld   a, $03                                      ; $56fc: $3e $03
	ld   b, $1e                                      ; $56fe: $06 $1e
	ld   hl, $7a0e                                   ; $5700: $21 $0e $7a
	ld   c, $01                                      ; $5703: $0e $01
	ld   de, $7000                                   ; $5705: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5708: $cd $48 $07
	push af                                          ; $570b: $f5
	ld   a, $6f                                      ; $570c: $3e $6f
	ld   [wFarCallAddr], a                                  ; $570e: $ea $98 $c2
	ld   a, $57                                      ; $5711: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $5713: $ea $99 $c2
	ld   a, $11                                      ; $5716: $3e $11
	ld   [wFarCallBank], a                                  ; $5718: $ea $9a $c2
	pop  af                                          ; $571b: $f1
	call FarCall                                       ; $571c: $cd $62 $09
	ld   a, $01                                      ; $571f: $3e $01
	ld   hl, $7000                                   ; $5721: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5724: $11 $de $c2
	ld   bc, $0080                                   ; $5727: $01 $80 $00
	call FarMemCopy                                       ; $572a: $cd $b2 $09
	ld   bc, $003f                                   ; $572d: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5730: $cd $aa $04
	call TurnOffLCD                                       ; $5733: $cd $e3 $08
	ld   a, [$c93f]                                  ; $5736: $fa $3f $c9
	ld   [wGameState], a                                  ; $5739: $ea $a0 $c2
	ld   a, [$c940]                                  ; $573c: $fa $40 $c9
	ld   [wGameSubstate], a                                  ; $573f: $ea $a1 $c2
	ret                                              ; $5742: $c9


Call_010_5743:
	ld   c, $80                                      ; $5743: $0e $80
	ld   de, $98e0                                   ; $5745: $11 $e0 $98
	ld   a, $03                                      ; $5748: $3e $03
	ld   hl, $d380                                   ; $574a: $21 $80 $d3
	ld   b, $08                                      ; $574d: $06 $08
	call EnqueueHDMATransfer                                       ; $574f: $cd $7c $02
	ld   c, $81                                      ; $5752: $0e $81
	ld   de, $98e0                                   ; $5754: $11 $e0 $98
	ld   a, $03                                      ; $5757: $3e $03
	ld   hl, $d780                                   ; $5759: $21 $80 $d7
	ld   b, $08                                      ; $575c: $06 $08
	call EnqueueHDMATransfer                                       ; $575e: $cd $7c $02
	ret                                              ; $5761: $c9


Call_010_5762:
	ld   c, $80                                      ; $5762: $0e $80
	ld   de, $99c0                                   ; $5764: $11 $c0 $99
	ld   a, $03                                      ; $5767: $3e $03
	ld   hl, $d300                                   ; $5769: $21 $00 $d3
	ld   b, $08                                      ; $576c: $06 $08
	call EnqueueHDMATransfer                                       ; $576e: $cd $7c $02
	ld   c, $81                                      ; $5771: $0e $81
	ld   de, $99c0                                   ; $5773: $11 $c0 $99
	ld   a, $03                                      ; $5776: $3e $03
	ld   hl, $d700                                   ; $5778: $21 $00 $d7
	ld   b, $08                                      ; $577b: $06 $08
	call EnqueueHDMATransfer                                       ; $577d: $cd $7c $02
	ret                                              ; $5780: $c9


Call_010_5781:
	ld   c, $80                                      ; $5781: $0e $80
	ld   de, $98c0                                   ; $5783: $11 $c0 $98
	ld   a, $03                                      ; $5786: $3e $03
	ld   hl, $d240                                   ; $5788: $21 $40 $d2
	ld   b, $0c                                      ; $578b: $06 $0c
	call EnqueueHDMATransfer                                       ; $578d: $cd $7c $02
	ld   c, $81                                      ; $5790: $0e $81
	ld   de, $98c0                                   ; $5792: $11 $c0 $98
	ld   a, $03                                      ; $5795: $3e $03
	ld   hl, $d640                                   ; $5797: $21 $40 $d6
	ld   b, $0c                                      ; $579a: $06 $0c
	call EnqueueHDMATransfer                                       ; $579c: $cd $7c $02
	ret                                              ; $579f: $c9


Call_010_57a0:
	ld   a, h                                        ; $57a0: $7c
	ld   [$c93f], a                                  ; $57a1: $ea $3f $c9
	ld   a, l                                        ; $57a4: $7d
	ld   [$c940], a                                  ; $57a5: $ea $40 $c9
	ld   a, $11                                      ; $57a8: $3e $11
	ld   [wGameState], a                                  ; $57aa: $ea $a0 $c2
	ld   a, $00                                      ; $57ad: $3e $00
	ld   [wGameSubstate], a                                  ; $57af: $ea $a1 $c2
	ret                                              ; $57b2: $c9


Call_010_57b3:
	ld   hl, rRP                                   ; $57b3: $21 $56 $ff
	ld   bc, $05b0                                   ; $57b6: $01 $b0 $05

jr_010_57b9:
	dec  bc                                          ; $57b9: $0b
	ld   a, b                                        ; $57ba: $78
	or   c                                           ; $57bb: $b1
	jr   z, jr_010_57e8                              ; $57bc: $28 $2a

	bit  4, [hl]                                     ; $57be: $cb $66
	jr   z, jr_010_57b9                              ; $57c0: $28 $f7

	xor  a                                           ; $57c2: $af

jr_010_57c3:
	inc  a                                           ; $57c3: $3c
	cp   $11                                         ; $57c4: $fe $11
	jr   z, jr_010_57e8                              ; $57c6: $28 $20

	bit  4, [hl]                                     ; $57c8: $cb $66
	jr   nz, jr_010_57c3                             ; $57ca: $20 $f7

	ld   b, a                                        ; $57cc: $47
	xor  a                                           ; $57cd: $af

jr_010_57ce:
	inc  a                                           ; $57ce: $3c
	cp   $28                                         ; $57cf: $fe $28
	jr   z, jr_010_57e8                              ; $57d1: $28 $15

	bit  4, [hl]                                     ; $57d3: $cb $66
	jr   z, jr_010_57ce                              ; $57d5: $28 $f7

	add  b                                           ; $57d7: $80
	ld   b, $00                                      ; $57d8: $06 $00
	ld   hl, $57f6                                   ; $57da: $21 $f6 $57

jr_010_57dd:
	cp   [hl]                                        ; $57dd: $be
	jr   c, jr_010_57e8                              ; $57de: $38 $08

	inc  hl                                          ; $57e0: $23
	cp   [hl]                                        ; $57e1: $be
	jr   c, jr_010_57ec                              ; $57e2: $38 $08

	inc  hl                                          ; $57e4: $23
	inc  b                                           ; $57e5: $04
	jr   jr_010_57dd                                 ; $57e6: $18 $f5

jr_010_57e8:
	ld   b, $ff                                      ; $57e8: $06 $ff
	jr   jr_010_57ec                                 ; $57ea: $18 $00

jr_010_57ec:
	ld   de, $00bf                                   ; $57ec: $11 $bf $00

jr_010_57ef:
	dec  de                                          ; $57ef: $1b
	ld   a, d                                        ; $57f0: $7a
	or   e                                           ; $57f1: $b3
	jr   nz, jr_010_57ef                             ; $57f2: $20 $fb

	ld   a, b                                        ; $57f4: $78
	ret                                              ; $57f5: $c9


	inc  b                                           ; $57f6: $04
	add  hl, bc                                      ; $57f7: $09
	ld   a, [bc]                                     ; $57f8: $0a
	rrca                                             ; $57f9: $0f
	db   $10                                         ; $57fa: $10
	dec  d                                           ; $57fb: $15
	ld   d, $1b                                      ; $57fc: $16 $1b
	rst  $38                                         ; $57fe: $ff


Func_10_57ff:
	ld   hl, rRP                                   ; $57ff: $21 $56 $ff
	ld   bc, $05b0                                   ; $5802: $01 $b0 $05

jr_010_5805:
	dec  bc                                          ; $5805: $0b
	ld   a, b                                        ; $5806: $78
	or   c                                           ; $5807: $b1
	jr   z, jr_010_5834                              ; $5808: $28 $2a

	bit  4, [hl]                                     ; $580a: $cb $66
	jr   z, jr_010_5805                              ; $580c: $28 $f7

	xor  a                                           ; $580e: $af

jr_010_580f:
	inc  a                                           ; $580f: $3c
	cp   $11                                         ; $5810: $fe $11
	jr   z, jr_010_5834                              ; $5812: $28 $20

	bit  4, [hl]                                     ; $5814: $cb $66
	jr   nz, jr_010_580f                             ; $5816: $20 $f7

	ld   b, a                                        ; $5818: $47
	xor  a                                           ; $5819: $af

jr_010_581a:
	inc  a                                           ; $581a: $3c
	cp   $28                                         ; $581b: $fe $28
	jr   z, jr_010_5834                              ; $581d: $28 $15

	bit  4, [hl]                                     ; $581f: $cb $66
	jr   z, jr_010_581a                              ; $5821: $28 $f7

	add  b                                           ; $5823: $80
	ld   b, $00                                      ; $5824: $06 $00
	ld   hl, $5842                                   ; $5826: $21 $42 $58

jr_010_5829:
	cp   [hl]                                        ; $5829: $be
	jr   c, jr_010_5834                              ; $582a: $38 $08

	inc  hl                                          ; $582c: $23
	cp   [hl]                                        ; $582d: $be
	jr   c, jr_010_5838                              ; $582e: $38 $08

	inc  hl                                          ; $5830: $23
	inc  b                                           ; $5831: $04
	jr   jr_010_5829                                 ; $5832: $18 $f5

jr_010_5834:
	ld   b, $ff                                      ; $5834: $06 $ff
	jr   jr_010_5838                                 ; $5836: $18 $00

jr_010_5838:
	ld   de, $00bf                                   ; $5838: $11 $bf $00

jr_010_583b:
	dec  de                                          ; $583b: $1b
	ld   a, d                                        ; $583c: $7a
	or   e                                           ; $583d: $b3
	jr   nz, jr_010_583b                             ; $583e: $20 $fb

	ld   a, b                                        ; $5840: $78
	ret                                              ; $5841: $c9


	inc  e                                           ; $5842: $1c
	db $21, $ff 
	
	
Func_10_5845:
	call Func_10_57ff ; $5845: $cd $ff $57
	or   a                                           ; $5848: $b7
	jr   z, jr_010_584e                              ; $5849: $28 $03

	ld   a, $01                                      ; $584b: $3e $01
	ret                                              ; $584d: $c9


jr_010_584e:
	ld   hl, $c6ae                                   ; $584e: $21 $ae $c6
	ld   b, $20                                      ; $5851: $06 $20

jr_010_5853:
	push bc                                          ; $5853: $c5
	push hl                                          ; $5854: $e5
	call Call_010_57b3                               ; $5855: $cd $b3 $57
	pop  hl                                          ; $5858: $e1
	pop  bc                                          ; $5859: $c1
	cp   $ff                                         ; $585a: $fe $ff
	jr   nz, jr_010_5861                             ; $585c: $20 $03

	ld   a, $02                                      ; $585e: $3e $02
	ret                                              ; $5860: $c9


jr_010_5861:
	srl  a                                           ; $5861: $cb $3f
	rr   [hl]                                        ; $5863: $cb $1e
	srl  a                                           ; $5865: $cb $3f
	rr   [hl]                                        ; $5867: $cb $1e
	ld   a, b                                        ; $5869: $78
	dec  a                                           ; $586a: $3d
	and  $03                                         ; $586b: $e6 $03
	jr   nz, jr_010_5870                             ; $586d: $20 $01

	inc  hl                                          ; $586f: $23

jr_010_5870:
	dec  b                                           ; $5870: $05
	jr   nz, jr_010_5853                             ; $5871: $20 $e0

	ld   a, [$c6b4]                                  ; $5873: $fa $b4 $c6
	or   a                                           ; $5876: $b7
	jr   z, jr_010_587d                              ; $5877: $28 $04

	cp   $40                                         ; $5879: $fe $40
	jr   c, jr_010_5880                              ; $587b: $38 $03

jr_010_587d:
	ld   a, $05                                      ; $587d: $3e $05
	ret                                              ; $587f: $c9


jr_010_5880:
	ld   a, [$c6b4]                                  ; $5880: $fa $b4 $c6
	sla  a                                           ; $5883: $cb $27
	sla  a                                           ; $5885: $cb $27
	ld   b, a                                        ; $5887: $47
	ld   hl, $c6b6                                   ; $5888: $21 $b6 $c6

jr_010_588b:
	push bc                                          ; $588b: $c5
	push hl                                          ; $588c: $e5
	call Call_010_57b3                               ; $588d: $cd $b3 $57
	pop  hl                                          ; $5890: $e1
	pop  bc                                          ; $5891: $c1
	cp   $ff                                         ; $5892: $fe $ff
	jr   nz, jr_010_5899                             ; $5894: $20 $03

	ld   a, $06                                      ; $5896: $3e $06
	ret                                              ; $5898: $c9


jr_010_5899:
	srl  a                                           ; $5899: $cb $3f
	rr   [hl]                                        ; $589b: $cb $1e
	srl  a                                           ; $589d: $cb $3f
	rr   [hl]                                        ; $589f: $cb $1e
	ld   a, b                                        ; $58a1: $78
	dec  a                                           ; $58a2: $3d
	and  $03                                         ; $58a3: $e6 $03
	jr   nz, jr_010_58a8                             ; $58a5: $20 $01

	inc  hl                                          ; $58a7: $23

jr_010_58a8:
	dec  b                                           ; $58a8: $05
	jr   nz, jr_010_588b                             ; $58a9: $20 $e0

	ld   b, $04                                      ; $58ab: $06 $04

jr_010_58ad:
	push bc                                          ; $58ad: $c5
	call Call_010_57b3                               ; $58ae: $cd $b3 $57
	pop  bc                                          ; $58b1: $c1
	cp   $ff                                         ; $58b2: $fe $ff
	jr   nz, jr_010_58b9                             ; $58b4: $20 $03

	ld   a, $07                                      ; $58b6: $3e $07
	ret                                              ; $58b8: $c9


jr_010_58b9:
	ld   hl, $c6f5                                   ; $58b9: $21 $f5 $c6
	srl  a                                           ; $58bc: $cb $3f
	rr   [hl]                                        ; $58be: $cb $1e
	srl  a                                           ; $58c0: $cb $3f
	rr   [hl]                                        ; $58c2: $cb $1e
	dec  b                                           ; $58c4: $05
	jr   nz, jr_010_58ad                             ; $58c5: $20 $e6

	ld   hl, $c6ae                                   ; $58c7: $21 $ae $c6
	ld   a, [$c6b4]                                  ; $58ca: $fa $b4 $c6
	add  $07                                         ; $58cd: $c6 $07
	ld   b, a                                        ; $58cf: $47
	ld   a, [hl+]                                    ; $58d0: $2a

jr_010_58d1:
	add  [hl]                                        ; $58d1: $86
	inc  hl                                          ; $58d2: $23
	dec  b                                           ; $58d3: $05
	jr   nz, jr_010_58d1                             ; $58d4: $20 $fb

	ld   hl, $c6f5                                   ; $58d6: $21 $f5 $c6
	cp   [hl]                                        ; $58d9: $be
	jr   z, jr_010_58df                              ; $58da: $28 $03

	ld   a, $09                                      ; $58dc: $3e $09
	ret                                              ; $58de: $c9


jr_010_58df:
	ld   a, [$c6b4]                                  ; $58df: $fa $b4 $c6
	ld   b, a                                        ; $58e2: $47
	ld   a, [$c6b3]                                  ; $58e3: $fa $b3 $c6
	ld   c, a                                        ; $58e6: $4f
	ld   hl, $c6b6                                   ; $58e7: $21 $b6 $c6

jr_010_58ea:
	ld   a, [hl]                                     ; $58ea: $7e
	xor  c                                           ; $58eb: $a9
	ld   [hl+], a                                    ; $58ec: $22
	dec  b                                           ; $58ed: $05
	jr   nz, jr_010_58ea                             ; $58ee: $20 $fa

	xor  a                                           ; $58f0: $af
	ret                                              ; $58f1: $c9


Call_010_58f2:
	ld   hl, rRP                                   ; $58f2: $21 $56 $ff
	ld   bc, $05b0                                   ; $58f5: $01 $b0 $05

jr_010_58f8:
	dec  bc                                          ; $58f8: $0b
	ld   a, b                                        ; $58f9: $78
	or   c                                           ; $58fa: $b1
	jr   z, jr_010_5903                              ; $58fb: $28 $06

	bit  4, [hl]                                     ; $58fd: $cb $66
	jr   nz, jr_010_58f8                             ; $58ff: $20 $f7

	xor  a                                           ; $5901: $af
	ret                                              ; $5902: $c9


jr_010_5903:
	ld   a, $01                                      ; $5903: $3e $01
	ret                                              ; $5905: $c9


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


GameState14::
	ld   a, [wGameSubstate]                                  ; $5c06: $fa $a1 $c2
	rst  JumpTable                                         ; $5c09: $df
	inc  d                                           ; $5c0a: $14
	ld   e, h                                        ; $5c0b: $5c
	ld   hl, $e85c                                   ; $5c0c: $21 $5c $e8
	ld   e, l                                        ; $5c0f: $5d
	ld   a, a                                        ; $5c10: $7f
	ld   h, c                                        ; $5c11: $61
	ld   [$3e5e], sp                                 ; $5c12: $08 $5e $3e
	inc  bc                                          ; $5c15: $03
	ld   [$c91d], a                                  ; $5c16: $ea $1d $c9
	xor  a                                           ; $5c19: $af
	ld   [$c941], a                                  ; $5c1a: $ea $41 $c9
	ld   hl, wGameSubstate                                   ; $5c1d: $21 $a1 $c2
	inc  [hl]                                        ; $5c20: $34
	di                                               ; $5c21: $f3
	call Call_010_58f2                               ; $5c22: $cd $f2 $58
	ei                                               ; $5c25: $fb
	ld   [$c924], a                                  ; $5c26: $ea $24 $c9
	or   a                                           ; $5c29: $b7
	jr   z, jr_010_5c37                              ; $5c2a: $28 $0b

	ld   hl, $c91d                                   ; $5c2c: $21 $1d $c9
	ld   a, [hl]                                     ; $5c2f: $7e
	cp   $02                                         ; $5c30: $fe $02
	jr   nz, jr_010_5c37                             ; $5c32: $20 $03

	ld   a, $03                                      ; $5c34: $3e $03
	ld   [hl], a                                     ; $5c36: $77

jr_010_5c37:
	call Call_010_65e0                               ; $5c37: $cd $e0 $65
	call TurnOffLCD                                       ; $5c3a: $cd $e3 $08
	ld   a, $00                                      ; $5c3d: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $5c3f: $cd $e0 $1c
	ld   a, $ff                                      ; $5c42: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5c44: $ea $0e $c2
	ld   a, $0c                                      ; $5c47: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5c49: $ea $13 $c2
	ld   a, $04                                      ; $5c4c: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5c4e: $ea $14 $c2
	call ClearOam                                       ; $5c51: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $5c54: $cd $59 $0b
	ld   a, $03                                      ; $5c57: $3e $03
	ld   [wLCDC], a                                  ; $5c59: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $5c5c: $fa $93 $c2
	push af                                          ; $5c5f: $f5
	ld   a, $03                                      ; $5c60: $3e $03
	ld   [wWramBank], a                                  ; $5c62: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c65: $e0 $70
	ld   a, $1d                                      ; $5c67: $3e $1d
	ld   hl, $d000                                   ; $5c69: $21 $00 $d0
	ld   de, $60f4                                   ; $5c6c: $11 $f4 $60
	call RLEXorCopy                                       ; $5c6f: $cd $d2 $09
	ld   a, $1c                                      ; $5c72: $3e $1c
	ld   hl, $d400                                   ; $5c74: $21 $00 $d4
	ld   de, $66fd                                   ; $5c77: $11 $fd $66
	call RLEXorCopy                                       ; $5c7a: $cd $d2 $09
	call Call_010_6473                               ; $5c7d: $cd $73 $64
	call Call_010_62fd                               ; $5c80: $cd $fd $62
	call Call_010_6388                               ; $5c83: $cd $88 $63
	call $66a8                                       ; $5c86: $cd $a8 $66
	pop  af                                          ; $5c89: $f1
	ld   [wWramBank], a                                  ; $5c8a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c8d: $e0 $70
	ld   a, $01                                      ; $5c8f: $3e $01
	ldh  [rVBK], a                                   ; $5c91: $e0 $4f
	ld   a, $14                                      ; $5c93: $3e $14
	ld   hl, $8000                                   ; $5c95: $21 $00 $80
	ld   de, $60df                                   ; $5c98: $11 $df $60
	call RLEXorCopy                                       ; $5c9b: $cd $d2 $09
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
	call $0995                                       ; $5cdb: $cd $95 $09
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
	ld   de, $7180                                   ; $5d0d: $11 $80 $71
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
	ld   de, $7180                                   ; $5d43: $11 $80 $71
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
	ld   de, $7180                                   ; $5d70: $11 $80 $71
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
	call PlaySound                                       ; $5dc5: $cd $92 $1a
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


	call ClearOam                                       ; $5de8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5deb: $cd $d3 $2e
	call Call_010_61f3                               ; $5dee: $cd $f3 $61
	call Call_010_5eb3                               ; $5df1: $cd $b3 $5e
	ld   a, [$c919]                                  ; $5df4: $fa $19 $c9
	rst  JumpTable                                         ; $5df7: $df
	ld   d, c                                        ; $5df8: $51
	ld   h, c                                        ; $5df9: $61
	dec  sp                                          ; $5dfa: $3b
	ld   e, [hl]                                     ; $5dfb: $5e
	add  $5e                                         ; $5dfc: $c6 $5e
	ldh  a, [c]                                      ; $5dfe: $f2
	ld   e, [hl]                                     ; $5dff: $5e
	inc  bc                                          ; $5e00: $03
	ld   e, a                                        ; $5e01: $5f
	ld   a, a                                        ; $5e02: $7f
	ld   e, a                                        ; $5e03: $5f
	adc  [hl]                                        ; $5e04: $8e
	ld   e, a                                        ; $5e05: $5f
	or   l                                           ; $5e06: $b5
	ld   e, a                                        ; $5e07: $5f
	call ClearOam                                       ; $5e08: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5e0b: $cd $d3 $2e
	call Call_010_61f3                               ; $5e0e: $cd $f3 $61
	call Call_010_5eb3                               ; $5e11: $cd $b3 $5e
	ld   a, [$c919]                                  ; $5e14: $fa $19 $c9
	rst  JumpTable                                         ; $5e17: $df
	jp   hl                                          ; $5e18: $e9


	ld   e, a                                        ; $5e19: $5f
	ld   d, c                                        ; $5e1a: $51
	ld   h, c                                        ; $5e1b: $61
	pop  af                                          ; $5e1c: $f1
	ld   e, a                                        ; $5e1d: $5f
	dec  bc                                          ; $5e1e: $0b
	ld   h, c                                        ; $5e1f: $61
	ld   l, $61                                      ; $5e20: $2e $61
	inc  h                                           ; $5e22: $24
	ld   e, [hl]                                     ; $5e23: $5e
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

	ld   a, [$c91d]                                  ; $5e45: $fa $1d $c9
	cp   $03                                         ; $5e48: $fe $03
	jr   nz, jr_010_5e53                             ; $5e4a: $20 $07

	ld   a, $21                                      ; $5e4c: $3e $21
	call Func_1adf                                       ; $5e4e: $cd $df $1a
	jr   jr_010_5e7e                                 ; $5e51: $18 $2b

jr_010_5e53:
	call Call_010_5ea3                               ; $5e53: $cd $a3 $5e
	ld   [$c91f], a                                  ; $5e56: $ea $1f $c9
	call Call_010_6444                               ; $5e59: $cd $44 $64
	ld   hl, $c919                                   ; $5e5c: $21 $19 $c9
	inc  [hl]                                        ; $5e5f: $34
	ld   a, $23                                      ; $5e60: $3e $23
	call Func_1adf                                       ; $5e62: $cd $df $1a
	jr   jr_010_5e83                                 ; $5e65: $18 $1c

jr_010_5e67:
	bit  1, a                                        ; $5e67: $cb $4f
	jr   z, jr_010_5ea2                              ; $5e69: $28 $37

	ld   a, $22                                      ; $5e6b: $3e $22
	call Func_1adf                                       ; $5e6d: $cd $df $1a
	call Call_010_62a6                               ; $5e70: $cd $a6 $62
	ld   a, $03                                      ; $5e73: $3e $03
	ld   [$c91d], a                                  ; $5e75: $ea $1d $c9
	call Call_010_62b6                               ; $5e78: $cd $b6 $62
	call Call_010_6240                               ; $5e7b: $cd $40 $62

jr_010_5e7e:
	ld   a, $06                                      ; $5e7e: $3e $06
	ld   [$c919], a                                  ; $5e80: $ea $19 $c9

jr_010_5e83:
	ld   a, [$c91c]                                  ; $5e83: $fa $1c $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5e86: $cd $76 $30
	ld   a, $29                                      ; $5e89: $3e $29
	ld   de, $7180                                   ; $5e8b: $11 $80 $71
	push af                                          ; $5e8e: $f5
	ld   a, $1c                                      ; $5e8f: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5e91: $ea $98 $c2
	ld   a, $41                                      ; $5e94: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5e96: $ea $99 $c2
	ld   a, $01                                      ; $5e99: $3e $01
	ld   [wFarCallBank], a                                  ; $5e9b: $ea $9a $c2
	pop  af                                          ; $5e9e: $f1
	call FarCall                                       ; $5e9f: $cd $62 $09

jr_010_5ea2:
	ret                                              ; $5ea2: $c9


Call_010_5ea3:
	ld   a, [$c91d]                                  ; $5ea3: $fa $1d $c9
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
	push af                                          ; $5ecc: $f5
	ld   a, $43                                      ; $5ecd: $3e $43
	ld   [wFarCallAddr], a                                  ; $5ecf: $ea $98 $c2
	ld   a, $41                                      ; $5ed2: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5ed4: $ea $99 $c2
	ld   a, $01                                      ; $5ed7: $3e $01
	ld   [wFarCallBank], a                                  ; $5ed9: $ea $9a $c2
	pop  af                                          ; $5edc: $f1
	call FarCall                                       ; $5edd: $cd $62 $09
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
	call Func_1adf                                       ; $5f2b: $cd $df $1a
	jr   jr_010_5f7e                                 ; $5f2e: $18 $4e

jr_010_5f30:
	bit  0, a                                        ; $5f30: $cb $47
	jr   z, jr_010_5f47                              ; $5f32: $28 $13

	call Call_010_65a6                               ; $5f34: $cd $a6 $65
	cp   $5c                                         ; $5f37: $fe $5c
	jr   z, jr_010_5f4b                              ; $5f39: $28 $10

	ld   a, $21                                      ; $5f3b: $3e $21
	call Func_1adf                                       ; $5f3d: $cd $df $1a
	ld   a, $06                                      ; $5f40: $3e $06
	ld   [$c919], a                                  ; $5f42: $ea $19 $c9
	jr   jr_010_5f7e                                 ; $5f45: $18 $37

jr_010_5f47:
	bit  1, a                                        ; $5f47: $cb $4f
	jr   z, jr_010_5f7e                              ; $5f49: $28 $33

jr_010_5f4b:
	ld   a, $24                                      ; $5f4b: $3e $24
	call Func_1adf                                       ; $5f4d: $cd $df $1a
	ld   a, [$c91a]                                  ; $5f50: $fa $1a $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f53: $cd $76 $30
	ld   a, $26                                      ; $5f56: $3e $26
	ld   de, $7180                                   ; $5f58: $11 $80 $71
	push af                                          ; $5f5b: $f5
	ld   a, $1c                                      ; $5f5c: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5f5e: $ea $98 $c2
	ld   a, $41                                      ; $5f61: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5f63: $ea $99 $c2
	ld   a, $01                                      ; $5f66: $3e $01
	ld   [wFarCallBank], a                                  ; $5f68: $ea $9a $c2
	pop  af                                          ; $5f6b: $f1
	call FarCall                                       ; $5f6c: $cd $62 $09
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


Call_010_60a9:
	push hl                                          ; $60a9: $e5
	push de                                          ; $60aa: $d5
	ld   a, [$cc95]                                  ; $60ab: $fa $95 $cc
	call $0d7d                                       ; $60ae: $cd $7d $0d
	ld   c, a                                        ; $60b1: $4f
	pop  af                                          ; $60b2: $f1
	ld   b, a                                        ; $60b3: $47
	pop  af                                          ; $60b4: $f1
	pop  de                                          ; $60b5: $d1
	pop  hl                                          ; $60b6: $e1
	ld   a, b                                        ; $60b7: $78
	or   a                                           ; $60b8: $b7
	jr   z, jr_010_60c3                              ; $60b9: $28 $08

	cp   $0a                                         ; $60bb: $fe $0a
	jr   z, jr_010_60c3                              ; $60bd: $28 $04

	add  $11                                         ; $60bf: $c6 $11
	ld   [de], a                                     ; $60c1: $12
	inc  de                                          ; $60c2: $13

jr_010_60c3:
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
	call Func_1adf                                       ; $6140: $cd $df $1a
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


	call TurnOffLCD                                       ; $617f: $cd $e3 $08
	ld   a, $00                                      ; $6182: $3e $00
	call PlaySound                                       ; $6184: $cd $92 $1a
	ld   a, [$c91d]                                  ; $6187: $fa $1d $c9
	rst  JumpTable                                         ; $618a: $df
	sub  e                                           ; $618b: $93
	ld   h, c                                        ; $618c: $61
	sbc  e                                           ; $618d: $9b
	ld   h, c                                        ; $618e: $61
	and  e                                           ; $618f: $a3
	ld   h, c                                        ; $6190: $61
	xor  e                                           ; $6191: $ab
	ld   h, c                                        ; $6192: $61
	ld   h, $14                                      ; $6193: $26 $14
	ld   l, $01                                      ; $6195: $2e $01
	call Call_010_556b                               ; $6197: $cd $6b $55
	ret                                              ; $619a: $c9


	ld   h, $14                                      ; $619b: $26 $14
	ld   l, $01                                      ; $619d: $2e $01
	call Call_010_51ac                               ; $619f: $cd $ac $51
	ret                                              ; $61a2: $c9


	ld   h, $14                                      ; $61a3: $26 $14
	ld   l, $01                                      ; $61a5: $2e $01
	call Call_010_57a0                               ; $61a7: $cd $a0 $57
	ret                                              ; $61aa: $c9


	ld   a, [$c922]                                  ; $61ab: $fa $22 $c9
	ld   [wGameState], a                                  ; $61ae: $ea $a0 $c2
	ld   a, [$c923]                                  ; $61b1: $fa $23 $c9
	ld   [wGameSubstate], a                                  ; $61b4: $ea $a1 $c2
	ret                                              ; $61b7: $c9


Call_010_61b8:
	call Call_010_62a6                               ; $61b8: $cd $a6 $62
	ld   hl, $c91d                                   ; $61bb: $21 $1d $c9
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
	call Func_1adf                                       ; $61e9: $cd $df $1a

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
	ld   de, $7180                                   ; $6205: $11 $80 $71
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
	ld   de, $7180                                   ; $6228: $11 $80 $71
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
	ld   a, [$c91d]                                  ; $625f: $fa $1d $c9
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
	ld   a, [$c91d]                                  ; $6293: $fa $1d $c9
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
	ld   a, [$c91d]                                  ; $62c6: $fa $1d $c9
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
	ld   a, [$c924]                                  ; $6339: $fa $24 $c9
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
	ld   a, [$c91d]                                  ; $6444: $fa $1d $c9
	ld   c, a                                        ; $6447: $4f
	ld   b, $00                                      ; $6448: $06 $00
	ld   hl, $646f                                   ; $644a: $21 $6f $64
	add  hl, bc                                      ; $644d: $09
	ld   a, [hl]                                     ; $644e: $7e
	push af                                          ; $644f: $f5
	ld   a, [$c91a]                                  ; $6450: $fa $1a $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6453: $cd $76 $30
	pop  af                                          ; $6456: $f1
	ld   de, $7180                                   ; $6457: $11 $80 $71
	push af                                          ; $645a: $f5
	ld   a, $1c                                      ; $645b: $3e $1c
	ld   [wFarCallAddr], a                                  ; $645d: $ea $98 $c2
	ld   a, $41                                      ; $6460: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6462: $ea $99 $c2
	ld   a, $01                                      ; $6465: $3e $01
	ld   [wFarCallBank], a                                  ; $6467: $ea $9a $c2
	pop  af                                          ; $646a: $f1
	call FarCall                                       ; $646b: $cd $62 $09
	ret                                              ; $646e: $c9


	ld   hl, $2322                                   ; $646f: $21 $22 $23
	inc  h                                           ; $6472: $24

Call_010_6473:
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
	ld   a, [$c91d]                                  ; $64c0: $fa $1d $c9
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
	call Call_010_652a                               ; $64d2: $cd $2a $65
	pop  bc                                          ; $64d5: $c1
	ld   hl, $6522                                   ; $64d6: $21 $22 $65
	add  hl, bc                                      ; $64d9: $09
	ld   a, [hl+]                                    ; $64da: $2a
	ld   h, [hl]                                     ; $64db: $66
	ld   l, a                                        ; $64dc: $6f
	ld   de, $de62                                   ; $64dd: $11 $62 $de
	call Call_010_652a                               ; $64e0: $cd $2a $65
	ld   hl, $d740                                   ; $64e3: $21 $40 $d7
	ld   de, $dde2                                   ; $64e6: $11 $e2 $dd
	call Call_010_652a                               ; $64e9: $cd $2a $65
	ld   hl, $d340                                   ; $64ec: $21 $40 $d3
	ld   de, $dea2                                   ; $64ef: $11 $a2 $de
	call Call_010_652a                               ; $64f2: $cd $2a $65

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

Call_010_652a:
	ld   bc, $0010                                   ; $652a: $01 $10 $00
	call MemCopy                                       ; $652d: $cd $a9 $09
	ld   bc, $0010                                   ; $6530: $01 $10 $00
	add  hl, bc                                      ; $6533: $09
	push hl                                          ; $6534: $e5
	ld   hl, $0010                                   ; $6535: $21 $10 $00
	add  hl, de                                      ; $6538: $19
	ld   e, l                                        ; $6539: $5d
	ld   d, h                                        ; $653a: $54
	pop  hl                                          ; $653b: $e1
	ld   bc, $0010                                   ; $653c: $01 $10 $00
	call MemCopy                                       ; $653f: $cd $a9 $09
	ret                                              ; $6542: $c9


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
	ld   de, $7180                                   ; $656a: $11 $80 $71
	push af                                          ; $656d: $f5
	ld   a, $1c                                      ; $656e: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6570: $ea $98 $c2
	ld   a, $41                                      ; $6573: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6575: $ea $99 $c2
	ld   a, $01                                      ; $6578: $3e $01
	ld   [wFarCallBank], a                                  ; $657a: $ea $9a $c2
	pop  af                                          ; $657d: $f1
	call FarCall                                       ; $657e: $cd $62 $09
	ret                                              ; $6581: $c9


Call_010_6582:
	ld   b, $2c                                      ; $6582: $06 $2c

Call_010_6584:
	ld   a, [$c91b]                                  ; $6584: $fa $1b $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6587: $cd $76 $30
	ld   a, $25                                      ; $658a: $3e $25
	ld   c, $77                                      ; $658c: $0e $77
	ld   de, $7180                                   ; $658e: $11 $80 $71
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
	call Func_1adf                                       ; $669b: $cd $df $1a
	xor  a                                           ; $669e: $af
	ret                                              ; $669f: $c9


	nop                                              ; $66a0: $00
	ld   bc, $0302                                   ; $66a1: $01 $02 $03
	inc  b                                           ; $66a4: $04
	inc  bc                                          ; $66a5: $03
	ld   [bc], a                                     ; $66a6: $02
	ld   bc, $24fa                                   ; $66a7: $01 $fa $24
	ret                                              ; $66aa: $c9


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
	ld   a, [$c924]                                  ; $66d3: $fa $24 $c9
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


	ld   a, h                                        ; $6700: $7c
	ld   [$c922], a                                  ; $6701: $ea $22 $c9
	ld   a, l                                        ; $6704: $7d
	ld   [$c923], a                                  ; $6705: $ea $23 $c9
	ld   a, $14                                      ; $6708: $3e $14
	ld   [wGameState], a                                  ; $670a: $ea $a0 $c2
	ld   a, $00                                      ; $670d: $3e $00
	ld   [wGameSubstate], a                                  ; $670f: $ea $a1 $c2
	ret                                              ; $6712: $c9


GameState16::
	ld   a, [wGameSubstate]                                  ; $6713: $fa $a1 $c2
	rst  JumpTable                                         ; $6716: $df
	dec  e                                           ; $6717: $1d
	ld   h, a                                        ; $6718: $67
	ld   [hl], a                                     ; $6719: $77
	ld   l, b                                        ; $671a: $68
	adc  d                                           ; $671b: $8a
	ld   l, b                                        ; $671c: $68
	ld   a, $ff                                      ; $671d: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $671f: $ea $0e $c2
	ld   a, $0c                                      ; $6722: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $6724: $ea $13 $c2
	ld   a, $04                                      ; $6727: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6729: $ea $14 $c2
	call ClearOam                                       ; $672c: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $672f: $cd $59 $0b
	ld   a, $83                                      ; $6732: $3e $83
	ld   [wLCDC], a                                  ; $6734: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $6737: $fa $93 $c2
	push af                                          ; $673a: $f5
	ld   a, $03                                      ; $673b: $3e $03
	ld   [wWramBank], a                                  ; $673d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6740: $e0 $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6742: $cf
	ld   a, $1e                                      ; $6743: $3e $1e
	ld   hl, $d000                                   ; $6745: $21 $00 $d0
	ld   de, $4000                                   ; $6748: $11 $00 $40
	call RLEXorCopy                                       ; $674b: $cd $d2 $09
	ld   c, $81                                      ; $674e: $0e $81
	ld   de, $9800                                   ; $6750: $11 $00 $98
	ld   a, $03                                      ; $6753: $3e $03
	ld   hl, $d000                                   ; $6755: $21 $00 $d0
	ld   b, $40                                      ; $6758: $06 $40
	call EnqueueHDMATransfer                                       ; $675a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $675d: $cf
	ld   a, $1c                                      ; $675e: $3e $1c
	ld   hl, $d000                                   ; $6760: $21 $00 $d0
	ld   de, $4ee1                                   ; $6763: $11 $e1 $4e
	call RLEXorCopy                                       ; $6766: $cd $d2 $09
	ld   c, $81                                      ; $6769: $0e $81
	ld   de, $8800                                   ; $676b: $11 $00 $88
	ld   a, $03                                      ; $676e: $3e $03
	ld   hl, $d000                                   ; $6770: $21 $00 $d0
	ld   b, $80                                      ; $6773: $06 $80
	call EnqueueHDMATransfer                                       ; $6775: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6778: $cf
	ld   a, $1d                                      ; $6779: $3e $1d
	ld   hl, $d000                                   ; $677b: $21 $00 $d0
	ld   de, $567f                                   ; $677e: $11 $7f $56
	call RLEXorCopy                                       ; $6781: $cd $d2 $09
	ld   c, $80                                      ; $6784: $0e $80
	ld   de, $9800                                   ; $6786: $11 $00 $98
	ld   a, $03                                      ; $6789: $3e $03
	ld   hl, $d000                                   ; $678b: $21 $00 $d0
	ld   b, $40                                      ; $678e: $06 $40
	call EnqueueHDMATransfer                                       ; $6790: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6793: $cf
	pop  af                                          ; $6794: $f1
	ld   [wWramBank], a                                  ; $6795: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6798: $e0 $70
	xor  a                                           ; $679a: $af
	ld   [wWY], a                                  ; $679b: $ea $0a $c2
	ld   [wWX], a                                  ; $679e: $ea $09 $c2
	ld   [wSCY], a                                  ; $67a1: $ea $08 $c2
	ld   a, $04                                      ; $67a4: $3e $04
	ld   [wSCX], a                                  ; $67a6: $ea $07 $c2
	ld   a, $00                                      ; $67a9: $3e $00
	ld   [$c95f], a                                  ; $67ab: $ea $5f $c9
	call Call_010_6d90                               ; $67ae: $cd $90 $6d
	call Call_010_6d9c                               ; $67b1: $cd $9c $6d
	xor  a                                           ; $67b4: $af
	ld   [$c94f], a                                  ; $67b5: $ea $4f $c9
	ld   [$c950], a                                  ; $67b8: $ea $50 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $67bb: $cd $c9 $2e
	ld   a, $01                                      ; $67be: $3e $01
	ld   hl, $0000                                   ; $67c0: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $67c3: $cd $4b $2f
	ld   [$c94d], a                                  ; $67c6: $ea $4d $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $67c9: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $67cc: $cd $76 $30
	call Call_010_6cdb                               ; $67cf: $cd $db $6c
	ld   a, $2d                                      ; $67d2: $3e $2d
	ld   de, $7180                                   ; $67d4: $11 $80 $71
	push af                                          ; $67d7: $f5
	ld   a, $03                                      ; $67d8: $3e $03
	ld   [wFarCallAddr], a                                  ; $67da: $ea $98 $c2
	ld   a, $41                                      ; $67dd: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $67df: $ea $99 $c2
	ld   a, $01                                      ; $67e2: $3e $01
	ld   [wFarCallBank], a                                  ; $67e4: $ea $9a $c2
	pop  af                                          ; $67e7: $f1
	call FarCall                                       ; $67e8: $cd $62 $09
	ld   a, $01                                      ; $67eb: $3e $01
	ld   hl, $0000                                   ; $67ed: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $67f0: $cd $4b $2f
	ld   [$c94e], a                                  ; $67f3: $ea $4e $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $67f6: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $67f9: $cd $76 $30
	call Call_010_6cfb                               ; $67fc: $cd $fb $6c
	ld   a, $2f                                      ; $67ff: $3e $2f
	ld   de, $7180                                   ; $6801: $11 $80 $71
	push af                                          ; $6804: $f5
	ld   a, $03                                      ; $6805: $3e $03
	ld   [wFarCallAddr], a                                  ; $6807: $ea $98 $c2
	ld   a, $41                                      ; $680a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $680c: $ea $99 $c2
	ld   a, $01                                      ; $680f: $3e $01
	ld   [wFarCallBank], a                                  ; $6811: $ea $9a $c2
	pop  af                                          ; $6814: $f1
	call FarCall                                       ; $6815: $cd $62 $09
	ld   a, $01                                      ; $6818: $3e $01
	ld   hl, $7000                                   ; $681a: $21 $00 $70
	ld   de, wBGPalettes                                   ; $681d: $11 $de $c2
	ld   bc, $0080                                   ; $6820: $01 $80 $00
	call FarMemCopy                                       ; $6823: $cd $b2 $09
	ld   bc, $003f                                   ; $6826: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6829: $cd $aa $04
	xor  a                                           ; $682c: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $682d: $ea $62 $c3
	ld   a, $40                                      ; $6830: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6832: $ea $63 $c3
	ld   a, $03                                      ; $6835: $3e $03
	ld   b, $01                                      ; $6837: $06 $01
	ld   hl, $7000                                   ; $6839: $21 $00 $70
	ld   c, $1e                                      ; $683c: $0e $1e
	ld   de, $66fc                                   ; $683e: $11 $fc $66
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6841: $cd $48 $07
	call Call_010_68f6                               ; $6844: $cd $f6 $68
	call Call_010_6ebb                               ; $6847: $cd $bb $6e
	push af                                          ; $684a: $f5
	ld   a, $54                                      ; $684b: $3e $54
	ld   [wFarCallAddr], a                                  ; $684d: $ea $98 $c2
	ld   a, $57                                      ; $6850: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $6852: $ea $99 $c2
	ld   a, $11                                      ; $6855: $3e $11
	ld   [wFarCallBank], a                                  ; $6857: $ea $9a $c2
	pop  af                                          ; $685a: $f1
	call FarCall                                       ; $685b: $cd $62 $09
	ld   a, $1e                                      ; $685e: $3e $1e
	ld   hl, $66fc                                   ; $6860: $21 $fc $66
	ld   de, wBGPalettes                                   ; $6863: $11 $de $c2
	ld   bc, $0080                                   ; $6866: $01 $80 $00
	call FarMemCopy                                       ; $6869: $cd $b2 $09
	ld   bc, $003f                                   ; $686c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $686f: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $6872: $21 $a1 $c2
	inc  [hl]                                        ; $6875: $34
	ret                                              ; $6876: $c9


	call ClearOam                                       ; $6877: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $687a: $cd $d3 $2e
	call Call_010_6adb                               ; $687d: $cd $db $6a
	call Call_010_6d22                               ; $6880: $cd $22 $6d
	call Call_010_6c8b                               ; $6883: $cd $8b $6c
	call Call_010_6cbd                               ; $6886: $cd $bd $6c
	ret                                              ; $6889: $c9


	xor  a                                           ; $688a: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $688b: $ea $62 $c3
	ld   a, $40                                      ; $688e: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6890: $ea $63 $c3
	ld   a, $03                                      ; $6893: $3e $03
	ld   b, $1e                                      ; $6895: $06 $1e
	ld   hl, $66fc                                   ; $6897: $21 $fc $66
	ld   c, $01                                      ; $689a: $0e $01
	ld   de, $7000                                   ; $689c: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $689f: $cd $48 $07
	push af                                          ; $68a2: $f5
	ld   a, $54                                      ; $68a3: $3e $54
	ld   [wFarCallAddr], a                                  ; $68a5: $ea $98 $c2
	ld   a, $57                                      ; $68a8: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $68aa: $ea $99 $c2
	ld   a, $11                                      ; $68ad: $3e $11
	ld   [wFarCallBank], a                                  ; $68af: $ea $9a $c2
	pop  af                                          ; $68b2: $f1
	call FarCall                                       ; $68b3: $cd $62 $09
	ld   a, $01                                      ; $68b6: $3e $01
	ld   hl, $7000                                   ; $68b8: $21 $00 $70
	ld   de, wBGPalettes                                   ; $68bb: $11 $de $c2
	ld   bc, $0080                                   ; $68be: $01 $80 $00
	call FarMemCopy                                       ; $68c1: $cd $b2 $09
	ld   bc, $003f                                   ; $68c4: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $68c7: $cd $aa $04
	ld   a, [$c946]                                  ; $68ca: $fa $46 $c9
	ld   [wGameState], a                                  ; $68cd: $ea $a0 $c2
	ld   a, [$c947]                                  ; $68d0: $fa $47 $c9
	ld   [wGameSubstate], a                                  ; $68d3: $ea $a1 $c2
	ret                                              ; $68d6: $c9


	ld   a, [$c94b]                                  ; $68d7: $fa $4b $c9
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


Call_010_68f6:
	call InitWideTextBoxDimensions                                       ; $68f6: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $68f9: $cd $09 $14
	ld   bc, $1106                                   ; $68fc: $01 $06 $11
	call SetKanjiTextBoxDimensions                                       ; $68ff: $cd $24 $14
	ld   bc, $0000                                   ; $6902: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6905: $cd $34 $14
	call Call_010_6d7d                               ; $6908: $cd $7d $6d
	ld   a, [wWramBank]                                  ; $690b: $fa $93 $c2
	push af                                          ; $690e: $f5
	ld   a, $03                                      ; $690f: $3e $03
	ld   [wWramBank], a                                  ; $6911: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6914: $e0 $70
	ld   e, l                                        ; $6916: $5d
	ld   d, h                                        ; $6917: $54
	ld   hl, $d000                                   ; $6918: $21 $00 $d0
	ld   a, $10                                      ; $691b: $3e $10
	call LoadInstantText                                       ; $691d: $cd $06 $13
	pop  af                                          ; $6920: $f1
	ld   [wWramBank], a                                  ; $6921: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6924: $e0 $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6926: $cf
	ld   c, $80                                      ; $6927: $0e $80
	ld   de, $9000                                   ; $6929: $11 $00 $90
	ld   a, $03                                      ; $692c: $3e $03
	ld   hl, $d000                                   ; $692e: $21 $00 $d0
	ld   b, $40                                      ; $6931: $06 $40
	call EnqueueHDMATransfer                                       ; $6933: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6936: $cf
	ld   c, $80                                      ; $6937: $0e $80
	ld   de, $9400                                   ; $6939: $11 $00 $94
	ld   a, $03                                      ; $693c: $3e $03
	ld   hl, $d400                                   ; $693e: $21 $00 $d4
	ld   b, $40                                      ; $6941: $06 $40
	call EnqueueHDMATransfer                                       ; $6943: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6946: $cf
	ld   c, $81                                      ; $6947: $0e $81
	ld   de, $9000                                   ; $6949: $11 $00 $90
	ld   a, $03                                      ; $694c: $3e $03
	ld   hl, $d800                                   ; $694e: $21 $00 $d8
	ld   b, $4c                                      ; $6951: $06 $4c
	call EnqueueHDMATransfer                                       ; $6953: $cd $7c $02
	call Call_010_6aa4                               ; $6956: $cd $a4 $6a
	ret                                              ; $6959: $c9


	ld   b, $00                                      ; $695a: $06 $00
	ld   [hl], d                                     ; $695c: $72
	nop                                              ; $695d: $00
	sbc  $00                                         ; $695e: $de $00
	ld   d, b                                        ; $6960: $50
	ld   d, d                                        ; $6961: $52
	ld   d, h                                        ; $6962: $54
	ld   d, [hl]                                     ; $6963: $56
	ld   e, b                                        ; $6964: $58
	db   $10                                         ; $6965: $10
	ld   e, c                                        ; $6966: $59
	ld   e, e                                        ; $6967: $5b
	ld   e, l                                        ; $6968: $5d
	ld   e, a                                        ; $6969: $5f
	ld   h, c                                        ; $696a: $61
	db   $10                                         ; $696b: $10
	ld   h, e                                        ; $696c: $63
	ld   h, l                                        ; $696d: $65
	ld   h, a                                        ; $696e: $67
	ld   l, c                                        ; $696f: $69
	ld   l, e                                        ; $6970: $6b
	dec  c                                           ; $6971: $0d
	ld   l, l                                        ; $6972: $6d
	ld   l, a                                        ; $6973: $6f
	ld   [hl], d                                     ; $6974: $72
	ld   [hl], h                                     ; $6975: $74
	halt                                             ; $6976: $76
	db   $10                                         ; $6977: $10
	ld   a, b                                        ; $6978: $78
	ld   a, c                                        ; $6979: $79
	ld   a, d                                        ; $697a: $7a
	ld   a, e                                        ; $697b: $7b
	ld   a, h                                        ; $697c: $7c
	db   $10                                         ; $697d: $10
	ld   a, l                                        ; $697e: $7d
	add  b                                           ; $697f: $80
	add  e                                           ; $6980: $83
	add  [hl]                                        ; $6981: $86
	adc  c                                           ; $6982: $89
	dec  c                                           ; $6983: $0d
	adc  h                                           ; $6984: $8c
	adc  l                                           ; $6985: $8d
	adc  [hl]                                        ; $6986: $8e
	adc  a                                           ; $6987: $8f
	sub  b                                           ; $6988: $90
	db   $10                                         ; $6989: $10
	sub  d                                           ; $698a: $92
	db   $10                                         ; $698b: $10
	sub  h                                           ; $698c: $94
	db   $10                                         ; $698d: $10
	sub  [hl]                                        ; $698e: $96
	db   $10                                         ; $698f: $10
	sub  a                                           ; $6990: $97
	sbc  b                                           ; $6991: $98
	sbc  c                                           ; $6992: $99
	sbc  d                                           ; $6993: $9a
	sbc  e                                           ; $6994: $9b
	dec  c                                           ; $6995: $0d
	sbc  l                                           ; $6996: $9d
	db   $10                                         ; $6997: $10
	and  b                                           ; $6998: $a0
	db   $10                                         ; $6999: $10
	and  c                                           ; $699a: $a1
	db   $10                                         ; $699b: $10
	ld   e, d                                        ; $699c: $5a
	ld   e, h                                        ; $699d: $5c
	ld   e, [hl]                                     ; $699e: $5e
	ld   h, b                                        ; $699f: $60
	ld   h, d                                        ; $69a0: $62
	db   $10                                         ; $69a1: $10
	ld   h, h                                        ; $69a2: $64
	ld   h, [hl]                                     ; $69a3: $66
	ld   l, b                                        ; $69a4: $68
	ld   l, d                                        ; $69a5: $6a
	ld   l, h                                        ; $69a6: $6c
	dec  c                                           ; $69a7: $0d
	ld   l, [hl]                                     ; $69a8: $6e
	ld   [hl], b                                     ; $69a9: $70
	ld   [hl], e                                     ; $69aa: $73
	ld   [hl], l                                     ; $69ab: $75
	ld   [hl], a                                     ; $69ac: $77
	db   $10                                         ; $69ad: $10
	ld   a, [hl]                                     ; $69ae: $7e
	add  c                                           ; $69af: $81
	add  h                                           ; $69b0: $84
	add  a                                           ; $69b1: $87
	adc  d                                           ; $69b2: $8a
	db   $10                                         ; $69b3: $10
	ld   a, a                                        ; $69b4: $7f
	add  d                                           ; $69b5: $82
	add  l                                           ; $69b6: $85
	adc  b                                           ; $69b7: $88
	adc  e                                           ; $69b8: $8b
	dec  c                                           ; $69b9: $0d
	ld   c, a                                        ; $69ba: $4f
	ld   d, c                                        ; $69bb: $51
	ld   d, e                                        ; $69bc: $53
	ld   d, l                                        ; $69bd: $55
	ld   d, a                                        ; $69be: $57
	db   $10                                         ; $69bf: $10
	sub  c                                           ; $69c0: $91
	db   $10                                         ; $69c1: $10
	sub  e                                           ; $69c2: $93
	db   $10                                         ; $69c3: $10
	sub  l                                           ; $69c4: $95
	db   $10                                         ; $69c5: $10
	ld   [hl], c                                     ; $69c6: $71
	db   $10                                         ; $69c7: $10
	db   $10                                         ; $69c8: $10
	db   $10                                         ; $69c9: $10
	ei                                               ; $69ca: $fb
	nop                                              ; $69cb: $00
	and  e                                           ; $69cc: $a3
	and  l                                           ; $69cd: $a5
	and  a                                           ; $69ce: $a7
	xor  c                                           ; $69cf: $a9
	xor  e                                           ; $69d0: $ab
	db   $10                                         ; $69d1: $10
	xor  h                                           ; $69d2: $ac
	xor  [hl]                                        ; $69d3: $ae
	or   b                                           ; $69d4: $b0
	or   d                                           ; $69d5: $b2
	or   h                                           ; $69d6: $b4
	db   $10                                         ; $69d7: $10
	or   [hl]                                        ; $69d8: $b6
	cp   b                                           ; $69d9: $b8
	cp   d                                           ; $69da: $ba
	cp   h                                           ; $69db: $bc
	cp   [hl]                                        ; $69dc: $be
	dec  c                                           ; $69dd: $0d
	ret  nz                                          ; $69de: $c0

	jp   nz, $c7c5                                   ; $69df: $c2 $c5 $c7

	ret                                              ; $69e2: $c9


	db   $10                                         ; $69e3: $10
	set  1, h                                        ; $69e4: $cb $cc
	call $cfce                                       ; $69e6: $cd $ce $cf
	db   $10                                         ; $69e9: $10
	ret  nc                                          ; $69ea: $d0

	db   $d3                                         ; $69eb: $d3
	sub  $d9                                         ; $69ec: $d6 $d9
	call c, $df0d                                    ; $69ee: $dc $0d $df
	ldh  [$e2], a                                    ; $69f1: $e0 $e2
	db   $e3                                         ; $69f3: $e3
	db   $e4                                         ; $69f4: $e4
	db   $10                                         ; $69f5: $10
	and  $10                                         ; $69f6: $e6 $10
	add  sp, $10                                     ; $69f8: $e8 $10
	ld   [$eb10], a                                  ; $69fa: $ea $10 $eb
	db   $ec                                         ; $69fd: $ec
	db   $ed                                         ; $69fe: $ed
	xor  $ef                                         ; $69ff: $ee $ef
	dec  c                                           ; $6a01: $0d
	pop  af                                          ; $6a02: $f1
	db   $10                                         ; $6a03: $10
	db   $f4                                         ; $6a04: $f4
	db   $10                                         ; $6a05: $10
	push af                                          ; $6a06: $f5
	db   $10                                         ; $6a07: $10
	xor  l                                           ; $6a08: $ad
	xor  a                                           ; $6a09: $af
	or   c                                           ; $6a0a: $b1
	or   e                                           ; $6a0b: $b3
	or   l                                           ; $6a0c: $b5
	db   $10                                         ; $6a0d: $10
	or   a                                           ; $6a0e: $b7
	cp   c                                           ; $6a0f: $b9
	cp   e                                           ; $6a10: $bb
	cp   l                                           ; $6a11: $bd
	cp   a                                           ; $6a12: $bf
	dec  c                                           ; $6a13: $0d
	pop  bc                                          ; $6a14: $c1
	jp   $c8c6                                       ; $6a15: $c3 $c6 $c8


	jp   z, $d110                                    ; $6a18: $ca $10 $d1

	call nc, $dad7                                   ; $6a1b: $d4 $d7 $da
	db   $dd                                         ; $6a1e: $dd
	db   $10                                         ; $6a1f: $10
	jp   nc, $d8d5                                   ; $6a20: $d2 $d5 $d8

	db   $db                                         ; $6a23: $db
	sbc  $0d                                         ; $6a24: $de $0d
	and  d                                           ; $6a26: $a2
	and  h                                           ; $6a27: $a4
	and  [hl]                                        ; $6a28: $a6
	xor  b                                           ; $6a29: $a8
	xor  d                                           ; $6a2a: $aa
	db   $10                                         ; $6a2b: $10
	push hl                                          ; $6a2c: $e5
	db   $10                                         ; $6a2d: $10
	rst  $20                                         ; $6a2e: $e7
	db   $10                                         ; $6a2f: $10
	jp   hl                                          ; $6a30: $e9


	db   $10                                         ; $6a31: $10
	call nz, $1010                                   ; $6a32: $c4 $10 $10
	db   $10                                         ; $6a35: $10
	ei                                               ; $6a36: $fb
	nop                                              ; $6a37: $00
	db   $10                                         ; $6a38: $10
	dec  de                                          ; $6a39: $1b
	inc  e                                           ; $6a3a: $1c
	dec  e                                           ; $6a3b: $1d
	ld   e, $1f                                      ; $6a3c: $1e $1f
	jr   nz, @+$23                                   ; $6a3e: $20 $21

	ld   [hl+], a                                    ; $6a40: $22
	inc  hl                                          ; $6a41: $23
	inc  h                                           ; $6a42: $24
	dec  h                                           ; $6a43: $25
	ld   h, $27                                      ; $6a44: $26 $27
	jr   z, jr_010_6a71                              ; $6a46: $28 $29

	db   $10                                         ; $6a48: $10
	dec  c                                           ; $6a49: $0d
	db   $10                                         ; $6a4a: $10
	ld   a, [hl+]                                    ; $6a4b: $2a
	dec  hl                                          ; $6a4c: $2b
	inc  l                                           ; $6a4d: $2c
	dec  l                                           ; $6a4e: $2d
	ld   l, $2f                                      ; $6a4f: $2e $2f
	jr   nc, jr_010_6a84                             ; $6a51: $30 $31

	ld   [hl-], a                                    ; $6a53: $32
	inc  sp                                          ; $6a54: $33
	inc  [hl]                                        ; $6a55: $34
	db   $10                                         ; $6a56: $10
	db   $10                                         ; $6a57: $10
	db   $10                                         ; $6a58: $10
	db   $10                                         ; $6a59: $10
	db   $10                                         ; $6a5a: $10
	dec  c                                           ; $6a5b: $0d
	db   $10                                         ; $6a5c: $10
	dec  [hl]                                        ; $6a5d: $35
	ld   [hl], $37                                   ; $6a5e: $36 $37
	jr   c, jr_010_6a9b                              ; $6a60: $38 $39

	ld   a, [hl-]                                    ; $6a62: $3a
	dec  sp                                          ; $6a63: $3b
	inc  a                                           ; $6a64: $3c
	dec  a                                           ; $6a65: $3d
	ld   a, $3f                                      ; $6a66: $3e $3f
	ld   b, b                                        ; $6a68: $40
	ld   b, c                                        ; $6a69: $41
	ld   b, d                                        ; $6a6a: $42
	ld   b, e                                        ; $6a6b: $43
	db   $10                                         ; $6a6c: $10
	dec  c                                           ; $6a6d: $0d
	db   $10                                         ; $6a6e: $10
	ld   b, h                                        ; $6a6f: $44
	ld   b, l                                        ; $6a70: $45

jr_010_6a71:
	ld   b, [hl]                                     ; $6a71: $46
	ld   b, a                                        ; $6a72: $47
	ld   c, b                                        ; $6a73: $48
	ld   c, c                                        ; $6a74: $49
	ld   c, d                                        ; $6a75: $4a
	ld   c, e                                        ; $6a76: $4b
	ld   c, h                                        ; $6a77: $4c
	ld   c, l                                        ; $6a78: $4d
	ld   c, [hl]                                     ; $6a79: $4e
	db   $10                                         ; $6a7a: $10
	db   $10                                         ; $6a7b: $10
	db   $10                                         ; $6a7c: $10
	db   $10                                         ; $6a7d: $10
	db   $10                                         ; $6a7e: $10
	dec  c                                           ; $6a7f: $0d
	db   $10                                         ; $6a80: $10
	ld   de, $1312                                   ; $6a81: $11 $12 $13

jr_010_6a84:
	inc  d                                           ; $6a84: $14
	dec  d                                           ; $6a85: $15
	ld   d, $17                                      ; $6a86: $16 $17
	jr   @+$1b                                       ; $6a88: $18 $19

	ld   a, [de]                                     ; $6a8a: $1a
	db   $10                                         ; $6a8b: $10
	db   $10                                         ; $6a8c: $10
	db   $10                                         ; $6a8d: $10
	db   $10                                         ; $6a8e: $10
	db   $10                                         ; $6a8f: $10
	db   $10                                         ; $6a90: $10
	dec  c                                           ; $6a91: $0d
	db   $10                                         ; $6a92: $10
	db   $10                                         ; $6a93: $10
	db   $10                                         ; $6a94: $10
	db   $10                                         ; $6a95: $10
	db   $10                                         ; $6a96: $10
	db   $10                                         ; $6a97: $10
	db   $10                                         ; $6a98: $10
	db   $10                                         ; $6a99: $10
	db   $10                                         ; $6a9a: $10

jr_010_6a9b:
	db   $10                                         ; $6a9b: $10
	db   $10                                         ; $6a9c: $10
	db   $10                                         ; $6a9d: $10
	db   $10                                         ; $6a9e: $10
	db   $10                                         ; $6a9f: $10
	db   $10                                         ; $6aa0: $10
	db   $10                                         ; $6aa1: $10
	stop                                             ; $6aa2: $10 $00

Call_010_6aa4:
	ld   a, [$c95f]                                  ; $6aa4: $fa $5f $c9
	add  a                                           ; $6aa7: $87
	ld   c, a                                        ; $6aa8: $4f
	ld   b, $00                                      ; $6aa9: $06 $00
	ld   hl, $6ad5                                   ; $6aab: $21 $d5 $6a
	add  hl, bc                                      ; $6aae: $09
	ld   a, [hl+]                                    ; $6aaf: $2a
	ld   h, [hl]                                     ; $6ab0: $66
	ld   l, a                                        ; $6ab1: $6f
	ld   de, $99e2                                   ; $6ab2: $11 $e2 $99
	xor  a                                           ; $6ab5: $af
	ldh  [rVBK], a                                   ; $6ab6: $e0 $4f
	ld   bc, $0008                                   ; $6ab8: $01 $08 $00
	ld   a, $00                                      ; $6abb: $3e $00
	call $0a23                                       ; $6abd: $cd $23 $0a
	push hl                                          ; $6ac0: $e5
	ld   hl, $0018                                   ; $6ac1: $21 $18 $00
	add  hl, de                                      ; $6ac4: $19
	ld   e, l                                        ; $6ac5: $5d
	ld   d, h                                        ; $6ac6: $54
	pop  hl                                          ; $6ac7: $e1
	ld   bc, $0018                                   ; $6ac8: $01 $18 $00
	add  hl, bc                                      ; $6acb: $09
	ld   bc, $0008                                   ; $6acc: $01 $08 $00
	ld   a, $00                                      ; $6acf: $3e $00
	call $0a23                                       ; $6ad1: $cd $23 $0a
	ret                                              ; $6ad4: $c9


	ld   b, b                                        ; $6ad5: $40
	sbc  d                                           ; $6ad6: $9a
	add  b                                           ; $6ad7: $80
	sbc  d                                           ; $6ad8: $9a
	ld   c, b                                        ; $6ad9: $48
	sbc  d                                           ; $6ada: $9a

Call_010_6adb:
	xor  a                                           ; $6adb: $af
	ld   [$c960], a                                  ; $6adc: $ea $60 $c9
	ld   a, [$c950]                                  ; $6adf: $fa $50 $c9
	cp   $06                                         ; $6ae2: $fe $06
	call z, Call_010_6c12                            ; $6ae4: $cc $12 $6c
	ld   a, [$c95f]                                  ; $6ae7: $fa $5f $c9
	cp   $02                                         ; $6aea: $fe $02
	jr   z, jr_010_6afb                              ; $6aec: $28 $0d

	ld   a, [$c950]                                  ; $6aee: $fa $50 $c9
	cp   $06                                         ; $6af1: $fe $06
	call nz, Call_010_6b07                           ; $6af3: $c4 $07 $6b
	call Call_010_6b50                               ; $6af6: $cd $50 $6b
	jr   jr_010_6b06                                 ; $6af9: $18 $0b

jr_010_6afb:
	ld   a, [$c950]                                  ; $6afb: $fa $50 $c9
	cp   $06                                         ; $6afe: $fe $06
	call nz, Call_010_6b87                           ; $6b00: $c4 $87 $6b
	call Call_010_6bc7                               ; $6b03: $cd $c7 $6b

jr_010_6b06:
	ret                                              ; $6b06: $c9


Call_010_6b07:
	ld   hl, $c94f                                   ; $6b07: $21 $4f $c9
	ld   a, [wInGameStickyButtonsPressed]                                  ; $6b0a: $fa $11 $c2
	bit  4, a                                        ; $6b0d: $cb $67
	jr   z, jr_010_6b22                              ; $6b0f: $28 $11

	ld   a, [hl]                                     ; $6b11: $7e
	cp   $10                                         ; $6b12: $fe $10
	jr   z, jr_010_6b36                              ; $6b14: $28 $20

	inc  a                                           ; $6b16: $3c
	cp   $05                                         ; $6b17: $fe $05
	jr   z, jr_010_6b1f                              ; $6b19: $28 $04

	cp   $0b                                         ; $6b1b: $fe $0b
	jr   nz, jr_010_6b46                             ; $6b1d: $20 $27

jr_010_6b1f:
	inc  a                                           ; $6b1f: $3c
	jr   jr_010_6b46                                 ; $6b20: $18 $24

jr_010_6b22:
	bit  5, a                                        ; $6b22: $cb $6f
	jr   z, jr_010_6b4f                              ; $6b24: $28 $29

	ld   a, [hl]                                     ; $6b26: $7e
	or   a                                           ; $6b27: $b7
	jr   z, jr_010_6b36                              ; $6b28: $28 $0c

	dec  a                                           ; $6b2a: $3d
	cp   $05                                         ; $6b2b: $fe $05
	jr   z, jr_010_6b33                              ; $6b2d: $28 $04

	cp   $0b                                         ; $6b2f: $fe $0b
	jr   nz, jr_010_6b46                             ; $6b31: $20 $13

jr_010_6b33:
	dec  a                                           ; $6b33: $3d
	jr   jr_010_6b46                                 ; $6b34: $18 $10

jr_010_6b36:
	ld   a, [wInGameButtonsPressed]                                  ; $6b36: $fa $10 $c2
	bit  4, a                                        ; $6b39: $cb $67
	jr   z, jr_010_6b40                              ; $6b3b: $28 $03

	xor  a                                           ; $6b3d: $af
	jr   jr_010_6b46                                 ; $6b3e: $18 $06

jr_010_6b40:
	bit  5, a                                        ; $6b40: $cb $6f
	jr   z, jr_010_6b4f                              ; $6b42: $28 $0b

	ld   a, $10                                      ; $6b44: $3e $10

jr_010_6b46:
	ld   [hl], a                                     ; $6b46: $77
	call Call_010_6c85                               ; $6b47: $cd $85 $6c
	ld   a, $20                                      ; $6b4a: $3e $20
	call Func_1adf                                       ; $6b4c: $cd $df $1a

jr_010_6b4f:
	ret                                              ; $6b4f: $c9


Call_010_6b50:
	ld   hl, $c950                                   ; $6b50: $21 $50 $c9
	ld   a, [wInGameStickyButtonsPressed]                                  ; $6b53: $fa $11 $c2
	bit  6, a                                        ; $6b56: $cb $77
	jr   z, jr_010_6b61                              ; $6b58: $28 $07

	ld   a, [hl]                                     ; $6b5a: $7e
	or   a                                           ; $6b5b: $b7
	jr   z, jr_010_6b6d                              ; $6b5c: $28 $0f

	dec  a                                           ; $6b5e: $3d
	jr   jr_010_6b7d                                 ; $6b5f: $18 $1c

jr_010_6b61:
	bit  7, a                                        ; $6b61: $cb $7f
	jr   z, jr_010_6b86                              ; $6b63: $28 $21

	ld   a, [hl]                                     ; $6b65: $7e
	cp   $06                                         ; $6b66: $fe $06
	jr   z, jr_010_6b6d                              ; $6b68: $28 $03

	inc  a                                           ; $6b6a: $3c
	jr   jr_010_6b7d                                 ; $6b6b: $18 $10

jr_010_6b6d:
	ld   a, [wInGameButtonsPressed]                                  ; $6b6d: $fa $10 $c2
	bit  6, a                                        ; $6b70: $cb $77
	jr   z, jr_010_6b78                              ; $6b72: $28 $04

	ld   a, $06                                      ; $6b74: $3e $06
	jr   jr_010_6b7d                                 ; $6b76: $18 $05

jr_010_6b78:
	bit  7, a                                        ; $6b78: $cb $7f
	jr   z, jr_010_6b86                              ; $6b7a: $28 $0a

	xor  a                                           ; $6b7c: $af

jr_010_6b7d:
	ld   [hl], a                                     ; $6b7d: $77
	call Call_010_6c85                               ; $6b7e: $cd $85 $6c
	ld   a, $20                                      ; $6b81: $3e $20
	call Func_1adf                                       ; $6b83: $cd $df $1a

jr_010_6b86:
	ret                                              ; $6b86: $c9


Call_010_6b87:
	ld   hl, $c94f                                   ; $6b87: $21 $4f $c9
	ld   a, [wInGameStickyButtonsPressed]                                  ; $6b8a: $fa $11 $c2
	bit  4, a                                        ; $6b8d: $cb $67
	jr   z, jr_010_6b9d                              ; $6b8f: $28 $0c

	ld   a, [hl]                                     ; $6b91: $7e
	cp   $10                                         ; $6b92: $fe $10
	jr   z, jr_010_6bac                              ; $6b94: $28 $16

	cp   $0f                                         ; $6b96: $fe $0f
	jr   z, jr_010_6bac                              ; $6b98: $28 $12

	inc  a                                           ; $6b9a: $3c
	jr   jr_010_6bbd                                 ; $6b9b: $18 $20

jr_010_6b9d:
	bit  5, a                                        ; $6b9d: $cb $6f
	jr   z, jr_010_6bc6                              ; $6b9f: $28 $25

	ld   a, [hl]                                     ; $6ba1: $7e
	or   a                                           ; $6ba2: $b7
	jr   z, jr_010_6bac                              ; $6ba3: $28 $07

	cp   $01                                         ; $6ba5: $fe $01
	jr   z, jr_010_6bac                              ; $6ba7: $28 $03

	dec  a                                           ; $6ba9: $3d
	jr   jr_010_6bbd                                 ; $6baa: $18 $11

jr_010_6bac:
	ld   a, [wInGameButtonsPressed]                                  ; $6bac: $fa $10 $c2
	bit  4, a                                        ; $6baf: $cb $67
	jr   z, jr_010_6bb7                              ; $6bb1: $28 $04

	ld   a, $01                                      ; $6bb3: $3e $01
	jr   jr_010_6bbd                                 ; $6bb5: $18 $06

jr_010_6bb7:
	bit  5, a                                        ; $6bb7: $cb $6f
	jr   z, jr_010_6bc6                              ; $6bb9: $28 $0b

	ld   a, $0f                                      ; $6bbb: $3e $0f

jr_010_6bbd:
	ld   [hl], a                                     ; $6bbd: $77
	call Call_010_6c85                               ; $6bbe: $cd $85 $6c
	ld   a, $20                                      ; $6bc1: $3e $20
	call Func_1adf                                       ; $6bc3: $cd $df $1a

jr_010_6bc6:
	ret                                              ; $6bc6: $c9


Call_010_6bc7:
	ld   hl, $c950                                   ; $6bc7: $21 $50 $c9
	ld   a, [wInGameStickyButtonsPressed]                                  ; $6bca: $fa $11 $c2
	bit  6, a                                        ; $6bcd: $cb $77
	jr   z, jr_010_6bdd                              ; $6bcf: $28 $0c

	ld   a, [hl]                                     ; $6bd1: $7e
	or   a                                           ; $6bd2: $b7
	jr   z, jr_010_6bee                              ; $6bd3: $28 $19

	dec  a                                           ; $6bd5: $3d
	cp   $05                                         ; $6bd6: $fe $05
	jr   nz, jr_010_6bfe                             ; $6bd8: $20 $24

	dec  a                                           ; $6bda: $3d
	jr   jr_010_6bfe                                 ; $6bdb: $18 $21

jr_010_6bdd:
	bit  7, a                                        ; $6bdd: $cb $7f
	jr   z, jr_010_6c11                              ; $6bdf: $28 $30

	ld   a, [hl]                                     ; $6be1: $7e
	cp   $06                                         ; $6be2: $fe $06
	jr   z, jr_010_6bee                              ; $6be4: $28 $08

	inc  a                                           ; $6be6: $3c
	cp   $05                                         ; $6be7: $fe $05
	jr   nz, jr_010_6bfe                             ; $6be9: $20 $13

	inc  a                                           ; $6beb: $3c
	jr   jr_010_6bfe                                 ; $6bec: $18 $10

jr_010_6bee:
	ld   a, [wInGameButtonsPressed]                                  ; $6bee: $fa $10 $c2
	bit  6, a                                        ; $6bf1: $cb $77
	jr   z, jr_010_6bf9                              ; $6bf3: $28 $04

	ld   a, $06                                      ; $6bf5: $3e $06
	jr   jr_010_6bfe                                 ; $6bf7: $18 $05

jr_010_6bf9:
	bit  7, a                                        ; $6bf9: $cb $7f
	jr   z, jr_010_6c11                              ; $6bfb: $28 $14

	xor  a                                           ; $6bfd: $af

jr_010_6bfe:
	ld   [hl], a                                     ; $6bfe: $77
	ld   a, [$c94f]                                  ; $6bff: $fa $4f $c9
	or   a                                           ; $6c02: $b7
	jr   nz, jr_010_6c09                             ; $6c03: $20 $04

	inc  a                                           ; $6c05: $3c
	ld   [$c94f], a                                  ; $6c06: $ea $4f $c9

jr_010_6c09:
	call Call_010_6c85                               ; $6c09: $cd $85 $6c
	ld   a, $20                                      ; $6c0c: $3e $20
	call Func_1adf                                       ; $6c0e: $cd $df $1a

jr_010_6c11:
	ret                                              ; $6c11: $c9


Call_010_6c12:
	ld   a, [wInGameButtonsPressed]                                  ; $6c12: $fa $10 $c2
	bit  5, a                                        ; $6c15: $cb $6f
	jr   z, jr_010_6c24                              ; $6c17: $28 $0b

	call Call_010_6c68                               ; $6c19: $cd $68 $6c
	or   a                                           ; $6c1c: $b7
	jr   z, jr_010_6c34                              ; $6c1d: $28 $15

	call Call_010_6c50                               ; $6c1f: $cd $50 $6c
	jr   jr_010_6c44                                 ; $6c22: $18 $20

jr_010_6c24:
	bit  4, a                                        ; $6c24: $cb $67
	jr   z, jr_010_6c4f                              ; $6c26: $28 $27

	call Call_010_6c68                               ; $6c28: $cd $68 $6c
	cp   $0f                                         ; $6c2b: $fe $0f
	jr   z, jr_010_6c34                              ; $6c2d: $28 $05

	call Call_010_6c5c                               ; $6c2f: $cd $5c $6c
	jr   jr_010_6c44                                 ; $6c32: $18 $10

jr_010_6c34:
	ld   a, [wInGameButtonsPressed]                                  ; $6c34: $fa $10 $c2
	bit  4, a                                        ; $6c37: $cb $67
	jr   z, jr_010_6c3e                              ; $6c39: $28 $03

	xor  a                                           ; $6c3b: $af
	jr   jr_010_6c44                                 ; $6c3c: $18 $06

jr_010_6c3e:
	bit  5, a                                        ; $6c3e: $cb $6f
	jr   z, jr_010_6c4f                              ; $6c40: $28 $0d

	ld   a, $0f                                      ; $6c42: $3e $0f

jr_010_6c44:
	ld   [$c94f], a                                  ; $6c44: $ea $4f $c9
	call Call_010_6c85                               ; $6c47: $cd $85 $6c
	ld   a, $20                                      ; $6c4a: $3e $20
	call Func_1adf                                       ; $6c4c: $cd $df $1a

jr_010_6c4f:
	ret                                              ; $6c4f: $c9


Call_010_6c50:
	ld   hl, $6c74                                   ; $6c50: $21 $74 $6c

jr_010_6c53:
	cp   [hl]                                        ; $6c53: $be
	jr   z, jr_010_6c59                              ; $6c54: $28 $03

	inc  hl                                          ; $6c56: $23
	jr   jr_010_6c53                                 ; $6c57: $18 $fa

jr_010_6c59:
	dec  hl                                          ; $6c59: $2b
	ld   a, [hl]                                     ; $6c5a: $7e
	ret                                              ; $6c5b: $c9


Call_010_6c5c:
	ld   hl, $6c84                                   ; $6c5c: $21 $84 $6c

jr_010_6c5f:
	cp   [hl]                                        ; $6c5f: $be
	jr   z, jr_010_6c65                              ; $6c60: $28 $03

	dec  hl                                          ; $6c62: $2b
	jr   jr_010_6c5f                                 ; $6c63: $18 $fa

jr_010_6c65:
	inc  hl                                          ; $6c65: $23
	ld   a, [hl]                                     ; $6c66: $7e
	ret                                              ; $6c67: $c9


Call_010_6c68:
	ld   a, [$c94f]                                  ; $6c68: $fa $4f $c9
	ld   c, a                                        ; $6c6b: $4f
	ld   b, $00                                      ; $6c6c: $06 $00
	ld   hl, $6c74                                   ; $6c6e: $21 $74 $6c
	add  hl, bc                                      ; $6c71: $09
	ld   a, [hl]                                     ; $6c72: $7e
	ret                                              ; $6c73: $c9


	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	inc  b                                           ; $6c77: $04
	inc  b                                           ; $6c78: $04
	inc  b                                           ; $6c79: $04
	inc  b                                           ; $6c7a: $04
	ld   [$0808], sp                                 ; $6c7b: $08 $08 $08
	ld   [$0f08], sp                                 ; $6c7e: $08 $08 $0f
	rrca                                             ; $6c81: $0f
	rrca                                             ; $6c82: $0f
	rrca                                             ; $6c83: $0f
	rrca                                             ; $6c84: $0f

Call_010_6c85:
	ld   a, $01                                      ; $6c85: $3e $01
	ld   [$c960], a                                  ; $6c87: $ea $60 $c9
	ret                                              ; $6c8a: $c9


Call_010_6c8b:
	ld   a, [$c960]                                  ; $6c8b: $fa $60 $c9
	or   a                                           ; $6c8e: $b7
	ret  z                                           ; $6c8f: $c8

	ld   a, [$c94d]                                  ; $6c90: $fa $4d $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6c93: $cd $76 $30
	call Call_010_6cdb                               ; $6c96: $cd $db $6c
	ld   e, $2d                                      ; $6c99: $1e $2d
	ld   a, [$c950]                                  ; $6c9b: $fa $50 $c9
	cp   $06                                         ; $6c9e: $fe $06
	jr   nz, jr_010_6ca4                             ; $6ca0: $20 $02

	ld   e, $2e                                      ; $6ca2: $1e $2e

jr_010_6ca4:
	ld   a, e                                        ; $6ca4: $7b
	ld   de, $7180                                   ; $6ca5: $11 $80 $71
	push af                                          ; $6ca8: $f5
	ld   a, $03                                      ; $6ca9: $3e $03
	ld   [wFarCallAddr], a                                  ; $6cab: $ea $98 $c2
	ld   a, $41                                      ; $6cae: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6cb0: $ea $99 $c2
	ld   a, $01                                      ; $6cb3: $3e $01
	ld   [wFarCallBank], a                                  ; $6cb5: $ea $9a $c2
	pop  af                                          ; $6cb8: $f1
	call FarCall                                       ; $6cb9: $cd $62 $09
	ret                                              ; $6cbc: $c9


Call_010_6cbd:
	ld   a, [$c94e]                                  ; $6cbd: $fa $4e $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6cc0: $cd $76 $30
	call Call_010_6cfb                               ; $6cc3: $cd $fb $6c
	push af                                          ; $6cc6: $f5
	ld   a, $2f                                      ; $6cc7: $3e $2f
	ld   [wFarCallAddr], a                                  ; $6cc9: $ea $98 $c2
	ld   a, $41                                      ; $6ccc: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6cce: $ea $99 $c2
	ld   a, $01                                      ; $6cd1: $3e $01
	ld   [wFarCallBank], a                                  ; $6cd3: $ea $9a $c2
	pop  af                                          ; $6cd6: $f1
	call FarCall                                       ; $6cd7: $cd $62 $09
	ret                                              ; $6cda: $c9


Call_010_6cdb:
	push hl                                          ; $6cdb: $e5
	ld   a, [$c950]                                  ; $6cdc: $fa $50 $c9
	cp   $06                                         ; $6cdf: $fe $06
	jr   nz, jr_010_6ce8                             ; $6ce1: $20 $05

	call Call_010_6c68                               ; $6ce3: $cd $68 $6c
	jr   jr_010_6ceb                                 ; $6ce6: $18 $03

jr_010_6ce8:
	ld   a, [$c94f]                                  ; $6ce8: $fa $4f $c9

jr_010_6ceb:
	add  a                                           ; $6ceb: $87
	add  a                                           ; $6cec: $87
	add  a                                           ; $6ced: $87
	add  $0c                                         ; $6cee: $c6 $0c
	ld   b, a                                        ; $6cf0: $47
	ld   a, [$c950]                                  ; $6cf1: $fa $50 $c9
	swap a                                           ; $6cf4: $cb $37
	add  $18                                         ; $6cf6: $c6 $18
	ld   c, a                                        ; $6cf8: $4f
	pop  hl                                          ; $6cf9: $e1
	ret                                              ; $6cfa: $c9


Call_010_6cfb:
	push hl                                          ; $6cfb: $e5
	ld   a, [$c94b]                                  ; $6cfc: $fa $4b $c9
	ld   c, a                                        ; $6cff: $4f
	ld   b, $00                                      ; $6d00: $06 $00
	ld   hl, $6d17                                   ; $6d02: $21 $17 $6d
	add  hl, bc                                      ; $6d05: $09
	ld   b, [hl]                                     ; $6d06: $46
	ld   a, [$c951]                                  ; $6d07: $fa $51 $c9
	cp   c                                           ; $6d0a: $b9
	jr   nz, jr_010_6d0e                             ; $6d0b: $20 $01

	dec  a                                           ; $6d0d: $3d

jr_010_6d0e:
	add  a                                           ; $6d0e: $87
	add  a                                           ; $6d0f: $87
	add  a                                           ; $6d10: $87
	add  b                                           ; $6d11: $80
	ld   b, a                                        ; $6d12: $47
	ld   c, $00                                      ; $6d13: $0e $00
	pop  hl                                          ; $6d15: $e1
	ret                                              ; $6d16: $c9


	ld   a, h                                        ; $6d17: $7c
	ld   [hl], h                                     ; $6d18: $74
	ld   l, h                                        ; $6d19: $6c
	ld   h, h                                        ; $6d1a: $64
	ld   e, h                                        ; $6d1b: $5c
	ld   d, h                                        ; $6d1c: $54
	ld   c, h                                        ; $6d1d: $4c
	ld   b, h                                        ; $6d1e: $44
	ld   b, h                                        ; $6d1f: $44
	inc  a                                           ; $6d20: $3c
	inc  a                                           ; $6d21: $3c

Call_010_6d22:
	ld   a, [$c960]                                  ; $6d22: $fa $60 $c9
	or   a                                           ; $6d25: $b7
	ret  nz                                          ; $6d26: $c0

	ld   a, [wInGameButtonsPressed]                                  ; $6d27: $fa $10 $c2
	bit  0, a                                        ; $6d2a: $cb $47
	jr   z, jr_010_6d3f                              ; $6d2c: $28 $11

	ld   a, [$c950]                                  ; $6d2e: $fa $50 $c9
	cp   $06                                         ; $6d31: $fe $06
	jr   z, jr_010_6d3a                              ; $6d33: $28 $05

	call Call_010_6de6                               ; $6d35: $cd $e6 $6d
	jr   jr_010_6d69                                 ; $6d38: $18 $2f

jr_010_6d3a:
	call Call_010_6e31                               ; $6d3a: $cd $31 $6e
	jr   jr_010_6d69                                 ; $6d3d: $18 $2a

jr_010_6d3f:
	bit  1, a                                        ; $6d3f: $cb $4f
	jr   z, jr_010_6d48                              ; $6d41: $28 $05

	call Call_010_6e7f                               ; $6d43: $cd $7f $6e
	jr   jr_010_6d69                                 ; $6d46: $18 $21

jr_010_6d48:
	bit  2, a                                        ; $6d48: $cb $57
	jr   z, jr_010_6d62                              ; $6d4a: $28 $16

	ld   a, [$c95f]                                  ; $6d4c: $fa $5f $c9
	cp   $02                                         ; $6d4f: $fe $02
	jr   z, jr_010_6d60                              ; $6d51: $28 $0d

	xor  $01                                         ; $6d53: $ee $01
	ld   [$c95f], a                                  ; $6d55: $ea $5f $c9
	call Call_010_68f6                               ; $6d58: $cd $f6 $68
	ld   a, $21                                      ; $6d5b: $3e $21
	call Func_1adf                                       ; $6d5d: $cd $df $1a

jr_010_6d60:
	jr   jr_010_6d69                                 ; $6d60: $18 $07

jr_010_6d62:
	bit  3, a                                        ; $6d62: $cb $5f
	jr   z, jr_010_6d69                              ; $6d64: $28 $03

	call Call_010_6d6a                               ; $6d66: $cd $6a $6d

jr_010_6d69:
	ret                                              ; $6d69: $c9


Call_010_6d6a:
	ld   a, $06                                      ; $6d6a: $3e $06
	ld   [$c950], a                                  ; $6d6c: $ea $50 $c9
	ld   a, $0f                                      ; $6d6f: $3e $0f
	ld   [$c94f], a                                  ; $6d71: $ea $4f $c9
	call Call_010_6c85                               ; $6d74: $cd $85 $6c
	ld   a, $21                                      ; $6d77: $3e $21
	call Func_1adf                                       ; $6d79: $cd $df $1a
	ret                                              ; $6d7c: $c9


Call_010_6d7d:
	ld   a, [$c95f]                                  ; $6d7d: $fa $5f $c9
	add  a                                           ; $6d80: $87
	ld   h, $00                                      ; $6d81: $26 $00
	ld   l, a                                        ; $6d83: $6f
	ld   bc, $695a                                   ; $6d84: $01 $5a $69
	add  hl, bc                                      ; $6d87: $09
	ld   a, [hl+]                                    ; $6d88: $2a
	ld   h, [hl]                                     ; $6d89: $66
	ld   l, a                                        ; $6d8a: $6f
	ld   bc, $695a                                   ; $6d8b: $01 $5a $69
	add  hl, bc                                      ; $6d8e: $09
	ret                                              ; $6d8f: $c9


Call_010_6d90:
	call Call_010_6d7d                               ; $6d90: $cd $7d $6d
	ld   bc, $0005                                   ; $6d93: $01 $05 $00
	add  hl, bc                                      ; $6d96: $09
	ld   a, [hl]                                     ; $6d97: $7e
	ld   [$c95e], a                                  ; $6d98: $ea $5e $c9
	ret                                              ; $6d9b: $c9


Call_010_6d9c:
	ld   hl, $c952                                   ; $6d9c: $21 $52 $c9
	ld   c, $0a                                      ; $6d9f: $0e $0a
	ld   a, [$c95e]                                  ; $6da1: $fa $5e $c9

jr_010_6da4:
	ld   [hl+], a                                    ; $6da4: $22
	dec  c                                           ; $6da5: $0d
	jr   nz, jr_010_6da4                             ; $6da6: $20 $fc

	xor  a                                           ; $6da8: $af
	ld   [hl], a                                     ; $6da9: $77
	ld   [$c951], a                                  ; $6daa: $ea $51 $c9
	ld   a, [$c94c]                                  ; $6dad: $fa $4c $c9
	bit  2, a                                        ; $6db0: $cb $57
	jr   z, jr_010_6de5                              ; $6db2: $28 $31

	ld   a, [wWramBank]                                  ; $6db4: $fa $93 $c2
	push af                                          ; $6db7: $f5
	ld   a, [$c94a]                                  ; $6db8: $fa $4a $c9
	ld   [wWramBank], a                                  ; $6dbb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6dbe: $e0 $70
	ld   hl, $c948                                   ; $6dc0: $21 $48 $c9
	ld   a, [hl+]                                    ; $6dc3: $2a
	ld   h, [hl]                                     ; $6dc4: $66
	ld   l, a                                        ; $6dc5: $6f
	ld   de, $c952                                   ; $6dc6: $11 $52 $c9
	ld   a, [$c94b]                                  ; $6dc9: $fa $4b $c9
	ld   c, a                                        ; $6dcc: $4f
	ld   b, $00                                      ; $6dcd: $06 $00

jr_010_6dcf:
	ld   a, [hl+]                                    ; $6dcf: $2a
	or   a                                           ; $6dd0: $b7
	jr   z, jr_010_6dd9                              ; $6dd1: $28 $06

	ld   [de], a                                     ; $6dd3: $12
	inc  de                                          ; $6dd4: $13
	inc  b                                           ; $6dd5: $04
	dec  c                                           ; $6dd6: $0d
	jr   nz, jr_010_6dcf                             ; $6dd7: $20 $f6

jr_010_6dd9:
	ld   [hl], $00                                   ; $6dd9: $36 $00
	ld   a, b                                        ; $6ddb: $78
	ld   [$c951], a                                  ; $6ddc: $ea $51 $c9
	pop  af                                          ; $6ddf: $f1
	ld   [wWramBank], a                                  ; $6de0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6de3: $e0 $70

jr_010_6de5:
	ret                                              ; $6de5: $c9


Call_010_6de6:
	ld   a, [$c950]                                  ; $6de6: $fa $50 $c9
	ld   l, a                                        ; $6de9: $6f
	ld   h, $12                                      ; $6dea: $26 $12
	call AequHtimesL                                       ; $6dec: $cd $ac $0b
	ld   a, [$c94f]                                  ; $6def: $fa $4f $c9
	add  l                                           ; $6df2: $85
	ld   l, a                                        ; $6df3: $6f
	ld   h, $00                                      ; $6df4: $26 $00
	push hl                                          ; $6df6: $e5
	call Call_010_6d7d                               ; $6df7: $cd $7d $6d
	pop  bc                                          ; $6dfa: $c1
	add  hl, bc                                      ; $6dfb: $09
	ld   a, [$c94c]                                  ; $6dfc: $fa $4c $c9
	bit  1, a                                        ; $6dff: $cb $4f
	jr   nz, jr_010_6e09                             ; $6e01: $20 $06

	ld   a, [$c95e]                                  ; $6e03: $fa $5e $c9
	cp   [hl]                                        ; $6e06: $be
	jr   z, jr_010_6e30                              ; $6e07: $28 $27

jr_010_6e09:
	ld   e, [hl]                                     ; $6e09: $5e
	ld   hl, $c951                                   ; $6e0a: $21 $51 $c9
	ld   a, [$c94b]                                  ; $6e0d: $fa $4b $c9
	cp   [hl]                                        ; $6e10: $be
	jr   nz, jr_010_6e14                             ; $6e11: $20 $01

	dec  [hl]                                        ; $6e13: $35

jr_010_6e14:
	ld   a, [hl]                                     ; $6e14: $7e
	inc  [hl]                                        ; $6e15: $34
	ld   c, a                                        ; $6e16: $4f
	ld   b, $00                                      ; $6e17: $06 $00
	ld   hl, $c952                                   ; $6e19: $21 $52 $c9
	add  hl, bc                                      ; $6e1c: $09
	ld   [hl], e                                     ; $6e1d: $73
	call Call_010_6ebb                               ; $6e1e: $cd $bb $6e
	ld   hl, $c951                                   ; $6e21: $21 $51 $c9
	ld   a, [$c94b]                                  ; $6e24: $fa $4b $c9
	cp   [hl]                                        ; $6e27: $be
	call z, Call_010_6d6a                            ; $6e28: $cc $6a $6d
	ld   a, $21                                      ; $6e2b: $3e $21
	call Func_1adf                                       ; $6e2d: $cd $df $1a

jr_010_6e30:
	ret                                              ; $6e30: $c9


Call_010_6e31:
	call Call_010_6c68                               ; $6e31: $cd $68 $6c
	cp   $0f                                         ; $6e34: $fe $0f
	jr   nz, jr_010_6e4c                             ; $6e36: $20 $14

	ld   a, [$c951]                                  ; $6e38: $fa $51 $c9
	or   a                                           ; $6e3b: $b7
	jr   z, jr_010_6e7e                              ; $6e3c: $28 $40

	call Call_010_6efe                               ; $6e3e: $cd $fe $6e
	ld   hl, wGameSubstate                                   ; $6e41: $21 $a1 $c2
	inc  [hl]                                        ; $6e44: $34
	ld   a, $21                                      ; $6e45: $3e $21
	call Func_1adf                                       ; $6e47: $cd $df $1a
	jr   jr_010_6e7e                                 ; $6e4a: $18 $32

jr_010_6e4c:
	cp   $08                                         ; $6e4c: $fe $08
	jr   nz, jr_010_6e55                             ; $6e4e: $20 $05

	call Call_010_6e7f                               ; $6e50: $cd $7f $6e
	jr   jr_010_6e7e                                 ; $6e53: $18 $29

jr_010_6e55:
	cp   $04                                         ; $6e55: $fe $04
	jr   nz, jr_010_6e62                             ; $6e57: $20 $09

	ld   a, [$c95f]                                  ; $6e59: $fa $5f $c9
	cp   $02                                         ; $6e5c: $fe $02
	jr   nz, jr_010_6e71                             ; $6e5e: $20 $11

	jr   jr_010_6e69                                 ; $6e60: $18 $07

jr_010_6e62:
	ld   a, [$c95f]                                  ; $6e62: $fa $5f $c9
	cp   $00                                         ; $6e65: $fe $00
	jr   nz, jr_010_6e6d                             ; $6e67: $20 $04

jr_010_6e69:
	ld   a, $01                                      ; $6e69: $3e $01
	jr   jr_010_6e73                                 ; $6e6b: $18 $06

jr_010_6e6d:
	ld   a, $00                                      ; $6e6d: $3e $00
	jr   jr_010_6e73                                 ; $6e6f: $18 $02

jr_010_6e71:
	ld   a, $02                                      ; $6e71: $3e $02

jr_010_6e73:
	ld   [$c95f], a                                  ; $6e73: $ea $5f $c9
	call Call_010_68f6                               ; $6e76: $cd $f6 $68
	ld   a, $21                                      ; $6e79: $3e $21
	call Func_1adf                                       ; $6e7b: $cd $df $1a

jr_010_6e7e:
	ret                                              ; $6e7e: $c9


Call_010_6e7f:
	ld   a, $22                                      ; $6e7f: $3e $22
	call Func_1adf                                       ; $6e81: $cd $df $1a
	ld   hl, $c951                                   ; $6e84: $21 $51 $c9
	ld   a, [hl]                                     ; $6e87: $7e
	or   a                                           ; $6e88: $b7
	jr   nz, jr_010_6e98                             ; $6e89: $20 $0d

	ld   a, [$c94c]                                  ; $6e8b: $fa $4c $c9
	bit  0, a                                        ; $6e8e: $cb $47
	jr   z, jr_010_6ea8                              ; $6e90: $28 $16

	ld   hl, wGameSubstate                                   ; $6e92: $21 $a1 $c2
	inc  [hl]                                        ; $6e95: $34
	jr   jr_010_6ea8                                 ; $6e96: $18 $10

jr_010_6e98:
	dec  [hl]                                        ; $6e98: $35
	ld   c, a                                        ; $6e99: $4f
	ld   b, $00                                      ; $6e9a: $06 $00
	ld   hl, $c952                                   ; $6e9c: $21 $52 $c9
	add  hl, bc                                      ; $6e9f: $09
	ld   a, [$c95e]                                  ; $6ea0: $fa $5e $c9
	ld   [hl-], a                                    ; $6ea3: $32
	ld   [hl], a                                     ; $6ea4: $77
	call Call_010_6ebb                               ; $6ea5: $cd $bb $6e

jr_010_6ea8:
	ret                                              ; $6ea8: $c9


	ld   a, [$c951]                                  ; $6ea9: $fa $51 $c9
	or   a                                           ; $6eac: $b7
	jr   nz, jr_010_6eba                             ; $6ead: $20 $0b

	ld   a, [$c94c]                                  ; $6eaf: $fa $4c $c9
	bit  0, a                                        ; $6eb2: $cb $47
	jr   z, jr_010_6eba                              ; $6eb4: $28 $04

	ld   hl, wGameSubstate                                   ; $6eb6: $21 $a1 $c2
	inc  [hl]                                        ; $6eb9: $34

jr_010_6eba:
	ret                                              ; $6eba: $c9


Call_010_6ebb:
	ld   a, [wWramBank]                                  ; $6ebb: $fa $93 $c2
	push af                                          ; $6ebe: $f5
	ld   a, $03                                      ; $6ebf: $3e $03
	ld   [wWramBank], a                                  ; $6ec1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ec4: $e0 $70
	call InitWideTextBoxDimensions                                       ; $6ec6: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $6ec9: $cd $09 $14
	ld   b, $0b                                      ; $6ecc: $06 $0b
	ld   c, $01                                      ; $6ece: $0e $01
	call SetKanjiTextBoxDimensions                                       ; $6ed0: $cd $24 $14
	ld   bc, $0000                                   ; $6ed3: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6ed6: $cd $34 $14
	ld   hl, $dd00                                   ; $6ed9: $21 $00 $dd
	ld   a, $00                                      ; $6edc: $3e $00
	ld   de, $c952                                   ; $6ede: $11 $52 $c9
	call LoadInstantText                                       ; $6ee1: $cd $06 $13
	pop  af                                          ; $6ee4: $f1
	ld   [wWramBank], a                                  ; $6ee5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ee8: $e0 $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eea: $cf
	ld   a, [$c94b]                                  ; $6eeb: $fa $4b $c9
	add  a                                           ; $6eee: $87
	ld   b, a                                        ; $6eef: $47
	ld   a, $03                                      ; $6ef0: $3e $03
	ld   hl, $dd00                                   ; $6ef2: $21 $00 $dd
	ld   c, $81                                      ; $6ef5: $0e $81
	ld   de, $8ba0                                   ; $6ef7: $11 $a0 $8b
	call EnqueueHDMATransfer                                       ; $6efa: $cd $7c $02
	ret                                              ; $6efd: $c9


Call_010_6efe:
	ld   c, a                                        ; $6efe: $4f
	ld   b, $00                                      ; $6eff: $06 $00
	ld   hl, $c952                                   ; $6f01: $21 $52 $c9
	add  hl, bc                                      ; $6f04: $09
	xor  a                                           ; $6f05: $af
	ld   [hl], a                                     ; $6f06: $77
	ld   a, [wWramBank]                                  ; $6f07: $fa $93 $c2
	push af                                          ; $6f0a: $f5
	ld   a, [$c94a]                                  ; $6f0b: $fa $4a $c9
	ld   [wWramBank], a                                  ; $6f0e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f11: $e0 $70
	ld   hl, $c948                                   ; $6f13: $21 $48 $c9
	ld   a, [hl+]                                    ; $6f16: $2a
	ld   d, [hl]                                     ; $6f17: $56
	ld   e, a                                        ; $6f18: $5f
	ld   hl, $c952                                   ; $6f19: $21 $52 $c9
	ld   a, [$c94b]                                  ; $6f1c: $fa $4b $c9
	inc  a                                           ; $6f1f: $3c
	ld   c, a                                        ; $6f20: $4f
	ld   b, $00                                      ; $6f21: $06 $00
	call MemCopy                                       ; $6f23: $cd $a9 $09
	pop  af                                          ; $6f26: $f1
	ld   [wWramBank], a                                  ; $6f27: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f2a: $e0 $70
	ret                                              ; $6f2c: $c9


Func_10_6f2d::
	ld   [$c94c], a                                  ; $6f2d: $ea $4c $c9
	ld   a, h                                        ; $6f30: $7c
	ld   [$c946], a                                  ; $6f31: $ea $46 $c9
	ld   a, l                                        ; $6f34: $7d
	ld   [$c947], a                                  ; $6f35: $ea $47 $c9
	ld   hl, $c948                                   ; $6f38: $21 $48 $c9
	ld   a, e                                        ; $6f3b: $7b
	ld   [hl+], a                                    ; $6f3c: $22
	ld   a, d                                        ; $6f3d: $7a
	ld   [hl+], a                                    ; $6f3e: $22
	ld   [hl], b                                     ; $6f3f: $70
	ld   a, c                                        ; $6f40: $79
	ld   [$c94b], a                                  ; $6f41: $ea $4b $c9
	ld   a, $16                                      ; $6f44: $3e $16
	ld   [wGameState], a                                  ; $6f46: $ea $a0 $c2
	ld   a, $00                                      ; $6f49: $3e $00
	ld   [wGameSubstate], a                                  ; $6f4b: $ea $a1 $c2
	ret                                              ; $6f4e: $c9


GameState1d::
	ld   a, [wGameSubstate]                                  ; $6f4f: $fa $a1 $c2
	rst  JumpTable                                         ; $6f52: $df
	ld   e, a                                        ; $6f53: $5f
	ld   l, a                                        ; $6f54: $6f
	ld   h, [hl]                                     ; $6f55: $66
	ld   l, a                                        ; $6f56: $6f
	inc  c                                           ; $6f57: $0c
	ld   [hl], d                                     ; $6f58: $72
	ld   d, l                                        ; $6f59: $55
	ld   [hl], d                                     ; $6f5a: $72
	cp   a                                           ; $6f5b: $bf
	ld   [hl], d                                     ; $6f5c: $72
	rlca                                             ; $6f5d: $07
	ld   [hl], e                                     ; $6f5e: $73
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
	push af                                          ; $6f7c: $f5
	ld   a, $d7                                      ; $6f7d: $3e $d7
	ld   [wFarCallAddr], a                                  ; $6f7f: $ea $98 $c2
	ld   a, $71                                      ; $6f82: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $6f84: $ea $99 $c2
	ld   a, $0c                                      ; $6f87: $3e $0c
	ld   [wFarCallBank], a                                  ; $6f89: $ea $9a $c2
	pop  af                                          ; $6f8c: $f1
	call FarCall                                       ; $6f8d: $cd $62 $09
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
	ld   a, $87                                      ; $6fad: $3e $87
	ld   [wLCDC], a                                  ; $6faf: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $6fb2: $fa $93 $c2
	push af                                          ; $6fb5: $f5
	ld   a, $03                                      ; $6fb6: $3e $03
	ld   [wWramBank], a                                  ; $6fb8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fbb: $e0 $70
	ld   a, $17                                      ; $6fbd: $3e $17
	ld   hl, $d000                                   ; $6fbf: $21 $00 $d0
	ld   de, $5763                                   ; $6fc2: $11 $63 $57
	call RLEXorCopy                                       ; $6fc5: $cd $d2 $09
	ld   c, $81                                      ; $6fc8: $0e $81
	ld   de, $9000                                   ; $6fca: $11 $00 $90
	ld   a, $03                                      ; $6fcd: $3e $03
	ld   hl, $d000                                   ; $6fcf: $21 $00 $d0
	ld   b, $40                                      ; $6fd2: $06 $40
	call EnqueueHDMATransfer                                       ; $6fd4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fd7: $cf
	ld   c, $81                                      ; $6fd8: $0e $81
	ld   de, $9400                                   ; $6fda: $11 $00 $94
	ld   a, $03                                      ; $6fdd: $3e $03
	ld   hl, $d400                                   ; $6fdf: $21 $00 $d4
	ld   b, $40                                      ; $6fe2: $06 $40
	call EnqueueHDMATransfer                                       ; $6fe4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fe7: $cf
	ld   a, $1c                                      ; $6fe8: $3e $1c
	ld   hl, $d000                                   ; $6fea: $21 $00 $d0
	ld   de, $70a5                                   ; $6fed: $11 $a5 $70
	call RLEXorCopy                                       ; $6ff0: $cd $d2 $09
	ld   c, $80                                      ; $6ff3: $0e $80
	ld   de, $8000                                   ; $6ff5: $11 $00 $80
	ld   a, $03                                      ; $6ff8: $3e $03
	ld   hl, $d000                                   ; $6ffa: $21 $00 $d0
	ld   b, $40                                      ; $6ffd: $06 $40
	call EnqueueHDMATransfer                                       ; $6fff: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7002: $cf
	ld   c, $80                                      ; $7003: $0e $80
	ld   de, $8400                                   ; $7005: $11 $00 $84
	ld   a, $03                                      ; $7008: $3e $03
	ld   hl, $d400                                   ; $700a: $21 $00 $d4
	ld   b, $40                                      ; $700d: $06 $40
	call EnqueueHDMATransfer                                       ; $700f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7012: $cf
	ld   a, $14                                      ; $7013: $3e $14
	ld   hl, $d000                                   ; $7015: $21 $00 $d0
	ld   de, $5298                                   ; $7018: $11 $98 $52
	call RLEXorCopy                                       ; $701b: $cd $d2 $09
	ld   c, $80                                      ; $701e: $0e $80
	ld   de, $8800                                   ; $7020: $11 $00 $88
	ld   a, $03                                      ; $7023: $3e $03
	ld   hl, $d000                                   ; $7025: $21 $00 $d0
	ld   b, $40                                      ; $7028: $06 $40
	call EnqueueHDMATransfer                                       ; $702a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $702d: $cf
	ld   c, $80                                      ; $702e: $0e $80
	ld   de, $8c00                                   ; $7030: $11 $00 $8c
	ld   a, $03                                      ; $7033: $3e $03
	ld   hl, $d400                                   ; $7035: $21 $00 $d4
	ld   b, $60                                      ; $7038: $06 $60
	call EnqueueHDMATransfer                                       ; $703a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $703d: $cf
	ld   c, $80                                      ; $703e: $0e $80
	ld   de, $9200                                   ; $7040: $11 $00 $92
	ld   a, $03                                      ; $7043: $3e $03
	ld   hl, $da00                                   ; $7045: $21 $00 $da
	ld   b, $60                                      ; $7048: $06 $60
	call EnqueueHDMATransfer                                       ; $704a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $704d: $cf
	ld   a, $1d                                      ; $704e: $3e $1d
	ld   de, $4e18                                   ; $7050: $11 $18 $4e
	ld   hl, $dc40                                   ; $7053: $21 $40 $dc
	ld   bc, $1412                                   ; $7056: $01 $12 $14
	call FarCopyLayout                                       ; $7059: $cd $2c $0b
	ld   a, $1d                                      ; $705c: $3e $1d
	ld   hl, $da00                                   ; $705e: $21 $00 $da
	call FarCopyLayout                                       ; $7061: $cd $2c $0b
	ld   c, $81                                      ; $7064: $0e $81
	ld   de, $9800                                   ; $7066: $11 $00 $98
	ld   a, $03                                      ; $7069: $3e $03
	ld   hl, $dc40                                   ; $706b: $21 $40 $dc
	ld   b, $24                                      ; $706e: $06 $24
	call EnqueueHDMATransfer                                       ; $7070: $cd $7c $02
	ld   c, $80                                      ; $7073: $0e $80
	ld   de, $9800                                   ; $7075: $11 $00 $98
	ld   a, $03                                      ; $7078: $3e $03
	ld   hl, $da00                                   ; $707a: $21 $00 $da
	ld   b, $24                                      ; $707d: $06 $24
	call EnqueueHDMATransfer                                       ; $707f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7082: $cf
	ld   de, $d600                                   ; $7083: $11 $00 $d6
	ld   hl, $dae0                                   ; $7086: $21 $e0 $da
	ld   bc, $00c0                                   ; $7089: $01 $c0 $00
	call MemCopy                                       ; $708c: $cd $a9 $09
	ld   de, $d200                                   ; $708f: $11 $00 $d2
	ld   hl, $dae0                                   ; $7092: $21 $e0 $da
	ld   bc, $00c0                                   ; $7095: $01 $c0 $00
	call MemCopy                                       ; $7098: $cd $a9 $09
	ld   de, $d700                                   ; $709b: $11 $00 $d7
	ld   hl, $dd20                                   ; $709e: $21 $20 $dd
	ld   bc, $00c0                                   ; $70a1: $01 $c0 $00
	call MemCopy                                       ; $70a4: $cd $a9 $09
	ld   de, $d500                                   ; $70a7: $11 $00 $d5
	ld   hl, $dd20                                   ; $70aa: $21 $20 $dd
	ld   bc, $00c0                                   ; $70ad: $01 $c0 $00
	call MemCopy                                       ; $70b0: $cd $a9 $09
	ld   a, $1e                                      ; $70b3: $3e $1e
	ld   de, $7e11                                   ; $70b5: $11 $11 $7e
	ld   hl, $d784                                   ; $70b8: $21 $84 $d7
	ld   bc, $0c02                                   ; $70bb: $01 $02 $0c
	call FarCopyLayout                                       ; $70be: $cd $2c $0b
	ld   a, $1e                                      ; $70c1: $3e $1e
	ld   hl, $d684                                   ; $70c3: $21 $84 $d6
	call FarCopyLayout                                       ; $70c6: $cd $2c $0b
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
	ld   a, $1e                                      ; $7111: $3e $1e
	ld   de, $7700                                   ; $7113: $11 $00 $77
	ld   hl, $d406                                   ; $7116: $21 $06 $d4
	ld   bc, $0806                                   ; $7119: $01 $06 $08
	call FarCopyLayout                                       ; $711c: $cd $2c $0b
	ld   a, $1e                                      ; $711f: $3e $1e
	ld   hl, $d106                                   ; $7121: $21 $06 $d1
	call FarCopyLayout                                       ; $7124: $cd $2c $0b
	ld   a, $1e                                      ; $7127: $3e $1e
	ld   de, $7c0e                                   ; $7129: $11 $0e $7c
	ld   hl, $d326                                   ; $712c: $21 $26 $d3
	ld   bc, $0804                                   ; $712f: $01 $04 $08
	call FarCopyLayout                                       ; $7132: $cd $2c $0b
	ld   a, $1e                                      ; $7135: $3e $1e
	ld   hl, $d026                                   ; $7137: $21 $26 $d0
	call FarCopyLayout                                       ; $713a: $cd $2c $0b
	ld   a, $1e                                      ; $713d: $3e $1e
	ld   de, $7760                                   ; $713f: $11 $60 $77
	ld   hl, $d906                                   ; $7142: $21 $06 $d9
	ld   bc, $0806                                   ; $7145: $01 $06 $08
	call FarCopyLayout                                       ; $7148: $cd $2c $0b
	ld   a, $1e                                      ; $714b: $3e $1e
	ld   hl, $d806                                   ; $714d: $21 $06 $d8
	call FarCopyLayout                                       ; $7150: $cd $2c $0b
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
	ld   de, $7180                                   ; $717f: $11 $80 $71
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
	ld   c, $1e                                      ; $71ba: $0e $1e
	ld   de, $6cfc                                   ; $71bc: $11 $fc $6c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $71bf: $cd $48 $07
	ld   a, $07                                      ; $71c2: $3e $07
	call PlaySound                                       ; $71c4: $cd $92 $1a
	ld   a, [wGameSubstate]                                  ; $71c7: $fa $a1 $c2
	cp   $01                                         ; $71ca: $fe $01
	jr   z, jr_010_71d8                              ; $71cc: $28 $0a

	call Call_010_74cb                               ; $71ce: $cd $cb $74
	ld   a, $02                                      ; $71d1: $3e $02
	ld   [wGameSubstate], a                                  ; $71d3: $ea $a1 $c2
	jr   jr_010_71e0                                 ; $71d6: $18 $08

jr_010_71d8:
	call Call_010_74d5                               ; $71d8: $cd $d5 $74
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
	ld   a, $1e                                      ; $71f7: $3e $1e
	ld   hl, $6cfc                                   ; $71f9: $21 $fc $6c
	ld   de, wBGPalettes                                   ; $71fc: $11 $de $c2
	ld   bc, $0080                                   ; $71ff: $01 $80 $00
	call FarMemCopy                                       ; $7202: $cd $b2 $09
	ld   bc, $003f                                   ; $7205: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7208: $cd $aa $04
	ret                                              ; $720b: $c9


	call Call_010_73cf                               ; $720c: $cd $cf $73
	call Call_010_747a                               ; $720f: $cd $7a $74
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

	call Call_010_74d5                               ; $722d: $cd $d5 $74
	ld   hl, wGameSubstate                                   ; $7230: $21 $a1 $c2
	inc  [hl]                                        ; $7233: $34
	ld   a, $21                                      ; $7234: $3e $21
	call Func_1adf                                       ; $7236: $cd $df $1a
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
	call Func_1adf                                       ; $7251: $cd $df $1a

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
	call Func_1adf                                       ; $727e: $cd $df $1a
	jr   jr_010_72bb                                 ; $7281: $18 $38

jr_010_7283:
	bit  1, a                                        ; $7283: $cb $4f
	jr   z, jr_010_7298                              ; $7285: $28 $11

	call Call_010_753f                               ; $7287: $cd $3f $75
	call Call_010_74cb                               ; $728a: $cd $cb $74
	ld   hl, wGameSubstate                                   ; $728d: $21 $a1 $c2
	dec  [hl]                                        ; $7290: $35
	ld   a, $22                                      ; $7291: $3e $22
	call Func_1adf                                       ; $7293: $cd $df $1a
	jr   jr_010_72bb                                 ; $7296: $18 $23

jr_010_7298:
	bit  0, a                                        ; $7298: $cb $47
	jr   z, jr_010_72bb                              ; $729a: $28 $1f

	ld   a, $21                                      ; $729c: $3e $21
	call Func_1adf                                       ; $729e: $cd $df $1a
	ld   a, $05                                      ; $72a1: $3e $05
	ld   [wGameSubstate], a                                  ; $72a3: $ea $a1 $c2
	ld   a, [$c9f3]                                  ; $72a6: $fa $f3 $c9
	or   a                                           ; $72a9: $b7
	jr   z, jr_010_72bb                              ; $72aa: $28 $0f

	ld   a, [$c9f7]                                  ; $72ac: $fa $f7 $c9
	cp   $00                                         ; $72af: $fe $00
	jr   z, jr_010_72bb                              ; $72b1: $28 $08

	call Call_010_751d                               ; $72b3: $cd $1d $75
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
	call Func_1adf                                       ; $72df: $cd $df $1a
	jr   jr_010_7303                                 ; $72e2: $18 $1f

jr_010_72e4:
	bit  1, a                                        ; $72e4: $cb $4f
	jr   z, jr_010_72f6                              ; $72e6: $28 $0e

	call Call_010_74d5                               ; $72e8: $cd $d5 $74
	ld   hl, wGameSubstate                                   ; $72eb: $21 $a1 $c2
	dec  [hl]                                        ; $72ee: $35
	ld   a, $22                                      ; $72ef: $3e $22
	call Func_1adf                                       ; $72f1: $cd $df $1a
	jr   jr_010_7303                                 ; $72f4: $18 $0d

jr_010_72f6:
	bit  0, a                                        ; $72f6: $cb $47
	jr   z, jr_010_7303                              ; $72f8: $28 $09

	ld   a, $21                                      ; $72fa: $3e $21
	call Func_1adf                                       ; $72fc: $cd $df $1a
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
	push af                                          ; $731a: $f5
	ld   a, $43                                      ; $731b: $3e $43
	ld   [wFarCallAddr], a                                  ; $731d: $ea $98 $c2
	ld   a, $41                                      ; $7320: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7322: $ea $99 $c2
	ld   a, $01                                      ; $7325: $3e $01
	ld   [wFarCallBank], a                                  ; $7327: $ea $9a $c2
	pop  af                                          ; $732a: $f1
	call FarCall                                       ; $732b: $cd $62 $09
	ld   a, c                                        ; $732e: $79
	cp   $56                                         ; $732f: $fe $56
	ret  nz                                          ; $7331: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7332: $cf
	ld   a, $37                                      ; $7333: $3e $37
	call $1b64                                       ; $7335: $cd $64 $1b

jr_010_7338:
	xor  a                                           ; $7338: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7339: $ea $62 $c3
	ld   a, $40                                      ; $733c: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $733e: $ea $63 $c3
	ld   a, $03                                      ; $7341: $3e $03
	ld   b, $1e                                      ; $7343: $06 $1e
	ld   hl, $6cfc                                   ; $7345: $21 $fc $6c
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
	ld   bc, $5020                                   ; $73d9: $01 $20 $50
	ld   a, $0a                                      ; $73dc: $3e $0a
	ld   [wSpriteGroup], a                                  ; $73de: $ea $1a $c2
	ld   a, $54                                      ; $73e1: $3e $54
	call LoadSpriteFromMainTable                                       ; $73e3: $cd $16 $0e
	ld   a, [$c9ee]                                  ; $73e6: $fa $ee $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $73e9: $cd $76 $30
	push af                                          ; $73ec: $f5
	ld   a, $43                                      ; $73ed: $3e $43
	ld   [wFarCallAddr], a                                  ; $73ef: $ea $98 $c2
	ld   a, $41                                      ; $73f2: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $73f4: $ea $99 $c2
	ld   a, $01                                      ; $73f7: $3e $01
	ld   [wFarCallBank], a                                  ; $73f9: $ea $9a $c2
	pop  af                                          ; $73fc: $f1
	call FarCall                                       ; $73fd: $cd $62 $09
	ld   a, b                                        ; $7400: $78
	cp   $80                                         ; $7401: $fe $80
	jr   c, jr_010_7412                              ; $7403: $38 $0d

	ld   bc, $5020                                   ; $7405: $01 $20 $50
	ld   a, $0a                                      ; $7408: $3e $0a
	ld   [wSpriteGroup], a                                  ; $740a: $ea $1a $c2
	ld   a, $55                                      ; $740d: $3e $55
	call LoadSpriteFromMainTable                                       ; $740f: $cd $16 $0e

jr_010_7412:
	ret                                              ; $7412: $c9


Call_010_7413:
	ld   a, [$c9f6]                                  ; $7413: $fa $f6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7416: $cd $76 $30
	ld   a, $00                                      ; $7419: $3e $00
	ld   de, $7180                                   ; $741b: $11 $80 $71
	push af                                          ; $741e: $f5
	ld   a, $1c                                      ; $741f: $3e $1c
	ld   [wFarCallAddr], a                                  ; $7421: $ea $98 $c2
	ld   a, $41                                      ; $7424: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7426: $ea $99 $c2
	ld   a, $01                                      ; $7429: $3e $01
	ld   [wFarCallBank], a                                  ; $742b: $ea $9a $c2
	pop  af                                          ; $742e: $f1
	call FarCall                                       ; $742f: $cd $62 $09
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
	ld   de, $7180                                   ; $7462: $11 $80 $71
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


Call_010_747a:
	ld   hl, $c9f4                                   ; $747a: $21 $f4 $c9
	dec  [hl]                                        ; $747d: $35
	jr   nz, jr_010_74ca                             ; $747e: $20 $4a

	ld   [hl], $21                                   ; $7480: $36 $21
	ld   hl, $c9f5                                   ; $7482: $21 $f5 $c9
	ld   a, [hl]                                     ; $7485: $7e
	xor  $01                                         ; $7486: $ee $01
	ld   [hl], a                                     ; $7488: $77
	or   a                                           ; $7489: $b7
	jr   nz, jr_010_74ac                             ; $748a: $20 $20

	ld   c, $80                                      ; $748c: $0e $80
	ld   de, $9960                                   ; $748e: $11 $60 $99
	ld   a, $03                                      ; $7491: $3e $03
	ld   hl, $d280                                   ; $7493: $21 $80 $d2
	ld   b, $04                                      ; $7496: $06 $04
	call EnqueueHDMATransfer                                       ; $7498: $cd $7c $02
	ld   c, $81                                      ; $749b: $0e $81
	ld   de, $9960                                   ; $749d: $11 $60 $99
	ld   a, $03                                      ; $74a0: $3e $03
	ld   hl, $d580                                   ; $74a2: $21 $80 $d5
	ld   b, $04                                      ; $74a5: $06 $04
	call EnqueueHDMATransfer                                       ; $74a7: $cd $7c $02
	jr   jr_010_74ca                                 ; $74aa: $18 $1e

jr_010_74ac:
	ld   c, $80                                      ; $74ac: $0e $80
	ld   de, $9960                                   ; $74ae: $11 $60 $99
	ld   a, $03                                      ; $74b1: $3e $03
	ld   hl, $d680                                   ; $74b3: $21 $80 $d6
	ld   b, $04                                      ; $74b6: $06 $04
	call EnqueueHDMATransfer                                       ; $74b8: $cd $7c $02
	ld   c, $81                                      ; $74bb: $0e $81
	ld   de, $9960                                   ; $74bd: $11 $60 $99
	ld   a, $03                                      ; $74c0: $3e $03
	ld   hl, $d780                                   ; $74c2: $21 $80 $d7
	ld   b, $04                                      ; $74c5: $06 $04
	call EnqueueHDMATransfer                                       ; $74c7: $cd $7c $02

jr_010_74ca:
	ret                                              ; $74ca: $c9


Call_010_74cb:
	ld   a, $21                                      ; $74cb: $3e $21
	ld   [$c9f4], a                                  ; $74cd: $ea $f4 $c9
	xor  a                                           ; $74d0: $af
	ld   [$c9f5], a                                  ; $74d1: $ea $f5 $c9
	ret                                              ; $74d4: $c9


Call_010_74d5:
	call Call_010_743d                               ; $74d5: $cd $3d $74
	ld   a, [$cb1d]                                  ; $74d8: $fa $1d $cb
	or   a                                           ; $74db: $b7
	jr   nz, jr_010_74fe                             ; $74dc: $20 $20

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

jr_010_74fe:
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


Call_010_751d:
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


Func_10_7561::
	ld   a, h                                        ; $7561: $7c
	ld   [$c9f9], a                                  ; $7562: $ea $f9 $c9
	ld   a, l                                        ; $7565: $7d
	ld   [$c9fa], a                                  ; $7566: $ea $fa $c9
	ld   a, $1d                                      ; $7569: $3e $1d
	ld   [wGameState], a                                  ; $756b: $ea $a0 $c2
	ld   a, $00                                      ; $756e: $3e $00
	ld   [wGameSubstate], a                                  ; $7570: $ea $a1 $c2
	ret                                              ; $7573: $c9


GameState22::
	ld   a, [wGameSubstate]                                  ; $7574: $fa $a1 $c2
	rst  JumpTable                                         ; $7577: $df
	ld   a, [hl]                                     ; $7578: $7e
	ld   [hl], l                                     ; $7579: $75
	add  d                                           ; $757a: $82
	halt                                             ; $757b: $76
	sub  e                                           ; $757c: $93
	halt                                             ; $757d: $76
	ld   a, $ff                                      ; $757e: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $7580: $ea $0e $c2
	ld   a, $0c                                      ; $7583: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $7585: $ea $13 $c2
	ld   a, $04                                      ; $7588: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $758a: $ea $14 $c2
	call ClearOam                                       ; $758d: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $7590: $cd $59 $0b
	ld   a, $c3                                      ; $7593: $3e $c3
	ld   [wLCDC], a                                  ; $7595: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $7598: $fa $93 $c2
	push af                                          ; $759b: $f5
	ld   a, $03                                      ; $759c: $3e $03
	ld   [wWramBank], a                                  ; $759e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $75a1: $e0 $70
	ld   a, $19                                      ; $75a3: $3e $19
	ld   hl, $d000                                   ; $75a5: $21 $00 $d0
	ld   de, $6bd7                                   ; $75a8: $11 $d7 $6b
	call RLEXorCopy                                       ; $75ab: $cd $d2 $09
	ld   c, $80                                      ; $75ae: $0e $80
	ld   de, $8800                                   ; $75b0: $11 $00 $88
	ld   a, $03                                      ; $75b3: $3e $03
	ld   hl, $d000                                   ; $75b5: $21 $00 $d0
	ld   b, $40                                      ; $75b8: $06 $40
	call EnqueueHDMATransfer                                       ; $75ba: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75bd: $cf
	ld   c, $80                                      ; $75be: $0e $80
	ld   de, $8c00                                   ; $75c0: $11 $00 $8c
	ld   a, $03                                      ; $75c3: $3e $03
	ld   hl, $d400                                   ; $75c5: $21 $00 $d4
	ld   b, $60                                      ; $75c8: $06 $60
	call EnqueueHDMATransfer                                       ; $75ca: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75cd: $cf
	ld   c, $80                                      ; $75ce: $0e $80
	ld   de, $9200                                   ; $75d0: $11 $00 $92
	ld   a, $03                                      ; $75d3: $3e $03
	ld   hl, $da00                                   ; $75d5: $21 $00 $da
	ld   b, $60                                      ; $75d8: $06 $60
	call EnqueueHDMATransfer                                       ; $75da: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75dd: $cf
	ld   a, $1d                                      ; $75de: $3e $1d
	ld   de, $50e8                                   ; $75e0: $11 $e8 $50
	ld   hl, $d000                                   ; $75e3: $21 $00 $d0
	ld   bc, $1412                                   ; $75e6: $01 $12 $14
	call FarCopyLayout                                       ; $75e9: $cd $2c $0b
	ld   a, $1d                                      ; $75ec: $3e $1d
	ld   hl, $d400                                   ; $75ee: $21 $00 $d4
	call FarCopyLayout                                       ; $75f1: $cd $2c $0b
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
	call Func_1adf                                       ; $768b: $cd $df $1a
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
	ld   a, $22                                      ; $76e8: $3e $22
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
	ld   a, $03                                      ; $771e: $3e $03
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
	call nz, SetDoubleSpeedMode                           ; $77f9: $c4 $f4 $53
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

	call Call_010_517d                               ; $7821: $cd $7d $51

jr_010_7824:
	ld   hl, wGameSubstate                                   ; $7824: $21 $a1 $c2
	inc  [hl]                                        ; $7827: $34
	ret                                              ; $7828: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $7829: $fa $10 $c2
	and  $03                                         ; $782c: $e6 $03
	jr   z, jr_010_7839                              ; $782e: $28 $09

	ld   a, $21                                      ; $7830: $3e $21
	call Func_1adf                                       ; $7832: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $7835: $21 $a1 $c2
	inc  [hl]                                        ; $7838: $34

jr_010_7839:
	ret                                              ; $7839: $c9


	ldh  a, [rKEY1]                                  ; $783a: $f0 $4d
	bit  7, a                                        ; $783c: $cb $7f
	call z, SetDoubleSpeedMode                            ; $783e: $cc $f4 $53
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
	ld   a, $23                                      ; $7927: $3e $23
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
