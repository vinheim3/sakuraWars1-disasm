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

	M_FarCall "nz", ToggleDoubleSpeedMode

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

	M_FarCall "z", ToggleDoubleSpeedMode
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
	ld   hl, Data_31_441e                                   ; $43f3: $21 $1e $44
	add  hl, bc                                      ; $43f6: $09
	ld   a, [hl+]                                    ; $43f7: $2a
	ld   c, a                                        ; $43f8: $4f
	ld   b, [hl]                                     ; $43f9: $46
	ld   hl, Data_31_441e                                   ; $43fa: $21 $1e $44
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


if def(VWF)
else
Data_31_441e:
endc
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
	ld   a, GS_0a                                      ; $459b: $3e $0a
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


GameState07_SceneryImages::
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
	ld   a, GS_SCENERY_IMAGES                                      ; $4dc4: $3e $07
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


GameState08_GirlEventImages::
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

	M_FarCall "nz", Call_00b_6402

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

	M_FarCall "nz", Call_00b_6402

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


SetGirlEventImagesState::
	ld   a, h                                        ; $57d0: $7c
	ld   [$c678], a                                  ; $57d1: $ea $78 $c6
	ld   a, l                                        ; $57d4: $7d
	ld   [$c679], a                                  ; $57d5: $ea $79 $c6
	ld   a, GS_GIRL_EVENT_IMAGES                                      ; $57d8: $3e $08
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

	M_FarCall CheckIfFlagSet1
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
	ld   hl, Data_31_595e                                   ; $5933: $21 $5e $59
	add  hl, bc                                      ; $5936: $09
	ld   a, [hl+]                                    ; $5937: $2a
	ld   c, a                                        ; $5938: $4f
	ld   b, [hl]                                     ; $5939: $46
	ld   hl, Data_31_595e                                   ; $593a: $21 $5e $59
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


if def(VWF)
else
Data_31_595e:
endc
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


if def(VWF)

Data_31_441e::
	dw Data_31_441eentry00-Data_31_441e
	dw Data_31_441eentry01-Data_31_441e
	dw Data_31_441eentry02-Data_31_441e
	dw Data_31_441eentry03-Data_31_441e
	dw Data_31_441eentry04-Data_31_441e
	dw Data_31_441eentry05-Data_31_441e
	dw Data_31_441eentry06-Data_31_441e
	dw Data_31_441eentry07-Data_31_441e
	dw Data_31_441eentry08-Data_31_441e
	dw Data_31_441eentry09-Data_31_441e
	dw Data_31_441eentry0a-Data_31_441e
	dw Data_31_441eentry0b-Data_31_441e
	dw Data_31_441eentry0c-Data_31_441e
	dw Data_31_441eentry0d-Data_31_441e
	dw Data_31_441eentry0e-Data_31_441e
	dw Data_31_441eentry0f-Data_31_441e
	dw Data_31_441eentry10-Data_31_441e
	dw Data_31_441eentry11-Data_31_441e
	dw Data_31_441eentry12-Data_31_441e
	dw Data_31_441eentry13-Data_31_441e
	dw Data_31_441eentry14-Data_31_441e

Data_31_441eentry00::
	db $2d, $48, $43, $44, $10, $41, $49, $47, $3d, $37, $10, $44, $40, $35, $4d, $36, $35, $37, $3f, $00
Data_31_441eentry01::
	db $21, $43, $fa, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $1b, $47, $47, $35, $49, $40, $48, $10, $2e, $46, $43, $49, $44, $39, $00
Data_31_441eentry02::
	db $2e, $3d, $41, $39, $10, $2d, $40, $3d, $44, $47, $10, $1b, $4b, $35, $4d, $00
Data_31_441eentry03::
	db $22, $39, $35, $46, $48, $4b, $35, $46, $41, $3d, $42, $3b, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $2e, $3c, $39, $35, $48, $39, $46, $10, $26, $3d, $3a, $39, $00
Data_31_441eentry04::
	db $1c, $40, $43, $43, $41, $3d, $42, $3b, $10, $27, $35, $3d, $38, $39, $42, $47, $00
Data_31_441eentry05::
	db $20, $35, $46, $39, $4b, $39, $40, $40, $00
Data_31_441eentry06::
	db $2d, $44, $46, $3d, $42, $3b, $10, $3d, $47, $10, $1d, $43, $41, $3d, $42, $3b, $00
Data_31_441eentry07::
	db $2e, $35, $42, $3b, $43, $10, $43, $3a, $10, $20, $35, $48, $39, $00
Data_31_441eentry08::
	db $2e, $3c, $39, $10, $24, $43, $4d, $10, $43, $3a, $10, $26, $3d, $4a, $3d, $42, $3b, $00
Data_31_441eentry09::
	db $2d, $43, $49, $48, $3c, $39, $46, $42, $10, $31, $3d, $42, $38, $e1, $10, $21, $43, $fa, $10, $21, $43, $fa, $00
Data_31_441eentry0a::
	db $27, $4d, $10, $1c, $39, $40, $43, $4a, $39, $38, $10, $24, $39, $35, $42, $01, $0a, $2a, $35, $49, $40, $00
Data_31_441eentry0b::
	db $26, $39, $48, $01, $01, $47, $10, $2e, $35, $3f, $39, $10, $48, $3c, $39, $10, $2e, $46, $35, $3d, $42, $00
Data_31_441eentry0c::
	db $27, $43, $4a, $39, $10, $29, $49, $48, $fa, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $1b, $47, $47, $35, $49, $40, $48, $10, $2e, $46, $43, $49, $44, $39, $10, $2e, $3c, $39, $41, $39, $00
Data_31_441eentry0d::
	db $29, $42, $48, $43, $10, $48, $3c, $39, $10, $28, $39, $4c, $48, $10, $29, $42, $39, $fa, $00
Data_31_441eentry0e::
	db $21, $43, $10, $20, $43, $46, $10, $23, $48, $e1, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $1b, $47, $47, $35, $49, $40, $48, $10, $2e, $46, $43, $49, $44, $39, $fa, $00
Data_31_441eentry0f::
	db $30, $3d, $37, $48, $43, $46, $4d, $fa, $00
Data_31_441eentry10::
	db $2e, $3c, $39, $41, $39, $10, $43, $3a, $10, $2d, $43, $46, $46, $43, $4b, $00
Data_31_441eentry11::
	db $24, $43, $4d, $00
Data_31_441eentry12::
	db $2d, $3d, $40, $39, $42, $48, $10, $28, $3d, $3c, $3d, $40, $3d, $47, $48, $00
Data_31_441eentry13::
	db $2e, $3c, $39, $41, $39, $10, $43, $3a, $10, $24, $43, $4d, $00
Data_31_441eentry14::
	db $1e, $35, $4d, $10, $2e, $46, $3d, $44, $10, $48, $43, $10, $48, $3c, $39, $10, $1d, $3d, $48, $4d, $00


Data_31_595e::
	dw Data_31_595eentry00-Data_31_595e
	dw Data_31_595eentry01-Data_31_595e
	dw Data_31_595eentry02-Data_31_595e
	dw Data_31_595eentry03-Data_31_595e
	dw Data_31_595eentry04-Data_31_595e
	dw Data_31_595eentry05-Data_31_595e
	dw Data_31_595eentry06-Data_31_595e

Data_31_595eentry00::
	db $2d, $35, $3f, $49, $46, $35, $00
Data_31_595eentry01::
	db $2d, $49, $41, $3d, $46, $39, $00
Data_31_595eentry02::
	db $27, $35, $46, $3d, $35, $00
Data_31_595eentry03::
	db $23, $46, $3d, $47, $00
Data_31_595eentry04::
	db $25, $43, $3c, $46, $35, $42, $00
Data_31_595eentry05::
	db $25, $35, $42, $42, $35, $00
Data_31_595eentry06::
	db $29, $48, $3c, $39, $46, $00

endc