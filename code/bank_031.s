; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

GameState0a::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	ld   a, [bc]                                     ; $4004: $0a
	ld   b, b                                        ; $4005: $40
	and  a                                           ; $4006: $a7
	ld   b, c                                        ; $4007: $41
	cp   e                                           ; $4008: $bb
	ld   b, c                                        ; $4009: $41
	call TurnOffLCD                                       ; $400a: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $400d: $cd $59 $0b
	ld   a, $03                                      ; $4010: $3e $03
	ld   [wLCDC], a                                  ; $4012: $ea $03 $c2
	ld   a, $ff                                      ; $4015: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4017: $ea $0e $c2
	ld   a, $0c                                      ; $401a: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $401c: $ea $13 $c2
	ld   a, $04                                      ; $401f: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4021: $ea $14 $c2
	push af                                          ; $4024: $f5
	ld   a, $1a                                      ; $4025: $3e $1a
	ld   [wFarCallAddr], a                                  ; $4027: $ea $98 $c2
	ld   a, $48                                      ; $402a: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $402c: $ea $99 $c2
	ld   a, $0a                                      ; $402f: $3e $0a
	ld   [wFarCallBank], a                                  ; $4031: $ea $9a $c2
	pop  af                                          ; $4034: $f1
	call FarCall                                       ; $4035: $cd $62 $09
	push af                                          ; $4038: $f5
	ld   a, $34                                      ; $4039: $3e $34
	ld   [wFarCallAddr], a                                  ; $403b: $ea $98 $c2
	ld   a, $49                                      ; $403e: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $4040: $ea $99 $c2
	ld   a, $0a                                      ; $4043: $3e $0a
	ld   [wFarCallBank], a                                  ; $4045: $ea $9a $c2
	pop  af                                          ; $4048: $f1
	call FarCall                                       ; $4049: $cd $62 $09
	ld   bc, $0001                                   ; $404c: $01 $01 $00
	push af                                          ; $404f: $f5
	ld   a, $ba                                      ; $4050: $3e $ba
	ld   [wFarCallAddr], a                                  ; $4052: $ea $98 $c2
	ld   a, $54                                      ; $4055: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4057: $ea $99 $c2
	ld   a, $0a                                      ; $405a: $3e $0a
	ld   [wFarCallBank], a                                  ; $405c: $ea $9a $c2
	pop  af                                          ; $405f: $f1
	call FarCall                                       ; $4060: $cd $62 $09
	xor  a                                           ; $4063: $af
	ldh  [rVBK], a                                   ; $4064: $e0 $4f
	ld   a, $34                                      ; $4066: $3e $34
	ld   hl, $8800                                   ; $4068: $21 $00 $88
	ld   de, $780b                                   ; $406b: $11 $0b $78
	call RLEXorCopy                                       ; $406e: $cd $d2 $09
	ld   a, $34                                      ; $4071: $3e $34
	ld   hl, $9000                                   ; $4073: $21 $00 $90
	ld   de, $508c                                   ; $4076: $11 $8c $50
	call RLEXorCopy                                       ; $4079: $cd $d2 $09
	ld   a, $01                                      ; $407c: $3e $01
	ld   [$c68e], a                                  ; $407e: $ea $8e $c6
	ld   a, $01                                      ; $4081: $3e $01
	ldh  [rVBK], a                                   ; $4083: $e0 $4f
	ld   hl, $9800                                   ; $4085: $21 $00 $98
	ld   a, $34                                      ; $4088: $3e $34
	ld   de, $75db                                   ; $408a: $11 $db $75
	ld   bc, $140a                                   ; $408d: $01 $0a $14
	call FarCopyLayout                                       ; $4090: $cd $2c $0b
	ld   a, [$c68e]                                  ; $4093: $fa $8e $c6
	bit  1, a                                        ; $4096: $cb $4f
	jr   nz, jr_031_40a8                             ; $4098: $20 $0e

	ld   hl, $9880                                   ; $409a: $21 $80 $98
	ld   a, $34                                      ; $409d: $3e $34
	ld   de, $76a3                                   ; $409f: $11 $a3 $76
	ld   bc, $1402                                   ; $40a2: $01 $02 $14
	call FarCopyLayout                                       ; $40a5: $cd $2c $0b

jr_031_40a8:
	ld   a, [$c68e]                                  ; $40a8: $fa $8e $c6
	bit  0, a                                        ; $40ab: $cb $47
	jr   nz, jr_031_40bd                             ; $40ad: $20 $0e

	ld   hl, $98e0                                   ; $40af: $21 $e0 $98
	ld   a, $34                                      ; $40b2: $3e $34
	ld   de, $76cb                                   ; $40b4: $11 $cb $76
	ld   bc, $1402                                   ; $40b7: $01 $02 $14
	call FarCopyLayout                                       ; $40ba: $cd $2c $0b

jr_031_40bd:
	xor  a                                           ; $40bd: $af
	ldh  [rVBK], a                                   ; $40be: $e0 $4f
	ld   hl, $9800                                   ; $40c0: $21 $00 $98
	ld   a, $34                                      ; $40c3: $3e $34
	ld   de, $76f3                                   ; $40c5: $11 $f3 $76
	ld   bc, $140a                                   ; $40c8: $01 $0a $14
	call FarCopyLayout                                       ; $40cb: $cd $2c $0b
	ld   a, [$c68e]                                  ; $40ce: $fa $8e $c6
	bit  1, a                                        ; $40d1: $cb $4f
	jr   nz, jr_031_40e3                             ; $40d3: $20 $0e

	ld   hl, $9880                                   ; $40d5: $21 $80 $98
	ld   a, $34                                      ; $40d8: $3e $34
	ld   de, $77bb                                   ; $40da: $11 $bb $77
	ld   bc, $1402                                   ; $40dd: $01 $02 $14
	call FarCopyLayout                                       ; $40e0: $cd $2c $0b

jr_031_40e3:
	ld   a, [$c68e]                                  ; $40e3: $fa $8e $c6
	bit  0, a                                        ; $40e6: $cb $47
	jr   nz, jr_031_40f8                             ; $40e8: $20 $0e

	ld   hl, $98e0                                   ; $40ea: $21 $e0 $98
	ld   a, $34                                      ; $40ed: $3e $34
	ld   de, $77e3                                   ; $40ef: $11 $e3 $77
	ld   bc, $1402                                   ; $40f2: $01 $02 $14
	call FarCopyLayout                                       ; $40f5: $cd $2c $0b

jr_031_40f8:
	ld   a, [wWramBank]                                  ; $40f8: $fa $93 $c2
	push af                                          ; $40fb: $f5
	ld   a, $05                                      ; $40fc: $3e $05
	ld   [wWramBank], a                                  ; $40fe: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4101: $e0 $70
	xor  a                                           ; $4103: $af
	ldh  [rVBK], a                                   ; $4104: $e0 $4f
	ld   hl, $9880                                   ; $4106: $21 $80 $98
	ld   de, $d000                                   ; $4109: $11 $00 $d0
	ld   bc, $00a0                                   ; $410c: $01 $a0 $00
	call MemCopy                                       ; $410f: $cd $a9 $09
	pop  af                                          ; $4112: $f1
	ld   [wWramBank], a                                  ; $4113: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4116: $e0 $70
	xor  a                                           ; $4118: $af
	call PlaySong                                       ; $4119: $cd $92 $1a
	call ClearOam                                       ; $411c: $cd $d7 $0d
	xor  a                                           ; $411f: $af
	ld   [$c697], a                                  ; $4120: $ea $97 $c6
	ld   [$c698], a                                  ; $4123: $ea $98 $c6
	ld   a, [$c68e]                                  ; $4126: $fa $8e $c6
	bit  0, a                                        ; $4129: $cb $47
	call nz, Call_031_4327                           ; $412b: $c4 $27 $43
	ld   a, [$c68e]                                  ; $412e: $fa $8e $c6
	bit  1, a                                        ; $4131: $cb $4f
	call nz, Call_031_42b9                           ; $4133: $c4 $b9 $42
	call Call_031_425f                               ; $4136: $cd $5f $42
	call Call_031_42a7                               ; $4139: $cd $a7 $42
	call Call_031_43cf                               ; $413c: $cd $cf $43
	call Call_031_41ed                               ; $413f: $cd $ed $41
	ld   a, $35                                      ; $4142: $3e $35
	ld   hl, $4908                                   ; $4144: $21 $08 $49
	ld   de, wBGPalettes+3*8                                   ; $4147: $11 $f6 $c2
	ld   bc, $0030                                   ; $414a: $01 $30 $00
	call FarMemCopy                                       ; $414d: $cd $b2 $09
	ld   bc, $0c23                                   ; $4150: $01 $23 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4153: $cd $aa $04
	ld   a, [wWramBank]                                  ; $4156: $fa $93 $c2
	push af                                          ; $4159: $f5
	ld   a, $05                                      ; $415a: $3e $05
	ld   [wWramBank], a                                  ; $415c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $415f: $e0 $70
	ld   hl, wBGPalettes                                   ; $4161: $21 $de $c2
	ld   de, $d220                                   ; $4164: $11 $20 $d2
	ld   bc, $0080                                   ; $4167: $01 $80 $00
	call MemCopy                                       ; $416a: $cd $a9 $09
	ld   a, $01                                      ; $416d: $3e $01
	ld   hl, $7000                                   ; $416f: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4172: $11 $de $c2
	ld   bc, $0080                                   ; $4175: $01 $80 $00
	call FarMemCopy                                       ; $4178: $cd $b2 $09
	pop  af                                          ; $417b: $f1
	ld   [wWramBank], a                                  ; $417c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $417f: $e0 $70
	call TurnOnLCD                                       ; $4181: $cd $09 $09
	ld   a, [wWramBank]                                  ; $4184: $fa $93 $c2
	push af                                          ; $4187: $f5
	ld   a, $05                                      ; $4188: $3e $05
	ld   [wWramBank], a                                  ; $418a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $418d: $e0 $70
	ld   b, $01                                      ; $418f: $06 $01
	ld   hl, $7000                                   ; $4191: $21 $00 $70
	ld   c, $00                                      ; $4194: $0e $00
	ld   de, $d220                                   ; $4196: $11 $20 $d2
	call Call_031_45a6                               ; $4199: $cd $a6 $45
	pop  af                                          ; $419c: $f1
	ld   [wWramBank], a                                  ; $419d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41a0: $e0 $70
	ld   hl, wGameSubstate                                   ; $41a2: $21 $a1 $c2
	inc  [hl]                                        ; $41a5: $34
	ret                                              ; $41a6: $c9


	call ClearOam                                       ; $41a7: $cd $d7 $0d
	ld   bc, $700f                                   ; $41aa: $01 $0f $70
	ld   a, $0b                                      ; $41ad: $3e $0b
	ld   [wSpriteGroup], a                                  ; $41af: $ea $1a $c2
	ld   a, $44                                      ; $41b2: $3e $44
	call LoadSpriteFromMainTable                                       ; $41b4: $cd $16 $0e
	call Call_031_424d                               ; $41b7: $cd $4d $42
	ret                                              ; $41ba: $c9


	ld   a, [wWramBank]                                  ; $41bb: $fa $93 $c2
	push af                                          ; $41be: $f5
	ld   a, $05                                      ; $41bf: $3e $05
	ld   [wWramBank], a                                  ; $41c1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41c4: $e0 $70
	ld   b, $00                                      ; $41c6: $06 $00
	ld   hl, $d220                                   ; $41c8: $21 $20 $d2
	ld   c, $01                                      ; $41cb: $0e $01
	ld   de, $7000                                   ; $41cd: $11 $00 $70
	call Call_031_45a6                               ; $41d0: $cd $a6 $45
	pop  af                                          ; $41d3: $f1
	ld   [wWramBank], a                                  ; $41d4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41d7: $e0 $70
	xor  a                                           ; $41d9: $af
	call PlaySoundEffect                                       ; $41da: $cd $df $1a
	call TurnOffLCD                                       ; $41dd: $cd $e3 $08
	ld   a, [$c68c]                                  ; $41e0: $fa $8c $c6
	ld   [wGameState], a                                  ; $41e3: $ea $a0 $c2
	ld   a, [$c68d]                                  ; $41e6: $fa $8d $c6
	ld   [wGameSubstate], a                                  ; $41e9: $ea $a1 $c2
	ret                                              ; $41ec: $c9


Call_031_41ed:
	ld   a, [wWramBank]                                  ; $41ed: $fa $93 $c2
	push af                                          ; $41f0: $f5
	ld   a, $05                                      ; $41f1: $3e $05
	ld   [wWramBank], a                                  ; $41f3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41f6: $e0 $70
	ld   a, [$c697]                                  ; $41f8: $fa $97 $c6
	ld   hl, $d00e                                   ; $41fb: $21 $0e $d0
	call Call_031_4220                               ; $41fe: $cd $20 $42
	ld   a, [$c698]                                  ; $4201: $fa $98 $c6
	ld   hl, $d06e                                   ; $4204: $21 $6e $d0
	call Call_031_4220                               ; $4207: $cd $20 $42
	pop  af                                          ; $420a: $f1
	ld   [wWramBank], a                                  ; $420b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $420e: $e0 $70
	ld   a, $05                                      ; $4210: $3e $05
	ld   hl, $d000                                   ; $4212: $21 $00 $d0
	ld   c, $80                                      ; $4215: $0e $80
	ld   de, $9880                                   ; $4217: $11 $80 $98
	ld   b, $0a                                      ; $421a: $06 $0a
	call EnqueueHDMATransfer                                       ; $421c: $cd $7c $02
	ret                                              ; $421f: $c9


Call_031_4220:
	ld   b, $0a                                      ; $4220: $06 $0a
	call Call_031_4245                               ; $4222: $cd $45 $42
	push af                                          ; $4225: $f5
	ld   a, $a2                                      ; $4226: $3e $a2
	add  c                                           ; $4228: $81
	ld   [hl+], a                                    ; $4229: $22
	push hl                                          ; $422a: $e5
	ld   de, $001f                                   ; $422b: $11 $1f $00
	add  hl, de                                      ; $422e: $19
	add  $10                                         ; $422f: $c6 $10
	ld   [hl], a                                     ; $4231: $77
	pop  hl                                          ; $4232: $e1
	pop  af                                          ; $4233: $f1
	ld   b, $01                                      ; $4234: $06 $01
	call Call_031_4245                               ; $4236: $cd $45 $42
	ld   a, $a2                                      ; $4239: $3e $a2
	add  c                                           ; $423b: $81
	ld   [hl+], a                                    ; $423c: $22
	ld   de, $001f                                   ; $423d: $11 $1f $00
	add  hl, de                                      ; $4240: $19
	add  $10                                         ; $4241: $c6 $10
	ld   [hl], a                                     ; $4243: $77
	ret                                              ; $4244: $c9


Call_031_4245:
	ld   c, $00                                      ; $4245: $0e $00

jr_031_4247:
	cp   b                                           ; $4247: $b8
	ret  c                                           ; $4248: $d8

	sub  b                                           ; $4249: $90
	inc  c                                           ; $424a: $0c
	jr   jr_031_4247                                 ; $424b: $18 $fa

Call_031_424d:
	ld   hl, $4258                                   ; $424d: $21 $58 $42
	push hl                                          ; $4250: $e5
	ld   hl, $c68f                                   ; $4251: $21 $8f $c6
	ld   a, [hl+]                                    ; $4254: $2a
	ld   h, [hl]                                     ; $4255: $66
	ld   l, a                                        ; $4256: $6f
	jp   hl                                          ; $4257: $e9


	call Call_031_4284                               ; $4258: $cd $84 $42
	call Call_031_42a7                               ; $425b: $cd $a7 $42
	ret                                              ; $425e: $c9


Call_031_425f:
jr_031_425f:
	ld   hl, $4277                                   ; $425f: $21 $77 $42
	ld   a, [hl+]                                    ; $4262: $2a
	ld   [$c693], a                                  ; $4263: $ea $93 $c6
	ld   a, [hl+]                                    ; $4266: $2a
	ld   [$c694], a                                  ; $4267: $ea $94 $c6
	ld   a, [hl+]                                    ; $426a: $2a
	ld   [$c695], a                                  ; $426b: $ea $95 $c6
	ld   a, l                                        ; $426e: $7d
	ld   [$c691], a                                  ; $426f: $ea $91 $c6
	ld   a, h                                        ; $4272: $7c
	ld   [$c692], a                                  ; $4273: $ea $92 $c6
	ret                                              ; $4276: $c9


	ld   b, $48                                      ; $4277: $06 $48
	ld   b, l                                        ; $4279: $45
	inc  bc                                          ; $427a: $03
	ld   c, c                                        ; $427b: $49
	ld   b, [hl]                                     ; $427c: $46
	ld   b, $4a                                      ; $427d: $06 $4a
	ld   b, a                                        ; $427f: $47
	ld   b, $49                                      ; $4280: $06 $49
	ld   b, [hl]                                     ; $4282: $46
	nop                                              ; $4283: $00

Call_031_4284:
	ld   hl, $c693                                   ; $4284: $21 $93 $c6
	dec  [hl]                                        ; $4287: $35
	ret  nz                                          ; $4288: $c0

	ld   hl, $c691                                   ; $4289: $21 $91 $c6
	ld   a, [hl+]                                    ; $428c: $2a
	ld   h, [hl]                                     ; $428d: $66
	ld   l, a                                        ; $428e: $6f
	ld   a, [hl+]                                    ; $428f: $2a
	or   a                                           ; $4290: $b7
	jr   z, jr_031_425f                              ; $4291: $28 $cc

	ld   [$c693], a                                  ; $4293: $ea $93 $c6
	ld   a, [hl+]                                    ; $4296: $2a
	ld   [$c694], a                                  ; $4297: $ea $94 $c6
	ld   a, [hl+]                                    ; $429a: $2a
	ld   [$c695], a                                  ; $429b: $ea $95 $c6
	ld   a, l                                        ; $429e: $7d
	ld   [$c691], a                                  ; $429f: $ea $91 $c6
	ld   a, h                                        ; $42a2: $7c
	ld   [$c692], a                                  ; $42a3: $ea $92 $c6
	ret                                              ; $42a6: $c9


Call_031_42a7:
	ld   a, $0b                                      ; $42a7: $3e $0b
	ld   [wSpriteGroup], a                                  ; $42a9: $ea $1a $c2
	ld   b, $78                                      ; $42ac: $06 $78
	ld   a, [$c696]                                  ; $42ae: $fa $96 $c6
	ld   c, a                                        ; $42b1: $4f
	ld   a, [$c695]                                  ; $42b2: $fa $95 $c6
	call LoadSpriteFromMainTable                                       ; $42b5: $cd $16 $0e
	ret                                              ; $42b8: $c9


Call_031_42b9:
Jump_031_42b9:
	ld   a, $c9                                      ; $42b9: $3e $c9
	ld   [$c68f], a                                  ; $42bb: $ea $8f $c6
	ld   a, $42                                      ; $42be: $3e $42
	ld   [$c690], a                                  ; $42c0: $ea $90 $c6
	ld   a, $27                                      ; $42c3: $3e $27
	ld   [$c696], a                                  ; $42c5: $ea $96 $c6
	ret                                              ; $42c8: $c9


	ld   a, [wInGameStickyButtonsPressed]                                  ; $42c9: $fa $11 $c2
	bit  6, a                                        ; $42cc: $cb $77
	jr   z, jr_031_42d8                              ; $42ce: $28 $08

	ld   a, [$c68e]                                  ; $42d0: $fa $8e $c6
	bit  0, a                                        ; $42d3: $cb $47
	jr   nz, jr_031_4327                             ; $42d5: $20 $50

	ret                                              ; $42d7: $c9


jr_031_42d8:
	bit  7, a                                        ; $42d8: $cb $7f
	jr   z, jr_031_42e4                              ; $42da: $28 $08

	ld   a, [$c68e]                                  ; $42dc: $fa $8e $c6
	bit  0, a                                        ; $42df: $cb $47
	jr   nz, jr_031_4327                             ; $42e1: $20 $44

	ret                                              ; $42e3: $c9


jr_031_42e4:
	bit  5, a                                        ; $42e4: $cb $6f
	jr   z, jr_031_42fa                              ; $42e6: $28 $12

	ld   hl, $c697                                   ; $42e8: $21 $97 $c6
	ld   a, [hl]                                     ; $42eb: $7e
	sub  $01                                         ; $42ec: $d6 $01
	jr   nc, jr_031_42f2                             ; $42ee: $30 $02

	ld   a, $14                                      ; $42f0: $3e $14

jr_031_42f2:
	ld   [hl], a                                     ; $42f2: $77
	call Call_031_43cf                               ; $42f3: $cd $cf $43
	call Call_031_41ed                               ; $42f6: $cd $ed $41
	ret                                              ; $42f9: $c9


jr_031_42fa:
	bit  4, a                                        ; $42fa: $cb $67
	jr   z, jr_031_4310                              ; $42fc: $28 $12

	ld   hl, $c697                                   ; $42fe: $21 $97 $c6
	ld   a, [hl]                                     ; $4301: $7e
	inc  a                                           ; $4302: $3c
	cp   $15                                         ; $4303: $fe $15
	jr   c, jr_031_4308                              ; $4305: $38 $01

	xor  a                                           ; $4307: $af

jr_031_4308:
	ld   [hl], a                                     ; $4308: $77
	call Call_031_43cf                               ; $4309: $cd $cf $43
	call Call_031_41ed                               ; $430c: $cd $ed $41
	ret                                              ; $430f: $c9


jr_031_4310:
	ld   a, [wInGameButtonsPressed]                                  ; $4310: $fa $10 $c2
	bit  0, a                                        ; $4313: $cb $47
	jr   z, jr_031_431e                              ; $4315: $28 $07

	ld   a, [$c697]                                  ; $4317: $fa $97 $c6
	call PlaySong                                       ; $431a: $cd $92 $1a
	ret                                              ; $431d: $c9


jr_031_431e:
	bit  1, a                                        ; $431e: $cb $4f
	jr   z, jr_031_4326                              ; $4320: $28 $04

	ld   hl, wGameSubstate                                   ; $4322: $21 $a1 $c2
	inc  [hl]                                        ; $4325: $34

jr_031_4326:
	ret                                              ; $4326: $c9


Call_031_4327:
jr_031_4327:
	ld   a, $37                                      ; $4327: $3e $37
	ld   [$c68f], a                                  ; $4329: $ea $8f $c6
	ld   a, $43                                      ; $432c: $3e $43
	ld   [$c690], a                                  ; $432e: $ea $90 $c6
	ld   a, $3f                                      ; $4331: $3e $3f
	ld   [$c696], a                                  ; $4333: $ea $96 $c6
	ret                                              ; $4336: $c9


	ld   a, [wInGameStickyButtonsPressed]                                  ; $4337: $fa $11 $c2
	bit  6, a                                        ; $433a: $cb $77
	jr   z, jr_031_4347                              ; $433c: $28 $09

	ld   a, [$c68e]                                  ; $433e: $fa $8e $c6
	bit  1, a                                        ; $4341: $cb $4f
	jp   nz, Jump_031_42b9                           ; $4343: $c2 $b9 $42

	ret                                              ; $4346: $c9


jr_031_4347:
	bit  7, a                                        ; $4347: $cb $7f
	jr   z, jr_031_4354                              ; $4349: $28 $09

	ld   a, [$c68e]                                  ; $434b: $fa $8e $c6
	bit  1, a                                        ; $434e: $cb $4f
	jp   nz, Jump_031_42b9                           ; $4350: $c2 $b9 $42

	ret                                              ; $4353: $c9


jr_031_4354:
	bit  5, a                                        ; $4354: $cb $6f
	jr   z, jr_031_4367                              ; $4356: $28 $0f

	ld   hl, $c698                                   ; $4358: $21 $98 $c6
	ld   a, [hl]                                     ; $435b: $7e
	sub  $01                                         ; $435c: $d6 $01
	jr   nc, jr_031_4362                             ; $435e: $30 $02

	ld   a, $54                                      ; $4360: $3e $54

jr_031_4362:
	ld   [hl], a                                     ; $4362: $77
	call Call_031_41ed                               ; $4363: $cd $ed $41
	ret                                              ; $4366: $c9


jr_031_4367:
	bit  4, a                                        ; $4367: $cb $67
	jr   z, jr_031_437a                              ; $4369: $28 $0f

	ld   hl, $c698                                   ; $436b: $21 $98 $c6
	ld   a, [hl]                                     ; $436e: $7e
	inc  a                                           ; $436f: $3c
	cp   $55                                         ; $4370: $fe $55
	jr   c, jr_031_4375                              ; $4372: $38 $01

	xor  a                                           ; $4374: $af

jr_031_4375:
	ld   [hl], a                                     ; $4375: $77
	call Call_031_41ed                               ; $4376: $cd $ed $41
	ret                                              ; $4379: $c9


jr_031_437a:
	bit  0, a                                        ; $437a: $cb $47
	jr   z, jr_031_43c6                              ; $437c: $28 $48

	call Call_031_45db                               ; $437e: $cd $db $45
	ldh  a, [rKEY1]                                  ; $4381: $f0 $4d
	bit  7, a                                        ; $4383: $cb $7f
	push af                                          ; $4385: $f5
	ld   a, $f4                                      ; $4386: $3e $f4
	ld   [wFarCallAddr], a                                  ; $4388: $ea $98 $c2
	ld   a, $53                                      ; $438b: $3e $53
	ld   [wFarCallAddr+1], a                                  ; $438d: $ea $99 $c2
	ld   a, $10                                      ; $4390: $3e $10
	ld   [wFarCallBank], a                                  ; $4392: $ea $9a $c2
	pop  af                                          ; $4395: $f1
	call nz, FarCall                                   ; $4396: $c4 $62 $09
	push af                                          ; $4399: $f5
	ld   a, $ee                                      ; $439a: $3e $ee
	ld   [wFarCallAddr], a                                  ; $439c: $ea $98 $c2
	ld   a, $78                                      ; $439f: $3e $78
	ld   [wFarCallAddr+1], a                                  ; $43a1: $ea $99 $c2
	ld   a, $10                                      ; $43a4: $3e $10
	ld   [wFarCallBank], a                                  ; $43a6: $ea $9a $c2
	pop  af                                          ; $43a9: $f1
	call FarCall                                       ; $43aa: $cd $62 $09
	ldh  a, [rKEY1]                                  ; $43ad: $f0 $4d
	bit  7, a                                        ; $43af: $cb $7f
	push af                                          ; $43b1: $f5
	ld   a, $f4                                      ; $43b2: $3e $f4
	ld   [wFarCallAddr], a                                  ; $43b4: $ea $98 $c2
	ld   a, $53                                      ; $43b7: $3e $53
	ld   [wFarCallAddr+1], a                                  ; $43b9: $ea $99 $c2
	ld   a, $10                                      ; $43bc: $3e $10
	ld   [wFarCallBank], a                                  ; $43be: $ea $9a $c2
	pop  af                                          ; $43c1: $f1
	call z, FarCall                                    ; $43c2: $cc $62 $09
	ret                                              ; $43c5: $c9


jr_031_43c6:
	bit  1, a                                        ; $43c6: $cb $4f
	jr   z, jr_031_43ce                              ; $43c8: $28 $04

	ld   hl, wGameSubstate                                   ; $43ca: $21 $a1 $c2
	inc  [hl]                                        ; $43cd: $34

jr_031_43ce:
	ret                                              ; $43ce: $c9


Call_031_43cf:
	call InitWideTextBoxDimensions                                       ; $43cf: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $43d2: $cd $09 $14
	ld   bc, $0c02                                   ; $43d5: $01 $02 $0c
	call SetKanjiTextBoxDimensions                                       ; $43d8: $cd $24 $14
	ld   bc, $0000                                   ; $43db: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $43de: $cd $34 $14
	ld   a, [wWramBank]                                  ; $43e1: $fa $93 $c2
	push af                                          ; $43e4: $f5
	ld   a, $05                                      ; $43e5: $3e $05
	ld   [wWramBank], a                                  ; $43e7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $43ea: $e0 $70
	ld   a, [$c697]                                  ; $43ec: $fa $97 $c6
	add  a                                           ; $43ef: $87
	ld   c, a                                        ; $43f0: $4f
	ld   b, $00                                      ; $43f1: $06 $00
	ld   hl, $441e                                   ; $43f3: $21 $1e $44
	add  hl, bc                                      ; $43f6: $09
	ld   a, [hl+]                                    ; $43f7: $2a
	ld   c, a                                        ; $43f8: $4f
	ld   b, [hl]                                     ; $43f9: $46
	ld   hl, $441e                                   ; $43fa: $21 $1e $44
	add  hl, bc                                      ; $43fd: $09
	ld   e, l                                        ; $43fe: $5d
	ld   d, h                                        ; $43ff: $54
	ld   hl, $d0a0                                   ; $4400: $21 $a0 $d0
	ld   a, $31                                      ; $4403: $3e $31
	call LoadInstantText                                       ; $4405: $cd $06 $13
	pop  af                                          ; $4408: $f1
	ld   [wWramBank], a                                  ; $4409: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $440c: $e0 $70
	ld   de, $8800                                   ; $440e: $11 $00 $88
	ld   c, $80                                      ; $4411: $0e $80
	ld   a, $05                                      ; $4413: $3e $05
	ld   hl, $d0a0                                   ; $4415: $21 $a0 $d0
	ld   b, $18                                      ; $4418: $06 $18
	call EnqueueHDMATransfer                                       ; $441a: $cd $7c $02
	ret                                              ; $441d: $c9


	ld   a, [hl+]                                    ; $441e: $2a
	nop                                              ; $441f: $00
	add  hl, sp                                      ; $4420: $39
	nop                                              ; $4421: $00
	ld   c, h                                        ; $4422: $4c
	nop                                              ; $4423: $00
	ld   e, l                                        ; $4424: $5d
	nop                                              ; $4425: $00
	ld   l, [hl]                                     ; $4426: $6e
	nop                                              ; $4427: $00
	ld   a, a                                        ; $4428: $7f
	nop                                              ; $4429: $00
	adc  l                                           ; $442a: $8d
	nop                                              ; $442b: $00
	sbc  h                                           ; $442c: $9c
	nop                                              ; $442d: $00
	xor  l                                           ; $442e: $ad
	nop                                              ; $442f: $00
	cp   h                                           ; $4430: $bc
	nop                                              ; $4431: $00
	rlc  b                                           ; $4432: $cb $00
	reti                                             ; $4434: $d9


	nop                                              ; $4435: $00
	rst  $20                                         ; $4436: $e7
	nop                                              ; $4437: $00
	ei                                               ; $4438: $fb
	nop                                              ; $4439: $00
	ld   a, [bc]                                     ; $443a: $0a
	ld   bc, $011c                                   ; $443b: $01 $1c $01
	dec  hl                                          ; $443e: $2b
	ld   bc, $013a                                   ; $443f: $01 $3a $01
	ld   b, a                                        ; $4442: $47
	ld   bc, $0156                                   ; $4443: $01 $56 $01
	ld   h, e                                        ; $4446: $63
	ld   bc, $1010                                   ; $4447: $01 $10 $10
	db   $10                                         ; $444a: $10
	db   $10                                         ; $444b: $10
	db   $10                                         ; $444c: $10
	db   $10                                         ; $444d: $10
	db   $10                                         ; $444e: $10
	inc  e                                           ; $444f: $1c
	ld   hl, $0327                                   ; $4450: $21 $27 $03
	db   $e3                                         ; $4453: $e3
	inc  bc                                          ; $4454: $03
	ld   b, c                                        ; $4455: $41
	nop                                              ; $4456: $00
	db   $10                                         ; $4457: $10
	db   $10                                         ; $4458: $10
	db   $10                                         ; $4459: $10
	db   $10                                         ; $445a: $10
	db   $10                                         ; $445b: $10
	ld   b, $a0                                      ; $445c: $06 $a0
	ld   a, [$0804]                                  ; $445e: $fa $04 $08
	ld   [bc], a                                     ; $4461: $02
	adc  a                                           ; $4462: $8f
	ld   [bc], a                                     ; $4463: $02
	sub  b                                           ; $4464: $90
	ld   [bc], a                                     ; $4465: $02
	sub  c                                           ; $4466: $91
	inc  b                                           ; $4467: $04
	add  hl, bc                                      ; $4468: $09
	nop                                              ; $4469: $00
	db   $10                                         ; $446a: $10
	db   $10                                         ; $446b: $10
	db   $10                                         ; $446c: $10
	db   $10                                         ; $446d: $10
	db   $10                                         ; $446e: $10
	inc  bc                                          ; $446f: $03
	ld   l, a                                        ; $4470: $6f
	ld   a, l                                        ; $4471: $7d
	inc  b                                           ; $4472: $04
	and  e                                           ; $4473: $a3
	ld   b, $a1                                      ; $4474: $06 $a1
	ld   a, h                                        ; $4476: $7c
	inc  b                                           ; $4477: $04
	dec  bc                                          ; $4478: $0b
	ld   a, c                                        ; $4479: $79
	nop                                              ; $447a: $00
	db   $10                                         ; $447b: $10
	db   $10                                         ; $447c: $10
	db   $10                                         ; $447d: $10
	db   $10                                         ; $447e: $10
	adc  c                                           ; $447f: $89
	ld   a, h                                        ; $4480: $7c
	adc  d                                           ; $4481: $8a
	ld   a, h                                        ; $4482: $7c
	inc  b                                           ; $4483: $04
	ld   [$9102], sp                                 ; $4484: $08 $02 $91
	inc  bc                                          ; $4487: $03
	ld   d, d                                        ; $4488: $52
	ld   [bc], a                                     ; $4489: $02
	or   a                                           ; $448a: $b7
	nop                                              ; $448b: $00
	db   $10                                         ; $448c: $10
	db   $10                                         ; $448d: $10
	db   $10                                         ; $448e: $10
	db   $10                                         ; $448f: $10
	db   $10                                         ; $4490: $10
	db   $10                                         ; $4491: $10
	db   $10                                         ; $4492: $10
	ld   [bc], a                                     ; $4493: $02
	sbc  b                                           ; $4494: $98
	inc  bc                                          ; $4495: $03
	ld   h, a                                        ; $4496: $67
	ld   e, l                                        ; $4497: $5d
	ld   [bc], a                                     ; $4498: $02
	add  hl, de                                      ; $4499: $19
	inc  bc                                          ; $449a: $03
	ld   l, [hl]                                     ; $449b: $6e
	nop                                              ; $449c: $00
	db   $10                                         ; $449d: $10
	db   $10                                         ; $449e: $10
	db   $10                                         ; $449f: $10
	db   $10                                         ; $44a0: $10
	db   $10                                         ; $44a1: $10
	db   $10                                         ; $44a2: $10
	db   $10                                         ; $44a3: $10
	db   $10                                         ; $44a4: $10
	db   $10                                         ; $44a5: $10
	ld   e, b                                        ; $44a6: $58
	inc  b                                           ; $44a7: $04
	ld   d, h                                        ; $44a8: $54
	sbc  d                                           ; $44a9: $9a
	nop                                              ; $44aa: $00
	db   $10                                         ; $44ab: $10
	db   $10                                         ; $44ac: $10
	db   $10                                         ; $44ad: $10
	db   $10                                         ; $44ae: $10
	db   $10                                         ; $44af: $10
	db   $10                                         ; $44b0: $10
	db   $10                                         ; $44b1: $10
	db   $10                                         ; $44b2: $10
	inc  bc                                          ; $44b3: $03
	ld   [hl], d                                     ; $44b4: $72
	ld   e, d                                        ; $44b5: $5a
	dec  b                                           ; $44b6: $05
	db   $10                                         ; $44b7: $10
	sbc  c                                           ; $44b8: $99
	nop                                              ; $44b9: $00
	db   $10                                         ; $44ba: $10
	db   $10                                         ; $44bb: $10
	db   $10                                         ; $44bc: $10
	db   $10                                         ; $44bd: $10
	inc  bc                                          ; $44be: $03
	ld   e, a                                        ; $44bf: $5f
	inc  b                                           ; $44c0: $04
	dec  c                                           ; $44c1: $0d
	inc  bc                                          ; $44c2: $03
	ld   e, a                                        ; $44c3: $5f
	ld   b, $25                                      ; $44c4: $06 $25
	ld   a, h                                        ; $44c6: $7c
	ret  nz                                          ; $44c7: $c0

	push af                                          ; $44c8: $f5
	or   l                                           ; $44c9: $b5
	nop                                              ; $44ca: $00
	db   $10                                         ; $44cb: $10
	db   $10                                         ; $44cc: $10
	db   $10                                         ; $44cd: $10
	db   $10                                         ; $44ce: $10
	db   $10                                         ; $44cf: $10
	inc  bc                                          ; $44d0: $03
	ld   d, d                                        ; $44d1: $52
	ld   e, e                                        ; $44d2: $5b
	ld   [hl], h                                     ; $44d3: $74
	ld   d, d                                        ; $44d4: $52
	sbc  c                                           ; $44d5: $99
	ld   [bc], a                                     ; $44d6: $02
	ld   c, c                                        ; $44d7: $49
	add  c                                           ; $44d8: $81
	nop                                              ; $44d9: $00
	db   $10                                         ; $44da: $10
	db   $10                                         ; $44db: $10
	db   $10                                         ; $44dc: $10
	db   $10                                         ; $44dd: $10
	inc  b                                           ; $44de: $04
	inc  a                                           ; $44df: $3c
	inc  b                                           ; $44e0: $04
	ld   [hl], a                                     ; $44e1: $77
	ld   hl, $fa29                                   ; $44e2: $21 $29 $fa
	ld   hl, $fa29                                   ; $44e5: $21 $29 $fa
	nop                                              ; $44e8: $00
	db   $10                                         ; $44e9: $10
	db   $10                                         ; $44ea: $10
	db   $10                                         ; $44eb: $10
	ld   [bc], a                                     ; $44ec: $02
	dec  hl                                          ; $44ed: $2b
	ld   h, l                                        ; $44ee: $65
	ld   a, h                                        ; $44ef: $7c
	cp   c                                           ; $44f0: $b9
	push hl                                          ; $44f1: $e5
	push af                                          ; $44f2: $f5
	sbc  $fb                                         ; $44f3: $de $fb
	db   $ed                                         ; $44f5: $ed
	nop                                              ; $44f6: $00
	db   $10                                         ; $44f7: $10
	db   $10                                         ; $44f8: $10
	db   $10                                         ; $44f9: $10
	db   $10                                         ; $44fa: $10
	db   $10                                         ; $44fb: $10
	db   $e3                                         ; $44fc: $e3
	ret                                              ; $44fd: $c9


	rst  $28                                         ; $44fe: $ef
	ld   [hl], l                                     ; $44ff: $75
	ld   [bc], a                                     ; $4500: $02
	ld   a, a                                        ; $4501: $7f
	ld   h, c                                        ; $4502: $61
	ld   d, h                                        ; $4503: $54
	nop                                              ; $4504: $00
	inc  bc                                          ; $4505: $03
	add  b                                           ; $4506: $80
	ld   [bc], a                                     ; $4507: $02
	sub  c                                           ; $4508: $91
	di                                               ; $4509: $f3
	inc  b                                           ; $450a: $04
	ld   [$8f02], sp                                 ; $450b: $08 $02 $8f
	ld   [bc], a                                     ; $450e: $02
	sub  b                                           ; $450f: $90
	ld   [bc], a                                     ; $4510: $02
	sub  c                                           ; $4511: $91
	inc  b                                           ; $4512: $04
	add  hl, bc                                      ; $4513: $09
	ld   a, h                                        ; $4514: $7c
	rst  ToBoot                                         ; $4515: $c7
	ei                                               ; $4516: $fb
	rst  JumpTable                                         ; $4517: $df
	nop                                              ; $4518: $00
	db   $10                                         ; $4519: $10
	db   $10                                         ; $451a: $10
	inc  bc                                          ; $451b: $03
	ld   l, b                                        ; $451c: $68
	ld   d, d                                        ; $451d: $52
	ld   [hl], c                                     ; $451e: $71
	ld   [hl], h                                     ; $451f: $74
	adc  l                                           ; $4520: $8d
	sub  [hl]                                        ; $4521: $96
	ld   d, h                                        ; $4522: $54
	sbc  [hl]                                        ; $4523: $9e
	inc  bc                                          ; $4524: $03
	ld   l, b                                        ; $4525: $68
	ld   a, [$1000]                                  ; $4526: $fa $00 $10
	db   $10                                         ; $4529: $10
	ld   e, d                                        ; $452a: $5a
	and  c                                           ; $452b: $a1
	ld   a, [hl]                                     ; $452c: $7e
	sbc  d                                           ; $452d: $9a
	ld   a, [$0804]                                  ; $452e: $fa $04 $08
	ld   [bc], a                                     ; $4531: $02
	adc  a                                           ; $4532: $8f
	ld   [bc], a                                     ; $4533: $02
	sub  b                                           ; $4534: $90
	ld   [bc], a                                     ; $4535: $02
	sub  c                                           ; $4536: $91
	inc  b                                           ; $4537: $04
	add  hl, bc                                      ; $4538: $09
	nop                                              ; $4539: $00
	db   $10                                         ; $453a: $10
	db   $10                                         ; $453b: $10
	db   $10                                         ; $453c: $10
	db   $10                                         ; $453d: $10
	db   $10                                         ; $453e: $10
	db   $10                                         ; $453f: $10
	db   $10                                         ; $4540: $10
	db   $10                                         ; $4541: $10
	db   $10                                         ; $4542: $10
	inc  bc                                          ; $4543: $03
	ld   c, [hl]                                     ; $4544: $4e
	dec  b                                           ; $4545: $05
	ld   b, $fa                                      ; $4546: $06 $fa
	nop                                              ; $4548: $00
	db   $10                                         ; $4549: $10
	db   $10                                         ; $454a: $10
	db   $10                                         ; $454b: $10
	db   $10                                         ; $454c: $10
	db   $10                                         ; $454d: $10
	db   $10                                         ; $454e: $10
	ld   b, $a2                                      ; $454f: $06 $a2
	ld   b, $a3                                      ; $4551: $06 $a3
	ld   a, h                                        ; $4553: $7c
	rst  ToBoot                                         ; $4554: $c7
	ei                                               ; $4555: $fb
	rst  JumpTable                                         ; $4556: $df
	nop                                              ; $4557: $00
	db   $10                                         ; $4558: $10
	db   $10                                         ; $4559: $10
	db   $10                                         ; $455a: $10
	db   $10                                         ; $455b: $10
	db   $10                                         ; $455c: $10
	db   $10                                         ; $455d: $10
	db   $10                                         ; $455e: $10
	db   $10                                         ; $455f: $10
	halt                                             ; $4560: $76
	ld   e, e                                        ; $4561: $5b
	adc  a                                           ; $4562: $8f
	ld   e, e                                        ; $4563: $5b
	nop                                              ; $4564: $00
	db   $10                                         ; $4565: $10
	db   $10                                         ; $4566: $10
	db   $10                                         ; $4567: $10
	db   $10                                         ; $4568: $10
	ld   b, $a4                                      ; $4569: $06 $a4
	dec  b                                           ; $456b: $05
	ld   e, l                                        ; $456c: $5d
	ld   a, h                                        ; $456d: $7c
	call z, $ecd3                                    ; $456e: $cc $d3 $ec
	cp   d                                           ; $4571: $ba
	ret                                              ; $4572: $c9


	nop                                              ; $4573: $00
	db   $10                                         ; $4574: $10
	db   $10                                         ; $4575: $10
	db   $10                                         ; $4576: $10
	db   $10                                         ; $4577: $10
	halt                                             ; $4578: $76
	ld   e, e                                        ; $4579: $5b
	adc  a                                           ; $457a: $8f
	ld   e, e                                        ; $457b: $5b
	ld   a, h                                        ; $457c: $7c
	rst  ToBoot                                         ; $457d: $c7
	ei                                               ; $457e: $fb
	rst  JumpTable                                         ; $457f: $df
	nop                                              ; $4580: $00
	db   $10                                         ; $4581: $10
	db   $10                                         ; $4582: $10
	inc  b                                           ; $4583: $04
	ld   [$2f04], sp                                 ; $4584: $08 $04 $2f
	ld   e, b                                        ; $4587: $58
	ld   [hl], l                                     ; $4588: $75
	ld   e, c                                        ; $4589: $59
	ld   e, a                                        ; $458a: $5f
	ld   a, h                                        ; $458b: $7c
	rst  ToBoot                                         ; $458c: $c7
	ei                                               ; $458d: $fb
	rst  JumpTable                                         ; $458e: $df
	nop                                              ; $458f: $00
	ld   [$c68e], a                                  ; $4590: $ea $8e $c6
	ld   a, h                                        ; $4593: $7c
	ld   [$c68c], a                                  ; $4594: $ea $8c $c6
	ld   a, l                                        ; $4597: $7d
	ld   [$c68d], a                                  ; $4598: $ea $8d $c6
	ld   a, $0a                                      ; $459b: $3e $0a
	ld   [wGameState], a                                  ; $459d: $ea $a0 $c2
	ld   a, $00                                      ; $45a0: $3e $00
	ld   [wGameSubstate], a                                  ; $45a2: $ea $a1 $c2
	ret                                              ; $45a5: $c9


Call_031_45a6:
	ld   a, c                                        ; $45a6: $79
	push af                                          ; $45a7: $f5
	push de                                          ; $45a8: $d5
	xor  a                                           ; $45a9: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $45aa: $ea $62 $c3
	ld   a, $40                                      ; $45ad: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $45af: $ea $63 $c3
	ld   a, $03                                      ; $45b2: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $45b4: $cd $48 $07
	ld   a, $08                                      ; $45b7: $3e $08

jr_031_45b9:
	push af                                          ; $45b9: $f5
	ld   b, $00                                      ; $45ba: $06 $00
	ld   c, $40                                      ; $45bc: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $45be: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c1: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c2: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c3: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c4: $cf
	pop  af                                          ; $45c5: $f1
	dec  a                                           ; $45c6: $3d
	jr   nz, jr_031_45b9                             ; $45c7: $20 $f0

	pop  hl                                          ; $45c9: $e1
	pop  af                                          ; $45ca: $f1
	ld   de, wBGPalettes                                   ; $45cb: $11 $de $c2
	ld   bc, $0080                                   ; $45ce: $01 $80 $00
	call FarMemCopy                                       ; $45d1: $cd $b2 $09
	ld   bc, $003f                                   ; $45d4: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $45d7: $cd $aa $04
	ret                                              ; $45da: $c9


Call_031_45db:
	ld   de, $c655                                   ; $45db: $11 $55 $c6
	ld   hl, $4627                                   ; $45de: $21 $27 $46
	ld   bc, $000c                                   ; $45e1: $01 $0c $00
	call MemCopy                                       ; $45e4: $cd $a9 $09
	ld   a, [$c698]                                  ; $45e7: $fa $98 $c6
	cp   $20                                         ; $45ea: $fe $20
	jr   nc, jr_031_4606                             ; $45ec: $30 $18

	and  $10                                         ; $45ee: $e6 $10
	swap a                                           ; $45f0: $cb $37
	inc  a                                           ; $45f2: $3c
	add  a                                           ; $45f3: $87
	ld   [$c65d], a                                  ; $45f4: $ea $5d $c6
	ld   a, [$c698]                                  ; $45f7: $fa $98 $c6
	and  $0f                                         ; $45fa: $e6 $0f
	ld   [$c65e], a                                  ; $45fc: $ea $5e $c6
	ld   a, $ff                                      ; $45ff: $3e $ff
	ld   [$c65f], a                                  ; $4601: $ea $5f $c6
	jr   jr_031_4616                                 ; $4604: $18 $10

jr_031_4606:
	xor  a                                           ; $4606: $af
	ld   [$c65d], a                                  ; $4607: $ea $5d $c6
	ld   a, [$c698]                                  ; $460a: $fa $98 $c6
	sub  $20                                         ; $460d: $d6 $20
	ld   [$c65e], a                                  ; $460f: $ea $5e $c6
	xor  a                                           ; $4612: $af
	ld   [$c65f], a                                  ; $4613: $ea $5f $c6

jr_031_4616:
	ld   hl, $c655                                   ; $4616: $21 $55 $c6
	ld   a, [$c65b]                                  ; $4619: $fa $5b $c6
	add  $07                                         ; $461c: $c6 $07
	ld   b, a                                        ; $461e: $47
	ld   a, [hl+]                                    ; $461f: $2a

jr_031_4620:
	add  [hl]                                        ; $4620: $86
	inc  hl                                          ; $4621: $23
	dec  b                                           ; $4622: $05
	jr   nz, jr_031_4620                             ; $4623: $20 $fb

	ld   [hl], a                                     ; $4625: $77
	ret                                              ; $4626: $c9


	ld   b, e                                        ; $4627: $43
	ld   d, d                                        ; $4628: $52
	ld   c, d                                        ; $4629: $4a
	ld   b, h                                        ; $462a: $44
	ld   c, l                                        ; $462b: $4d
	rst  $38                                         ; $462c: $ff
	inc  bc                                          ; $462d: $03
	nop                                              ; $462e: $00
	ld   [bc], a                                     ; $462f: $02
	nop                                              ; $4630: $00
	rst  $38                                         ; $4631: $ff
	nop                                              ; $4632: $00


GameState07::
	ld   a, [wGameSubstate]                                  ; $4633: $fa $a1 $c2
	rst  JumpTable                                         ; $4636: $df
	dec  a                                           ; $4637: $3d
	ld   b, [hl]                                     ; $4638: $46
	call nz, $9347                                   ; $4639: $c4 $47 $93
	ld   b, a                                        ; $463c: $47
	call TurnOffLCD                                       ; $463d: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $4640: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $4643: $fa $03 $c2
	and  $e0                                         ; $4646: $e6 $e0
	or   $07                                         ; $4648: $f6 $07
	ld   [wLCDC], a                                  ; $464a: $ea $03 $c2
	ld   a, $ff                                      ; $464d: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $464f: $ea $0e $c2
	ld   a, $0c                                      ; $4652: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4654: $ea $13 $c2
	ld   a, $04                                      ; $4657: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4659: $ea $14 $c2
	call ClearOam                                       ; $465c: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $465f: $cd $c9 $2e
	call Call_031_4f09                               ; $4662: $cd $09 $4f
	push af                                          ; $4665: $f5
	ld   a, $1a                                      ; $4666: $3e $1a
	ld   [wFarCallAddr], a                                  ; $4668: $ea $98 $c2
	ld   a, $48                                      ; $466b: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $466d: $ea $99 $c2
	ld   a, $0a                                      ; $4670: $3e $0a
	ld   [wFarCallBank], a                                  ; $4672: $ea $9a $c2
	pop  af                                          ; $4675: $f1
	call FarCall                                       ; $4676: $cd $62 $09
	push af                                          ; $4679: $f5
	ld   a, $34                                      ; $467a: $3e $34
	ld   [wFarCallAddr], a                                  ; $467c: $ea $98 $c2
	ld   a, $49                                      ; $467f: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $4681: $ea $99 $c2
	ld   a, $0a                                      ; $4684: $3e $0a
	ld   [wFarCallBank], a                                  ; $4686: $ea $9a $c2
	pop  af                                          ; $4689: $f1
	call FarCall                                       ; $468a: $cd $62 $09
	ld   bc, $0001                                   ; $468d: $01 $01 $00
	push af                                          ; $4690: $f5
	ld   a, $ba                                      ; $4691: $3e $ba
	ld   [wFarCallAddr], a                                  ; $4693: $ea $98 $c2
	ld   a, $54                                      ; $4696: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4698: $ea $99 $c2
	ld   a, $0a                                      ; $469b: $3e $0a
	ld   [wFarCallBank], a                                  ; $469d: $ea $9a $c2
	pop  af                                          ; $46a0: $f1
	call FarCall                                       ; $46a1: $cd $62 $09
	ld   a, $01                                      ; $46a4: $3e $01
	ldh  [rVBK], a                                   ; $46a6: $e0 $4f
	ld   a, $34                                      ; $46a8: $3e $34
	ld   hl, $8800                                   ; $46aa: $21 $00 $88
	ld   de, $61ba                                   ; $46ad: $11 $ba $61
	call RLEXorCopy                                       ; $46b0: $cd $d2 $09
	ld   a, $01                                      ; $46b3: $3e $01
	ldh  [rVBK], a                                   ; $46b5: $e0 $4f
	ld   hl, $9965                                   ; $46b7: $21 $65 $99
	ld   a, $35                                      ; $46ba: $3e $35
	ld   de, $46e0                                   ; $46bc: $11 $e0 $46
	ld   bc, $0e06                                   ; $46bf: $01 $06 $0e
	call FarCopyLayout                                       ; $46c2: $cd $2c $0b
	xor  a                                           ; $46c5: $af
	ldh  [rVBK], a                                   ; $46c6: $e0 $4f
	ld   hl, $9965                                   ; $46c8: $21 $65 $99
	ld   a, $35                                      ; $46cb: $3e $35
	call FarCopyLayout                                       ; $46cd: $cd $2c $0b
	ld   a, [wWramBank]                                  ; $46d0: $fa $93 $c2
	push af                                          ; $46d3: $f5
	ld   a, $05                                      ; $46d4: $3e $05
	ld   [wWramBank], a                                  ; $46d6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $46d9: $e0 $70
	xor  a                                           ; $46db: $af
	ldh  [rVBK], a                                   ; $46dc: $e0 $4f
	ld   hl, $9960                                   ; $46de: $21 $60 $99
	ld   de, $d080                                   ; $46e1: $11 $80 $d0
	ld   bc, $00c0                                   ; $46e4: $01 $c0 $00
	call MemCopy                                       ; $46e7: $cd $a9 $09
	pop  af                                          ; $46ea: $f1
	ld   [wWramBank], a                                  ; $46eb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $46ee: $e0 $70
	xor  a                                           ; $46f0: $af
	ld   [$cbf7], a                                  ; $46f1: $ea $f7 $cb
	ld   [$cbf8], a                                  ; $46f4: $ea $f8 $cb
	xor  a                                           ; $46f7: $af
	ld   [$cbf9], a                                  ; $46f8: $ea $f9 $cb
	ld   [$c686], a                                  ; $46fb: $ea $86 $c6
	ld   [$cbfa], a                                  ; $46fe: $ea $fa $cb
	ld   [$c687], a                                  ; $4701: $ea $87 $c6
	ld   a, [wWramBank]                                  ; $4704: $fa $93 $c2
	push af                                          ; $4707: $f5
	ld   a, $06                                      ; $4708: $3e $06
	ld   [wWramBank], a                                  ; $470a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $470d: $e0 $70

jr_031_470f:
	ld   hl, $cbf9                                   ; $470f: $21 $f9 $cb
	ld   a, [hl]                                     ; $4712: $7e
	inc  a                                           ; $4713: $3c
	and  $0f                                         ; $4714: $e6 $0f
	ld   [hl], a                                     ; $4716: $77
	call Call_031_4d90                               ; $4717: $cd $90 $4d
	ld   bc, $d000                                   ; $471a: $01 $00 $d0
	add  hl, bc                                      ; $471d: $09
	bit  7, [hl]                                     ; $471e: $cb $7e
	jr   nz, jr_031_470f                             ; $4720: $20 $ed

	pop  af                                          ; $4722: $f1
	ld   [wWramBank], a                                  ; $4723: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4726: $e0 $70
	call Call_031_4e03                               ; $4728: $cd $03 $4e
	call Call_031_4ebc                               ; $472b: $cd $bc $4e
	ld   bc, $3470                                   ; $472e: $01 $70 $34
	call Call_031_4ed9                               ; $4731: $cd $d9 $4e
	ld   a, [wWramBank]                                  ; $4734: $fa $93 $c2
	push af                                          ; $4737: $f5
	ld   a, $05                                      ; $4738: $3e $05
	ld   [wWramBank], a                                  ; $473a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $473d: $e0 $70
	ld   hl, wBGPalettes                                   ; $473f: $21 $de $c2
	ld   de, $d000                                   ; $4742: $11 $00 $d0
	ld   bc, $0080                                   ; $4745: $01 $80 $00
	call MemCopy                                       ; $4748: $cd $a9 $09
	ld   a, $32                                      ; $474b: $3e $32
	ld   hl, $7fee                                   ; $474d: $21 $ee $7f
	ld   de, $d040                                   ; $4750: $11 $40 $d0
	ld   bc, $0008                                   ; $4753: $01 $08 $00
	call FarMemCopy                                       ; $4756: $cd $b2 $09
	ld   a, $01                                      ; $4759: $3e $01
	ld   hl, $7000                                   ; $475b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $475e: $11 $de $c2
	ld   bc, $0080                                   ; $4761: $01 $80 $00
	call FarMemCopy                                       ; $4764: $cd $b2 $09
	pop  af                                          ; $4767: $f1
	ld   [wWramBank], a                                  ; $4768: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $476b: $e0 $70
	call TurnOnLCD                                       ; $476d: $cd $09 $09
	ld   a, [wWramBank]                                  ; $4770: $fa $93 $c2
	push af                                          ; $4773: $f5
	ld   a, $05                                      ; $4774: $3e $05
	ld   [wWramBank], a                                  ; $4776: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4779: $e0 $70
	ld   b, $01                                      ; $477b: $06 $01
	ld   hl, $7000                                   ; $477d: $21 $00 $70
	ld   c, $00                                      ; $4780: $0e $00
	ld   de, $d000                                   ; $4782: $11 $00 $d0
	call Call_031_4dce                               ; $4785: $cd $ce $4d
	pop  af                                          ; $4788: $f1
	ld   [wWramBank], a                                  ; $4789: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $478c: $e0 $70
	ld   hl, wGameSubstate                                   ; $478e: $21 $a1 $c2
	inc  [hl]                                        ; $4791: $34
	ret                                              ; $4792: $c9


	ld   b, $00                                      ; $4793: $06 $00
	ld   hl, wBGPalettes                                   ; $4795: $21 $de $c2
	ld   c, $01                                      ; $4798: $0e $01
	ld   de, $7000                                   ; $479a: $11 $00 $70
	call Call_031_4dce                               ; $479d: $cd $ce $4d
	call TurnOffLCD                                       ; $47a0: $cd $e3 $08
	push af                                          ; $47a3: $f5
	ld   a, $02                                      ; $47a4: $3e $02
	ld   [wFarCallAddr], a                                  ; $47a6: $ea $98 $c2
	ld   a, $64                                      ; $47a9: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $47ab: $ea $99 $c2
	ld   a, $0b                                      ; $47ae: $3e $0b
	ld   [wFarCallBank], a                                  ; $47b0: $ea $9a $c2
	pop  af                                          ; $47b3: $f1
	call FarCall                                       ; $47b4: $cd $62 $09
	ld   a, [$c683]                                  ; $47b7: $fa $83 $c6
	ld   [wGameState], a                                  ; $47ba: $ea $a0 $c2
	ld   a, [$c684]                                  ; $47bd: $fa $84 $c6
	ld   [wGameSubstate], a                                  ; $47c0: $ea $a1 $c2
	ret                                              ; $47c3: $c9


	call ClearOam                                       ; $47c4: $cd $d7 $0d
	ld   bc, $47da                                   ; $47c7: $01 $da $47
	push bc                                          ; $47ca: $c5
	ld   a, [$cbf7]                                  ; $47cb: $fa $f7 $cb
	ld   h, $00                                      ; $47ce: $26 $00
	ld   l, a                                        ; $47d0: $6f
	add  hl, hl                                      ; $47d1: $29
	ld   bc, $47dd                                   ; $47d2: $01 $dd $47
	add  hl, bc                                      ; $47d5: $09
	ld   a, [hl+]                                    ; $47d6: $2a
	ld   h, [hl]                                     ; $47d7: $66
	ld   l, a                                        ; $47d8: $6f
	jp   hl                                          ; $47d9: $e9


	jp   AnimateAllAnimatedSpriteSpecs                                       ; $47da: $c3 $d3 $2e


	pop  af                                          ; $47dd: $f1
	ld   b, a                                        ; $47de: $47
	cp   d                                           ; $47df: $ba
	ld   c, b                                        ; $47e0: $48
	halt                                             ; $47e1: $76
	ld   c, c                                        ; $47e2: $49
	ld   l, $4a                                      ; $47e3: $2e $4a
	or   [hl]                                        ; $47e5: $b6
	ld   c, d                                        ; $47e6: $4a
	cp   a                                           ; $47e7: $bf
	ld   c, d                                        ; $47e8: $4a
	ld   [hl], d                                     ; $47e9: $72
	ld   c, e                                        ; $47ea: $4b
	rst  ToBoot                                         ; $47eb: $c7
	ld   c, e                                        ; $47ec: $4b
	ld   c, c                                        ; $47ed: $49
	ld   c, h                                        ; $47ee: $4c
	cp   c                                           ; $47ef: $b9
	ld   c, h                                        ; $47f0: $4c
	ld   a, $00                                      ; $47f1: $3e $00
	ld   [$c685], a                                  ; $47f3: $ea $85 $c6
	ld   bc, $3470                                   ; $47f6: $01 $70 $34
	call Call_031_4ed9                               ; $47f9: $cd $d9 $4e
	ld   a, [wInGameButtonsPressed]                                  ; $47fc: $fa $10 $c2
	bit  0, a                                        ; $47ff: $cb $47
	jr   z, jr_031_4812                              ; $4801: $28 $0f

	ld   a, $05                                      ; $4803: $3e $05
	ld   [$cbf7], a                                  ; $4805: $ea $f7 $cb
	xor  a                                           ; $4808: $af
	ld   [$cbf8], a                                  ; $4809: $ea $f8 $cb
	ld   a, $21                                      ; $480c: $3e $21
	call PlaySoundEffect                                       ; $480e: $cd $df $1a
	ret                                              ; $4811: $c9


jr_031_4812:
	bit  1, a                                        ; $4812: $cb $4f
	jr   z, jr_031_4821                              ; $4814: $28 $0b

	ld   a, $02                                      ; $4816: $3e $02
	ld   [wGameSubstate], a                                  ; $4818: $ea $a1 $c2
	ld   a, $22                                      ; $481b: $3e $22
	call PlaySoundEffect                                       ; $481d: $cd $df $1a
	ret                                              ; $4820: $c9


jr_031_4821:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $4821: $fa $11 $c2
	bit  5, a                                        ; $4824: $cb $6f
	jr   z, jr_031_4833                              ; $4826: $28 $0b

	ld   a, $03                                      ; $4828: $3e $03
	ld   [$cbf7], a                                  ; $482a: $ea $f7 $cb
	ld   a, $20                                      ; $482d: $3e $20
	call PlaySoundEffect                                       ; $482f: $cd $df $1a
	ret                                              ; $4832: $c9


jr_031_4833:
	bit  4, a                                        ; $4833: $cb $67
	jr   z, jr_031_484c                              ; $4835: $28 $15

	ld   a, [$cbf9]                                  ; $4837: $fa $f9 $cb
	or   a                                           ; $483a: $b7
	jr   z, jr_031_4841                              ; $483b: $28 $04

	ld   a, $01                                      ; $483d: $3e $01
	jr   jr_031_4843                                 ; $483f: $18 $02

jr_031_4841:
	ld   a, $03                                      ; $4841: $3e $03

jr_031_4843:
	ld   [$cbf7], a                                  ; $4843: $ea $f7 $cb
	ld   a, $20                                      ; $4846: $3e $20
	call PlaySoundEffect                                       ; $4848: $cd $df $1a
	ret                                              ; $484b: $c9


jr_031_484c:
	ld   a, [wWramBank]                                  ; $484c: $fa $93 $c2
	push af                                          ; $484f: $f5
	ld   a, $06                                      ; $4850: $3e $06
	ld   [wWramBank], a                                  ; $4852: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4855: $e0 $70
	ld   a, [wInGameStickyButtonsPressed]                                  ; $4857: $fa $11 $c2
	bit  6, a                                        ; $485a: $cb $77
	jr   z, jr_031_487e                              ; $485c: $28 $20

	ld   a, [$cbf9]                                  ; $485e: $fa $f9 $cb
	push af                                          ; $4861: $f5

jr_031_4862:
	ld   hl, $cbf9                                   ; $4862: $21 $f9 $cb
	ld   a, [hl]                                     ; $4865: $7e
	dec  a                                           ; $4866: $3d
	and  $0f                                         ; $4867: $e6 $0f
	ld   [hl], a                                     ; $4869: $77
	call Call_031_4da4                               ; $486a: $cd $a4 $4d
	ld   bc, $d000                                   ; $486d: $01 $00 $d0
	add  hl, bc                                      ; $4870: $09
	bit  7, [hl]                                     ; $4871: $cb $7e
	jr   nz, jr_031_4862                             ; $4873: $20 $ed

	ld   a, [$cbf9]                                  ; $4875: $fa $f9 $cb
	pop  bc                                          ; $4878: $c1
	cp   b                                           ; $4879: $b8
	jr   z, jr_031_48b3                              ; $487a: $28 $37

	jr   jr_031_48a4                                 ; $487c: $18 $26

jr_031_487e:
	bit  7, a                                        ; $487e: $cb $7f
	jr   z, jr_031_48a2                              ; $4880: $28 $20

	ld   a, [$cbf9]                                  ; $4882: $fa $f9 $cb
	push af                                          ; $4885: $f5

jr_031_4886:
	ld   hl, $cbf9                                   ; $4886: $21 $f9 $cb
	ld   a, [hl]                                     ; $4889: $7e
	inc  a                                           ; $488a: $3c
	and  $0f                                         ; $488b: $e6 $0f
	ld   [hl], a                                     ; $488d: $77
	call Call_031_4da4                               ; $488e: $cd $a4 $4d
	ld   bc, $d000                                   ; $4891: $01 $00 $d0
	add  hl, bc                                      ; $4894: $09
	bit  7, [hl]                                     ; $4895: $cb $7e
	jr   nz, jr_031_4886                             ; $4897: $20 $ed

	ld   a, [$cbf9]                                  ; $4899: $fa $f9 $cb
	pop  bc                                          ; $489c: $c1
	cp   b                                           ; $489d: $b8
	jr   z, jr_031_48b3                              ; $489e: $28 $13

	jr   jr_031_48a4                                 ; $48a0: $18 $02

jr_031_48a2:
	jr   jr_031_48b3                                 ; $48a2: $18 $0f

jr_031_48a4:
	xor  a                                           ; $48a4: $af
	ld   [$c686], a                                  ; $48a5: $ea $86 $c6
	ld   [$cbfa], a                                  ; $48a8: $ea $fa $cb
	call Call_031_4e03                               ; $48ab: $cd $03 $4e
	ld   a, $20                                      ; $48ae: $3e $20
	call PlaySoundEffect                                       ; $48b0: $cd $df $1a

jr_031_48b3:
	pop  af                                          ; $48b3: $f1
	ld   [wWramBank], a                                  ; $48b4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $48b7: $e0 $70
	ret                                              ; $48b9: $c9


	ld   a, $01                                      ; $48ba: $3e $01
	ld   [$c685], a                                  ; $48bc: $ea $85 $c6
	ld   bc, $4c70                                   ; $48bf: $01 $70 $4c
	call Call_031_4ed9                               ; $48c2: $cd $d9 $4e
	ld   a, [wInGameButtonsPressed]                                  ; $48c5: $fa $10 $c2
	bit  0, a                                        ; $48c8: $cb $47
	jr   z, jr_031_48db                              ; $48ca: $28 $0f

	ld   a, $05                                      ; $48cc: $3e $05
	ld   [$cbf7], a                                  ; $48ce: $ea $f7 $cb
	xor  a                                           ; $48d1: $af
	ld   [$cbf8], a                                  ; $48d2: $ea $f8 $cb
	ld   a, $21                                      ; $48d5: $3e $21
	call PlaySoundEffect                                       ; $48d7: $cd $df $1a
	ret                                              ; $48da: $c9


jr_031_48db:
	bit  1, a                                        ; $48db: $cb $4f
	jr   z, jr_031_48ea                              ; $48dd: $28 $0b

	ld   a, $02                                      ; $48df: $3e $02
	ld   [wGameSubstate], a                                  ; $48e1: $ea $a1 $c2
	ld   a, $22                                      ; $48e4: $3e $22
	call PlaySoundEffect                                       ; $48e6: $cd $df $1a
	ret                                              ; $48e9: $c9


jr_031_48ea:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $48ea: $fa $11 $c2
	bit  5, a                                        ; $48ed: $cb $6f
	jr   z, jr_031_48fc                              ; $48ef: $28 $0b

	ld   a, $00                                      ; $48f1: $3e $00
	ld   [$cbf7], a                                  ; $48f3: $ea $f7 $cb
	ld   a, $20                                      ; $48f6: $3e $20
	call PlaySoundEffect                                       ; $48f8: $cd $df $1a
	ret                                              ; $48fb: $c9


jr_031_48fc:
	bit  4, a                                        ; $48fc: $cb $67
	jr   z, jr_031_490b                              ; $48fe: $28 $0b

	ld   a, $02                                      ; $4900: $3e $02
	ld   [$cbf7], a                                  ; $4902: $ea $f7 $cb
	ld   a, $20                                      ; $4905: $3e $20
	call PlaySoundEffect                                       ; $4907: $cd $df $1a
	ret                                              ; $490a: $c9


jr_031_490b:
	ld   a, [wWramBank]                                  ; $490b: $fa $93 $c2
	push af                                          ; $490e: $f5
	ld   a, $06                                      ; $490f: $3e $06
	ld   [wWramBank], a                                  ; $4911: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4914: $e0 $70
	ld   a, [wInGameStickyButtonsPressed]                                  ; $4916: $fa $11 $c2
	bit  6, a                                        ; $4919: $cb $77
	jr   z, jr_031_493d                              ; $491b: $28 $20

	ld   a, [$c686]                                  ; $491d: $fa $86 $c6
	push af                                          ; $4920: $f5

jr_031_4921:
	ld   hl, $c686                                   ; $4921: $21 $86 $c6
	ld   a, [hl]                                     ; $4924: $7e
	dec  a                                           ; $4925: $3d
	and  $0f                                         ; $4926: $e6 $0f
	ld   [hl], a                                     ; $4928: $77
	call Call_031_4dad                               ; $4929: $cd $ad $4d
	ld   bc, $d000                                   ; $492c: $01 $00 $d0
	add  hl, bc                                      ; $492f: $09
	bit  7, [hl]                                     ; $4930: $cb $7e
	jr   nz, jr_031_4921                             ; $4932: $20 $ed

	ld   a, [$c686]                                  ; $4934: $fa $86 $c6
	pop  bc                                          ; $4937: $c1
	cp   b                                           ; $4938: $b8
	jr   z, jr_031_496f                              ; $4939: $28 $34

	jr   jr_031_4963                                 ; $493b: $18 $26

jr_031_493d:
	bit  7, a                                        ; $493d: $cb $7f
	jr   z, jr_031_4961                              ; $493f: $28 $20

	ld   a, [$c686]                                  ; $4941: $fa $86 $c6
	push af                                          ; $4944: $f5

jr_031_4945:
	ld   hl, $c686                                   ; $4945: $21 $86 $c6
	ld   a, [hl]                                     ; $4948: $7e
	inc  a                                           ; $4949: $3c
	and  $0f                                         ; $494a: $e6 $0f
	ld   [hl], a                                     ; $494c: $77
	call Call_031_4dad                               ; $494d: $cd $ad $4d
	ld   bc, $d000                                   ; $4950: $01 $00 $d0
	add  hl, bc                                      ; $4953: $09
	bit  7, [hl]                                     ; $4954: $cb $7e
	jr   nz, jr_031_4945                             ; $4956: $20 $ed

	ld   a, [$c686]                                  ; $4958: $fa $86 $c6
	pop  bc                                          ; $495b: $c1
	cp   b                                           ; $495c: $b8
	jr   z, jr_031_496f                              ; $495d: $28 $10

	jr   jr_031_4963                                 ; $495f: $18 $02

jr_031_4961:
	jr   jr_031_496f                                 ; $4961: $18 $0c

jr_031_4963:
	xor  a                                           ; $4963: $af
	ld   [$cbfa], a                                  ; $4964: $ea $fa $cb
	call Call_031_4e03                               ; $4967: $cd $03 $4e
	ld   a, $20                                      ; $496a: $3e $20
	call PlaySoundEffect                                       ; $496c: $cd $df $1a

jr_031_496f:
	pop  af                                          ; $496f: $f1
	ld   [wWramBank], a                                  ; $4970: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4973: $e0 $70
	ret                                              ; $4975: $c9


	ld   a, $02                                      ; $4976: $3e $02
	ld   [$c685], a                                  ; $4978: $ea $85 $c6
	ld   bc, $6470                                   ; $497b: $01 $70 $64
	call Call_031_4ed9                               ; $497e: $cd $d9 $4e
	ld   a, [wInGameButtonsPressed]                                  ; $4981: $fa $10 $c2
	bit  0, a                                        ; $4984: $cb $47
	jr   z, jr_031_4997                              ; $4986: $28 $0f

	ld   a, $05                                      ; $4988: $3e $05
	ld   [$cbf7], a                                  ; $498a: $ea $f7 $cb
	xor  a                                           ; $498d: $af
	ld   [$cbf8], a                                  ; $498e: $ea $f8 $cb
	ld   a, $21                                      ; $4991: $3e $21
	call PlaySoundEffect                                       ; $4993: $cd $df $1a
	ret                                              ; $4996: $c9


jr_031_4997:
	bit  1, a                                        ; $4997: $cb $4f
	jr   z, jr_031_49a6                              ; $4999: $28 $0b

	ld   a, $02                                      ; $499b: $3e $02
	ld   [wGameSubstate], a                                  ; $499d: $ea $a1 $c2
	ld   a, $22                                      ; $49a0: $3e $22
	call PlaySoundEffect                                       ; $49a2: $cd $df $1a
	ret                                              ; $49a5: $c9


jr_031_49a6:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $49a6: $fa $11 $c2
	bit  5, a                                        ; $49a9: $cb $6f
	jr   z, jr_031_49b8                              ; $49ab: $28 $0b

	ld   a, $01                                      ; $49ad: $3e $01
	ld   [$cbf7], a                                  ; $49af: $ea $f7 $cb
	ld   a, $20                                      ; $49b2: $3e $20
	call PlaySoundEffect                                       ; $49b4: $cd $df $1a
	ret                                              ; $49b7: $c9


jr_031_49b8:
	bit  4, a                                        ; $49b8: $cb $67
	jr   z, jr_031_49c7                              ; $49ba: $28 $0b

	ld   a, $03                                      ; $49bc: $3e $03
	ld   [$cbf7], a                                  ; $49be: $ea $f7 $cb
	ld   a, $20                                      ; $49c1: $3e $20
	call PlaySoundEffect                                       ; $49c3: $cd $df $1a
	ret                                              ; $49c6: $c9


jr_031_49c7:
	ld   a, [wWramBank]                                  ; $49c7: $fa $93 $c2
	push af                                          ; $49ca: $f5
	ld   a, $06                                      ; $49cb: $3e $06
	ld   [wWramBank], a                                  ; $49cd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49d0: $e0 $70
	ld   a, [wInGameStickyButtonsPressed]                                  ; $49d2: $fa $11 $c2
	bit  6, a                                        ; $49d5: $cb $77
	jr   z, jr_031_49f9                              ; $49d7: $28 $20

	ld   a, [$cbfa]                                  ; $49d9: $fa $fa $cb
	push af                                          ; $49dc: $f5

jr_031_49dd:
	ld   hl, $cbfa                                   ; $49dd: $21 $fa $cb
	ld   a, [hl]                                     ; $49e0: $7e
	dec  a                                           ; $49e1: $3d
	and  $0f                                         ; $49e2: $e6 $0f
	ld   [hl], a                                     ; $49e4: $77
	call Call_031_4d90                               ; $49e5: $cd $90 $4d
	ld   bc, $d000                                   ; $49e8: $01 $00 $d0
	add  hl, bc                                      ; $49eb: $09
	bit  7, [hl]                                     ; $49ec: $cb $7e
	jr   nz, jr_031_49dd                             ; $49ee: $20 $ed

	ld   a, [$cbfa]                                  ; $49f0: $fa $fa $cb
	pop  bc                                          ; $49f3: $c1
	cp   b                                           ; $49f4: $b8
	jr   z, jr_031_4a27                              ; $49f5: $28 $30

	jr   jr_031_4a1f                                 ; $49f7: $18 $26

jr_031_49f9:
	bit  7, a                                        ; $49f9: $cb $7f
	jr   z, jr_031_4a1d                              ; $49fb: $28 $20

	ld   a, [$cbfa]                                  ; $49fd: $fa $fa $cb
	push af                                          ; $4a00: $f5

jr_031_4a01:
	ld   hl, $cbfa                                   ; $4a01: $21 $fa $cb
	ld   a, [hl]                                     ; $4a04: $7e
	inc  a                                           ; $4a05: $3c
	and  $0f                                         ; $4a06: $e6 $0f
	ld   [hl], a                                     ; $4a08: $77
	call Call_031_4d90                               ; $4a09: $cd $90 $4d
	ld   bc, $d000                                   ; $4a0c: $01 $00 $d0
	add  hl, bc                                      ; $4a0f: $09
	bit  7, [hl]                                     ; $4a10: $cb $7e
	jr   nz, jr_031_4a01                             ; $4a12: $20 $ed

	ld   a, [$cbfa]                                  ; $4a14: $fa $fa $cb
	pop  bc                                          ; $4a17: $c1
	cp   b                                           ; $4a18: $b8
	jr   z, jr_031_4a27                              ; $4a19: $28 $0c

	jr   jr_031_4a1f                                 ; $4a1b: $18 $02

jr_031_4a1d:
	jr   jr_031_4a27                                 ; $4a1d: $18 $08

jr_031_4a1f:
	call Call_031_4e03                               ; $4a1f: $cd $03 $4e
	ld   a, $20                                      ; $4a22: $3e $20
	call PlaySoundEffect                                       ; $4a24: $cd $df $1a

jr_031_4a27:
	pop  af                                          ; $4a27: $f1
	ld   [wWramBank], a                                  ; $4a28: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a2b: $e0 $70
	ret                                              ; $4a2d: $c9


	ld   a, $03                                      ; $4a2e: $3e $03
	ld   [$c685], a                                  ; $4a30: $ea $85 $c6
	ld   bc, $8070                                   ; $4a33: $01 $70 $80
	call Call_031_4ed9                               ; $4a36: $cd $d9 $4e
	ld   a, [wInGameButtonsPressed]                                  ; $4a39: $fa $10 $c2
	bit  0, a                                        ; $4a3c: $cb $47
	jr   z, jr_031_4a4f                              ; $4a3e: $28 $0f

	ld   a, $05                                      ; $4a40: $3e $05
	ld   [$cbf7], a                                  ; $4a42: $ea $f7 $cb
	xor  a                                           ; $4a45: $af
	ld   [$cbf8], a                                  ; $4a46: $ea $f8 $cb
	ld   a, $21                                      ; $4a49: $3e $21
	call PlaySoundEffect                                       ; $4a4b: $cd $df $1a
	ret                                              ; $4a4e: $c9


jr_031_4a4f:
	bit  1, a                                        ; $4a4f: $cb $4f
	jr   z, jr_031_4a5e                              ; $4a51: $28 $0b

	ld   a, $02                                      ; $4a53: $3e $02
	ld   [wGameSubstate], a                                  ; $4a55: $ea $a1 $c2
	ld   a, $22                                      ; $4a58: $3e $22
	call PlaySoundEffect                                       ; $4a5a: $cd $df $1a
	ret                                              ; $4a5d: $c9


jr_031_4a5e:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $4a5e: $fa $11 $c2
	bit  5, a                                        ; $4a61: $cb $6f
	jr   z, jr_031_4a7a                              ; $4a63: $28 $15

	ld   a, [$cbf9]                                  ; $4a65: $fa $f9 $cb
	or   a                                           ; $4a68: $b7
	jr   z, jr_031_4a6f                              ; $4a69: $28 $04

	ld   a, $02                                      ; $4a6b: $3e $02
	jr   jr_031_4a71                                 ; $4a6d: $18 $02

jr_031_4a6f:
	ld   a, $00                                      ; $4a6f: $3e $00

jr_031_4a71:
	ld   [$cbf7], a                                  ; $4a71: $ea $f7 $cb
	ld   a, $20                                      ; $4a74: $3e $20
	call PlaySoundEffect                                       ; $4a76: $cd $df $1a
	ret                                              ; $4a79: $c9


jr_031_4a7a:
	bit  4, a                                        ; $4a7a: $cb $67
	jr   z, jr_031_4a89                              ; $4a7c: $28 $0b

	ld   a, $00                                      ; $4a7e: $3e $00
	ld   [$cbf7], a                                  ; $4a80: $ea $f7 $cb
	ld   a, $20                                      ; $4a83: $3e $20
	call PlaySoundEffect                                       ; $4a85: $cd $df $1a
	ret                                              ; $4a88: $c9


jr_031_4a89:
	bit  6, a                                        ; $4a89: $cb $77
	jr   z, jr_031_4a9a                              ; $4a8b: $28 $0d

	ld   hl, $c687                                   ; $4a8d: $21 $87 $c6
	ld   a, [hl]                                     ; $4a90: $7e
	sub  $01                                         ; $4a91: $d6 $01
	jr   nc, jr_031_4a97                             ; $4a93: $30 $02

	ld   a, $c5                                      ; $4a95: $3e $c5

jr_031_4a97:
	ld   [hl], a                                     ; $4a97: $77
	jr   jr_031_4aad                                 ; $4a98: $18 $13

jr_031_4a9a:
	bit  7, a                                        ; $4a9a: $cb $7f
	jr   z, jr_031_4aab                              ; $4a9c: $28 $0d

	ld   hl, $c687                                   ; $4a9e: $21 $87 $c6
	ld   a, [hl]                                     ; $4aa1: $7e
	inc  a                                           ; $4aa2: $3c
	cp   $c6                                         ; $4aa3: $fe $c6
	jr   c, jr_031_4aa8                              ; $4aa5: $38 $01

	xor  a                                           ; $4aa7: $af

jr_031_4aa8:
	ld   [hl], a                                     ; $4aa8: $77
	jr   jr_031_4aad                                 ; $4aa9: $18 $02

jr_031_4aab:
	jr   jr_031_4ab5                                 ; $4aab: $18 $08

jr_031_4aad:
	call Call_031_4e03                               ; $4aad: $cd $03 $4e
	ld   a, $20                                      ; $4ab0: $3e $20
	call PlaySoundEffect                                       ; $4ab2: $cd $df $1a

jr_031_4ab5:
	ret                                              ; $4ab5: $c9


	ld   hl, $cbf7                                   ; $4ab6: $21 $f7 $cb
	inc  [hl]                                        ; $4ab9: $34
	xor  a                                           ; $4aba: $af
	ld   [$cbf8], a                                  ; $4abb: $ea $f8 $cb
	ret                                              ; $4abe: $c9


	ld   a, [$cbf8]                                  ; $4abf: $fa $f8 $cb
	or   a                                           ; $4ac2: $b7
	jr   nz, jr_031_4ade                             ; $4ac3: $20 $19

	ld   a, $04                                      ; $4ac5: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4ac7: $ea $62 $c3
	ld   a, $30                                      ; $4aca: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4acc: $ea $63 $c3
	ld   a, $02                                      ; $4acf: $3e $02
	ld   b, $00                                      ; $4ad1: $06 $00
	ld   hl, wBGPalettes                                   ; $4ad3: $21 $de $c2
	ld   c, $01                                      ; $4ad6: $0e $01
	ld   de, $7000                                   ; $4ad8: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4adb: $cd $48 $07

jr_031_4ade:
	ld   hl, $cbf8                                   ; $4ade: $21 $f8 $cb
	ld   a, [hl]                                     ; $4ae1: $7e
	inc  [hl]                                        ; $4ae2: $34
	ld   bc, $0430                                   ; $4ae3: $01 $30 $04
	cp   $03                                         ; $4ae6: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $4ae8: $da $32 $08

	ld   a, $01                                      ; $4aeb: $3e $01
	ld   hl, $7000                                   ; $4aed: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $4af0: $11 $e6 $c2
	ld   bc, $0060                                   ; $4af3: $01 $60 $00
	call FarMemCopy                                       ; $4af6: $cd $b2 $09
	ld   bc, $0433                                   ; $4af9: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4afc: $cd $aa $04
	push af                                          ; $4aff: $f5
	ld   a, $02                                      ; $4b00: $3e $02
	ld   [wFarCallAddr], a                                  ; $4b02: $ea $98 $c2
	ld   a, $64                                      ; $4b05: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $4b07: $ea $99 $c2
	ld   a, $0b                                      ; $4b0a: $3e $0b
	ld   [wFarCallBank], a                                  ; $4b0c: $ea $9a $c2
	pop  af                                          ; $4b0f: $f1
	call FarCall                                       ; $4b10: $cd $62 $09
	ld   a, [wWramBank]                                  ; $4b13: $fa $93 $c2
	push af                                          ; $4b16: $f5
	ld   a, $02                                      ; $4b17: $3e $02
	ld   [wWramBank], a                                  ; $4b19: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b1c: $e0 $70
	ld   c, $80                                      ; $4b1e: $0e $80
	ld   de, $9000                                   ; $4b20: $11 $00 $90
	ld   a, $02                                      ; $4b23: $3e $02
	ld   hl, $7080                                   ; $4b25: $21 $80 $70
	ld   b, $01                                      ; $4b28: $06 $01
	call EnqueueHDMATransfer                                       ; $4b2a: $cd $7c $02
	ld   hl, $d000                                   ; $4b2d: $21 $00 $d0
	ld   bc, $00a0                                   ; $4b30: $01 $a0 $00
	ld   de, $0303                                   ; $4b33: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $4b36: $cd $9f $09
	ld   hl, $d140                                   ; $4b39: $21 $40 $d1
	ld   bc, $00a0                                   ; $4b3c: $01 $a0 $00
	ld   de, $0000                                   ; $4b3f: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $4b42: $cd $9f $09
	ld   c, $80                                      ; $4b45: $0e $80
	ld   de, $9800                                   ; $4b47: $11 $00 $98
	ld   a, $02                                      ; $4b4a: $3e $02
	ld   hl, $d140                                   ; $4b4c: $21 $40 $d1
	ld   b, $14                                      ; $4b4f: $06 $14
	call EnqueueHDMATransfer                                       ; $4b51: $cd $7c $02
	ld   c, $81                                      ; $4b54: $0e $81
	ld   de, $9800                                   ; $4b56: $11 $00 $98
	ld   a, $02                                      ; $4b59: $3e $02
	ld   hl, $d000                                   ; $4b5b: $21 $00 $d0
	ld   b, $14                                      ; $4b5e: $06 $14
	call EnqueueHDMATransfer                                       ; $4b60: $cd $7c $02
	pop  af                                          ; $4b63: $f1
	ld   [wWramBank], a                                  ; $4b64: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b67: $e0 $70
	ld   hl, $cbf7                                   ; $4b69: $21 $f7 $cb
	inc  [hl]                                        ; $4b6c: $34
	xor  a                                           ; $4b6d: $af
	ld   [$cbf8], a                                  ; $4b6e: $ea $f8 $cb
	ret                                              ; $4b71: $c9


	ld   hl, $cbf8                                   ; $4b72: $21 $f8 $cb
	ld   a, [hl]                                     ; $4b75: $7e
	inc  [hl]                                        ; $4b76: $34
	ld   b, a                                        ; $4b77: $47
	ld   a, [$c687]                                  ; $4b78: $fa $87 $c6
	ld   l, a                                        ; $4b7b: $6f
	ld   h, $00                                      ; $4b7c: $26 $00
	ld   a, b                                        ; $4b7e: $78
	push af                                          ; $4b7f: $f5
	ld   a, $97                                      ; $4b80: $3e $97
	ld   [wFarCallAddr], a                                  ; $4b82: $ea $98 $c2
	ld   a, $49                                      ; $4b85: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $4b87: $ea $99 $c2
	ld   a, $0a                                      ; $4b8a: $3e $0a
	ld   [wFarCallBank], a                                  ; $4b8c: $ea $9a $c2
	pop  af                                          ; $4b8f: $f1
	call FarCall                                       ; $4b90: $cd $62 $09
	or   a                                           ; $4b93: $b7
	ret  nz                                          ; $4b94: $c0

	ld   a, [wWramBank]                                  ; $4b95: $fa $93 $c2
	push af                                          ; $4b98: $f5
	ld   a, $02                                      ; $4b99: $3e $02
	ld   [wWramBank], a                                  ; $4b9b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b9e: $e0 $70
	ld   de, $da18                                   ; $4ba0: $11 $18 $da
	ld   hl, wBGPalettes+3*8                                   ; $4ba3: $21 $f6 $c2
	ld   bc, $0018                                   ; $4ba6: $01 $18 $00
	call MemCopy                                       ; $4ba9: $cd $a9 $09
	ld   hl, wBGPalettes+3*8                                   ; $4bac: $21 $f6 $c2
	ld   bc, $000c                                   ; $4baf: $01 $0c $00
	ld   de, $7fff                                   ; $4bb2: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $4bb5: $cd $9f $09
	pop  af                                          ; $4bb8: $f1
	ld   [wWramBank], a                                  ; $4bb9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bbc: $e0 $70
	ld   hl, $cbf7                                   ; $4bbe: $21 $f7 $cb
	inc  [hl]                                        ; $4bc1: $34
	xor  a                                           ; $4bc2: $af
	ld   [$cbf8], a                                  ; $4bc3: $ea $f8 $cb
	ret                                              ; $4bc6: $c9


	ld   a, [$cbf9]                                  ; $4bc7: $fa $f9 $cb
	or   a                                           ; $4bca: $b7
	jr   z, jr_031_4c40                              ; $4bcb: $28 $73

	ld   hl, $cbf8                                   ; $4bcd: $21 $f8 $cb
	ld   a, [hl]                                     ; $4bd0: $7e
	inc  [hl]                                        ; $4bd1: $34
	or   a                                           ; $4bd2: $b7
	jr   nz, jr_031_4bfa                             ; $4bd3: $20 $25

	call Call_031_4d90                               ; $4bd5: $cd $90 $4d
	ld   a, h                                        ; $4bd8: $7c
	or   a                                           ; $4bd9: $b7
	jr   nz, jr_031_4be6                             ; $4bda: $20 $0a

	ld   a, $08                                      ; $4bdc: $3e $08
	ld   [$cbf7], a                                  ; $4bde: $ea $f7 $cb
	xor  a                                           ; $4be1: $af
	ld   [$cbf8], a                                  ; $4be2: $ea $f8 $cb
	ret                                              ; $4be5: $c9


jr_031_4be6:
	push af                                          ; $4be6: $f5
	ld   a, $46                                      ; $4be7: $3e $46
	ld   [wFarCallAddr], a                                  ; $4be9: $ea $98 $c2
	ld   a, $64                                      ; $4bec: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $4bee: $ea $99 $c2
	ld   a, $0b                                      ; $4bf1: $3e $0b
	ld   [wFarCallBank], a                                  ; $4bf3: $ea $9a $c2
	pop  af                                          ; $4bf6: $f1
	call FarCall                                       ; $4bf7: $cd $62 $09

jr_031_4bfa:
	call Call_031_4d90                               ; $4bfa: $cd $90 $4d
	ld   a, [$cbf8]                                  ; $4bfd: $fa $f8 $cb
	dec  a                                           ; $4c00: $3d
	push af                                          ; $4c01: $f5
	ld   a, $00                                      ; $4c02: $3e $00
	ld   [wFarCallAddr], a                                  ; $4c04: $ea $98 $c2
	ld   a, $40                                      ; $4c07: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $4c09: $ea $99 $c2
	ld   a, $0b                                      ; $4c0c: $3e $0b
	ld   [wFarCallBank], a                                  ; $4c0e: $ea $9a $c2
	pop  af                                          ; $4c11: $f1
	call FarCall                                       ; $4c12: $cd $62 $09
	or   a                                           ; $4c15: $b7
	ret  nz                                          ; $4c16: $c0

	ld   a, [wWramBank]                                  ; $4c17: $fa $93 $c2
	push af                                          ; $4c1a: $f5
	ld   a, $02                                      ; $4c1b: $3e $02
	ld   [wWramBank], a                                  ; $4c1d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c20: $e0 $70
	ld   de, $da30                                   ; $4c22: $11 $30 $da
	ld   hl, $c30e                                   ; $4c25: $21 $0e $c3
	ld   bc, $0038                                   ; $4c28: $01 $38 $00
	call MemCopy                                       ; $4c2b: $cd $a9 $09
	ld   hl, $c30e                                   ; $4c2e: $21 $0e $c3
	ld   bc, $001c                                   ; $4c31: $01 $1c $00
	ld   de, $7fff                                   ; $4c34: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $4c37: $cd $9f $09
	pop  af                                          ; $4c3a: $f1
	ld   [wWramBank], a                                  ; $4c3b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c3e: $e0 $70

jr_031_4c40:
	ld   hl, $cbf7                                   ; $4c40: $21 $f7 $cb
	inc  [hl]                                        ; $4c43: $34
	xor  a                                           ; $4c44: $af
	ld   [$cbf8], a                                  ; $4c45: $ea $f8 $cb
	ret                                              ; $4c48: $c9


	ld   a, [wWramBank]                                  ; $4c49: $fa $93 $c2
	push af                                          ; $4c4c: $f5
	ld   a, $06                                      ; $4c4d: $3e $06
	ld   [wWramBank], a                                  ; $4c4f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c52: $e0 $70
	ld   a, [$cbf9]                                  ; $4c54: $fa $f9 $cb
	or   a                                           ; $4c57: $b7
	jr   nz, jr_031_4c5e                             ; $4c58: $20 $04

	ld   a, $01                                      ; $4c5a: $3e $01
	jr   jr_031_4c66                                 ; $4c5c: $18 $08

jr_031_4c5e:
	call Call_031_4d90                               ; $4c5e: $cd $90 $4d
	ld   bc, $d000                                   ; $4c61: $01 $00 $d0
	add  hl, bc                                      ; $4c64: $09
	ld   a, [hl]                                     ; $4c65: $7e

jr_031_4c66:
	ld   c, a                                        ; $4c66: $4f
	ld   a, [$cbf9]                                  ; $4c67: $fa $f9 $cb
	and  $0f                                         ; $4c6a: $e6 $0f
	ld   b, a                                        ; $4c6c: $47
	push af                                          ; $4c6d: $f5
	ld   a, $ba                                      ; $4c6e: $3e $ba
	ld   [wFarCallAddr], a                                  ; $4c70: $ea $98 $c2
	ld   a, $54                                      ; $4c73: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4c75: $ea $99 $c2
	ld   a, $0a                                      ; $4c78: $3e $0a
	ld   [wFarCallBank], a                                  ; $4c7a: $ea $9a $c2
	pop  af                                          ; $4c7d: $f1
	call FarCall                                       ; $4c7e: $cd $62 $09
	pop  af                                          ; $4c81: $f1
	ld   [wWramBank], a                                  ; $4c82: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c85: $e0 $70
	ld   a, [wWramBank]                                  ; $4c87: $fa $93 $c2
	push af                                          ; $4c8a: $f5
	ld   a, $02                                      ; $4c8b: $3e $02
	ld   [wWramBank], a                                  ; $4c8d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c90: $e0 $70
	ld   de, $da08                                   ; $4c92: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $4c95: $21 $e6 $c2
	ld   bc, $0010                                   ; $4c98: $01 $10 $00
	call MemCopy                                       ; $4c9b: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $4c9e: $21 $e6 $c2
	ld   bc, $0008                                   ; $4ca1: $01 $08 $00
	ld   de, $7fff                                   ; $4ca4: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $4ca7: $cd $9f $09
	pop  af                                          ; $4caa: $f1
	ld   [wWramBank], a                                  ; $4cab: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cae: $e0 $70
	ld   hl, $cbf7                                   ; $4cb0: $21 $f7 $cb
	inc  [hl]                                        ; $4cb3: $34
	xor  a                                           ; $4cb4: $af
	ld   [$cbf8], a                                  ; $4cb5: $ea $f8 $cb
	ret                                              ; $4cb8: $c9


	ld   a, [$cbf8]                                  ; $4cb9: $fa $f8 $cb
	or   a                                           ; $4cbc: $b7
	jp   nz, Jump_031_4d58                           ; $4cbd: $c2 $58 $4d

	ld   a, [$cbf9]                                  ; $4cc0: $fa $f9 $cb
	or   a                                           ; $4cc3: $b7
	jr   z, jr_031_4cf1                              ; $4cc4: $28 $2b

	push af                                          ; $4cc6: $f5
	ld   a, $1a                                      ; $4cc7: $3e $1a
	ld   [wFarCallAddr], a                                  ; $4cc9: $ea $98 $c2
	ld   a, $64                                      ; $4ccc: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $4cce: $ea $99 $c2
	ld   a, $0b                                      ; $4cd1: $3e $0b
	ld   [wFarCallBank], a                                  ; $4cd3: $ea $9a $c2
	pop  af                                          ; $4cd6: $f1
	call FarCall                                       ; $4cd7: $cd $62 $09
	call Call_031_4d90                               ; $4cda: $cd $90 $4d
	push af                                          ; $4cdd: $f5
	ld   a, $03                                      ; $4cde: $3e $03
	ld   [wFarCallAddr], a                                  ; $4ce0: $ea $98 $c2
	ld   a, $59                                      ; $4ce3: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $4ce5: $ea $99 $c2
	ld   a, $0b                                      ; $4ce8: $3e $0b
	ld   [wFarCallBank], a                                  ; $4cea: $ea $9a $c2
	pop  af                                          ; $4ced: $f1
	call FarCall                                       ; $4cee: $cd $62 $09

jr_031_4cf1:
	ld   c, $80                                      ; $4cf1: $0e $80
	ld   de, $9800                                   ; $4cf3: $11 $00 $98
	ld   a, $02                                      ; $4cf6: $3e $02
	ld   hl, $d140                                   ; $4cf8: $21 $40 $d1
	ld   b, $14                                      ; $4cfb: $06 $14
	call EnqueueHDMATransfer                                       ; $4cfd: $cd $7c $02
	ld   a, [wWramBank]                                  ; $4d00: $fa $93 $c2
	push af                                          ; $4d03: $f5
	ld   a, $02                                      ; $4d04: $3e $02
	ld   [wWramBank], a                                  ; $4d06: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d09: $e0 $70
	ld   bc, $0140                                   ; $4d0b: $01 $40 $01
	ld   hl, $d000                                   ; $4d0e: $21 $00 $d0

jr_031_4d11:
	res  7, [hl]                                     ; $4d11: $cb $be
	inc  hl                                          ; $4d13: $23
	dec  bc                                          ; $4d14: $0b
	ld   a, b                                        ; $4d15: $78
	or   c                                           ; $4d16: $b1
	jr   nz, jr_031_4d11                             ; $4d17: $20 $f8

	pop  af                                          ; $4d19: $f1
	ld   [wWramBank], a                                  ; $4d1a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d1d: $e0 $70
	ld   c, $81                                      ; $4d1f: $0e $81
	ld   de, $9800                                   ; $4d21: $11 $00 $98
	ld   a, $02                                      ; $4d24: $3e $02
	ld   hl, $d000                                   ; $4d26: $21 $00 $d0
	ld   b, $14                                      ; $4d29: $06 $14
	call EnqueueHDMATransfer                                       ; $4d2b: $cd $7c $02
	ld   a, [wWramBank]                                  ; $4d2e: $fa $93 $c2
	push af                                          ; $4d31: $f5
	ld   a, $02                                      ; $4d32: $3e $02
	ld   [wWramBank], a                                  ; $4d34: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d37: $e0 $70
	ld   a, $04                                      ; $4d39: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4d3b: $ea $62 $c3
	ld   a, $30                                      ; $4d3e: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4d40: $ea $63 $c3
	ld   a, $02                                      ; $4d43: $3e $02
	ld   b, $00                                      ; $4d45: $06 $00
	ld   hl, wBGPalettes                                   ; $4d47: $21 $de $c2
	ld   c, $00                                      ; $4d4a: $0e $00
	ld   de, $da00                                   ; $4d4c: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4d4f: $cd $48 $07
	pop  af                                          ; $4d52: $f1
	ld   [wWramBank], a                                  ; $4d53: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d56: $e0 $70

Jump_031_4d58:
	ld   hl, $cbf8                                   ; $4d58: $21 $f8 $cb
	ld   a, [hl]                                     ; $4d5b: $7e
	inc  [hl]                                        ; $4d5c: $34
	ld   bc, $0430                                   ; $4d5d: $01 $30 $04
	cp   $03                                         ; $4d60: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $4d62: $da $32 $08

	ld   a, [wWramBank]                                  ; $4d65: $fa $93 $c2
	push af                                          ; $4d68: $f5
	ld   a, $02                                      ; $4d69: $3e $02
	ld   [wWramBank], a                                  ; $4d6b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d6e: $e0 $70
	xor  a                                           ; $4d70: $af
	ld   hl, $da08                                   ; $4d71: $21 $08 $da
	ld   de, wBGPalettes+1*8                                   ; $4d74: $11 $e6 $c2
	ld   bc, $0060                                   ; $4d77: $01 $60 $00
	call FarMemCopy                                       ; $4d7a: $cd $b2 $09
	ld   bc, $0433                                   ; $4d7d: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4d80: $cd $aa $04
	pop  af                                          ; $4d83: $f1
	ld   [wWramBank], a                                  ; $4d84: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d87: $e0 $70
	ld   a, [$c685]                                  ; $4d89: $fa $85 $c6
	ld   [$cbf7], a                                  ; $4d8c: $ea $f7 $cb
	ret                                              ; $4d8f: $c9


Call_031_4d90:
	ld   a, [$cbf9]                                  ; $4d90: $fa $f9 $cb
	and  $0f                                         ; $4d93: $e6 $0f
	ld   h, a                                        ; $4d95: $67
	ld   a, [$c686]                                  ; $4d96: $fa $86 $c6
	swap a                                           ; $4d99: $cb $37
	and  $f0                                         ; $4d9b: $e6 $f0
	ld   l, a                                        ; $4d9d: $6f
	ld   a, [$cbfa]                                  ; $4d9e: $fa $fa $cb
	or   l                                           ; $4da1: $b5
	ld   l, a                                        ; $4da2: $6f
	ret                                              ; $4da3: $c9


Call_031_4da4:
	ld   a, [$cbf9]                                  ; $4da4: $fa $f9 $cb
	and  $0f                                         ; $4da7: $e6 $0f
	ld   h, a                                        ; $4da9: $67
	xor  a                                           ; $4daa: $af
	ld   l, a                                        ; $4dab: $6f
	ret                                              ; $4dac: $c9


Call_031_4dad:
	ld   a, [$cbf9]                                  ; $4dad: $fa $f9 $cb
	and  $0f                                         ; $4db0: $e6 $0f
	ld   h, a                                        ; $4db2: $67
	ld   a, [$c686]                                  ; $4db3: $fa $86 $c6
	swap a                                           ; $4db6: $cb $37
	and  $f0                                         ; $4db8: $e6 $f0
	ld   l, a                                        ; $4dba: $6f
	ret                                              ; $4dbb: $c9


	ld   a, h                                        ; $4dbc: $7c
	ld   [$c683], a                                  ; $4dbd: $ea $83 $c6
	ld   a, l                                        ; $4dc0: $7d
	ld   [$c684], a                                  ; $4dc1: $ea $84 $c6
	ld   a, $07                                      ; $4dc4: $3e $07
	ld   [wGameState], a                                  ; $4dc6: $ea $a0 $c2
	xor  a                                           ; $4dc9: $af
	ld   [wGameSubstate], a                                  ; $4dca: $ea $a1 $c2
	ret                                              ; $4dcd: $c9


Call_031_4dce:
	ld   a, c                                        ; $4dce: $79
	push af                                          ; $4dcf: $f5
	push de                                          ; $4dd0: $d5
	xor  a                                           ; $4dd1: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4dd2: $ea $62 $c3
	ld   a, $40                                      ; $4dd5: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4dd7: $ea $63 $c3
	ld   a, $03                                      ; $4dda: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4ddc: $cd $48 $07
	ld   a, $08                                      ; $4ddf: $3e $08

jr_031_4de1:
	push af                                          ; $4de1: $f5
	ld   b, $00                                      ; $4de2: $06 $00
	ld   c, $40                                      ; $4de4: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $4de6: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4de9: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dea: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4deb: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dec: $cf
	pop  af                                          ; $4ded: $f1
	dec  a                                           ; $4dee: $3d
	jr   nz, jr_031_4de1                             ; $4def: $20 $f0

	pop  hl                                          ; $4df1: $e1
	pop  af                                          ; $4df2: $f1
	ld   de, wBGPalettes                                   ; $4df3: $11 $de $c2
	ld   bc, $0080                                   ; $4df6: $01 $80 $00
	call FarMemCopy                                       ; $4df9: $cd $b2 $09
	ld   bc, $003f                                   ; $4dfc: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4dff: $cd $aa $04
	ret                                              ; $4e02: $c9


Call_031_4e03:
	ld   a, [wWramBank]                                  ; $4e03: $fa $93 $c2
	push af                                          ; $4e06: $f5
	ld   a, $05                                      ; $4e07: $3e $05
	ld   [wWramBank], a                                  ; $4e09: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e0c: $e0 $70
	ld   a, [$cbf9]                                  ; $4e0e: $fa $f9 $cb
	or   a                                           ; $4e11: $b7
	jr   z, jr_031_4e2e                              ; $4e12: $28 $1a

	ld   hl, $d0c6                                   ; $4e14: $21 $c6 $d0
	call Call_031_4e8d                               ; $4e17: $cd $8d $4e
	ld   a, [$c686]                                  ; $4e1a: $fa $86 $c6
	ld   hl, $d0c9                                   ; $4e1d: $21 $c9 $d0
	call Call_031_4e8d                               ; $4e20: $cd $8d $4e
	ld   a, [$cbfa]                                  ; $4e23: $fa $fa $cb
	ld   hl, $d0cc                                   ; $4e26: $21 $cc $d0
	call Call_031_4e8d                               ; $4e29: $cd $8d $4e
	jr   jr_031_4e40                                 ; $4e2c: $18 $12

jr_031_4e2e:
	ld   hl, $d0c6                                   ; $4e2e: $21 $c6 $d0
	call Call_031_4e5f                               ; $4e31: $cd $5f $4e
	ld   hl, $d0c9                                   ; $4e34: $21 $c9 $d0
	call Call_031_4e6d                               ; $4e37: $cd $6d $4e
	ld   hl, $d0cc                                   ; $4e3a: $21 $cc $d0
	call Call_031_4e6d                               ; $4e3d: $cd $6d $4e

jr_031_4e40:
	ld   a, [$c687]                                  ; $4e40: $fa $87 $c6
	ld   hl, $d0cf                                   ; $4e43: $21 $cf $d0
	call Call_031_4e78                               ; $4e46: $cd $78 $4e
	pop  af                                          ; $4e49: $f1
	ld   [wWramBank], a                                  ; $4e4a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e4d: $e0 $70
	ld   a, $05                                      ; $4e4f: $3e $05
	ld   hl, $d080                                   ; $4e51: $21 $80 $d0
	ld   c, $80                                      ; $4e54: $0e $80
	ld   de, $9960                                   ; $4e56: $11 $60 $99
	ld   b, $0c                                      ; $4e59: $06 $0c
	call EnqueueHDMATransfer                                       ; $4e5b: $cd $7c $02
	ret                                              ; $4e5e: $c9


Call_031_4e5f:
	ld   a, $8e                                      ; $4e5f: $3e $8e
	ld   [hl+], a                                    ; $4e61: $22
	inc  a                                           ; $4e62: $3c
	ld   [hl+], a                                    ; $4e63: $22
	inc  a                                           ; $4e64: $3c
	ld   de, $001e                                   ; $4e65: $11 $1e $00
	add  hl, de                                      ; $4e68: $19
	ld   [hl+], a                                    ; $4e69: $22
	inc  a                                           ; $4e6a: $3c
	ld   [hl+], a                                    ; $4e6b: $22
	ret                                              ; $4e6c: $c9


Call_031_4e6d:
	ld   a, $96                                      ; $4e6d: $3e $96
	ld   [hl+], a                                    ; $4e6f: $22
	ld   [hl+], a                                    ; $4e70: $22
	ld   de, $001e                                   ; $4e71: $11 $1e $00
	add  hl, de                                      ; $4e74: $19
	ld   [hl+], a                                    ; $4e75: $22
	ld   [hl+], a                                    ; $4e76: $22
	ret                                              ; $4e77: $c9


Call_031_4e78:
	ld   b, $64                                      ; $4e78: $06 $64
	call Call_031_4eb4                               ; $4e7a: $cd $b4 $4e
	push af                                          ; $4e7d: $f5
	sla  c                                           ; $4e7e: $cb $21
	ld   a, $b0                                      ; $4e80: $3e $b0
	add  c                                           ; $4e82: $81
	ld   [hl+], a                                    ; $4e83: $22
	push hl                                          ; $4e84: $e5
	ld   de, $001f                                   ; $4e85: $11 $1f $00
	add  hl, de                                      ; $4e88: $19
	inc  a                                           ; $4e89: $3c
	ld   [hl], a                                     ; $4e8a: $77
	pop  hl                                          ; $4e8b: $e1
	pop  af                                          ; $4e8c: $f1

Call_031_4e8d:
	ld   b, $0a                                      ; $4e8d: $06 $0a
	call Call_031_4eb4                               ; $4e8f: $cd $b4 $4e
	push af                                          ; $4e92: $f5
	sla  c                                           ; $4e93: $cb $21
	ld   a, $b0                                      ; $4e95: $3e $b0
	add  c                                           ; $4e97: $81
	ld   [hl+], a                                    ; $4e98: $22
	push hl                                          ; $4e99: $e5
	ld   de, $001f                                   ; $4e9a: $11 $1f $00
	add  hl, de                                      ; $4e9d: $19
	inc  a                                           ; $4e9e: $3c
	ld   [hl], a                                     ; $4e9f: $77
	pop  hl                                          ; $4ea0: $e1
	pop  af                                          ; $4ea1: $f1
	ld   b, $01                                      ; $4ea2: $06 $01
	call Call_031_4eb4                               ; $4ea4: $cd $b4 $4e
	sla  c                                           ; $4ea7: $cb $21
	ld   a, $b0                                      ; $4ea9: $3e $b0
	add  c                                           ; $4eab: $81
	ld   [hl+], a                                    ; $4eac: $22
	ld   de, $001f                                   ; $4ead: $11 $1f $00
	add  hl, de                                      ; $4eb0: $19
	inc  a                                           ; $4eb1: $3c
	ld   [hl], a                                     ; $4eb2: $77
	ret                                              ; $4eb3: $c9


Call_031_4eb4:
	ld   c, $00                                      ; $4eb4: $0e $00

jr_031_4eb6:
	cp   b                                           ; $4eb6: $b8
	ret  c                                           ; $4eb7: $d8

	sub  b                                           ; $4eb8: $90
	inc  c                                           ; $4eb9: $0c
	jr   jr_031_4eb6                                 ; $4eba: $18 $fa

Call_031_4ebc:
	ld   hl, $4ed0                                   ; $4ebc: $21 $d0 $4e
	ld   a, [hl+]                                    ; $4ebf: $2a
	ld   [$c68a], a                                  ; $4ec0: $ea $8a $c6
	ld   a, [hl+]                                    ; $4ec3: $2a
	ld   [$c68b], a                                  ; $4ec4: $ea $8b $c6
	ld   a, l                                        ; $4ec7: $7d
	ld   [$c688], a                                  ; $4ec8: $ea $88 $c6
	ld   a, h                                        ; $4ecb: $7c
	ld   [$c689], a                                  ; $4ecc: $ea $89 $c6
	ret                                              ; $4ecf: $c9


	ld   b, $4b                                      ; $4ed0: $06 $4b
	inc  bc                                          ; $4ed2: $03
	ld   c, h                                        ; $4ed3: $4c
	inc  bc                                          ; $4ed4: $03
	ld   c, h                                        ; $4ed5: $4c
	inc  bc                                          ; $4ed6: $03
	ld   c, h                                        ; $4ed7: $4c
	nop                                              ; $4ed8: $00

Call_031_4ed9:
	ld   hl, $c68a                                   ; $4ed9: $21 $8a $c6
	dec  [hl]                                        ; $4edc: $35
	jr   nz, jr_031_4efd                             ; $4edd: $20 $1e

	ld   hl, $c688                                   ; $4edf: $21 $88 $c6
	ld   a, [hl+]                                    ; $4ee2: $2a
	ld   h, [hl]                                     ; $4ee3: $66
	ld   l, a                                        ; $4ee4: $6f

jr_031_4ee5:
	ld   a, [hl+]                                    ; $4ee5: $2a
	or   a                                           ; $4ee6: $b7
	jr   nz, jr_031_4eee                             ; $4ee7: $20 $05

	ld   hl, $4ed0                                   ; $4ee9: $21 $d0 $4e
	jr   jr_031_4ee5                                 ; $4eec: $18 $f7

jr_031_4eee:
	ld   [$c68a], a                                  ; $4eee: $ea $8a $c6
	ld   a, [hl+]                                    ; $4ef1: $2a
	ld   [$c68b], a                                  ; $4ef2: $ea $8b $c6
	ld   a, l                                        ; $4ef5: $7d
	ld   [$c688], a                                  ; $4ef6: $ea $88 $c6
	ld   a, h                                        ; $4ef9: $7c
	ld   [$c689], a                                  ; $4efa: $ea $89 $c6

jr_031_4efd:
	ld   a, $0b                                      ; $4efd: $3e $0b
	ld   [wSpriteGroup], a                                  ; $4eff: $ea $1a $c2
	ld   a, [$c68b]                                  ; $4f02: $fa $8b $c6
	call LoadSpriteFromMainTable                                       ; $4f05: $cd $16 $0e
	ret                                              ; $4f08: $c9


Call_031_4f09:
	ld   a, [wWramBank]                                  ; $4f09: $fa $93 $c2
	push af                                          ; $4f0c: $f5
	ld   a, $06                                      ; $4f0d: $3e $06
	ld   [wWramBank], a                                  ; $4f0f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f12: $e0 $70
	ld   a, $a3                                      ; $4f14: $3e $a3
	ld   hl, $d000                                   ; $4f16: $21 $00 $d0
	ld   de, $4ac6                                   ; $4f19: $11 $c6 $4a
	call RLEXorCopy                                       ; $4f1c: $cd $d2 $09
	ld   hl, $4f60                                   ; $4f1f: $21 $60 $4f
	ld   a, $07                                      ; $4f22: $3e $07

jr_031_4f24:
	push af                                          ; $4f24: $f5
	ld   a, [hl+]                                    ; $4f25: $2a
	ld   b, a                                        ; $4f26: $47
	ld   a, [hl+]                                    ; $4f27: $2a
	push hl                                          ; $4f28: $e5
	ld   l, b                                        ; $4f29: $68
	ld   h, a                                        ; $4f2a: $67
	push af                                          ; $4f2b: $f5
	ld   a, $d7                                      ; $4f2c: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4f2e: $ea $98 $c2
	ld   a, $71                                      ; $4f31: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $4f33: $ea $99 $c2
	ld   a, $0c                                      ; $4f36: $3e $0c
	ld   [wFarCallBank], a                                  ; $4f38: $ea $9a $c2
	pop  af                                          ; $4f3b: $f1
	call FarCall                                       ; $4f3c: $cd $62 $09
	pop  hl                                          ; $4f3f: $e1
	or   a                                           ; $4f40: $b7
	jr   nz, jr_031_4f51                             ; $4f41: $20 $0e

	push hl                                          ; $4f43: $e5
	ld   a, [hl+]                                    ; $4f44: $2a
	ld   c, a                                        ; $4f45: $4f
	ld   a, [hl+]                                    ; $4f46: $2a
	ld   b, a                                        ; $4f47: $47
	ld   a, [hl+]                                    ; $4f48: $2a
	ld   h, [hl]                                     ; $4f49: $66
	ld   l, a                                        ; $4f4a: $6f
	ld   a, $80                                      ; $4f4b: $3e $80
	call MemSet                                       ; $4f4d: $cd $96 $09
	pop  hl                                          ; $4f50: $e1

jr_031_4f51:
	ld   de, $0004                                   ; $4f51: $11 $04 $00
	add  hl, de                                      ; $4f54: $19
	pop  af                                          ; $4f55: $f1
	dec  a                                           ; $4f56: $3d
	jr   nz, jr_031_4f24                             ; $4f57: $20 $cb

	pop  af                                          ; $4f59: $f1
	ld   [wWramBank], a                                  ; $4f5a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f5d: $e0 $70
	ret                                              ; $4f5f: $c9


	ld   c, b                                        ; $4f60: $48
	ld   bc, $0100                                   ; $4f61: $01 $00 $01
	nop                                              ; $4f64: $00
	pop  de                                          ; $4f65: $d1
	ld   c, h                                        ; $4f66: $4c
	ld   bc, $0100                                   ; $4f67: $01 $00 $01
	nop                                              ; $4f6a: $00
	jp   nc, $0150                                   ; $4f6b: $d2 $50 $01

	nop                                              ; $4f6e: $00
	ld   bc, $d300                                   ; $4f6f: $01 $00 $d3
	ld   d, h                                        ; $4f72: $54
	ld   bc, $0100                                   ; $4f73: $01 $00 $01
	nop                                              ; $4f76: $00
	call nc, $0158                                   ; $4f77: $d4 $58 $01
	nop                                              ; $4f7a: $00
	ld   bc, $d500                                   ; $4f7b: $01 $00 $d5
	ld   e, h                                        ; $4f7e: $5c
	ld   bc, $0100                                   ; $4f7f: $01 $00 $01
	nop                                              ; $4f82: $00
	sub  $e4                                         ; $4f83: $d6 $e4
	ld   bc, $0900                                   ; $4f85: $01 $00 $09
	nop                                              ; $4f88: $00
	rst  $10                                         ; $4f89: $d7


GameState08::
	ld   a, [wGameSubstate]                                  ; $4f8a: $fa $a1 $c2
	rst  JumpTable                                         ; $4f8d: $df
	sub  h                                           ; $4f8e: $94
	ld   c, a                                        ; $4f8f: $4f
	ld   l, a                                        ; $4f90: $6f
	ld   d, c                                        ; $4f91: $51
	ld   d, d                                        ; $4f92: $52
	ld   d, c                                        ; $4f93: $51
	call TurnOffLCD                                       ; $4f94: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $4f97: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $4f9a: $fa $03 $c2
	and  $e0                                         ; $4f9d: $e6 $e0
	or   $07                                         ; $4f9f: $f6 $07
	ld   [wLCDC], a                                  ; $4fa1: $ea $03 $c2
	ld   a, $ff                                      ; $4fa4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4fa6: $ea $0e $c2
	ld   a, $0c                                      ; $4fa9: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4fab: $ea $13 $c2
	ld   a, $04                                      ; $4fae: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4fb0: $ea $14 $c2
	call ClearOam                                       ; $4fb3: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $4fb6: $cd $c9 $2e
	push af                                          ; $4fb9: $f5
	ld   a, $1a                                      ; $4fba: $3e $1a
	ld   [wFarCallAddr], a                                  ; $4fbc: $ea $98 $c2
	ld   a, $48                                      ; $4fbf: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $4fc1: $ea $99 $c2
	ld   a, $0a                                      ; $4fc4: $3e $0a
	ld   [wFarCallBank], a                                  ; $4fc6: $ea $9a $c2
	pop  af                                          ; $4fc9: $f1
	call FarCall                                       ; $4fca: $cd $62 $09
	push af                                          ; $4fcd: $f5
	ld   a, $34                                      ; $4fce: $3e $34
	ld   [wFarCallAddr], a                                  ; $4fd0: $ea $98 $c2
	ld   a, $49                                      ; $4fd3: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $4fd5: $ea $99 $c2
	ld   a, $0a                                      ; $4fd8: $3e $0a
	ld   [wFarCallBank], a                                  ; $4fda: $ea $9a $c2
	pop  af                                          ; $4fdd: $f1
	call FarCall                                       ; $4fde: $cd $62 $09
	ld   bc, $0001                                   ; $4fe1: $01 $01 $00
	push af                                          ; $4fe4: $f5
	ld   a, $ba                                      ; $4fe5: $3e $ba
	ld   [wFarCallAddr], a                                  ; $4fe7: $ea $98 $c2
	ld   a, $54                                      ; $4fea: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4fec: $ea $99 $c2
	ld   a, $0a                                      ; $4fef: $3e $0a
	ld   [wFarCallBank], a                                  ; $4ff1: $ea $9a $c2
	pop  af                                          ; $4ff4: $f1
	call FarCall                                       ; $4ff5: $cd $62 $09
	ld   a, [wWramBank]                                  ; $4ff8: $fa $93 $c2
	push af                                          ; $4ffb: $f5
	ld   a, $02                                      ; $4ffc: $3e $02
	ld   [wWramBank], a                                  ; $4ffe: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5001: $e0 $70
	ld   c, $80                                      ; $5003: $0e $80
	ld   de, $9000                                   ; $5005: $11 $00 $90
	ld   a, $02                                      ; $5008: $3e $02
	ld   hl, $7080                                   ; $500a: $21 $80 $70
	ld   b, $01                                      ; $500d: $06 $01
	call EnqueueHDMATransfer                                       ; $500f: $cd $7c $02
	ld   hl, $d000                                   ; $5012: $21 $00 $d0
	ld   bc, $00a0                                   ; $5015: $01 $a0 $00
	ld   de, $0303                                   ; $5018: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $501b: $cd $9f $09
	ld   hl, $d140                                   ; $501e: $21 $40 $d1
	ld   bc, $00a0                                   ; $5021: $01 $a0 $00
	ld   de, $0000                                   ; $5024: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5027: $cd $9f $09
	ld   c, $80                                      ; $502a: $0e $80
	ld   de, $9800                                   ; $502c: $11 $00 $98
	ld   a, $02                                      ; $502f: $3e $02
	ld   hl, $d140                                   ; $5031: $21 $40 $d1
	ld   b, $14                                      ; $5034: $06 $14
	call EnqueueHDMATransfer                                       ; $5036: $cd $7c $02
	ld   c, $81                                      ; $5039: $0e $81
	ld   de, $9800                                   ; $503b: $11 $00 $98
	ld   a, $02                                      ; $503e: $3e $02
	ld   hl, $d000                                   ; $5040: $21 $00 $d0
	ld   b, $14                                      ; $5043: $06 $14
	call EnqueueHDMATransfer                                       ; $5045: $cd $7c $02
	pop  af                                          ; $5048: $f1
	ld   [wWramBank], a                                  ; $5049: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $504c: $e0 $70
	ld   a, $01                                      ; $504e: $3e $01
	ldh  [rVBK], a                                   ; $5050: $e0 $4f
	ld   a, $34                                      ; $5052: $3e $34
	ld   hl, $8800                                   ; $5054: $21 $00 $88
	ld   de, $731a                                   ; $5057: $11 $1a $73
	call RLEXorCopy                                       ; $505a: $cd $d2 $09
	ld   a, $01                                      ; $505d: $3e $01
	ldh  [rVBK], a                                   ; $505f: $e0 $4f
	ld   hl, $9965                                   ; $5061: $21 $65 $99
	ld   a, $32                                      ; $5064: $3e $32
	ld   de, $7ede                                   ; $5066: $11 $de $7e
	ld   bc, $0e06                                   ; $5069: $01 $06 $0e
	call FarCopyLayout                                       ; $506c: $cd $2c $0b
	xor  a                                           ; $506f: $af
	ldh  [rVBK], a                                   ; $5070: $e0 $4f
	ld   hl, $9965                                   ; $5072: $21 $65 $99
	ld   a, $32                                      ; $5075: $3e $32
	call FarCopyLayout                                       ; $5077: $cd $2c $0b
	ld   a, [wWramBank]                                  ; $507a: $fa $93 $c2
	push af                                          ; $507d: $f5
	ld   a, $05                                      ; $507e: $3e $05
	ld   [wWramBank], a                                  ; $5080: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5083: $e0 $70
	xor  a                                           ; $5085: $af
	ldh  [rVBK], a                                   ; $5086: $e0 $4f
	ld   hl, $99a0                                   ; $5088: $21 $a0 $99
	ld   de, $d080                                   ; $508b: $11 $80 $d0
	ld   bc, $0040                                   ; $508e: $01 $40 $00
	call MemCopy                                       ; $5091: $cd $a9 $09
	pop  af                                          ; $5094: $f1
	ld   [wWramBank], a                                  ; $5095: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5098: $e0 $70
	xor  a                                           ; $509a: $af
	ld   [$cbf7], a                                  ; $509b: $ea $f7 $cb
	ld   [$cbf8], a                                  ; $509e: $ea $f8 $cb
	ld   [$c67e], a                                  ; $50a1: $ea $7e $c6
	ld   a, $ff                                      ; $50a4: $3e $ff
	ld   [$c67b], a                                  ; $50a6: $ea $7b $c6

jr_031_50a9:
	ld   hl, $c67b                                   ; $50a9: $21 $7b $c6
	inc  [hl]                                        ; $50ac: $34
	ld   a, [hl]                                     ; $50ad: $7e
	call Call_031_598b                               ; $50ae: $cd $8b $59
	or   a                                           ; $50b1: $b7
	jr   z, jr_031_50a9                              ; $50b2: $28 $f5

	ld   a, $ff                                      ; $50b4: $3e $ff
	ld   [$c67c], a                                  ; $50b6: $ea $7c $c6

jr_031_50b9:
	ld   hl, $c67c                                   ; $50b9: $21 $7c $c6
	inc  [hl]                                        ; $50bc: $34
	call $59cc                                       ; $50bd: $cd $cc $59
	call Call_031_58d2                               ; $50c0: $cd $d2 $58
	or   a                                           ; $50c3: $b7
	jr   z, jr_031_50b9                              ; $50c4: $28 $f3

	ld   a, $01                                      ; $50c6: $3e $01
	ld   [$cbfb], a                                  ; $50c8: $ea $fb $cb
	xor  a                                           ; $50cb: $af
	ld   [$cbfc], a                                  ; $50cc: $ea $fc $cb
	ld   [$cbfd], a                                  ; $50cf: $ea $fd $cb
	ld   a, $01                                      ; $50d2: $3e $01
	ld   [$cbfe], a                                  ; $50d4: $ea $fe $cb
	xor  a                                           ; $50d7: $af
	ld   [$cc00], a                                  ; $50d8: $ea $00 $cc
	ld   [$cc01], a                                  ; $50db: $ea $01 $cc
	call Call_031_5904                               ; $50de: $cd $04 $59
	call Call_031_5817                               ; $50e1: $cd $17 $58
	call Call_031_5885                               ; $50e4: $cd $85 $58
	ld   a, [wWramBank]                                  ; $50e7: $fa $93 $c2
	push af                                          ; $50ea: $f5
	ld   a, $05                                      ; $50eb: $3e $05
	ld   [wWramBank], a                                  ; $50ed: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $50f0: $e0 $70
	ld   hl, $d000                                   ; $50f2: $21 $00 $d0
	ld   bc, $0040                                   ; $50f5: $01 $40 $00
	ld   de, $7fff                                   ; $50f8: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $50fb: $cd $9f $09
	ld   hl, wBGPalettes                                   ; $50fe: $21 $de $c2
	ld   de, $d000                                   ; $5101: $11 $00 $d0
	ld   bc, $0018                                   ; $5104: $01 $18 $00
	call MemCopy                                       ; $5107: $cd $a9 $09
	ld   a, $32                                      ; $510a: $3e $32
	ld   hl, $7fe6                                   ; $510c: $21 $e6 $7f
	ld   de, $d078                                   ; $510f: $11 $78 $d0
	ld   bc, $0008                                   ; $5112: $01 $08 $00
	call FarMemCopy                                       ; $5115: $cd $b2 $09
	ld   a, $01                                      ; $5118: $3e $01
	ld   hl, $7000                                   ; $511a: $21 $00 $70
	ld   de, wBGPalettes                                   ; $511d: $11 $de $c2
	ld   bc, $0080                                   ; $5120: $01 $80 $00
	call FarMemCopy                                       ; $5123: $cd $b2 $09
	pop  af                                          ; $5126: $f1
	ld   [wWramBank], a                                  ; $5127: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $512a: $e0 $70
	call TurnOnLCD                                       ; $512c: $cd $09 $09
	ld   a, [wWramBank]                                  ; $512f: $fa $93 $c2
	push af                                          ; $5132: $f5
	ld   a, $05                                      ; $5133: $3e $05
	ld   [wWramBank], a                                  ; $5135: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5138: $e0 $70
	ld   b, $01                                      ; $513a: $06 $01
	ld   hl, $7000                                   ; $513c: $21 $00 $70
	ld   c, $00                                      ; $513f: $0e $00
	ld   de, $d000                                   ; $5141: $11 $00 $d0
	call Call_031_57e2                               ; $5144: $cd $e2 $57
	pop  af                                          ; $5147: $f1
	ld   [wWramBank], a                                  ; $5148: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $514b: $e0 $70
	ld   hl, wGameSubstate                                   ; $514d: $21 $a1 $c2
	inc  [hl]                                        ; $5150: $34
	ret                                              ; $5151: $c9


	ld   b, $00                                      ; $5152: $06 $00
	ld   hl, wBGPalettes                                   ; $5154: $21 $de $c2
	ld   c, $01                                      ; $5157: $0e $01
	ld   de, $7000                                   ; $5159: $11 $00 $70
	call Call_031_57e2                               ; $515c: $cd $e2 $57
	call TurnOffLCD                                       ; $515f: $cd $e3 $08
	ld   a, [$c678]                                  ; $5162: $fa $78 $c6
	ld   [wGameState], a                                  ; $5165: $ea $a0 $c2
	ld   a, [$c679]                                  ; $5168: $fa $79 $c6
	ld   [wGameSubstate], a                                  ; $516b: $ea $a1 $c2
	ret                                              ; $516e: $c9


	call ClearOam                                       ; $516f: $cd $d7 $0d
	ld   bc, $5185                                   ; $5172: $01 $85 $51
	push bc                                          ; $5175: $c5
	ld   a, [$cbf7]                                  ; $5176: $fa $f7 $cb
	ld   h, $00                                      ; $5179: $26 $00
	ld   l, a                                        ; $517b: $6f
	add  hl, hl                                      ; $517c: $29
	ld   bc, $5188                                   ; $517d: $01 $88 $51
	add  hl, bc                                      ; $5180: $09
	ld   a, [hl+]                                    ; $5181: $2a
	ld   h, [hl]                                     ; $5182: $66
	ld   l, a                                        ; $5183: $6f
	jp   hl                                          ; $5184: $e9


	jp   AnimateAllAnimatedSpriteSpecs                                       ; $5185: $c3 $d3 $2e


	and  d                                           ; $5188: $a2
	ld   d, c                                        ; $5189: $51
	ld   d, b                                        ; $518a: $50
	ld   d, d                                        ; $518b: $52
	ld   de, $1a53                                   ; $518c: $11 $53 $1a
	ld   d, e                                        ; $518f: $53
	ldh  [rHDMA3], a                                 ; $5190: $e0 $53
	ld   l, e                                        ; $5192: $6b
	ld   d, h                                        ; $5193: $54
	cp   [hl]                                        ; $5194: $be
	ld   d, h                                        ; $5195: $54
	daa                                              ; $5196: $27
	ld   d, l                                        ; $5197: $55
	jr   nc, jr_031_51ef                             ; $5198: $30 $55

	or   $55                                         ; $519a: $f6 $55
	ld   [hl], d                                     ; $519c: $72
	ld   d, [hl]                                     ; $519d: $56
	rst  ToBoot                                         ; $519e: $c7
	ld   d, [hl]                                     ; $519f: $56
	dec  de                                          ; $51a0: $1b
	ld   d, a                                        ; $51a1: $57
	ld   a, $00                                      ; $51a2: $3e $00
	ld   [$c67a], a                                  ; $51a4: $ea $7a $c6
	ld   bc, $5d6d                                   ; $51a7: $01 $6d $5d
	call Call_031_58a2                               ; $51aa: $cd $a2 $58
	ld   a, [wInGameButtonsPressed]                                  ; $51ad: $fa $10 $c2
	bit  0, a                                        ; $51b0: $cb $47
	jr   z, jr_031_51c4                              ; $51b2: $28 $10

	call Call_031_5a2e                               ; $51b4: $cd $2e $5a
	ld   [$cbf7], a                                  ; $51b7: $ea $f7 $cb
	xor  a                                           ; $51ba: $af
	ld   [$cbf8], a                                  ; $51bb: $ea $f8 $cb
	ld   a, $21                                      ; $51be: $3e $21
	call PlaySoundEffect                                       ; $51c0: $cd $df $1a
	ret                                              ; $51c3: $c9


jr_031_51c4:
	bit  1, a                                        ; $51c4: $cb $4f
	jr   z, jr_031_51d2                              ; $51c6: $28 $0a

	ld   hl, wGameSubstate                                   ; $51c8: $21 $a1 $c2
	inc  [hl]                                        ; $51cb: $34
	ld   a, $22                                      ; $51cc: $3e $22
	call PlaySoundEffect                                       ; $51ce: $cd $df $1a
	ret                                              ; $51d1: $c9


jr_031_51d2:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $51d2: $fa $11 $c2
	bit  5, a                                        ; $51d5: $cb $6f
	jr   z, jr_031_51e4                              ; $51d7: $28 $0b

	ld   a, $01                                      ; $51d9: $3e $01
	ld   [$cbf7], a                                  ; $51db: $ea $f7 $cb
	ld   a, $20                                      ; $51de: $3e $20
	call PlaySoundEffect                                       ; $51e0: $cd $df $1a
	ret                                              ; $51e3: $c9


jr_031_51e4:
	bit  4, a                                        ; $51e4: $cb $67
	jr   z, jr_031_51f3                              ; $51e6: $28 $0b

	ld   a, $01                                      ; $51e8: $3e $01
	ld   [$cbf7], a                                  ; $51ea: $ea $f7 $cb
	ld   a, $20                                      ; $51ed: $3e $20

jr_031_51ef:
	call PlaySoundEffect                                       ; $51ef: $cd $df $1a
	ret                                              ; $51f2: $c9


jr_031_51f3:
	bit  7, a                                        ; $51f3: $cb $7f
	jr   z, jr_031_5212                              ; $51f5: $28 $1b

	ld   a, [$c67b]                                  ; $51f7: $fa $7b $c6

jr_031_51fa:
	inc  a                                           ; $51fa: $3c
	cp   $07                                         ; $51fb: $fe $07
	jr   c, jr_031_5200                              ; $51fd: $38 $01

	xor  a                                           ; $51ff: $af

jr_031_5200:
	ld   b, a                                        ; $5200: $47
	push bc                                          ; $5201: $c5
	call Call_031_598b                               ; $5202: $cd $8b $59
	or   a                                           ; $5205: $b7
	pop  bc                                          ; $5206: $c1
	ld   a, b                                        ; $5207: $78
	jr   z, jr_031_51fa                              ; $5208: $28 $f0

	ld   hl, $c67b                                   ; $520a: $21 $7b $c6
	cp   [hl]                                        ; $520d: $be
	ret  z                                           ; $520e: $c8

	ld   [hl], a                                     ; $520f: $77
	jr   jr_031_5232                                 ; $5210: $18 $20

jr_031_5212:
	bit  6, a                                        ; $5212: $cb $77
	jr   z, jr_031_5231                              ; $5214: $28 $1b

	ld   a, [$c67b]                                  ; $5216: $fa $7b $c6

jr_031_5219:
	sub  $01                                         ; $5219: $d6 $01
	jr   nc, jr_031_521f                             ; $521b: $30 $02

	ld   a, $06                                      ; $521d: $3e $06

jr_031_521f:
	ld   b, a                                        ; $521f: $47
	push bc                                          ; $5220: $c5
	call Call_031_598b                               ; $5221: $cd $8b $59
	or   a                                           ; $5224: $b7
	pop  bc                                          ; $5225: $c1
	ld   a, b                                        ; $5226: $78
	jr   z, jr_031_5219                              ; $5227: $28 $f0

	ld   hl, $c67b                                   ; $5229: $21 $7b $c6
	cp   [hl]                                        ; $522c: $be
	ret  z                                           ; $522d: $c8

	ld   [hl], a                                     ; $522e: $77
	jr   jr_031_5232                                 ; $522f: $18 $01

jr_031_5231:
	ret                                              ; $5231: $c9


jr_031_5232:
	ld   a, $20                                      ; $5232: $3e $20
	call PlaySoundEffect                                       ; $5234: $cd $df $1a
	call Call_031_5904                               ; $5237: $cd $04 $59
	ld   a, $ff                                      ; $523a: $3e $ff
	ld   [$c67c], a                                  ; $523c: $ea $7c $c6

jr_031_523f:
	ld   hl, $c67c                                   ; $523f: $21 $7c $c6
	inc  [hl]                                        ; $5242: $34
	call $59cc                                       ; $5243: $cd $cc $59
	call Call_031_58d2                               ; $5246: $cd $d2 $58
	or   a                                           ; $5249: $b7
	jr   z, jr_031_523f                              ; $524a: $28 $f3

	call Call_031_5817                               ; $524c: $cd $17 $58
	ret                                              ; $524f: $c9


	ld   a, $01                                      ; $5250: $3e $01
	ld   [$c67a], a                                  ; $5252: $ea $7a $c6
	ld   bc, $7d6d                                   ; $5255: $01 $6d $7d
	call Call_031_58a2                               ; $5258: $cd $a2 $58
	ld   a, [wInGameButtonsPressed]                                  ; $525b: $fa $10 $c2
	bit  0, a                                        ; $525e: $cb $47
	jr   z, jr_031_5272                              ; $5260: $28 $10

	call Call_031_5a2e                               ; $5262: $cd $2e $5a
	ld   [$cbf7], a                                  ; $5265: $ea $f7 $cb
	xor  a                                           ; $5268: $af
	ld   [$cbf8], a                                  ; $5269: $ea $f8 $cb
	ld   a, $21                                      ; $526c: $3e $21
	call PlaySoundEffect                                       ; $526e: $cd $df $1a
	ret                                              ; $5271: $c9


jr_031_5272:
	bit  1, a                                        ; $5272: $cb $4f
	jr   z, jr_031_5280                              ; $5274: $28 $0a

	ld   hl, wGameSubstate                                   ; $5276: $21 $a1 $c2
	inc  [hl]                                        ; $5279: $34
	ld   a, $22                                      ; $527a: $3e $22
	call PlaySoundEffect                                       ; $527c: $cd $df $1a
	ret                                              ; $527f: $c9


jr_031_5280:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $5280: $fa $11 $c2
	bit  5, a                                        ; $5283: $cb $6f
	jr   z, jr_031_5292                              ; $5285: $28 $0b

	ld   a, $00                                      ; $5287: $3e $00
	ld   [$cbf7], a                                  ; $5289: $ea $f7 $cb
	ld   a, $20                                      ; $528c: $3e $20
	call PlaySoundEffect                                       ; $528e: $cd $df $1a
	ret                                              ; $5291: $c9


jr_031_5292:
	bit  4, a                                        ; $5292: $cb $67
	jr   z, jr_031_52a1                              ; $5294: $28 $0b

	ld   a, $00                                      ; $5296: $3e $00
	ld   [$cbf7], a                                  ; $5298: $ea $f7 $cb
	ld   a, $20                                      ; $529b: $3e $20
	call PlaySoundEffect                                       ; $529d: $cd $df $1a
	ret                                              ; $52a0: $c9


jr_031_52a1:
	ld   a, [wWramBank]                                  ; $52a1: $fa $93 $c2
	push af                                          ; $52a4: $f5
	ld   a, $06                                      ; $52a5: $3e $06
	ld   [wWramBank], a                                  ; $52a7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $52aa: $e0 $70
	ld   a, [wInGameStickyButtonsPressed]                                  ; $52ac: $fa $11 $c2
	bit  6, a                                        ; $52af: $cb $77
	jr   z, jr_031_52d8                              ; $52b1: $28 $25

	ld   a, [$c67c]                                  ; $52b3: $fa $7c $c6
	push af                                          ; $52b6: $f5

jr_031_52b7:
	call Call_031_59b9                               ; $52b7: $cd $b9 $59
	ld   b, a                                        ; $52ba: $47
	dec  b                                           ; $52bb: $05
	ld   hl, $c67c                                   ; $52bc: $21 $7c $c6
	ld   a, [hl]                                     ; $52bf: $7e
	sub  $01                                         ; $52c0: $d6 $01
	jr   nc, jr_031_52c5                             ; $52c2: $30 $01

	ld   a, b                                        ; $52c4: $78

jr_031_52c5:
	ld   [hl], a                                     ; $52c5: $77
	call $59cc                                       ; $52c6: $cd $cc $59
	call Call_031_58d2                               ; $52c9: $cd $d2 $58
	or   a                                           ; $52cc: $b7
	jr   z, jr_031_52b7                              ; $52cd: $28 $e8

	pop  bc                                          ; $52cf: $c1
	ld   a, [$c67c]                                  ; $52d0: $fa $7c $c6
	cp   b                                           ; $52d3: $b8
	jr   z, jr_031_530a                              ; $52d4: $28 $34

	jr   jr_031_5302                                 ; $52d6: $18 $2a

jr_031_52d8:
	bit  7, a                                        ; $52d8: $cb $7f
	jr   z, jr_031_5300                              ; $52da: $28 $24

	ld   a, [$c67c]                                  ; $52dc: $fa $7c $c6
	push af                                          ; $52df: $f5

jr_031_52e0:
	call Call_031_59b9                               ; $52e0: $cd $b9 $59
	ld   b, a                                        ; $52e3: $47
	ld   hl, $c67c                                   ; $52e4: $21 $7c $c6
	ld   a, [hl]                                     ; $52e7: $7e
	inc  a                                           ; $52e8: $3c
	cp   b                                           ; $52e9: $b8
	jr   c, jr_031_52ed                              ; $52ea: $38 $01

	xor  a                                           ; $52ec: $af

jr_031_52ed:
	ld   [hl], a                                     ; $52ed: $77
	call $59cc                                       ; $52ee: $cd $cc $59
	call Call_031_58d2                               ; $52f1: $cd $d2 $58
	or   a                                           ; $52f4: $b7
	jr   z, jr_031_52e0                              ; $52f5: $28 $e9

	pop  bc                                          ; $52f7: $c1
	ld   a, [$c67c]                                  ; $52f8: $fa $7c $c6
	cp   b                                           ; $52fb: $b8
	jr   z, jr_031_530a                              ; $52fc: $28 $0c

	jr   jr_031_5302                                 ; $52fe: $18 $02

jr_031_5300:
	jr   jr_031_530a                                 ; $5300: $18 $08

jr_031_5302:
	call Call_031_5817                               ; $5302: $cd $17 $58
	ld   a, $20                                      ; $5305: $3e $20
	call PlaySoundEffect                                       ; $5307: $cd $df $1a

jr_031_530a:
	pop  af                                          ; $530a: $f1
	ld   [wWramBank], a                                  ; $530b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $530e: $e0 $70
	ret                                              ; $5310: $c9


	ld   hl, $cbf7                                   ; $5311: $21 $f7 $cb
	inc  [hl]                                        ; $5314: $34
	xor  a                                           ; $5315: $af
	ld   [$cbf8], a                                  ; $5316: $ea $f8 $cb
	ret                                              ; $5319: $c9


	ld   a, [$cbf8]                                  ; $531a: $fa $f8 $cb
	or   a                                           ; $531d: $b7
	jr   nz, jr_031_5339                             ; $531e: $20 $19

	ld   a, $04                                      ; $5320: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5322: $ea $62 $c3
	ld   a, $30                                      ; $5325: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5327: $ea $63 $c3
	ld   a, $02                                      ; $532a: $3e $02
	ld   b, $00                                      ; $532c: $06 $00
	ld   hl, wBGPalettes                                   ; $532e: $21 $de $c2
	ld   c, $01                                      ; $5331: $0e $01
	ld   de, $7000                                   ; $5333: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5336: $cd $48 $07

jr_031_5339:
	ld   hl, $cbf8                                   ; $5339: $21 $f8 $cb
	ld   a, [hl]                                     ; $533c: $7e
	inc  [hl]                                        ; $533d: $34
	ld   bc, $0430                                   ; $533e: $01 $30 $04
	cp   $03                                         ; $5341: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $5343: $da $32 $08

	ld   a, $01                                      ; $5346: $3e $01
	ld   hl, $7000                                   ; $5348: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $534b: $11 $e6 $c2
	ld   bc, $0060                                   ; $534e: $01 $60 $00
	call FarMemCopy                                       ; $5351: $cd $b2 $09
	ld   bc, $0433                                   ; $5354: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5357: $cd $aa $04
	ld   a, [$c67e]                                  ; $535a: $fa $7e $c6
	or   a                                           ; $535d: $b7
	push af                                          ; $535e: $f5
	ld   a, $02                                      ; $535f: $3e $02
	ld   [wFarCallAddr], a                                  ; $5361: $ea $98 $c2
	ld   a, $64                                      ; $5364: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $5366: $ea $99 $c2
	ld   a, $0b                                      ; $5369: $3e $0b
	ld   [wFarCallBank], a                                  ; $536b: $ea $9a $c2
	pop  af                                          ; $536e: $f1
	call nz, FarCall                                   ; $536f: $c4 $62 $09
	ld   a, [wWramBank]                                  ; $5372: $fa $93 $c2
	push af                                          ; $5375: $f5
	ld   a, $02                                      ; $5376: $3e $02
	ld   [wWramBank], a                                  ; $5378: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $537b: $e0 $70
	ld   c, $80                                      ; $537d: $0e $80
	ld   de, $9000                                   ; $537f: $11 $00 $90
	ld   a, $02                                      ; $5382: $3e $02
	ld   hl, $7080                                   ; $5384: $21 $80 $70
	ld   b, $01                                      ; $5387: $06 $01
	call EnqueueHDMATransfer                                       ; $5389: $cd $7c $02
	ld   hl, $d000                                   ; $538c: $21 $00 $d0
	ld   bc, $00a0                                   ; $538f: $01 $a0 $00
	ld   de, $0303                                   ; $5392: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $5395: $cd $9f $09
	ld   hl, $d140                                   ; $5398: $21 $40 $d1
	ld   bc, $00a0                                   ; $539b: $01 $a0 $00
	ld   de, $0000                                   ; $539e: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $53a1: $cd $9f $09
	ld   c, $80                                      ; $53a4: $0e $80
	ld   de, $9800                                   ; $53a6: $11 $00 $98
	ld   a, $02                                      ; $53a9: $3e $02
	ld   hl, $d140                                   ; $53ab: $21 $40 $d1
	ld   b, $14                                      ; $53ae: $06 $14
	call EnqueueHDMATransfer                                       ; $53b0: $cd $7c $02
	ld   c, $81                                      ; $53b3: $0e $81
	ld   de, $9800                                   ; $53b5: $11 $00 $98
	ld   a, $02                                      ; $53b8: $3e $02
	ld   hl, $d000                                   ; $53ba: $21 $00 $d0
	ld   b, $14                                      ; $53bd: $06 $14
	call EnqueueHDMATransfer                                       ; $53bf: $cd $7c $02
	pop  af                                          ; $53c2: $f1
	ld   [wWramBank], a                                  ; $53c3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53c6: $e0 $70
	ld   a, [$c67d]                                  ; $53c8: $fa $7d $c6
	ld   [$c67e], a                                  ; $53cb: $ea $7e $c6
	bit  7, a                                        ; $53ce: $cb $7f
	jr   nz, jr_031_53d6                             ; $53d0: $20 $04

	ld   a, $04                                      ; $53d2: $3e $04
	jr   jr_031_53d8                                 ; $53d4: $18 $02

jr_031_53d6:
	ld   a, $09                                      ; $53d6: $3e $09

jr_031_53d8:
	ld   [$cbf7], a                                  ; $53d8: $ea $f7 $cb
	xor  a                                           ; $53db: $af
	ld   [$cbf8], a                                  ; $53dc: $ea $f8 $cb
	ret                                              ; $53df: $c9


	ld   hl, $cbf8                                   ; $53e0: $21 $f8 $cb
	ld   a, [hl]                                     ; $53e3: $7e
	inc  [hl]                                        ; $53e4: $34
	or   a                                           ; $53e5: $b7
	jr   nz, jr_031_5416                             ; $53e6: $20 $2e

	ld   a, [$cbfb]                                  ; $53e8: $fa $fb $cb
	push af                                          ; $53eb: $f5
	ld   a, $cd                                      ; $53ec: $3e $cd
	ld   [wFarCallAddr], a                                  ; $53ee: $ea $98 $c2
	ld   a, $66                                      ; $53f1: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $53f3: $ea $99 $c2
	ld   a, $0b                                      ; $53f6: $3e $0b
	ld   [wFarCallBank], a                                  ; $53f8: $ea $9a $c2
	pop  af                                          ; $53fb: $f1
	call FarCall                                       ; $53fc: $cd $62 $09
	ld   [$cbfc], a                                  ; $53ff: $ea $fc $cb
	push af                                          ; $5402: $f5
	ld   a, $1a                                      ; $5403: $3e $1a
	ld   [wFarCallAddr], a                                  ; $5405: $ea $98 $c2
	ld   a, $64                                      ; $5408: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $540a: $ea $99 $c2
	ld   a, $0b                                      ; $540d: $3e $0b
	ld   [wFarCallBank], a                                  ; $540f: $ea $9a $c2
	pop  af                                          ; $5412: $f1
	call FarCall                                       ; $5413: $cd $62 $09

jr_031_5416:
	ld   a, [$cbf8]                                  ; $5416: $fa $f8 $cb
	dec  a                                           ; $5419: $3d
	ld   h, a                                        ; $541a: $67
	ld   a, [$cbfb]                                  ; $541b: $fa $fb $cb
	ld   l, a                                        ; $541e: $6f
	push af                                          ; $541f: $f5
	ld   a, $70                                      ; $5420: $3e $70
	ld   [wFarCallAddr], a                                  ; $5422: $ea $98 $c2
	ld   a, $59                                      ; $5425: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $5427: $ea $99 $c2
	ld   a, $0b                                      ; $542a: $3e $0b
	ld   [wFarCallBank], a                                  ; $542c: $ea $9a $c2
	pop  af                                          ; $542f: $f1
	call FarCall                                       ; $5430: $cd $62 $09
	bit  7, a                                        ; $5433: $cb $7f
	ret  nz                                          ; $5435: $c0

	ld   [$cbfd], a                                  ; $5436: $ea $fd $cb
	ld   a, [wWramBank]                                  ; $5439: $fa $93 $c2
	push af                                          ; $543c: $f5
	ld   a, $02                                      ; $543d: $3e $02
	ld   [wWramBank], a                                  ; $543f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5442: $e0 $70
	ld   de, $da08                                   ; $5444: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $5447: $21 $e6 $c2
	ld   bc, $0060                                   ; $544a: $01 $60 $00
	call MemCopy                                       ; $544d: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $5450: $21 $e6 $c2
	ld   bc, $0030                                   ; $5453: $01 $30 $00
	ld   de, $7fff                                   ; $5456: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5459: $cd $9f $09
	pop  af                                          ; $545c: $f1
	ld   [wWramBank], a                                  ; $545d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5460: $e0 $70
	ld   hl, $cbf7                                   ; $5462: $21 $f7 $cb
	inc  [hl]                                        ; $5465: $34
	xor  a                                           ; $5466: $af
	ld   [$cbf8], a                                  ; $5467: $ea $f8 $cb
	ret                                              ; $546a: $c9


	ld   c, $00                                      ; $546b: $0e $00
	ld   a, [$cbfd]                                  ; $546d: $fa $fd $cb
	and  $0f                                         ; $5470: $e6 $0f
	or   a                                           ; $5472: $b7
	jr   nz, jr_031_5477                             ; $5473: $20 $02

	ld   c, $01                                      ; $5475: $0e $01

jr_031_5477:
	ld   b, a                                        ; $5477: $47
	push af                                          ; $5478: $f5
	ld   a, $ba                                      ; $5479: $3e $ba
	ld   [wFarCallAddr], a                                  ; $547b: $ea $98 $c2
	ld   a, $54                                      ; $547e: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $5480: $ea $99 $c2
	ld   a, $0a                                      ; $5483: $3e $0a
	ld   [wFarCallBank], a                                  ; $5485: $ea $9a $c2
	pop  af                                          ; $5488: $f1
	call FarCall                                       ; $5489: $cd $62 $09
	ld   a, [wWramBank]                                  ; $548c: $fa $93 $c2
	push af                                          ; $548f: $f5
	ld   a, $02                                      ; $5490: $3e $02
	ld   [wWramBank], a                                  ; $5492: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5495: $e0 $70
	ld   de, $da08                                   ; $5497: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $549a: $21 $e6 $c2
	ld   bc, $0010                                   ; $549d: $01 $10 $00
	call MemCopy                                       ; $54a0: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $54a3: $21 $e6 $c2
	ld   bc, $0008                                   ; $54a6: $01 $08 $00
	ld   de, $7fff                                   ; $54a9: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $54ac: $cd $9f $09
	pop  af                                          ; $54af: $f1
	ld   [wWramBank], a                                  ; $54b0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54b3: $e0 $70
	ld   hl, $cbf7                                   ; $54b5: $21 $f7 $cb
	inc  [hl]                                        ; $54b8: $34
	xor  a                                           ; $54b9: $af
	ld   [$cbf8], a                                  ; $54ba: $ea $f8 $cb
	ret                                              ; $54bd: $c9


	ld   a, [$cbf8]                                  ; $54be: $fa $f8 $cb
	or   a                                           ; $54c1: $b7
	jp   nz, Jump_031_54ef                           ; $54c2: $c2 $ef $54

	ld   a, [wWramBank]                                  ; $54c5: $fa $93 $c2
	push af                                          ; $54c8: $f5
	ld   a, $02                                      ; $54c9: $3e $02
	ld   [wWramBank], a                                  ; $54cb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54ce: $e0 $70
	ld   a, $04                                      ; $54d0: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $54d2: $ea $62 $c3
	ld   a, $30                                      ; $54d5: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $54d7: $ea $63 $c3
	ld   a, $02                                      ; $54da: $3e $02
	ld   b, $00                                      ; $54dc: $06 $00
	ld   hl, wBGPalettes                                   ; $54de: $21 $de $c2
	ld   c, $00                                      ; $54e1: $0e $00
	ld   de, $da00                                   ; $54e3: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $54e6: $cd $48 $07
	pop  af                                          ; $54e9: $f1
	ld   [wWramBank], a                                  ; $54ea: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54ed: $e0 $70

Jump_031_54ef:
	ld   hl, $cbf8                                   ; $54ef: $21 $f8 $cb
	ld   a, [hl]                                     ; $54f2: $7e
	inc  [hl]                                        ; $54f3: $34
	ld   bc, $0430                                   ; $54f4: $01 $30 $04
	cp   $03                                         ; $54f7: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $54f9: $da $32 $08

	ld   a, [wWramBank]                                  ; $54fc: $fa $93 $c2
	push af                                          ; $54ff: $f5
	ld   a, $02                                      ; $5500: $3e $02
	ld   [wWramBank], a                                  ; $5502: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5505: $e0 $70
	xor  a                                           ; $5507: $af
	ld   hl, $da08                                   ; $5508: $21 $08 $da
	ld   de, wBGPalettes+1*8                                   ; $550b: $11 $e6 $c2
	ld   bc, $0060                                   ; $550e: $01 $60 $00
	call FarMemCopy                                       ; $5511: $cd $b2 $09
	ld   bc, $0433                                   ; $5514: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5517: $cd $aa $04
	pop  af                                          ; $551a: $f1
	ld   [wWramBank], a                                  ; $551b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $551e: $e0 $70
	ld   a, [$c67a]                                  ; $5520: $fa $7a $c6
	ld   [$cbf7], a                                  ; $5523: $ea $f7 $cb
	ret                                              ; $5526: $c9


	ld   hl, $cbf7                                   ; $5527: $21 $f7 $cb
	inc  [hl]                                        ; $552a: $34
	xor  a                                           ; $552b: $af
	ld   [$cbf8], a                                  ; $552c: $ea $f8 $cb
	ret                                              ; $552f: $c9


	ld   a, [$cbf8]                                  ; $5530: $fa $f8 $cb
	or   a                                           ; $5533: $b7
	jr   nz, jr_031_554f                             ; $5534: $20 $19

	ld   a, $04                                      ; $5536: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5538: $ea $62 $c3
	ld   a, $30                                      ; $553b: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $553d: $ea $63 $c3
	ld   a, $02                                      ; $5540: $3e $02
	ld   b, $00                                      ; $5542: $06 $00
	ld   hl, wBGPalettes                                   ; $5544: $21 $de $c2
	ld   c, $01                                      ; $5547: $0e $01
	ld   de, $7000                                   ; $5549: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $554c: $cd $48 $07

jr_031_554f:
	ld   hl, $cbf8                                   ; $554f: $21 $f8 $cb
	ld   a, [hl]                                     ; $5552: $7e
	inc  [hl]                                        ; $5553: $34
	ld   bc, $0430                                   ; $5554: $01 $30 $04
	cp   $03                                         ; $5557: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $5559: $da $32 $08

	ld   a, $01                                      ; $555c: $3e $01
	ld   hl, $7000                                   ; $555e: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $5561: $11 $e6 $c2
	ld   bc, $0060                                   ; $5564: $01 $60 $00
	call FarMemCopy                                       ; $5567: $cd $b2 $09
	ld   bc, $0433                                   ; $556a: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $556d: $cd $aa $04
	ld   a, [$c67e]                                  ; $5570: $fa $7e $c6
	or   a                                           ; $5573: $b7
	push af                                          ; $5574: $f5
	ld   a, $02                                      ; $5575: $3e $02
	ld   [wFarCallAddr], a                                  ; $5577: $ea $98 $c2
	ld   a, $64                                      ; $557a: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $557c: $ea $99 $c2
	ld   a, $0b                                      ; $557f: $3e $0b
	ld   [wFarCallBank], a                                  ; $5581: $ea $9a $c2
	pop  af                                          ; $5584: $f1
	call nz, FarCall                                   ; $5585: $c4 $62 $09
	ld   a, [wWramBank]                                  ; $5588: $fa $93 $c2
	push af                                          ; $558b: $f5
	ld   a, $02                                      ; $558c: $3e $02
	ld   [wWramBank], a                                  ; $558e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5591: $e0 $70
	ld   c, $80                                      ; $5593: $0e $80
	ld   de, $9000                                   ; $5595: $11 $00 $90
	ld   a, $02                                      ; $5598: $3e $02
	ld   hl, $7080                                   ; $559a: $21 $80 $70
	ld   b, $01                                      ; $559d: $06 $01
	call EnqueueHDMATransfer                                       ; $559f: $cd $7c $02
	ld   hl, $d000                                   ; $55a2: $21 $00 $d0
	ld   bc, $00a0                                   ; $55a5: $01 $a0 $00
	ld   de, $0303                                   ; $55a8: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $55ab: $cd $9f $09
	ld   hl, $d140                                   ; $55ae: $21 $40 $d1
	ld   bc, $00a0                                   ; $55b1: $01 $a0 $00
	ld   de, $0000                                   ; $55b4: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $55b7: $cd $9f $09
	ld   c, $80                                      ; $55ba: $0e $80
	ld   de, $9800                                   ; $55bc: $11 $00 $98
	ld   a, $02                                      ; $55bf: $3e $02
	ld   hl, $d140                                   ; $55c1: $21 $40 $d1
	ld   b, $14                                      ; $55c4: $06 $14
	call EnqueueHDMATransfer                                       ; $55c6: $cd $7c $02
	ld   c, $81                                      ; $55c9: $0e $81
	ld   de, $9800                                   ; $55cb: $11 $00 $98
	ld   a, $02                                      ; $55ce: $3e $02
	ld   hl, $d000                                   ; $55d0: $21 $00 $d0
	ld   b, $14                                      ; $55d3: $06 $14
	call EnqueueHDMATransfer                                       ; $55d5: $cd $7c $02
	pop  af                                          ; $55d8: $f1
	ld   [wWramBank], a                                  ; $55d9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55dc: $e0 $70
	ld   a, [$c67d]                                  ; $55de: $fa $7d $c6
	ld   [$c67e], a                                  ; $55e1: $ea $7e $c6
	bit  7, a                                        ; $55e4: $cb $7f
	jr   nz, jr_031_55ec                             ; $55e6: $20 $04

	ld   a, $04                                      ; $55e8: $3e $04
	jr   jr_031_55ee                                 ; $55ea: $18 $02

jr_031_55ec:
	ld   a, $09                                      ; $55ec: $3e $09

jr_031_55ee:
	ld   [$cbf7], a                                  ; $55ee: $ea $f7 $cb
	xor  a                                           ; $55f1: $af
	ld   [$cbf8], a                                  ; $55f2: $ea $f8 $cb
	ret                                              ; $55f5: $c9


	ld   hl, $cbf8                                   ; $55f6: $21 $f8 $cb
	ld   a, [hl]                                     ; $55f9: $7e
	inc  [hl]                                        ; $55fa: $34
	or   a                                           ; $55fb: $b7
	jr   nz, jr_031_5618                             ; $55fc: $20 $1a

	ld   a, [$cbfe]                                  ; $55fe: $fa $fe $cb
	push af                                          ; $5601: $f5
	ld   a, $9c                                      ; $5602: $3e $9c
	ld   [wFarCallAddr], a                                  ; $5604: $ea $98 $c2
	ld   a, $61                                      ; $5607: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $5609: $ea $99 $c2
	ld   a, $0b                                      ; $560c: $3e $0b
	ld   [wFarCallBank], a                                  ; $560e: $ea $9a $c2
	pop  af                                          ; $5611: $f1
	call FarCall                                       ; $5612: $cd $62 $09
	ld   [$cbff], a                                  ; $5615: $ea $ff $cb

jr_031_5618:
	ld   a, [$cbf8]                                  ; $5618: $fa $f8 $cb
	dec  a                                           ; $561b: $3d
	ld   h, a                                        ; $561c: $67
	ld   a, [$cbfe]                                  ; $561d: $fa $fe $cb
	ld   l, a                                        ; $5620: $6f
	push af                                          ; $5621: $f5
	ld   a, $6c                                      ; $5622: $3e $6c
	ld   [wFarCallAddr], a                                  ; $5624: $ea $98 $c2
	ld   a, $5c                                      ; $5627: $3e $5c
	ld   [wFarCallAddr+1], a                                  ; $5629: $ea $99 $c2
	ld   a, $0b                                      ; $562c: $3e $0b
	ld   [wFarCallBank], a                                  ; $562e: $ea $9a $c2
	pop  af                                          ; $5631: $f1
	call FarCall                                       ; $5632: $cd $62 $09
	bit  7, a                                        ; $5635: $cb $7f
	ret  nz                                          ; $5637: $c0

	ld   a, l                                        ; $5638: $7d
	ld   [$cc00], a                                  ; $5639: $ea $00 $cc
	ld   a, h                                        ; $563c: $7c
	ld   [$cc01], a                                  ; $563d: $ea $01 $cc
	ld   a, [wWramBank]                                  ; $5640: $fa $93 $c2
	push af                                          ; $5643: $f5
	ld   a, $02                                      ; $5644: $3e $02
	ld   [wWramBank], a                                  ; $5646: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5649: $e0 $70
	ld   de, $da30                                   ; $564b: $11 $30 $da
	ld   hl, $c30e                                   ; $564e: $21 $0e $c3
	ld   bc, $0038                                   ; $5651: $01 $38 $00
	call MemCopy                                       ; $5654: $cd $a9 $09
	ld   hl, $c30e                                   ; $5657: $21 $0e $c3
	ld   bc, $001c                                   ; $565a: $01 $1c $00
	ld   de, $7fff                                   ; $565d: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5660: $cd $9f $09
	pop  af                                          ; $5663: $f1
	ld   [wWramBank], a                                  ; $5664: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5667: $e0 $70
	ld   hl, $cbf7                                   ; $5669: $21 $f7 $cb
	inc  [hl]                                        ; $566c: $34
	xor  a                                           ; $566d: $af
	ld   [$cbf8], a                                  ; $566e: $ea $f8 $cb
	ret                                              ; $5671: $c9


	ld   hl, $cbf8                                   ; $5672: $21 $f8 $cb
	ld   a, [hl]                                     ; $5675: $7e
	inc  [hl]                                        ; $5676: $34
	ld   b, a                                        ; $5677: $47
	ld   hl, $cc00                                   ; $5678: $21 $00 $cc
	ld   a, [hl+]                                    ; $567b: $2a
	ld   h, [hl]                                     ; $567c: $66
	ld   l, a                                        ; $567d: $6f
	ld   a, b                                        ; $567e: $78
	push af                                          ; $567f: $f5
	ld   a, $97                                      ; $5680: $3e $97
	ld   [wFarCallAddr], a                                  ; $5682: $ea $98 $c2
	ld   a, $49                                      ; $5685: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $5687: $ea $99 $c2
	ld   a, $0a                                      ; $568a: $3e $0a
	ld   [wFarCallBank], a                                  ; $568c: $ea $9a $c2
	pop  af                                          ; $568f: $f1
	call FarCall                                       ; $5690: $cd $62 $09
	or   a                                           ; $5693: $b7
	ret  nz                                          ; $5694: $c0

	ld   a, [wWramBank]                                  ; $5695: $fa $93 $c2
	push af                                          ; $5698: $f5
	ld   a, $02                                      ; $5699: $3e $02
	ld   [wWramBank], a                                  ; $569b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $569e: $e0 $70
	ld   de, $da18                                   ; $56a0: $11 $18 $da
	ld   hl, wBGPalettes+3*8                                   ; $56a3: $21 $f6 $c2
	ld   bc, $0018                                   ; $56a6: $01 $18 $00
	call MemCopy                                       ; $56a9: $cd $a9 $09
	ld   hl, wBGPalettes+3*8                                   ; $56ac: $21 $f6 $c2
	ld   bc, $000c                                   ; $56af: $01 $0c $00
	ld   de, $7fff                                   ; $56b2: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $56b5: $cd $9f $09
	pop  af                                          ; $56b8: $f1
	ld   [wWramBank], a                                  ; $56b9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56bc: $e0 $70
	ld   hl, $cbf7                                   ; $56be: $21 $f7 $cb
	inc  [hl]                                        ; $56c1: $34
	xor  a                                           ; $56c2: $af
	ld   [$cbf8], a                                  ; $56c3: $ea $f8 $cb
	ret                                              ; $56c6: $c9


	ld   c, $00                                      ; $56c7: $0e $00
	ld   a, [$c67b]                                  ; $56c9: $fa $7b $c6
	inc  a                                           ; $56cc: $3c
	cp   $07                                         ; $56cd: $fe $07
	jr   nz, jr_031_56d4                             ; $56cf: $20 $03

	xor  a                                           ; $56d1: $af
	ld   c, $01                                      ; $56d2: $0e $01

jr_031_56d4:
	ld   b, a                                        ; $56d4: $47
	push af                                          ; $56d5: $f5
	ld   a, $ba                                      ; $56d6: $3e $ba
	ld   [wFarCallAddr], a                                  ; $56d8: $ea $98 $c2
	ld   a, $54                                      ; $56db: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $56dd: $ea $99 $c2
	ld   a, $0a                                      ; $56e0: $3e $0a
	ld   [wFarCallBank], a                                  ; $56e2: $ea $9a $c2
	pop  af                                          ; $56e5: $f1
	call FarCall                                       ; $56e6: $cd $62 $09
	ld   a, [wWramBank]                                  ; $56e9: $fa $93 $c2
	push af                                          ; $56ec: $f5
	ld   a, $02                                      ; $56ed: $3e $02
	ld   [wWramBank], a                                  ; $56ef: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56f2: $e0 $70
	ld   de, $da08                                   ; $56f4: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $56f7: $21 $e6 $c2
	ld   bc, $0010                                   ; $56fa: $01 $10 $00
	call MemCopy                                       ; $56fd: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $5700: $21 $e6 $c2
	ld   bc, $0008                                   ; $5703: $01 $08 $00
	ld   de, $7fff                                   ; $5706: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5709: $cd $9f $09
	pop  af                                          ; $570c: $f1
	ld   [wWramBank], a                                  ; $570d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5710: $e0 $70
	ld   hl, $cbf7                                   ; $5712: $21 $f7 $cb
	inc  [hl]                                        ; $5715: $34
	xor  a                                           ; $5716: $af
	ld   [$cbf8], a                                  ; $5717: $ea $f8 $cb
	ret                                              ; $571a: $c9


	ld   a, [$cbf8]                                  ; $571b: $fa $f8 $cb
	or   a                                           ; $571e: $b7
	jp   nz, Jump_031_5798                           ; $571f: $c2 $98 $57

	push af                                          ; $5722: $f5
	ld   a, $1a                                      ; $5723: $3e $1a
	ld   [wFarCallAddr], a                                  ; $5725: $ea $98 $c2
	ld   a, $64                                      ; $5728: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $572a: $ea $99 $c2
	ld   a, $0b                                      ; $572d: $3e $0b
	ld   [wFarCallBank], a                                  ; $572f: $ea $9a $c2
	pop  af                                          ; $5732: $f1
	call FarCall                                       ; $5733: $cd $62 $09
	ld   h, $00                                      ; $5736: $26 $00
	ld   a, [$cbfe]                                  ; $5738: $fa $fe $cb
	ld   l, a                                        ; $573b: $6f
	push af                                          ; $573c: $f5
	ld   a, $82                                      ; $573d: $3e $82
	ld   [wFarCallAddr], a                                  ; $573f: $ea $98 $c2
	ld   a, $61                                      ; $5742: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $5744: $ea $99 $c2
	ld   a, $0b                                      ; $5747: $3e $0b
	ld   [wFarCallBank], a                                  ; $5749: $ea $9a $c2
	pop  af                                          ; $574c: $f1
	call FarCall                                       ; $574d: $cd $62 $09
	ld   c, $80                                      ; $5750: $0e $80
	ld   de, $9800                                   ; $5752: $11 $00 $98
	ld   a, $02                                      ; $5755: $3e $02
	ld   hl, $d140                                   ; $5757: $21 $40 $d1
	ld   b, $14                                      ; $575a: $06 $14
	call EnqueueHDMATransfer                                       ; $575c: $cd $7c $02
	ld   c, $81                                      ; $575f: $0e $81
	ld   de, $9800                                   ; $5761: $11 $00 $98
	ld   a, $02                                      ; $5764: $3e $02
	ld   hl, $d000                                   ; $5766: $21 $00 $d0
	ld   b, $14                                      ; $5769: $06 $14
	call EnqueueHDMATransfer                                       ; $576b: $cd $7c $02
	ld   a, [wWramBank]                                  ; $576e: $fa $93 $c2
	push af                                          ; $5771: $f5
	ld   a, $02                                      ; $5772: $3e $02
	ld   [wWramBank], a                                  ; $5774: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5777: $e0 $70
	ld   a, $04                                      ; $5779: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $577b: $ea $62 $c3
	ld   a, $30                                      ; $577e: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5780: $ea $63 $c3
	ld   a, $02                                      ; $5783: $3e $02
	ld   b, $00                                      ; $5785: $06 $00
	ld   hl, wBGPalettes                                   ; $5787: $21 $de $c2
	ld   c, $00                                      ; $578a: $0e $00
	ld   de, $da00                                   ; $578c: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $578f: $cd $48 $07
	pop  af                                          ; $5792: $f1
	ld   [wWramBank], a                                  ; $5793: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5796: $e0 $70

Jump_031_5798:
	ld   hl, $cbf8                                   ; $5798: $21 $f8 $cb
	ld   a, [hl]                                     ; $579b: $7e
	inc  [hl]                                        ; $579c: $34
	ld   bc, $0430                                   ; $579d: $01 $30 $04
	cp   $03                                         ; $57a0: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $57a2: $da $32 $08

	ld   a, [wWramBank]                                  ; $57a5: $fa $93 $c2
	push af                                          ; $57a8: $f5
	ld   a, $02                                      ; $57a9: $3e $02
	ld   [wWramBank], a                                  ; $57ab: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $57ae: $e0 $70
	xor  a                                           ; $57b0: $af
	ld   hl, $da08                                   ; $57b1: $21 $08 $da
	ld   de, wBGPalettes+1*8                                   ; $57b4: $11 $e6 $c2
	ld   bc, $0060                                   ; $57b7: $01 $60 $00
	call FarMemCopy                                       ; $57ba: $cd $b2 $09
	ld   bc, $0433                                   ; $57bd: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $57c0: $cd $aa $04
	pop  af                                          ; $57c3: $f1
	ld   [wWramBank], a                                  ; $57c4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $57c7: $e0 $70
	ld   a, [$c67a]                                  ; $57c9: $fa $7a $c6
	ld   [$cbf7], a                                  ; $57cc: $ea $f7 $cb
	ret                                              ; $57cf: $c9


	ld   a, h                                        ; $57d0: $7c
	ld   [$c678], a                                  ; $57d1: $ea $78 $c6
	ld   a, l                                        ; $57d4: $7d
	ld   [$c679], a                                  ; $57d5: $ea $79 $c6
	ld   a, $08                                      ; $57d8: $3e $08
	ld   [wGameState], a                                  ; $57da: $ea $a0 $c2
	xor  a                                           ; $57dd: $af
	ld   [wGameSubstate], a                                  ; $57de: $ea $a1 $c2
	ret                                              ; $57e1: $c9


Call_031_57e2:
	ld   a, c                                        ; $57e2: $79
	push af                                          ; $57e3: $f5
	push de                                          ; $57e4: $d5
	xor  a                                           ; $57e5: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $57e6: $ea $62 $c3
	ld   a, $40                                      ; $57e9: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $57eb: $ea $63 $c3
	ld   a, $03                                      ; $57ee: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $57f0: $cd $48 $07
	ld   a, $08                                      ; $57f3: $3e $08

jr_031_57f5:
	push af                                          ; $57f5: $f5
	ld   b, $00                                      ; $57f6: $06 $00
	ld   c, $40                                      ; $57f8: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $57fa: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57fd: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57fe: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57ff: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5800: $cf
	pop  af                                          ; $5801: $f1
	dec  a                                           ; $5802: $3d
	jr   nz, jr_031_57f5                             ; $5803: $20 $f0

	pop  hl                                          ; $5805: $e1
	pop  af                                          ; $5806: $f1
	ld   de, wBGPalettes                                   ; $5807: $11 $de $c2
	ld   bc, $0080                                   ; $580a: $01 $80 $00
	call FarMemCopy                                       ; $580d: $cd $b2 $09
	ld   bc, $003f                                   ; $5810: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5813: $cd $aa $04
	ret                                              ; $5816: $c9


Call_031_5817:
	ld   a, [wWramBank]                                  ; $5817: $fa $93 $c2
	push af                                          ; $581a: $f5
	ld   a, $05                                      ; $581b: $3e $05
	ld   [wWramBank], a                                  ; $581d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5820: $e0 $70
	ld   a, [$c67c]                                  ; $5822: $fa $7c $c6
	ld   hl, $d08f                                   ; $5825: $21 $8f $d0
	call Call_031_5856                               ; $5828: $cd $56 $58
	pop  af                                          ; $582b: $f1
	ld   [wWramBank], a                                  ; $582c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $582f: $e0 $70
	ld   a, $05                                      ; $5831: $3e $05
	ld   hl, $d080                                   ; $5833: $21 $80 $d0
	ld   c, $80                                      ; $5836: $0e $80
	ld   de, $99a0                                   ; $5838: $11 $a0 $99
	ld   b, $04                                      ; $583b: $06 $04
	call EnqueueHDMATransfer                                       ; $583d: $cd $7c $02
	ret                                              ; $5840: $c9


	ld   b, $64                                      ; $5841: $06 $64
	call Call_031_587d                               ; $5843: $cd $7d $58
	push af                                          ; $5846: $f5
	sla  c                                           ; $5847: $cb $21
	ld   a, $b0                                      ; $5849: $3e $b0
	add  c                                           ; $584b: $81
	ld   [hl+], a                                    ; $584c: $22
	push hl                                          ; $584d: $e5
	ld   de, $001f                                   ; $584e: $11 $1f $00
	add  hl, de                                      ; $5851: $19
	inc  a                                           ; $5852: $3c
	ld   [hl], a                                     ; $5853: $77
	pop  hl                                          ; $5854: $e1
	pop  af                                          ; $5855: $f1

Call_031_5856:
	ld   b, $0a                                      ; $5856: $06 $0a
	call Call_031_587d                               ; $5858: $cd $7d $58
	push af                                          ; $585b: $f5
	sla  c                                           ; $585c: $cb $21
	ld   a, $b0                                      ; $585e: $3e $b0
	add  c                                           ; $5860: $81
	ld   [hl+], a                                    ; $5861: $22
	push hl                                          ; $5862: $e5
	ld   de, $001f                                   ; $5863: $11 $1f $00
	add  hl, de                                      ; $5866: $19
	inc  a                                           ; $5867: $3c
	ld   [hl], a                                     ; $5868: $77
	pop  hl                                          ; $5869: $e1
	pop  af                                          ; $586a: $f1
	ld   b, $01                                      ; $586b: $06 $01
	call Call_031_587d                               ; $586d: $cd $7d $58
	sla  c                                           ; $5870: $cb $21
	ld   a, $b0                                      ; $5872: $3e $b0
	add  c                                           ; $5874: $81
	ld   [hl+], a                                    ; $5875: $22
	ld   de, $001f                                   ; $5876: $11 $1f $00
	add  hl, de                                      ; $5879: $19
	inc  a                                           ; $587a: $3c
	ld   [hl], a                                     ; $587b: $77
	ret                                              ; $587c: $c9


Call_031_587d:
	ld   c, $00                                      ; $587d: $0e $00

jr_031_587f:
	cp   b                                           ; $587f: $b8
	ret  c                                           ; $5880: $d8

	sub  b                                           ; $5881: $90
	inc  c                                           ; $5882: $0c
	jr   jr_031_587f                                 ; $5883: $18 $fa

Call_031_5885:
	ld   hl, $5899                                   ; $5885: $21 $99 $58
	ld   a, [hl+]                                    ; $5888: $2a
	ld   [$c681], a                                  ; $5889: $ea $81 $c6
	ld   a, [hl+]                                    ; $588c: $2a
	ld   [$c682], a                                  ; $588d: $ea $82 $c6
	ld   a, l                                        ; $5890: $7d
	ld   [$c67f], a                                  ; $5891: $ea $7f $c6
	ld   a, h                                        ; $5894: $7c
	ld   [$c680], a                                  ; $5895: $ea $80 $c6
	ret                                              ; $5898: $c9


	ld   b, $4e                                      ; $5899: $06 $4e
	inc  bc                                          ; $589b: $03
	ld   c, a                                        ; $589c: $4f
	inc  bc                                          ; $589d: $03
	ld   d, b                                        ; $589e: $50
	inc  bc                                          ; $589f: $03
	ld   c, a                                        ; $58a0: $4f
	nop                                              ; $58a1: $00

Call_031_58a2:
	ld   hl, $c681                                   ; $58a2: $21 $81 $c6
	dec  [hl]                                        ; $58a5: $35
	jr   nz, jr_031_58c6                             ; $58a6: $20 $1e

	ld   hl, $c67f                                   ; $58a8: $21 $7f $c6
	ld   a, [hl+]                                    ; $58ab: $2a
	ld   h, [hl]                                     ; $58ac: $66
	ld   l, a                                        ; $58ad: $6f

jr_031_58ae:
	ld   a, [hl+]                                    ; $58ae: $2a
	or   a                                           ; $58af: $b7
	jr   nz, jr_031_58b7                             ; $58b0: $20 $05

	ld   hl, $5899                                   ; $58b2: $21 $99 $58
	jr   jr_031_58ae                                 ; $58b5: $18 $f7

jr_031_58b7:
	ld   [$c681], a                                  ; $58b7: $ea $81 $c6
	ld   a, [hl+]                                    ; $58ba: $2a
	ld   [$c682], a                                  ; $58bb: $ea $82 $c6
	ld   a, l                                        ; $58be: $7d
	ld   [$c67f], a                                  ; $58bf: $ea $7f $c6
	ld   a, h                                        ; $58c2: $7c
	ld   [$c680], a                                  ; $58c3: $ea $80 $c6

jr_031_58c6:
	ld   a, $0b                                      ; $58c6: $3e $0b
	ld   [wSpriteGroup], a                                  ; $58c8: $ea $1a $c2
	ld   a, [$c682]                                  ; $58cb: $fa $82 $c6
	call LoadSpriteFromMainTable                                       ; $58ce: $cd $16 $0e
	ret                                              ; $58d1: $c9


Call_031_58d2:
	ld   b, a                                        ; $58d2: $47
	ld   c, $00                                      ; $58d3: $0e $00
	ld   hl, $5c27                                   ; $58d5: $21 $27 $5c

jr_031_58d8:
	ld   a, $08                                      ; $58d8: $3e $08
	call FarGetByte                                       ; $58da: $cd $cf $0a
	cp   $ff                                         ; $58dd: $fe $ff
	jr   z, jr_031_5902                              ; $58df: $28 $21

	cp   b                                           ; $58e1: $b8
	jr   z, jr_031_58e7                              ; $58e2: $28 $03

	inc  c                                           ; $58e4: $0c
	jr   jr_031_58d8                                 ; $58e5: $18 $f1

jr_031_58e7:
	ld   b, $00                                      ; $58e7: $06 $00
	ld   hl, $0300                                   ; $58e9: $21 $00 $03
	add  hl, bc                                      ; $58ec: $09
	push af                                          ; $58ed: $f5
	ld   a, $35                                      ; $58ee: $3e $35
	ld   [wFarCallAddr], a                                  ; $58f0: $ea $98 $c2
	ld   a, $42                                      ; $58f3: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $58f5: $ea $99 $c2
	ld   a, $0a                                      ; $58f8: $3e $0a
	ld   [wFarCallBank], a                                  ; $58fa: $ea $9a $c2
	pop  af                                          ; $58fd: $f1
	call FarCall                                       ; $58fe: $cd $62 $09
	ret                                              ; $5901: $c9


jr_031_5902:
	xor  a                                           ; $5902: $af
	ret                                              ; $5903: $c9


Call_031_5904:
	call InitWideTextBoxDimensions                                       ; $5904: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $5907: $cd $09 $14
	ld   bc, $0402                                   ; $590a: $01 $02 $04
	call SetKanjiTextBoxDimensions                                       ; $590d: $cd $24 $14
	ld   bc, $0000                                   ; $5910: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5913: $cd $34 $14
	ld   a, [wWramBank]                                  ; $5916: $fa $93 $c2
	push af                                          ; $5919: $f5
	ld   a, $05                                      ; $591a: $3e $05
	ld   [wWramBank], a                                  ; $591c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $591f: $e0 $70
	ld   hl, $d140                                   ; $5921: $21 $40 $d1
	ld   bc, $0080                                   ; $5924: $01 $80 $00
	ld   a, $00                                      ; $5927: $3e $00
	call MemSet                                       ; $5929: $cd $96 $09
	ld   a, [$c67b]                                  ; $592c: $fa $7b $c6
	add  a                                           ; $592f: $87
	ld   c, a                                        ; $5930: $4f
	ld   b, $00                                      ; $5931: $06 $00
	ld   hl, $595e                                   ; $5933: $21 $5e $59
	add  hl, bc                                      ; $5936: $09
	ld   a, [hl+]                                    ; $5937: $2a
	ld   c, a                                        ; $5938: $4f
	ld   b, [hl]                                     ; $5939: $46
	ld   hl, $595e                                   ; $593a: $21 $5e $59
	add  hl, bc                                      ; $593d: $09
	ld   e, l                                        ; $593e: $5d
	ld   d, h                                        ; $593f: $54
	ld   hl, $d140                                   ; $5940: $21 $40 $d1
	ld   a, $31                                      ; $5943: $3e $31
	call LoadInstantText                                       ; $5945: $cd $06 $13
	pop  af                                          ; $5948: $f1
	ld   [wWramBank], a                                  ; $5949: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $594c: $e0 $70
	ld   de, $8800                                   ; $594e: $11 $00 $88
	ld   c, $81                                      ; $5951: $0e $81
	ld   a, $05                                      ; $5953: $3e $05
	ld   hl, $d140                                   ; $5955: $21 $40 $d1
	ld   b, $08                                      ; $5958: $06 $08
	call EnqueueHDMATransfer                                       ; $595a: $cd $7c $02
	ret                                              ; $595d: $c9


	ld   c, $00                                      ; $595e: $0e $00
	ld   [de], a                                     ; $5960: $12
	nop                                              ; $5961: $00
	ld   d, $00                                      ; $5962: $16 $00
	ld   a, [de]                                     ; $5964: $1a
	nop                                              ; $5965: $00
	rra                                              ; $5966: $1f
	nop                                              ; $5967: $00
	inc  h                                           ; $5968: $24
	nop                                              ; $5969: $00
	jr   z, jr_031_596c                              ; $596a: $28 $00

jr_031_596c:
	ld   h, e                                        ; $596c: $63
	ld   e, l                                        ; $596d: $5d
	sub  a                                           ; $596e: $97
	nop                                              ; $596f: $00
	ld   h, a                                        ; $5970: $67
	adc  l                                           ; $5971: $8d
	sbc  d                                           ; $5972: $9a
	nop                                              ; $5973: $00
	rst  JumpTable                                         ; $5974: $df
	db   $ec                                         ; $5975: $ec
	and  e                                           ; $5976: $a3
	nop                                              ; $5977: $00
	and  e                                           ; $5978: $a3
	and  l                                           ; $5979: $a5
	db   $ec                                         ; $597a: $ec
	cp   d                                           ; $597b: $ba
	nop                                              ; $597c: $00
	ld   [bc], a                                     ; $597d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $597e: $cf
	dec  b                                           ; $597f: $05
	ld   a, [de]                                     ; $5980: $1a
	nop                                              ; $5981: $00
	xor  h                                           ; $5982: $ac
	push af                                          ; $5983: $f5
	rlc  b                                           ; $5984: $cb $00
	ld   l, e                                        ; $5986: $6b
	ld   a, h                                        ; $5987: $7c
	inc  b                                           ; $5988: $04
	ld   e, $00                                      ; $5989: $1e $00

Call_031_598b:
	ld   l, a                                        ; $598b: $6f
	ld   h, $00                                      ; $598c: $26 $00
	add  hl, hl                                      ; $598e: $29
	ld   de, $59ab                                   ; $598f: $11 $ab $59
	add  hl, de                                      ; $5992: $19
	ld   a, [hl+]                                    ; $5993: $2a
	ld   h, [hl]                                     ; $5994: $66
	ld   l, a                                        ; $5995: $6f
	push af                                          ; $5996: $f5
	ld   a, $d7                                      ; $5997: $3e $d7
	ld   [wFarCallAddr], a                                  ; $5999: $ea $98 $c2
	ld   a, $71                                      ; $599c: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $599e: $ea $99 $c2
	ld   a, $0c                                      ; $59a1: $3e $0c
	ld   [wFarCallBank], a                                  ; $59a3: $ea $9a $c2
	pop  af                                          ; $59a6: $f1
	call FarCall                                       ; $59a7: $cd $62 $09
	ret                                              ; $59aa: $c9


	jr   nc, jr_031_59ae                             ; $59ab: $30 $01

	inc  [hl]                                        ; $59ad: $34

jr_031_59ae:
	ld   bc, $0138                                   ; $59ae: $01 $38 $01
	inc  a                                           ; $59b1: $3c
	ld   bc, $0140                                   ; $59b2: $01 $40 $01
	ld   b, h                                        ; $59b5: $44
	ld   bc, $01e0                                   ; $59b6: $01 $e0 $01

Call_031_59b9:
	ld   a, [$c67b]                                  ; $59b9: $fa $7b $c6
	ld   l, a                                        ; $59bc: $6f
	ld   h, $00                                      ; $59bd: $26 $00
	ld   de, $59c5                                   ; $59bf: $11 $c5 $59
	add  hl, de                                      ; $59c2: $19
	ld   a, [hl]                                     ; $59c3: $7e
	ret                                              ; $59c4: $c9


	add  hl, bc                                      ; $59c5: $09
	ld   a, [bc]                                     ; $59c6: $0a
	ld   [$0809], sp                                 ; $59c7: $08 $09 $08
	ld   [$fa09], sp                                 ; $59ca: $08 $09 $fa
	ld   a, e                                        ; $59cd: $7b
	add  $6f                                         ; $59ce: $c6 $6f
	ld   h, $00                                      ; $59d0: $26 $00
	add  hl, hl                                      ; $59d2: $29
	ld   de, $59e3                                   ; $59d3: $11 $e3 $59
	add  hl, de                                      ; $59d6: $19
	ld   a, [hl+]                                    ; $59d7: $2a
	ld   h, [hl]                                     ; $59d8: $66
	ld   l, a                                        ; $59d9: $6f
	ld   a, [$c67c]                                  ; $59da: $fa $7c $c6
	ld   e, a                                        ; $59dd: $5f
	ld   d, $00                                      ; $59de: $16 $00
	add  hl, de                                      ; $59e0: $19
	ld   a, [hl]                                     ; $59e1: $7e
	ret                                              ; $59e2: $c9


	pop  af                                          ; $59e3: $f1
	ld   e, c                                        ; $59e4: $59
	ld   a, [$0459]                                  ; $59e5: $fa $59 $04
	ld   e, d                                        ; $59e8: $5a
	inc  c                                           ; $59e9: $0c
	ld   e, d                                        ; $59ea: $5a
	dec  d                                           ; $59eb: $15
	ld   e, d                                        ; $59ec: $5a
	dec  e                                           ; $59ed: $1d
	ld   e, d                                        ; $59ee: $5a
	dec  h                                           ; $59ef: $25
	ld   e, d                                        ; $59f0: $5a
	ld   b, $a8                                      ; $59f1: $06 $a8
	xor  [hl]                                        ; $59f3: $ae
	add  d                                           ; $59f4: $82
	adc  [hl]                                        ; $59f5: $8e
	adc  h                                           ; $59f6: $8c
	adc  a                                           ; $59f7: $8f
	adc  l                                           ; $59f8: $8d
	and  d                                           ; $59f9: $a2
	rlca                                             ; $59fa: $07
	xor  c                                           ; $59fb: $a9
	add  e                                           ; $59fc: $83
	ld   bc, $92b4                                   ; $59fd: $01 $b4 $92
	sub  b                                           ; $5a00: $90
	sub  e                                           ; $5a01: $93
	sub  c                                           ; $5a02: $91
	and  e                                           ; $5a03: $a3
	xor  d                                           ; $5a04: $aa
	ld   [bc], a                                     ; $5a05: $02
	add  h                                           ; $5a06: $84
	sub  [hl]                                        ; $5a07: $96
	sub  h                                           ; $5a08: $94
	ld   [$a495], sp                                 ; $5a09: $08 $95 $a4
	dec  b                                           ; $5a0c: $05
	add  a                                           ; $5a0d: $87
	adc  e                                           ; $5a0e: $8b
	xor  e                                           ; $5a0f: $ab
	and  b                                           ; $5a10: $a0
	sbc  [hl]                                        ; $5a11: $9e
	and  c                                           ; $5a12: $a1
	sbc  a                                           ; $5a13: $9f
	and  a                                           ; $5a14: $a7
	add  [hl]                                        ; $5a15: $86
	xor  h                                           ; $5a16: $ac
	adc  d                                           ; $5a17: $8a
	sbc  h                                           ; $5a18: $9c
	sbc  d                                           ; $5a19: $9a
	sbc  l                                           ; $5a1a: $9d
	sbc  e                                           ; $5a1b: $9b
	and  [hl]                                        ; $5a1c: $a6
	inc  b                                           ; $5a1d: $04
	inc  bc                                          ; $5a1e: $03
	add  l                                           ; $5a1f: $85
	add  hl, bc                                      ; $5a20: $09
	sub  a                                           ; $5a21: $97
	sbc  c                                           ; $5a22: $99
	sbc  b                                           ; $5a23: $98
	and  l                                           ; $5a24: $a5
	add  c                                           ; $5a25: $81
	xor  l                                           ; $5a26: $ad
	or   e                                           ; $5a27: $b3
	or   b                                           ; $5a28: $b0
	or   c                                           ; $5a29: $b1
	or   d                                           ; $5a2a: $b2
	adc  c                                           ; $5a2b: $89
	adc  b                                           ; $5a2c: $88
	ld   a, [bc]                                     ; $5a2d: $0a

Call_031_5a2e:
	call $59cc                                       ; $5a2e: $cd $cc $59
	ld   [$c67d], a                                  ; $5a31: $ea $7d $c6
	res  7, a                                        ; $5a34: $cb $bf
	ld   [$cbfb], a                                  ; $5a36: $ea $fb $cb
	ld   [$cbfe], a                                  ; $5a39: $ea $fe $cb
	ld   a, [$c67e]                                  ; $5a3c: $fa $7e $c6
	bit  7, a                                        ; $5a3f: $cb $7f
	jr   nz, jr_031_5a46                             ; $5a41: $20 $03

	ld   a, $03                                      ; $5a43: $3e $03
	ret                                              ; $5a45: $c9


jr_031_5a46:
	ld   a, $08                                      ; $5a46: $3e $08
	ret                                              ; $5a48: $c9


	nop                                              ; $5a49: $00
	nop                                              ; $5a4a: $00
	nop                                              ; $5a4b: $00
	nop                                              ; $5a4c: $00
	nop                                              ; $5a4d: $00
	nop                                              ; $5a4e: $00
	nop                                              ; $5a4f: $00
	nop                                              ; $5a50: $00
	nop                                              ; $5a51: $00
	nop                                              ; $5a52: $00
	nop                                              ; $5a53: $00
	nop                                              ; $5a54: $00
	nop                                              ; $5a55: $00
	nop                                              ; $5a56: $00
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	nop                                              ; $5a5a: $00
	nop                                              ; $5a5b: $00
	nop                                              ; $5a5c: $00
	nop                                              ; $5a5d: $00
	nop                                              ; $5a5e: $00
	nop                                              ; $5a5f: $00
	nop                                              ; $5a60: $00
	nop                                              ; $5a61: $00
	nop                                              ; $5a62: $00
	nop                                              ; $5a63: $00
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	nop                                              ; $5a66: $00
	nop                                              ; $5a67: $00
	nop                                              ; $5a68: $00
	nop                                              ; $5a69: $00
	nop                                              ; $5a6a: $00
	nop                                              ; $5a6b: $00
	nop                                              ; $5a6c: $00
	nop                                              ; $5a6d: $00
	nop                                              ; $5a6e: $00
	nop                                              ; $5a6f: $00
	nop                                              ; $5a70: $00
	nop                                              ; $5a71: $00
	nop                                              ; $5a72: $00
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	nop                                              ; $5a75: $00
	nop                                              ; $5a76: $00
	nop                                              ; $5a77: $00
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	nop                                              ; $5a7a: $00
	nop                                              ; $5a7b: $00
	nop                                              ; $5a7c: $00
	nop                                              ; $5a7d: $00
	nop                                              ; $5a7e: $00
	nop                                              ; $5a7f: $00
	nop                                              ; $5a80: $00
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	nop                                              ; $5a83: $00
	nop                                              ; $5a84: $00
	nop                                              ; $5a85: $00
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	nop                                              ; $5a8a: $00
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00
	nop                                              ; $5a8f: $00
	nop                                              ; $5a90: $00
	nop                                              ; $5a91: $00
	nop                                              ; $5a92: $00
	nop                                              ; $5a93: $00
	nop                                              ; $5a94: $00
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	nop                                              ; $5a97: $00
	nop                                              ; $5a98: $00
	nop                                              ; $5a99: $00
	nop                                              ; $5a9a: $00
	nop                                              ; $5a9b: $00
	nop                                              ; $5a9c: $00
	nop                                              ; $5a9d: $00
	nop                                              ; $5a9e: $00
	nop                                              ; $5a9f: $00
	nop                                              ; $5aa0: $00
	nop                                              ; $5aa1: $00
	nop                                              ; $5aa2: $00
	nop                                              ; $5aa3: $00
	nop                                              ; $5aa4: $00
	nop                                              ; $5aa5: $00
	nop                                              ; $5aa6: $00
	nop                                              ; $5aa7: $00
	nop                                              ; $5aa8: $00
	nop                                              ; $5aa9: $00
	nop                                              ; $5aaa: $00
	nop                                              ; $5aab: $00
	nop                                              ; $5aac: $00
	nop                                              ; $5aad: $00
	nop                                              ; $5aae: $00
	nop                                              ; $5aaf: $00
	nop                                              ; $5ab0: $00
	nop                                              ; $5ab1: $00
	nop                                              ; $5ab2: $00
	nop                                              ; $5ab3: $00
	nop                                              ; $5ab4: $00
	nop                                              ; $5ab5: $00
	nop                                              ; $5ab6: $00
	nop                                              ; $5ab7: $00
	nop                                              ; $5ab8: $00
	nop                                              ; $5ab9: $00
	nop                                              ; $5aba: $00
	nop                                              ; $5abb: $00
	nop                                              ; $5abc: $00
	nop                                              ; $5abd: $00
	nop                                              ; $5abe: $00
	nop                                              ; $5abf: $00
	nop                                              ; $5ac0: $00
	nop                                              ; $5ac1: $00
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	nop                                              ; $5ac5: $00
	nop                                              ; $5ac6: $00
	nop                                              ; $5ac7: $00
	nop                                              ; $5ac8: $00
	nop                                              ; $5ac9: $00
	nop                                              ; $5aca: $00
	nop                                              ; $5acb: $00
	nop                                              ; $5acc: $00
	nop                                              ; $5acd: $00
	nop                                              ; $5ace: $00
	nop                                              ; $5acf: $00
	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	nop                                              ; $5ad3: $00
	nop                                              ; $5ad4: $00
	nop                                              ; $5ad5: $00
	nop                                              ; $5ad6: $00
	nop                                              ; $5ad7: $00
	nop                                              ; $5ad8: $00
	nop                                              ; $5ad9: $00
	nop                                              ; $5ada: $00
	nop                                              ; $5adb: $00
	nop                                              ; $5adc: $00
	nop                                              ; $5add: $00
	nop                                              ; $5ade: $00
	nop                                              ; $5adf: $00
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	nop                                              ; $5ae3: $00
	nop                                              ; $5ae4: $00
	nop                                              ; $5ae5: $00
	nop                                              ; $5ae6: $00
	nop                                              ; $5ae7: $00
	nop                                              ; $5ae8: $00
	nop                                              ; $5ae9: $00
	nop                                              ; $5aea: $00
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	nop                                              ; $5aed: $00
	nop                                              ; $5aee: $00
	nop                                              ; $5aef: $00
	nop                                              ; $5af0: $00
	nop                                              ; $5af1: $00
	nop                                              ; $5af2: $00
	nop                                              ; $5af3: $00
	nop                                              ; $5af4: $00
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	nop                                              ; $5af9: $00
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	nop                                              ; $5afc: $00
	nop                                              ; $5afd: $00
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	nop                                              ; $5b0b: $00
	nop                                              ; $5b0c: $00
	nop                                              ; $5b0d: $00
	nop                                              ; $5b0e: $00
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	nop                                              ; $5b11: $00
	nop                                              ; $5b12: $00
	nop                                              ; $5b13: $00
	nop                                              ; $5b14: $00
	nop                                              ; $5b15: $00
	nop                                              ; $5b16: $00
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	nop                                              ; $5b1a: $00
	nop                                              ; $5b1b: $00
	nop                                              ; $5b1c: $00
	nop                                              ; $5b1d: $00
	nop                                              ; $5b1e: $00
	nop                                              ; $5b1f: $00
	nop                                              ; $5b20: $00
	nop                                              ; $5b21: $00
	nop                                              ; $5b22: $00
	nop                                              ; $5b23: $00
	nop                                              ; $5b24: $00
	nop                                              ; $5b25: $00
	nop                                              ; $5b26: $00
	nop                                              ; $5b27: $00
	nop                                              ; $5b28: $00
	nop                                              ; $5b29: $00
	nop                                              ; $5b2a: $00
	nop                                              ; $5b2b: $00
	nop                                              ; $5b2c: $00
	nop                                              ; $5b2d: $00
	nop                                              ; $5b2e: $00
	nop                                              ; $5b2f: $00
	nop                                              ; $5b30: $00
	nop                                              ; $5b31: $00
	nop                                              ; $5b32: $00
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	nop                                              ; $5b36: $00
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	nop                                              ; $5b39: $00
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	nop                                              ; $5b3c: $00
	nop                                              ; $5b3d: $00
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	nop                                              ; $5b40: $00
	nop                                              ; $5b41: $00
	nop                                              ; $5b42: $00
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	nop                                              ; $5b45: $00
	nop                                              ; $5b46: $00
	nop                                              ; $5b47: $00
	nop                                              ; $5b48: $00
	nop                                              ; $5b49: $00
	nop                                              ; $5b4a: $00
	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	nop                                              ; $5b4d: $00
	nop                                              ; $5b4e: $00
	nop                                              ; $5b4f: $00
	nop                                              ; $5b50: $00
	nop                                              ; $5b51: $00
	nop                                              ; $5b52: $00
	nop                                              ; $5b53: $00
	nop                                              ; $5b54: $00
	nop                                              ; $5b55: $00
	nop                                              ; $5b56: $00
	nop                                              ; $5b57: $00
	nop                                              ; $5b58: $00
	nop                                              ; $5b59: $00
	nop                                              ; $5b5a: $00
	nop                                              ; $5b5b: $00
	nop                                              ; $5b5c: $00
	nop                                              ; $5b5d: $00
	nop                                              ; $5b5e: $00
	nop                                              ; $5b5f: $00
	nop                                              ; $5b60: $00
	nop                                              ; $5b61: $00
	nop                                              ; $5b62: $00
	nop                                              ; $5b63: $00
	nop                                              ; $5b64: $00
	nop                                              ; $5b65: $00
	nop                                              ; $5b66: $00
	nop                                              ; $5b67: $00
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	nop                                              ; $5b6a: $00
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	nop                                              ; $5b6d: $00
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	nop                                              ; $5b70: $00
	nop                                              ; $5b71: $00
	nop                                              ; $5b72: $00
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	nop                                              ; $5b75: $00
	nop                                              ; $5b76: $00
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	nop                                              ; $5b79: $00
	nop                                              ; $5b7a: $00
	nop                                              ; $5b7b: $00
	nop                                              ; $5b7c: $00
	nop                                              ; $5b7d: $00
	nop                                              ; $5b7e: $00
	nop                                              ; $5b7f: $00
	nop                                              ; $5b80: $00
	nop                                              ; $5b81: $00
	nop                                              ; $5b82: $00
	nop                                              ; $5b83: $00
	nop                                              ; $5b84: $00
	nop                                              ; $5b85: $00
	nop                                              ; $5b86: $00
	nop                                              ; $5b87: $00
	nop                                              ; $5b88: $00
	nop                                              ; $5b89: $00
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	nop                                              ; $5b8c: $00
	nop                                              ; $5b8d: $00
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	nop                                              ; $5b90: $00
	nop                                              ; $5b91: $00
	nop                                              ; $5b92: $00
	nop                                              ; $5b93: $00
	nop                                              ; $5b94: $00
	nop                                              ; $5b95: $00
	nop                                              ; $5b96: $00
	nop                                              ; $5b97: $00
	nop                                              ; $5b98: $00
	nop                                              ; $5b99: $00
	nop                                              ; $5b9a: $00
	nop                                              ; $5b9b: $00
	nop                                              ; $5b9c: $00
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	nop                                              ; $5ba2: $00
	nop                                              ; $5ba3: $00
	nop                                              ; $5ba4: $00
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	nop                                              ; $5ba7: $00
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	nop                                              ; $5baa: $00
	nop                                              ; $5bab: $00
	nop                                              ; $5bac: $00
	nop                                              ; $5bad: $00
	nop                                              ; $5bae: $00
	nop                                              ; $5baf: $00
	nop                                              ; $5bb0: $00
	nop                                              ; $5bb1: $00
	nop                                              ; $5bb2: $00
	nop                                              ; $5bb3: $00
	nop                                              ; $5bb4: $00
	nop                                              ; $5bb5: $00
	nop                                              ; $5bb6: $00
	nop                                              ; $5bb7: $00
	nop                                              ; $5bb8: $00
	nop                                              ; $5bb9: $00
	nop                                              ; $5bba: $00
	nop                                              ; $5bbb: $00
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	nop                                              ; $5bc2: $00
	nop                                              ; $5bc3: $00
	nop                                              ; $5bc4: $00
	nop                                              ; $5bc5: $00
	nop                                              ; $5bc6: $00
	nop                                              ; $5bc7: $00
	nop                                              ; $5bc8: $00
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	nop                                              ; $5bcb: $00
	nop                                              ; $5bcc: $00
	nop                                              ; $5bcd: $00
	nop                                              ; $5bce: $00
	nop                                              ; $5bcf: $00
	nop                                              ; $5bd0: $00
	nop                                              ; $5bd1: $00
	nop                                              ; $5bd2: $00
	nop                                              ; $5bd3: $00
	nop                                              ; $5bd4: $00
	nop                                              ; $5bd5: $00
	nop                                              ; $5bd6: $00
	nop                                              ; $5bd7: $00
	nop                                              ; $5bd8: $00
	nop                                              ; $5bd9: $00
	nop                                              ; $5bda: $00
	nop                                              ; $5bdb: $00
	nop                                              ; $5bdc: $00
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	nop                                              ; $5bdf: $00
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	nop                                              ; $5be5: $00
	nop                                              ; $5be6: $00
	nop                                              ; $5be7: $00
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	nop                                              ; $5bea: $00
	nop                                              ; $5beb: $00
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	nop                                              ; $5bee: $00
	nop                                              ; $5bef: $00
	nop                                              ; $5bf0: $00
	nop                                              ; $5bf1: $00
	nop                                              ; $5bf2: $00
	nop                                              ; $5bf3: $00
	nop                                              ; $5bf4: $00
	nop                                              ; $5bf5: $00
	nop                                              ; $5bf6: $00
	nop                                              ; $5bf7: $00
	nop                                              ; $5bf8: $00
	nop                                              ; $5bf9: $00
	nop                                              ; $5bfa: $00
	nop                                              ; $5bfb: $00
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	nop                                              ; $5c0d: $00
	nop                                              ; $5c0e: $00
	nop                                              ; $5c0f: $00
	nop                                              ; $5c10: $00
	nop                                              ; $5c11: $00
	nop                                              ; $5c12: $00
	nop                                              ; $5c13: $00
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	nop                                              ; $5c18: $00
	nop                                              ; $5c19: $00
	nop                                              ; $5c1a: $00
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	nop                                              ; $5c1d: $00
	nop                                              ; $5c1e: $00
	nop                                              ; $5c1f: $00
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	nop                                              ; $5c28: $00
	nop                                              ; $5c29: $00
	nop                                              ; $5c2a: $00
	nop                                              ; $5c2b: $00
	nop                                              ; $5c2c: $00
	nop                                              ; $5c2d: $00
	nop                                              ; $5c2e: $00
	nop                                              ; $5c2f: $00
	nop                                              ; $5c30: $00
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	nop                                              ; $5c34: $00
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	nop                                              ; $5c37: $00
	nop                                              ; $5c38: $00
	nop                                              ; $5c39: $00
	nop                                              ; $5c3a: $00
	nop                                              ; $5c3b: $00
	nop                                              ; $5c3c: $00
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	nop                                              ; $5c4a: $00
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	nop                                              ; $5c4d: $00
	nop                                              ; $5c4e: $00
	nop                                              ; $5c4f: $00
	nop                                              ; $5c50: $00
	nop                                              ; $5c51: $00
	nop                                              ; $5c52: $00
	nop                                              ; $5c53: $00
	nop                                              ; $5c54: $00
	nop                                              ; $5c55: $00
	nop                                              ; $5c56: $00
	nop                                              ; $5c57: $00
	nop                                              ; $5c58: $00
	nop                                              ; $5c59: $00
	nop                                              ; $5c5a: $00
	nop                                              ; $5c5b: $00
	nop                                              ; $5c5c: $00
	nop                                              ; $5c5d: $00
	nop                                              ; $5c5e: $00
	nop                                              ; $5c5f: $00
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	nop                                              ; $5c70: $00
	nop                                              ; $5c71: $00
	nop                                              ; $5c72: $00
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	nop                                              ; $5c84: $00
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	nop                                              ; $5c89: $00
	nop                                              ; $5c8a: $00
	nop                                              ; $5c8b: $00
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	nop                                              ; $5c93: $00
	nop                                              ; $5c94: $00
	nop                                              ; $5c95: $00
	nop                                              ; $5c96: $00
	nop                                              ; $5c97: $00
	nop                                              ; $5c98: $00
	nop                                              ; $5c99: $00
	nop                                              ; $5c9a: $00
	nop                                              ; $5c9b: $00
	nop                                              ; $5c9c: $00
	nop                                              ; $5c9d: $00
	nop                                              ; $5c9e: $00
	nop                                              ; $5c9f: $00
	nop                                              ; $5ca0: $00
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	nop                                              ; $5ca3: $00
	nop                                              ; $5ca4: $00
	nop                                              ; $5ca5: $00
	nop                                              ; $5ca6: $00
	nop                                              ; $5ca7: $00
	nop                                              ; $5ca8: $00
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	nop                                              ; $5cab: $00
	nop                                              ; $5cac: $00
	nop                                              ; $5cad: $00
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	nop                                              ; $5cb0: $00
	nop                                              ; $5cb1: $00
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	nop                                              ; $5cb4: $00
	nop                                              ; $5cb5: $00
	nop                                              ; $5cb6: $00
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	nop                                              ; $5cb9: $00
	nop                                              ; $5cba: $00
	nop                                              ; $5cbb: $00
	nop                                              ; $5cbc: $00
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	nop                                              ; $5cc4: $00
	nop                                              ; $5cc5: $00
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	nop                                              ; $5cc8: $00
	nop                                              ; $5cc9: $00
	nop                                              ; $5cca: $00
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	nop                                              ; $5cd1: $00
	nop                                              ; $5cd2: $00
	nop                                              ; $5cd3: $00
	nop                                              ; $5cd4: $00
	nop                                              ; $5cd5: $00
	nop                                              ; $5cd6: $00
	nop                                              ; $5cd7: $00
	nop                                              ; $5cd8: $00
	nop                                              ; $5cd9: $00
	nop                                              ; $5cda: $00
	nop                                              ; $5cdb: $00
	nop                                              ; $5cdc: $00
	nop                                              ; $5cdd: $00
	nop                                              ; $5cde: $00
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	nop                                              ; $5ce3: $00
	nop                                              ; $5ce4: $00
	nop                                              ; $5ce5: $00
	nop                                              ; $5ce6: $00
	nop                                              ; $5ce7: $00
	nop                                              ; $5ce8: $00
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	nop                                              ; $5ceb: $00
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	nop                                              ; $5cee: $00
	nop                                              ; $5cef: $00
	nop                                              ; $5cf0: $00
	nop                                              ; $5cf1: $00
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	nop                                              ; $5cf6: $00
	nop                                              ; $5cf7: $00
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	nop                                              ; $5cfc: $00
	nop                                              ; $5cfd: $00
	nop                                              ; $5cfe: $00
	nop                                              ; $5cff: $00
	nop                                              ; $5d00: $00
	nop                                              ; $5d01: $00
	nop                                              ; $5d02: $00
	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	nop                                              ; $5d06: $00
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	nop                                              ; $5d0a: $00
	nop                                              ; $5d0b: $00
	nop                                              ; $5d0c: $00
	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	nop                                              ; $5d0f: $00
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	nop                                              ; $5d12: $00
	nop                                              ; $5d13: $00
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	nop                                              ; $5d17: $00
	nop                                              ; $5d18: $00
	nop                                              ; $5d19: $00
	nop                                              ; $5d1a: $00
	nop                                              ; $5d1b: $00
	nop                                              ; $5d1c: $00
	nop                                              ; $5d1d: $00
	nop                                              ; $5d1e: $00
	nop                                              ; $5d1f: $00
	nop                                              ; $5d20: $00
	nop                                              ; $5d21: $00
	nop                                              ; $5d22: $00
	nop                                              ; $5d23: $00
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	nop                                              ; $5d27: $00
	nop                                              ; $5d28: $00
	nop                                              ; $5d29: $00
	nop                                              ; $5d2a: $00
	nop                                              ; $5d2b: $00
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	nop                                              ; $5d30: $00
	nop                                              ; $5d31: $00
	nop                                              ; $5d32: $00
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	nop                                              ; $5d36: $00
	nop                                              ; $5d37: $00
	nop                                              ; $5d38: $00
	nop                                              ; $5d39: $00
	nop                                              ; $5d3a: $00
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	nop                                              ; $5d3d: $00
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	nop                                              ; $5d40: $00
	nop                                              ; $5d41: $00
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	nop                                              ; $5d44: $00
	nop                                              ; $5d45: $00
	nop                                              ; $5d46: $00
	nop                                              ; $5d47: $00
	nop                                              ; $5d48: $00
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	nop                                              ; $5d4b: $00
	nop                                              ; $5d4c: $00
	nop                                              ; $5d4d: $00
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	nop                                              ; $5d50: $00
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	nop                                              ; $5d56: $00
	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	nop                                              ; $5d5a: $00
	nop                                              ; $5d5b: $00
	nop                                              ; $5d5c: $00
	nop                                              ; $5d5d: $00
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	nop                                              ; $5d61: $00
	nop                                              ; $5d62: $00
	nop                                              ; $5d63: $00
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	nop                                              ; $5d66: $00
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	nop                                              ; $5d69: $00
	nop                                              ; $5d6a: $00
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	nop                                              ; $5d6d: $00
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	nop                                              ; $5d74: $00
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	nop                                              ; $5d86: $00
	nop                                              ; $5d87: $00
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	nop                                              ; $5d8a: $00
	nop                                              ; $5d8b: $00
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	nop                                              ; $5d93: $00
	nop                                              ; $5d94: $00
	nop                                              ; $5d95: $00
	nop                                              ; $5d96: $00
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	nop                                              ; $5d99: $00
	nop                                              ; $5d9a: $00
	nop                                              ; $5d9b: $00
	nop                                              ; $5d9c: $00
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	nop                                              ; $5da1: $00
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	nop                                              ; $5da4: $00
	nop                                              ; $5da5: $00
	nop                                              ; $5da6: $00
	nop                                              ; $5da7: $00
	nop                                              ; $5da8: $00
	nop                                              ; $5da9: $00
	nop                                              ; $5daa: $00
	nop                                              ; $5dab: $00
	nop                                              ; $5dac: $00
	nop                                              ; $5dad: $00
	nop                                              ; $5dae: $00
	nop                                              ; $5daf: $00
	nop                                              ; $5db0: $00
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	nop                                              ; $5db4: $00
	nop                                              ; $5db5: $00
	nop                                              ; $5db6: $00
	nop                                              ; $5db7: $00
	nop                                              ; $5db8: $00
	nop                                              ; $5db9: $00
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	nop                                              ; $5dc0: $00
	nop                                              ; $5dc1: $00
	nop                                              ; $5dc2: $00
	nop                                              ; $5dc3: $00
	nop                                              ; $5dc4: $00
	nop                                              ; $5dc5: $00
	nop                                              ; $5dc6: $00
	nop                                              ; $5dc7: $00
	nop                                              ; $5dc8: $00
	nop                                              ; $5dc9: $00
	nop                                              ; $5dca: $00
	nop                                              ; $5dcb: $00
	nop                                              ; $5dcc: $00
	nop                                              ; $5dcd: $00
	nop                                              ; $5dce: $00
	nop                                              ; $5dcf: $00
	nop                                              ; $5dd0: $00
	nop                                              ; $5dd1: $00
	nop                                              ; $5dd2: $00
	nop                                              ; $5dd3: $00
	nop                                              ; $5dd4: $00
	nop                                              ; $5dd5: $00
	nop                                              ; $5dd6: $00
	nop                                              ; $5dd7: $00
	nop                                              ; $5dd8: $00
	nop                                              ; $5dd9: $00
	nop                                              ; $5dda: $00
	nop                                              ; $5ddb: $00
	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	nop                                              ; $5de5: $00
	nop                                              ; $5de6: $00
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	nop                                              ; $5df7: $00
	nop                                              ; $5df8: $00
	nop                                              ; $5df9: $00
	nop                                              ; $5dfa: $00
	nop                                              ; $5dfb: $00
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	nop                                              ; $5e17: $00
	nop                                              ; $5e18: $00
	nop                                              ; $5e19: $00
	nop                                              ; $5e1a: $00
	nop                                              ; $5e1b: $00
	nop                                              ; $5e1c: $00
	nop                                              ; $5e1d: $00
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	nop                                              ; $5e37: $00
	nop                                              ; $5e38: $00
	nop                                              ; $5e39: $00
	nop                                              ; $5e3a: $00
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	nop                                              ; $5e3d: $00
	nop                                              ; $5e3e: $00
	nop                                              ; $5e3f: $00
	nop                                              ; $5e40: $00
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	nop                                              ; $5e51: $00
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	nop                                              ; $5e54: $00
	nop                                              ; $5e55: $00
	nop                                              ; $5e56: $00
	nop                                              ; $5e57: $00
	nop                                              ; $5e58: $00
	nop                                              ; $5e59: $00
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	nop                                              ; $5e5c: $00
	nop                                              ; $5e5d: $00
	nop                                              ; $5e5e: $00
	nop                                              ; $5e5f: $00
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	nop                                              ; $5e67: $00
	nop                                              ; $5e68: $00
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	nop                                              ; $5e76: $00
	nop                                              ; $5e77: $00
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	nop                                              ; $5e7a: $00
	nop                                              ; $5e7b: $00
	nop                                              ; $5e7c: $00
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	nop                                              ; $5e7f: $00
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	nop                                              ; $5e83: $00
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	nop                                              ; $5e8b: $00
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	nop                                              ; $5e92: $00
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	nop                                              ; $5e97: $00
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	nop                                              ; $5ea0: $00
	nop                                              ; $5ea1: $00
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	nop                                              ; $5ea4: $00
	nop                                              ; $5ea5: $00
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	nop                                              ; $5eaa: $00
	nop                                              ; $5eab: $00
	nop                                              ; $5eac: $00
	nop                                              ; $5ead: $00
	nop                                              ; $5eae: $00
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	nop                                              ; $5eb6: $00
	nop                                              ; $5eb7: $00
	nop                                              ; $5eb8: $00
	nop                                              ; $5eb9: $00
	nop                                              ; $5eba: $00
	nop                                              ; $5ebb: $00
	nop                                              ; $5ebc: $00
	nop                                              ; $5ebd: $00
	nop                                              ; $5ebe: $00
	nop                                              ; $5ebf: $00
	nop                                              ; $5ec0: $00
	nop                                              ; $5ec1: $00
	nop                                              ; $5ec2: $00
	nop                                              ; $5ec3: $00
	nop                                              ; $5ec4: $00
	nop                                              ; $5ec5: $00
	nop                                              ; $5ec6: $00
	nop                                              ; $5ec7: $00
	nop                                              ; $5ec8: $00
	nop                                              ; $5ec9: $00
	nop                                              ; $5eca: $00
	nop                                              ; $5ecb: $00
	nop                                              ; $5ecc: $00
	nop                                              ; $5ecd: $00
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	nop                                              ; $5ed1: $00
	nop                                              ; $5ed2: $00
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	nop                                              ; $5ed6: $00
	nop                                              ; $5ed7: $00
	nop                                              ; $5ed8: $00
	nop                                              ; $5ed9: $00
	nop                                              ; $5eda: $00
	nop                                              ; $5edb: $00
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	nop                                              ; $5ee8: $00
	nop                                              ; $5ee9: $00
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	nop                                              ; $5eec: $00
	nop                                              ; $5eed: $00
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	nop                                              ; $5f02: $00
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	nop                                              ; $5f0c: $00
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	nop                                              ; $5f21: $00
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	nop                                              ; $5f35: $00
	nop                                              ; $5f36: $00
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	nop                                              ; $5f39: $00
	nop                                              ; $5f3a: $00
	nop                                              ; $5f3b: $00
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	nop                                              ; $5f3e: $00
	nop                                              ; $5f3f: $00
	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	nop                                              ; $5f43: $00
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	nop                                              ; $5f46: $00
	nop                                              ; $5f47: $00
	nop                                              ; $5f48: $00
	nop                                              ; $5f49: $00
	nop                                              ; $5f4a: $00
	nop                                              ; $5f4b: $00
	nop                                              ; $5f4c: $00
	nop                                              ; $5f4d: $00
	nop                                              ; $5f4e: $00
	nop                                              ; $5f4f: $00
	nop                                              ; $5f50: $00
	nop                                              ; $5f51: $00
	nop                                              ; $5f52: $00
	nop                                              ; $5f53: $00
	nop                                              ; $5f54: $00
	nop                                              ; $5f55: $00
	nop                                              ; $5f56: $00
	nop                                              ; $5f57: $00
	nop                                              ; $5f58: $00
	nop                                              ; $5f59: $00
	nop                                              ; $5f5a: $00
	nop                                              ; $5f5b: $00
	nop                                              ; $5f5c: $00
	nop                                              ; $5f5d: $00
	nop                                              ; $5f5e: $00
	nop                                              ; $5f5f: $00
	nop                                              ; $5f60: $00
	nop                                              ; $5f61: $00
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	nop                                              ; $5f66: $00
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	nop                                              ; $5f70: $00
	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	nop                                              ; $5f73: $00
	nop                                              ; $5f74: $00
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	nop                                              ; $5f79: $00
	nop                                              ; $5f7a: $00
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	nop                                              ; $5f80: $00
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	nop                                              ; $5f84: $00
	nop                                              ; $5f85: $00
	nop                                              ; $5f86: $00
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	nop                                              ; $5f99: $00
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	nop                                              ; $5fa1: $00
	nop                                              ; $5fa2: $00
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	nop                                              ; $5fa9: $00
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	nop                                              ; $5fb1: $00
	nop                                              ; $5fb2: $00
	nop                                              ; $5fb3: $00
	nop                                              ; $5fb4: $00
	nop                                              ; $5fb5: $00
	nop                                              ; $5fb6: $00
	nop                                              ; $5fb7: $00
	nop                                              ; $5fb8: $00
	nop                                              ; $5fb9: $00
	nop                                              ; $5fba: $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	nop                                              ; $5fc2: $00
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	nop                                              ; $5fc5: $00
	nop                                              ; $5fc6: $00
	nop                                              ; $5fc7: $00
	nop                                              ; $5fc8: $00
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	nop                                              ; $5fd5: $00
	nop                                              ; $5fd6: $00
	nop                                              ; $5fd7: $00
	nop                                              ; $5fd8: $00
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	nop                                              ; $600a: $00
	nop                                              ; $600b: $00
	nop                                              ; $600c: $00
	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	nop                                              ; $6011: $00
	nop                                              ; $6012: $00
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	nop                                              ; $6016: $00
	nop                                              ; $6017: $00
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	nop                                              ; $6020: $00
	nop                                              ; $6021: $00
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	nop                                              ; $6027: $00
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	nop                                              ; $602a: $00
	nop                                              ; $602b: $00
	nop                                              ; $602c: $00
	nop                                              ; $602d: $00
	nop                                              ; $602e: $00
	nop                                              ; $602f: $00
	nop                                              ; $6030: $00
	nop                                              ; $6031: $00
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	nop                                              ; $6034: $00
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	nop                                              ; $6049: $00
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	nop                                              ; $604c: $00
	nop                                              ; $604d: $00
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00
	nop                                              ; $6051: $00
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	nop                                              ; $6054: $00
	nop                                              ; $6055: $00
	nop                                              ; $6056: $00
	nop                                              ; $6057: $00
	nop                                              ; $6058: $00
	nop                                              ; $6059: $00
	nop                                              ; $605a: $00
	nop                                              ; $605b: $00
	nop                                              ; $605c: $00
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	nop                                              ; $6074: $00
	nop                                              ; $6075: $00
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	nop                                              ; $6078: $00
	nop                                              ; $6079: $00
	nop                                              ; $607a: $00
	nop                                              ; $607b: $00
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	nop                                              ; $608a: $00
	nop                                              ; $608b: $00
	nop                                              ; $608c: $00
	nop                                              ; $608d: $00
	nop                                              ; $608e: $00
	nop                                              ; $608f: $00
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	nop                                              ; $609e: $00
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	nop                                              ; $60a9: $00
	nop                                              ; $60aa: $00
	nop                                              ; $60ab: $00
	nop                                              ; $60ac: $00
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	nop                                              ; $60b2: $00
	nop                                              ; $60b3: $00
	nop                                              ; $60b4: $00
	nop                                              ; $60b5: $00
	nop                                              ; $60b6: $00
	nop                                              ; $60b7: $00
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	nop                                              ; $60be: $00
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	nop                                              ; $60c2: $00
	nop                                              ; $60c3: $00
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	nop                                              ; $60ca: $00
	nop                                              ; $60cb: $00
	nop                                              ; $60cc: $00
	nop                                              ; $60cd: $00
	nop                                              ; $60ce: $00
	nop                                              ; $60cf: $00
	nop                                              ; $60d0: $00
	nop                                              ; $60d1: $00
	nop                                              ; $60d2: $00
	nop                                              ; $60d3: $00
	nop                                              ; $60d4: $00
	nop                                              ; $60d5: $00
	nop                                              ; $60d6: $00
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	nop                                              ; $60dc: $00
	nop                                              ; $60dd: $00
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	nop                                              ; $60e6: $00
	nop                                              ; $60e7: $00
	nop                                              ; $60e8: $00
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	nop                                              ; $60ee: $00
	nop                                              ; $60ef: $00
	nop                                              ; $60f0: $00
	nop                                              ; $60f1: $00
	nop                                              ; $60f2: $00
	nop                                              ; $60f3: $00
	nop                                              ; $60f4: $00
	nop                                              ; $60f5: $00
	nop                                              ; $60f6: $00
	nop                                              ; $60f7: $00
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	nop                                              ; $60fa: $00
	nop                                              ; $60fb: $00
	nop                                              ; $60fc: $00
	nop                                              ; $60fd: $00
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	nop                                              ; $6107: $00
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	nop                                              ; $6113: $00
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	nop                                              ; $6116: $00
	nop                                              ; $6117: $00
	nop                                              ; $6118: $00
	nop                                              ; $6119: $00
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	nop                                              ; $611d: $00
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	nop                                              ; $6122: $00
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	nop                                              ; $6125: $00
	nop                                              ; $6126: $00
	nop                                              ; $6127: $00
	nop                                              ; $6128: $00
	nop                                              ; $6129: $00
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	nop                                              ; $612c: $00
	nop                                              ; $612d: $00
	nop                                              ; $612e: $00
	nop                                              ; $612f: $00
	nop                                              ; $6130: $00
	nop                                              ; $6131: $00
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	nop                                              ; $6135: $00
	nop                                              ; $6136: $00
	nop                                              ; $6137: $00
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	nop                                              ; $613a: $00
	nop                                              ; $613b: $00
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	nop                                              ; $613e: $00
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	nop                                              ; $6141: $00
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	nop                                              ; $6145: $00
	nop                                              ; $6146: $00
	nop                                              ; $6147: $00
	nop                                              ; $6148: $00
	nop                                              ; $6149: $00
	nop                                              ; $614a: $00
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	nop                                              ; $6150: $00
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	nop                                              ; $615a: $00
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	nop                                              ; $615e: $00
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	nop                                              ; $6165: $00
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	nop                                              ; $6168: $00
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	nop                                              ; $617a: $00
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	nop                                              ; $6184: $00
	nop                                              ; $6185: $00
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	nop                                              ; $618a: $00
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	nop                                              ; $6194: $00
	nop                                              ; $6195: $00
	nop                                              ; $6196: $00
	nop                                              ; $6197: $00
	nop                                              ; $6198: $00
	nop                                              ; $6199: $00
	nop                                              ; $619a: $00
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	nop                                              ; $619e: $00
	nop                                              ; $619f: $00
	nop                                              ; $61a0: $00
	nop                                              ; $61a1: $00
	nop                                              ; $61a2: $00
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	nop                                              ; $61a5: $00
	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	nop                                              ; $61a8: $00
	nop                                              ; $61a9: $00
	nop                                              ; $61aa: $00
	nop                                              ; $61ab: $00
	nop                                              ; $61ac: $00
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	nop                                              ; $61c3: $00
	nop                                              ; $61c4: $00
	nop                                              ; $61c5: $00
	nop                                              ; $61c6: $00
	nop                                              ; $61c7: $00
	nop                                              ; $61c8: $00
	nop                                              ; $61c9: $00
	nop                                              ; $61ca: $00
	nop                                              ; $61cb: $00
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	nop                                              ; $61ce: $00
	nop                                              ; $61cf: $00
	nop                                              ; $61d0: $00
	nop                                              ; $61d1: $00
	nop                                              ; $61d2: $00
	nop                                              ; $61d3: $00
	nop                                              ; $61d4: $00
	nop                                              ; $61d5: $00
	nop                                              ; $61d6: $00
	nop                                              ; $61d7: $00
	nop                                              ; $61d8: $00
	nop                                              ; $61d9: $00
	nop                                              ; $61da: $00
	nop                                              ; $61db: $00
	nop                                              ; $61dc: $00
	nop                                              ; $61dd: $00
	nop                                              ; $61de: $00
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	nop                                              ; $61e2: $00
	nop                                              ; $61e3: $00
	nop                                              ; $61e4: $00
	nop                                              ; $61e5: $00
	nop                                              ; $61e6: $00
	nop                                              ; $61e7: $00
	nop                                              ; $61e8: $00
	nop                                              ; $61e9: $00
	nop                                              ; $61ea: $00
	nop                                              ; $61eb: $00
	nop                                              ; $61ec: $00
	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	nop                                              ; $61f0: $00
	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	nop                                              ; $61fc: $00
	nop                                              ; $61fd: $00
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	nop                                              ; $6215: $00
	nop                                              ; $6216: $00
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	nop                                              ; $621a: $00
	nop                                              ; $621b: $00
	nop                                              ; $621c: $00
	nop                                              ; $621d: $00
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	nop                                              ; $6221: $00
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	nop                                              ; $6226: $00
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	nop                                              ; $622b: $00
	nop                                              ; $622c: $00
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	nop                                              ; $6231: $00
	nop                                              ; $6232: $00
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	nop                                              ; $6235: $00
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	nop                                              ; $6248: $00
	nop                                              ; $6249: $00
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	nop                                              ; $624c: $00
	nop                                              ; $624d: $00
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	nop                                              ; $6255: $00
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	nop                                              ; $6271: $00
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	nop                                              ; $6274: $00
	nop                                              ; $6275: $00
	nop                                              ; $6276: $00
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	nop                                              ; $627a: $00
	nop                                              ; $627b: $00
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	nop                                              ; $627e: $00
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	nop                                              ; $6281: $00
	nop                                              ; $6282: $00
	nop                                              ; $6283: $00
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	nop                                              ; $6286: $00
	nop                                              ; $6287: $00
	nop                                              ; $6288: $00
	nop                                              ; $6289: $00
	nop                                              ; $628a: $00
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	nop                                              ; $629b: $00
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	nop                                              ; $62a4: $00
	nop                                              ; $62a5: $00
	nop                                              ; $62a6: $00
	nop                                              ; $62a7: $00
	nop                                              ; $62a8: $00
	nop                                              ; $62a9: $00
	nop                                              ; $62aa: $00
	nop                                              ; $62ab: $00
	nop                                              ; $62ac: $00
	nop                                              ; $62ad: $00
	nop                                              ; $62ae: $00
	nop                                              ; $62af: $00
	nop                                              ; $62b0: $00
	nop                                              ; $62b1: $00
	nop                                              ; $62b2: $00
	nop                                              ; $62b3: $00
	nop                                              ; $62b4: $00
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	nop                                              ; $62b9: $00
	nop                                              ; $62ba: $00
	nop                                              ; $62bb: $00
	nop                                              ; $62bc: $00
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	nop                                              ; $62c0: $00
	nop                                              ; $62c1: $00
	nop                                              ; $62c2: $00
	nop                                              ; $62c3: $00
	nop                                              ; $62c4: $00
	nop                                              ; $62c5: $00
	nop                                              ; $62c6: $00
	nop                                              ; $62c7: $00
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	nop                                              ; $62ca: $00
	nop                                              ; $62cb: $00
	nop                                              ; $62cc: $00
	nop                                              ; $62cd: $00
	nop                                              ; $62ce: $00
	nop                                              ; $62cf: $00
	nop                                              ; $62d0: $00
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	nop                                              ; $62d6: $00
	nop                                              ; $62d7: $00
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	nop                                              ; $62da: $00
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	nop                                              ; $62f4: $00
	nop                                              ; $62f5: $00
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	nop                                              ; $62fa: $00
	nop                                              ; $62fb: $00
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	nop                                              ; $6310: $00
	nop                                              ; $6311: $00
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	nop                                              ; $631b: $00
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	nop                                              ; $632a: $00
	nop                                              ; $632b: $00
	nop                                              ; $632c: $00
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	nop                                              ; $6331: $00
	nop                                              ; $6332: $00
	nop                                              ; $6333: $00
	nop                                              ; $6334: $00
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	nop                                              ; $6337: $00
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	nop                                              ; $6378: $00
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	nop                                              ; $6384: $00
	nop                                              ; $6385: $00
	nop                                              ; $6386: $00
	nop                                              ; $6387: $00
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	nop                                              ; $6392: $00
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	nop                                              ; $63a2: $00
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	nop                                              ; $63a7: $00
	nop                                              ; $63a8: $00
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	nop                                              ; $63b1: $00
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	nop                                              ; $63b5: $00
	nop                                              ; $63b6: $00
	nop                                              ; $63b7: $00
	nop                                              ; $63b8: $00
	nop                                              ; $63b9: $00
	nop                                              ; $63ba: $00
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	nop                                              ; $63ca: $00
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	nop                                              ; $63ce: $00
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	nop                                              ; $63d6: $00
	nop                                              ; $63d7: $00
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	nop                                              ; $63f6: $00
	nop                                              ; $63f7: $00
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	nop                                              ; $63fa: $00
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	nop                                              ; $6412: $00
	nop                                              ; $6413: $00
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	nop                                              ; $6420: $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	nop                                              ; $642c: $00
	nop                                              ; $642d: $00
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	nop                                              ; $6430: $00
	nop                                              ; $6431: $00
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	nop                                              ; $6436: $00
	nop                                              ; $6437: $00
	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	nop                                              ; $643a: $00
	nop                                              ; $643b: $00
	nop                                              ; $643c: $00
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	nop                                              ; $644a: $00
	nop                                              ; $644b: $00
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	nop                                              ; $6450: $00
	nop                                              ; $6451: $00
	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	nop                                              ; $6456: $00
	nop                                              ; $6457: $00
	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	nop                                              ; $645a: $00
	nop                                              ; $645b: $00
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	nop                                              ; $6467: $00
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	nop                                              ; $64a6: $00
	nop                                              ; $64a7: $00
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	nop                                              ; $64aa: $00
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	nop                                              ; $64ad: $00
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	nop                                              ; $64b3: $00
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	nop                                              ; $64ba: $00
	nop                                              ; $64bb: $00
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	nop                                              ; $6516: $00
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	nop                                              ; $6526: $00
	nop                                              ; $6527: $00
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	nop                                              ; $652a: $00
	nop                                              ; $652b: $00
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	nop                                              ; $658c: $00
	nop                                              ; $658d: $00
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	nop                                              ; $6596: $00
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	nop                                              ; $65a8: $00
	nop                                              ; $65a9: $00
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	nop                                              ; $65b0: $00
	nop                                              ; $65b1: $00
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	nop                                              ; $65b9: $00
	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	nop                                              ; $65e6: $00
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	nop                                              ; $65e9: $00
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	nop                                              ; $65ec: $00
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	nop                                              ; $66a5: $00
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	nop                                              ; $66a9: $00
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	nop                                              ; $66b4: $00
	nop                                              ; $66b5: $00
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	nop                                              ; $66d0: $00
	nop                                              ; $66d1: $00
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	nop                                              ; $675c: $00
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	nop                                              ; $6791: $00
	nop                                              ; $6792: $00
	nop                                              ; $6793: $00
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	nop                                              ; $6799: $00
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	nop                                              ; $67b2: $00
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	nop                                              ; $67c2: $00
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	nop                                              ; $67d2: $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	nop                                              ; $67d8: $00
	nop                                              ; $67d9: $00
	nop                                              ; $67da: $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	nop                                              ; $6849: $00
	nop                                              ; $684a: $00
	nop                                              ; $684b: $00
	nop                                              ; $684c: $00
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	nop                                              ; $6855: $00
	nop                                              ; $6856: $00
	nop                                              ; $6857: $00
	nop                                              ; $6858: $00
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	nop                                              ; $6872: $00
	nop                                              ; $6873: $00
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	nop                                              ; $6876: $00
	nop                                              ; $6877: $00
	nop                                              ; $6878: $00
	nop                                              ; $6879: $00
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	nop                                              ; $687c: $00
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	nop                                              ; $6889: $00
	nop                                              ; $688a: $00
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	nop                                              ; $68a6: $00
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	nop                                              ; $68f2: $00
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	nop                                              ; $68fd: $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	nop                                              ; $6937: $00
	nop                                              ; $6938: $00
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	nop                                              ; $693d: $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	nop                                              ; $6957: $00
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00
	nop                                              ; $695a: $00
	nop                                              ; $695b: $00
	nop                                              ; $695c: $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	nop                                              ; $6977: $00
	nop                                              ; $6978: $00
	nop                                              ; $6979: $00
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	nop                                              ; $697e: $00
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	nop                                              ; $698c: $00
	nop                                              ; $698d: $00
	nop                                              ; $698e: $00
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	nop                                              ; $69a6: $00
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	nop                                              ; $69ab: $00
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	nop                                              ; $69d5: $00
	nop                                              ; $69d6: $00
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	nop                                              ; $6a00: $00
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	nop                                              ; $6a26: $00
	nop                                              ; $6a27: $00
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	nop                                              ; $6a48: $00
	nop                                              ; $6a49: $00
	nop                                              ; $6a4a: $00
	nop                                              ; $6a4b: $00
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	nop                                              ; $6a4e: $00
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	nop                                              ; $6a7d: $00
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	nop                                              ; $6aa3: $00
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	nop                                              ; $6aaa: $00
	nop                                              ; $6aab: $00
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	nop                                              ; $6ac3: $00
	nop                                              ; $6ac4: $00
	nop                                              ; $6ac5: $00
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	nop                                              ; $6ac9: $00
	nop                                              ; $6aca: $00
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	nop                                              ; $6af7: $00
	nop                                              ; $6af8: $00
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	nop                                              ; $6b4c: $00
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	nop                                              ; $6bb5: $00
	nop                                              ; $6bb6: $00
	nop                                              ; $6bb7: $00
	nop                                              ; $6bb8: $00
	nop                                              ; $6bb9: $00
	nop                                              ; $6bba: $00
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	nop                                              ; $6bc6: $00
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	nop                                              ; $6bce: $00
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	nop                                              ; $6bd2: $00
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	nop                                              ; $6bd9: $00
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	nop                                              ; $6bf6: $00
	nop                                              ; $6bf7: $00
	nop                                              ; $6bf8: $00
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	nop                                              ; $6c02: $00
	nop                                              ; $6c03: $00
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	nop                                              ; $6c1c: $00
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	nop                                              ; $6c27: $00
	nop                                              ; $6c28: $00
	nop                                              ; $6c29: $00
	nop                                              ; $6c2a: $00
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	nop                                              ; $6c46: $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	nop                                              ; $6cb7: $00
	nop                                              ; $6cb8: $00
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	nop                                              ; $6cbb: $00
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	nop                                              ; $6d66: $00
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	nop                                              ; $6d72: $00
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	nop                                              ; $6da7: $00
	nop                                              ; $6da8: $00
	nop                                              ; $6da9: $00
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	nop                                              ; $6dc4: $00
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	nop                                              ; $6e11: $00
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	nop                                              ; $6e36: $00
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	nop                                              ; $6e91: $00
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	nop                                              ; $6ea9: $00
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	nop                                              ; $72ef: $00
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	nop                                              ; $7351: $00
	nop                                              ; $7352: $00
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	nop                                              ; $73d1: $00
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	nop                                              ; $73f2: $00
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	nop                                              ; $7474: $00
	nop                                              ; $7475: $00
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	nop                                              ; $7495: $00
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	nop                                              ; $74d7: $00
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	nop                                              ; $7504: $00
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	nop                                              ; $753a: $00
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	nop                                              ; $7544: $00
	nop                                              ; $7545: $00
	nop                                              ; $7546: $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	nop                                              ; $7550: $00
	nop                                              ; $7551: $00
	nop                                              ; $7552: $00
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	nop                                              ; $7555: $00
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	nop                                              ; $75e9: $00
	nop                                              ; $75ea: $00
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	nop                                              ; $75ed: $00
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	nop                                              ; $76b6: $00
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	nop                                              ; $76e7: $00
	nop                                              ; $76e8: $00
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	nop                                              ; $773e: $00
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	nop                                              ; $7743: $00
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	nop                                              ; $7747: $00
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	nop                                              ; $7763: $00
	nop                                              ; $7764: $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	nop                                              ; $794a: $00
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	nop                                              ; $7953: $00
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	nop                                              ; $7a4d: $00
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	nop                                              ; $7ad1: $00
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	nop                                              ; $7af8: $00
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	nop                                              ; $7b04: $00
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	nop                                              ; $7b08: $00
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	nop                                              ; $7b0b: $00
	nop                                              ; $7b0c: $00
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	nop                                              ; $7b64: $00
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	nop                                              ; $7b79: $00
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	nop                                              ; $7b88: $00
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	nop                                              ; $7c10: $00
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	nop                                              ; $7c93: $00
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
	nop                                              ; $7d14: $00
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	nop                                              ; $7d58: $00
	nop                                              ; $7d59: $00
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	nop                                              ; $7d6e: $00
	nop                                              ; $7d6f: $00
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	nop                                              ; $7d94: $00
	nop                                              ; $7d95: $00
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
