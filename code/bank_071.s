; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $071", ROMX[$4000], BANK[$71]

	jp   hl                                          ; $4000: $e9


	ld   bc, $0086                                   ; $4001: $01 $86 $00
	ld   bc, $0e01                                   ; $4004: $01 $01 $0e
	add  b                                           ; $4007: $80
	ld   b, $00                                      ; $4008: $06 $00
	ld   [bc], a                                     ; $400a: $02
	add  b                                           ; $400b: $80
	ld   [$0201], sp                                 ; $400c: $08 $01 $02
	rrca                                             ; $400f: $0f
	add  l                                           ; $4010: $85
	nop                                              ; $4011: $00
	dec  b                                           ; $4012: $05
	ld   e, $e5                                      ; $4013: $1e $e5
	add  l                                           ; $4015: $85
	sbc  c                                           ; $4016: $99
	ld   sp, hl                                      ; $4017: $f9
	pop  hl                                          ; $4018: $e1
	add  b                                           ; $4019: $80
	add  l                                           ; $401a: $85
	nop                                              ; $401b: $00
	rst  $38                                         ; $401c: $ff
	add  l                                           ; $401d: $85
	nop                                              ; $401e: $00
	ld   [$9fe1], sp                                 ; $401f: $08 $e1 $9f
	sbc  l                                           ; $4022: $9d
	sbc  a                                           ; $4023: $9f
	sbc  c                                           ; $4024: $99
	sbc  a                                           ; $4025: $9f
	sbc  d                                           ; $4026: $9a
	sbc  a                                           ; $4027: $9f
	ld   a, a                                        ; $4028: $7f
	add  l                                           ; $4029: $85
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	sbc  d                                           ; $402c: $9a
	add  e                                           ; $402d: $83
	ldh  [rSC], a                                    ; $402e: $e0 $02
	ld   h, b                                        ; $4030: $60
	ldh  [$fa], a                                    ; $4031: $e0 $fa
	add  l                                           ; $4033: $85
	nop                                              ; $4034: $00
	ld   [bc], a                                     ; $4035: $02
	ld   d, d                                        ; $4036: $52
	add  l                                           ; $4037: $85
	dec  b                                           ; $4038: $05
	add  c                                           ; $4039: $81

jr_071_403a:
	inc  c                                           ; $403a: $0c
	ld   [bc], a                                     ; $403b: $02
	dec  c                                           ; $403c: $0d
	jr   z, jr_071_403a                              ; $403d: $28 $fb

	add  l                                           ; $403f: $85
	nop                                              ; $4040: $00
	ld   [$114a], sp                                 ; $4041: $08 $4a $11
	db   $10                                         ; $4044: $10
	db   $20, $a0                                    ; $4045: $20 $a0
	nop                                              ; $4047: $00
	add  b                                           ; $4048: $80
	nop                                              ; $4049: $00
	ld   c, e                                        ; $404a: $4b
	add  l                                           ; $404b: $85
	nop                                              ; $404c: $00
	ld   bc, $5d0d                                   ; $404d: $01 $0d $5d
	add  d                                           ; $4050: $82
	ld   e, a                                        ; $4051: $5f
	ld   [bc], a                                     ; $4052: $02
	nop                                              ; $4053: $00
	rrca                                             ; $4054: $0f
	ld   e, a                                        ; $4055: $5f
	add  l                                           ; $4056: $85
	nop                                              ; $4057: $00
	ld   bc, $c3c5                                   ; $4058: $01 $c5 $c3
	add  b                                           ; $405b: $80
	and  e                                           ; $405c: $a3
	add  b                                           ; $405d: $80
	jp   $bb02                                       ; $405e: $c3 $02 $bb


	ei                                               ; $4061: $fb
	ld   b, [hl]                                     ; $4062: $46
	add  l                                           ; $4063: $85
	nop                                              ; $4064: $00
	ld   [bc], a                                     ; $4065: $02
	cp   a                                           ; $4066: $bf
	ld   h, a                                        ; $4067: $67
	daa                                              ; $4068: $27
	add  b                                           ; $4069: $80
	add  hl, de                                      ; $406a: $19
	inc  bc                                          ; $406b: $03
	rlca                                             ; $406c: $07
	daa                                              ; $406d: $27
	ld   hl, $85fe                                   ; $406e: $21 $fe $85
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	add  b                                           ; $4073: $80
	add  d                                           ; $4074: $82
	ld   a, a                                        ; $4075: $7f
	add  b                                           ; $4076: $80
	ld   a, l                                        ; $4077: $7d
	ld   bc, $ea6a                                   ; $4078: $01 $6a $ea
	add  [hl]                                        ; $407b: $86
	nop                                              ; $407c: $00
	add  e                                           ; $407d: $83
	rst  $38                                         ; $407e: $ff
	ld   [bc], a                                     ; $407f: $02
	db   $e3                                         ; $4080: $e3
	ld   [bc], a                                     ; $4081: $02
	ld   e, $85                                      ; $4082: $1e $85
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	ld   bc, $fe80                                   ; $4086: $01 $80 $fe
	add  b                                           ; $4089: $80
	xor  d                                           ; $408a: $aa
	add  b                                           ; $408b: $80
	ret  nz                                          ; $408c: $c0

	ld   bc, $a1a0                                   ; $408d: $01 $a0 $a1
	add  l                                           ; $4090: $85
	nop                                              ; $4091: $00
	inc  bc                                          ; $4092: $03
	ld   a, [hl]                                     ; $4093: $7e
	rst  $38                                         ; $4094: $ff
	ld   a, a                                        ; $4095: $7f
	cp   $80                                         ; $4096: $fe $80
	rrca                                             ; $4098: $0f
	adc  c                                           ; $4099: $89
	nop                                              ; $409a: $00
	add  b                                           ; $409b: $80
	db   $f4                                         ; $409c: $f4
	add  b                                           ; $409d: $80
	add  b                                           ; $409e: $80
	adc  d                                           ; $409f: $8a
	nop                                              ; $40a0: $00
	add  b                                           ; $40a1: $80
	ld   a, a                                        ; $40a2: $7f
	add  b                                           ; $40a3: $80
	dec  bc                                          ; $40a4: $0b
	add  b                                           ; $40a5: $80
	ld   bc, $0a80                                   ; $40a6: $01 $80 $0a
	add  [hl]                                        ; $40a9: $86
	nop                                              ; $40aa: $00
	add  d                                           ; $40ab: $82
	rst  $38                                         ; $40ac: $ff
	add  b                                           ; $40ad: $80
	ld   a, a                                        ; $40ae: $7f
	ld   bc, $faff                                   ; $40af: $01 $ff $fa
	add  a                                           ; $40b2: $87
	ld   [bc], a                                     ; $40b3: $02
	add  b                                           ; $40b4: $80
	nop                                              ; $40b5: $00
	nop                                              ; $40b6: $00
	ld   [$0081], sp                                 ; $40b7: $08 $81 $00
	nop                                              ; $40ba: $00
	ld   l, l                                        ; $40bb: $6d
	add  e                                           ; $40bc: $83
	sbc  l                                           ; $40bd: $9d
	nop                                              ; $40be: $00
	sub  l                                           ; $40bf: $95
	add  e                                           ; $40c0: $83
	sbc  l                                           ; $40c1: $9d
	add  b                                           ; $40c2: $80
	adc  l                                           ; $40c3: $8d
	add  b                                           ; $40c4: $80
	sbc  l                                           ; $40c5: $9d
	inc  b                                           ; $40c6: $04
	ld   [$b080], sp                                 ; $40c7: $08 $80 $b0
	cp   a                                           ; $40ca: $bf
	adc  a                                           ; $40cb: $8f
	add  c                                           ; $40cc: $81
	add  b                                           ; $40cd: $80
	add  b                                           ; $40ce: $80
	cp   a                                           ; $40cf: $bf
	add  b                                           ; $40d0: $80
	add  b                                           ; $40d1: $80
	add  b                                           ; $40d2: $80
	sbc  a                                           ; $40d3: $9f
	add  c                                           ; $40d4: $81
	add  b                                           ; $40d5: $80
	add  b                                           ; $40d6: $80
	nop                                              ; $40d7: $00
	add  b                                           ; $40d8: $80
	rst  $38                                         ; $40d9: $ff
	add  c                                           ; $40da: $81
	nop                                              ; $40db: $00
	add  b                                           ; $40dc: $80
	ei                                               ; $40dd: $fb
	dec  c                                           ; $40de: $0d
	inc  b                                           ; $40df: $04
	nop                                              ; $40e0: $00
	db   $e4                                         ; $40e1: $e4
	ldh  [rTIMA], a                                  ; $40e2: $e0 $05
	jr   nz, jr_071_411b                             ; $40e4: $20 $35

	nop                                              ; $40e6: $00
	db   $10                                         ; $40e7: $10
	ld   l, a                                        ; $40e8: $6f
	rst  $28                                         ; $40e9: $ef
	nop                                              ; $40ea: $00
	add  b                                           ; $40eb: $80
	nop                                              ; $40ec: $00
	add  b                                           ; $40ed: $80
	db   $db                                         ; $40ee: $db
	add  b                                           ; $40ef: $80
	nop                                              ; $40f0: $00
	dec  bc                                          ; $40f1: $0b
	dec  [hl]                                        ; $40f2: $35
	nop                                              ; $40f3: $00
	cpl                                              ; $40f4: $2f
	nop                                              ; $40f5: $00
	ld   [de], a                                     ; $40f6: $12
	nop                                              ; $40f7: $00
	ld   [$7776], sp                                 ; $40f8: $08 $76 $77
	nop                                              ; $40fb: $00
	ld   bc, $8000                                   ; $40fc: $01 $00 $80
	ld   l, l                                        ; $40ff: $6d
	add  b                                           ; $4100: $80
	nop                                              ; $4101: $00
	add  hl, bc                                      ; $4102: $09
	ld   d, [hl]                                     ; $4103: $56
	nop                                              ; $4104: $00
	ld   a, d                                        ; $4105: $7a
	nop                                              ; $4106: $00
	dec  l                                           ; $4107: $2d
	ld   bc, $ff00                                   ; $4108: $01 $00 $ff
	ldh  a, [rIF]                                    ; $410b: $f0 $0f
	add  b                                           ; $410d: $80
	inc  bc                                          ; $410e: $03
	add  b                                           ; $410f: $80
	rst  JumpTable                                         ; $4110: $df
	ld   a, [bc]                                     ; $4111: $0a
	jr   nz, jr_071_4114                             ; $4112: $20 $00

jr_071_4114:
	cpl                                              ; $4114: $2f
	rrca                                             ; $4115: $0f
	xor  b                                           ; $4116: $a8
	nop                                              ; $4117: $00
	ld   d, d                                        ; $4118: $52
	ei                                               ; $4119: $fb
	dec  de                                          ; $411a: $1b

jr_071_411b:
	db   $e3                                         ; $411b: $e3
	inc  bc                                          ; $411c: $03
	add  c                                           ; $411d: $81
	ei                                               ; $411e: $fb
	rlca                                             ; $411f: $07
	and  e                                           ; $4120: $a3
	ei                                               ; $4121: $fb
	inc  hl                                          ; $4122: $23
	ld   a, e                                        ; $4123: $7b
	xor  e                                           ; $4124: $ab
	di                                               ; $4125: $f3
	ld   b, e                                        ; $4126: $43
	dec  de                                          ; $4127: $1b
	add  b                                           ; $4128: $80
	add  hl, sp                                      ; $4129: $39
	ld   [bc], a                                     ; $412a: $02
	dec  h                                           ; $412b: $25
	dec  a                                           ; $412c: $3d
	add  hl, sp                                      ; $412d: $39
	add  b                                           ; $412e: $80
	dec  a                                           ; $412f: $3d
	add  b                                           ; $4130: $80
	inc  a                                           ; $4131: $3c
	add  c                                           ; $4132: $81
	dec  a                                           ; $4133: $3d
	add  b                                           ; $4134: $80
	add  hl, sp                                      ; $4135: $39
	add  b                                           ; $4136: $80
	dec  a                                           ; $4137: $3d
	dec  b                                           ; $4138: $05
	ld   h, d                                        ; $4139: $62
	ld   d, b                                        ; $413a: $50
	ld   e, a                                        ; $413b: $5f
	ld   h, b                                        ; $413c: $60
	rla                                              ; $413d: $17
	ld   [$6f82], sp                                 ; $413e: $08 $82 $6f
	add  b                                           ; $4141: $80
	ld   l, h                                        ; $4142: $6c
	nop                                              ; $4143: $00
	ld   c, b                                        ; $4144: $48
	add  c                                           ; $4145: $81
	ld   e, b                                        ; $4146: $58
	dec  b                                           ; $4147: $05
	inc  d                                           ; $4148: $14
	ld   bc, $00e9                                   ; $4149: $01 $e9 $00
	ld   l, h                                        ; $414c: $6c
	ld   [hl], b                                     ; $414d: $70
	add  c                                           ; $414e: $81
	ldh  a, [rSB]                                    ; $414f: $f0 $01
	pop  af                                          ; $4151: $f1
	ld   h, c                                        ; $4152: $61
	add  b                                           ; $4153: $80
	ld   l, d                                        ; $4154: $6a
	add  b                                           ; $4155: $80
	ld   a, l                                        ; $4156: $7d
	ld   c, $6b                                      ; $4157: $0e $6b
	ld   a, [bc]                                     ; $4159: $0a
	nop                                              ; $415a: $00
	inc  bc                                          ; $415b: $03
	nop                                              ; $415c: $00
	dec  c                                           ; $415d: $0d
	nop                                              ; $415e: $00
	ld   de, $2200                                   ; $415f: $11 $00 $22
	ld   [bc], a                                     ; $4162: $02
	ld   b, d                                        ; $4163: $42
	inc  bc                                          ; $4164: $03
	add  a                                           ; $4165: $87
	rlca                                             ; $4166: $07
	add  b                                           ; $4167: $80
	dec  bc                                          ; $4168: $0b
	inc  bc                                          ; $4169: $03
	rst  $38                                         ; $416a: $ff
	nop                                              ; $416b: $00
	add  b                                           ; $416c: $80
	nop                                              ; $416d: $00
	add  b                                           ; $416e: $80
	ld   b, b                                        ; $416f: $40
	add  b                                           ; $4170: $80
	db   $10                                         ; $4171: $10
	add  b                                           ; $4172: $80
	ld   l, b                                        ; $4173: $68
	ld   bc, $34f4                                   ; $4174: $01 $f4 $34
	add  d                                           ; $4177: $82
	ld   a, [hl-]                                    ; $4178: $3a
	nop                                              ; $4179: $00
	ld   b, b                                        ; $417a: $40
	add  b                                           ; $417b: $80
	ld   bc, $aa80                                   ; $417c: $01 $80 $aa
	add  b                                           ; $417f: $80
	ld   e, l                                        ; $4180: $5d

Call_071_4181:
	add  b                                           ; $4181: $80
	dec  bc                                          ; $4182: $0b
	add  b                                           ; $4183: $80
	rra                                              ; $4184: $1f
	add  b                                           ; $4185: $80
	dec  bc                                          ; $4186: $0b
	add  b                                           ; $4187: $80
	ld   de, $ab80                                   ; $4188: $11 $80 $ab
	add  b                                           ; $418b: $80
	ld   d, a                                        ; $418c: $57
	add  b                                           ; $418d: $80
	rst  $38                                         ; $418e: $ff
	add  b                                           ; $418f: $80
	ld   e, a                                        ; $4190: $5f
	add  e                                           ; $4191: $83
	rst  $38                                         ; $4192: $ff
	add  b                                           ; $4193: $80
	ld   sp, hl                                      ; $4194: $f9
	ld   [bc], a                                     ; $4195: $02
	ldh  a, [$f6]                                    ; $4196: $f0 $f6
	ld   sp, hl                                      ; $4198: $f9
	add  [hl]                                        ; $4199: $86
	rst  $38                                         ; $419a: $ff
	add  b                                           ; $419b: $80
	or   c                                           ; $419c: $b1
	add  b                                           ; $419d: $80
	ld   b, b                                        ; $419e: $40
	add  b                                           ; $419f: $80
	xor  a                                           ; $41a0: $af
	ld   bc, $f0ff                                   ; $41a1: $01 $ff $f0
	add  b                                           ; $41a4: $80
	inc  c                                           ; $41a5: $0c
	add  h                                           ; $41a6: $84
	nop                                              ; $41a7: $00
	add  d                                           ; $41a8: $82
	ld   [bc], a                                     ; $41a9: $02
	add  b                                           ; $41aa: $80
	dec  bc                                          ; $41ab: $0b
	ld   b, $0f                                      ; $41ac: $06 $0f
	ld   a, d                                        ; $41ae: $7a
	adc  l                                           ; $41af: $8d
	dec  e                                           ; $41b0: $1d
	dec  d                                           ; $41b1: $15
	add  l                                           ; $41b2: $85
	adc  l                                           ; $41b3: $8d
	add  b                                           ; $41b4: $80
	sbc  l                                           ; $41b5: $9d
	ld   bc, $8d85                                   ; $41b6: $01 $85 $8d
	add  b                                           ; $41b9: $80
	sub  l                                           ; $41ba: $95
	add  b                                           ; $41bb: $80
	adc  b                                           ; $41bc: $88
	inc  bc                                          ; $41bd: $03
	add  e                                           ; $41be: $83
	add  b                                           ; $41bf: $80
	inc  e                                           ; $41c0: $1c
	sbc  a                                           ; $41c1: $9f
	add  c                                           ; $41c2: $81
	sub  b                                           ; $41c3: $90
	ld   [bc], a                                     ; $41c4: $02
	sbc  h                                           ; $41c5: $9c
	sub  d                                           ; $41c6: $92
	sbc  [hl]                                        ; $41c7: $9e
	add  c                                           ; $41c8: $81
	sub  b                                           ; $41c9: $90
	add  d                                           ; $41ca: $82
	sbc  h                                           ; $41cb: $9c
	ld   bc, $a91c                                   ; $41cc: $01 $1c $a9
	add  c                                           ; $41cf: $81
	nop                                              ; $41d0: $00
	inc  b                                           ; $41d1: $04
	and  l                                           ; $41d2: $a5
	nop                                              ; $41d3: $00
	ld   a, a                                        ; $41d4: $7f
	nop                                              ; $41d5: $00
	ccf                                              ; $41d6: $3f
	add  c                                           ; $41d7: $81
	nop                                              ; $41d8: $00
	inc  c                                           ; $41d9: $0c
	rlca                                             ; $41da: $07
	ccf                                              ; $41db: $3f
	dec  a                                           ; $41dc: $3d
	ccf                                              ; $41dd: $3f
	ld   e, a                                        ; $41de: $5f
	nop                                              ; $41df: $00
	rra                                              ; $41e0: $1f
	nop                                              ; $41e1: $00
	ld   a, [hl-]                                    ; $41e2: $3a
	nop                                              ; $41e3: $00
	rst  $38                                         ; $41e4: $ff
	nop                                              ; $41e5: $00
	rst  $38                                         ; $41e6: $ff
	add  c                                           ; $41e7: $81
	nop                                              ; $41e8: $00
	inc  c                                           ; $41e9: $0c
	daa                                              ; $41ea: $27
	rst  $38                                         ; $41eb: $ff
	ld   a, [hl-]                                    ; $41ec: $3a
	ccf                                              ; $41ed: $3f
	adc  a                                           ; $41ee: $8f
	nop                                              ; $41ef: $00
	ld   a, h                                        ; $41f0: $7c
	nop                                              ; $41f1: $00
	ld   l, $00                                      ; $41f2: $2e $00
	rst  $38                                         ; $41f4: $ff
	nop                                              ; $41f5: $00
	rst  $38                                         ; $41f6: $ff
	add  c                                           ; $41f7: $81
	nop                                              ; $41f8: $00
	inc  c                                           ; $41f9: $0c
	ld   [hl], a                                     ; $41fa: $77
	rst  $38                                         ; $41fb: $ff
	db   $dd                                         ; $41fc: $dd
	rst  $38                                         ; $41fd: $ff
	ld   bc, $0100                                   ; $41fe: $01 $00 $01
	nop                                              ; $4201: $00
	xor  d                                           ; $4202: $aa
	nop                                              ; $4203: $00
	cp   $00                                         ; $4204: $fe $00
	db   $fc                                         ; $4206: $fc
	add  c                                           ; $4207: $81
	nop                                              ; $4208: $00
	ld   bc, $f040                                   ; $4209: $01 $40 $f0
	add  b                                           ; $420c: $80
	ret  nc                                          ; $420d: $d0

	ld   bc, $fb48                                   ; $420e: $01 $48 $fb
	add  c                                           ; $4211: $81
	dec  bc                                          ; $4212: $0b
	ld   [bc], a                                     ; $4213: $02
	srl  e                                           ; $4214: $cb $3b
	ei                                               ; $4216: $fb
	add  c                                           ; $4217: $81
	dec  bc                                          ; $4218: $0b
	add  d                                           ; $4219: $82
	rlc  d                                           ; $421a: $cb $02
	jp   z, $39e4                                    ; $421c: $ca $e4 $39

	add  b                                           ; $421f: $80
	dec  a                                           ; $4220: $3d
	add  b                                           ; $4221: $80
	add  hl, sp                                      ; $4222: $39
	add  b                                           ; $4223: $80
	dec  [hl]                                        ; $4224: $35
	add  b                                           ; $4225: $80
	add  hl, sp                                      ; $4226: $39
	add  b                                           ; $4227: $80
	dec  [hl]                                        ; $4228: $35
	add  b                                           ; $4229: $80
	add  hl, hl                                      ; $422a: $29
	ld   [bc], a                                     ; $422b: $02
	pop  de                                          ; $422c: $d1
	ld   de, $819a                                   ; $422d: $11 $9a $81
	ld   e, b                                        ; $4230: $58
	nop                                              ; $4231: $00
	ld   a, h                                        ; $4232: $7c
	add  c                                           ; $4233: $81
	ld   l, h                                        ; $4234: $6c
	inc  bc                                          ; $4235: $03
	ld   a, a                                        ; $4236: $7f
	ld   [hl], h                                     ; $4237: $74
	ld   [hl], a                                     ; $4238: $77
	ld   [hl], e                                     ; $4239: $73
	add  b                                           ; $423a: $80
	ld   a, a                                        ; $423b: $7f
	inc  b                                           ; $423c: $04
	ld   b, e                                        ; $423d: $43
	ld   b, a                                        ; $423e: $47
	sbc  d                                           ; $423f: $9a
	ld   a, [hl]                                     ; $4240: $7e
	ld   l, $81                                      ; $4241: $2e $81
	ld   a, $0b                                      ; $4243: $3e $0b
	inc  d                                           ; $4245: $14
	inc  e                                           ; $4246: $1c
	ld   a, [$fe00]                                  ; $4247: $fa $00 $fe

jr_071_424a:
	db   $fc                                         ; $424a: $fc
	push bc                                          ; $424b: $c5
	call nz, $c4f4                                   ; $424c: $c4 $f4 $c4
	ld   [hl], $07                                   ; $424f: $36 $07
	add  b                                           ; $4251: $80
	dec  bc                                          ; $4252: $0b
	dec  b                                           ; $4253: $05
	rrca                                             ; $4254: $0f
	inc  bc                                          ; $4255: $03
	rra                                              ; $4256: $1f
	ld   bc, $0231                                   ; $4257: $01 $31 $02
	add  d                                           ; $425a: $82
	ld   b, $02                                      ; $425b: $06 $02
	or   $05                                         ; $425d: $f6 $05
	db   $10                                         ; $425f: $10
	adc  c                                           ; $4260: $89
	sbc  l                                           ; $4261: $9d
	inc  b                                           ; $4262: $04
	add  l                                           ; $4263: $85
	dec  b                                           ; $4264: $05
	add  hl, de                                      ; $4265: $19
	add  c                                           ; $4266: $81
	cp   b                                           ; $4267: $b8
	add  b                                           ; $4268: $80
	ld   a, a                                        ; $4269: $7f
	add  l                                           ; $426a: $85
	rst  $38                                         ; $426b: $ff
	add  b                                           ; $426c: $80
	cp   a                                           ; $426d: $bf
	inc  b                                           ; $426e: $04
	ld   e, a                                        ; $426f: $5f
	rra                                              ; $4270: $1f
	ld   e, a                                        ; $4271: $5f
	rra                                              ; $4272: $1f
	jp   hl                                          ; $4273: $e9


	add  c                                           ; $4274: $81
	and  $03                                         ; $4275: $e6 $03
	rst  $38                                         ; $4277: $ff
	or   $ff                                         ; $4278: $f6 $ff
	ld   sp, hl                                      ; $427a: $f9
	add  b                                           ; $427b: $80
	or   $80                                         ; $427c: $f6 $80
	ldh  a, [rP1]                                    ; $427e: $f0 $00
	cp   $81                                         ; $4280: $fe $81
	ldh  a, [rP1]                                    ; $4282: $f0 $00
	ld   [hl], c                                     ; $4284: $71
	add  b                                           ; $4285: $80
	ld   a, a                                        ; $4286: $7f
	ld   bc, $fb7b                                   ; $4287: $01 $7b $fb
	add  b                                           ; $428a: $80
	rst  $28                                         ; $428b: $ef
	add  b                                           ; $428c: $80
	rst  $38                                         ; $428d: $ff
	add  b                                           ; $428e: $80
	rst  $30                                         ; $428f: $f7
	add  b                                           ; $4290: $80
	db   $eb                                         ; $4291: $eb
	add  b                                           ; $4292: $80
	rst  $30                                         ; $4293: $f7
	add  hl, bc                                      ; $4294: $09
	set  0, h                                        ; $4295: $cb $c4
	rrca                                             ; $4297: $0f
	add  hl, bc                                      ; $4298: $09
	rrca                                             ; $4299: $0f
	ld   bc, $090f                                   ; $429a: $01 $0f $09
	rrca                                             ; $429d: $0f
	dec  bc                                          ; $429e: $0b
	add  c                                           ; $429f: $81
	rrca                                             ; $42a0: $0f
	ld   b, $0b                                      ; $42a1: $06 $0b
	rrca                                             ; $42a3: $0f
	add  hl, bc                                      ; $42a4: $09
	rrca                                             ; $42a5: $0f
	db   $f4                                         ; $42a6: $f4
	add  b                                           ; $42a7: $80
	add  e                                           ; $42a8: $83
	add  e                                           ; $42a9: $83
	add  b                                           ; $42aa: $80
	dec  c                                           ; $42ab: $0d
	add  c                                           ; $42ac: $81
	add  b                                           ; $42ad: $80
	add  c                                           ; $42ae: $81
	add  b                                           ; $42af: $80
	add  [hl]                                        ; $42b0: $86
	ret  nz                                          ; $42b1: $c0

	add  $c0                                         ; $42b2: $c6 $c0
	ret  nc                                          ; $42b4: $d0

	inc  e                                           ; $42b5: $1c
	ld   [de], a                                     ; $42b6: $12
	ld   e, $80                                      ; $42b7: $1e $80
	nop                                              ; $42b9: $00
	add  b                                           ; $42ba: $80
	ld   c, $0b                                      ; $42bb: $0e $0b
	add  $06                                         ; $42bd: $c6 $06
	ld   b, e                                        ; $42bf: $43
	inc  bc                                          ; $42c0: $03
	add  hl, hl                                      ; $42c1: $29
	add  hl, bc                                      ; $42c2: $09
	inc  l                                           ; $42c3: $2c
	inc  c                                           ; $42c4: $0c
	ld   b, a                                        ; $42c5: $47
	ccf                                              ; $42c6: $3f
	scf                                              ; $42c7: $37
	jr   nc, jr_071_424a                             ; $42c8: $30 $80

	inc  a                                           ; $42ca: $3c
	dec  b                                           ; $42cb: $05
	ld   a, $3f                                      ; $42cc: $3e $3f
	jr   c, @+$41                                    ; $42ce: $38 $3f

	ld   e, b                                        ; $42d0: $58
	rra                                              ; $42d1: $1f
	add  b                                           ; $42d2: $80
	dec  e                                           ; $42d3: $1d
	inc  b                                           ; $42d4: $04
	ld   a, [de]                                     ; $42d5: $1a
	dec  de                                          ; $42d6: $1b
	ld   c, b                                        ; $42d7: $48
	db   $db                                         ; $42d8: $db
	ld   d, e                                        ; $42d9: $53
	add  b                                           ; $42da: $80
	nop                                              ; $42db: $00
	inc  bc                                          ; $42dc: $03
	di                                               ; $42dd: $f3
	ld   [hl], e                                     ; $42de: $73
	rst  $10                                         ; $42df: $d7
	ld   d, a                                        ; $42e0: $57
	add  b                                           ; $42e1: $80
	ld   a, e                                        ; $42e2: $7b
	add  b                                           ; $42e3: $80
	db   $d3                                         ; $42e4: $d3
	inc  bc                                          ; $42e5: $03
	ld   h, h                                        ; $42e6: $64
	push af                                          ; $42e7: $f5
	sub  c                                           ; $42e8: $91
	adc  b                                           ; $42e9: $88
	add  b                                           ; $42ea: $80
	rst  $38                                         ; $42eb: $ff
	ld   bc, $0088                                   ; $42ec: $01 $88 $00
	add  b                                           ; $42ef: $80
	rra                                              ; $42f0: $1f

jr_071_42f1:
	add  b                                           ; $42f1: $80
	push de                                          ; $42f2: $d5
	add  b                                           ; $42f3: $80
	dec  e                                           ; $42f4: $1d
	add  b                                           ; $42f5: $80
	sub  a                                           ; $42f6: $97
	ld   a, [bc]                                     ; $42f7: $0a
	sbc  $d6                                         ; $42f8: $de $d6
	ld   [$301d], sp                                 ; $42fa: $08 $1d $30
	ld   d, b                                        ; $42fd: $50
	ld   [hl], b                                     ; $42fe: $70
	jr   nc, jr_071_42f1                             ; $42ff: $30 $f0

	ret  nc                                          ; $4301: $d0

	ld   d, b                                        ; $4302: $50
	add  b                                           ; $4303: $80
	ld   [hl], b                                     ; $4304: $70
	add  hl, de                                      ; $4305: $19
	scf                                              ; $4306: $37
	ldh  [hScriptOpcodeParams], a                                    ; $4307: $e0 $a0
	ldh  [rAUD4LEN], a                               ; $4309: $e0 $20
	ldh  [$ef], a                                    ; $430b: $e0 $ef
	jp   z, $f838                                    ; $430d: $ca $38 $f8

	ld   bc, $f100                                   ; $4310: $01 $00 $f1
	ldh  a, [c]                                      ; $4313: $f2
	ld   [bc], a                                     ; $4314: $02
	ldh  [c], a                                      ; $4315: $e2
	db   $e3                                         ; $4316: $e3
	ret  z                                           ; $4317: $c8

	ld   c, h                                        ; $4318: $4c
	nop                                              ; $4319: $00
	and  l                                           ; $431a: $a5
	nop                                              ; $431b: $00
	db   $f4                                         ; $431c: $f4
	add  hl, bc                                      ; $431d: $09
	pop  af                                          ; $431e: $f1
	ld   sp, $2180                                   ; $431f: $31 $80 $21
	add  b                                           ; $4322: $80
	ld   de, $5902                                   ; $4323: $11 $02 $59
	ld   h, c                                        ; $4326: $61
	dec  h                                           ; $4327: $25
	add  b                                           ; $4328: $80
	add  hl, de                                      ; $4329: $19
	inc  b                                           ; $432a: $04
	rlca                                             ; $432b: $07
	daa                                              ; $432c: $27
	ld   hl, $6d69                                   ; $432d: $21 $69 $6d
	add  b                                           ; $4330: $80
	ld   l, a                                        ; $4331: $6f
	nop                                              ; $4332: $00
	ld   h, l                                        ; $4333: $65
	add  c                                           ; $4334: $81
	ld   l, a                                        ; $4335: $6f
	db   $10                                         ; $4336: $10
	inc  c                                           ; $4337: $0c
	rra                                              ; $4338: $1f
	ld   d, e                                        ; $4339: $53
	rra                                              ; $433a: $1f
	ld   d, c                                        ; $433b: $51
	rra                                              ; $433c: $1f
	add  hl, de                                      ; $433d: $19
	rra                                              ; $433e: $1f
	dec  l                                           ; $433f: $2d
	ld   b, h                                        ; $4340: $44
	push af                                          ; $4341: $f5
	call nz, $c4f4                                   ; $4342: $c4 $f4 $c4
	ld   h, b                                        ; $4345: $60
	ldh  [$f7], a                                    ; $4346: $e0 $f7
	add  b                                           ; $4348: $80
	ldh  a, [$08]                                    ; $4349: $f0 $08
	ldh  [$c7], a                                    ; $434b: $e0 $c7
	ret  nz                                          ; $434d: $c0

	ldh  a, [$c0]                                    ; $434e: $f0 $c0
	ccf                                              ; $4350: $3f
	inc  bc                                          ; $4351: $03
	db   $e3                                         ; $4352: $e3
	rrca                                             ; $4353: $0f
	add  b                                           ; $4354: $80
	ccf                                              ; $4355: $3f
	inc  b                                           ; $4356: $04
	rst  $38                                         ; $4357: $ff
	nop                                              ; $4358: $00
	add  b                                           ; $4359: $80
	ld   a, a                                        ; $435a: $7f
	add  b                                           ; $435b: $80
	add  c                                           ; $435c: $81
	nop                                              ; $435d: $00
	inc  b                                           ; $435e: $04
	sbc  a                                           ; $435f: $9f
	rra                                              ; $4360: $1f
	ret  nz                                          ; $4361: $c0

	sbc  c                                           ; $4362: $99
	sbc  e                                           ; $4363: $9b
	add  b                                           ; $4364: $80
	sbc  h                                           ; $4365: $9c
	ld   [$ae84], sp                                 ; $4366: $08 $84 $ae
	nop                                              ; $4369: $00
	ld   l, [hl]                                     ; $436a: $6e
	add  sp, $6e                                     ; $436b: $e8 $6e
	ld   b, $3e                                      ; $436d: $06 $3e
	jr   c, jr_071_42f1                              ; $436f: $38 $80

	sub  d                                           ; $4371: $92
	add  b                                           ; $4372: $80
	adc  a                                           ; $4373: $8f
	dec  b                                           ; $4374: $05
	or   e                                           ; $4375: $b3
	add  e                                           ; $4376: $83
	adc  e                                           ; $4377: $8b
	add  e                                           ; $4378: $83
	cp   c                                           ; $4379: $b9
	add  c                                           ; $437a: $81
	add  b                                           ; $437b: $80
	cp   a                                           ; $437c: $bf
	add  b                                           ; $437d: $80
	rra                                              ; $437e: $1f
	inc  b                                           ; $437f: $04
	rst  $28                                         ; $4380: $ef
	rrca                                             ; $4381: $0f
	rla                                              ; $4382: $17
	ld   b, $0c                                      ; $4383: $06 $0c
	add  b                                           ; $4385: $80
	pop  af                                          ; $4386: $f1
	add  c                                           ; $4387: $81
	pop  hl                                          ; $4388: $e1
	nop                                              ; $4389: $00
	rst  $20                                         ; $438a: $e7
	add  c                                           ; $438b: $81
	jp   $cf00                                       ; $438c: $c3 $00 $cf


	add  b                                           ; $438f: $80
	add  a                                           ; $4390: $87
	inc  bc                                          ; $4391: $03
	rlca                                             ; $4392: $07
	rra                                              ; $4393: $1f
	rrca                                             ; $4394: $0f
	rra                                              ; $4395: $1f
	add  b                                           ; $4396: $80
	rst  $10                                         ; $4397: $d7
	add  b                                           ; $4398: $80
	db   $eb                                         ; $4399: $eb
	add  b                                           ; $439a: $80
	rst  ToBoot                                         ; $439b: $c7
	add  b                                           ; $439c: $80
	adc  a                                           ; $439d: $8f
	add  b                                           ; $439e: $80
	rst  ToBoot                                         ; $439f: $c7
	add  b                                           ; $43a0: $80
	adc  a                                           ; $43a1: $8f
	dec  b                                           ; $43a2: $05
	ccf                                              ; $43a3: $3f
	ld   a, $7e                                      ; $43a4: $3e $7e
	halt                                             ; $43a6: $76
	rrca                                             ; $43a7: $0f
	inc  bc                                          ; $43a8: $03
	add  c                                           ; $43a9: $81
	rrca                                             ; $43aa: $0f
	inc  b                                           ; $43ab: $04
	dec  b                                           ; $43ac: $05
	rrca                                             ; $43ad: $0f
	ld   a, [bc]                                     ; $43ae: $0a
	rrca                                             ; $43af: $0f
	add  hl, bc                                      ; $43b0: $09
	add  c                                           ; $43b1: $81
	rrca                                             ; $43b2: $0f
	ld   d, $0e                                      ; $43b3: $16 $0e
	rrca                                             ; $43b5: $0f
	rst  $38                                         ; $43b6: $ff
	ret  nz                                          ; $43b7: $c0

	jp   nz, $c1c0                                   ; $43b8: $c2 $c0 $c1

	ret  nz                                          ; $43bb: $c0

	ld   b, c                                        ; $43bc: $41
	ldh  [$ef], a                                    ; $43bd: $e0 $ef
	ldh  [$63], a                                    ; $43bf: $e0 $63
	ldh  [$e8], a                                    ; $43c1: $e0 $e8
	ldh  [$62], a                                    ; $43c3: $e0 $62
	ldh  [rOBP0], a                                  ; $43c5: $e0 $48
	ld   c, $3f                                      ; $43c7: $0e $3f
	rra                                              ; $43c9: $1f
	ld   b, b                                        ; $43ca: $40
	add  c                                           ; $43cb: $81
	nop                                              ; $43cc: $00
	ld   [$001f], sp                                 ; $43cd: $08 $1f $00
	ld   e, a                                        ; $43d0: $5f
	nop                                              ; $43d1: $00
	cp   a                                           ; $43d2: $bf
	nop                                              ; $43d3: $00
	ld   b, b                                        ; $43d4: $40
	nop                                              ; $43d5: $00
	rst  JumpTable                                         ; $43d6: $df
	add  c                                           ; $43d7: $81
	rra                                              ; $43d8: $1f
	add  b                                           ; $43d9: $80
	ld   e, $0b                                      ; $43da: $1e $0b
	ccf                                              ; $43dc: $3f
	nop                                              ; $43dd: $00
	rst  $38                                         ; $43de: $ff
	nop                                              ; $43df: $00
	rst  $38                                         ; $43e0: $ff
	nop                                              ; $43e1: $00
	cp   a                                           ; $43e2: $bf
	ld   d, $46                                      ; $43e3: $16 $46
	ld   [$3129], sp                                 ; $43e5: $08 $29 $31
	add  b                                           ; $43e8: $80
	ld   [hl], e                                     ; $43e9: $73
	add  b                                           ; $43ea: $80
	rst  $30                                         ; $43eb: $f7
	dec  b                                           ; $43ec: $05
	rst  $38                                         ; $43ed: $ff
	nop                                              ; $43ee: $00
	rst  $38                                         ; $43ef: $ff
	nop                                              ; $43f0: $00
	rst  $38                                         ; $43f1: $ff
	nop                                              ; $43f2: $00
	add  b                                           ; $43f3: $80
	ld   a, a                                        ; $43f4: $7f
	inc  bc                                          ; $43f5: $03
	rst  JumpTable                                         ; $43f6: $df
	db   $10                                         ; $43f7: $10
	ld   a, [hl]                                     ; $43f8: $7e
	ld   c, [hl]                                     ; $43f9: $4e
	add  b                                           ; $43fa: $80
	ld   l, a                                        ; $43fb: $6f
	add  b                                           ; $43fc: $80
	rst  $28                                         ; $43fd: $ef
	dec  bc                                          ; $43fe: $0b
	rst  $38                                         ; $43ff: $ff
	nop                                              ; $4400: $00
	rst  $38                                         ; $4401: $ff
	nop                                              ; $4402: $00
	rst  $38                                         ; $4403: $ff
	nop                                              ; $4404: $00
	rst  $38                                         ; $4405: $ff
	db   $fd                                         ; $4406: $fd
	db   $ed                                         ; $4407: $ed
	nop                                              ; $4408: $00
	ld   l, e                                        ; $4409: $6b
	ld   h, b                                        ; $440a: $60
	add  b                                           ; $440b: $80
	and  b                                           ; $440c: $a0
	nop                                              ; $440d: $00
	db   $e4                                         ; $440e: $e4
	add  b                                           ; $440f: $80
	ldh  [$35], a                                    ; $4410: $e0 $35
	nop                                              ; $4412: $00
	rst  $38                                         ; $4413: $ff
	nop                                              ; $4414: $00
	rst  $38                                         ; $4415: $ff
	nop                                              ; $4416: $00
	rst  $38                                         ; $4417: $ff
	ld   b, b                                        ; $4418: $40
	pop  hl                                          ; $4419: $e1
	ld   [$003e], sp                                 ; $441a: $08 $3e $00
	adc  b                                           ; $441d: $88
	nop                                              ; $441e: $00
	add  sp, $00                                     ; $441f: $e8 $00
	ld   a, [bc]                                     ; $4421: $0a
	nop                                              ; $4422: $00
	rlc  b                                           ; $4423: $cb $00
	reti                                             ; $4425: $d9


	nop                                              ; $4426: $00
	add  $00                                         ; $4427: $c6 $00
	jr   jr_071_442b                                 ; $4429: $18 $00

jr_071_442b:
	halt                                             ; $442b: $76
	add  hl, sp                                      ; $442c: $39
	sbc  l                                           ; $442d: $9d
	dec  e                                           ; $442e: $1d
	and  c                                           ; $442f: $a1
	ld   hl, $048d                                   ; $4430: $21 $8d $04
	and  $00                                         ; $4433: $e6 $00
	add  a                                           ; $4435: $87
	nop                                              ; $4436: $00
	ld   hl, $8000                                   ; $4437: $21 $00 $80
	nop                                              ; $443a: $00
	call z, $2d3f                                    ; $443b: $cc $3f $2d
	ccf                                              ; $443e: $3f
	dec  h                                           ; $443f: $25
	ccf                                              ; $4440: $3f
	dec  sp                                          ; $4441: $3b
	ccf                                              ; $4442: $3f
	dec  sp                                          ; $4443: $3b
	ld   a, a                                        ; $4444: $7f
	ld   [hl], e                                     ; $4445: $73
	ld   a, [hl]                                     ; $4446: $7e
	ld   h, [hl]                                     ; $4447: $66
	add  c                                           ; $4448: $81
	ld   a, [hl]                                     ; $4449: $7e
	rla                                              ; $444a: $17
	ld   l, a                                        ; $444b: $6f
	add  b                                           ; $444c: $80
	adc  l                                           ; $444d: $8d
	add  b                                           ; $444e: $80
	ld   h, [hl]                                     ; $444f: $66
	nop                                              ; $4450: $00
	ld   a, e                                        ; $4451: $7b
	nop                                              ; $4452: $00
	rra                                              ; $4453: $1f
	nop                                              ; $4454: $00
	daa                                              ; $4455: $27
	jr   nz, jr_071_4491                             ; $4456: $20 $39

	jr   c, jr_071_4496                              ; $4458: $38 $3c

	inc  [hl]                                        ; $445a: $34
	ld   c, b                                        ; $445b: $48
	nop                                              ; $445c: $00
	ldh  a, [$3f]                                    ; $445d: $f0 $3f
	adc  a                                           ; $445f: $8f
	nop                                              ; $4460: $00
	add  b                                           ; $4461: $80
	nop                                              ; $4462: $00
	add  b                                           ; $4463: $80
	rrca                                             ; $4464: $0f
	nop                                              ; $4465: $00
	sbc  b                                           ; $4466: $98
	add  c                                           ; $4467: $81
	rra                                              ; $4468: $1f
	ld   l, $07                                      ; $4469: $2e $07
	nop                                              ; $446b: $00
	add  b                                           ; $446c: $80
	nop                                              ; $446d: $00
	ld   bc, $c1c0                                   ; $446e: $01 $c0 $c1
	nop                                              ; $4471: $00
	inc  b                                           ; $4472: $04
	nop                                              ; $4473: $00
	add  sp, -$20                                    ; $4474: $e8 $e0
	db   $10                                         ; $4476: $10
	ret  nz                                          ; $4477: $c0

	adc  $80                                         ; $4478: $ce $80
	ret  nz                                          ; $447a: $c0

	nop                                              ; $447b: $00
	ld   b, l                                        ; $447c: $45
	nop                                              ; $447d: $00
	stop                                             ; $447e: $10 $00
	rst  $38                                         ; $4480: $ff
	nop                                              ; $4481: $00
	ei                                               ; $4482: $fb
	ld   bc, $0215                                   ; $4483: $01 $15 $02
	ld   h, d                                        ; $4486: $62
	dec  b                                           ; $4487: $05
	inc  b                                           ; $4488: $04
	nop                                              ; $4489: $00
	inc  bc                                          ; $448a: $03
	nop                                              ; $448b: $00
	xor  e                                           ; $448c: $ab
	ld   e, $fe                                      ; $448d: $1e $fe
	ld   a, $ce                                      ; $448f: $3e $ce

jr_071_4491:
	jp   z, Jump_071_44d2                            ; $4491: $ca $d2 $44

	inc  e                                           ; $4494: $1c
	adc  d                                           ; $4495: $8a

jr_071_4496:
	ld   e, d                                        ; $4496: $5a
	inc  e                                           ; $4497: $1c
	sbc  h                                           ; $4498: $9c
	add  b                                           ; $4499: $80
	ld   c, $01                                      ; $449a: $0e $01
	inc  d                                           ; $449c: $14
	db   $f4                                         ; $449d: $f4
	add  b                                           ; $449e: $80
	ld   d, [hl]                                     ; $449f: $56
	add  b                                           ; $44a0: $80
	ld   a, [$f780]                                  ; $44a1: $fa $80 $f7
	add  b                                           ; $44a4: $80
	ld   [$c480], a                                  ; $44a5: $ea $80 $c4
	add  b                                           ; $44a8: $80
	add  sp, -$80                                    ; $44a9: $e8 $80
	call nc, $e00b                                   ; $44ab: $d4 $0b $e0
	dec  l                                           ; $44ae: $2d
	rrca                                             ; $44af: $0f
	inc  c                                           ; $44b0: $0c
	rrca                                             ; $44b1: $0f
	inc  c                                           ; $44b2: $0c
	rrca                                             ; $44b3: $0f
	dec  c                                           ; $44b4: $0d
	rrca                                             ; $44b5: $0f
	dec  b                                           ; $44b6: $05
	rrca                                             ; $44b7: $0f
	inc  c                                           ; $44b8: $0c
	add  c                                           ; $44b9: $81
	rrca                                             ; $44ba: $0f
	inc  d                                           ; $44bb: $14
	inc  c                                           ; $44bc: $0c
	rrca                                             ; $44bd: $0f
	halt                                             ; $44be: $76
	ldh  [$61], a                                    ; $44bf: $e0 $61
	ldh  a, [$72]                                    ; $44c1: $f0 $72
	ldh  a, [$b0]                                    ; $44c3: $f0 $b0
	ldh  a, [$71]                                    ; $44c5: $f0 $71
	ldh  a, [rSVBK]                                  ; $44c7: $f0 $70
	ldh  a, [$b0]                                    ; $44c9: $f0 $b0
	ldh  a, [rSVBK]                                  ; $44cb: $f0 $70
	ld   hl, sp+$06                                  ; $44cd: $f8 $06
	nop                                              ; $44cf: $00
	add  c                                           ; $44d0: $81
	add  b                                           ; $44d1: $80

Jump_071_44d2:
	jr   nz, jr_071_44e3                             ; $44d2: $20 $0f

	ld   d, e                                        ; $44d4: $53
	inc  de                                          ; $44d5: $13
	ld   [hl-], a                                    ; $44d6: $32
	or   d                                           ; $44d7: $b2
	jr   nc, jr_071_454a                             ; $44d8: $30 $70

jr_071_44da:
	nop                                              ; $44da: $00
	rst  $38                                         ; $44db: $ff

jr_071_44dc:
	nop                                              ; $44dc: $00
	add  hl, de                                      ; $44dd: $19
	ld   b, $b4                                      ; $44de: $06 $b4
	ld   [$0c6c], sp                                 ; $44e0: $08 $6c $0c

jr_071_44e3:
	inc  e                                           ; $44e3: $1c
	add  b                                           ; $44e4: $80
	sbc  h                                           ; $44e5: $9c
	dec  hl                                          ; $44e6: $2b
	sub  b                                           ; $44e7: $90
	sbc  e                                           ; $44e8: $9b
	sub  b                                           ; $44e9: $90
	cp   e                                           ; $44ea: $bb
	nop                                              ; $44eb: $00
	rst  $38                                         ; $44ec: $ff
	nop                                              ; $44ed: $00
	sbc  c                                           ; $44ee: $99
	ld   h, [hl]                                     ; $44ef: $66

jr_071_44f0:
	ld   h, a                                        ; $44f0: $67
	db   $10                                         ; $44f1: $10
	dec  sp                                          ; $44f2: $3b
	jr   nc, jr_071_4531                             ; $44f3: $30 $3c

	jr   nc, jr_071_4566                             ; $44f5: $30 $6f

	nop                                              ; $44f7: $00
	xor  a                                           ; $44f8: $af
	inc  c                                           ; $44f9: $0c
	cp   h                                           ; $44fa: $bc
	nop                                              ; $44fb: $00
	rst  $38                                         ; $44fc: $ff
	nop                                              ; $44fd: $00

jr_071_44fe:
	sbc  c                                           ; $44fe: $99
	ld   h, [hl]                                     ; $44ff: $66
	reti                                             ; $4500: $d9


	nop                                              ; $4501: $00
	xor  b                                           ; $4502: $a8
	ld   [$0868], sp                                 ; $4503: $08 $68 $08
	ld   l, c                                        ; $4506: $69
	ld   [$70fb], sp                                 ; $4507: $08 $fb $70
	di                                               ; $450a: $f3
	nop                                              ; $450b: $00
	rst  $38                                         ; $450c: $ff
	nop                                              ; $450d: $00
	sbc  c                                           ; $450e: $99
	ld   h, [hl]                                     ; $450f: $66
	add  hl, bc                                      ; $4510: $09
	inc  b                                           ; $4511: $04
	dec  h                                           ; $4512: $25
	add  b                                           ; $4513: $80
	add  b                                           ; $4514: $80
	nop                                              ; $4515: $00
	add  a                                           ; $4516: $87
	add  b                                           ; $4517: $80
	rlca                                             ; $4518: $07
	inc  d                                           ; $4519: $14
	ldh  [rP1], a                                    ; $451a: $e0 $00
	ld   c, a                                        ; $451c: $4f
	nop                                              ; $451d: $00
	rst  $38                                         ; $451e: $ff
	nop                                              ; $451f: $00
	add  b                                           ; $4520: $80
	nop                                              ; $4521: $00
	adc  h                                           ; $4522: $8c
	nop                                              ; $4523: $00
	or   c                                           ; $4524: $b1
	jr   nz, jr_071_4563                             ; $4525: $20 $3c

	jr   nz, @+$34                                   ; $4527: $20 $32

	jr   nc, jr_071_452c                             ; $4529: $30 $01

	nop                                              ; $452b: $00

jr_071_452c:
	ld   a, h                                        ; $452c: $7c
	nop                                              ; $452d: $00
	cp   $81                                         ; $452e: $fe $81
	nop                                              ; $4530: $00

jr_071_4531:
	nop                                              ; $4531: $00
	adc  d                                           ; $4532: $8a
	add  c                                           ; $4533: $81
	ld   [bc], a                                     ; $4534: $02
	ld   bc, $0282                                   ; $4535: $01 $82 $02
	add  b                                           ; $4538: $80
	ld   b, d                                        ; $4539: $42
	ld   bc, $4140                                   ; $453a: $01 $40 $41
	add  b                                           ; $453d: $80
	add  c                                           ; $453e: $81
	add  b                                           ; $453f: $80
	ld   b, c                                        ; $4540: $41
	add  b                                           ; $4541: $80
	add  c                                           ; $4542: $81
	add  hl, bc                                      ; $4543: $09
	ld   e, e                                        ; $4544: $5b
	db   $fc                                         ; $4545: $fc
	add  h                                           ; $4546: $84
	db   $fc                                         ; $4547: $fc
	db   $ec                                         ; $4548: $ec
	db   $fc                                         ; $4549: $fc

jr_071_454a:
	call nz, $dcfc                                   ; $454a: $c4 $fc $dc
	ret  c                                           ; $454d: $d8

jr_071_454e:
	add  b                                           ; $454e: $80
	ld   e, b                                        ; $454f: $58
	ld   bc, $898b                                   ; $4550: $01 $8b $89
	add  b                                           ; $4553: $80
	db   $db                                         ; $4554: $db

jr_071_4555:
	nop                                              ; $4555: $00
	ld   b, h                                        ; $4556: $44
	add  b                                           ; $4557: $80
	jr   c, jr_071_44da                              ; $4558: $38 $80

	jr   nc, jr_071_44dc                             ; $455a: $30 $80

	jr   z, jr_071_456e                              ; $455c: $28 $10

	jr   nc, @-$5a                                   ; $455e: $30 $a4

	jr   nz, jr_071_44fe                             ; $4560: $20 $9c

	add  h                                           ; $4562: $84

jr_071_4563:
	jp   z, $f5c2                                    ; $4563: $ca $c2 $f5

jr_071_4566:
	pop  hl                                          ; $4566: $e1
	cp   h                                           ; $4567: $bc
	nop                                              ; $4568: $00
	inc  a                                           ; $4569: $3c
	nop                                              ; $456a: $00
	rrca                                             ; $456b: $0f
	nop                                              ; $456c: $00
	inc  sp                                          ; $456d: $33

jr_071_456e:
	jr   nc, jr_071_44f0                             ; $456e: $30 $80

	inc  a                                           ; $4570: $3c
	jr   z, jr_071_454e                              ; $4571: $28 $db

	jr   @-$58                                       ; $4573: $18 $a6

	inc  b                                           ; $4575: $04
	sub  a                                           ; $4576: $97
	ld   b, $70                                      ; $4577: $06 $70
	nop                                              ; $4579: $00
	xor  l                                           ; $457a: $ad
	ld   [de], a                                     ; $457b: $12
	cp   a                                           ; $457c: $bf
	ccf                                              ; $457d: $3f
	and  c                                           ; $457e: $a1
	ld   hl, $37b7                                   ; $457f: $21 $b7 $37
	ld   h, $20                                      ; $4582: $26 $20
	or   c                                           ; $4584: $b1
	inc  [hl]                                        ; $4585: $34
	add  hl, sp                                      ; $4586: $39
	jr   c, jr_071_4555                              ; $4587: $38 $cc

	nop                                              ; $4589: $00
	ld   b, h                                        ; $458a: $44
	nop                                              ; $458b: $00
	di                                               ; $458c: $f3
	nop                                              ; $458d: $00
	db   $f4                                         ; $458e: $f4
	nop                                              ; $458f: $00
	ld   a, $00                                      ; $4590: $3e $00
	ret  z                                           ; $4592: $c8

	nop                                              ; $4593: $00
	and  b                                           ; $4594: $a0
	nop                                              ; $4595: $00
	pop  hl                                          ; $4596: $e1
	add  b                                           ; $4597: $80
	db   $eb                                         ; $4598: $eb
	ld   [bc], a                                     ; $4599: $02
	jp   nz, $c480                                   ; $459a: $c2 $80 $c4

	ld   [bc], a                                     ; $459d: $02
	ret  nz                                          ; $459e: $c0

	ret  c                                           ; $459f: $d8

	ret  nz                                          ; $45a0: $c0

	add  b                                           ; $45a1: $80
	nop                                              ; $45a2: $00
	ld   b, $90                                      ; $45a3: $06 $90
	nop                                              ; $45a5: $00
	inc  [hl]                                        ; $45a6: $34
	nop                                              ; $45a7: $00
	ld   e, [hl]                                     ; $45a8: $5e
	nop                                              ; $45a9: $00
	ld   [hl-], a                                    ; $45aa: $32
	add  b                                           ; $45ab: $80
	pop  de                                          ; $45ac: $d1
	add  c                                           ; $45ad: $81
	ret  nz                                          ; $45ae: $c0

	inc  b                                           ; $45af: $04
	ret  nc                                          ; $45b0: $d0

	ret  nz                                          ; $45b1: $c0

	db   $fc                                         ; $45b2: $fc
	ret  nz                                          ; $45b3: $c0

	adc  $80                                         ; $45b4: $ce $80
	ret  nz                                          ; $45b6: $c0

	rrca                                             ; $45b7: $0f
	pop  bc                                          ; $45b8: $c1
	push hl                                          ; $45b9: $e5
	add  b                                           ; $45ba: $80
	ld   b, b                                        ; $45bb: $40
	rrca                                             ; $45bc: $0f
	ld   b, $07                                      ; $45bd: $06 $07
	ld   c, $0f                                      ; $45bf: $0e $0f
	rlca                                             ; $45c1: $07
	inc  bc                                          ; $45c2: $03

Jump_071_45c3:
	ld   b, $07                                      ; $45c3: $06 $07
	ld   b, $07                                      ; $45c5: $06 $07
	inc  bc                                          ; $45c7: $03
	add  b                                           ; $45c8: $80
	ld   bc, $0007                                   ; $45c9: $01 $07 $00
	ldh  a, [$f8]                                    ; $45cc: $f0 $f8
	ret  z                                           ; $45ce: $c8

	ld   hl, sp+$58                                  ; $45cf: $f8 $58
	ld   hl, sp-$38                                  ; $45d1: $f8 $c8
	add  c                                           ; $45d3: $81
	db   $fc                                         ; $45d4: $fc
	ld   [$fcbc], sp                                 ; $45d5: $08 $bc $fc
	inc  e                                           ; $45d8: $1c
	db   $fc                                         ; $45d9: $fc
	ld   l, h                                        ; $45da: $6c
	cp   $37                                         ; $45db: $fe $37
	ld   b, $1f                                      ; $45dd: $06 $1f
	add  b                                           ; $45df: $80
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	inc  bc                                          ; $45e2: $03
	add  c                                           ; $45e3: $81
	nop                                              ; $45e4: $00
	nop                                              ; $45e5: $00
	inc  bc                                          ; $45e6: $03
	add  d                                           ; $45e7: $82
	nop                                              ; $45e8: $00
	add  b                                           ; $45e9: $80
	ld   a, [bc]                                     ; $45ea: $0a
	ld   [bc], a                                     ; $45eb: $02
	pop  bc                                          ; $45ec: $c1
	ld   a, [hl]                                     ; $45ed: $7e
	rst  $38                                         ; $45ee: $ff
	add  b                                           ; $45ef: $80
	nop                                              ; $45f0: $00
	inc  bc                                          ; $45f1: $03
	cp   e                                           ; $45f2: $bb
	dec  sp                                          ; $45f3: $3b
	nop                                              ; $45f4: $00
	add  b                                           ; $45f5: $80
	add  c                                           ; $45f6: $81
	ld   bc, $4106                                   ; $45f7: $01 $06 $41
	ld   bc, $0021                                   ; $45fa: $01 $21 $00
	ld   sp, hl                                      ; $45fd: $f9
	ld   h, [hl]                                     ; $45fe: $66
	rst  $38                                         ; $45ff: $ff
	add  b                                           ; $4600: $80
	nop                                              ; $4601: $00
	inc  b                                           ; $4602: $04
	cp   e                                           ; $4603: $bb
	and  b                                           ; $4604: $a0
	nop                                              ; $4605: $00
	db   $10                                         ; $4606: $10
	adc  e                                           ; $4607: $8b
	add  c                                           ; $4608: $81
	add  b                                           ; $4609: $80
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	add  b                                           ; $460c: $80
	dec  d                                           ; $460d: $15
	ld   [bc], a                                     ; $460e: $02
	sbc  c                                           ; $460f: $99
	ld   h, [hl]                                     ; $4610: $66

Jump_071_4611:
	rst  $38                                         ; $4611: $ff
	add  b                                           ; $4612: $80
	nop                                              ; $4613: $00
	nop                                              ; $4614: $00
	cp   e                                           ; $4615: $bb
	add  c                                           ; $4616: $81
	nop                                              ; $4617: $00
	nop                                              ; $4618: $00
	cp   e                                           ; $4619: $bb
	add  b                                           ; $461a: $80
	nop                                              ; $461b: $00
	ld   bc, $0002                                   ; $461c: $01 $02 $00
	add  b                                           ; $461f: $80
	ld   d, b                                        ; $4620: $50
	ld   [bc], a                                     ; $4621: $02
	add  d                                           ; $4622: $82
	nop                                              ; $4623: $00
	add  b                                           ; $4624: $80
	add  b                                           ; $4625: $80
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	cp   e                                           ; $4628: $bb
	add  c                                           ; $4629: $81
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	cp   e                                           ; $462c: $bb
	adc  c                                           ; $462d: $89
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	cp   b                                           ; $4630: $b8
	add  c                                           ; $4631: $81
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	cp   b                                           ; $4634: $b8
	add  h                                           ; $4635: $84
	nop                                              ; $4636: $00
	ld   bc, $0209                                   ; $4637: $01 $09 $02
	add  d                                           ; $463a: $82
	inc  bc                                          ; $463b: $03
	nop                                              ; $463c: $00
	ld   a, [bc]                                     ; $463d: $0a
	add  b                                           ; $463e: $80
	ld   [bc], a                                     ; $463f: $02
	add  c                                           ; $4640: $81
	ld   b, $80                                      ; $4641: $06 $80
	rlca                                             ; $4643: $07
	add  b                                           ; $4644: $80
	inc  b                                           ; $4645: $04
	ld   b, $46                                      ; $4646: $06 $46

jr_071_4648:
	cp   c                                           ; $4648: $b9
	ld   a, [hl-]                                    ; $4649: $3a
	jr   nc, jr_071_4648                             ; $464a: $30 $fc

	ldh  a, [$be]                                    ; $464c: $f0 $be
	add  c                                           ; $464e: $81
	or   b                                           ; $464f: $b0
	nop                                              ; $4650: $00
	inc  e                                           ; $4651: $1c
	add  c                                           ; $4652: $81
	inc  de                                          ; $4653: $13
	add  b                                           ; $4654: $80
	ld   [hl], e                                     ; $4655: $73
	ld   b, $25                                      ; $4656: $06 $25
	jp   nz, $848c                                   ; $4658: $c2 $8c $84

	ld   a, e                                        ; $465b: $7b
	nop                                              ; $465c: $00
	ld   l, e                                        ; $465d: $6b
	add  c                                           ; $465e: $81
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	call z, $3383                                    ; $4661: $cc $83 $33
	ld   a, [bc]                                     ; $4664: $0a
	db   $10                                         ; $4665: $10
	rrca                                             ; $4666: $0f
	xor  [hl]                                        ; $4667: $ae
	ld   c, $c4                                      ; $4668: $0e $c4
	inc  b                                           ; $466a: $04
	cp   e                                           ; $466b: $bb
	nop                                              ; $466c: $00
	dec  sp                                          ; $466d: $3b
	nop                                              ; $466e: $00
	call z, $3383                                    ; $466f: $cc $83 $33
	inc  c                                           ; $4672: $0c
	db   $fc                                         ; $4673: $fc
	dec  sp                                          ; $4674: $3b
	and  e                                           ; $4675: $a3
	inc  hl                                          ; $4676: $23
	or   e                                           ; $4677: $b3
	ld   [hl-], a                                    ; $4678: $32
	cp   d                                           ; $4679: $ba
	dec  sp                                          ; $467a: $3b
	cp   a                                           ; $467b: $bf
	ld   [hl], $a6                                   ; $467c: $36 $a6
	inc  h                                           ; $467e: $24
	inc  [hl]                                        ; $467f: $34

Jump_071_4680:
	add  b                                           ; $4680: $80
	scf                                              ; $4681: $37
	ld   b, $35                                      ; $4682: $06 $35
	ld   d, a                                        ; $4684: $57
	and  b                                           ; $4685: $a0

jr_071_4686:
	and  c                                           ; $4686: $a1
	ldh  [$f6], a                                    ; $4687: $e0 $f6
	ld   [hl], d                                     ; $4689: $72
	add  c                                           ; $468a: $81
	ld   h, [hl]                                     ; $468b: $66
	dec  c                                           ; $468c: $0d
	add  $e6                                         ; $468d: $c6 $e6
	ld   b, [hl]                                     ; $468f: $46
	ld   [hl], h                                     ; $4690: $74
	add  h                                           ; $4691: $84
	ldh  a, [c]                                      ; $4692: $f2
	add  b                                           ; $4693: $80
	ret  nz                                          ; $4694: $c0

	nop                                              ; $4695: $00
	jr   nc, jr_071_4698                             ; $4696: $30 $00

jr_071_4698:
	ld   h, b                                        ; $4698: $60
	nop                                              ; $4699: $00
	add  b                                           ; $469a: $80
	add  b                                           ; $469b: $80
	ld   b, b                                        ; $469c: $40
	add  d                                           ; $469d: $82
	ret  nc                                          ; $469e: $d0

	inc  b                                           ; $469f: $04
	sub  b                                           ; $46a0: $90
	ret  nz                                          ; $46a1: $c0

	nop                                              ; $46a2: $00
	ld   a, b                                        ; $46a3: $78
	add  d                                           ; $46a4: $82
	add  b                                           ; $46a5: $80
	add  e                                           ; $46a6: $83
	ld   bc, $07cf                                   ; $46a7: $01 $cf $07
	add  b                                           ; $46aa: $80
	ld   bc, $0680                                   ; $46ab: $01 $80 $06
	ld   de, $0f9f                                   ; $46ae: $11 $9f $0f
	inc  c                                           ; $46b1: $0c
	ld   [$030f], sp                                 ; $46b2: $08 $0f $03
	jr   jr_071_46b7                                 ; $46b5: $18 $00

jr_071_46b7:
	rlca                                             ; $46b7: $07
	nop                                              ; $46b8: $00
	ld   [bc], a                                     ; $46b9: $02
	nop                                              ; $46ba: $00
	ld   a, [bc]                                     ; $46bb: $0a
	nop                                              ; $46bc: $00
	add  hl, bc                                      ; $46bd: $09
	nop                                              ; $46be: $00
	ld   c, $08                                      ; $46bf: $0e $08
	add  b                                           ; $46c1: $80
	nop                                              ; $46c2: $00
	ld   a, [bc]                                     ; $46c3: $0a
	ld   c, $04                                      ; $46c4: $0e $04
	ld   h, d                                        ; $46c6: $62
	cp   $8e                                         ; $46c7: $fe $8e
	cp   $a6                                         ; $46c9: $fe $a6
	cp   $ce                                         ; $46cb: $fe $ce
	db   $fc                                         ; $46cd: $fc
	ld   a, h                                        ; $46ce: $7c
	add  b                                           ; $46cf: $80
	ldh  a, [$80]                                    ; $46d0: $f0 $80
	ret  nz                                          ; $46d2: $c0

	add  b                                           ; $46d3: $80
	add  b                                           ; $46d4: $80
	ld   bc, $4f00                                   ; $46d5: $01 $00 $4f
	adc  c                                           ; $46d8: $89
	rrca                                             ; $46d9: $0f

jr_071_46da:
	add  d                                           ; $46da: $82
	nop                                              ; $46db: $00
	db   $10                                         ; $46dc: $10
	ld   h, b                                        ; $46dd: $60
	nop                                              ; $46de: $00
	ld   c, b                                        ; $46df: $48
	nop                                              ; $46e0: $00
	stop                                             ; $46e1: $10 $00
	ret  nz                                          ; $46e3: $c0

	add  b                                           ; $46e4: $80
	add  h                                           ; $46e5: $84
	add  b                                           ; $46e6: $80
	or   d                                           ; $46e7: $b2
	add  b                                           ; $46e8: $80
	ld   b, $00                                      ; $46e9: $06 $00
	ld   [$1a07], sp                                 ; $46eb: $08 $07 $1a

jr_071_46ee:
	add  c                                           ; $46ee: $81
	dec  e                                           ; $46ef: $1d
	add  d                                           ; $46f0: $82
	dec  a                                           ; $46f1: $3d
	add  b                                           ; $46f2: $80
	ld   a, l                                        ; $46f3: $7d
	add  b                                           ; $46f4: $80
	dec  a                                           ; $46f5: $3d
	add  b                                           ; $46f6: $80
	nop                                              ; $46f7: $00
	add  b                                           ; $46f8: $80
	ret  nz                                          ; $46f9: $c0

	nop                                              ; $46fa: $00

Jump_071_46fb:
	ldh  a, [c]                                      ; $46fb: $f2
	adc  c                                           ; $46fc: $89
	ldh  a, [$82]                                    ; $46fd: $f0 $82
	nop                                              ; $46ff: $00
	ld   bc, $2022                                   ; $4700: $01 $22 $20
	add  d                                           ; $4703: $82
	jr   z, jr_071_4686                              ; $4704: $28 $80

	add  hl, hl                                      ; $4706: $29
	add  b                                           ; $4707: $80
	cpl                                              ; $4708: $2f
	add  d                                           ; $4709: $82
	add  hl, hl                                      ; $470a: $29
	add  b                                           ; $470b: $80
	cpl                                              ; $470c: $2f
	add  [hl]                                        ; $470d: $86
	ld   [bc], a                                     ; $470e: $02
	add  b                                           ; $470f: $80
	ldh  [c], a                                      ; $4710: $e2
	add  d                                           ; $4711: $82
	ld   [hl+], a                                    ; $4712: $22
	add  b                                           ; $4713: $80
	ldh  a, [c]                                      ; $4714: $f2
	nop                                              ; $4715: $00
	nop                                              ; $4716: $00
	add  c                                           ; $4717: $81
	rrca                                             ; $4718: $0f
	add  b                                           ; $4719: $80
	ld   [$0f80], sp                                 ; $471a: $08 $80 $0f
	ld   bc, $beae                                   ; $471d: $01 $ae $be
	add  b                                           ; $4720: $80
	cp   b                                           ; $4721: $b8
	ld   bc, $bc9c                                   ; $4722: $01 $9c $bc
	add  b                                           ; $4725: $80
	or   e                                           ; $4726: $b3
	ld   b, $3f                                      ; $4727: $06 $3f
	ldh  [rAUD4GO], a                                ; $4729: $e0 $23
	jr   nz, @+$25                                   ; $472b: $20 $23

	jr   nz, jr_071_4793                             ; $472d: $20 $64

	add  b                                           ; $472f: $80
	ld   h, b                                        ; $4730: $60
	ld   a, [bc]                                     ; $4731: $0a
	ld   b, b                                        ; $4732: $40
	jp   nz, $c6c0                                   ; $4733: $c2 $c0 $c6

	ret  nz                                          ; $4736: $c0

	jp   $c7c0                                       ; $4737: $c3 $c0 $c7


	inc  c                                           ; $473a: $0c
	adc  h                                           ; $473b: $8c
	ld   c, h                                        ; $473c: $4c
	add  b                                           ; $473d: $80
	ld   c, a                                        ; $473e: $4f
	add  b                                           ; $473f: $80
	ld   c, h                                        ; $4740: $4c

jr_071_4741:
	nop                                              ; $4741: $00
	call z, $cf80                                    ; $4742: $cc $80 $cf
	add  e                                           ; $4745: $83
	call z, $c900                                    ; $4746: $cc $00 $c9
	add  c                                           ; $4749: $81
	ld   bc, $f980                                   ; $474a: $01 $80 $f9
	add  c                                           ; $474d: $81
	ld   bc, $f980                                   ; $474e: $01 $80 $f9
	add  e                                           ; $4751: $83
	ld   bc, $8f00                                   ; $4752: $01 $00 $8f
	add  b                                           ; $4755: $80
	dec  l                                           ; $4756: $2d
	add  b                                           ; $4757: $80
	jr   z, jr_071_46da                              ; $4758: $28 $80

	add  hl, hl                                      ; $475a: $29
	ld   bc, $3e2f                                   ; $475b: $01 $2f $3e
	add  d                                           ; $475e: $82
	ld   a, [de]                                     ; $475f: $1a
	add  b                                           ; $4760: $80
	ld   [de], a                                     ; $4761: $12
	inc  bc                                          ; $4762: $03
	ld   e, $87                                      ; $4763: $1e $87
	ldh  a, [$f7]                                    ; $4765: $f0 $f7
	add  d                                           ; $4767: $82
	ld   [hl], b                                     ; $4768: $70
	add  b                                           ; $4769: $80
	ld   a, b                                        ; $476a: $78
	nop                                              ; $476b: $00
	jr   c, jr_071_46ee                              ; $476c: $38 $80

	jr   jr_071_4776                                 ; $476e: $18 $06

	inc  l                                           ; $4770: $2c
	jr   z, jr_071_47a7                              ; $4771: $28 $34

	inc  d                                           ; $4773: $14
	db   $dd                                         ; $4774: $dd
	inc  a                                           ; $4775: $3c

jr_071_4776:
	db   $fc                                         ; $4776: $fc
	add  d                                           ; $4777: $82
	inc  e                                           ; $4778: $1c
	add  e                                           ; $4779: $83
	ld   c, $01                                      ; $477a: $0e $01
	dec  bc                                          ; $477c: $0b
	inc  bc                                          ; $477d: $03
	add  b                                           ; $477e: $80
	dec  b                                           ; $477f: $05
	ld   a, [bc]                                     ; $4780: $0a
	rst  $10                                         ; $4781: $d7
	nop                                              ; $4782: $00
	rrca                                             ; $4783: $0f
	rlca                                             ; $4784: $07
	rla                                              ; $4785: $17
	rlca                                             ; $4786: $07
	ld   a, e                                        ; $4787: $7b
	inc  bc                                          ; $4788: $03
	ld   [$c000], sp                                 ; $4789: $08 $00 $c0
	add  c                                           ; $478c: $81
	inc  bc                                          ; $478d: $03
	ld   bc, $0343                                   ; $478e: $01 $43 $03
	add  hl, de                                      ; $4791: $19
	ld   [bc], a                                     ; $4792: $02

jr_071_4793:
	add  [hl]                                        ; $4793: $86
	nop                                              ; $4794: $00
	ld   [$0f01], sp                                 ; $4795: $08 $01 $0f
	inc  c                                           ; $4798: $0c
	rrca                                             ; $4799: $0f
	ld   [$080f], sp                                 ; $479a: $08 $0f $08
	rrca                                             ; $479d: $0f
	dec  c                                           ; $479e: $0d
	add  l                                           ; $479f: $85
	nop                                              ; $47a0: $00
	ld   [$f474], sp                                 ; $47a1: $08 $74 $f4
	ld   l, b                                        ; $47a4: $68
	add  sp, -$2f                                    ; $47a5: $e8 $d1

jr_071_47a7:
	ret  nc                                          ; $47a7: $d0

	ldh  [c], a                                      ; $47a8: $e2
	ldh  [$03], a                                    ; $47a9: $e0 $03
	add  l                                           ; $47ab: $85
	nop                                              ; $47ac: $00
	ld   [$017e], sp                                 ; $47ad: $08 $7e $01
	and  b                                           ; $47b0: $a0
	ldh  [$08], a                                    ; $47b1: $e0 $08
	ld   hl, sp+$09                                  ; $47b3: $f8 $09
	ccf                                              ; $47b5: $3f
	ld   sp, hl                                      ; $47b6: $f9
	add  l                                           ; $47b7: $85
	nop                                              ; $47b8: $00
	ld   bc, $837c                                   ; $47b9: $01 $7c $83
	add  b                                           ; $47bc: $80
	ld   h, b                                        ; $47bd: $60
	add  b                                           ; $47be: $80
	jr   jr_071_4741                                 ; $47bf: $18 $80

	ld   c, $00                                      ; $47c1: $0e $00
	rst  $38                                         ; $47c3: $ff
	add  l                                           ; $47c4: $85
	nop                                              ; $47c5: $00
	ld   bc, $6b94                                   ; $47c6: $01 $94 $6b
	add  b                                           ; $47c9: $80
	adc  b                                           ; $47ca: $88
	add  b                                           ; $47cb: $80
	rst  $20                                         ; $47cc: $e7
	add  b                                           ; $47cd: $80
	add  hl, de                                      ; $47ce: $19
	nop                                              ; $47cf: $00
	rst  $38                                         ; $47d0: $ff
	add  l                                           ; $47d1: $85
	nop                                              ; $47d2: $00
	ld   bc, $629d                                   ; $47d3: $01 $9d $62
	add  b                                           ; $47d6: $80
	sbc  b                                           ; $47d7: $98
	add  b                                           ; $47d8: $80
	ld   d, [hl]                                     ; $47d9: $56
	add  b                                           ; $47da: $80
	ld   d, l                                        ; $47db: $55
	nop                                              ; $47dc: $00
	rst  $38                                         ; $47dd: $ff
	add  l                                           ; $47de: $85
	nop                                              ; $47df: $00
	ld   bc, $aa55                                   ; $47e0: $01 $55 $aa
	add  b                                           ; $47e3: $80
	ld   d, l                                        ; $47e4: $55
	inc  b                                           ; $47e5: $04
	ld   a, [hl-]                                    ; $47e6: $3a
	ccf                                              ; $47e7: $3f
	db   $10                                         ; $47e8: $10
	dec  d                                           ; $47e9: $15
	rst  $38                                         ; $47ea: $ff
	add  l                                           ; $47eb: $85
	nop                                              ; $47ec: $00
	ld   bc, $aa55                                   ; $47ed: $01 $55 $aa
	add  b                                           ; $47f0: $80
	ld   d, l                                        ; $47f1: $55

jr_071_47f2:
	inc  b                                           ; $47f2: $04
	nop                                              ; $47f3: $00

jr_071_47f4:
	rst  $38                                         ; $47f4: $ff
	xor  d                                           ; $47f5: $aa
	ld   d, l                                        ; $47f6: $55
	rst  $38                                         ; $47f7: $ff
	add  l                                           ; $47f8: $85
	nop                                              ; $47f9: $00
	ld   bc, $a15e                                   ; $47fa: $01 $5e $a1
	add  b                                           ; $47fd: $80
	ld   d, c                                        ; $47fe: $51
	inc  b                                           ; $47ff: $04
	jr   nc, jr_071_47f2                             ; $4800: $30 $f0

	sub  c                                           ; $4802: $91
	ld   d, c                                        ; $4803: $51
	rst  $38                                         ; $4804: $ff
	add  l                                           ; $4805: $85
	nop                                              ; $4806: $00
	ld   bc, $00ff                                   ; $4807: $01 $ff $00
	add  b                                           ; $480a: $80
	inc  c                                           ; $480b: $0c
	add  b                                           ; $480c: $80
	ld   c, h                                        ; $480d: $4c
	add  b                                           ; $480e: $80
	call z, $ff00                                    ; $480f: $cc $00 $ff
	add  l                                           ; $4812: $85
	nop                                              ; $4813: $00
	dec  b                                           ; $4814: $05
	adc  d                                           ; $4815: $8a
	ld   a, a                                        ; $4816: $7f
	jr   @+$81                                       ; $4817: $18 $7f

	dec  d                                           ; $4819: $15
	ld   a, a                                        ; $481a: $7f
	add  b                                           ; $481b: $80
	rst  $38                                         ; $481c: $ff
	nop                                              ; $481d: $00
	ld   hl, sp-$7b                                  ; $481e: $f8 $85
	nop                                              ; $4820: $00
	ld   [$e79f], sp                                 ; $4821: $08 $9f $e7
	inc  sp                                          ; $4824: $33
	rst  $30                                         ; $4825: $f7
	inc  de                                          ; $4826: $13
	di                                               ; $4827: $f3
	sub  e                                           ; $4828: $93
	di                                               ; $4829: $f3
	inc  a                                           ; $482a: $3c
	add  l                                           ; $482b: $85
	nop                                              ; $482c: $00
	nop                                              ; $482d: $00
	rst  $38                                         ; $482e: $ff
	add  c                                           ; $482f: $81
	db   $fc                                         ; $4830: $fc
	add  b                                           ; $4831: $80
	call nc, $a480                                   ; $4832: $d4 $80 $a4
	nop                                              ; $4835: $00
	inc  bc                                          ; $4836: $03
	add  l                                           ; $4837: $85
	nop                                              ; $4838: $00
	ld   bc, $02fd                                   ; $4839: $01 $fd $02
	add  d                                           ; $483c: $82
	ld   b, $80                                      ; $483d: $06 $80
	inc  c                                           ; $483f: $0c
	nop                                              ; $4840: $00
	rst  $38                                         ; $4841: $ff
	add  l                                           ; $4842: $85
	nop                                              ; $4843: $00
	ld   bc, $0cf3                                   ; $4844: $01 $f3 $0c
	add  b                                           ; $4847: $80
	inc  bc                                          ; $4848: $03
	add  d                                           ; $4849: $82
	nop                                              ; $484a: $00
	nop                                              ; $484b: $00
	rst  $38                                         ; $484c: $ff
	add  l                                           ; $484d: $85
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	rst  $38                                         ; $4850: $ff
	add  c                                           ; $4851: $81
	nop                                              ; $4852: $00
	add  b                                           ; $4853: $80
	ret  nz                                          ; $4854: $c0

	add  b                                           ; $4855: $80
	jr   nc, @+$04                                   ; $4856: $30 $02

	ld   a, [$090f]                                  ; $4858: $fa $0f $09
	add  l                                           ; $485b: $85
	rrca                                             ; $485c: $0f
	ld   bc, $010d                                   ; $485d: $01 $0d $01
	add  b                                           ; $4860: $80
	ld   c, $04                                      ; $4861: $0e $04
	ld   [bc], a                                     ; $4863: $02
	ld   c, $cb                                      ; $4864: $0e $cb
	ret  nz                                          ; $4866: $c0

	adc  b                                           ; $4867: $88
	adc  e                                           ; $4868: $8b
	add  b                                           ; $4869: $80
	ld   bc, $07f7                                   ; $486a: $01 $f7 $07
	add  b                                           ; $486d: $80
	ld   hl, $2080                                   ; $486e: $21 $80 $20
	add  b                                           ; $4871: $80
	jr   z, jr_071_47f4                              ; $4872: $28 $80

	ld   a, [hl+]                                    ; $4874: $2a
	add  b                                           ; $4875: $80
	ld   a, d                                        ; $4876: $7a
	add  b                                           ; $4877: $80
	ld   c, $09                                      ; $4878: $0e $09
	ld   [hl+], a                                    ; $487a: $22
	inc  hl                                          ; $487b: $23
	inc  bc                                          ; $487c: $03
	jp   $f001                                       ; $487d: $c3 $01 $f0


	jr   z, jr_071_48a0                              ; $4880: $28 $1e

	add  l                                           ; $4882: $85
	add  e                                           ; $4883: $83
	add  b                                           ; $4884: $80
	and  b                                           ; $4885: $a0
	add  b                                           ; $4886: $80
	cp   b                                           ; $4887: $b8
	add  b                                           ; $4888: $80
	ld   a, $11                                      ; $4889: $3e $11
	rlca                                             ; $488b: $07
	add  a                                           ; $488c: $87
	ld   b, $86                                      ; $488d: $06 $86
	and  c                                           ; $488f: $a1
	pop  hl                                          ; $4890: $e1
	ld   l, b                                        ; $4891: $68
	jr   c, @+$1c                                    ; $4892: $38 $1a

	adc  [hl]                                        ; $4894: $8e
	add  $63                                         ; $4895: $c6 $63
	ld   sp, $0c18                                   ; $4897: $31 $18 $0c
	ld   b, $83                                      ; $489a: $06 $83
	add  c                                           ; $489c: $81
	add  d                                           ; $489d: $82
	xor  d                                           ; $489e: $aa
	add  b                                           ; $489f: $80

jr_071_48a0:
	ld   h, l                                        ; $48a0: $65
	add  b                                           ; $48a1: $80
	ld   a, [de]                                     ; $48a2: $1a
	add  b                                           ; $48a3: $80
	add  [hl]                                        ; $48a4: $86
	ld   de, $e1a1                                   ; $48a5: $11 $a1 $e1
	ld   l, b                                        ; $48a8: $68
	jr   c, jr_071_48c4                              ; $48a9: $38 $19

	adc  a                                           ; $48ab: $8f
	ld   l, h                                        ; $48ac: $6c
	ld   [$7353], a                                  ; $48ad: $ea $53 $73
	jr   nc, jr_071_48ca                             ; $48b0: $30 $18

	ldh  [c], a                                      ; $48b2: $e2
	xor  $56                                         ; $48b3: $ee $56
	ld   d, e                                        ; $48b5: $53
	adc  a                                           ; $48b6: $8f
	adc  [hl]                                        ; $48b7: $8e
	add  b                                           ; $48b8: $80
	ld   [hl], c                                     ; $48b9: $71
	add  b                                           ; $48ba: $80
	ld   a, [bc]                                     ; $48bb: $0a
	add  b                                           ; $48bc: $80
	xor  d                                           ; $48bd: $aa
	add  b                                           ; $48be: $80
	rst  $38                                         ; $48bf: $ff
	add  b                                           ; $48c0: $80
	xor  d                                           ; $48c1: $aa
	add  b                                           ; $48c2: $80
	ld   d, l                                        ; $48c3: $55

jr_071_48c4:
	add  b                                           ; $48c4: $80
	cp   a                                           ; $48c5: $bf
	inc  bc                                          ; $48c6: $03
	adc  a                                           ; $48c7: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48c8: $cf
	ld   [hl], e                                     ; $48c9: $73

jr_071_48ca:
	inc  sp                                          ; $48ca: $33
	add  b                                           ; $48cb: $80
	push de                                          ; $48cc: $d5
	add  b                                           ; $48cd: $80
	and  c                                           ; $48ce: $a1
	add  b                                           ; $48cf: $80
	ld   hl, sp-$80                                  ; $48d0: $f8 $80
	xor  b                                           ; $48d2: $a8
	add  b                                           ; $48d3: $80
	ld   d, h                                        ; $48d4: $54
	ld   [bc], a                                     ; $48d5: $02
	ld   [bc], a                                     ; $48d6: $02
	cp   $03                                         ; $48d7: $fe $03
	add  c                                           ; $48d9: $81
	rst  $38                                         ; $48da: $ff
	add  b                                           ; $48db: $80
	ld   c, e                                        ; $48dc: $4b
	add  b                                           ; $48dd: $80
	add  b                                           ; $48de: $80
	add  d                                           ; $48df: $82
	jp   hl                                          ; $48e0: $e9


	add  b                                           ; $48e1: $80
	nop                                              ; $48e2: $00
	inc  b                                           ; $48e3: $04
	ld   b, h                                        ; $48e4: $44
	ld   c, h                                        ; $48e5: $4c
	rlca                                             ; $48e6: $07
	rra                                              ; $48e7: $1f
	rst  $38                                         ; $48e8: $ff
	add  c                                           ; $48e9: $81
	rst  $28                                         ; $48ea: $ef
	ld   bc, $fefd                                   ; $48eb: $01 $fd $fe
	add  b                                           ; $48ee: $80
	rst  $38                                         ; $48ef: $ff
	ld   bc, $fffd                                   ; $48f0: $01 $fd $ff
	add  b                                           ; $48f3: $80
	ld   hl, $4202                                   ; $48f4: $21 $02 $42
	ld   a, a                                        ; $48f7: $7f

jr_071_48f8:
	ld   b, e                                        ; $48f8: $43
	add  e                                           ; $48f9: $83
	ld   a, a                                        ; $48fa: $7f
	rlca                                             ; $48fb: $07
	ld   a, [de]                                     ; $48fc: $1a
	ei                                               ; $48fd: $fb
	ld   hl, sp-$07                                  ; $48fe: $f8 $f9
	ld   a, b                                        ; $4900: $78
	ld   a, c                                        ; $4901: $79
	ld   l, b                                        ; $4902: $68
	ld   a, c                                        ; $4903: $79
	add  d                                           ; $4904: $82
	cp   h                                           ; $4905: $bc
	ld   bc, $dc54                                   ; $4906: $01 $54 $dc
	add  b                                           ; $4909: $80
	sbc  $07                                         ; $490a: $de $07
	ld   d, h                                        ; $490c: $54
	call nc, $aca8                                   ; $490d: $d4 $a8 $ac
	ld   [hl], l                                     ; $4910: $75
	push af                                          ; $4911: $f5
	inc  b                                           ; $4912: $04

jr_071_4913:
	add  h                                           ; $4913: $84
	add  b                                           ; $4914: $80
	call nz, $e480                                   ; $4915: $c4 $80 $e4
	inc  b                                           ; $4918: $04
	ld   b, l                                        ; $4919: $45
	push bc                                          ; $491a: $c5
	inc  [hl]                                        ; $491b: $34
	ld   [hl], h                                     ; $491c: $74
	jr   nc, jr_071_48a0                             ; $491d: $30 $81

	inc  c                                           ; $491f: $0c
	ld   bc, $0c08                                   ; $4920: $01 $08 $0c
	add  b                                           ; $4923: $80
	dec  c                                           ; $4924: $0d
	add  b                                           ; $4925: $80
	inc  c                                           ; $4926: $0c
	add  b                                           ; $4927: $80
	dec  c                                           ; $4928: $0d
	add  b                                           ; $4929: $80
	ld   [$0980], sp                                 ; $492a: $08 $80 $09
	ld   bc, $0004                                   ; $492d: $01 $04 $00
	add  b                                           ; $4930: $80
	inc  d                                           ; $4931: $14
	add  b                                           ; $4932: $80
	xor  d                                           ; $4933: $aa
	add  b                                           ; $4934: $80
	ld   d, l                                        ; $4935: $55
	add  b                                           ; $4936: $80
	cp   $02                                         ; $4937: $fe $02
	ld   h, e                                        ; $4939: $63
	ld   a, a                                        ; $493a: $7f
	pop  bc                                          ; $493b: $c1
	add  c                                           ; $493c: $81
	db   $e3                                         ; $493d: $e3
	dec  b                                           ; $493e: $05
	ld   a, [hl-]                                    ; $493f: $3a
	inc  c                                           ; $4940: $0c
	add  hl, bc                                      ; $4941: $09
	inc  bc                                          ; $4942: $03
	ld   [bc], a                                     ; $4943: $02
	nop                                              ; $4944: $00
	add  b                                           ; $4945: $80
	ld   bc, $8380                                   ; $4946: $01 $80 $83
	rlca                                             ; $4949: $07
	ld   b, l                                        ; $494a: $45
	ld   b, a                                        ; $494b: $47
	adc  b                                           ; $494c: $88
	adc  a                                           ; $494d: $8f
	ld   d, h                                        ; $494e: $54
	ld   e, a                                        ; $494f: $5f
	rst  $38                                         ; $4950: $ff
	ld   [bc], a                                     ; $4951: $02
	add  b                                           ; $4952: $80
	ld   c, $00                                      ; $4953: $0e $00
	inc  c                                           ; $4955: $0c
	add  c                                           ; $4956: $81
	rrca                                             ; $4957: $0f
	add  b                                           ; $4958: $80
	nop                                              ; $4959: $00
	add  b                                           ; $495a: $80
	rrca                                             ; $495b: $0f
	add  b                                           ; $495c: $80
	ld   a, [bc]                                     ; $495d: $0a
	add  b                                           ; $495e: $80
	dec  b                                           ; $495f: $05
	add  d                                           ; $4960: $82
	add  b                                           ; $4961: $80
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00
	add  b                                           ; $4964: $80
	ret  nz                                          ; $4965: $c0

	nop                                              ; $4966: $00
	ldh  [$80], a                                    ; $4967: $e0 $80
	nop                                              ; $4969: $00
	ld   bc, $f8e8                                   ; $496a: $01 $e8 $f8
	add  b                                           ; $496d: $80
	cp   [hl]                                        ; $496e: $be
	add  b                                           ; $496f: $80
	ld   e, a                                        ; $4970: $5f
	add  b                                           ; $4971: $80
	jr   z, jr_071_48f8                              ; $4972: $28 $84

	ld   a, [hl+]                                    ; $4974: $2a
	add  b                                           ; $4975: $80
	ld   [bc], a                                     ; $4976: $02
	add  b                                           ; $4977: $80
	ld   a, [hl+]                                    ; $4978: $2a
	add  b                                           ; $4979: $80
	nop                                              ; $497a: $00
	inc  bc                                          ; $497b: $03
	ld   a, [bc]                                     ; $497c: $0a
	ld   [$b959], a                                  ; $497d: $ea $59 $b9
	add  b                                           ; $4980: $80
	cp   [hl]                                        ; $4981: $be
	add  b                                           ; $4982: $80

jr_071_4983:
	add  e                                           ; $4983: $83
	add  b                                           ; $4984: $80
	or   b                                           ; $4985: $b0
	add  b                                           ; $4986: $80
	adc  [hl]                                        ; $4987: $8e
	add  b                                           ; $4988: $80
	add  c                                           ; $4989: $81
	add  b                                           ; $498a: $80
	db   $10                                         ; $498b: $10
	add  b                                           ; $498c: $80
	xor  b                                           ; $498d: $a8
	add  b                                           ; $498e: $80
	ldh  [$80], a                                    ; $498f: $e0 $80
	jr   c, jr_071_4913                              ; $4991: $38 $80

	adc  $80                                         ; $4993: $ce $80
	di                                               ; $4995: $f3
	add  b                                           ; $4996: $80
	inc  a                                           ; $4997: $3c
	add  b                                           ; $4998: $80
	adc  a                                           ; $4999: $8f
	add  b                                           ; $499a: $80
	ld   h, e                                        ; $499b: $63
	add  b                                           ; $499c: $80
	add  hl, de                                      ; $499d: $19
	dec  b                                           ; $499e: $05
	ld   b, d                                        ; $499f: $42
	ld   h, e                                        ; $49a0: $63
	ld   sp, $0e18                                   ; $49a1: $31 $18 $0e
	ld   b, $80                                      ; $49a4: $06 $80
	add  c                                           ; $49a6: $81
	add  b                                           ; $49a7: $80
	ret  z                                           ; $49a8: $c8

	add  b                                           ; $49a9: $80
	ld   h, h                                        ; $49aa: $64
	add  b                                           ; $49ab: $80
	or   h                                           ; $49ac: $b4
	add  b                                           ; $49ad: $80
	jp   nc, Jump_071_4611                           ; $49ae: $d2 $11 $46

	add  $11                                         ; $49b1: $c6 $11
	pop  af                                          ; $49b3: $f1
	ld   b, [hl]                                     ; $49b4: $46
	ld   a, $91                                      ; $49b5: $3e $91
	adc  a                                           ; $49b7: $8f
	ld   h, b                                        ; $49b8: $60
	ld   h, a                                        ; $49b9: $67
	dec  e                                           ; $49ba: $1d
	rra                                              ; $49bb: $1f
	ld   a, [bc]                                     ; $49bc: $0a
	ld   c, $15                                      ; $49bd: $0e $15
	dec  e                                           ; $49bf: $1d
	dec  h                                           ; $49c0: $25
	ld   a, [hl+]                                    ; $49c1: $2a
	add  b                                           ; $49c2: $80
	push de                                          ; $49c3: $d5
	add  b                                           ; $49c4: $80
	ld   c, d                                        ; $49c5: $4a
	dec  bc                                          ; $49c6: $0b
	sub  l                                           ; $49c7: $95
	push af                                          ; $49c8: $f5
	jr   c, jr_071_4983                              ; $49c9: $38 $b8

	ld   a, l                                        ; $49cb: $7d
	ld   e, l                                        ; $49cc: $5d
	adc  d                                           ; $49cd: $8a
	adc  $08                                         ; $49ce: $ce $08
	adc  [hl]                                        ; $49d0: $8e
	or   a                                           ; $49d1: $b7
	or   l                                           ; $49d2: $b5
	add  b                                           ; $49d3: $80
	ld   c, d                                        ; $49d4: $4a
	add  b                                           ; $49d5: $80
	or   b                                           ; $49d6: $b0
	add  b                                           ; $49d7: $80
	ld   h, l                                        ; $49d8: $65
	add  b                                           ; $49d9: $80
	jp   z, $9f80                                    ; $49da: $ca $80 $9f

	inc  bc                                          ; $49dd: $03
	ld   hl, sp-$01                                  ; $49de: $f8 $ff
	rlca                                             ; $49e0: $07
	nop                                              ; $49e1: $00
	add  b                                           ; $49e2: $80
	ld   b, l                                        ; $49e3: $45
	add  b                                           ; $49e4: $80
	xor  d                                           ; $49e5: $aa
	add  b                                           ; $49e6: $80
	nop                                              ; $49e7: $00
	add  b                                           ; $49e8: $80
	ld   b, l                                        ; $49e9: $45
	add  b                                           ; $49ea: $80
	rst  $28                                         ; $49eb: $ef
	dec  b                                           ; $49ec: $05
	pop  hl                                          ; $49ed: $e1
	rst  $28                                         ; $49ee: $ef
	ld   [$ffe9], sp                                 ; $49ef: $08 $e9 $ff
	db   $10                                         ; $49f2: $10
	add  b                                           ; $49f3: $80

Call_071_49f4:
	ld   d, l                                        ; $49f4: $55
	add  b                                           ; $49f5: $80
	ld   a, [hl+]                                    ; $49f6: $2a
	add  b                                           ; $49f7: $80
	nop                                              ; $49f8: $00
	add  b                                           ; $49f9: $80
	ld   d, l                                        ; $49fa: $55
	add  b                                           ; $49fb: $80
	ld   a, a                                        ; $49fc: $7f
	rlca                                             ; $49fd: $07
	ld   bc, $007f                                   ; $49fe: $01 $7f $00
	ld   bc, $80ff                                   ; $4a01: $01 $ff $80
	ld   [hl], d                                     ; $4a04: $72
	ld   c, [hl]                                     ; $4a05: $4e
	add  b                                           ; $4a06: $80
	xor  [hl]                                        ; $4a07: $ae
	ld   [de], a                                     ; $4a08: $12
	add  [hl]                                        ; $4a09: $86
	and  [hl]                                        ; $4a0a: $a6
	ld   [hl], h                                     ; $4a0b: $74
	halt                                             ; $4a0c: $76
	jp   nc, $20f2                                   ; $4a0d: $d2 $f2 $20

	ldh  [c], a                                      ; $4a10: $e2
	ld   [$e80c], sp                                 ; $4a11: $08 $0c $e8
	db   $10                                         ; $4a14: $10
	inc  e                                           ; $4a15: $1c
	ld   h, h                                        ; $4a16: $64
	inc  a                                           ; $4a17: $3c
	ld   a, h                                        ; $4a18: $7c
	inc  b                                           ; $4a19: $04
	inc  a                                           ; $4a1a: $3c
	inc  d                                           ; $4a1b: $14
	add  a                                           ; $4a1c: $87
	inc  l                                           ; $4a1d: $2c
	inc  bc                                          ; $4a1e: $03
	jr   nc, jr_071_4a2d                             ; $4a1f: $30 $0c

	ld   [$800c], sp                                 ; $4a21: $08 $0c $80
	rlca                                             ; $4a24: $07
	add  b                                           ; $4a25: $80
	inc  bc                                          ; $4a26: $03
	add  h                                           ; $4a27: $84
	nop                                              ; $4a28: $00
	add  b                                           ; $4a29: $80
	ld   bc, $dd05                                   ; $4a2a: $01 $05 $dd

jr_071_4a2d:
	db   $e3                                         ; $4a2d: $e3
	ld   e, h                                        ; $4a2e: $5c
	ld   a, [hl]                                     ; $4a2f: $7e
	nop                                              ; $4a30: $00
	inc  e                                           ; $4a31: $1c
	add  b                                           ; $4a32: $80
	add  c                                           ; $4a33: $81
	dec  d                                           ; $4a34: $15
	jp   nz, Jump_071_45c3                           ; $4a35: $c2 $c3 $45

	ld   b, a                                        ; $4a38: $47
	set  1, a                                        ; $4a39: $cb $cf
	sub  [hl]                                        ; $4a3b: $96
	sbc  a                                           ; $4a3c: $9f
	xor  h                                           ; $4a3d: $ac
	cp   [hl]                                        ; $4a3e: $be
	ld   e, b                                        ; $4a3f: $58
	ld   a, h                                        ; $4a40: $7c
	or   b                                           ; $4a41: $b0
	ld   hl, sp+$63                                  ; $4a42: $f8 $63
	di                                               ; $4a44: $f3
	rst  ToBoot                                         ; $4a45: $c7
	rst  $20                                         ; $4a46: $e7
	adc  a                                           ; $4a47: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a48: $cf
	ld   e, $9e                                      ; $4a49: $1e $9e
	add  b                                           ; $4a4b: $80
	jr   c, @+$03                                    ; $4a4c: $38 $01

	ld   a, [$800a]                                  ; $4a4e: $fa $0a $80
	dec  b                                           ; $4a51: $05
	add  b                                           ; $4a52: $80
	ld   a, [bc]                                     ; $4a53: $0a
	add  b                                           ; $4a54: $80
	dec  b                                           ; $4a55: $05

jr_071_4a56:
	add  b                                           ; $4a56: $80
	ld   a, [bc]                                     ; $4a57: $0a
	add  b                                           ; $4a58: $80
	dec  b                                           ; $4a59: $05

jr_071_4a5a:
	add  b                                           ; $4a5a: $80
	ld   [bc], a                                     ; $4a5b: $02
	inc  bc                                          ; $4a5c: $03
	ld   bc, $5f05                                   ; $4a5d: $01 $05 $5f
	xor  e                                           ; $4a60: $ab
	add  b                                           ; $4a61: $80
	ld   d, l                                        ; $4a62: $55
	add  b                                           ; $4a63: $80
	xor  d                                           ; $4a64: $aa
	add  b                                           ; $4a65: $80
	ld   d, l                                        ; $4a66: $55
	add  b                                           ; $4a67: $80
	xor  d                                           ; $4a68: $aa
	add  b                                           ; $4a69: $80
	ld   d, l                                        ; $4a6a: $55
	add  b                                           ; $4a6b: $80
	xor  d                                           ; $4a6c: $aa
	add  b                                           ; $4a6d: $80
	ld   d, l                                        ; $4a6e: $55
	add  b                                           ; $4a6f: $80
	ld   hl, sp+$05                                  ; $4a70: $f8 $05
	db   $fc                                         ; $4a72: $fc
	cp   $fc                                         ; $4a73: $fe $fc
	rst  $38                                         ; $4a75: $ff
	ld   a, [hl]                                     ; $4a76: $7e
	ld   a, a                                        ; $4a77: $7f
	add  b                                           ; $4a78: $80
	cp   a                                           ; $4a79: $bf
	add  b                                           ; $4a7a: $80
	ld   a, a                                        ; $4a7b: $7f
	inc  bc                                          ; $4a7c: $03
	cp   c                                           ; $4a7d: $b9
	cp   e                                           ; $4a7e: $bb
	ld   e, e                                        ; $4a7f: $5b
	ld   e, c                                        ; $4a80: $59
	add  e                                           ; $4a81: $83
	nop                                              ; $4a82: $00
	ld   c, $80                                      ; $4a83: $0e $80
	nop                                              ; $4a85: $00
	ret  nz                                          ; $4a86: $c0

	add  b                                           ; $4a87: $80
	ldh  a, [$db]                                    ; $4a88: $f0 $db
	di                                               ; $4a8a: $f3
	db   $db                                         ; $4a8b: $db
	rst  JumpTable                                         ; $4a8c: $df
	push de                                          ; $4a8d: $d5
	adc  $1b                                         ; $4a8e: $ce $1b
	inc  b                                           ; $4a90: $04
	sub  a                                           ; $4a91: $97
	sub  [hl]                                        ; $4a92: $96
	add  b                                           ; $4a93: $80
	ld   d, a                                        ; $4a94: $57
	inc  b                                           ; $4a95: $04
	cp   a                                           ; $4a96: $bf
	and  [hl]                                        ; $4a97: $a6
	ld   bc, $3f7e                                   ; $4a98: $01 $7e $3f
	add  c                                           ; $4a9b: $81
	rst  $38                                         ; $4a9c: $ff
	ld   [bc], a                                     ; $4a9d: $02
	ccf                                              ; $4a9e: $3f
	rst  $38                                         ; $4a9f: $ff
	and  l                                           ; $4aa0: $a5
	add  b                                           ; $4aa1: $80
	jp   c, Jump_071_5a00                            ; $4aa2: $da $00 $5a

jr_071_4aa5:
	add  b                                           ; $4aa5: $80
	ld   e, b                                        ; $4aa6: $58
	dec  bc                                          ; $4aa7: $0b
	ret  c                                           ; $4aa8: $d8

	ld   e, b                                        ; $4aa9: $58
	ret  c                                           ; $4aaa: $d8

	jr   jr_071_4aa5                                 ; $4aab: $18 $f8

	ret  c                                           ; $4aad: $d8

	ld   hl, sp-$18                                  ; $4aae: $f8 $e8
	ld   hl, sp-$01                                  ; $4ab0: $f8 $ff
	sbc  h                                           ; $4ab2: $9c
	ld   a, l                                        ; $4ab3: $7d
	add  b                                           ; $4ab4: $80
	ld   a, h                                        ; $4ab5: $7c
	nop                                              ; $4ab6: $00
	inc  b                                           ; $4ab7: $04
	add  c                                           ; $4ab8: $81
	inc  e                                           ; $4ab9: $1c
	add  c                                           ; $4aba: $81
	ld   de, $1580                                   ; $4abb: $11 $80 $15
	inc  b                                           ; $4abe: $04
	rra                                              ; $4abf: $1f
	ccf                                              ; $4ac0: $3f
	ret  nz                                          ; $4ac1: $c0

	sbc  d                                           ; $4ac2: $9a
	ld   h, a                                        ; $4ac3: $67
	add  b                                           ; $4ac4: $80
	ld   [hl], $80                                   ; $4ac5: $36 $80
	ld   d, $82                                      ; $4ac7: $16 $82
	xor  [hl]                                        ; $4ac9: $ae
	add  d                                           ; $4aca: $82
	ld   b, $07                                      ; $4acb: $06 $07
	and  [hl]                                        ; $4acd: $a6
	ld   h, $0a                                      ; $4ace: $26 $0a
	adc  b                                           ; $4ad0: $88
	jr   nz, jr_071_4b33                             ; $4ad1: $20 $60

	ld   e, b                                        ; $4ad3: $58
	jr   jr_071_4a56                                 ; $4ad4: $18 $80

	add  $80                                         ; $4ad6: $c6 $80
	jr   nc, jr_071_4a5a                             ; $4ad8: $30 $80

	ld   a, [bc]                                     ; $4ada: $0a
	add  d                                           ; $4adb: $82
	dec  b                                           ; $4adc: $05
	add  b                                           ; $4add: $80
	db   $10                                         ; $4ade: $10
	add  b                                           ; $4adf: $80
	add  hl, bc                                      ; $4ae0: $09
	add  b                                           ; $4ae1: $80
	ld   b, $84                                      ; $4ae2: $06 $84
	nop                                              ; $4ae4: $00
	dec  b                                           ; $4ae5: $05
	rla                                              ; $4ae6: $17
	rra                                              ; $4ae7: $1f
	dec  de                                          ; $4ae8: $1b
	inc  sp                                          ; $4ae9: $33
	and  b                                           ; $4aea: $a0
	add  b                                           ; $4aeb: $80
	adc  b                                           ; $4aec: $88
	nop                                              ; $4aed: $00
	add  b                                           ; $4aee: $80
	rst  $38                                         ; $4aef: $ff
	add  b                                           ; $4af0: $80
	sbc  h                                           ; $4af1: $9c
	add  d                                           ; $4af2: $82
	nop                                              ; $4af3: $00
	add  b                                           ; $4af4: $80
	ld   bc, $0580                                   ; $4af5: $01 $80 $05
	add  b                                           ; $4af8: $80
	ld   [bc], a                                     ; $4af9: $02
	add  b                                           ; $4afa: $80
	nop                                              ; $4afb: $00
	add  b                                           ; $4afc: $80
	rst  $38                                         ; $4afd: $ff
	add  b                                           ; $4afe: $80
	ld   [hl], c                                     ; $4aff: $71
	ld   bc, $3c04                                   ; $4b00: $01 $04 $3c
	add  b                                           ; $4b03: $80
	inc  l                                           ; $4b04: $2c
	add  d                                           ; $4b05: $82
	inc  a                                           ; $4b06: $3c
	dec  b                                           ; $4b07: $05
	jr   nz, jr_071_4b49                             ; $4b08: $20 $3f

	rlca                                             ; $4b0a: $07
	ccf                                              ; $4b0b: $3f
	add  b                                           ; $4b0c: $80
	sbc  a                                           ; $4b0d: $9f
	add  b                                           ; $4b0e: $80
	nop                                              ; $4b0f: $00
	add  b                                           ; $4b10: $80
	ld   bc, $0282                                   ; $4b11: $01 $82 $02
	add  b                                           ; $4b14: $80
	nop                                              ; $4b15: $00
	inc  de                                          ; $4b16: $13
	adc  b                                           ; $4b17: $88
	ld   hl, sp-$1c                                  ; $4b18: $f8 $e4
	db   $ec                                         ; $4b1a: $ec
	sub  b                                           ; $4b1b: $90
	db   $f4                                         ; $4b1c: $f4
	inc  c                                           ; $4b1d: $0c
	inc  e                                           ; $4b1e: $1c
	ld   l, $3e                                      ; $4b1f: $2e $3e
	ld   c, b                                        ; $4b21: $48
	ld   a, h                                        ; $4b22: $7c
	ld   b, c                                        ; $4b23: $41
	ld   a, c                                        ; $4b24: $79
	jp   nz, $b0f3                                   ; $4b25: $c2 $f3 $b0

	di                                               ; $4b28: $f3
	db   $e4                                         ; $4b29: $e4
	and  $80                                         ; $4b2a: $e6 $80
	xor  $03                                         ; $4b2c: $ee $03
	add  sp, -$12                                    ; $4b2e: $e8 $ee
	ld   d, $70                                      ; $4b30: $16 $70
	add  b                                           ; $4b32: $80

jr_071_4b33:
	ldh  [rTMA], a                                   ; $4b33: $e0 $06
	ld   b, a                                        ; $4b35: $47
	rst  ToBoot                                         ; $4b36: $c7
	nop                                              ; $4b37: $00
	add  b                                           ; $4b38: $80
	jr   c, @+$41                                    ; $4b39: $38 $3f

	rlca                                             ; $4b3b: $07
	add  c                                           ; $4b3c: $81
	nop                                              ; $4b3d: $00
	add  b                                           ; $4b3e: $80
	ld   a, c                                        ; $4b3f: $79
	ld   bc, $02f2                                   ; $4b40: $01 $f2 $02
	add  b                                           ; $4b43: $80
	dec  b                                           ; $4b44: $05
	add  b                                           ; $4b45: $80
	ld   a, [bc]                                     ; $4b46: $0a
	add  b                                           ; $4b47: $80
	inc  b                                           ; $4b48: $04

jr_071_4b49:
	add  b                                           ; $4b49: $80
	ld   a, [bc]                                     ; $4b4a: $0a
	add  b                                           ; $4b4b: $80
	dec  b                                           ; $4b4c: $05
	add  b                                           ; $4b4d: $80
	ld   a, [bc]                                     ; $4b4e: $0a
	add  b                                           ; $4b4f: $80
	dec  b                                           ; $4b50: $05
	ld   bc, $aa5a                                   ; $4b51: $01 $5a $aa
	add  [hl]                                        ; $4b54: $86
	nop                                              ; $4b55: $00
	add  b                                           ; $4b56: $80
	rst  $38                                         ; $4b57: $ff
	add  b                                           ; $4b58: $80
	ld   a, [hl+]                                    ; $4b59: $2a
	add  b                                           ; $4b5a: $80
	ld   d, l                                        ; $4b5b: $55
	add  b                                           ; $4b5c: $80
	cp   a                                           ; $4b5d: $bf
	add  a                                           ; $4b5e: $87
	nop                                              ; $4b5f: $00
	ld   [bc], a                                     ; $4b60: $02
	rst  $38                                         ; $4b61: $ff
	ld   d, b                                        ; $4b62: $50
	xor  a                                           ; $4b63: $af
	add  b                                           ; $4b64: $80
	ld   e, a                                        ; $4b65: $5f
	ld   [bc], a                                     ; $4b66: $02
	ldh  a, [rIE]                                    ; $4b67: $f0 $ff
	rrca                                             ; $4b69: $0f
	add  [hl]                                        ; $4b6a: $86
	nop                                              ; $4b6b: $00
	ld   bc, $00ff                                   ; $4b6c: $01 $ff $00
	add  c                                           ; $4b6f: $81
	rst  $38                                         ; $4b70: $ff
	inc  b                                           ; $4b71: $04
	adc  b                                           ; $4b72: $88
	ld   l, h                                        ; $4b73: $6c
	cp   b                                           ; $4b74: $b8
	ld   e, a                                        ; $4b75: $5f
	rst  JumpTable                                         ; $4b76: $df
	add  c                                           ; $4b77: $81
	db   $d3                                         ; $4b78: $d3
	ld   bc, $1f13                                   ; $4b79: $01 $13 $1f
	add  b                                           ; $4b7c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b7d: $cf
	ld   a, [bc]                                     ; $4b7e: $0a
	inc  de                                          ; $4b7f: $13
	rst  $10                                         ; $4b80: $d7
	and  a                                           ; $4b81: $a7
	cp   a                                           ; $4b82: $bf
	jr   nz, @+$01                                   ; $4b83: $20 $ff

	nop                                              ; $4b85: $00
	rst  $38                                         ; $4b86: $ff
	cp   $ff                                         ; $4b87: $fe $ff
	db   $fc                                         ; $4b89: $fc
	add  e                                           ; $4b8a: $83
	rst  $38                                         ; $4b8b: $ff
	ld   [$fffc], sp                                 ; $4b8c: $08 $fc $ff
	add  $ff                                         ; $4b8f: $c6 $ff
	daa                                              ; $4b91: $27
	rst  $38                                         ; $4b92: $ff
	sbc  a                                           ; $4b93: $9f
	rst  $38                                         ; $4b94: $ff
	ld   a, a                                        ; $4b95: $7f
	add  c                                           ; $4b96: $81
	rst  $38                                         ; $4b97: $ff
	dec  c                                           ; $4b98: $0d
	cp   $ff                                         ; $4b99: $fe $ff
	ld   a, [$fbff]                                  ; $4b9b: $fa $ff $fb
	db   $fc                                         ; $4b9e: $fc
	inc  b                                           ; $4b9f: $04
	ld   hl, sp+$7c                                  ; $4ba0: $f8 $7c
	add  [hl]                                        ; $4ba2: $86
	add  h                                           ; $4ba3: $84
	add  b                                           ; $4ba4: $80
	pop  bc                                          ; $4ba5: $c1
	ret  nz                                          ; $4ba6: $c0

	add  b                                           ; $4ba7: $80
	ret  z                                           ; $4ba8: $c8

	add  b                                           ; $4ba9: $80
	db   $ec                                         ; $4baa: $ec
	add  c                                           ; $4bab: $81
	ldh  [rP1], a                                    ; $4bac: $e0 $00
	rra                                              ; $4bae: $1f
	add  b                                           ; $4baf: $80
	ld   bc, $0500                                   ; $4bb0: $01 $00 $05
	add  b                                           ; $4bb3: $80
	dec  h                                           ; $4bb4: $25
	ld   d, $2d                                      ; $4bb5: $16 $2d
	xor  l                                           ; $4bb7: $ad
	dec  l                                           ; $4bb8: $2d
	ld   l, l                                        ; $4bb9: $6d
	dec  b                                           ; $4bba: $05
	and  c                                           ; $4bbb: $a1
	add  a                                           ; $4bbc: $87
	jr   jr_071_4bc8                                 ; $4bbd: $18 $09

	dec  bc                                          ; $4bbf: $0b
	pop  af                                          ; $4bc0: $f1
	ld   e, e                                        ; $4bc1: $5b
	ld   d, c                                        ; $4bc2: $51
	ld   h, b                                        ; $4bc3: $60
	ld   h, h                                        ; $4bc4: $64
	ld   c, l                                        ; $4bc5: $4d
	ld   c, b                                        ; $4bc6: $48
	ld   e, d                                        ; $4bc7: $5a

jr_071_4bc8:
	ld   e, b                                        ; $4bc8: $58
	ld   e, l                                        ; $4bc9: $5d
	ld   e, b                                        ; $4bca: $58
	db   $10                                         ; $4bcb: $10
	cp   $80                                         ; $4bcc: $fe $80
	rst  $38                                         ; $4bce: $ff
	nop                                              ; $4bcf: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bd0: $cf
	add  c                                           ; $4bd1: $81
	rst  $38                                         ; $4bd2: $ff
	dec  b                                           ; $4bd3: $05
	rst  $20                                         ; $4bd4: $e7
	jr   z, jr_071_4c38                              ; $4bd5: $28 $61

	nop                                              ; $4bd7: $00
	adc  [hl]                                        ; $4bd8: $8e
	db   $fc                                         ; $4bd9: $fc
	add  b                                           ; $4bda: $80
	call c, $8d13                                    ; $4bdb: $dc $13 $8d
	adc  h                                           ; $4bde: $8c
	ld   e, [hl]                                     ; $4bdf: $5e
	call c, $ec8c                                    ; $4be0: $dc $8c $ec
	pop  hl                                          ; $4be3: $e1
	ldh  a, [rAUD1ENV]                               ; $4be4: $f0 $12
	and  e                                           ; $4be6: $a3
	add  a                                           ; $4be7: $87
	dec  b                                           ; $4be8: $05
	dec  a                                           ; $4be9: $3d
	ei                                               ; $4bea: $fb
	jp   c, $8edc                                    ; $4beb: $da $dc $8e

	adc  b                                           ; $4bee: $88
	xor  h                                           ; $4bef: $ac
	xor  b                                           ; $4bf0: $a8
	add  b                                           ; $4bf1: $80
	ret  c                                           ; $4bf2: $d8

	ld   [bc], a                                     ; $4bf3: $02
	pop  hl                                          ; $4bf4: $e1
	ld   bc, $81e0                                   ; $4bf5: $01 $e0 $81
	nop                                              ; $4bf8: $00
	add  b                                           ; $4bf9: $80
	ld   d, l                                        ; $4bfa: $55
	add  b                                           ; $4bfb: $80
	dec  hl                                          ; $4bfc: $2b
	add  b                                           ; $4bfd: $80
	ld   d, a                                        ; $4bfe: $57
	ld   a, [bc]                                     ; $4bff: $0a
	ld   l, $2f                                      ; $4c00: $2e $2f
	ld   e, l                                        ; $4c02: $5d
	ld   e, a                                        ; $4c03: $5f
	dec  sp                                          ; $4c04: $3b
	ccf                                              ; $4c05: $3f
	rla                                              ; $4c06: $17
	inc  e                                           ; $4c07: $1c
	nop                                              ; $4c08: $00
	inc  c                                           ; $4c09: $0c
	ret  nc                                          ; $4c0a: $d0

	add  c                                           ; $4c0b: $81
	call c, Call_071_5c00                            ; $4c0c: $dc $00 $5c
	add  e                                           ; $4c0f: $83
	call c, $5002                                    ; $4c10: $dc $02 $50
	ld   e, h                                        ; $4c13: $5c
	ld   [$ee81], sp                                 ; $4c14: $08 $81 $ee
	ld   [bc], a                                     ; $4c17: $02
	xor  [hl]                                        ; $4c18: $ae
	xor  $8e                                         ; $4c19: $ee $8e
	add  e                                           ; $4c1b: $83
	adc  $82                                         ; $4c1c: $ce $82
	xor  $0c                                         ; $4c1e: $ee $0c
	sub  l                                           ; $4c20: $95
	di                                               ; $4c21: $f3
	ld   h, a                                        ; $4c22: $67
	ld   h, d                                        ; $4c23: $62
	dec  sp                                          ; $4c24: $3b
	jr   nc, jr_071_4c39                             ; $4c25: $30 $12

	db   $10                                         ; $4c27: $10
	inc  b                                           ; $4c28: $04
	ld   [$0405], sp                                 ; $4c29: $08 $05 $04
	ld   b, $81                                      ; $4c2c: $06 $81
	inc  b                                           ; $4c2e: $04
	ld   bc, $0af9                                   ; $4c2f: $01 $f9 $0a
	add  b                                           ; $4c32: $80
	dec  b                                           ; $4c33: $05
	add  b                                           ; $4c34: $80
	ld   a, [bc]                                     ; $4c35: $0a
	add  b                                           ; $4c36: $80
	dec  b                                           ; $4c37: $05

jr_071_4c38:
	add  b                                           ; $4c38: $80

jr_071_4c39:
	ld   a, [bc]                                     ; $4c39: $0a
	add  b                                           ; $4c3a: $80
	ld   bc, $0a80                                   ; $4c3b: $01 $80 $0a
	add  b                                           ; $4c3e: $80
	dec  b                                           ; $4c3f: $05
	ld   bc, $aa5a                                   ; $4c40: $01 $5a $aa
	add  b                                           ; $4c43: $80
	ld   d, l                                        ; $4c44: $55
	add  b                                           ; $4c45: $80
	xor  d                                           ; $4c46: $aa
	add  b                                           ; $4c47: $80

Call_071_4c48:
	ld   d, l                                        ; $4c48: $55
	add  b                                           ; $4c49: $80
	nop                                              ; $4c4a: $00
	add  b                                           ; $4c4b: $80
	ld   d, h                                        ; $4c4c: $54
	add  b                                           ; $4c4d: $80
	add  c                                           ; $4c4e: $81
	add  b                                           ; $4c4f: $80
	ld   [bc], a                                     ; $4c50: $02
	add  b                                           ; $4c51: $80
	xor  a                                           ; $4c52: $af
	add  b                                           ; $4c53: $80
	ld   e, a                                        ; $4c54: $5f
	add  b                                           ; $4c55: $80
	xor  a                                           ; $4c56: $af
	rlca                                             ; $4c57: $07
	ld   b, b                                        ; $4c58: $40
	ld   e, [hl]                                     ; $4c59: $5e
	dec  l                                           ; $4c5a: $2d
	inc  a                                           ; $4c5b: $3c
	ld   l, e                                        ; $4c5c: $6b
	ld   a, a                                        ; $4c5d: $7f
	ld   [hl], h                                     ; $4c5e: $74
	ld   a, a                                        ; $4c5f: $7f
	add  b                                           ; $4c60: $80
	halt                                             ; $4c61: $76
	nop                                              ; $4c62: $00
	rst  $28                                         ; $4c63: $ef
	add  e                                           ; $4c64: $83
	rst  $38                                         ; $4c65: $ff
	ld   a, [bc]                                     ; $4c66: $0a
	di                                               ; $4c67: $f3
	rst  $30                                         ; $4c68: $f7
	rst  $20                                         ; $4c69: $e7
	inc  de                                          ; $4c6a: $13
	rst  $38                                         ; $4c6b: $ff
	adc  a                                           ; $4c6c: $8f
	ldh  [$60], a                                    ; $4c6d: $e0 $60
	nop                                              ; $4c6f: $00
	add  b                                           ; $4c70: $80
	ldh  [$80], a                                    ; $4c71: $e0 $80
	cp   a                                           ; $4c73: $bf
	add  hl, bc                                      ; $4c74: $09
	cp   [hl]                                        ; $4c75: $be
	ld   l, [hl]                                     ; $4c76: $6e
	db   $dd                                         ; $4c77: $dd
	or   l                                           ; $4c78: $b5
	db   $ec                                         ; $4c79: $ec
	call nc, $ebfb                                   ; $4c7a: $d4 $fb $eb
	ei                                               ; $4c7d: $fb
	dec  bc                                          ; $4c7e: $0b
	add  b                                           ; $4c7f: $80
	rlca                                             ; $4c80: $07
	ld   hl, wType0AnimSpriteXPosRelativeTo                                   ; $4c81: $21 $00 $c6
	rst  $38                                         ; $4c84: $ff
	jr   c, @+$01                                    ; $4c85: $38 $ff

	cp   $ff                                         ; $4c87: $fe $ff
	inc  bc                                          ; $4c89: $03
	rst  $38                                         ; $4c8a: $ff
	ld   b, b                                        ; $4c8b: $40
	rst  $38                                         ; $4c8c: $ff
	sbc  b                                           ; $4c8d: $98
	cp   a                                           ; $4c8e: $bf
	sbc  c                                           ; $4c8f: $99
	ei                                               ; $4c90: $fb
	ret                                              ; $4c91: $c9


	rrca                                             ; $4c92: $0f
	ld   a, a                                        ; $4c93: $7f
	rst  $38                                         ; $4c94: $ff
	sbc  a                                           ; $4c95: $9f
	rst  $38                                         ; $4c96: $ff
	ld   a, a                                        ; $4c97: $7f
	rst  $38                                         ; $4c98: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c99: $cf
	rst  $38                                         ; $4c9a: $ff
	ccf                                              ; $4c9b: $3f
	rst  $38                                         ; $4c9c: $ff
	daa                                              ; $4c9d: $27
	cp   a                                           ; $4c9e: $bf
	add  hl, de                                      ; $4c9f: $19
	cp   $00                                         ; $4ca0: $fe $00
	cp   a                                           ; $4ca2: $bf
	ld   [hl], b                                     ; $4ca3: $70
	add  e                                           ; $4ca4: $83
	ldh  [$80], a                                    ; $4ca5: $e0 $80
	ldh  [c], a                                      ; $4ca7: $e2
	ld   [bc], a                                     ; $4ca8: $02
	db   $f4                                         ; $4ca9: $f4
	ld   sp, hl                                      ; $4caa: $f9
	rst  $20                                         ; $4cab: $e7
	add  b                                           ; $4cac: $80
	ldh  a, [c]                                      ; $4cad: $f2
	ld   [$0611], sp                                 ; $4cae: $08 $11 $06
	pop  hl                                          ; $4cb1: $e1
	add  hl, de                                      ; $4cb2: $19
	inc  bc                                          ; $4cb3: $03
	dec  b                                           ; $4cb4: $05
	inc  bc                                          ; $4cb5: $03
	ld   [bc], a                                     ; $4cb6: $02
	inc  bc                                          ; $4cb7: $03
	add  b                                           ; $4cb8: $80
	ld   bc, $c105                                   ; $4cb9: $01 $05 $c1
	ret  nz                                          ; $4cbc: $c0

	ld   h, e                                        ; $4cbd: $63
	ld   a, h                                        ; $4cbe: $7c
	inc  hl                                          ; $4cbf: $23
	jp   $0180                                       ; $4cc0: $c3 $80 $01


	ld   b, c                                        ; $4cc3: $41
	ld   e, $fe                                      ; $4cc4: $1e $fe
	db   $10                                         ; $4cc6: $10
	rst  $38                                         ; $4cc7: $ff
	rla                                              ; $4cc8: $17
	rst  $38                                         ; $4cc9: $ff
	inc  hl                                          ; $4cca: $23
	rst  JumpTable                                         ; $4ccb: $df
	add  b                                           ; $4ccc: $80
	ei                                               ; $4ccd: $fb
	db   $e4                                         ; $4cce: $e4
	rst  $38                                         ; $4ccf: $ff
	rst  JumpTable                                         ; $4cd0: $df
	cp   a                                           ; $4cd1: $bf
	add  a                                           ; $4cd2: $87
	sbc  a                                           ; $4cd3: $9f
	dec  a                                           ; $4cd4: $3d
	ld   a, $06                                      ; $4cd5: $3e $06
	cp   $8e                                         ; $4cd7: $fe $8e
	cp   $b5                                         ; $4cd9: $fe $b5
	ld   a, l                                        ; $4cdb: $7d
	ld   b, a                                        ; $4cdc: $47
	ld   h, a                                        ; $4cdd: $67
	nop                                              ; $4cde: $00
	db   $fc                                         ; $4cdf: $fc
	sbc  h                                           ; $4ce0: $9c
	ld   hl, sp+$69                                  ; $4ce1: $f8 $69
	ld   hl, sp-$36                                  ; $4ce3: $f8 $ca
	and  c                                           ; $4ce5: $a1
	dec  h                                           ; $4ce6: $25
	inc  hl                                          ; $4ce7: $23
	xor  e                                           ; $4ce8: $ab
	and  l                                           ; $4ce9: $a5
	ld   [hl], h                                     ; $4cea: $74
	ld   h, d                                        ; $4ceb: $62
	ldh  [$e4], a                                    ; $4cec: $e0 $e4
	ld   h, b                                        ; $4cee: $60

jr_071_4cef:
	ld   [$1181], sp                                 ; $4cef: $08 $81 $11
	nop                                              ; $4cf2: $00
	jr   nz, @-$4d                                   ; $4cf3: $20 $b1

	ld   a, [hl]                                     ; $4cf5: $7e
	rrca                                             ; $4cf6: $0f
	nop                                              ; $4cf7: $00
	ld   [hl], l                                     ; $4cf8: $75
	ld   a, e                                        ; $4cf9: $7b
	ld   h, h                                        ; $4cfa: $64
	ld   [hl], a                                     ; $4cfb: $77
	ld   c, b                                        ; $4cfc: $48
	ld   l, [hl]                                     ; $4cfd: $6e
	ld   [hl], b                                     ; $4cfe: $70
	ld   a, l                                        ; $4cff: $7d
	ld   b, b                                        ; $4d00: $40
	ld   a, e                                        ; $4d01: $7b
	ld   l, b                                        ; $4d02: $68
	ld   a, a                                        ; $4d03: $7f
	adc  d                                           ; $4d04: $8a
	sbc  h                                           ; $4d05: $9c
	add  c                                           ; $4d06: $81
	ld   l, h                                        ; $4d07: $6c
	db   $10                                         ; $4d08: $10
	db   $ec                                         ; $4d09: $ec
	ld   [$0828], sp                                 ; $4d0a: $08 $28 $08
	xor  b                                           ; $4d0d: $a8
	ld   c, b                                        ; $4d0e: $48
	call z, $f460                                    ; $4d0f: $cc $60 $f4
	ret  z                                           ; $4d12: $c8

	db   $ec                                         ; $4d13: $ec
	scf                                              ; $4d14: $37
	ld   b, b                                        ; $4d15: $40
	or   b                                           ; $4d16: $b0
	ldh  a, [rP1]                                    ; $4d17: $f0 $00
	ldh  a, [$80]                                    ; $4d19: $f0 $80
	or   b                                           ; $4d1b: $b0
	add  b                                           ; $4d1c: $80
	ld   d, b                                        ; $4d1d: $50
	add  b                                           ; $4d1e: $80
	add  b                                           ; $4d1f: $80
	rlca                                             ; $4d20: $07
	ld   [hl], b                                     ; $4d21: $70
	ldh  a, [rSVBK]                                  ; $4d22: $f0 $70
	nop                                              ; $4d24: $00
	ld   [$0700], sp                                 ; $4d25: $08 $00 $07
	nop                                              ; $4d28: $00
	add  b                                           ; $4d29: $80
	dec  c                                           ; $4d2a: $0d
	inc  bc                                          ; $4d2b: $03
	jr   jr_071_4d3e                                 ; $4d2c: $18 $10

	add  hl, de                                      ; $4d2e: $19
	db   $10                                         ; $4d2f: $10
	add  b                                           ; $4d30: $80
	ld   [de], a                                     ; $4d31: $12
	dec  b                                           ; $4d32: $05
	ld   c, $0d                                      ; $4d33: $0e $0d
	dec  b                                           ; $4d35: $05
	ld   b, $fb                                      ; $4d36: $06 $fb
	ld   a, [bc]                                     ; $4d38: $0a
	add  d                                           ; $4d39: $82
	nop                                              ; $4d3a: $00
	add  b                                           ; $4d3b: $80
	ld   a, [bc]                                     ; $4d3c: $0a
	add  b                                           ; $4d3d: $80

jr_071_4d3e:
	inc  b                                           ; $4d3e: $04
	add  b                                           ; $4d3f: $80
	ld   a, [bc]                                     ; $4d40: $0a
	add  b                                           ; $4d41: $80
	dec  b                                           ; $4d42: $05
	add  b                                           ; $4d43: $80
	ld   a, [bc]                                     ; $4d44: $0a
	ld   bc, $02f2                                   ; $4d45: $01 $f2 $02
	adc  d                                           ; $4d48: $8a
	nop                                              ; $4d49: $00
	add  b                                           ; $4d4a: $80
	add  b                                           ; $4d4b: $80
	dec  b                                           ; $4d4c: $05
	ld   h, c                                        ; $4d4d: $61
	ld   a, b                                        ; $4d4e: $78
	ld   a, [hl+]                                    ; $4d4f: $2a
	ccf                                              ; $4d50: $3f
	ld   [de], a                                     ; $4d51: $12
	ld   e, $80                                      ; $4d52: $1e $80
	nop                                              ; $4d54: $00
	add  b                                           ; $4d55: $80
	rrca                                             ; $4d56: $0f
	add  b                                           ; $4d57: $80
	cpl                                              ; $4d58: $2f
	add  b                                           ; $4d59: $80
	ld   d, $80                                      ; $4d5a: $16 $80
	xor  [hl]                                        ; $4d5c: $ae
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	add  b                                           ; $4d5f: $80
	add  b                                           ; $4d60: $80
	add  e                                           ; $4d61: $83
	nop                                              ; $4d62: $00
	rlca                                             ; $4d63: $07
	or   $ff                                         ; $4d64: $f6 $ff
	or   $ff                                         ; $4d66: $f6 $ff
	ld   a, l                                        ; $4d68: $7d
	db   $fc                                         ; $4d69: $fc
	db   $fd                                         ; $4d6a: $fd
	ld   a, h                                        ; $4d6b: $7c
	add  b                                           ; $4d6c: $80
	jr   nz, jr_071_4cef                             ; $4d6d: $20 $80

	ld   b, b                                        ; $4d6f: $40
	add  d                                           ; $4d70: $82
	nop                                              ; $4d71: $00
	dec  b                                           ; $4d72: $05
	inc  e                                           ; $4d73: $1c
	ldh  [rDIV], a                                   ; $4d74: $e0 $04
	rst  $38                                         ; $4d76: $ff
	rst  $20                                         ; $4d77: $e7
	rst  $38                                         ; $4d78: $ff
	add  b                                           ; $4d79: $80
	rst  $28                                         ; $4d7a: $ef
	add  b                                           ; $4d7b: $80
	inc  bc                                          ; $4d7c: $03
	ld   bc, $5141                                   ; $4d7d: $01 $41 $51
	add  b                                           ; $4d80: $80
	and  b                                           ; $4d81: $a0
	add  b                                           ; $4d82: $80
	ld   d, b                                        ; $4d83: $50
	dec  bc                                          ; $4d84: $0b
	and  b                                           ; $4d85: $a0
	xor  a                                           ; $4d86: $af
	dec  e                                           ; $4d87: $1d
	db   $dd                                         ; $4d88: $dd
	rst  JumpTable                                         ; $4d89: $df
	rst  $38                                         ; $4d8a: $ff
	and  $ff                                         ; $4d8b: $e6 $ff
	ld   sp, $3fff                                   ; $4d8d: $31 $ff $3f
	rst  $38                                         ; $4d90: $ff
	add  b                                           ; $4d91: $80
	adc  a                                           ; $4d92: $8f
	dec  b                                           ; $4d93: $05
	rrca                                             ; $4d94: $0f
	ld   a, a                                        ; $4d95: $7f
	add  a                                           ; $4d96: $87
	rrca                                             ; $4d97: $0f
	daa                                              ; $4d98: $27
	cpl                                              ; $4d99: $2f
	add  b                                           ; $4d9a: $80
	ld   [hl], a                                     ; $4d9b: $77
	ld   [bc], a                                     ; $4d9c: $02
	sub  a                                           ; $4d9d: $97
	rst  $30                                         ; $4d9e: $f7
	ld   h, h                                        ; $4d9f: $64
	add  b                                           ; $4da0: $80
	rst  $38                                         ; $4da1: $ff
	add  c                                           ; $4da2: $81
	db   $fc                                         ; $4da3: $fc
	add  b                                           ; $4da4: $80
	ld   hl, sp-$7e                                  ; $4da5: $f8 $82
	ldh  [$82], a                                    ; $4da7: $e0 $82
	ldh  a, [$80]                                    ; $4da9: $f0 $80
	nop                                              ; $4dab: $00
	add  b                                           ; $4dac: $80
	ld   c, b                                        ; $4dad: $48
	inc  b                                           ; $4dae: $04
	dec  l                                           ; $4daf: $2d
	ld   l, h                                        ; $4db0: $6c
	ld   b, c                                        ; $4db1: $41
	ld   bc, $8000                                   ; $4db2: $01 $00 $80
	ld   bc, $0305                                   ; $4db5: $01 $05 $03
	ld   bc, $0103                                   ; $4db8: $01 $03 $01
	rlca                                             ; $4dbb: $07
	pop  af                                          ; $4dbc: $f1
	add  c                                           ; $4dbd: $81
	rst  $38                                         ; $4dbe: $ff
	dec  c                                           ; $4dbf: $0d
	rst  $28                                         ; $4dc0: $ef
	rst  $38                                         ; $4dc1: $ff
	ld   e, a                                        ; $4dc2: $5f
	rst  $38                                         ; $4dc3: $ff
	ld   a, $ff                                      ; $4dc4: $3e $ff
	cp   d                                           ; $4dc6: $ba
	rst  $38                                         ; $4dc7: $ff
	db   $f4                                         ; $4dc8: $f4
	rst  $38                                         ; $4dc9: $ff
	xor  d                                           ; $4dca: $aa
	rst  $38                                         ; $4dcb: $ff
	sbc  [hl]                                        ; $4dcc: $9e
	ld   hl, sp-$7f                                  ; $4dcd: $f8 $81
	db   $fc                                         ; $4dcf: $fc
	ld   [bc], a                                     ; $4dd0: $02
	db   $fd                                         ; $4dd1: $fd
	db   $f4                                         ; $4dd2: $f4
	cp   $80                                         ; $4dd3: $fe $80
	db   $fc                                         ; $4dd5: $fc
	rlca                                             ; $4dd6: $07
	add  sp, -$08                                    ; $4dd7: $e8 $f8
	rrca                                             ; $4dd9: $0f
	rst  $38                                         ; $4dda: $ff
	ld   e, a                                        ; $4ddb: $5f
	rst  $38                                         ; $4ddc: $ff
	ld   d, c                                        ; $4ddd: $51
	pop  hl                                          ; $4dde: $e1
	add  b                                           ; $4ddf: $80
	and  b                                           ; $4de0: $a0
	add  [hl]                                        ; $4de1: $86
	ld   hl, $fc80                                   ; $4de2: $21 $80 $fc
	add  hl, de                                      ; $4de5: $19
	ld   [bc], a                                     ; $4de6: $02
	cp   $b7                                         ; $4de7: $fe $b7
	ld   a, a                                        ; $4de9: $7f
	ld   h, e                                        ; $4dea: $63
	ld   a, a                                        ; $4deb: $7f
	ld   d, [hl]                                     ; $4dec: $56
	ld   a, a                                        ; $4ded: $7f
	cp   h                                           ; $4dee: $bc
	cp   [hl]                                        ; $4def: $be
	cp   c                                           ; $4df0: $b9
	cp   l                                           ; $4df1: $bd
	dec  a                                           ; $4df2: $3d
	cp   l                                           ; $4df3: $bd
	db   $fd                                         ; $4df4: $fd
	ld   a, l                                        ; $4df5: $7d
	ld   a, a                                        ; $4df6: $7f
	ld   a, d                                        ; $4df7: $7a
	xor  d                                           ; $4df8: $aa
	ld   hl, sp+$00                                  ; $4df9: $f8 $00
	or   b                                           ; $4dfb: $b0
	ld   b, b                                        ; $4dfc: $40
	ldh  [rAUD2LOW], a                               ; $4dfd: $e0 $18
	ret  c                                           ; $4dff: $d8

	add  b                                           ; $4e00: $80
	cp   b                                           ; $4e01: $b8
	ld   bc, $0080                                   ; $4e02: $01 $80 $00
	add  d                                           ; $4e05: $82
	ld   hl, sp+$00                                  ; $4e06: $f8 $00
	adc  b                                           ; $4e08: $88
	add  c                                           ; $4e09: $81
	xor  $0d                                         ; $4e0a: $ee $0d
	set  1, a                                        ; $4e0c: $cb $cf
	set  1, a                                        ; $4e0e: $cb $cf
	adc  e                                           ; $4e10: $8b
	rst  $28                                         ; $4e11: $ef
	adc  b                                           ; $4e12: $88
	xor  $a9                                         ; $4e13: $ee $a9
	rst  $28                                         ; $4e15: $ef
	jr   z, jr_071_4e86                              ; $4e16: $28 $6e

	ld   h, [hl]                                     ; $4e18: $66
	ld   [bc], a                                     ; $4e19: $02
	add  b                                           ; $4e1a: $80
	ld   bc, $0080                                   ; $4e1b: $01 $80 $00
	add  b                                           ; $4e1e: $80
	add  b                                           ; $4e1f: $80
	add  b                                           ; $4e20: $80
	ret  nz                                          ; $4e21: $c0

	add  b                                           ; $4e22: $80
	ldh  [$80], a                                    ; $4e23: $e0 $80
	ld   [hl], b                                     ; $4e25: $70
	add  b                                           ; $4e26: $80
	cp   b                                           ; $4e27: $b8
	ld   bc, $05f5                                   ; $4e28: $01 $f5 $05
	add  b                                           ; $4e2b: $80
	ld   a, [bc]                                     ; $4e2c: $0a
	add  b                                           ; $4e2d: $80
	dec  b                                           ; $4e2e: $05
	add  b                                           ; $4e2f: $80
	ld   a, [bc]                                     ; $4e30: $0a
	add  b                                           ; $4e31: $80
	dec  b                                           ; $4e32: $05
	add  b                                           ; $4e33: $80
	ld   a, [bc]                                     ; $4e34: $0a

jr_071_4e35:
	add  b                                           ; $4e35: $80
	dec  b                                           ; $4e36: $05
	add  b                                           ; $4e37: $80
	ld   a, [bc]                                     ; $4e38: $0a
	ld   bc, $41b1                                   ; $4e39: $01 $b1 $41
	add  b                                           ; $4e3c: $80
	xor  d                                           ; $4e3d: $aa
	add  b                                           ; $4e3e: $80
	ld   d, l                                        ; $4e3f: $55
	add  b                                           ; $4e40: $80
	xor  d                                           ; $4e41: $aa
	add  b                                           ; $4e42: $80
	ld   d, l                                        ; $4e43: $55
	add  b                                           ; $4e44: $80
	xor  d                                           ; $4e45: $aa
	add  b                                           ; $4e46: $80
	ld   d, l                                        ; $4e47: $55
	add  b                                           ; $4e48: $80
	xor  d                                           ; $4e49: $aa
	add  b                                           ; $4e4a: $80
	ld   d, a                                        ; $4e4b: $57
	add  b                                           ; $4e4c: $80
	xor  a                                           ; $4e4d: $af
	add  b                                           ; $4e4e: $80

Call_071_4e4f:
	ld   d, a                                        ; $4e4f: $57
	add  b                                           ; $4e50: $80
	xor  a                                           ; $4e51: $af
	add  b                                           ; $4e52: $80
	ld   d, a                                        ; $4e53: $57
	add  b                                           ; $4e54: $80
	xor  a                                           ; $4e55: $af
	add  b                                           ; $4e56: $80
	ld   d, a                                        ; $4e57: $57
	add  b                                           ; $4e58: $80
	xor  a                                           ; $4e59: $af
	adc  [hl]                                        ; $4e5a: $8e
	rst  $38                                         ; $4e5b: $ff
	nop                                              ; $4e5c: $00
	ldh  a, [$81]                                    ; $4e5d: $f0 $81
	rst  $28                                         ; $4e5f: $ef
	add  b                                           ; $4e60: $80
	xor  $00                                         ; $4e61: $ee $00
	rst  $28                                         ; $4e63: $ef
	add  c                                           ; $4e64: $81
	ldh  [rSB], a                                    ; $4e65: $e0 $01
	ret  nc                                          ; $4e67: $d0

	rst  $38                                         ; $4e68: $ff
	add  d                                           ; $4e69: $82
	xor  $00                                         ; $4e6a: $ee $00
	ccf                                              ; $4e6c: $3f
	add  b                                           ; $4e6d: $80
	rst  $38                                         ; $4e6e: $ff
	dec  c                                           ; $4e6f: $0d
	cp   $be                                         ; $4e70: $fe $be
	cp   h                                           ; $4e72: $bc
	db   $ec                                         ; $4e73: $ec
	ld   h, b                                        ; $4e74: $60
	ld   b, b                                        ; $4e75: $40
	nop                                              ; $4e76: $00
	ld   c, $1f                                      ; $4e77: $0e $1f
	db   $fd                                         ; $4e79: $fd
	rra                                              ; $4e7a: $1f
	dec  sp                                          ; $4e7b: $3b
	rra                                              ; $4e7c: $1f
	rst  $28                                         ; $4e7d: $ef
	add  e                                           ; $4e7e: $83
	ld   a, a                                        ; $4e7f: $7f
	add  b                                           ; $4e80: $80
	ld   [hl], h                                     ; $4e81: $74
	inc  c                                           ; $4e82: $0c
	ld   d, a                                        ; $4e83: $57
	ld   l, a                                        ; $4e84: $6f
	cpl                                              ; $4e85: $2f

jr_071_4e86:
	rst  $28                                         ; $4e86: $ef
	ld   c, b                                        ; $4e87: $48
	rst  ToBoot                                         ; $4e88: $c7
	add  d                                           ; $4e89: $82
	cp   [hl]                                        ; $4e8a: $be
	ld   c, e                                        ; $4e8b: $4b
	sbc  b                                           ; $4e8c: $98
	ld   a, b                                        ; $4e8d: $78
	ld   hl, sp+$68                                  ; $4e8e: $f8 $68
	add  c                                           ; $4e90: $81
	ld   hl, sp-$80                                  ; $4e91: $f8 $80
	ld   a, b                                        ; $4e93: $78
	ld   [$f171], sp                                 ; $4e94: $08 $71 $f1
	add  c                                           ; $4e97: $81
	pop  af                                          ; $4e98: $f1
	add  b                                           ; $4e99: $80
	ld   hl, sp-$74                                  ; $4e9a: $f8 $8c
	rlca                                             ; $4e9c: $07
	inc  b                                           ; $4e9d: $04
	add  c                                           ; $4e9e: $81
	rrca                                             ; $4e9f: $0f
	ld   d, $09                                      ; $4ea0: $16 $09
	rlca                                             ; $4ea2: $07
	ld   h, $27                                      ; $4ea3: $26 $27
	inc  [hl]                                        ; $4ea5: $34
	scf                                              ; $4ea6: $37
	add  e                                           ; $4ea7: $83
	adc  a                                           ; $4ea8: $8f
	dec  bc                                          ; $4ea9: $0b
	jr   nc, jr_071_4e35                             ; $4eaa: $30 $89

	rst  $38                                         ; $4eac: $ff
	ld   sp, $06bf                                   ; $4ead: $31 $bf $06
	cp   [hl]                                        ; $4eb0: $be
	adc  h                                           ; $4eb1: $8c
	rst  $38                                         ; $4eb2: $ff
	nop                                              ; $4eb3: $00
	rst  $38                                         ; $4eb4: $ff
	sub  d                                           ; $4eb5: $92
	rst  $38                                         ; $4eb6: $ff
	ld   l, l                                        ; $4eb7: $6d
	add  b                                           ; $4eb8: $80
	rst  $38                                         ; $4eb9: $ff
	add  b                                           ; $4eba: $80
	nop                                              ; $4ebb: $00
	ld   [bc], a                                     ; $4ebc: $02

jr_071_4ebd:
	or   b                                           ; $4ebd: $b0
	or   d                                           ; $4ebe: $b2
	ld   [hl-], a                                    ; $4ebf: $32
	add  b                                           ; $4ec0: $80
	ld   [hl], b                                     ; $4ec1: $70
	inc  de                                          ; $4ec2: $13
	jr   c, jr_071_4ebd                              ; $4ec3: $38 $f8

	ld   [$40fc], sp                                 ; $4ec5: $08 $fc $40
	cp   $b7                                         ; $4ec8: $fe $b7
	cp   $a0                                         ; $4eca: $fe $a0
	ld   e, l                                        ; $4ecc: $5d
	cp   d                                           ; $4ecd: $ba
	cp   a                                           ; $4ece: $bf
	jp   $c1cd                                       ; $4ecf: $c3 $cd $c1


	add  $90                                         ; $4ed2: $c6 $90
	sub  e                                           ; $4ed4: $93
	ld   b, d                                        ; $4ed5: $42
	ld   b, e                                        ; $4ed6: $43
	add  b                                           ; $4ed7: $80
	rlca                                             ; $4ed8: $07
	add  b                                           ; $4ed9: $80
	ld   c, $80                                      ; $4eda: $0e $80
	inc  e                                           ; $4edc: $1c
	db   $10                                         ; $4edd: $10
	ld   a, b                                        ; $4ede: $78
	ld   a, a                                        ; $4edf: $7f
	ccf                                              ; $4ee0: $3f
	cp   a                                           ; $4ee1: $bf
	rra                                              ; $4ee2: $1f
	ld   e, a                                        ; $4ee3: $5f
	sbc  a                                           ; $4ee4: $9f
	ld   a, [hl-]                                    ; $4ee5: $3a
	ld   c, d                                        ; $4ee6: $4a
	sbc  a                                           ; $4ee7: $9f
	ld   [hl], a                                     ; $4ee8: $77
	rst  JumpTable                                         ; $4ee9: $df
	ld   e, [hl]                                     ; $4eea: $5e
	ld   l, [hl]                                     ; $4eeb: $6e
	nop                                              ; $4eec: $00
	ccf                                              ; $4eed: $3f
	add  sp, -$79                                    ; $4eee: $e8 $87
	ld   hl, sp+$01                                  ; $4ef0: $f8 $01
	nop                                              ; $4ef2: $00
	rst  $38                                         ; $4ef3: $ff
	add  b                                           ; $4ef4: $80
	ld   a, a                                        ; $4ef5: $7f
	rlca                                             ; $4ef6: $07
	nop                                              ; $4ef7: $00
	rst  $38                                         ; $4ef8: $ff
	call z, $08ee                                    ; $4ef9: $cc $ee $08
	ld   l, [hl]                                     ; $4efc: $6e
	ld   [$80ae], a                                  ; $4efd: $ea $ae $80
	ld   l, [hl]                                     ; $4f00: $6e
	add  b                                           ; $4f01: $80
	xor  [hl]                                        ; $4f02: $ae
	ld   bc, $dd22                                   ; $4f03: $01 $22 $dd
	add  b                                           ; $4f06: $80
	adc  l                                           ; $4f07: $8d
	ld   bc, $ff00                                   ; $4f08: $01 $00 $ff
	add  b                                           ; $4f0b: $80
	ld   e, h                                        ; $4f0c: $5c
	add  b                                           ; $4f0d: $80
	inc  l                                           ; $4f0e: $2c
	add  b                                           ; $4f0f: $80
	inc  d                                           ; $4f10: $14
	add  b                                           ; $4f11: $80
	inc  c                                           ; $4f12: $0c
	add  b                                           ; $4f13: $80
	inc  b                                           ; $4f14: $04
	dec  b                                           ; $4f15: $05
	or   [hl]                                        ; $4f16: $b6
	rst  $38                                         ; $4f17: $ff
	ld   c, b                                        ; $4f18: $48
	rst  $38                                         ; $4f19: $ff
	ld   bc, $6bff                                   ; $4f1a: $01 $ff $6b
	ld   bc, $0086                                   ; $4f1d: $01 $86 $00
	nop                                              ; $4f20: $00
	ld   c, $85                                      ; $4f21: $0e $85
	rrca                                             ; $4f23: $0f
	nop                                              ; $4f24: $00
	ld   bc, $0085                                   ; $4f25: $01 $85 $00
	ld   [$ffde], sp                                 ; $4f28: $08 $de $ff
	rst  ToBoot                                         ; $4f2b: $c7
	rst  $38                                         ; $4f2c: $ff
	db   $e3                                         ; $4f2d: $e3
	rst  $38                                         ; $4f2e: $ff
	ld   sp, hl                                      ; $4f2f: $f9
	rst  $38                                         ; $4f30: $ff
	inc  bc                                          ; $4f31: $03
	add  l                                           ; $4f32: $85
	nop                                              ; $4f33: $00
	ld   [$ffcf], sp                                 ; $4f34: $08 $cf $ff
	rst  ToBoot                                         ; $4f37: $c7
	rst  $38                                         ; $4f38: $ff
	di                                               ; $4f39: $f3
	rst  $38                                         ; $4f3a: $ff
	ld   hl, sp-$01                                  ; $4f3b: $f8 $ff
	inc  bc                                          ; $4f3d: $03
	add  l                                           ; $4f3e: $85
	nop                                              ; $4f3f: $00
	ld   [$fedc], sp                                 ; $4f40: $08 $dc $fe
	db   $ec                                         ; $4f43: $ec
	cp   $e6                                         ; $4f44: $fe $e6
	cp   $f2                                         ; $4f46: $fe $f2
	cp   $24                                         ; $4f48: $fe $24
	add  l                                           ; $4f4a: $85
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	cp   a                                           ; $4f4d: $bf
	add  b                                           ; $4f4e: $80
	call z, $ce05                                    ; $4f4f: $cc $05 $ce
	add  $cf                                         ; $4f52: $c6 $cf
	jp   Jump_071_74cf                               ; $4f54: $c3 $cf $74


	add  l                                           ; $4f57: $85
	nop                                              ; $4f58: $00
	ld   [$ffc0], sp                                 ; $4f59: $08 $c0 $ff
	rst  JumpTable                                         ; $4f5c: $df
	ld   a, a                                        ; $4f5d: $7f
	ld   l, a                                        ; $4f5e: $6f
	ccf                                              ; $4f5f: $3f
	or   a                                           ; $4f60: $b7
	sbc  a                                           ; $4f61: $9f
	rst  $20                                         ; $4f62: $e7
	add  [hl]                                        ; $4f63: $86
	nop                                              ; $4f64: $00
	add  [hl]                                        ; $4f65: $86
	cp   $85                                         ; $4f66: $fe $85
	nop                                              ; $4f68: $00
	dec  b                                           ; $4f69: $05
	rra                                              ; $4f6a: $1f
	cp   e                                           ; $4f6b: $bb
	rra                                              ; $4f6c: $1f
	dec  e                                           ; $4f6d: $1d
	add  l                                           ; $4f6e: $85
	rst  JumpTable                                         ; $4f6f: $df
	add  b                                           ; $4f70: $80
	db   $e3                                         ; $4f71: $e3
	nop                                              ; $4f72: $00
	db   $fc                                         ; $4f73: $fc
	add  l                                           ; $4f74: $85
	nop                                              ; $4f75: $00
	ld   [$3bfb], sp                                 ; $4f76: $08 $fb $3b
	ld   e, $7f                                      ; $4f79: $1e $7f
	ld   e, $70                                      ; $4f7b: $1e $70
	ret  nc                                          ; $4f7d: $d0

	pop  de                                          ; $4f7e: $d1
	adc  $85                                         ; $4f7f: $ce $85
	nop                                              ; $4f81: $00
	ld   [$3c4f], sp                                 ; $4f82: $08 $4f $3c
	ld   l, l                                        ; $4f85: $6d
	ld   l, e                                        ; $4f86: $6b
	ld   c, $ae                                      ; $4f87: $0e $ae
	sub  h                                           ; $4f89: $94
	xor  $af                                         ; $4f8a: $ee $af
	add  l                                           ; $4f8c: $85
	nop                                              ; $4f8d: $00
	ld   [$09f6], sp                                 ; $4f8e: $08 $f6 $09
	nop                                              ; $4f91: $00
	ld   bc, $1d11                                   ; $4f92: $01 $11 $1d
	inc  l                                           ; $4f95: $2c
	ld   h, $f8                                      ; $4f96: $26 $f8
	add  l                                           ; $4f98: $85
	nop                                              ; $4f99: $00
	ld   [$4bbf], sp                                 ; $4f9a: $08 $bf $4b
	ld   a, [bc]                                     ; $4f9d: $0a
	ld   c, d                                        ; $4f9e: $4a
	dec  hl                                          ; $4f9f: $2b
	jp   hl                                          ; $4fa0: $e9


	di                                               ; $4fa1: $f3
	ld   a, [hl]                                     ; $4fa2: $7e
	ei                                               ; $4fa3: $fb
	add  l                                           ; $4fa4: $85
	nop                                              ; $4fa5: $00
	ld   [$df58], sp                                 ; $4fa6: $08 $58 $df
	rrca                                             ; $4fa9: $0f
	sbc  a                                           ; $4faa: $9f
	sub  a                                           ; $4fab: $97
	sbc  a                                           ; $4fac: $9f
	ld   h, a                                        ; $4fad: $67
	ld   b, a                                        ; $4fae: $47
	ccf                                              ; $4faf: $3f
	add  [hl]                                        ; $4fb0: $86
	nop                                              ; $4fb1: $00
	add  e                                           ; $4fb2: $83
	rst  $38                                         ; $4fb3: $ff
	ld   [bc], a                                     ; $4fb4: $02
	cp   $ff                                         ; $4fb5: $fe $ff
	cp   $85                                         ; $4fb7: $fe $85
	nop                                              ; $4fb9: $00
	inc  b                                           ; $4fba: $04
	ld   a, $f2                                      ; $4fbb: $3e $f2
	or   [hl]                                        ; $4fbd: $b6
	and  $66                                         ; $4fbe: $e6 $66
	add  b                                           ; $4fc0: $80
	adc  $01                                         ; $4fc1: $ce $01
	sbc  [hl]                                        ; $4fc3: $9e
	ld   h, h                                        ; $4fc4: $64
	add  l                                           ; $4fc5: $85
	nop                                              ; $4fc6: $00
	ld   [bc], a                                     ; $4fc7: $02
	ld   [hl], a                                     ; $4fc8: $77
	ld   c, a                                        ; $4fc9: $4f

Jump_071_4fca:
	ld   b, a                                        ; $4fca: $47
	add  c                                           ; $4fcb: $81
	ld   c, a                                        ; $4fcc: $4f
	ld   [$4f4e], sp                                 ; $4fcd: $08 $4e $4f
	inc  sp                                          ; $4fd0: $33
	rrca                                             ; $4fd1: $0f
	ld   bc, $0d0f                                   ; $4fd2: $01 $0f $0d
	rrca                                             ; $4fd5: $0f
	ld   c, $84                                      ; $4fd6: $0e $84
	rrca                                             ; $4fd8: $0f
	inc  hl                                          ; $4fd9: $23
	ld   c, $03                                      ; $4fda: $0e $03
	inc  c                                           ; $4fdc: $0c
	ldh  a, [rIE]                                    ; $4fdd: $f0 $ff
	cp   $ff                                         ; $4fdf: $fe $ff
	ld   a, a                                        ; $4fe1: $7f
	db   $fc                                         ; $4fe2: $fc
	dec  de                                          ; $4fe3: $1b
	db   $e4                                         ; $4fe4: $e4
	sbc  h                                           ; $4fe5: $9c
	add  b                                           ; $4fe6: $80
	db   $ed                                         ; $4fe7: $ed
	inc  bc                                          ; $4fe8: $03
	or   d                                           ; $4fe9: $b2
	rrca                                             ; $4fea: $0f
	ld   c, h                                        ; $4feb: $4c
	dec  a                                           ; $4fec: $3d
	ld   a, $fb                                      ; $4fed: $3e $fb
	db   $fc                                         ; $4fef: $fc
	add  b                                           ; $4ff0: $80
	ld   sp, $c270                                   ; $4ff1: $31 $70 $c2
	ld   [hl], d                                     ; $4ff4: $72
	call nc, $0524                                   ; $4ff5: $d4 $24 $05
	ret  nz                                          ; $4ff8: $c0

	ld   l, c                                        ; $4ff9: $69
	sbc  c                                           ; $4ffa: $99
	or   b                                           ; $4ffb: $b0
	ldh  a, [rHDMA1]                                 ; $4ffc: $f0 $51
	add  b                                           ; $4ffe: $80
	cp   $80                                         ; $4fff: $fe $80

jr_071_5001:
	ld   a, $80                                      ; $5001: $3e $80
	cp   [hl]                                        ; $5003: $be
	add  hl, hl                                      ; $5004: $29
	adc  [hl]                                        ; $5005: $8e
	db   $ec                                         ; $5006: $ec
	ld   h, h                                        ; $5007: $64
	call nz, $68a2                                   ; $5008: $c4 $a2 $68
	ld   a, [hl+]                                    ; $500b: $2a
	sub  d                                           ; $500c: $92
	sbc  b                                           ; $500d: $98
	ld   c, a                                        ; $500e: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $500f: $cf
	call z, $c6cf                                    ; $5010: $cc $cf $c6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5013: $cf
	rst  ToBoot                                         ; $5014: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5015: $cf
	ret                                              ; $5016: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5017: $cf
	call z, $c7cf                                    ; $5018: $cc $cf $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501b: $cf
	jp   $89cf                                       ; $501c: $c3 $cf $89


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501f: $cf
	call Call_071_66e7                               ; $5020: $cd $e7 $66
	di                                               ; $5023: $f3
	dec  sp                                          ; $5024: $3b
	ld   sp, hl                                      ; $5025: $f9
	sub  l                                           ; $5026: $95
	db   $fc                                         ; $5027: $fc
	db   $ec                                         ; $5028: $ec
	cp   $66                                         ; $5029: $fe $66
	rst  $38                                         ; $502b: $ff
	ld   [hl], a                                     ; $502c: $77
	rst  $38                                         ; $502d: $ff
	inc  h                                           ; $502e: $24
	add  e                                           ; $502f: $83
	cp   $0c                                         ; $5030: $fe $0c
	ld   a, [hl]                                     ; $5032: $7e
	cp   $be                                         ; $5033: $fe $be
	cp   $de                                         ; $5035: $fe $de
	ld   a, [hl]                                     ; $5037: $7e
	ld   l, [hl]                                     ; $5038: $6e
	ld   a, $36                                      ; $5039: $3e $36
	sbc  [hl]                                        ; $503b: $9e
	dec  sp                                          ; $503c: $3b
	ld   a, [$81f8]                                  ; $503d: $fa $f8 $81
	or   e                                           ; $5040: $b3
	ld   bc, $b6a2                                   ; $5041: $01 $a2 $b6
	add  b                                           ; $5044: $80
	cp   b                                           ; $5045: $b8
	ld   bc, $beb7                                   ; $5046: $01 $b7 $be
	add  b                                           ; $5049: $80
	cp   a                                           ; $504a: $bf
	jr   c, jr_071_5001                              ; $504b: $38 $b4

	cp   e                                           ; $504d: $bb
	ld   a, [hl+]                                    ; $504e: $2a
	dec  a                                           ; $504f: $3d
	ld   e, $ff                                      ; $5050: $1e $ff
	add  a                                           ; $5052: $87
	add  e                                           ; $5053: $83
	inc  bc                                          ; $5054: $03
	ld   e, a                                        ; $5055: $5f
	rst  ToBoot                                         ; $5056: $c7
	rst  $38                                         ; $5057: $ff
	rra                                              ; $5058: $1f
	ei                                               ; $5059: $fb
	ld   [hl], e                                     ; $505a: $73
	ld   sp, hl                                      ; $505b: $f9
	ld   hl, sp-$17                                  ; $505c: $f8 $e9
	push af                                          ; $505e: $f5
	db   $fd                                         ; $505f: $fd
	ld   l, d                                        ; $5060: $6a
	cp   $dc                                         ; $5061: $fe $dc
	cp   $7e                                         ; $5063: $fe $7e
	call nc, $c59c                                   ; $5065: $d4 $9c $c5
	daa                                              ; $5068: $27
	xor  [hl]                                        ; $5069: $ae
	inc  l                                           ; $506a: $2c
	jp   $cf0b                                       ; $506b: $c3 $0b $cf


	ld   h, $23                                      ; $506e: $26 $23
	ld   b, $28                                      ; $5070: $06 $28
	ld   e, $3e                                      ; $5072: $1e $3e
	inc  b                                           ; $5074: $04
	rra                                              ; $5075: $1f
	cp   c                                           ; $5076: $b9
	cp   [hl]                                        ; $5077: $be
	ld   b, h                                        ; $5078: $44
	ld   e, a                                        ; $5079: $5f
	ld   e, c                                        ; $507a: $59
	ld   a, h                                        ; $507b: $7c
	ld   c, [hl]                                     ; $507c: $4e
	ld   a, [hl]                                     ; $507d: $7e
	ld   l, [hl]                                     ; $507e: $6e
	halt                                             ; $507f: $76
	ld   c, d                                        ; $5080: $4a
	ld   e, e                                        ; $5081: $5b
	ld   a, [hl-]                                    ; $5082: $3a
	dec  a                                           ; $5083: $3d
	ld   d, b                                        ; $5084: $50
	add  b                                           ; $5085: $80
	ld   a, a                                        ; $5086: $7f
	dec  sp                                          ; $5087: $3b
	ld   e, a                                        ; $5088: $5f
	inc  e                                           ; $5089: $1c

jr_071_508a:
	rst  $30                                         ; $508a: $f7
	xor  e                                           ; $508b: $ab
	cp   e                                           ; $508c: $bb
	sbc  l                                           ; $508d: $9d
	adc  a                                           ; $508e: $8f
	ld   sp, $07e7                                   ; $508f: $31 $e7 $07
	rst  $20                                         ; $5092: $e7
	rst  ToBoot                                         ; $5093: $c7
	ld   b, a                                        ; $5094: $47
	ld   d, a                                        ; $5095: $57
	ld   [hl], a                                     ; $5096: $77
	ld   h, a                                        ; $5097: $67
	rst  ToBoot                                         ; $5098: $c7
	rst  $10                                         ; $5099: $d7
	rst  $30                                         ; $509a: $f7
	ld   d, a                                        ; $509b: $57
	rst  $10                                         ; $509c: $d7
	sub  [hl]                                        ; $509d: $96
	rst  $10                                         ; $509e: $d7
	db   $dd                                         ; $509f: $dd
	rst  $38                                         ; $50a0: $ff
	ei                                               ; $50a1: $fb
	cp   $f6                                         ; $50a2: $fe $f6
	db   $fc                                         ; $50a4: $fc
	db   $ec                                         ; $50a5: $ec
	ld   sp, hl                                      ; $50a6: $f9
	reti                                             ; $50a7: $d9


	di                                               ; $50a8: $f3
	or   a                                           ; $50a9: $b7
	rst  $20                                         ; $50aa: $e7
	ld   h, l                                        ; $50ab: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50ac: $cf
	call $9c9f                                       ; $50ad: $cd $9f $9c
	ld   a, $74                                      ; $50b0: $3e $74
	ld   a, [hl]                                     ; $50b2: $7e
	ld   l, d                                        ; $50b3: $6a
	cp   $c6                                         ; $50b4: $fe $c6
	cp   $dc                                         ; $50b6: $fe $dc
	cp   $38                                         ; $50b8: $fe $38
	cp   $f6                                         ; $50ba: $fe $f6
	cp   $d6                                         ; $50bc: $fe $d6
	cp   $dd                                         ; $50be: $fe $dd
	ld   c, a                                        ; $50c0: $4f
	ld   b, e                                        ; $50c1: $43
	ld   c, a                                        ; $50c2: $4f
	ld   b, [hl]                                     ; $50c3: $46
	add  c                                           ; $50c4: $81
	ld   c, [hl]                                     ; $50c5: $4e
	add  c                                           ; $50c6: $81
	ld   c, d                                        ; $50c7: $4a
	ld   bc, $434b                                   ; $50c8: $01 $4b $43
	add  b                                           ; $50cb: $80
	ld   c, h                                        ; $50cc: $4c
	ld   [$3c40], sp                                 ; $50cd: $08 $40 $3c
	ld   [$000d], sp                                 ; $50d0: $08 $0d $00
	ld   b, $00                                      ; $50d3: $06 $00
	ld   [bc], a                                     ; $50d5: $02
	dec  b                                           ; $50d6: $05
	add  b                                           ; $50d7: $80
	inc  b                                           ; $50d8: $04
	nop                                              ; $50d9: $00
	rlca                                             ; $50da: $07
	add  c                                           ; $50db: $81
	nop                                              ; $50dc: $00
	inc  hl                                          ; $50dd: $23
	ld   b, $07                                      ; $50de: $06 $07
	pop  af                                          ; $50e0: $f1
	cpl                                              ; $50e1: $2f
	dec  hl                                          ; $50e2: $2b
	rrca                                             ; $50e3: $0f
	dec  c                                           ; $50e4: $0d
	inc  de                                          ; $50e5: $13

jr_071_50e6:
	sub  l                                           ; $50e6: $95
	db   $ec                                         ; $50e7: $ec
	ld   h, b                                        ; $50e8: $60
	db   $fc                                         ; $50e9: $fc
	ld   [hl], b                                     ; $50ea: $70
	inc  e                                           ; $50eb: $1c
	ld   a, h                                        ; $50ec: $7c
	rlca                                             ; $50ed: $07
	dec  de                                          ; $50ee: $1b
	nop                                              ; $50ef: $00
	ld   a, d                                        ; $50f0: $7a
	sbc  [hl]                                        ; $50f1: $9e
	ld   a, [bc]                                     ; $50f2: $0a
	dec  de                                          ; $50f3: $1b
	nop                                              ; $50f4: $00
	ld   c, c                                        ; $50f5: $49
	ret  nz                                          ; $50f6: $c0

	ld   sp, hl                                      ; $50f7: $f9
	ld   e, b                                        ; $50f8: $58
	ld   e, e                                        ; $50f9: $5b
	jr   nz, @+$61                                   ; $50fa: $20 $5f

	add  b                                           ; $50fc: $80
	xor  e                                           ; $50fd: $ab
	inc  l                                           ; $50fe: $2c
	rst  $38                                         ; $50ff: $ff
	jr   nc, @-$32                                   ; $5100: $30 $cc

	add  b                                           ; $5102: $80
	ld   b, h                                        ; $5103: $44
	inc  bc                                          ; $5104: $03
	ld   b, b                                        ; $5105: $40
	ldh  [$b8], a                                    ; $5106: $e0 $b8
	jr   c, jr_071_508a                              ; $5108: $38 $80

	jr   nc, jr_071_511c                             ; $510a: $30 $10

	jr   z, jr_071_50e6                              ; $510c: $28 $d8

	ret  nz                                          ; $510e: $c0

	db   $10                                         ; $510f: $10
	ld   b, [hl]                                     ; $5110: $46
	ld   c, [hl]                                     ; $5111: $4e
	ld   c, d                                        ; $5112: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5113: $cf
	call z, $c7cf                                    ; $5114: $cc $cf $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5117: $cf
	jp   $c8cf                                       ; $5118: $c3 $cf $c8


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511b: $cf

jr_071_511c:
	add  $83                                         ; $511c: $c6 $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511e: $cf
	db   $10                                         ; $511f: $10
	sub  a                                           ; $5120: $97
	rst  $38                                         ; $5121: $ff
	ld   h, h                                        ; $5122: $64
	rst  $38                                         ; $5123: $ff
	ld   a, [hl-]                                    ; $5124: $3a
	rst  $38                                         ; $5125: $ff
	reti                                             ; $5126: $d9


	rst  $38                                         ; $5127: $ff
	call c, Call_071_72ff                            ; $5128: $dc $ff $72
	rst  $38                                         ; $512b: $ff
	ld   a, c                                        ; $512c: $79
	rst  $38                                         ; $512d: $ff
	sbc  [hl]                                        ; $512e: $9e
	rst  $38                                         ; $512f: $ff
	rst  JumpTable                                         ; $5130: $df
	add  b                                           ; $5131: $80
	adc  $0e                                         ; $5132: $ce $0e
	and  $64                                         ; $5134: $e6 $64
	ldh  a, [c]                                      ; $5136: $f2
	ld   [hl-], a                                    ; $5137: $32
	ld   hl, sp-$78                                  ; $5138: $f8 $88
	ld   hl, sp+$40                                  ; $513a: $f8 $40
	ld   a, [$fa32]                                  ; $513c: $fa $32 $fa
	and  d                                           ; $513f: $a2
	ld   a, [$bf5d]                                  ; $5140: $fa $5d $bf
	add  b                                           ; $5143: $80
	cp   l                                           ; $5144: $bd
	inc  bc                                          ; $5145: $03
	add  e                                           ; $5146: $83
	cp   d                                           ; $5147: $ba
	cp   c                                           ; $5148: $b9
	add  c                                           ; $5149: $81
	add  b                                           ; $514a: $80
	add  b                                           ; $514b: $80
	add  h                                           ; $514c: $84
	sbc  a                                           ; $514d: $9f
	rla                                              ; $514e: $17
	db   $10                                         ; $514f: $10
	xor  $a7                                         ; $5150: $ee $a7
	and  [hl]                                        ; $5152: $a6
	rst  ToBoot                                         ; $5153: $c7
	rla                                              ; $5154: $17
	ld   b, a                                        ; $5155: $47
	ld   d, c                                        ; $5156: $51
	dec  l                                           ; $5157: $2d
	dec  c                                           ; $5158: $0d
	db   $e3                                         ; $5159: $e3
	cp   $f1                                         ; $515a: $fe $f1
	rst  $30                                         ; $515c: $f7
	db   $fd                                         ; $515d: $fd
	rst  $38                                         ; $515e: $ff
	add  c                                           ; $515f: $81
	halt                                             ; $5160: $76
	ld   l, e                                        ; $5161: $6b
	rst  $38                                         ; $5162: $ff
	and  l                                           ; $5163: $a5
	add  hl, sp                                      ; $5164: $39
	call c, $80d8                                    ; $5165: $dc $d8 $80
	db   $dd                                         ; $5168: $dd
	ld   a, [hl+]                                    ; $5169: $2a
	pop  bc                                          ; $516a: $c1
	dec  sp                                          ; $516b: $3b
	dec  [hl]                                        ; $516c: $35
	or   a                                           ; $516d: $b7
	ld   a, l                                        ; $516e: $7d
	rst  $38                                         ; $516f: $ff
	ld   [hl-], a                                    ; $5170: $32
	di                                               ; $5171: $f3
	sub  e                                           ; $5172: $93
	inc  sp                                          ; $5173: $33
	ld   hl, $6a11                                   ; $5174: $21 $11 $6a
	or   [hl]                                        ; $5177: $b6
	or   l                                           ; $5178: $b5
	cp   l                                           ; $5179: $bd
	ld   [$4dcc], sp                                 ; $517a: $08 $cc $4d
	ld   c, a                                        ; $517d: $4f
	db   $10                                         ; $517e: $10
	ld   e, [hl]                                     ; $517f: $5e
	dec  c                                           ; $5180: $0d

Call_071_5181:
	rst  JumpTable                                         ; $5181: $df
	sub  $f8                                         ; $5182: $d6 $f8
	ld   [hl], b                                     ; $5184: $70
	ret  nc                                          ; $5185: $d0

	add  b                                           ; $5186: $80
	ret  nc                                          ; $5187: $d0

	nop                                              ; $5188: $00
	rlca                                             ; $5189: $07
	inc  d                                           ; $518a: $14
	rst  $38                                         ; $518b: $ff
	inc  de                                          ; $518c: $13
	rst  $38                                         ; $518d: $ff
	rra                                              ; $518e: $1f
	ldh  a, [$5b]                                    ; $518f: $f0 $5b
	sub  a                                           ; $5191: $97
	db   $d3                                         ; $5192: $d3
	sub  $56                                         ; $5193: $d6 $56
	add  b                                           ; $5195: $80
	call nc, Call_071_5181                           ; $5196: $d4 $81 $51
	ld   [bc], a                                     ; $5199: $02
	ld   d, b                                        ; $519a: $50
	push de                                          ; $519b: $d5
	ld   d, h                                        ; $519c: $54
	add  c                                           ; $519d: $81
	push de                                          ; $519e: $d5
	jr   nz, @+$2f                                   ; $519f: $20 $2d

	ccf                                              ; $51a1: $3f
	ld   h, a                                        ; $51a2: $67
	ld   a, a                                        ; $51a3: $7f
	ld   e, h                                        ; $51a4: $5c
	rst  $38                                         ; $51a5: $ff
	reti                                             ; $51a6: $d9


	rst  $38                                         ; $51a7: $ff
	inc  sp                                          ; $51a8: $33
	rst  $38                                         ; $51a9: $ff
	ld   [hl], a                                     ; $51aa: $77
	rst  $38                                         ; $51ab: $ff
	adc  a                                           ; $51ac: $8f
	rst  $38                                         ; $51ad: $ff
	jr   c, @+$01                                    ; $51ae: $38 $ff

	sbc  h                                           ; $51b0: $9c
	cp   $bc                                         ; $51b1: $fe $bc
	cp   $74                                         ; $51b3: $fe $74
	cp   $e2                                         ; $51b5: $fe $e2

jr_071_51b7:
	cp   $9e                                         ; $51b7: $fe $9e
	cp   $1c                                         ; $51b9: $fe $1c
	cp   $70                                         ; $51bb: $fe $70
	cp   $f6                                         ; $51bd: $fe $f6
	cp   $64                                         ; $51bf: $fe $64
	add  h                                           ; $51c1: $84
	ld   b, b                                        ; $51c2: $40
	add  b                                           ; $51c3: $80
	ld   b, e                                        ; $51c4: $43
	add  b                                           ; $51c5: $80
	ld   c, [hl]                                     ; $51c6: $4e
	add  e                                           ; $51c7: $83
	ld   b, d                                        ; $51c8: $42
	nop                                              ; $51c9: $00
	dec  sp                                          ; $51ca: $3b
	adc  l                                           ; $51cb: $8d
	rlca                                             ; $51cc: $07
	ld   b, $ee                                      ; $51cd: $06 $ee
	nop                                              ; $51cf: $00
	inc  e                                           ; $51d0: $1c
	nop                                              ; $51d1: $00
	db   $e3                                         ; $51d2: $e3
	ldh  [rLCDC], a                                  ; $51d3: $e0 $40
	add  b                                           ; $51d5: $80
	db   $fc                                         ; $51d6: $fc
	inc  b                                           ; $51d7: $04
	rst  $38                                         ; $51d8: $ff
	ld   b, b                                        ; $51d9: $40
	rst  $38                                         ; $51da: $ff
	adc  b                                           ; $51db: $88
	ld   a, a                                        ; $51dc: $7f
	add  b                                           ; $51dd: $80
	ccf                                              ; $51de: $3f
	inc  c                                           ; $51df: $0c
	rst  $30                                         ; $51e0: $f7
	ccf                                              ; $51e1: $3f
	cp   $0f                                         ; $51e2: $fe $0f
	ld   [hl], $03                                   ; $51e4: $36 $03
	push hl                                          ; $51e6: $e5
	nop                                              ; $51e7: $00
	add  hl, de                                      ; $51e8: $19
	nop                                              ; $51e9: $00
	rst  $20                                         ; $51ea: $e7
	ldh  [rAUD4LEN], a                               ; $51eb: $e0 $20
	add  b                                           ; $51ed: $80
	ld   hl, sp+$15                                  ; $51ee: $f8 $15
	rst  $38                                         ; $51f0: $ff
	ld   e, d                                        ; $51f1: $5a
	db   $e4                                         ; $51f2: $e4
	jr   nz, jr_071_5265                             ; $51f3: $20 $70

	jr   nc, jr_071_51b7                             ; $51f5: $30 $c0

	ld   b, b                                        ; $51f7: $40
	ldh  a, [$f6]                                    ; $51f8: $f0 $f6
	ld   e, $7e                                      ; $51fa: $1e $7e
	ld   e, $c0                                      ; $51fc: $1e $c0
	inc  b                                           ; $51fe: $04
	ld   a, [hl-]                                    ; $51ff: $3a
	nop                                              ; $5200: $00
	ld   c, c                                        ; $5201: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5202: $cf
	call z, $c6cf                                    ; $5203: $cc $cf $c6
	add  b                                           ; $5206: $80
	rst  ToBoot                                         ; $5207: $c7
	add  hl, hl                                      ; $5208: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5209: $cf
	call $cccf                                       ; $520a: $cd $cf $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $520d: $cf
	adc  $cf                                         ; $520e: $ce $cf
	jp   $99cb                                       ; $5210: $c3 $cb $99


	rst  $38                                         ; $5213: $ff
	ld   l, e                                        ; $5214: $6b
	rst  $38                                         ; $5215: $ff
	dec  de                                          ; $5216: $1b
	rst  $38                                         ; $5217: $ff
	call z, $eaff                                    ; $5218: $cc $ff $ea
	rst  $38                                         ; $521b: $ff
	ld   [hl], c                                     ; $521c: $71
	rst  $38                                         ; $521d: $ff
	ld   e, [hl]                                     ; $521e: $5e
	rst  $38                                         ; $521f: $ff
	adc  [hl]                                        ; $5220: $8e
	rst  $38                                         ; $5221: $ff
	ld   a, h                                        ; $5222: $7c
	ld   a, [$fe4e]                                  ; $5223: $fa $4e $fe
	and  $fe                                         ; $5226: $e6 $fe
	ld   l, [hl]                                     ; $5228: $6e
	cp   $36                                         ; $5229: $fe $36
	cp   $ae                                         ; $522b: $fe $ae
	cp   $c6                                         ; $522d: $fe $c6
	cp   $36                                         ; $522f: $fe $36
	cp   $a4                                         ; $5231: $fe $a4
	adc  c                                           ; $5233: $89
	sbc  a                                           ; $5234: $9f
	nop                                              ; $5235: $00
	sbc  l                                           ; $5236: $9d
	add  c                                           ; $5237: $81
	sbc  a                                           ; $5238: $9f
	ld   [bc], a                                     ; $5239: $02
	db   $fd                                         ; $523a: $fd
	rst  $38                                         ; $523b: $ff
	cp   $81                                         ; $523c: $fe $81
	rst  $38                                         ; $523e: $ff
	dec  h                                           ; $523f: $25
	jp   nz, $c3ff                                   ; $5240: $c2 $ff $c3

	rst  $38                                         ; $5243: $ff
	sbc  a                                           ; $5244: $9f
	rst  $38                                         ; $5245: $ff
	ld   [hl], a                                     ; $5246: $77
	rst  $38                                         ; $5247: $ff
	rla                                              ; $5248: $17
	rst  $38                                         ; $5249: $ff
	db   $fd                                         ; $524a: $fd
	db   $fc                                         ; $524b: $fc
	ld   e, $ff                                      ; $524c: $1e $ff
	sbc  a                                           ; $524e: $9f
	rst  $38                                         ; $524f: $ff
	db   $fc                                         ; $5250: $fc
	rst  $38                                         ; $5251: $ff
	ld   a, e                                        ; $5252: $7b
	rst  $38                                         ; $5253: $ff
	sbc  e                                           ; $5254: $9b
	rst  $38                                         ; $5255: $ff
	sbc  l                                           ; $5256: $9d
	rst  $38                                         ; $5257: $ff

jr_071_5258:
	push bc                                          ; $5258: $c5
	ei                                               ; $5259: $fb
	ld   b, e                                        ; $525a: $43
	ld   a, a                                        ; $525b: $7f
	ld   a, h                                        ; $525c: $7c
	ld   a, a                                        ; $525d: $7f
	ld   h, b                                        ; $525e: $60
	ld   a, a                                        ; $525f: $7f
	rra                                              ; $5260: $1f
	ld   a, a                                        ; $5261: $7f
	nop                                              ; $5262: $00
	ld   a, a                                        ; $5263: $7f
	ld   [bc], a                                     ; $5264: $02

jr_071_5265:
	ld   a, a                                        ; $5265: $7f
	add  b                                           ; $5266: $80
	ld   b, d                                        ; $5267: $42
	rlca                                             ; $5268: $07
	ld   [bc], a                                     ; $5269: $02
	ld   a, a                                        ; $526a: $7f
	inc  a                                           ; $526b: $3c
	db   $d3                                         ; $526c: $d3
	db   $10                                         ; $526d: $10
	rst  $38                                         ; $526e: $ff
	ldh  a, [$8f]                                    ; $526f: $f0 $8f
	add  b                                           ; $5271: $80
	add  a                                           ; $5272: $87
	inc  bc                                          ; $5273: $03
	add  b                                           ; $5274: $80
	rst  $38                                         ; $5275: $ff
	ld   [hl], b                                     ; $5276: $70
	sbc  a                                           ; $5277: $9f
	add  b                                           ; $5278: $80
	inc  de                                          ; $5279: $13
	ld   [bc], a                                     ; $527a: $02
	db   $10                                         ; $527b: $10
	rst  $38                                         ; $527c: $ff
	pop  af                                          ; $527d: $f1
	add  c                                           ; $527e: $81
	push de                                          ; $527f: $d5
	ld   [bc], a                                     ; $5280: $02
	sub  $d7                                         ; $5281: $d6 $d7
	sub  $81                                         ; $5283: $d6 $81
	rst  $10                                         ; $5285: $d7
	nop                                              ; $5286: $00
	sub  $81                                         ; $5287: $d6 $81

jr_071_5289:
	rst  $10                                         ; $5289: $d7
	ld   [hl+], a                                    ; $528a: $22
	sub  $d7                                         ; $528b: $d6 $d7
	ld   [$e7ff], sp                                 ; $528d: $08 $ff $e7
	rst  $38                                         ; $5290: $ff
	xor  h                                           ; $5291: $ac
	rst  $38                                         ; $5292: $ff
	ld   e, $ff                                      ; $5293: $1e $ff
	ld   l, c                                        ; $5295: $69
	rst  $38                                         ; $5296: $ff
	sbc  $ff                                         ; $5297: $de $ff
	ld   e, b                                        ; $5299: $58
	rst  $38                                         ; $529a: $ff
	ld   [hl], e                                     ; $529b: $73
	rst  $38                                         ; $529c: $ff
	add  [hl]                                        ; $529d: $86
	db   $fc                                         ; $529e: $fc
	inc  e                                           ; $529f: $1c
	db   $fc                                         ; $52a0: $fc
	pop  af                                          ; $52a1: $f1
	ld   hl, sp-$15                                  ; $52a2: $f8 $eb
	ldh  a, [$82]                                    ; $52a4: $f0 $82
	ldh  a, [$85]                                    ; $52a6: $f0 $85
	ldh  [$62], a                                    ; $52a8: $e0 $62
	ldh  [c], a                                      ; $52aa: $e2
	adc  $d0                                         ; $52ab: $ce $d0
	ld   l, e                                        ; $52ad: $6b
	add  b                                           ; $52ae: $80
	ld   b, d                                        ; $52af: $42
	inc  bc                                          ; $52b0: $03
	ld   b, e                                        ; $52b1: $43
	ld   c, e                                        ; $52b2: $4b
	ld   b, h                                        ; $52b3: $44
	ld   c, b                                        ; $52b4: $48
	add  c                                           ; $52b5: $81
	ld   b, b                                        ; $52b6: $40
	ld   [bc], a                                     ; $52b7: $02
	ld   b, h                                        ; $52b8: $44
	ld   b, b                                        ; $52b9: $40
	ld   b, d                                        ; $52ba: $42
	add  b                                           ; $52bb: $80
	ld   b, b                                        ; $52bc: $40
	ld   bc, $3a41                                   ; $52bd: $01 $41 $3a
	adc  l                                           ; $52c0: $8d
	rlca                                             ; $52c1: $07
	inc  b                                           ; $52c2: $04
	db   $10                                         ; $52c3: $10
	rst  $38                                         ; $52c4: $ff
	rst  $20                                         ; $52c5: $e7
	ld   b, a                                        ; $52c6: $47
	ld   b, d                                        ; $52c7: $42
	add  b                                           ; $52c8: $80
	ld   b, e                                        ; $52c9: $43
	ld   bc, $7c7f                                   ; $52ca: $01 $7f $7c
	add  d                                           ; $52cd: $82
	ld   [$ff80], sp                                 ; $52ce: $08 $80 $ff
	inc  bc                                          ; $52d1: $03
	ld   b, d                                        ; $52d2: $42
	ld   d, d                                        ; $52d3: $52
	rst  $38                                         ; $52d4: $ff
	jr   jr_071_5258                                 ; $52d5: $18 $81

	rst  $38                                         ; $52d7: $ff
	inc  bc                                          ; $52d8: $03
	dec  bc                                          ; $52d9: $0b
	rst  $38                                         ; $52da: $ff
	ld   [hl+], a                                    ; $52db: $22
	rst  $38                                         ; $52dc: $ff
	add  b                                           ; $52dd: $80
	ld   a, a                                        ; $52de: $7f
	inc  c                                           ; $52df: $0c
	add  hl, sp                                      ; $52e0: $39
	ld   a, a                                        ; $52e1: $7f
	ld   a, h                                        ; $52e2: $7c
	rra                                              ; $52e3: $1f
	ld   a, [hl-]                                    ; $52e4: $3a
	ret  nz                                          ; $52e5: $c0

	ld   b, b                                        ; $52e6: $40
	ld   hl, sp-$06                                  ; $52e7: $f8 $fa
	cp   $46                                         ; $52e9: $fe $46
	cp   $06                                         ; $52eb: $fe $06
	add  c                                           ; $52ed: $81
	cp   $07                                         ; $52ee: $fe $07
	ld   b, $fe                                      ; $52f0: $06 $fe
	ld   h, $fe                                      ; $52f2: $26 $fe
	sbc  [hl]                                        ; $52f4: $9e
	rst  ToBoot                                         ; $52f5: $c7
	call z, $80cb                                    ; $52f6: $cc $cb $80
	jp   $cb80                                       ; $52f9: $c3 $80 $cb


	ld   [bc], a                                     ; $52fc: $02
	call nz, $c4cf                                   ; $52fd: $c4 $cf $c4
	add  e                                           ; $5300: $83
	rst  ToBoot                                         ; $5301: $c7
	jr   nz, jr_071_5289                             ; $5302: $20 $85

	rst  $38                                         ; $5304: $ff
	dec  sp                                          ; $5305: $3b
	rst  $38                                         ; $5306: $ff
	ld   c, h                                        ; $5307: $4c
	rst  $38                                         ; $5308: $ff
	jp   z, $f0ff                                    ; $5309: $ca $ff $f0

	rst  $38                                         ; $530c: $ff
	ld   e, l                                        ; $530d: $5d
	rst  $38                                         ; $530e: $ff
	inc  bc                                          ; $530f: $03
	rst  $38                                         ; $5310: $ff
	jp   hl                                          ; $5311: $e9


	rst  $38                                         ; $5312: $ff
	pop  bc                                          ; $5313: $c1
	cp   $c6                                         ; $5314: $fe $c6
	cp   $76                                         ; $5316: $fe $76
	cp   $1e                                         ; $5318: $fe $1e
	cp   $c6                                         ; $531a: $fe $c6
	cp   $66                                         ; $531c: $fe $66
	cp   $0e                                         ; $531e: $fe $0e
	cp   $c6                                         ; $5320: $fe $c6
	cp   $6c                                         ; $5322: $fe $6c
	add  c                                           ; $5324: $81
	sbc  a                                           ; $5325: $9f
	ld   [bc], a                                     ; $5326: $02
	sbc  e                                           ; $5327: $9b
	sbc  a                                           ; $5328: $9f
	sbc  c                                           ; $5329: $99
	add  c                                           ; $532a: $81
	sbc  a                                           ; $532b: $9f
	nop                                              ; $532c: $00
	sbc  l                                           ; $532d: $9d
	add  c                                           ; $532e: $81
	sbc  a                                           ; $532f: $9f
	ld   b, $93                                      ; $5330: $06 $93
	sbc  a                                           ; $5332: $9f
	di                                               ; $5333: $f3
	rst  $38                                         ; $5334: $ff
	ld   de, $11ff                                   ; $5335: $11 $ff $11
	add  c                                           ; $5338: $81
	rst  $38                                         ; $5339: $ff
	rrca                                             ; $533a: $0f
	call nz, $c4ff                                   ; $533b: $c4 $ff $c4
	rst  $38                                         ; $533e: $ff
	db   $f4                                         ; $533f: $f4
	rst  $38                                         ; $5340: $ff
	adc  a                                           ; $5341: $8f
	rst  $38                                         ; $5342: $ff
	adc  e                                           ; $5343: $8b
	rst  $38                                         ; $5344: $ff
	rrca                                             ; $5345: $0f
	rst  $38                                         ; $5346: $ff
	rrca                                             ; $5347: $0f
	rst  $38                                         ; $5348: $ff
	adc  a                                           ; $5349: $8f
	rst  $38                                         ; $534a: $ff
	add  b                                           ; $534b: $80
	ldh  a, [c]                                      ; $534c: $f2
	rlca                                             ; $534d: $07
	adc  h                                           ; $534e: $8c
	db   $fd                                         ; $534f: $fd
	inc  h                                           ; $5350: $24
	or   $fb                                         ; $5351: $f6 $fb
	rst  $38                                         ; $5353: $ff
	call c, $807b                                    ; $5354: $dc $7b $80
	jr   nz, jr_071_535c                             ; $5357: $20 $03

	nop                                              ; $5359: $00
	ld   a, a                                        ; $535a: $7f
	inc  bc                                          ; $535b: $03

jr_071_535c:
	ld   a, [hl]                                     ; $535c: $7e
	add  b                                           ; $535d: $80
	ld   h, d                                        ; $535e: $62
	dec  c                                           ; $535f: $0d
	ld   [bc], a                                     ; $5360: $02
	ld   a, a                                        ; $5361: $7f
	jr   nc, jr_071_5393                             ; $5362: $30 $2f

	rra                                              ; $5364: $1f
	rrca                                             ; $5365: $0f
	adc  b                                           ; $5366: $88
	rst  $38                                         ; $5367: $ff
	rst  ToBoot                                         ; $5368: $c7
	ret  nz                                          ; $5369: $c0

	add  b                                           ; $536a: $80
	rst  $38                                         ; $536b: $ff
	ld   [hl], b                                     ; $536c: $70
	sbc  a                                           ; $536d: $9f
	add  c                                           ; $536e: $81
	db   $10                                         ; $536f: $10
	ld   [bc], a                                     ; $5370: $02
	rst  $38                                         ; $5371: $ff
	cp   a                                           ; $5372: $bf
	ret  nz                                          ; $5373: $c0

	add  b                                           ; $5374: $80
	rst  $38                                         ; $5375: $ff
	nop                                              ; $5376: $00
	adc  l                                           ; $5377: $8d
	add  c                                           ; $5378: $81
	rst  $10                                         ; $5379: $d7

jr_071_537a:
	ld   [bc], a                                     ; $537a: $02
	sub  $d7                                         ; $537b: $d6 $d7
	sub  $81                                         ; $537d: $d6 $81
	rst  $10                                         ; $537f: $d7
	ld   [bc], a                                     ; $5380: $02
	sub  $d7                                         ; $5381: $d6 $d7
	sub  $81                                         ; $5383: $d6 $81
	rst  $10                                         ; $5385: $d7
	inc  c                                           ; $5386: $0c
	rlca                                             ; $5387: $07
	rst  $38                                         ; $5388: $ff
	ld   e, $ff                                      ; $5389: $1e $ff
	ld   a, d                                        ; $538b: $7a
	rst  ToBoot                                         ; $538c: $c7
	add  e                                           ; $538d: $83
	cp   e                                           ; $538e: $bb
	dec  bc                                          ; $538f: $0b
	rst  $38                                         ; $5390: $ff
	inc  b                                           ; $5391: $04
	ld   a, l                                        ; $5392: $7d

jr_071_5393:
	ld   a, h                                        ; $5393: $7c
	add  c                                           ; $5394: $81
	ld   a, l                                        ; $5395: $7d
	ld   a, [bc]                                     ; $5396: $0a
	ld   b, c                                        ; $5397: $41
	ldh  [rAUDVOL], a                                ; $5398: $e0 $24
	call nz, $8084                                   ; $539a: $c4 $84 $80
	add  d                                           ; $539d: $82
	add  b                                           ; $539e: $80
	nop                                              ; $539f: $00
	or   b                                           ; $53a0: $b0
	ld   [hl-], a                                    ; $53a1: $32
	add  b                                           ; $53a2: $80
	add  b                                           ; $53a3: $80
	inc  bc                                          ; $53a4: $03
	nop                                              ; $53a5: $00
	inc  c                                           ; $53a6: $0c
	ld   [$8179], sp                                 ; $53a7: $08 $79 $81
	ld   b, b                                        ; $53aa: $40
	inc  b                                           ; $53ab: $04
	ld   b, h                                        ; $53ac: $44
	ld   b, b                                        ; $53ad: $40
	ld   c, b                                        ; $53ae: $48
	ld   b, b                                        ; $53af: $40
	ld   c, h                                        ; $53b0: $4c
	add  b                                           ; $53b1: $80
	ld   b, b                                        ; $53b2: $40
	add  b                                           ; $53b3: $80
	ld   b, c                                        ; $53b4: $41
	add  c                                           ; $53b5: $81
	ld   b, b                                        ; $53b6: $40
	nop                                              ; $53b7: $00
	dec  sp                                          ; $53b8: $3b
	add  c                                           ; $53b9: $81
	rlca                                             ; $53ba: $07
	nop                                              ; $53bb: $00
	ld   b, $81                                      ; $53bc: $06 $81
	rlca                                             ; $53be: $07
	add  h                                           ; $53bf: $84
	ld   b, $80                                      ; $53c0: $06 $80
	nop                                              ; $53c2: $00
	inc  bc                                          ; $53c3: $03
	rrca                                             ; $53c4: $0f
	ld   [bc], a                                     ; $53c5: $02
	dec  a                                           ; $53c6: $3d
	ret  nz                                          ; $53c7: $c0

	add  b                                           ; $53c8: $80
	add  b                                           ; $53c9: $80
	add  c                                           ; $53ca: $81
	nop                                              ; $53cb: $00
	add  b                                           ; $53cc: $80
	db   $10                                         ; $53cd: $10
	add  b                                           ; $53ce: $80
	ret  nz                                          ; $53cf: $c0

	add  hl, bc                                      ; $53d0: $09
	add  b                                           ; $53d1: $80
	add  c                                           ; $53d2: $81
	nop                                              ; $53d3: $00
	pop  af                                          ; $53d4: $f1
	rrca                                             ; $53d5: $0f
	add  a                                           ; $53d6: $87
	rst  $38                                         ; $53d7: $ff
	cp   c                                           ; $53d8: $b9
	ld   hl, $8000                                   ; $53d9: $21 $00 $80

jr_071_53dc:
	ld   bc, $1f0c                                   ; $53dc: $01 $0c $1f
	ld   a, a                                        ; $53df: $7f
	jr   jr_071_537a                                 ; $53e0: $18 $98

	jr   jr_071_53dc                                 ; $53e2: $18 $f8

	rst  $38                                         ; $53e4: $ff
	jp   $a6fe                                       ; $53e5: $c3 $fe $a6


	cp   $86                                         ; $53e8: $fe $86
	cp   $80                                         ; $53ea: $fe $80
	rst  $38                                         ; $53ec: $ff
	inc  bc                                          ; $53ed: $03
	rlca                                             ; $53ee: $07
	cp   $c6                                         ; $53ef: $fe $c6
	ld   a, [hl]                                     ; $53f1: $7e
	add  b                                           ; $53f2: $80
	ld   e, h                                        ; $53f3: $5c
	rlca                                             ; $53f4: $07
	ld   b, [hl]                                     ; $53f5: $46
	cp   $4b                                         ; $53f6: $fe $4b
	rst  ToBoot                                         ; $53f8: $c7
	call nz, $8fc7                                   ; $53f9: $c4 $c7 $8f
	rlca                                             ; $53fc: $07
	add  b                                           ; $53fd: $80
	add  a                                           ; $53fe: $87
	inc  c                                           ; $53ff: $0c
	ld   [hl], b                                     ; $5400: $70
	inc  bc                                          ; $5401: $03
	nop                                              ; $5402: $00
	ld   bc, $0151                                   ; $5403: $01 $51 $01
	jr   nz, jr_071_5479                             ; $5406: $20 $71

	ld   hl, sp-$01                                  ; $5408: $f8 $ff
	ld   d, $e1                                      ; $540a: $16 $e1
	ret  nz                                          ; $540c: $c0

	add  c                                           ; $540d: $81
	ldh  [rAUD2LOW], a                               ; $540e: $e0 $18
	ld   e, b                                        ; $5410: $58
	ldh  a, [rAUD1SWEEP]                             ; $5411: $f0 $10
	ldh  a, [$fc]                                    ; $5413: $f0 $fc
	ld   hl, sp+$14                                  ; $5415: $f8 $14
	ei                                               ; $5417: $fb
	and  $fe                                         ; $5418: $e6 $fe
	and  [hl]                                        ; $541a: $a6
	cp   $e6                                         ; $541b: $fe $e6
	cp   $3e                                         ; $541d: $fe $3e
	ld   a, [hl]                                     ; $541f: $7e
	ld   b, $7e                                      ; $5420: $06 $7e
	ld   h, [hl]                                     ; $5422: $66
	ld   a, [hl]                                     ; $5423: $7e
	add  [hl]                                        ; $5424: $86
	cp   $06                                         ; $5425: $fe $06
	cp   $64                                         ; $5427: $fe $64
	adc  e                                           ; $5429: $8b
	sbc  a                                           ; $542a: $9f
	inc  d                                           ; $542b: $14
	sbc  l                                           ; $542c: $9d
	sbc  a                                           ; $542d: $9f
	db   $fd                                         ; $542e: $fd
	rst  $38                                         ; $542f: $ff
	ld   sp, hl                                      ; $5430: $f9
	rst  $38                                         ; $5431: $ff
	rst  $20                                         ; $5432: $e7
	rst  $38                                         ; $5433: $ff
	pop  hl                                          ; $5434: $e1
	rst  $38                                         ; $5435: $ff
	inc  b                                           ; $5436: $04
	rst  $38                                         ; $5437: $ff
	rrca                                             ; $5438: $0f
	rst  $38                                         ; $5439: $ff
	db   $f4                                         ; $543a: $f4
	rst  $38                                         ; $543b: $ff
	ld   sp, hl                                      ; $543c: $f9
	rst  $38                                         ; $543d: $ff
	cp   $f8                                         ; $543e: $fe $f8
	inc  b                                           ; $5440: $04
	add  b                                           ; $5441: $80
	rst  $38                                         ; $5442: $ff
	inc  b                                           ; $5443: $04
	db   $fc                                         ; $5444: $fc
	ld   [hl-], a                                    ; $5445: $32
	db   $fd                                         ; $5446: $fd

jr_071_5447:
	jr   c, @+$01                                    ; $5447: $38 $ff

	add  b                                           ; $5449: $80
	ld   hl, sp+$07                                  ; $544a: $f8 $07
	ld   h, d                                        ; $544c: $62
	cp   $6a                                         ; $544d: $fe $6a
	xor  $e7                                         ; $544f: $ee $e7
	rrca                                             ; $5451: $0f
	adc  d                                           ; $5452: $8a
	add  a                                           ; $5453: $87
	add  b                                           ; $5454: $80
	rrca                                             ; $5455: $0f
	ld   [bc], a                                     ; $5456: $02
	adc  d                                           ; $5457: $8a
	add  a                                           ; $5458: $87
	nop                                              ; $5459: $00
	add  c                                           ; $545a: $81
	rlca                                             ; $545b: $07
	rlca                                             ; $545c: $07
	inc  c                                           ; $545d: $0c
	dec  de                                          ; $545e: $1b
	db   $10                                         ; $545f: $10
	dec  bc                                          ; $5460: $0b
	db   $f4                                         ; $5461: $f4
	rst  $38                                         ; $5462: $ff
	ldh  a, [$1f]                                    ; $5463: $f0 $1f
	add  b                                           ; $5465: $80
	ldh  a, [rAUD2LEN]                               ; $5466: $f0 $16
	db   $10                                         ; $5468: $10

jr_071_5469:
	rst  $38                                         ; $5469: $ff
	add  b                                           ; $546a: $80
	rst  $38                                         ; $546b: $ff
	ret  nz                                          ; $546c: $c0

	call nz, $ff84                                   ; $546d: $c4 $84 $ff
	jr   jr_071_5469                                 ; $5470: $18 $f7

	dec  e                                           ; $5472: $1d
	rst  $10                                         ; $5473: $d7
	ld   d, [hl]                                     ; $5474: $56
	rst  $10                                         ; $5475: $d7
	sub  $d7                                         ; $5476: $d6 $d7
	ld   d, a                                        ; $5478: $57

jr_071_5479:
	rst  $10                                         ; $5479: $d7
	ld   d, a                                        ; $547a: $57
	rst  $10                                         ; $547b: $d7
	sub  $d7                                         ; $547c: $d6 $d7
	ld   d, [hl]                                     ; $547e: $56
	add  c                                           ; $547f: $81
	rst  $10                                         ; $5480: $d7
	inc  b                                           ; $5481: $04
	ld   b, h                                        ; $5482: $44
	ld   h, b                                        ; $5483: $60
	nop                                              ; $5484: $00
	inc  b                                           ; $5485: $04
	inc  d                                           ; $5486: $14
	add  b                                           ; $5487: $80
	ld   d, l                                        ; $5488: $55
	ld   bc, $5554                                   ; $5489: $01 $54 $55
	add  b                                           ; $548c: $80
	ld   d, h                                        ; $548d: $54
	add  d                                           ; $548e: $82
	ld   d, b                                        ; $548f: $50
	inc  c                                           ; $5490: $0c
	ld   d, c                                        ; $5491: $51
	dec  a                                           ; $5492: $3d
	jr   c, jr_071_550d                              ; $5493: $38 $78

	ld   [$4888], sp                                 ; $5495: $08 $88 $48
	ret  z                                           ; $5498: $c8

	ld   [$1888], sp                                 ; $5499: $08 $88 $18
	sub  b                                           ; $549c: $90
	ld   c, b                                        ; $549d: $48
	add  b                                           ; $549e: $80
	ld   [$4802], sp                                 ; $549f: $08 $02 $48
	cp   b                                           ; $54a2: $b8
	ld   bc, $4080                                   ; $54a3: $01 $80 $40
	add  b                                           ; $54a6: $80
	ld   b, c                                        ; $54a7: $41
	add  [hl]                                        ; $54a8: $86
	ld   b, b                                        ; $54a9: $40
	add  b                                           ; $54aa: $80
	ld   b, c                                        ; $54ab: $41
	ld   bc, $3d40                                   ; $54ac: $01 $40 $3d
	add  d                                           ; $54af: $82
	nop                                              ; $54b0: $00
	add  d                                           ; $54b1: $82
	ld   b, $03                                      ; $54b2: $06 $03
	rlca                                             ; $54b4: $07
	inc  bc                                          ; $54b5: $03
	rlca                                             ; $54b6: $07
	inc  b                                           ; $54b7: $04
	add  c                                           ; $54b8: $81
	ld   b, $0a                                      ; $54b9: $06 $0a
	ldh  [rP1], a                                    ; $54bb: $e0 $00
	ld   a, [bc]                                     ; $54bd: $0a
	nop                                              ; $54be: $00
	ld   [bc], a                                     ; $54bf: $02
	ld   b, b                                        ; $54c0: $40
	ld   d, [hl]                                     ; $54c1: $56
	ret  nz                                          ; $54c2: $c0

	ldh  a, [$e0]                                    ; $54c3: $f0 $e0
	jr   nz, jr_071_5447                             ; $54c5: $20 $80

	ret  nz                                          ; $54c7: $c0

	dec  b                                           ; $54c8: $05
	inc  bc                                          ; $54c9: $03
	nop                                              ; $54ca: $00
	rrca                                             ; $54cb: $0f
	ld   l, h                                        ; $54cc: $6c
	ld   de, $8071                                   ; $54cd: $11 $71 $80
	ld   de, $0f0d                                   ; $54d0: $11 $0d $0f
	nop                                              ; $54d3: $00
	rra                                              ; $54d4: $1f
	db   $10                                         ; $54d5: $10
	ccf                                              ; $54d6: $3f
	dec  sp                                          ; $54d7: $3b
	inc  a                                           ; $54d8: $3c
	inc  e                                           ; $54d9: $1c
	db   $fc                                         ; $54da: $fc
	ccf                                              ; $54db: $3f
	rst  $38                                         ; $54dc: $ff
	inc  e                                           ; $54dd: $1c
	rlca                                             ; $54de: $07
	inc  bc                                          ; $54df: $03
	add  b                                           ; $54e0: $80
	ld   [bc], a                                     ; $54e1: $02
	ld   b, $fc                                      ; $54e2: $06 $fc
	dec  b                                           ; $54e4: $05
	db   $fc                                         ; $54e5: $fc
	ld   bc, $34f8                                   ; $54e6: $01 $f8 $34
	db   $fc                                         ; $54e9: $fc
	add  c                                           ; $54ea: $81
	ld   hl, sp+$07                                  ; $54eb: $f8 $07
	db   $fc                                         ; $54ed: $fc
	ld   b, l                                        ; $54ee: $45
	ld   [hl], e                                     ; $54ef: $73
	rlca                                             ; $54f0: $07
	inc  bc                                          ; $54f1: $03
	ld   [bc], a                                     ; $54f2: $02
	ld   bc, $8005                                   ; $54f3: $01 $05 $80
	ld   bc, $0007                                   ; $54f6: $01 $07 $00
	jp   z, $3200                                    ; $54f9: $ca $00 $32

	nop                                              ; $54fc: $00
	ld   a, c                                        ; $54fd: $79
	ld   bc, $802b                                   ; $54fe: $01 $2b $80
	rst  $38                                         ; $5501: $ff
	ld   bc, $57f3                                   ; $5502: $01 $f3 $57
	add  c                                           ; $5505: $81
	db   $fd                                         ; $5506: $fd
	inc  c                                           ; $5507: $0c
	dec  l                                           ; $5508: $2d
	db   $fd                                         ; $5509: $fd
	ld   a, l                                        ; $550a: $7d
	db   $fd                                         ; $550b: $fd
	cp   l                                           ; $550c: $bd

jr_071_550d:
	db   $fd                                         ; $550d: $fd
	push af                                          ; $550e: $f5
	db   $fd                                         ; $550f: $fd
	ld   l, h                                        ; $5510: $6c
	cp   $a6                                         ; $5511: $fe $a6
	cp   $e6                                         ; $5513: $fe $e6
	add  c                                           ; $5515: $81
	cp   $04                                         ; $5516: $fe $04
	and  $fe                                         ; $5518: $e6 $fe
	di                                               ; $551a: $f3
	rst  $30                                         ; $551b: $f7
	or   b                                           ; $551c: $b0
	add  c                                           ; $551d: $81
	rst  $28                                         ; $551e: $ef
	nop                                              ; $551f: $00
	rra                                              ; $5520: $1f
	add  e                                           ; $5521: $83
	sbc  a                                           ; $5522: $9f
	add  b                                           ; $5523: $80
	add  b                                           ; $5524: $80
	add  b                                           ; $5525: $80
	sbc  a                                           ; $5526: $9f
	ld   [bc], a                                     ; $5527: $02
	nop                                              ; $5528: $00
	rst  $38                                         ; $5529: $ff
	nop                                              ; $552a: $00
	add  c                                           ; $552b: $81
	rst  $38                                         ; $552c: $ff
	rlca                                             ; $552d: $07
	pop  hl                                          ; $552e: $e1
	rst  $38                                         ; $552f: $ff
	pop  hl                                          ; $5530: $e1
	rst  $38                                         ; $5531: $ff
	sbc  h                                           ; $5532: $9c
	rst  $38                                         ; $5533: $ff
	ld   h, e                                        ; $5534: $63
	nop                                              ; $5535: $00
	add  b                                           ; $5536: $80
	rst  $38                                         ; $5537: $ff
	ld   [bc], a                                     ; $5538: $02
	nop                                              ; $5539: $00
	rst  $38                                         ; $553a: $ff
	nop                                              ; $553b: $00
	add  c                                           ; $553c: $81
	rst  $38                                         ; $553d: $ff
	rlca                                             ; $553e: $07
	inc  b                                           ; $553f: $04
	rst  $28                                         ; $5540: $ef
	ld   c, b                                        ; $5541: $48
	ei                                               ; $5542: $fb
	ld   d, b                                        ; $5543: $50
	call c, $03d5                                    ; $5544: $dc $d5 $03
	add  b                                           ; $5547: $80
	or   [hl]                                        ; $5548: $b6
	ld   [bc], a                                     ; $5549: $02
	jr   z, @-$50                                    ; $554a: $28 $ae

	ld   a, e                                        ; $554c: $7b
	add  c                                           ; $554d: $81
	rst  $38                                         ; $554e: $ff
	inc  b                                           ; $554f: $04
	add  b                                           ; $5550: $80
	adc  e                                           ; $5551: $8b
	ld   b, $0d                                      ; $5552: $06 $0d
	nop                                              ; $5554: $00
	add  b                                           ; $5555: $80
	dec  d                                           ; $5556: $15
	nop                                              ; $5557: $00
	nop                                              ; $5558: $00
	add  b                                           ; $5559: $80
	ld   d, $02                                      ; $555a: $16 $02
	nop                                              ; $555c: $00
	ld   a, [bc]                                     ; $555d: $0a
	push af                                          ; $555e: $f5
	add  c                                           ; $555f: $81
	rst  $38                                         ; $5560: $ff
	rlca                                             ; $5561: $07
	add  hl, sp                                      ; $5562: $39
	rst  $10                                         ; $5563: $d7
	ld   de, $c5ff                                   ; $5564: $11 $ff $c5
	ccf                                              ; $5567: $3f
	ld   a, [$8000]                                  ; $5568: $fa $00 $80
	rst  $38                                         ; $556b: $ff
	ld   [bc], a                                     ; $556c: $02
	nop                                              ; $556d: $00
	rst  $38                                         ; $556e: $ff
	nop                                              ; $556f: $00
	add  c                                           ; $5570: $81
	rst  $38                                         ; $5571: $ff
	ld   [bc], a                                     ; $5572: $02
	di                                               ; $5573: $f3
	rst  $10                                         ; $5574: $d7
	sub  $81                                         ; $5575: $d6 $81
	rst  $10                                         ; $5577: $d7
	ld   b, $55                                      ; $5578: $06 $55
	ld   d, b                                        ; $557a: $50
	ret  nz                                          ; $557b: $c0

	ldh  [rP1], a                                    ; $557c: $e0 $00
	rst  $38                                         ; $557e: $ff
	nop                                              ; $557f: $00
	add  c                                           ; $5580: $81
	rst  $38                                         ; $5581: $ff
	inc  b                                           ; $5582: $04
	jr   jr_071_55dd                                 ; $5583: $18 $58

	ld   d, b                                        ; $5585: $50
	ld   d, a                                        ; $5586: $57
	ld   b, a                                        ; $5587: $47
	add  b                                           ; $5588: $80
	ld   c, a                                        ; $5589: $4f
	add  hl, bc                                      ; $558a: $09
	ld   d, a                                        ; $558b: $57
	rst  JumpTable                                         ; $558c: $df
	sbc  e                                           ; $558d: $9b
	jp   c, $dadb                                    ; $558e: $da $db $da

	ret  c                                           ; $5591: $d8

	call nc, $2ddd                                   ; $5592: $d4 $dd $2d
	add  c                                           ; $5595: $81
	ld   [$6001], sp                                 ; $5596: $08 $01 $60
	ret  z                                           ; $5599: $c8

	add  b                                           ; $559a: $80
	ret  c                                           ; $559b: $d8

	ld   [$9a89], sp                                 ; $559c: $08 $89 $9a
	dec  de                                          ; $559f: $1b
	add  c                                           ; $55a0: $81
	inc  hl                                          ; $55a1: $23
	ld   a, $3c                                      ; $55a2: $3e $3c
	cp   h                                           ; $55a4: $bc
	dec  c                                           ; $55a5: $0d
	add  c                                           ; $55a6: $81
	ld   b, b                                        ; $55a7: $40

jr_071_55a8:
	dec  b                                           ; $55a8: $05
	jr   nc, jr_071_55a8                             ; $55a9: $30 $fd

	db   $fc                                         ; $55ab: $fc
	db   $fd                                         ; $55ac: $fd
	ld   bc, $8000                                   ; $55ad: $01 $00 $80
	db   $fc                                         ; $55b0: $fc
	add  b                                           ; $55b1: $80
	nop                                              ; $55b2: $00
	add  b                                           ; $55b3: $80
	ld   a, b                                        ; $55b4: $78
	ld   bc, $04f4                                   ; $55b5: $01 $f4 $04
	add  b                                           ; $55b8: $80
	rlca                                             ; $55b9: $07
	add  b                                           ; $55ba: $80
	ld   bc, $0880                                   ; $55bb: $01 $80 $08
	add  b                                           ; $55be: $80
	inc  c                                           ; $55bf: $0c
	add  h                                           ; $55c0: $84
	rrca                                             ; $55c1: $0f
	ld   bc, $1cec                                   ; $55c2: $01 $ec $1c
	add  b                                           ; $55c5: $80
	db   $fc                                         ; $55c6: $fc
	add  b                                           ; $55c7: $80
	ldh  a, [$80]                                    ; $55c8: $f0 $80
	inc  bc                                          ; $55ca: $03
	add  b                                           ; $55cb: $80
	ld   a, a                                        ; $55cc: $7f
	rlca                                             ; $55cd: $07
	db   $fc                                         ; $55ce: $fc
	rst  $38                                         ; $55cf: $ff
	ei                                               ; $55d0: $fb

jr_071_55d1:
	rst  $38                                         ; $55d1: $ff
	and  a                                           ; $55d2: $a7
	xor  a                                           ; $55d3: $af
	ldh  a, [rIE]                                    ; $55d4: $f0 $ff
	add  b                                           ; $55d6: $80
	ld   a, a                                        ; $55d7: $7f
	add  hl, bc                                      ; $55d8: $09
	cp   a                                           ; $55d9: $bf
	add  b                                           ; $55da: $80
	ldh  [$df], a                                    ; $55db: $e0 $df

jr_071_55dd:
	add  sp, -$11                                    ; $55dd: $e8 $ef
	ld   h, a                                        ; $55df: $67
	rst  $20                                         ; $55e0: $e7
	xor  a                                           ; $55e1: $af
	rst  $28                                         ; $55e2: $ef
	add  b                                           ; $55e3: $80
	rst  JumpTable                                         ; $55e4: $df
	nop                                              ; $55e5: $00
	add  hl, sp                                      ; $55e6: $39
	add  d                                           ; $55e7: $82
	db   $fc                                         ; $55e8: $fc
	add  b                                           ; $55e9: $80
	nop                                              ; $55ea: $00
	inc  bc                                          ; $55eb: $03
	db   $fc                                         ; $55ec: $fc
	nop                                              ; $55ed: $00
	cp   $fc                                         ; $55ee: $fe $fc
	add  e                                           ; $55f0: $83
	cp   $03                                         ; $55f1: $fe $03
	ld   l, d                                        ; $55f3: $6a
	add  h                                           ; $55f4: $84
	db   $fc                                         ; $55f5: $fc
	db   $ec                                         ; $55f6: $ec
	add  b                                           ; $55f7: $80
	db   $fc                                         ; $55f8: $fc
	nop                                              ; $55f9: $00
	xor  $86                                         ; $55fa: $ee $86
	rst  $28                                         ; $55fc: $ef
	ld   [bc], a                                     ; $55fd: $02
	xor  $0c                                         ; $55fe: $ee $0c
	dec  e                                           ; $5600: $1d
	add  b                                           ; $5601: $80
	ld   e, l                                        ; $5602: $5d
	ld   [bc], a                                     ; $5603: $02
	ld   e, c                                        ; $5604: $59
	ld   e, e                                        ; $5605: $5b
	ld   b, e                                        ; $5606: $43
	add  b                                           ; $5607: $80
	ld   [hl], l                                     ; $5608: $75
	add  hl, bc                                      ; $5609: $09
	ld   [hl], a                                     ; $560a: $77
	ld   [hl], d                                     ; $560b: $72
	ld   d, a                                        ; $560c: $57
	ld   e, $10                                      ; $560d: $1e $10
	and  c                                           ; $560f: $a1
	jr   nz, @-$11                                   ; $5610: $20 $ed

	ldh  [$e2], a                                    ; $5612: $e0 $e2
	add  c                                           ; $5614: $81
	ld   [$6800], a                                  ; $5615: $ea $00 $68
	add  b                                           ; $5618: $80
	ld   [$e281], a                                  ; $5619: $ea $81 $e2
	add  b                                           ; $561c: $80
	ld   [bc], a                                     ; $561d: $02
	inc  b                                           ; $561e: $04
	ld   b, d                                        ; $561f: $42
	ld   [hl+], a                                    ; $5620: $22
	ld   h, d                                        ; $5621: $62
	nop                                              ; $5622: $00
	ld   [hl+], a                                    ; $5623: $22
	add  c                                           ; $5624: $81
	xor  d                                           ; $5625: $aa
	nop                                              ; $5626: $00
	adc  b                                           ; $5627: $88
	add  b                                           ; $5628: $80
	xor  d                                           ; $5629: $aa
	add  [hl]                                        ; $562a: $86
	ld   [hl+], a                                    ; $562b: $22
	ld   [bc], a                                     ; $562c: $02
	nop                                              ; $562d: $00
	jr   nz, jr_071_55d1                             ; $562e: $20 $a1

	add  b                                           ; $5630: $80
	and  e                                           ; $5631: $a3
	inc  bc                                          ; $5632: $03
	add  d                                           ; $5633: $82
	and  e                                           ; $5634: $a3
	and  d                                           ; $5635: $a2
	ld   [hl+], a                                    ; $5636: $22
	add  b                                           ; $5637: $80
	inc  hl                                          ; $5638: $23
	dec  b                                           ; $5639: $05
	ld   [hl+], a                                    ; $563a: $22
	inc  h                                           ; $563b: $24
	ld   hl, $2027                                   ; $563c: $21 $27 $20
	nop                                              ; $563f: $00
	add  b                                           ; $5640: $80
	ld   sp, $8103                                   ; $5641: $31 $03 $81
	adc  c                                           ; $5644: $89
	dec  de                                          ; $5645: $1b
	sbc  d                                           ; $5646: $9a
	add  b                                           ; $5647: $80
	cp   c                                           ; $5648: $b9
	ld   b, $ba                                      ; $5649: $06 $ba
	xor  d                                           ; $564b: $aa
	cp   c                                           ; $564c: $b9
	sbc  e                                           ; $564d: $9b
	add  sp, -$26                                    ; $564e: $e8 $da
	adc  c                                           ; $5650: $89
	add  b                                           ; $5651: $80
	nop                                              ; $5652: $00
	inc  bc                                          ; $5653: $03
	jp   nz, $0a8a                                   ; $5654: $c2 $8a $0a

	ld   d, d                                        ; $5657: $52
	add  c                                           ; $5658: $81
	ld   e, d                                        ; $5659: $5a
	ld   bc, $1e06                                   ; $565a: $01 $06 $1e
	add  b                                           ; $565d: $80
	ld   d, [hl]                                     ; $565e: $56
	inc  b                                           ; $565f: $04
	ld   b, [hl]                                     ; $5660: $46
	ld   c, [hl]                                     ; $5661: $4e
	ld   e, d                                        ; $5662: $5a
	nop                                              ; $5663: $00
	ld   [bc], a                                     ; $5664: $02
	add  c                                           ; $5665: $81
	ld   [hl+], a                                    ; $5666: $22
	inc  bc                                          ; $5667: $03
	ld   h, $a6                                      ; $5668: $26 $a6
	ld   h, $a6                                      ; $566a: $26 $a6
	add  b                                           ; $566c: $80
	and  d                                           ; $566d: $a2
	ld   b, $24                                      ; $566e: $06 $24
	and  b                                           ; $5670: $a0
	jr   nz, jr_071_5695                             ; $5671: $20 $22

	and  [hl]                                        ; $5673: $a6
	nop                                              ; $5674: $00
	ld   [hl+], a                                    ; $5675: $22
	add  b                                           ; $5676: $80
	ld   [bc], a                                     ; $5677: $02
	dec  b                                           ; $5678: $05
	add  [hl]                                        ; $5679: $86
	ld   a, [hl+]                                    ; $567a: $2a
	ld   a, [bc]                                     ; $567b: $0a
	ld   [bc], a                                     ; $567c: $02
	ld   [hl+], a                                    ; $567d: $22
	and  [hl]                                        ; $567e: $a6
	add  c                                           ; $567f: $81
	and  d                                           ; $5680: $a2
	ld   [bc], a                                     ; $5681: $02
	ld   [hl+], a                                    ; $5682: $22
	add  d                                           ; $5683: $82
	inc  b                                           ; $5684: $04
	add  b                                           ; $5685: $80
	inc  e                                           ; $5686: $1c
	ld   bc, $bc9c                                   ; $5687: $01 $9c $bc
	add  b                                           ; $568a: $80
	adc  h                                           ; $568b: $8c
	ld   [bc], a                                     ; $568c: $02

jr_071_568d:
	inc  c                                           ; $568d: $0c
	inc  l                                           ; $568e: $2c
	inc  h                                           ; $568f: $24
	add  d                                           ; $5690: $82
	jr   nz, @-$7e                                   ; $5691: $20 $80

	ld   h, b                                        ; $5693: $60
	ld   [bc], a                                     ; $5694: $02

jr_071_5695:
	jr   nz, @-$7e                                   ; $5695: $20 $80

	or   d                                           ; $5697: $b2
	add  c                                           ; $5698: $81
	ld   [hl-], a                                    ; $5699: $32
	nop                                              ; $569a: $00
	inc  sp                                          ; $569b: $33
	add  l                                           ; $569c: $85
	dec  sp                                          ; $569d: $3b
	ld   bc, $3139                                   ; $569e: $01 $39 $31
	add  b                                           ; $56a1: $80
	ld   a, b                                        ; $56a2: $78
	adc  h                                           ; $56a3: $8c
	ld   a, c                                        ; $56a4: $79
	ld   b, b                                        ; $56a5: $40
	ld   bc, $0086                                   ; $56a6: $01 $86 $00
	nop                                              ; $56a9: $00
	rrca                                             ; $56aa: $0f
	add  e                                           ; $56ab: $83
	nop                                              ; $56ac: $00
	ld   [bc], a                                     ; $56ad: $02
	ld   [bc], a                                     ; $56ae: $02
	ld   a, [bc]                                     ; $56af: $0a
	rlca                                             ; $56b0: $07
	add  l                                           ; $56b1: $85
	nop                                              ; $56b2: $00
	ld   bc, $00ff                                   ; $56b3: $01 $ff $00
	add  b                                           ; $56b6: $80
	ld   bc, $0380                                   ; $56b7: $01 $80 $03
	add  b                                           ; $56ba: $80
	ld   bc, $ff00                                   ; $56bb: $01 $00 $ff
	add  l                                           ; $56be: $85
	nop                                              ; $56bf: $00
	ld   [$3fc8], sp                                 ; $56c0: $08 $c8 $3f
	dec  bc                                          ; $56c3: $0b
	rlca                                             ; $56c4: $07
	push hl                                          ; $56c5: $e5
	db   $eb                                         ; $56c6: $eb
	ld   c, l                                        ; $56c7: $4d
	ld   b, a                                        ; $56c8: $47
	rst  $38                                         ; $56c9: $ff
	add  l                                           ; $56ca: $85
	nop                                              ; $56cb: $00
	ld   [$e35f], sp                                 ; $56cc: $08 $5f $e3
	dec  d                                           ; $56cf: $15
	rst  $30                                         ; $56d0: $f7
	inc  hl                                          ; $56d1: $23
	ld   [$f189], a                                  ; $56d2: $ea $89 $f1
	rst  $28                                         ; $56d5: $ef
	add  l                                           ; $56d6: $85
	nop                                              ; $56d7: $00
	ld   [$df9f], sp                                 ; $56d8: $08 $9f $df
	dec  d                                           ; $56db: $15
	push af                                          ; $56dc: $f5
	and  a                                           ; $56dd: $a7
	rst  $38                                         ; $56de: $ff
	ld   [hl], d                                     ; $56df: $72
	ld   a, a                                        ; $56e0: $7f
	push af                                          ; $56e1: $f5
	add  l                                           ; $56e2: $85
	nop                                              ; $56e3: $00
	ld   [$ef47], sp                                 ; $56e4: $08 $47 $ef
	ld   c, d                                        ; $56e7: $4a
	rst  $38                                         ; $56e8: $ff
	ld   e, b                                        ; $56e9: $58
	db   $fd                                         ; $56ea: $fd
	ld   [de], a                                     ; $56eb: $12
	rst  $38                                         ; $56ec: $ff
	ld   d, l                                        ; $56ed: $55
	add  l                                           ; $56ee: $85
	nop                                              ; $56ef: $00
	dec  b                                           ; $56f0: $05
	ld   d, h                                        ; $56f1: $54
	rst  $38                                         ; $56f2: $ff
	ld   hl, $32ff                                   ; $56f3: $21 $ff $32
	cp   a                                           ; $56f6: $bf
	add  b                                           ; $56f7: $80
	ld   a, a                                        ; $56f8: $7f
	nop                                              ; $56f9: $00
	ld   hl, sp-$7b                                  ; $56fa: $f8 $85
	nop                                              ; $56fc: $00
	ld   [$bf1d], sp                                 ; $56fd: $08 $1d $bf
	ld   e, l                                        ; $5700: $5d
	rst  $38                                         ; $5701: $ff
	xor  a                                           ; $5702: $af
	rst  $38                                         ; $5703: $ff
	sub  a                                           ; $5704: $97
	rst  $38                                         ; $5705: $ff
	jr   c, jr_071_568d                              ; $5706: $38 $85

	nop                                              ; $5708: $00
	ld   [$ff70], sp                                 ; $5709: $08 $70 $ff
	daa                                              ; $570c: $27
	rst  $38                                         ; $570d: $ff
	and  d                                           ; $570e: $a2
	rst  $38                                         ; $570f: $ff
	db   $e4                                         ; $5710: $e4
	rst  $28                                         ; $5711: $ef
	ld   bc, $0085                                   ; $5712: $01 $85 $00
	ld   [$f51a], sp                                 ; $5715: $08 $1a $f5
	sub  $fe                                         ; $5718: $d6 $fe
	sub  a                                           ; $571a: $97
	rst  $38                                         ; $571b: $ff
	ld   c, [hl]                                     ; $571c: $4e
	cp   $1f                                         ; $571d: $fe $1f
	add  l                                           ; $571f: $85
	nop                                              ; $5720: $00
	ld   [rAUD1LEN], sp                                 ; $5721: $08 $11 $ff
	xor  l                                           ; $5724: $ad
	cp   a                                           ; $5725: $bf
	ld   e, h                                        ; $5726: $5c
	ld   e, d                                        ; $5727: $5a
	sub  d                                           ; $5728: $92
	cp   a                                           ; $5729: $bf
	rst  $10                                         ; $572a: $d7
	add  l                                           ; $572b: $85
	nop                                              ; $572c: $00
	ld   [$1f10], sp                                 ; $572d: $08 $10 $1f
	xor  a                                           ; $5730: $af
	cp   a                                           ; $5731: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5732: $cf
	rst  JumpTable                                         ; $5733: $df
	xor  a                                           ; $5734: $af
	rst  $38                                         ; $5735: $ff
	ld   e, a                                        ; $5736: $5f
	add  [hl]                                        ; $5737: $86
	nop                                              ; $5738: $00
	add  l                                           ; $5739: $85
	rst  $38                                         ; $573a: $ff
	ld   d, $cf                                      ; $573b: $16 $cf
	ccf                                              ; $573d: $3f
	and  a                                           ; $573e: $a7
	rst  $38                                         ; $573f: $ff
	sub  a                                           ; $5740: $97
	rst  $38                                         ; $5741: $ff
	cp   a                                           ; $5742: $bf
	rst  $38                                         ; $5743: $ff
	ld   a, a                                        ; $5744: $7f
	rst  $38                                         ; $5745: $ff
	push af                                          ; $5746: $f5
	rst  $38                                         ; $5747: $ff
	and  c                                           ; $5748: $a1
	rst  $38                                         ; $5749: $ff
	ld   d, e                                        ; $574a: $53
	rst  $38                                         ; $574b: $ff
	rlca                                             ; $574c: $07
	rst  $38                                         ; $574d: $ff
	cp   $ff                                         ; $574e: $fe $ff
	cp   [hl]                                        ; $5750: $be
	rst  $38                                         ; $5751: $ff
	cp   a                                           ; $5752: $bf
	add  a                                           ; $5753: $87
	rst  $38                                         ; $5754: $ff
	ld   b, $1f                                      ; $5755: $06 $1f
	ldh  a, [$60]                                    ; $5757: $f0 $60
	ld   [hl], b                                     ; $5759: $70
	and  b                                           ; $575a: $a0
	ldh  a, [$50]                                    ; $575b: $f0 $50
	add  c                                           ; $575d: $81
	ldh  a, [rTAC]                                   ; $575e: $f0 $07
	ldh  [$f0], a                                    ; $5760: $e0 $f0
	ld   d, b                                        ; $5762: $50
	ldh  a, [$50]                                    ; $5763: $f0 $50
	ldh  a, [$e2]                                    ; $5765: $f0 $e2
	dec  c                                           ; $5767: $0d
	add  b                                           ; $5768: $80
	ld   a, [bc]                                     ; $5769: $0a
	add  b                                           ; $576a: $80
	nop                                              ; $576b: $00
	add  b                                           ; $576c: $80
	ld   bc, $0080                                   ; $576d: $01 $80 $00
	add  b                                           ; $5770: $80
	inc  b                                           ; $5771: $04
	rla                                              ; $5772: $17
	ld   a, [bc]                                     ; $5773: $0a
	ld   c, $03                                      ; $5774: $0e $03
	rlca                                             ; $5776: $07
	ldh  a, [rP1]                                    ; $5777: $f0 $00
	ld   [$e018], sp                                 ; $5779: $08 $18 $e0
	ldh  a, [$6f]                                    ; $577c: $f0 $6f
	ld   a, a                                        ; $577e: $7f
	call c, Call_071_49f4                            ; $577f: $dc $f4 $49
	ld   a, e                                        ; $5782: $7b
	and  l                                           ; $5783: $a5
	cp   a                                           ; $5784: $bf
	ld   d, c                                        ; $5785: $51
	ld   c, e                                        ; $5786: $4b
	ld   bc, $808f                                   ; $5787: $01 $8f $80
	dec  b                                           ; $578a: $05
	add  b                                           ; $578b: $80
	nop                                              ; $578c: $00
	nop                                              ; $578d: $00
	ld   bc, $0081                                   ; $578e: $01 $81 $00
	add  b                                           ; $5791: $80
	ld   b, b                                        ; $5792: $40
	inc  bc                                          ; $5793: $03
	and  b                                           ; $5794: $a0
	ldh  [$84], a                                    ; $5795: $e0 $84
	call nz, $fa80                                   ; $5797: $c4 $80 $fa
	ld   de, $bfbb                                   ; $579a: $11 $bb $bf
	jp   nc, $0dde                                   ; $579d: $d2 $de $0d

	dec  d                                           ; $57a0: $15
	stop                                             ; $57a1: $10 $00
	add  hl, bc                                      ; $57a3: $09
	ld   c, $1a                                      ; $57a4: $0e $1a
	rra                                              ; $57a6: $1f
	dec  c                                           ; $57a7: $0d
	rrca                                             ; $57a8: $0f
	cpl                                              ; $57a9: $2f
	xor  a                                           ; $57aa: $af
	sub  l                                           ; $57ab: $95
	dec  d                                           ; $57ac: $15
	add  b                                           ; $57ad: $80
	ld   [bc], a                                     ; $57ae: $02
	add  b                                           ; $57af: $80
	inc  b                                           ; $57b0: $04
	inc  bc                                          ; $57b1: $03
	jp   nz, Jump_071_4fca                           ; $57b2: $c2 $ca $4f

	ld   b, a                                        ; $57b5: $47
	add  b                                           ; $57b6: $80
	adc  a                                           ; $57b7: $8f
	add  b                                           ; $57b8: $80
	ld   b, l                                        ; $57b9: $45
	dec  bc                                          ; $57ba: $0b
	xor  [hl]                                        ; $57bb: $ae
	cp   $15                                         ; $57bc: $fe $15
	cp   l                                           ; $57be: $bd
	ld   d, [hl]                                     ; $57bf: $56
	ld   a, [$6f01]                                  ; $57c0: $fa $01 $6f
	sub  b                                           ; $57c3: $90
	cp   $03                                         ; $57c4: $fe $03
	ld   d, a                                        ; $57c6: $57
	add  b                                           ; $57c7: $80
	add  d                                           ; $57c8: $82
	add  b                                           ; $57c9: $80
	ld   b, b                                        ; $57ca: $40
	ld   hl, $1f1d                                   ; $57cb: $21 $1d $1f
	jr   c, jr_071_580f                              ; $57ce: $38 $3f

	ld   a, [hl-]                                    ; $57d0: $3a
	ccf                                              ; $57d1: $3f
	ld   a, [hl]                                     ; $57d2: $7e
	ld   a, a                                        ; $57d3: $7f

jr_071_57d4:
	dec  l                                           ; $57d4: $2d
	cpl                                              ; $57d5: $2f
	ld   e, c                                        ; $57d6: $59
	ld   e, a                                        ; $57d7: $5f
	jr   c, @+$41                                    ; $57d8: $38 $3f

	dec  e                                           ; $57da: $1d
	rra                                              ; $57db: $1f
	ld   d, b                                        ; $57dc: $50
	rst  $38                                         ; $57dd: $ff
	ld   b, a                                        ; $57de: $47
	rst  $38                                         ; $57df: $ff
	ld   b, l                                        ; $57e0: $45
	rst  $38                                         ; $57e1: $ff
	xor  d                                           ; $57e2: $aa
	rst  $38                                         ; $57e3: $ff
	xor  d                                           ; $57e4: $aa
	xor  a                                           ; $57e5: $af
	rst  $30                                         ; $57e6: $f7
	ld   a, [$fdad]                                  ; $57e7: $fa $ad $fd
	jr   c, jr_071_57d4                              ; $57ea: $38 $e8

	ld   [hl], c                                     ; $57ec: $71
	cp   $80                                         ; $57ed: $fe $80
	db   $fd                                         ; $57ef: $fd
	jr   nc, jr_071_5849                             ; $57f0: $30 $57

	rst  $10                                         ; $57f2: $d7
	ld   l, a                                        ; $57f3: $6f
	rst  $28                                         ; $57f4: $ef
	ld   b, a                                        ; $57f5: $47
	rst  ToBoot                                         ; $57f6: $c7
	ld   a, [hl+]                                    ; $57f7: $2a
	db   $eb                                         ; $57f8: $eb
	inc  d                                           ; $57f9: $14
	rst  $38                                         ; $57fa: $ff
	ld   b, h                                        ; $57fb: $44
	rst  $38                                         ; $57fc: $ff
	and  h                                           ; $57fd: $a4
	cp   a                                           ; $57fe: $bf
	inc  e                                           ; $57ff: $1c
	rla                                              ; $5800: $17
	and  b                                           ; $5801: $a0
	and  e                                           ; $5802: $a3
	ldh  a, [c]                                      ; $5803: $f2
	rst  $30                                         ; $5804: $f7
	xor  $eb                                         ; $5805: $ee $eb
	and  a                                           ; $5807: $a7
	push af                                          ; $5808: $f5
	ld   c, [hl]                                     ; $5809: $4e
	rst  $38                                         ; $580a: $ff
	jp   c, $9cfe                                    ; $580b: $da $fe $9c

	ei                                               ; $580e: $fb

jr_071_580f:
	xor  h                                           ; $580f: $ac
	cp   $e5                                         ; $5810: $fe $e5
	rst  $38                                         ; $5812: $ff
	ld   l, c                                        ; $5813: $69
	rst  $38                                         ; $5814: $ff
	inc  sp                                          ; $5815: $33
	push af                                          ; $5816: $f5
	ld   d, a                                        ; $5817: $57
	ld   a, [$fdd4]                                  ; $5818: $fa $d4 $fd

jr_071_581b:
	ld   b, a                                        ; $581b: $47
	xor  [hl]                                        ; $581c: $ae
	rla                                              ; $581d: $17
	ld   [$d5aa], a                                  ; $581e: $ea $aa $d5
	ld   d, l                                        ; $5821: $55
	add  b                                           ; $5822: $80
	xor  d                                           ; $5823: $aa
	ld   [bc], a                                     ; $5824: $02
	ld   d, l                                        ; $5825: $55
	sub  l                                           ; $5826: $95
	ret  nz                                          ; $5827: $c0

	add  b                                           ; $5828: $80
	add  sp, -$80                                    ; $5829: $e8 $80
	push de                                          ; $582b: $d5
	add  b                                           ; $582c: $80
	rst  $38                                         ; $582d: $ff
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	add  b                                           ; $5830: $80
	xor  d                                           ; $5831: $aa
	add  b                                           ; $5832: $80
	ld   d, l                                        ; $5833: $55
	add  b                                           ; $5834: $80
	xor  d                                           ; $5835: $aa
	add  b                                           ; $5836: $80
	ld   d, l                                        ; $5837: $55
	add  e                                           ; $5838: $83
	nop                                              ; $5839: $00
	add  b                                           ; $583a: $80
	add  c                                           ; $583b: $81
	nop                                              ; $583c: $00
	nop                                              ; $583d: $00
	add  b                                           ; $583e: $80
	xor  d                                           ; $583f: $aa
	add  b                                           ; $5840: $80
	ld   d, l                                        ; $5841: $55
	add  b                                           ; $5842: $80
	xor  d                                           ; $5843: $aa
	add  b                                           ; $5844: $80
	ld   d, l                                        ; $5845: $55
	add  c                                           ; $5846: $81
	nop                                              ; $5847: $00
	add  b                                           ; $5848: $80

jr_071_5849:
	inc  bc                                          ; $5849: $03
	add  b                                           ; $584a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $584b: $cf

jr_071_584c:
	nop                                              ; $584c: $00
	nop                                              ; $584d: $00
	add  b                                           ; $584e: $80
	xor  d                                           ; $584f: $aa
	add  b                                           ; $5850: $80
	ld   d, l                                        ; $5851: $55
	add  b                                           ; $5852: $80
	xor  d                                           ; $5853: $aa
	add  b                                           ; $5854: $80
	ld   d, l                                        ; $5855: $55
	add  e                                           ; $5856: $83
	nop                                              ; $5857: $00
	add  b                                           ; $5858: $80
	jp   $0000                                      ; $5859: $c3 $00 $00


	add  b                                           ; $585c: $80
	xor  d                                           ; $585d: $aa
	add  b                                           ; $585e: $80
	ld   d, l                                        ; $585f: $55
	add  b                                           ; $5860: $80
	xor  d                                           ; $5861: $aa
	ld   [bc], a                                     ; $5862: $02
	ld   d, l                                        ; $5863: $55
	ld   c, e                                        ; $5864: $4b
	ld   e, $84                                      ; $5865: $1e $84
	rst  $38                                         ; $5867: $ff
	ld   bc, $020d                                   ; $5868: $01 $0d $02
	add  [hl]                                        ; $586b: $86
	nop                                              ; $586c: $00
	add  b                                           ; $586d: $80
	ld   [bc], a                                     ; $586e: $02
	add  b                                           ; $586f: $80
	inc  c                                           ; $5870: $0c
	inc  bc                                          ; $5871: $03
	ld   b, $0a                                      ; $5872: $06 $0a
	ld   a, a                                        ; $5874: $7f
	add  e                                           ; $5875: $83
	add  b                                           ; $5876: $80
	nop                                              ; $5877: $00
	add  b                                           ; $5878: $80
	inc  b                                           ; $5879: $04
	add  b                                           ; $587a: $80
	ld   hl, $0e05                                   ; $587b: $21 $05 $0e
	ld   e, $01                                      ; $587e: $1e $01

Call_071_5880:
	inc  de                                          ; $5880: $13
	ld   [bc], a                                     ; $5881: $02
	nop                                              ; $5882: $00
	add  b                                           ; $5883: $80
	ld   bc, $6080                                   ; $5884: $01 $80 $60
	ld   de, $7363                                   ; $5887: $11 $63 $73
	rlca                                             ; $588a: $07
	rra                                              ; $588b: $1f
	ld   bc, $1e1d                                   ; $588c: $01 $1d $1e
	adc  e                                           ; $588f: $8b
	sbc  d                                           ; $5890: $9a
	rra                                              ; $5891: $1f
	xor  d                                           ; $5892: $aa
	cp   d                                           ; $5893: $ba
	db   $eb                                         ; $5894: $eb
	rst  $38                                         ; $5895: $ff
	add  hl, de                                      ; $5896: $19
	dec  e                                           ; $5897: $1d
	inc  e                                           ; $5898: $1c
	jr   jr_071_581b                                 ; $5899: $18 $80

	inc  bc                                          ; $589b: $03
	add  hl, bc                                      ; $589c: $09
	ld   b, c                                        ; $589d: $41
	pop  bc                                          ; $589e: $c1
	ld   [bc], a                                     ; $589f: $02
	add  d                                           ; $58a0: $82
	ld   b, c                                        ; $58a1: $41
	ld   h, c                                        ; $58a2: $61
	xor  d                                           ; $58a3: $aa
	adc  e                                           ; $58a4: $8b
	ld   d, b                                        ; $58a5: $50
	ld   d, c                                        ; $58a6: $51
	add  b                                           ; $58a7: $80
	xor  b                                           ; $58a8: $a8
	add  b                                           ; $58a9: $80
	call nc, $fe80                                   ; $58aa: $d4 $80 $fe
	dec  bc                                          ; $58ad: $0b
	ld   [hl], l                                     ; $58ae: $75
	ld   a, l                                        ; $58af: $7d
	and  d                                           ; $58b0: $a2
	cp   [hl]                                        ; $58b1: $be
	ld   h, e                                        ; $58b2: $63
	ld   l, a                                        ; $58b3: $6f
	push hl                                          ; $58b4: $e5
	cp   $5c                                         ; $58b5: $fe $5c
	db   $fc                                         ; $58b7: $fc
	and  e                                           ; $58b8: $a3
	nop                                              ; $58b9: $00
	add  b                                           ; $58ba: $80
	dec  b                                           ; $58bb: $05
	add  b                                           ; $58bc: $80
	inc  bc                                          ; $58bd: $03
	add  b                                           ; $58be: $80
	ld   sp, $1a09                                   ; $58bf: $31 $09 $1a
	ld   a, [hl-]                                    ; $58c2: $3a
	rlca                                             ; $58c3: $07
	rla                                              ; $58c4: $17
	add  l                                           ; $58c5: $85
	sub  a                                           ; $58c6: $97
	adc  b                                           ; $58c7: $88
	rrca                                             ; $58c8: $0f
	adc  l                                           ; $58c9: $8d
	jr   z, jr_071_584c                              ; $58ca: $28 $80

jr_071_58cc:
	dec  e                                           ; $58cc: $1d
	add  b                                           ; $58cd: $80
	xor  b                                           ; $58ce: $a8
	add  b                                           ; $58cf: $80
	nop                                              ; $58d0: $00
	add  b                                           ; $58d1: $80
	adc  b                                           ; $58d2: $88
	add  b                                           ; $58d3: $80
	ld   d, h                                        ; $58d4: $54
	add  b                                           ; $58d5: $80
	ld   hl, sp+$15                                  ; $58d6: $f8 $15
	ld   e, h                                        ; $58d8: $5c
	db   $fc                                         ; $58d9: $fc
	ld   [$38f6], a                                  ; $58da: $ea $f6 $38
	db   $fc                                         ; $58dd: $fc
	or   d                                           ; $58de: $b2
	xor  $63                                         ; $58df: $ee $63
	ld   b, a                                        ; $58e1: $47
	dec  c                                           ; $58e2: $0d
	rrca                                             ; $58e3: $0f
	ld   d, h                                        ; $58e4: $54
	ld   d, a                                        ; $58e5: $57
	ld   a, [hl]                                     ; $58e6: $7e
	ld   a, a                                        ; $58e7: $7f
	cp   [hl]                                        ; $58e8: $be
	cp   $5b                                         ; $58e9: $fe $5b
	ld   e, a                                        ; $58eb: $5f
	ld   a, e                                        ; $58ec: $7b
	ccf                                              ; $58ed: $3f
	add  b                                           ; $58ee: $80
	adc  a                                           ; $58ef: $8f
	add  b                                           ; $58f0: $80
	ld   e, l                                        ; $58f1: $5d
	inc  de                                          ; $58f2: $13
	ld   b, d                                        ; $58f3: $42
	ld   [$f723], a                                  ; $58f4: $ea $23 $f7
	adc  b                                           ; $58f7: $88
	sbc  $86                                         ; $58f8: $de $86
	cp   b                                           ; $58fa: $b8
	pop  af                                          ; $58fb: $f1
	push af                                          ; $58fc: $f5
	jp   z, $d9fa                                    ; $58fd: $ca $fa $d9

	rst  $38                                         ; $5900: $ff
	ld   e, c                                        ; $5901: $59
	ld   e, [hl]                                     ; $5902: $5e
	adc  e                                           ; $5903: $8b
	xor  e                                           ; $5904: $ab
	inc  hl                                          ; $5905: $23
	ld   [bc], a                                     ; $5906: $02
	add  b                                           ; $5907: $80
	add  b                                           ; $5908: $80
	inc  bc                                          ; $5909: $03
	ld   c, d                                        ; $590a: $4a
	ld   e, d                                        ; $590b: $5a
	ld   c, l                                        ; $590c: $4d
	ld   e, l                                        ; $590d: $5d
	add  b                                           ; $590e: $80
	ld   a, [bc]                                     ; $590f: $0a
	add  b                                           ; $5910: $80
	ld   d, a                                        ; $5911: $57
	dec  hl                                          ; $5912: $2b
	ld   [bc], a                                     ; $5913: $02
	add  e                                           ; $5914: $83
	inc  b                                           ; $5915: $04
	call nz, $8b43                                   ; $5916: $c4 $43 $8b
	adc  h                                           ; $5919: $8c
	ld   b, $15                                      ; $591a: $06 $15
	rla                                              ; $591c: $17
	ld   d, b                                        ; $591d: $50
	ld   [hl], a                                     ; $591e: $77
	inc  c                                           ; $591f: $0c
	dec  hl                                          ; $5920: $2b
	ld   d, [hl]                                     ; $5921: $56
	ld   d, a                                        ; $5922: $57
	ld   sp, hl                                      ; $5923: $f9
	db   $fd                                         ; $5924: $fd
	ld   a, d                                        ; $5925: $7a
	cp   $2d                                         ; $5926: $fe $2d
	db   $fd                                         ; $5928: $fd
	dec  b                                           ; $5929: $05
	xor  e                                           ; $592a: $ab
	inc  d                                           ; $592b: $14
	rla                                              ; $592c: $17
	push de                                          ; $592d: $d5
	rst  $10                                         ; $592e: $d7
	ld   a, [hl]                                     ; $592f: $7e
	cp   $95                                         ; $5930: $fe $95
	push de                                          ; $5932: $d5
	xor  b                                           ; $5933: $a8
	add  sp, -$44                                    ; $5934: $e8 $bc
	db   $fc                                         ; $5936: $fc
	ret  c                                           ; $5937: $d8

	ld   hl, sp-$34                                  ; $5938: $f8 $cc
	db   $fc                                         ; $593a: $fc
	ret  nz                                          ; $593b: $c0

	ld   hl, sp+$07                                  ; $593c: $f8 $07
	rst  $28                                         ; $593e: $ef
	add  b                                           ; $593f: $80
	cp   a                                           ; $5940: $bf
	add  b                                           ; $5941: $80
	ld   e, a                                        ; $5942: $5f
	add  b                                           ; $5943: $80
	ld   a, [hl-]                                    ; $5944: $3a
	add  b                                           ; $5945: $80
	dec  d                                           ; $5946: $15
	add  b                                           ; $5947: $80
	jr   nz, jr_071_58cc                             ; $5948: $20 $82

	nop                                              ; $594a: $00
	inc  hl                                          ; $594b: $23
	pop  af                                          ; $594c: $f1
	rst  $30                                         ; $594d: $f7
	db   $f4                                         ; $594e: $f4
	rst  $30                                         ; $594f: $f7
	ld   d, [hl]                                     ; $5950: $56
	ld   d, e                                        ; $5951: $53
	xor  b                                           ; $5952: $a8
	xor  c                                           ; $5953: $a9
	ld   d, b                                        ; $5954: $50
	ld   d, e                                        ; $5955: $53
	ld   [bc], a                                     ; $5956: $02
	dec  de                                          ; $5957: $1b
	ld   bc, $3a3f                                   ; $5958: $01 $3f $3a
	ccf                                              ; $595b: $3f
	ld   d, a                                        ; $595c: $57
	rst  $38                                         ; $595d: $ff
	ld   a, [hl+]                                    ; $595e: $2a
	rst  $38                                         ; $595f: $ff
	ld   [$adff], sp                                 ; $5960: $08 $ff $ad
	rst  $38                                         ; $5963: $ff
	rst  $30                                         ; $5964: $f7
	rst  $38                                         ; $5965: $ff
	or   c                                           ; $5966: $b1
	rst  $38                                         ; $5967: $ff
	ld   a, $ff                                      ; $5968: $3e $ff
	cp   d                                           ; $596a: $ba
	rst  $38                                         ; $596b: $ff
	ccf                                              ; $596c: $3f
	ld   c, $01                                      ; $596d: $0e $01
	dec  b                                           ; $596f: $05
	add  b                                           ; $5970: $80
	ld   [$0605], sp                                 ; $5971: $08 $05 $06
	rlca                                             ; $5974: $07
	inc  c                                           ; $5975: $0c
	rrca                                             ; $5976: $0f
	rlca                                             ; $5977: $07
	dec  b                                           ; $5978: $05
	add  b                                           ; $5979: $80
	ld   bc, $0080                                   ; $597a: $01 $80 $00
	dec  b                                           ; $597d: $05
	ld   e, l                                        ; $597e: $5d
	xor  l                                           ; $597f: $ad
	ld   c, l                                        ; $5980: $4d
	db   $dd                                         ; $5981: $dd
	cpl                                              ; $5982: $2f
	cp   a                                           ; $5983: $bf
	add  b                                           ; $5984: $80
	rst  $38                                         ; $5985: $ff
	rlca                                             ; $5986: $07
	db   $e4                                         ; $5987: $e4
	rst  $28                                         ; $5988: $ef
	ld   a, c                                        ; $5989: $79
	rst  $30                                         ; $598a: $f7
	reti                                             ; $598b: $d9


	ld   e, a                                        ; $598c: $5f
	xor  h                                           ; $598d: $ac
	xor  a                                           ; $598e: $af
	add  b                                           ; $598f: $80
	cp   $09                                         ; $5990: $fe $09
	ei                                               ; $5992: $fb
	rst  $38                                         ; $5993: $ff
	add  sp, -$01                                    ; $5994: $e8 $ff
	ld   l, l                                        ; $5996: $6d
	rst  $38                                         ; $5997: $ff
	dec  sp                                          ; $5998: $3b
	ei                                               ; $5999: $fb
	sub  b                                           ; $599a: $90
	pop  de                                          ; $599b: $d1
	add  b                                           ; $599c: $80
	ld   [$d50f], a                                  ; $599d: $ea $0f $d5
	push af                                          ; $59a0: $f5
	jp   c, $cefb                                    ; $59a1: $da $fb $ce

	rst  $28                                         ; $59a4: $ef
	push af                                          ; $59a5: $f5
	rst  $38                                         ; $59a6: $ff
	ld   d, c                                        ; $59a7: $51
	rst  $30                                         ; $59a8: $f7
	cp   d                                           ; $59a9: $ba
	rst  $38                                         ; $59aa: $ff
	ld   d, h                                        ; $59ab: $54
	rst  JumpTable                                         ; $59ac: $df
	sbc  l                                           ; $59ad: $9d
	rst  JumpTable                                         ; $59ae: $df
	add  b                                           ; $59af: $80
	ld   a, [hl]                                     ; $59b0: $7e
	dec  c                                           ; $59b1: $0d
	db   $eb                                         ; $59b2: $eb
	db   $fc                                         ; $59b3: $fc
	ld   d, h                                        ; $59b4: $54
	db   $fc                                         ; $59b5: $fc
	ld   d, [hl]                                     ; $59b6: $56
	cp   $43                                         ; $59b7: $fe $43
	rst  $38                                         ; $59b9: $ff
	sub  l                                           ; $59ba: $95
	rst  $38                                         ; $59bb: $ff
	sbc  d                                           ; $59bc: $9a
	ei                                               ; $59bd: $fb
	ld   d, l                                        ; $59be: $55
	push af                                          ; $59bf: $f5
	add  b                                           ; $59c0: $80
	xor  b                                           ; $59c1: $a8
	nop                                              ; $59c2: $00
	sbc  l                                           ; $59c3: $9d
	add  b                                           ; $59c4: $80
	ld   a, $10                                      ; $59c5: $3e $10
	ld   a, [de]                                     ; $59c7: $1a
	sbc  d                                           ; $59c8: $9a
	sub  d                                           ; $59c9: $92
	or   d                                           ; $59ca: $b2
	and  d                                           ; $59cb: $a2
	dec  a                                           ; $59cc: $3d

jr_071_59cd:
	cp   a                                           ; $59cd: $bf
	or   c                                           ; $59ce: $b1

jr_071_59cf:
	xor  a                                           ; $59cf: $af
	ld   l, l                                        ; $59d0: $6d
	ld   l, a                                        ; $59d1: $6f
	ld   l, d                                        ; $59d2: $6a
	ld   l, e                                        ; $59d3: $6b
	ld   a, [hl+]                                    ; $59d4: $2a
	cp   $e0                                         ; $59d5: $fe $e0
	jp   z, Jump_071_4680                            ; $59d7: $ca $80 $46

	ld   bc, $4240                                   ; $59da: $01 $40 $42
	add  b                                           ; $59dd: $80
	ld   h, l                                        ; $59de: $65
	dec  hl                                          ; $59df: $2b
	ld   a, l                                        ; $59e0: $7d
	db   $fd                                         ; $59e1: $fd
	ld   a, [hl]                                     ; $59e2: $7e
	ei                                               ; $59e3: $fb
	ld   b, $ff                                      ; $59e4: $06 $ff
	inc  l                                           ; $59e6: $2c
	sbc  h                                           ; $59e7: $9c
	jp   z, $c55a                                    ; $59e8: $ca $5a $c5

	sub  a                                           ; $59eb: $97
	adc  b                                           ; $59ec: $88
	rra                                              ; $59ed: $1f
	ld   [de], a                                     ; $59ee: $12
	add  hl, de                                      ; $59ef: $19
	ld   d, b                                        ; $59f0: $50
	ld   [hl], c                                     ; $59f1: $71
	add  sp, -$08                                    ; $59f2: $e8 $f8
	add  b                                           ; $59f4: $80
	rst  $38                                         ; $59f5: $ff
	or   d                                           ; $59f6: $b2
	ld   [de], a                                     ; $59f7: $12
	adc  d                                           ; $59f8: $8a
	adc  e                                           ; $59f9: $8b
	ld   d, h                                        ; $59fa: $54
	ld   d, a                                        ; $59fb: $57
	db   $fc                                         ; $59fc: $fc
	rst  $38                                         ; $59fd: $ff
	ld   e, [hl]                                     ; $59fe: $5e
	rst  $38                                         ; $59ff: $ff

Jump_071_5a00:
	ld   a, [bc]                                     ; $5a00: $0a
	ld   a, a                                        ; $5a01: $7f
	ret                                              ; $5a02: $c9


	rst  $38                                         ; $5a03: $ff
	ld   c, c                                        ; $5a04: $49
	rst  $38                                         ; $5a05: $ff
	ret  c                                           ; $5a06: $d8

	adc  l                                           ; $5a07: $8d
	bit  3, a                                        ; $5a08: $cb $5f
	ret  nc                                          ; $5a0a: $d0

	cp   e                                           ; $5a0b: $bb
	add  b                                           ; $5a0c: $80
	ld   de, $9405                                   ; $5a0d: $11 $05 $94
	cp   a                                           ; $5a10: $bf
	add  c                                           ; $5a11: $81
	push af                                          ; $5a12: $f5
	jr   jr_071_59cd                                 ; $5a13: $18 $b8

	add  b                                           ; $5a15: $80
	ld   d, h                                        ; $5a16: $54
	db   $10                                         ; $5a17: $10
	dec  d                                           ; $5a18: $15
	sbc  [hl]                                        ; $5a19: $9e
	sub  h                                           ; $5a1a: $94
	call c, $eece                                    ; $5a1b: $dc $ce $ee
	ld   c, c                                        ; $5a1e: $49
	db   $dd                                         ; $5a1f: $dd
	ld   a, [hl+]                                    ; $5a20: $2a
	cp   $db                                         ; $5a21: $fe $db
	ld   a, a                                        ; $5a23: $7f
	cp   d                                           ; $5a24: $ba
	cp   [hl]                                        ; $5a25: $be
	inc  d                                           ; $5a26: $14
	ld   d, $fe                                      ; $5a27: $16 $fe
	add  c                                           ; $5a29: $81
	nop                                              ; $5a2a: $00
	ld   de, $5f62                                   ; $5a2b: $11 $62 $5f
	ld   a, a                                        ; $5a2e: $7f
	ccf                                              ; $5a2f: $3f
	cp   c                                           ; $5a30: $b9
	cp   a                                           ; $5a31: $bf
	add  [hl]                                        ; $5a32: $86
	ld   a, a                                        ; $5a33: $7f
	inc  bc                                          ; $5a34: $03
	ld   a, a                                        ; $5a35: $7f
	rst  ToBoot                                         ; $5a36: $c7
	dec  de                                          ; $5a37: $1b
	xor  a                                           ; $5a38: $af
	db   $fd                                         ; $5a39: $fd
	ld   a, $ee                                      ; $5a3a: $3e $ee
	rst  JumpTable                                         ; $5a3c: $df
	ld   a, a                                        ; $5a3d: $7f
	add  b                                           ; $5a3e: $80
	ld   a, $01                                      ; $5a3f: $3e $01
	rla                                              ; $5a41: $17
	sub  a                                           ; $5a42: $97
	add  b                                           ; $5a43: $80
	xor  d                                           ; $5a44: $aa
	ld   bc, $1494                                   ; $5a45: $01 $94 $14
	add  b                                           ; $5a48: $80
	jr   nz, jr_071_59cf                             ; $5a49: $20 $84

	nop                                              ; $5a4b: $00
	dec  b                                           ; $5a4c: $05
	dec  b                                           ; $5a4d: $05
	rlca                                             ; $5a4e: $07
	ld   [$020f], sp                                 ; $5a4f: $08 $0f $02
	rlca                                             ; $5a52: $07
	add  b                                           ; $5a53: $80
	xor  e                                           ; $5a54: $ab
	add  b                                           ; $5a55: $80
	ld   e, a                                        ; $5a56: $5f
	add  b                                           ; $5a57: $80
	rra                                              ; $5a58: $1f
	ld   e, $15                                      ; $5a59: $1e $15
	ccf                                              ; $5a5b: $3f
	ld   [bc], a                                     ; $5a5c: $02
	ld   a, a                                        ; $5a5d: $7f
	ld   b, $7f                                      ; $5a5e: $06 $7f
	and  h                                           ; $5a60: $a4
	rst  $38                                         ; $5a61: $ff
	xor  c                                           ; $5a62: $a9
	rst  $38                                         ; $5a63: $ff
	ret  c                                           ; $5a64: $d8

	rst  $38                                         ; $5a65: $ff
	ei                                               ; $5a66: $fb
	rst  $38                                         ; $5a67: $ff
	xor  d                                           ; $5a68: $aa
	rst  $38                                         ; $5a69: $ff
	xor  d                                           ; $5a6a: $aa
	rst  $38                                         ; $5a6b: $ff
	ld   [$50ff], a                                  ; $5a6c: $ea $ff $50
	rst  $38                                         ; $5a6f: $ff
	ld   e, d                                        ; $5a70: $5a
	rst  $38                                         ; $5a71: $ff
	ld   c, a                                        ; $5a72: $4f
	cp   $a9                                         ; $5a73: $fe $a9
	rst  $38                                         ; $5a75: $ff
	rlca                                             ; $5a76: $07
	rst  $38                                         ; $5a77: $ff
	rrca                                             ; $5a78: $0f
	add  c                                           ; $5a79: $81
	nop                                              ; $5a7a: $00
	add  b                                           ; $5a7b: $80
	ld   bc, $0a80                                   ; $5a7c: $01 $80 $0a
	add  h                                           ; $5a7f: $84
	rrca                                             ; $5a80: $0f
	inc  bc                                          ; $5a81: $03
	dec  bc                                          ; $5a82: $0b
	rrca                                             ; $5a83: $0f
	pop  af                                          ; $5a84: $f1
	dec  b                                           ; $5a85: $05
	add  b                                           ; $5a86: $80
	ld   [bc], a                                     ; $5a87: $02
	add  b                                           ; $5a88: $80
	ld   b, c                                        ; $5a89: $41
	add  b                                           ; $5a8a: $80
	xor  d                                           ; $5a8b: $aa
	add  b                                           ; $5a8c: $80
	ld   [hl], c                                     ; $5a8d: $71
	add  b                                           ; $5a8e: $80
	ei                                               ; $5a8f: $fb
	add  b                                           ; $5a90: $80
	rst  $38                                         ; $5a91: $ff
	add  hl, bc                                      ; $5a92: $09
	cp   e                                           ; $5a93: $bb
	rst  $38                                         ; $5a94: $ff
	cp   [hl]                                        ; $5a95: $be
	rst  $38                                         ; $5a96: $ff
	and  c                                           ; $5a97: $a1
	xor  a                                           ; $5a98: $af
	dec  d                                           ; $5a99: $15
	rra                                              ; $5a9a: $1f
	ld   l, $2f                                      ; $5a9b: $2e $2f
	add  b                                           ; $5a9d: $80
	push bc                                          ; $5a9e: $c5
	add  b                                           ; $5a9f: $80
	xor  e                                           ; $5aa0: $ab
	dec  d                                           ; $5aa1: $15
	rst  JumpTable                                         ; $5aa2: $df
	rst  $38                                         ; $5aa3: $ff
	call $9afd                                       ; $5aa4: $cd $fd $9a
	ld   a, [$fe74]                                  ; $5aa7: $fa $74 $fe
	jr   c, @+$01                                    ; $5aaa: $38 $ff

	sub  l                                           ; $5aac: $95
	cp   a                                           ; $5aad: $bf
	ld   h, a                                        ; $5aae: $67
	ld   a, a                                        ; $5aaf: $7f
	and  a                                           ; $5ab0: $a7
	rst  $38                                         ; $5ab1: $ff
	add  d                                           ; $5ab2: $82
	rst  $38                                         ; $5ab3: $ff
	ld   d, h                                        ; $5ab4: $54
	ld   a, a                                        ; $5ab5: $7f
	ld   d, c                                        ; $5ab6: $51
	ld   d, b                                        ; $5ab7: $50
	add  b                                           ; $5ab8: $80
	ld   a, [$ab0d]                                  ; $5ab9: $fa $0d $ab
	rst  $38                                         ; $5abc: $ff
	add  hl, bc                                      ; $5abd: $09
	rst  $38                                         ; $5abe: $ff
	xor  d                                           ; $5abf: $aa
	rst  $38                                         ; $5ac0: $ff
	rst  $30                                         ; $5ac1: $f7
	rst  $38                                         ; $5ac2: $ff
	db   $fd                                         ; $5ac3: $fd
	rst  $38                                         ; $5ac4: $ff
	db   $fc                                         ; $5ac5: $fc
	rst  $38                                         ; $5ac6: $ff
	xor  a                                           ; $5ac7: $af
	ld   d, c                                        ; $5ac8: $51
	add  b                                           ; $5ac9: $80
	adc  d                                           ; $5aca: $8a
	add  b                                           ; $5acb: $80
	db   $dd                                         ; $5acc: $dd
	dec  bc                                          ; $5acd: $0b
	ld   e, a                                        ; $5ace: $5f
	rst  $38                                         ; $5acf: $ff
	xor  e                                           ; $5ad0: $ab
	rst  $38                                         ; $5ad1: $ff
	and  l                                           ; $5ad2: $a5
	rst  $38                                         ; $5ad3: $ff
	ld   b, a                                        ; $5ad4: $47
	cp   $4a                                         ; $5ad5: $fe $4a
	rst  $38                                         ; $5ad7: $ff
	rst  $10                                         ; $5ad8: $d7
	ld   [hl], l                                     ; $5ad9: $75
	add  b                                           ; $5ada: $80
	and  e                                           ; $5adb: $a3
	add  b                                           ; $5adc: $80
	rst  $30                                         ; $5add: $f7
	add  b                                           ; $5ade: $80
	rst  $38                                         ; $5adf: $ff
	ld   hl, $ffba                                   ; $5ae0: $21 $ba $ff
	jr   @+$01                                       ; $5ae3: $18 $ff

	xor  d                                           ; $5ae5: $aa
	rst  $38                                         ; $5ae6: $ff
	rst  $30                                         ; $5ae7: $f7
	rst  $38                                         ; $5ae8: $ff
	cp   d                                           ; $5ae9: $ba
	ld   d, l                                        ; $5aea: $55
	db   $eb                                         ; $5aeb: $eb
	ei                                               ; $5aec: $fb
	sub  c                                           ; $5aed: $91
	pop  af                                          ; $5aee: $f1
	ld   l, e                                        ; $5aef: $6b
	ld   a, [$f57b]                                  ; $5af0: $fa $7b $f5
	ld   d, [hl]                                     ; $5af3: $56
	rst  $38                                         ; $5af4: $ff
	jp   z, $cafd                                    ; $5af5: $ca $fd $ca

	rst  JumpTable                                         ; $5af8: $df
	dec  hl                                          ; $5af9: $2b
	rst  $38                                         ; $5afa: $ff
	ld   e, a                                        ; $5afb: $5f
	rst  $38                                         ; $5afc: $ff
	ld   d, a                                        ; $5afd: $57
	rst  $38                                         ; $5afe: $ff
	cp   l                                           ; $5aff: $bd
	db   $eb                                         ; $5b00: $eb
	call nz, $8045                                   ; $5b01: $c4 $45 $80
	xor  $05                                         ; $5b04: $ee $05
	xor  a                                           ; $5b06: $af
	ld   a, l                                        ; $5b07: $7d
	add  e                                           ; $5b08: $83
	or   [hl]                                        ; $5b09: $b6
	cp   d                                           ; $5b0a: $ba
	and  d                                           ; $5b0b: $a2
	add  b                                           ; $5b0c: $80
	rst  $30                                         ; $5b0d: $f7
	inc  hl                                          ; $5b0e: $23
	ld   [$61ff], a                                  ; $5b0f: $ea $ff $61
	rst  $38                                         ; $5b12: $ff
	add  hl, hl                                      ; $5b13: $29
	ld   a, l                                        ; $5b14: $7d
	ld   c, $2e                                      ; $5b15: $0e $2e
	ld   d, l                                        ; $5b17: $55
	rst  $30                                         ; $5b18: $f7
	ld   a, [bc]                                     ; $5b19: $0a
	db   $fd                                         ; $5b1a: $fd
	db   $10                                         ; $5b1b: $10
	cp   a                                           ; $5b1c: $bf
	ld   e, b                                        ; $5b1d: $58
	cp   $29                                         ; $5b1e: $fe $29
	rst  $38                                         ; $5b20: $ff
	ld   [hl], c                                     ; $5b21: $71
	rst  $38                                         ; $5b22: $ff
	ld   [hl], l                                     ; $5b23: $75
	ld   a, a                                        ; $5b24: $7f
	and  h                                           ; $5b25: $a4
	cp   a                                           ; $5b26: $bf
	nop                                              ; $5b27: $00
	rra                                              ; $5b28: $1f
	and  d                                           ; $5b29: $a2
	or   a                                           ; $5b2a: $b7
	ld   h, $1b                                      ; $5b2b: $26 $1b
	ld   a, [de]                                     ; $5b2d: $1a
	dec  de                                          ; $5b2e: $1b
	inc  hl                                          ; $5b2f: $23
	ld   a, $6c                                      ; $5b30: $3e $6c
	ld   c, [hl]                                     ; $5b32: $4e
	add  b                                           ; $5b33: $80
	xor  a                                           ; $5b34: $af
	add  b                                           ; $5b35: $80
	xor  $04                                         ; $5b36: $ee $04
	xor  a                                           ; $5b38: $af
	rst  $28                                         ; $5b39: $ef
	ld   c, $ee                                      ; $5b3a: $0e $ee
	cp   h                                           ; $5b3c: $bc
	add  c                                           ; $5b3d: $81
	nop                                              ; $5b3e: $00
	add  b                                           ; $5b3f: $80
	ld   d, l                                        ; $5b40: $55
	add  b                                           ; $5b41: $80
	cp   a                                           ; $5b42: $bf
	add  b                                           ; $5b43: $80
	ld   a, a                                        ; $5b44: $7f
	add  b                                           ; $5b45: $80
	rst  $38                                         ; $5b46: $ff
	add  b                                           ; $5b47: $80
	ld   a, a                                        ; $5b48: $7f
	add  b                                           ; $5b49: $80
	cp   $03                                         ; $5b4a: $fe $03
	nop                                              ; $5b4c: $00
	rst  $38                                         ; $5b4d: $ff
	xor  b                                           ; $5b4e: $a8
	ld   d, a                                        ; $5b4f: $57
	add  b                                           ; $5b50: $80
	ld   [hl+], a                                    ; $5b51: $22
	add  b                                           ; $5b52: $80
	add  c                                           ; $5b53: $81
	add  b                                           ; $5b54: $80
	ld   e, h                                        ; $5b55: $5c
	ld   [$f4f0], sp                                 ; $5b56: $08 $f0 $f4
	call nz, $10dc                                   ; $5b59: $c4 $dc $10
	ld   a, h                                        ; $5b5c: $7c
	ld   [hl], b                                     ; $5b5d: $70
	rst  $38                                         ; $5b5e: $ff
	nop                                              ; $5b5f: $00
	add  c                                           ; $5b60: $81
	rst  $38                                         ; $5b61: $ff
	add  b                                           ; $5b62: $80
	ld   a, a                                        ; $5b63: $7f
	add  a                                           ; $5b64: $87
	nop                                              ; $5b65: $00
	adc  c                                           ; $5b66: $89
	ldh  a, [rIF]                                    ; $5b67: $f0 $0f
	or   b                                           ; $5b69: $b0
	ldh  a, [$30]                                    ; $5b6a: $f0 $30
	ldh  a, [$7a]                                    ; $5b6c: $f0 $7a
	rrca                                             ; $5b6e: $0f
	ld   bc, $010f                                   ; $5b6f: $01 $0f $01
	rrca                                             ; $5b72: $0f
	inc  b                                           ; $5b73: $04
	rrca                                             ; $5b74: $0f
	inc  b                                           ; $5b75: $04
	rrca                                             ; $5b76: $0f
	ld   [$800d], sp                                 ; $5b77: $08 $0d $80
	ld   [$0580], sp                                 ; $5b7a: $08 $80 $05
	jr   jr_071_5bad                                 ; $5b7d: $18 $2e

	rst  $38                                         ; $5b7f: $ff
	and  [hl]                                        ; $5b80: $a6
	rst  $38                                         ; $5b81: $ff
	and  e                                           ; $5b82: $a3
	rst  $38                                         ; $5b83: $ff
	add  l                                           ; $5b84: $85
	rst  $38                                         ; $5b85: $ff
	sub  h                                           ; $5b86: $94
	rst  $38                                         ; $5b87: $ff
	sub  d                                           ; $5b88: $92
	rst  $30                                         ; $5b89: $f7
	ld   d, a                                        ; $5b8a: $57
	rst  $38                                         ; $5b8b: $ff
	ld   h, d                                        ; $5b8c: $62
	ld   a, l                                        ; $5b8d: $7d
	or   b                                           ; $5b8e: $b0
	ld   hl, sp-$73                                  ; $5b8f: $f8 $8d
	db   $fd                                         ; $5b91: $fd
	push bc                                          ; $5b92: $c5
	rst  $38                                         ; $5b93: $ff
	add  sp, -$01                                    ; $5b94: $e8 $ff
	db   $fd                                         ; $5b96: $fd
	add  c                                           ; $5b97: $81
	rst  $38                                         ; $5b98: $ff
	dec  c                                           ; $5b99: $0d
	ld   a, a                                        ; $5b9a: $7f
	rst  $38                                         ; $5b9b: $ff
	ccf                                              ; $5b9c: $3f
	rst  $38                                         ; $5b9d: $ff
	inc  bc                                          ; $5b9e: $03
	cp   a                                           ; $5b9f: $bf
	dec  c                                           ; $5ba0: $0d
	ld   a, a                                        ; $5ba1: $7f
	dec  [hl]                                        ; $5ba2: $35
	rst  $38                                         ; $5ba3: $ff
	dec  sp                                          ; $5ba4: $3b
	rst  $38                                         ; $5ba5: $ff
	ld   e, l                                        ; $5ba6: $5d
	db   $dd                                         ; $5ba7: $dd
	add  d                                           ; $5ba8: $82
	rst  $38                                         ; $5ba9: $ff
	add  b                                           ; $5baa: $80
	rst  $30                                         ; $5bab: $f7
	add  b                                           ; $5bac: $80

jr_071_5bad:
	ei                                               ; $5bad: $fb
	add  b                                           ; $5bae: $80
	db   $fd                                         ; $5baf: $fd
	add  b                                           ; $5bb0: $80
	xor  b                                           ; $5bb1: $a8
	add  b                                           ; $5bb2: $80
	ld   d, l                                        ; $5bb3: $55
	ld   a, $ab                                      ; $5bb4: $3e $ab
	cp   a                                           ; $5bb6: $bf
	ret  nz                                          ; $5bb7: $c0

	cp   $ea                                         ; $5bb8: $fe $ea
	rst  JumpTable                                         ; $5bba: $df
	xor  c                                           ; $5bbb: $a9
	cp   l                                           ; $5bbc: $bd
	jp   z, $96ff                                    ; $5bbd: $ca $ff $96

	rst  $38                                         ; $5bc0: $ff
	add  a                                           ; $5bc1: $87
	rst  $30                                         ; $5bc2: $f7
	sub  $fb                                         ; $5bc3: $d6 $fb
	push de                                          ; $5bc5: $d5
	rst  JumpTable                                         ; $5bc6: $df
	ld   l, l                                        ; $5bc7: $6d
	rst  $28                                         ; $5bc8: $ef
	ld   b, h                                        ; $5bc9: $44
	rst  ToBoot                                         ; $5bca: $c7
	adc  c                                           ; $5bcb: $89
	ld   a, [hl+]                                    ; $5bcc: $2a
	ld   hl, sp-$06                                  ; $5bcd: $f8 $fa
	add  a                                           ; $5bcf: $87
	rst  $38                                         ; $5bd0: $ff
	ld   d, l                                        ; $5bd1: $55
	rst  $38                                         ; $5bd2: $ff
	jr   z, @+$01                                    ; $5bd3: $28 $ff

	ld   [$a2ff], sp                                 ; $5bd5: $08 $ff $a2
	rst  $30                                         ; $5bd8: $f7
	ei                                               ; $5bd9: $fb
	rst  $38                                         ; $5bda: $ff
	add  hl, hl                                      ; $5bdb: $29
	xor  l                                           ; $5bdc: $ad
	adc  l                                           ; $5bdd: $8d
	ld   a, [bc]                                     ; $5bde: $0a
	ret  nc                                          ; $5bdf: $d0

	push de                                          ; $5be0: $d5
	rst  $10                                         ; $5be1: $d7
	db   $fc                                         ; $5be2: $fc
	add  a                                           ; $5be3: $87
	rst  $38                                         ; $5be4: $ff
	ld   e, b                                        ; $5be5: $58
	push af                                          ; $5be6: $f5
	ld   e, [hl]                                     ; $5be7: $5e
	ld   a, [$dd0c]                                  ; $5be8: $fa $0c $dd
	dec  hl                                          ; $5beb: $2b
	ld   [hl], d                                     ; $5bec: $72
	dec  [hl]                                        ; $5bed: $35
	dec  e                                           ; $5bee: $1d
	xor  b                                           ; $5bef: $a8
	ld   l, $e7                                      ; $5bf0: $2e $e7
	ld   a, a                                        ; $5bf2: $7f
	rst  JumpTable                                         ; $5bf3: $df
	add  c                                           ; $5bf4: $81
	rst  $38                                         ; $5bf5: $ff
	rrca                                             ; $5bf6: $0f
	db   $dd                                         ; $5bf7: $dd
	rst  $38                                         ; $5bf8: $ff
	ld   h, c                                        ; $5bf9: $61
	ld   a, a                                        ; $5bfa: $7f
	db   $e3                                         ; $5bfb: $e3
	rst  $38                                         ; $5bfc: $ff
	dec  de                                          ; $5bfd: $1b
	ld   a, l                                        ; $5bfe: $7d
	ld   a, a                                        ; $5bff: $7f

Call_071_5c00:
	rst  $38                                         ; $5c00: $ff
	or   $7f                                         ; $5c01: $f6 $7f
	dec  c                                           ; $5c03: $0d
	ld   a, a                                        ; $5c04: $7f
	ld   l, e                                        ; $5c05: $6b
	ld   l, a                                        ; $5c06: $6f
	add  b                                           ; $5c07: $80
	rra                                              ; $5c08: $1f
	add  c                                           ; $5c09: $81
	ccf                                              ; $5c0a: $3f
	dec  e                                           ; $5c0b: $1d
	cp   a                                           ; $5c0c: $bf
	ld   a, e                                        ; $5c0d: $7b
	rst  $38                                         ; $5c0e: $ff
	push bc                                          ; $5c0f: $c5
	rst  $38                                         ; $5c10: $ff
	ld   e, e                                        ; $5c11: $5b
	rst  $38                                         ; $5c12: $ff
	and  b                                           ; $5c13: $a0
	rst  $38                                         ; $5c14: $ff
	db   $e3                                         ; $5c15: $e3
	rst  $38                                         ; $5c16: $ff
	rst  $28                                         ; $5c17: $ef
	rst  $38                                         ; $5c18: $ff
	cp   b                                           ; $5c19: $b8
	rst  $38                                         ; $5c1a: $ff
	or   c                                           ; $5c1b: $b1
	cp   a                                           ; $5c1c: $bf
	ld   c, e                                        ; $5c1d: $4b
	rst  $28                                         ; $5c1e: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c1f: $cf
	rst  $28                                         ; $5c20: $ef
	xor  $ef                                         ; $5c21: $ee $ef
	db   $fc                                         ; $5c23: $fc
	rst  $38                                         ; $5c24: $ff
	pop  bc                                          ; $5c25: $c1
	rst  $38                                         ; $5c26: $ff
	and  c                                           ; $5c27: $a1
	rst  JumpTable                                         ; $5c28: $df
	ld   e, a                                        ; $5c29: $5f
	add  b                                           ; $5c2a: $80
	rst  JumpTable                                         ; $5c2b: $df
	inc  c                                           ; $5c2c: $0c
	sbc  a                                           ; $5c2d: $9f
	or   [hl]                                        ; $5c2e: $b6

jr_071_5c2f:
	ld   sp, hl                                      ; $5c2f: $f9
	ld   de, $c8e7                                   ; $5c30: $11 $e7 $c8
	inc  de                                          ; $5c33: $13
	jr   nz, @+$4e                                   ; $5c34: $20 $4c

	add  b                                           ; $5c36: $80
	jr   nc, jr_071_5c39                             ; $5c37: $30 $00

jr_071_5c39:
	ret  nz                                          ; $5c39: $c0

	add  d                                           ; $5c3a: $82
	nop                                              ; $5c3b: $00
	inc  bc                                          ; $5c3c: $03
	jr   nc, jr_071_5c2f                             ; $5c3d: $30 $f0

	nop                                              ; $5c3f: $00
	ret  nz                                          ; $5c40: $c0

	adc  e                                           ; $5c41: $8b
	nop                                              ; $5c42: $00
	dec  b                                           ; $5c43: $05
	rst  $38                                         ; $5c44: $ff
	ld   e, a                                        ; $5c45: $5f
	rst  $38                                         ; $5c46: $ff
	ld   c, e                                        ; $5c47: $4b
	rst  $38                                         ; $5c48: $ff
	db   $eb                                         ; $5c49: $eb
	add  c                                           ; $5c4a: $81
	rst  $38                                         ; $5c4b: $ff
	ld   b, $5f                                      ; $5c4c: $06 $5f
	rst  $38                                         ; $5c4e: $ff
	adc  [hl]                                        ; $5c4f: $8e
	rst  $38                                         ; $5c50: $ff
	ld   [hl], h                                     ; $5c51: $74
	ld   e, a                                        ; $5c52: $5f
	dec  b                                           ; $5c53: $05
	adc  c                                           ; $5c54: $89
	nop                                              ; $5c55: $00
	add  b                                           ; $5c56: $80
	dec  b                                           ; $5c57: $05
	add  b                                           ; $5c58: $80
	dec  bc                                          ; $5c59: $0b
	add  b                                           ; $5c5a: $80
	ld   a, [bc]                                     ; $5c5b: $0a
	add  h                                           ; $5c5c: $84
	rrca                                             ; $5c5d: $0f
	add  b                                           ; $5c5e: $80
	rlca                                             ; $5c5f: $07
	add  b                                           ; $5c60: $80
	rrca                                             ; $5c61: $0f
	rlca                                             ; $5c62: $07
	inc  c                                           ; $5c63: $0c
	dec  c                                           ; $5c64: $0d
	inc  c                                           ; $5c65: $0c
	rrca                                             ; $5c66: $0f
	jp   $e8cb                                       ; $5c67: $c3 $cb $e8


	ldh  [c], a                                      ; $5c6a: $e2
	add  b                                           ; $5c6b: $80
	ld   d, c                                        ; $5c6c: $51
	add  b                                           ; $5c6d: $80
	ld   [$f580], a                                  ; $5c6e: $ea $80 $f5
	add  b                                           ; $5c71: $80
	rst  $38                                         ; $5c72: $ff
	inc  de                                          ; $5c73: $13
	rst  $10                                         ; $5c74: $d7
	ld   e, a                                        ; $5c75: $5f
	push af                                          ; $5c76: $f5
	xor  c                                           ; $5c77: $a9
	xor  a                                           ; $5c78: $af
	ei                                               ; $5c79: $fb
	ld   a, l                                        ; $5c7a: $7d
	db   $fd                                         ; $5c7b: $fd
	dec  [hl]                                        ; $5c7c: $35
	ld   a, a                                        ; $5c7d: $7f
	ldh  [$96], a                                    ; $5c7e: $e0 $96
	ld   bc, $896a                                   ; $5c80: $01 $6a $89
	push af                                          ; $5c83: $f5
	ldh  a, [$da]                                    ; $5c84: $f0 $da
	cp   h                                           ; $5c86: $bc
	cp   l                                           ; $5c87: $bd
	add  b                                           ; $5c88: $80
	ld   a, e                                        ; $5c89: $7b
	add  b                                           ; $5c8a: $80
	or   $40                                         ; $5c8b: $f6 $40
	sbc  d                                           ; $5c8d: $9a
	pop  de                                          ; $5c8e: $d1
	ld   d, h                                        ; $5c8f: $54
	add  sp, $5c                                     ; $5c90: $e8 $5c
	push af                                          ; $5c92: $f5
	adc  a                                           ; $5c93: $8f
	ld   e, [hl]                                     ; $5c94: $5e
	ld   [hl], h                                     ; $5c95: $74
	rst  JumpTable                                         ; $5c96: $df
	sbc  c                                           ; $5c97: $99
	xor  b                                           ; $5c98: $a8
	push bc                                          ; $5c99: $c5
	rst  $10                                         ; $5c9a: $d7
	daa                                              ; $5c9b: $27
	and  e                                           ; $5c9c: $a3
	or   c                                           ; $5c9d: $b1
	rst  $30                                         ; $5c9e: $f7
	cp   b                                           ; $5c9f: $b8
	cp   a                                           ; $5ca0: $bf
	ld   a, h                                        ; $5ca1: $7c
	scf                                              ; $5ca2: $37
	ld   [hl], d                                     ; $5ca3: $72
	dec  hl                                          ; $5ca4: $2b
	ld   a, $77                                      ; $5ca5: $3e $77
	ld   l, h                                        ; $5ca7: $6c
	xor  d                                           ; $5ca8: $aa
	rrca                                             ; $5ca9: $0f
	and  l                                           ; $5caa: $a5
	ld   [hl], l                                     ; $5cab: $75
	ld   a, [hl]                                     ; $5cac: $7e
	push de                                          ; $5cad: $d5
	rst  $38                                         ; $5cae: $ff
	adc  l                                           ; $5caf: $8d
	rst  $38                                         ; $5cb0: $ff
	sbc  e                                           ; $5cb1: $9b
	ei                                               ; $5cb2: $fb
	ld   a, d                                        ; $5cb3: $7a
	ld   a, e                                        ; $5cb4: $7b
	add  hl, de                                      ; $5cb5: $19
	ld   sp, $1f01                                   ; $5cb6: $31 $01 $1f
	ldh  a, [$de]                                    ; $5cb9: $f0 $de
	ld   d, b                                        ; $5cbb: $50
	db   $fc                                         ; $5cbc: $fc
	sbc  h                                           ; $5cbd: $9c
	sbc  $df                                         ; $5cbe: $de $df
	rst  $38                                         ; $5cc0: $ff
	push hl                                          ; $5cc1: $e5
	rst  $38                                         ; $5cc2: $ff
	ei                                               ; $5cc3: $fb
	rst  $38                                         ; $5cc4: $ff
	ei                                               ; $5cc5: $fb
	rst  $38                                         ; $5cc6: $ff
	ld   a, a                                        ; $5cc7: $7f
	rst  $38                                         ; $5cc8: $ff
	sub  h                                           ; $5cc9: $94
	rst  $38                                         ; $5cca: $ff
	sbc  a                                           ; $5ccb: $9f
	rst  $38                                         ; $5ccc: $ff
	ld   a, a                                        ; $5ccd: $7f
	add  c                                           ; $5cce: $81
	rst  $38                                         ; $5ccf: $ff
	dec  [hl]                                        ; $5cd0: $35
	ld   a, l                                        ; $5cd1: $7d
	cp   $f0                                         ; $5cd2: $fe $f0
	db   $fd                                         ; $5cd4: $fd
	add  a                                           ; $5cd5: $87
	rst  $38                                         ; $5cd6: $ff
	adc  $ff                                         ; $5cd7: $ce $ff
	add  hl, sp                                      ; $5cd9: $39
	ld   a, a                                        ; $5cda: $7f
	ld   a, l                                        ; $5cdb: $7d
	ld   a, a                                        ; $5cdc: $7f
	inc  sp                                          ; $5cdd: $33
	ld   a, a                                        ; $5cde: $7f
	or   $cf                                         ; $5cdf: $f6 $cf
	ld   a, [bc]                                     ; $5ce1: $0a
	db   $e3                                         ; $5ce2: $e3
	xor  $ef                                         ; $5ce3: $ee $ef
	ld   d, $f8                                      ; $5ce5: $16 $f8
	ret  nc                                          ; $5ce7: $d0

	ldh  [$03], a                                    ; $5ce8: $e0 $03
	cp   a                                           ; $5cea: $bf
	call c, Call_071_65ff                            ; $5ceb: $dc $ff $65
	or   $04                                         ; $5cee: $f6 $04
	ld   a, b                                        ; $5cf0: $78
	pop  af                                          ; $5cf1: $f1
	ret  nz                                          ; $5cf2: $c0

	add  [hl]                                        ; $5cf3: $86
	nop                                              ; $5cf4: $00
	dec  de                                          ; $5cf5: $1b
	inc  bc                                          ; $5cf6: $03
	ld   l, h                                        ; $5cf7: $6c
	rrca                                             ; $5cf8: $0f
	inc  hl                                          ; $5cf9: $23
	cp   [hl]                                        ; $5cfa: $be
	ld   h, [hl]                                     ; $5cfb: $66
	add  b                                           ; $5cfc: $80
	dec  de                                          ; $5cfd: $1b
	inc  bc                                          ; $5cfe: $03
	ld   l, h                                        ; $5cff: $6c
	rrca                                             ; $5d00: $0f
	or   b                                           ; $5d01: $b0
	inc  a                                           ; $5d02: $3c
	ret  nz                                          ; $5d03: $c0

	ldh  a, [rP1]                                    ; $5d04: $f0 $00
	ret  nz                                          ; $5d06: $c0

	add  b                                           ; $5d07: $80
	nop                                              ; $5d08: $00
	dec  b                                           ; $5d09: $05
	pop  hl                                          ; $5d0a: $e1
	rra                                              ; $5d0b: $1f
	sbc  $df                                         ; $5d0c: $de $df
	nop                                              ; $5d0e: $00
	rst  $38                                         ; $5d0f: $ff
	add  b                                           ; $5d10: $80
	ld   hl, sp-$7a                                  ; $5d11: $f8 $86
	nop                                              ; $5d13: $00
	add  b                                           ; $5d14: $80
	ld   a, [bc]                                     ; $5d15: $0a
	add  b                                           ; $5d16: $80
	ld   e, h                                        ; $5d17: $5c
	add  b                                           ; $5d18: $80
	ld   [$0088], sp                                 ; $5d19: $08 $88 $00
	dec  c                                           ; $5d1c: $0d
	xor  l                                           ; $5d1d: $ad
	xor  a                                           ; $5d1e: $af
	rla                                              ; $5d1f: $17
	dec  d                                           ; $5d20: $15
	dec  a                                           ; $5d21: $3d
	ccf                                              ; $5d22: $3f
	db   $10                                         ; $5d23: $10
	rla                                              ; $5d24: $17
	ld   b, $03                                      ; $5d25: $06 $03
	ld   b, $07                                      ; $5d27: $06 $07
	ld   a, [bc]                                     ; $5d29: $0a
	dec  bc                                          ; $5d2a: $0b
	add  b                                           ; $5d2b: $80
	ld   bc, $008c                                   ; $5d2c: $01 $8c $00
	add  b                                           ; $5d2f: $80
	ld   bc, $0780                                   ; $5d30: $01 $80 $07
	add  b                                           ; $5d33: $80
	ld   [bc], a                                     ; $5d34: $02
	add  h                                           ; $5d35: $84
	nop                                              ; $5d36: $00
	add  b                                           ; $5d37: $80
	ld   d, c                                        ; $5d38: $51
	add  b                                           ; $5d39: $80
	ld   a, [hl-]                                    ; $5d3a: $3a
	add  b                                           ; $5d3b: $80
	ld   e, a                                        ; $5d3c: $5f
	dec  e                                           ; $5d3d: $1d
	ld   c, $0f                                      ; $5d3e: $0e $0f
	inc  bc                                          ; $5d40: $03
	ld   a, [bc]                                     ; $5d41: $0a
	ld   bc, $0a0d                                   ; $5d42: $01 $0d $0a
	rrca                                             ; $5d45: $0f
	add  hl, bc                                      ; $5d46: $09
	dec  bc                                          ; $5d47: $0b
	dec  b                                           ; $5d48: $05
	rrca                                             ; $5d49: $0f
	dec  c                                           ; $5d4a: $0d
	dec  bc                                          ; $5d4b: $0b
	ld   b, $07                                      ; $5d4c: $06 $07
	or   c                                           ; $5d4e: $b1
	ld   b, l                                        ; $5d4f: $45
	db   $ec                                         ; $5d50: $ec
	db   $eb                                         ; $5d51: $eb
	rst  $10                                         ; $5d52: $d7
	ld   a, [hl]                                     ; $5d53: $7e
	sbc  l                                           ; $5d54: $9d
	ld   [$5f89], a                                  ; $5d55: $ea $89 $5f
	and  b                                           ; $5d58: $a0
	xor  [hl]                                        ; $5d59: $ae
	inc  de                                          ; $5d5a: $13
	rla                                              ; $5d5b: $17
	add  b                                           ; $5d5c: $80
	and  b                                           ; $5d5d: $a0
	ld   a, [de]                                     ; $5d5e: $1a
	xor  c                                           ; $5d5f: $a9
	cp   $81                                         ; $5d60: $fe $81
	db   $fc                                         ; $5d62: $fc
	sub  c                                           ; $5d63: $91
	ei                                               ; $5d64: $fb
	ld   d, h                                        ; $5d65: $54

jr_071_5d66:
	or   $58                                         ; $5d66: $f6 $58
	ld   a, a                                        ; $5d68: $7f
	ld   a, l                                        ; $5d69: $7d
	xor  e                                           ; $5d6a: $ab
	rlca                                             ; $5d6b: $07
	dec  d                                           ; $5d6c: $15
	xor  e                                           ; $5d6d: $ab
	xor  d                                           ; $5d6e: $aa
	ld   b, l                                        ; $5d6f: $45
	dec  b                                           ; $5d70: $05
	ld   l, d                                        ; $5d71: $6a
	xor  d                                           ; $5d72: $aa
	rst  $38                                         ; $5d73: $ff
	ld   a, a                                        ; $5d74: $7f

jr_071_5d75:
	jr   c, jr_071_5db6                              ; $5d75: $38 $3f

	ld   h, a                                        ; $5d77: $67
	ld   a, a                                        ; $5d78: $7f
	rst  JumpTable                                         ; $5d79: $df
	add  b                                           ; $5d7a: $80
	ld   a, a                                        ; $5d7b: $7f
	add  hl, bc                                      ; $5d7c: $09
	rst  $38                                         ; $5d7d: $ff
	cp   h                                           ; $5d7e: $bc
	cp   a                                           ; $5d7f: $bf
	jr   z, jr_071_5d86                              ; $5d80: $28 $04

	inc  a                                           ; $5d82: $3c
	cpl                                              ; $5d83: $2f
	ld   [hl], c                                     ; $5d84: $71
	ld   a, a                                        ; $5d85: $7f

jr_071_5d86:
	xor  a                                           ; $5d86: $af
	add  c                                           ; $5d87: $81
	cp   a                                           ; $5d88: $bf
	dec  c                                           ; $5d89: $0d
	cp   [hl]                                        ; $5d8a: $be
	cp   a                                           ; $5d8b: $bf
	sbc  [hl]                                        ; $5d8c: $9e
	add  e                                           ; $5d8d: $83
	ld   hl, $7c3c                                   ; $5d8e: $21 $3c $7c
	ld   a, a                                        ; $5d91: $7f
	and  a                                           ; $5d92: $a7
	cp   a                                           ; $5d93: $bf
	jr   jr_071_5d75                                 ; $5d94: $18 $df

	call z, $80ef                                    ; $5d96: $cc $ef $80
	rst  $20                                         ; $5d99: $e7
	dec  bc                                          ; $5d9a: $0b
	call nz, $a0e7                                   ; $5d9b: $c4 $e7 $a0
	ldh  [$62], a                                    ; $5d9e: $e0 $62
	db   $e3                                         ; $5da0: $e3
	adc  $ff                                         ; $5da1: $ce $ff
	adc  l                                           ; $5da3: $8d
	cp   l                                           ; $5da4: $bd
	dec  a                                           ; $5da5: $3d
	cp   l                                           ; $5da6: $bd
	add  b                                           ; $5da7: $80
	sbc  l                                           ; $5da8: $9d
	dec  h                                           ; $5da9: $25
	sbc  e                                           ; $5daa: $9b
	sbc  h                                           ; $5dab: $9c
	add  sp, $70                                     ; $5dac: $e8 $70
	jr   nz, jr_071_5df0                             ; $5dae: $20 $40

	add  b                                           ; $5db0: $80
	nop                                              ; $5db1: $00
	ld   sp, $caff                                   ; $5db2: $31 $ff $ca
	db   $fc                                         ; $5db5: $fc

jr_071_5db6:
	ret  c                                           ; $5db6: $d8

	ldh  [rLCDC], a                                  ; $5db7: $e0 $40
	add  b                                           ; $5db9: $80
	ld   bc, $0600                                   ; $5dba: $01 $00 $06
	nop                                              ; $5dbd: $00
	dec  de                                          ; $5dbe: $1b
	inc  bc                                          ; $5dbf: $03
	ld   l, h                                        ; $5dc0: $6c
	rrca                                             ; $5dc1: $0f
	ld   a, l                                        ; $5dc2: $7d
	nop                                              ; $5dc3: $00
	ld   b, $00                                      ; $5dc4: $06 $00
	dec  de                                          ; $5dc6: $1b
	inc  bc                                          ; $5dc7: $03
	ld   l, h                                        ; $5dc8: $6c
	rrca                                             ; $5dc9: $0f
	or   b                                           ; $5dca: $b0
	inc  a                                           ; $5dcb: $3c
	ret  nz                                          ; $5dcc: $c0

	ldh  a, [rP1]                                    ; $5dcd: $f0 $00
	ret  nz                                          ; $5dcf: $c0

	add  b                                           ; $5dd0: $80
	nop                                              ; $5dd1: $00
	dec  b                                           ; $5dd2: $05
	call z, $c03c                                    ; $5dd3: $cc $3c $c0
	ldh  a, [rP1]                                    ; $5dd6: $f0 $00
	ret  nz                                          ; $5dd8: $c0

	adc  [hl]                                        ; $5dd9: $8e
	nop                                              ; $5dda: $00
	add  b                                           ; $5ddb: $80
	ld   bc, $0a80                                   ; $5ddc: $01 $80 $0a
	add  b                                           ; $5ddf: $80
	ld   bc, $0082                                   ; $5de0: $01 $82 $00
	add  b                                           ; $5de3: $80
	jr   nz, jr_071_5d66                             ; $5de4: $20 $80

	dec  b                                           ; $5de6: $05
	add  b                                           ; $5de7: $80
	xor  e                                           ; $5de8: $ab
	rlca                                             ; $5de9: $07
	ld   a, d                                        ; $5dea: $7a
	ld   a, a                                        ; $5deb: $7f
	pop  af                                          ; $5dec: $f1
	rst  $38                                         ; $5ded: $ff
	ld   d, l                                        ; $5dee: $55
	ld   e, a                                        ; $5def: $5f

jr_071_5df0:
	inc  c                                           ; $5df0: $0c
	dec  c                                           ; $5df1: $0d
	add  b                                           ; $5df2: $80
	rra                                              ; $5df3: $1f
	ld   d, $30                                      ; $5df4: $16 $30
	ccf                                              ; $5df6: $3f
	and  a                                           ; $5df7: $a7
	rst  $38                                         ; $5df8: $ff
	sub  a                                           ; $5df9: $97
	rst  $38                                         ; $5dfa: $ff
	cp   a                                           ; $5dfb: $bf
	rst  $38                                         ; $5dfc: $ff
	ld   a, a                                        ; $5dfd: $7f
	rst  $38                                         ; $5dfe: $ff
	push af                                          ; $5dff: $f5
	rst  $38                                         ; $5e00: $ff
	and  c                                           ; $5e01: $a1
	rst  $38                                         ; $5e02: $ff
	ld   d, e                                        ; $5e03: $53
	rst  $38                                         ; $5e04: $ff
	rlca                                             ; $5e05: $07
	rst  $38                                         ; $5e06: $ff
	cp   $ff                                         ; $5e07: $fe $ff
	cp   [hl]                                        ; $5e09: $be
	rst  $38                                         ; $5e0a: $ff
	cp   a                                           ; $5e0b: $bf
	add  a                                           ; $5e0c: $87
	rst  $38                                         ; $5e0d: $ff
	ld   b, $1f                                      ; $5e0e: $06 $1f
	ldh  a, [$60]                                    ; $5e10: $f0 $60
	ld   [hl], b                                     ; $5e12: $70
	and  b                                           ; $5e13: $a0
	ldh  a, [$50]                                    ; $5e14: $f0 $50
	add  c                                           ; $5e16: $81
	ldh  a, [rTAC]                                   ; $5e17: $f0 $07
	ldh  [$f0], a                                    ; $5e19: $e0 $f0
	ld   d, b                                        ; $5e1b: $50
	ldh  a, [$50]                                    ; $5e1c: $f0 $50
	ldh  a, [$eb]                                    ; $5e1e: $f0 $eb
	dec  bc                                          ; $5e20: $0b
	add  b                                           ; $5e21: $80

jr_071_5e22:
	dec  b                                           ; $5e22: $05
	add  h                                           ; $5e23: $84
	nop                                              ; $5e24: $00
	add  b                                           ; $5e25: $80
	ld   bc, $0380                                   ; $5e26: $01 $80 $03
	add  b                                           ; $5e29: $80
	ld   bc, $01b0                                   ; $5e2a: $01 $b0 $01
	add  [hl]                                        ; $5e2d: $86
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	ld   c, $85                                      ; $5e30: $0e $85
	rrca                                             ; $5e32: $0f
	nop                                              ; $5e33: $00
	ld   bc, $0085                                   ; $5e34: $01 $85 $00
	ld   [$ffde], sp                                 ; $5e37: $08 $de $ff
	rst  ToBoot                                         ; $5e3a: $c7
	rst  $38                                         ; $5e3b: $ff
	db   $e3                                         ; $5e3c: $e3
	rst  $38                                         ; $5e3d: $ff
	ld   sp, hl                                      ; $5e3e: $f9
	rst  $38                                         ; $5e3f: $ff
	inc  bc                                          ; $5e40: $03
	add  l                                           ; $5e41: $85
	nop                                              ; $5e42: $00
	ld   [$ffcf], sp                                 ; $5e43: $08 $cf $ff
	rst  ToBoot                                         ; $5e46: $c7
	rst  $38                                         ; $5e47: $ff
	di                                               ; $5e48: $f3
	rst  $38                                         ; $5e49: $ff
	ld   hl, sp-$01                                  ; $5e4a: $f8 $ff
	inc  bc                                          ; $5e4c: $03
	add  l                                           ; $5e4d: $85
	nop                                              ; $5e4e: $00
	ld   [$fedc], sp                                 ; $5e4f: $08 $dc $fe
	db   $ec                                         ; $5e52: $ec
	cp   $e6                                         ; $5e53: $fe $e6
	cp   $f2                                         ; $5e55: $fe $f2
	cp   $24                                         ; $5e57: $fe $24
	add  l                                           ; $5e59: $85
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	cp   a                                           ; $5e5c: $bf
	add  b                                           ; $5e5d: $80
	call z, $ce05                                    ; $5e5e: $cc $05 $ce
	add  $cf                                         ; $5e61: $c6 $cf
	jp   Jump_071_74cf                               ; $5e63: $c3 $cf $74


	add  l                                           ; $5e66: $85
	nop                                              ; $5e67: $00
	ld   [$dfc0], sp                                 ; $5e68: $08 $c0 $df
	rst  $38                                         ; $5e6b: $ff
	ld   l, a                                        ; $5e6c: $6f
	ld   a, a                                        ; $5e6d: $7f
	scf                                              ; $5e6e: $37
	cp   a                                           ; $5e6f: $bf
	sbc  e                                           ; $5e70: $9b
	db   $e3                                         ; $5e71: $e3
	add  [hl]                                        ; $5e72: $86
	nop                                              ; $5e73: $00
	add  [hl]                                        ; $5e74: $86
	cp   $85                                         ; $5e75: $fe $85
	nop                                              ; $5e77: $00
	ld   [$292d], sp                                 ; $5e78: $08 $2d $29
	dec  hl                                          ; $5e7b: $2b
	dec  c                                           ; $5e7c: $0d
	ld   b, $1c                                      ; $5e7d: $06 $1c
	ld   h, h                                        ; $5e7f: $64
	xor  c                                           ; $5e80: $a9
	push af                                          ; $5e81: $f5
	add  l                                           ; $5e82: $85
	nop                                              ; $5e83: $00
	add  b                                           ; $5e84: $80
	db   $e3                                         ; $5e85: $e3
	ld   b, $d2                                      ; $5e86: $06 $d2
	ld   d, d                                        ; $5e88: $52
	add  hl, sp                                      ; $5e89: $39
	jr   nc, jr_071_5e22                             ; $5e8a: $30 $96

	ld   de, $850e                                   ; $5e8c: $11 $0e $85
	nop                                              ; $5e8f: $00
	ld   [$084b], sp                                 ; $5e90: $08 $4b $08
	ld   e, c                                        ; $5e93: $59
	ld   a, [bc]                                     ; $5e94: $0a
	ld   c, e                                        ; $5e95: $4b
	ld   a, [bc]                                     ; $5e96: $0a
	db   $10                                         ; $5e97: $10
	ld   b, b                                        ; $5e98: $40
	ld   bc, $0085                                   ; $5e99: $01 $85 $00
	ld   [$0094], sp                                 ; $5e9c: $08 $94 $00
	ld   b, c                                        ; $5e9f: $41
	ld   bc, $0135                                   ; $5ea0: $01 $35 $01
	ld   l, $06                                      ; $5ea3: $2e $06
	ret  z                                           ; $5ea5: $c8

	add  l                                           ; $5ea6: $85
	nop                                              ; $5ea7: $00
	ld   [$0393], sp                                 ; $5ea8: $08 $93 $03
	jp   nc, $8f42                                   ; $5eab: $d2 $42 $8f

	adc  c                                           ; $5eae: $89
	inc  bc                                          ; $5eaf: $03
	inc  b                                           ; $5eb0: $04
	ld   bc, $0086                                   ; $5eb1: $01 $86 $00
	add  b                                           ; $5eb4: $80
	add  l                                           ; $5eb5: $85
	add  b                                           ; $5eb6: $80
	rla                                              ; $5eb7: $17
	inc  bc                                          ; $5eb8: $03
	rra                                              ; $5eb9: $1f
	daa                                              ; $5eba: $27
	rlca                                             ; $5ebb: $07
	ccf                                              ; $5ebc: $3f
	add  [hl]                                        ; $5ebd: $86
	nop                                              ; $5ebe: $00
	add  d                                           ; $5ebf: $82
	rst  $38                                         ; $5ec0: $ff
	inc  bc                                          ; $5ec1: $03
	cp   $ff                                         ; $5ec2: $fe $ff
	db   $fd                                         ; $5ec4: $fd
	db   $fc                                         ; $5ec5: $fc
	add  l                                           ; $5ec6: $85
	nop                                              ; $5ec7: $00
	ld   [$b23f], sp                                 ; $5ec8: $08 $3f $b2
	or   $66                                         ; $5ecb: $f6 $66
	xor  $c6                                         ; $5ecd: $ee $c6
	sub  $86                                         ; $5ecf: $d6 $86
	ld   h, l                                        ; $5ed1: $65
	add  l                                           ; $5ed2: $85
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	ld   b, a                                        ; $5ed5: $47
	add  e                                           ; $5ed6: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ed7: $cf
	ld   [$cfce], sp                                 ; $5ed8: $08 $ce $cf
	adc  e                                           ; $5edb: $8b
	rrca                                             ; $5edc: $0f
	ld   bc, $0d0f                                   ; $5edd: $01 $0f $0d
	rrca                                             ; $5ee0: $0f
	ld   c, $84                                      ; $5ee1: $0e $84
	rrca                                             ; $5ee3: $0f
	inc  hl                                          ; $5ee4: $23
	ld   c, $03                                      ; $5ee5: $0e $03
	inc  c                                           ; $5ee7: $0c
	ldh  a, [rIE]                                    ; $5ee8: $f0 $ff
	cp   $ff                                         ; $5eea: $fe $ff
	ld   a, a                                        ; $5eec: $7f
	db   $fc                                         ; $5eed: $fc
	dec  de                                          ; $5eee: $1b
	db   $e4                                         ; $5eef: $e4
	sbc  h                                           ; $5ef0: $9c
	add  b                                           ; $5ef1: $80
	db   $ed                                         ; $5ef2: $ed
	inc  bc                                          ; $5ef3: $03
	or   d                                           ; $5ef4: $b2
	rrca                                             ; $5ef5: $0f
	ld   c, h                                        ; $5ef6: $4c
	dec  a                                           ; $5ef7: $3d
	ld   a, $fb                                      ; $5ef8: $3e $fb
	db   $fc                                         ; $5efa: $fc
	add  b                                           ; $5efb: $80
	ld   sp, $c270                                   ; $5efc: $31 $70 $c2
	ld   [hl], d                                     ; $5eff: $72
	call nc, $0524                                   ; $5f00: $d4 $24 $05
	ret  nz                                          ; $5f03: $c0

	ld   l, c                                        ; $5f04: $69
	sbc  c                                           ; $5f05: $99
	or   b                                           ; $5f06: $b0
	ldh  a, [rHDMA1]                                 ; $5f07: $f0 $51
	add  b                                           ; $5f09: $80
	cp   $80                                         ; $5f0a: $fe $80
	ld   a, $80                                      ; $5f0c: $3e $80
	cp   [hl]                                        ; $5f0e: $be
	add  hl, hl                                      ; $5f0f: $29
	adc  [hl]                                        ; $5f10: $8e
	db   $ec                                         ; $5f11: $ec
	ld   h, h                                        ; $5f12: $64
	call nz, $68a2                                   ; $5f13: $c4 $a2 $68
	ld   a, [hl+]                                    ; $5f16: $2a
	sub  d                                           ; $5f17: $92
	sbc  b                                           ; $5f18: $98
	ld   c, a                                        ; $5f19: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f1a: $cf
	call z, $c6cf                                    ; $5f1b: $cc $cf $c6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f1e: $cf
	rst  ToBoot                                         ; $5f1f: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f20: $cf
	ret                                              ; $5f21: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f22: $cf
	call z, $c7cf                                    ; $5f23: $cc $cf $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f26: $cf
	jp   $89cf                                       ; $5f27: $c3 $cf $89


	call $e6cf                                       ; $5f2a: $cd $cf $e6
	ld   h, a                                        ; $5f2d: $67
	di                                               ; $5f2e: $f3
	dec  sp                                          ; $5f2f: $3b
	ld   sp, hl                                      ; $5f30: $f9
	sub  l                                           ; $5f31: $95
	db   $fc                                         ; $5f32: $fc
	db   $ec                                         ; $5f33: $ec
	cp   $66                                         ; $5f34: $fe $66
	rst  $38                                         ; $5f36: $ff
	ld   [hl], a                                     ; $5f37: $77
	rst  $38                                         ; $5f38: $ff
	inc  h                                           ; $5f39: $24

jr_071_5f3a:
	add  d                                           ; $5f3a: $82
	cp   $0d                                         ; $5f3b: $fe $0d
	ld   a, [hl]                                     ; $5f3d: $7e
	cp   $be                                         ; $5f3e: $fe $be
	cp   $de                                         ; $5f40: $fe $de
	cp   $6e                                         ; $5f42: $fe $6e
	ld   a, [hl]                                     ; $5f44: $7e
	ld   [hl], $3e                                   ; $5f45: $36 $3e
	sbc  d                                           ; $5f47: $9a
	ld   a, e                                        ; $5f48: $7b
	sbc  [hl]                                        ; $5f49: $9e
	sbc  h                                           ; $5f4a: $9c
	add  b                                           ; $5f4b: $80
	rra                                              ; $5f4c: $1f
	ld   [de], a                                     ; $5f4d: $12
	dec  e                                           ; $5f4e: $1d
	ld   [$909e], sp                                 ; $5f4f: $08 $9e $90
	sbc  b                                           ; $5f52: $98
	rst  $10                                         ; $5f53: $d7
	xor  [hl]                                        ; $5f54: $ae
	xor  a                                           ; $5f55: $af
	cp   a                                           ; $5f56: $bf
	or   h                                           ; $5f57: $b4
	cp   e                                           ; $5f58: $bb
	ld   a, [hl+]                                    ; $5f59: $2a
	inc  d                                           ; $5f5a: $14
	ld   [hl], a                                     ; $5f5b: $77
	or   a                                           ; $5f5c: $b7
	inc  b                                           ; $5f5d: $04
	nop                                              ; $5f5e: $00
	ld   a, [bc]                                     ; $5f5f: $0a
	ld   c, $80                                      ; $5f60: $0e $80
	sub  h                                           ; $5f62: $94
	ld   a, [bc]                                     ; $5f63: $0a
	ld   b, l                                        ; $5f64: $45
	ld   b, c                                        ; $5f65: $41
	rst  $10                                         ; $5f66: $d7
	pop  de                                          ; $5f67: $d1
	call c, $94c8                                    ; $5f68: $dc $c8 $94
	xor  b                                           ; $5f6b: $a8
	cpl                                              ; $5f6c: $2f
	inc  l                                           ; $5f6d: $2c
	dec  hl                                          ; $5f6e: $2b
	add  b                                           ; $5f6f: $80
	ld   e, h                                        ; $5f70: $5c
	inc  h                                           ; $5f71: $24
	ld   l, h                                        ; $5f72: $6c
	ld   h, h                                        ; $5f73: $64
	and  l                                           ; $5f74: $a5
	rst  $20                                         ; $5f75: $e7
	ld   a, [bc]                                     ; $5f76: $0a
	ld   e, [hl]                                     ; $5f77: $5e
	ld   b, e                                        ; $5f78: $43
	ld   l, c                                        ; $5f79: $69

jr_071_5f7a:
	ld   b, $ee                                      ; $5f7a: $06 $ee
	ld   [bc], a                                     ; $5f7c: $02
	rrca                                             ; $5f7d: $0f
	jr   z, jr_071_5f3a                              ; $5f7e: $28 $ba

	jr   jr_071_5f7a                                 ; $5f80: $18 $f8

	ld   e, a                                        ; $5f82: $5f
	cp   a                                           ; $5f83: $bf
	sbc  h                                           ; $5f84: $9c
	ld   e, h                                        ; $5f85: $5c
	dec  sp                                          ; $5f86: $3b
	ld   a, $3f                                      ; $5f87: $3e $3f
	ld   a, [hl+]                                    ; $5f89: $2a
	ld   a, [de]                                     ; $5f8a: $1a
	inc  b                                           ; $5f8b: $04
	ld   b, $3a                                      ; $5f8c: $06 $3a
	inc  de                                          ; $5f8e: $13
	ld   [hl-], a                                    ; $5f8f: $32
	db   $10                                         ; $5f90: $10
	or   l                                           ; $5f91: $b5
	scf                                              ; $5f92: $37
	or   e                                           ; $5f93: $b3
	inc  de                                          ; $5f94: $13

jr_071_5f95:
	ret  nc                                          ; $5f95: $d0

	ld   [hl], b                                     ; $5f96: $70
	add  b                                           ; $5f97: $80
	and  b                                           ; $5f98: $a0
	add  b                                           ; $5f99: $80
	ld   b, $24                                      ; $5f9a: $06 $24
	db   $10                                         ; $5f9c: $10
	rst  ToBoot                                         ; $5f9d: $c7
	rrca                                             ; $5f9e: $0f
	rst  $20                                         ; $5f9f: $e7
	rst  $10                                         ; $5fa0: $d7
	ld   b, a                                        ; $5fa1: $47
	ld   h, a                                        ; $5fa2: $67
	ld   b, a                                        ; $5fa3: $47
	ccf                                              ; $5fa4: $3f
	add  a                                           ; $5fa5: $87
	cp   a                                           ; $5fa6: $bf
	add  a                                           ; $5fa7: $87
	ld   h, a                                        ; $5fa8: $67
	add  $87                                         ; $5fa9: $c6 $87
	push bc                                          ; $5fab: $c5
	rst  $28                                         ; $5fac: $ef
	ei                                               ; $5fad: $fb
	rst  $38                                         ; $5fae: $ff
	or   $fe                                         ; $5faf: $f6 $fe
	db   $ec                                         ; $5fb1: $ec
	db   $fd                                         ; $5fb2: $fd
	ret  c                                           ; $5fb3: $d8

	ld   a, [$f4b0]                                  ; $5fb4: $fa $b0 $f4
	ld   h, h                                        ; $5fb7: $64
	db   $ec                                         ; $5fb8: $ec
	add  $d6                                         ; $5fb9: $c6 $d6
	add  h                                           ; $5fbb: $84
	and  l                                           ; $5fbc: $a5
	ld   b, $46                                      ; $5fbd: $06 $46
	ld   c, h                                        ; $5fbf: $4c
	call z, Call_071_5880                            ; $5fc0: $cc $80 $58
	add  b                                           ; $5fc3: $80
	ld   h, b                                        ; $5fc4: $60
	ld   bc, $4042                                   ; $5fc5: $01 $42 $40
	add  b                                           ; $5fc8: $80
	add  [hl]                                        ; $5fc9: $86
	add  b                                           ; $5fca: $80
	adc  [hl]                                        ; $5fcb: $8e
	inc  bc                                          ; $5fcc: $03
	and  [hl]                                        ; $5fcd: $a6
	db   $e4                                         ; $5fce: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fcf: $cf
	res  0, l                                        ; $5fd0: $cb $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fd2: $cf
	dec  c                                           ; $5fd3: $0d
	adc  $cf                                         ; $5fd4: $ce $cf
	ret  z                                           ; $5fd6: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fd7: $cf
	set  1, a                                        ; $5fd8: $cb $cf
	add  h                                           ; $5fda: $84
	ld   [$000d], sp                                 ; $5fdb: $08 $0d $00
	ld   b, $00                                      ; $5fde: $06 $00
	ld   [bc], a                                     ; $5fe0: $02
	dec  b                                           ; $5fe1: $05
	add  b                                           ; $5fe2: $80
	inc  b                                           ; $5fe3: $04
	nop                                              ; $5fe4: $00
	rlca                                             ; $5fe5: $07
	add  c                                           ; $5fe6: $81
	nop                                              ; $5fe7: $00
	inc  hl                                          ; $5fe8: $23
	rlca                                             ; $5fe9: $07
	ld   bc, $2ff6                                   ; $5fea: $01 $f6 $2f
	dec  hl                                          ; $5fed: $2b
	rrca                                             ; $5fee: $0f
	dec  c                                           ; $5fef: $0d
	inc  de                                          ; $5ff0: $13

jr_071_5ff1:
	sub  l                                           ; $5ff1: $95
	db   $ec                                         ; $5ff2: $ec
	ld   h, b                                        ; $5ff3: $60
	db   $fc                                         ; $5ff4: $fc
	ld   [hl], b                                     ; $5ff5: $70
	inc  e                                           ; $5ff6: $1c
	ld   a, h                                        ; $5ff7: $7c
	rlca                                             ; $5ff8: $07
	dec  de                                          ; $5ff9: $1b
	nop                                              ; $5ffa: $00
	ld   a, d                                        ; $5ffb: $7a
	sbc  [hl]                                        ; $5ffc: $9e
	ld   a, [bc]                                     ; $5ffd: $0a
	dec  de                                          ; $5ffe: $1b
	nop                                              ; $5fff: $00
	ld   c, c                                        ; $6000: $49
	ret  nz                                          ; $6001: $c0

	ld   sp, hl                                      ; $6002: $f9
	ld   e, b                                        ; $6003: $58
	ld   e, e                                        ; $6004: $5b
	jr   nz, jr_071_6066                             ; $6005: $20 $5f

	add  b                                           ; $6007: $80
	xor  e                                           ; $6008: $ab
	inc  l                                           ; $6009: $2c
	rst  $38                                         ; $600a: $ff
	jr   nc, @-$32                                   ; $600b: $30 $cc

	add  b                                           ; $600d: $80
	ld   b, h                                        ; $600e: $44
	inc  bc                                          ; $600f: $03
	ld   b, b                                        ; $6010: $40
	ldh  [$b8], a                                    ; $6011: $e0 $b8
	jr   c, jr_071_5f95                              ; $6013: $38 $80

	jr   nc, jr_071_6027                             ; $6015: $30 $10

	jr   z, jr_071_5ff1                              ; $6017: $28 $d8

	ret  nz                                          ; $6019: $c0

	db   $10                                         ; $601a: $10
	ld   b, [hl]                                     ; $601b: $46
	ld   c, [hl]                                     ; $601c: $4e
	ld   c, d                                        ; $601d: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $601e: $cf
	call z, $c7cf                                    ; $601f: $cc $cf $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6022: $cf
	jp   $c8cf                                       ; $6023: $c3 $cf $c8


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6026: $cf

jr_071_6027:
	add  $83                                         ; $6027: $c6 $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6029: $cf
	db   $10                                         ; $602a: $10
	sub  a                                           ; $602b: $97
	rst  $38                                         ; $602c: $ff
	ld   [hl], h                                     ; $602d: $74
	rst  $28                                         ; $602e: $ef
	ld   a, [bc]                                     ; $602f: $0a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6030: $cf
	call $eaeb                                       ; $6031: $cd $eb $ea
	ret                                              ; $6034: $c9


	ld   c, b                                        ; $6035: $48
	push bc                                          ; $6036: $c5
	db   $e4                                         ; $6037: $e4
	ld   h, d                                        ; $6038: $62
	ld   b, d                                        ; $6039: $42
	inc  hl                                          ; $603a: $23
	rst  JumpTable                                         ; $603b: $df
	add  b                                           ; $603c: $80
	call z, $e415                                    ; $603d: $cc $15 $e4
	ld   h, [hl]                                     ; $6040: $66
	ldh  a, [c]                                      ; $6041: $f2
	ld   [hl-], a                                    ; $6042: $32
	ld   hl, sp-$78                                  ; $6043: $f8 $88
	ld   hl, sp+$40                                  ; $6045: $f8 $40
	ld   a, [$fa32]                                  ; $6047: $fa $32 $fa
	and  b                                           ; $604a: $a0
	ld   a, [$bb5f]                                  ; $604b: $fa $5f $bb
	cp   b                                           ; $604e: $b8
	cp   h                                           ; $604f: $bc
	add  a                                           ; $6050: $87
	cp   d                                           ; $6051: $ba
	cp   l                                           ; $6052: $bd
	add  b                                           ; $6053: $80
	add  c                                           ; $6054: $81
	add  b                                           ; $6055: $80
	add  b                                           ; $6056: $80
	nop                                              ; $6057: $00
	sbc  a                                           ; $6058: $9f
	add  b                                           ; $6059: $80
	sub  e                                           ; $605a: $93
	add  b                                           ; $605b: $80
	sub  b                                           ; $605c: $90
	dec  c                                           ; $605d: $0d
	cpl                                              ; $605e: $2f
	adc  $a7                                         ; $605f: $ce $a7
	and  [hl]                                        ; $6061: $a6
	rst  ToBoot                                         ; $6062: $c7
	rla                                              ; $6063: $17
	ld   b, [hl]                                     ; $6064: $46
	ld   d, [hl]                                     ; $6065: $56

jr_071_6066:
	ld   l, $08                                      ; $6066: $2e $08
	ld   [bc], a                                     ; $6068: $02
	cp   $e5                                         ; $6069: $fe $e5
	rst  $38                                         ; $606b: $ff
	add  b                                           ; $606c: $80
	add  h                                           ; $606d: $84
	rlca                                             ; $606e: $07
	ld   a, l                                        ; $606f: $7d
	ld   [hl], h                                     ; $6070: $74
	ld   l, [hl]                                     ; $6071: $6e
	ld   a, [$39a4]                                  ; $6072: $fa $a4 $39
	call c, $80d8                                    ; $6075: $dc $d8 $80
	ld   e, l                                        ; $6078: $5d
	ld   hl, $1b41                                   ; $6079: $21 $41 $1b
	ld   e, l                                        ; $607c: $5d
	rrca                                             ; $607d: $0f
	dec  c                                           ; $607e: $0d
	dec  bc                                          ; $607f: $0b
	add  $f1                                         ; $6080: $c6 $f1
	sbc  l                                           ; $6082: $9d
	cpl                                              ; $6083: $2f
	inc  sp                                          ; $6084: $33
	ld   de, $8051                                   ; $6085: $11 $51 $80
	cp   h                                           ; $6088: $bc
	or   b                                           ; $6089: $b0
	nop                                              ; $608a: $00
	ret  nz                                          ; $608b: $c0

	ld   b, b                                        ; $608c: $40
	ld   c, h                                        ; $608d: $4c
	inc  e                                           ; $608e: $1c
	ld   d, b                                        ; $608f: $50
	ld   c, [hl]                                     ; $6090: $4e
	sbc  a                                           ; $6091: $9f
	sub  d                                           ; $6092: $92
	cp   b                                           ; $6093: $b8
	ld   a, $30                                      ; $6094: $3e $30
	ld   [bc], a                                     ; $6096: $02
	db   $10                                         ; $6097: $10
	ld   [$2707], sp                                 ; $6098: $08 $07 $27
	ccf                                              ; $609b: $3f
	add  b                                           ; $609c: $80
	rst  $38                                         ; $609d: $ff
	add  b                                           ; $609e: $80
	db   $10                                         ; $609f: $10
	inc  b                                           ; $60a0: $04
	ld   l, e                                        ; $60a1: $6b
	add  e                                           ; $60a2: $83
	rst  ToBoot                                         ; $60a3: $c7
	add  $46                                         ; $60a4: $c6 $46
	add  b                                           ; $60a6: $80
	call nz, Call_071_4181                           ; $60a7: $c4 $81 $41
	ld   [$c540], sp                                 ; $60aa: $08 $40 $c5
	ret                                              ; $60ad: $c9


	call z, Call_071_4c48                            ; $60ae: $cc $48 $4c
	xor  d                                           ; $60b1: $aa
	ld   [$8048], sp                                 ; $60b2: $08 $48 $80
	ld   d, b                                        ; $60b5: $50
	add  b                                           ; $60b6: $80
	di                                               ; $60b7: $f3
	ld   bc, $55d5                                   ; $60b8: $01 $d5 $55
	add  b                                           ; $60bb: $80
	sbc  c                                           ; $60bc: $99
	add  b                                           ; $60bd: $80
	ld   de, $6180                                   ; $60be: $11 $80 $61
	inc  bc                                          ; $60c1: $03
	and  [hl]                                        ; $60c2: $a6
	and  l                                           ; $60c3: $a5
	add  $c4                                         ; $60c4: $c6 $c4
	add  b                                           ; $60c6: $80
	add  [hl]                                        ; $60c7: $86
	add  b                                           ; $60c8: $80
	inc  c                                           ; $60c9: $0c
	add  b                                           ; $60ca: $80
	db   $10                                         ; $60cb: $10
	add  b                                           ; $60cc: $80
	ld   [hl], b                                     ; $60cd: $70
	ld   bc, $9092                                   ; $60ce: $01 $92 $90
	add  b                                           ; $60d1: $80
	ld   e, $01                                      ; $60d2: $1e $01
	ld   d, $52                                      ; $60d4: $16 $52
	add  c                                           ; $60d6: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d7: $cf
	add  b                                           ; $60d8: $80
	rlc  h                                           ; $60d9: $cb $04
	ret  z                                           ; $60db: $c8

	set  1, d                                        ; $60dc: $cb $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60de: $cf
	adc  $83                                         ; $60df: $ce $83
	jp   z, $8200                                    ; $60e1: $ca $00 $82

	adc  l                                           ; $60e4: $8d
	ld   bc, $e906                                   ; $60e5: $01 $06 $e9
	nop                                              ; $60e8: $00
	inc  e                                           ; $60e9: $1c
	nop                                              ; $60ea: $00
	db   $e3                                         ; $60eb: $e3
	ldh  [rLCDC], a                                  ; $60ec: $e0 $40
	add  b                                           ; $60ee: $80
	db   $fc                                         ; $60ef: $fc
	inc  bc                                          ; $60f0: $03
	rst  $38                                         ; $60f1: $ff
	ld   b, b                                        ; $60f2: $40
	rst  $38                                         ; $60f3: $ff
	ld   [$ff81], sp                                 ; $60f4: $08 $81 $ff
	inc  c                                           ; $60f7: $0c
	rst  $30                                         ; $60f8: $f7
	ccf                                              ; $60f9: $3f
	cp   $0f                                         ; $60fa: $fe $0f
	ld   [hl], $03                                   ; $60fc: $36 $03
	push hl                                          ; $60fe: $e5
	nop                                              ; $60ff: $00
	add  hl, de                                      ; $6100: $19
	nop                                              ; $6101: $00
	rst  $20                                         ; $6102: $e7
	ldh  [rAUD4LEN], a                               ; $6103: $e0 $20
	add  b                                           ; $6105: $80
	ld   hl, sp+$15                                  ; $6106: $f8 $15
	rst  $38                                         ; $6108: $ff
	ld   e, d                                        ; $6109: $5a
	db   $e4                                         ; $610a: $e4
	jr   nz, jr_071_617d                             ; $610b: $20 $70

	jr   nc, @-$3e                                   ; $610d: $30 $c0

	ld   b, b                                        ; $610f: $40
	ldh  a, [$f6]                                    ; $6110: $f0 $f6
	ld   e, $7e                                      ; $6112: $1e $7e
	ld   e, $c0                                      ; $6114: $1e $c0
	inc  b                                           ; $6116: $04
	ld   a, [hl-]                                    ; $6117: $3a
	nop                                              ; $6118: $00
	ld   c, c                                        ; $6119: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $611a: $cf
	call z, $c6cf                                    ; $611b: $cc $cf $c6
	add  b                                           ; $611e: $80
	rst  ToBoot                                         ; $611f: $c7
	inc  bc                                          ; $6120: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6121: $cf
	call $cccf                                       ; $6122: $cd $cf $cc
	add  b                                           ; $6125: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6126: $cf
	inc  bc                                          ; $6127: $03
	adc  $c0                                         ; $6128: $ce $c0
	ret  z                                           ; $612a: $c8

	ld   a, h                                        ; $612b: $7c
	add  b                                           ; $612c: $80
	ld   a, [de]                                     ; $612d: $1a
	add  b                                           ; $612e: $80
	adc  [hl]                                        ; $612f: $8e
	add  b                                           ; $6130: $80
	ld   l, d                                        ; $6131: $6a
	add  b                                           ; $6132: $80
	ld   e, c                                        ; $6133: $59
	add  b                                           ; $6134: $80
	ld   c, h                                        ; $6135: $4c
	add  b                                           ; $6136: $80
	jp   nz, Jump_071_6380                           ; $6137: $c2 $80 $63

	ld   [de], a                                     ; $613a: $12
	ld   [de], a                                     ; $613b: $12
	ld   a, h                                        ; $613c: $7c
	ld   a, [$fe4e]                                  ; $613d: $fa $4e $fe
	ld   h, [hl]                                     ; $6140: $66
	ld   a, [hl]                                     ; $6141: $7e
	ld   l, h                                        ; $6142: $6c
	cp   $34                                         ; $6143: $fe $34
	cp   $2e                                         ; $6145: $fe $2e
	ld   a, [hl]                                     ; $6147: $7e
	inc  b                                           ; $6148: $04
	ld   a, $34                                      ; $6149: $3e $34
	cp   $b4                                         ; $614b: $fe $b4
	sub  b                                           ; $614d: $90
	add  b                                           ; $614e: $80
	sbc  a                                           ; $614f: $9f
	add  b                                           ; $6150: $80
	sub  d                                           ; $6151: $92
	add  b                                           ; $6152: $80
	sub  b                                           ; $6153: $90
	add  b                                           ; $6154: $80
	sbc  a                                           ; $6155: $9f
	add  d                                           ; $6156: $82
	sub  c                                           ; $6157: $91
	add  b                                           ; $6158: $80
	sbc  a                                           ; $6159: $9f
	ld   bc, $8060                                   ; $615a: $01 $60 $80
	add  b                                           ; $615d: $80
	ei                                               ; $615e: $fb
	add  d                                           ; $615f: $82
	db   $10                                         ; $6160: $10
	add  b                                           ; $6161: $80
	rst  $38                                         ; $6162: $ff
	add  b                                           ; $6163: $80
	inc  b                                           ; $6164: $04
	add  b                                           ; $6165: $80
	ld   b, $80                                      ; $6166: $06 $80
	cp   $05                                         ; $6168: $fe $05
	ld   [bc], a                                     ; $616a: $02
	nop                                              ; $616b: $00
	jp   nc, $85d7                                   ; $616c: $d2 $d7 $85

	add  d                                           ; $616f: $82
	add  b                                           ; $6170: $80
	adc  h                                           ; $6171: $8c
	add  b                                           ; $6172: $80
	call nz, $0080                                   ; $6173: $c4 $80 $00
	add  b                                           ; $6176: $80
	ld   e, h                                        ; $6177: $5c
	add  b                                           ; $6178: $80

jr_071_6179:
	ld   [de], a                                     ; $6179: $12
	ld   bc, $0484                                   ; $617a: $01 $84 $04

jr_071_617d:
	add  b                                           ; $617d: $80
	rlca                                             ; $617e: $07
	add  b                                           ; $617f: $80
	jr   nz, jr_071_6185                             ; $6180: $20 $03

	ld   b, b                                        ; $6182: $40
	ret  nz                                          ; $6183: $c0

	rst  $38                                         ; $6184: $ff

jr_071_6185:
	ld   a, a                                        ; $6185: $7f
	add  b                                           ; $6186: $80
	ld   [bc], a                                     ; $6187: $02
	dec  b                                           ; $6188: $05
	ld   b, d                                        ; $6189: $42
	jp   nz, $5fdf                                   ; $618a: $c2 $df $5f

	sub  c                                           ; $618d: $91
	ld   de, $ff80                                   ; $618e: $11 $80 $ff
	add  b                                           ; $6191: $80
	add  h                                           ; $6192: $84
	add  b                                           ; $6193: $80
	add  [hl]                                        ; $6194: $86
	add  b                                           ; $6195: $80
	rst  $38                                         ; $6196: $ff
	add  d                                           ; $6197: $82
	db   $10                                         ; $6198: $10
	add  b                                           ; $6199: $80
	rst  $38                                         ; $619a: $ff
	ld   a, [bc]                                     ; $619b: $0a
	ld   [hl+], a                                    ; $619c: $22
	ld   c, l                                        ; $619d: $4d
	ret                                              ; $619e: $c9


	call Call_071_4e4f                               ; $619f: $cd $4f $4e
	ld   c, d                                        ; $61a2: $4a
	ld   c, a                                        ; $61a3: $4f
	set  1, a                                        ; $61a4: $cb $cf
	ld   c, a                                        ; $61a6: $4f
	add  c                                           ; $61a7: $81
	ld   c, [hl]                                     ; $61a8: $4e
	ld   [bc], a                                     ; $61a9: $02
	jp   z, Jump_071_6fcf                            ; $61aa: $ca $cf $6f

	add  b                                           ; $61ad: $80
	inc  l                                           ; $61ae: $2c
	add  b                                           ; $61af: $80
	inc  [hl]                                        ; $61b0: $34
	add  b                                           ; $61b1: $80
	ld   h, a                                        ; $61b2: $67
	add  b                                           ; $61b3: $80
	add  [hl]                                        ; $61b4: $86
	add  b                                           ; $61b5: $80
	db   $10                                         ; $61b6: $10
	add  b                                           ; $61b7: $80
	ld   sp, $9680                                   ; $61b8: $31 $80 $96
	ld   bc, $1b1a                                   ; $61bb: $01 $1a $1b
	add  b                                           ; $61be: $80
	ld   h, b                                        ; $61bf: $60
	add  b                                           ; $61c0: $80
	add  b                                           ; $61c1: $80
	dec  bc                                          ; $61c2: $0b
	adc  b                                           ; $61c3: $88
	adc  d                                           ; $61c4: $8a
	sub  b                                           ; $61c5: $90
	add  d                                           ; $61c6: $82
	ldh  a, [$e4]                                    ; $61c7: $f0 $e4
	add  b                                           ; $61c9: $80
	add  d                                           ; $61ca: $82
	ld   [bc], a                                     ; $61cb: $02
	ld   c, $10                                      ; $61cc: $0e $10
	ld   e, e                                        ; $61ce: $5b
	add  b                                           ; $61cf: $80
	jp   z, $cb02                                    ; $61d0: $ca $02 $cb

	jp   $81c4                                       ; $61d3: $c3 $c4 $81


	ret  nz                                          ; $61d6: $c0

	add  b                                           ; $61d7: $80
	ret  z                                           ; $61d8: $c8

	ld   bc, $cecc                                   ; $61d9: $01 $cc $ce
	add  b                                           ; $61dc: $80
	call z, $cd01                                    ; $61dd: $cc $01 $cd
	adc  e                                           ; $61e0: $8b
	adc  l                                           ; $61e1: $8d
	ld   bc, $1708                                   ; $61e2: $01 $08 $17
	rst  $38                                         ; $61e5: $ff
	ld   e, a                                        ; $61e6: $5f
	rst  $38                                         ; $61e7: $ff
	cp   $ff                                         ; $61e8: $fe $ff
	jp   $8bff                                       ; $61ea: $c3 $ff $8b


	add  c                                           ; $61ed: $81
	rst  $38                                         ; $61ee: $ff
	ld   b, $08                                      ; $61ef: $06 $08
	rst  $38                                         ; $61f1: $ff
	ld   b, d                                        ; $61f2: $42
	rst  $38                                         ; $61f3: $ff
	ld   d, d                                        ; $61f4: $52
	rst  $38                                         ; $61f5: $ff
	jr   jr_071_6179                                 ; $61f6: $18 $81

	rst  $38                                         ; $61f8: $ff
	ld   [bc], a                                     ; $61f9: $02
	dec  bc                                          ; $61fa: $0b
	rst  $38                                         ; $61fb: $ff
	ld   [hl+], a                                    ; $61fc: $22
	add  c                                           ; $61fd: $81
	rst  $38                                         ; $61fe: $ff
	inc  c                                           ; $61ff: $0c
	cp   c                                           ; $6200: $b9
	rst  $38                                         ; $6201: $ff
	sbc  h                                           ; $6202: $9c
	rst  $38                                         ; $6203: $ff
	ld   a, [hl-]                                    ; $6204: $3a
	ret  nz                                          ; $6205: $c0

	ld   b, b                                        ; $6206: $40
	ld   hl, sp-$06                                  ; $6207: $f8 $fa
	cp   $46                                         ; $6209: $fe $46
	cp   $06                                         ; $620b: $fe $06
	add  c                                           ; $620d: $81
	cp   $07                                         ; $620e: $fe $07
	ld   b, $fe                                      ; $6210: $06 $fe
	ld   h, $fe                                      ; $6212: $26 $fe
	sbc  [hl]                                        ; $6214: $9e
	rst  ToBoot                                         ; $6215: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6216: $cf
	ret  z                                           ; $6217: $c8

	add  b                                           ; $6218: $80
	ret  nz                                          ; $6219: $c0

	add  b                                           ; $621a: $80
	ret  z                                           ; $621b: $c8

	ld   [bc], a                                     ; $621c: $02
	call nz, $c7cf                                   ; $621d: $c4 $cf $c7
	add  e                                           ; $6220: $83
	call nz, Call_071_7400                           ; $6221: $c4 $00 $74
	add  b                                           ; $6224: $80
	ld   c, $80                                      ; $6225: $0e $80
	jp   z, Jump_071_7980                            ; $6227: $ca $80 $79

	add  b                                           ; $622a: $80
	ld   c, h                                        ; $622b: $4c
	add  b                                           ; $622c: $80
	ld   b, e                                        ; $622d: $43
	add  b                                           ; $622e: $80
	pop  hl                                          ; $622f: $e1
	add  b                                           ; $6230: $80
	dec  e                                           ; $6231: $1d
	dec  b                                           ; $6232: $05
	dec  bc                                          ; $6233: $0b
	ld   bc, $043e                                   ; $6234: $01 $3e $04
	ld   a, $14                                      ; $6237: $3e $14
	add  b                                           ; $6239: $80
	sbc  [hl]                                        ; $623a: $9e
	ld   de, $467e                                   ; $623b: $11 $7e $46
	ld   a, [hl]                                     ; $623e: $7e
	ld   h, h                                        ; $623f: $64
	cp   $cc                                         ; $6240: $fe $cc
	ld   a, $34                                      ; $6242: $3e $34
	ld   c, $6d                                      ; $6244: $0e $6d
	sbc  a                                           ; $6246: $9f
	add  e                                           ; $6247: $83
	sbc  a                                           ; $6248: $9f
	sub  b                                           ; $6249: $90
	sbc  a                                           ; $624a: $9f
	adc  [hl]                                        ; $624b: $8e
	sbc  a                                           ; $624c: $9f
	sbc  [hl]                                        ; $624d: $9e
	add  c                                           ; $624e: $81
	sbc  a                                           ; $624f: $9f
	ld   a, [bc]                                     ; $6250: $0a
	sbc  b                                           ; $6251: $98
	sbc  a                                           ; $6252: $9f
	sub  a                                           ; $6253: $97
	sbc  a                                           ; $6254: $9f
	db   $f4                                         ; $6255: $f4
	inc  e                                           ; $6256: $1c
	rst  $30                                         ; $6257: $f7
	rst  $38                                         ; $6258: $ff
	inc  de                                          ; $6259: $13
	rst  $38                                         ; $625a: $ff
	ld   a, e                                        ; $625b: $7b
	add  c                                           ; $625c: $81
	rst  $38                                         ; $625d: $ff
	rlca                                             ; $625e: $07
	ld   a, b                                        ; $625f: $78
	rst  $38                                         ; $6260: $ff
	db   $f4                                         ; $6261: $f4
	rst  $38                                         ; $6262: $ff
	adc  a                                           ; $6263: $8f
	rst  $38                                         ; $6264: $ff
	ld   [hl], h                                     ; $6265: $74
	ldh  a, [$80]                                    ; $6266: $f0 $80
	add  b                                           ; $6268: $80
	add  b                                           ; $6269: $80
	push hl                                          ; $626a: $e5
	ld   bc, $cb4b                                   ; $626b: $01 $4b $cb
	add  b                                           ; $626e: $80
	ldh  [c], a                                      ; $626f: $e2
	dec  bc                                          ; $6270: $0b
	db   $fc                                         ; $6271: $fc
	db   $fd                                         ; $6272: $fd
	ld   d, h                                        ; $6273: $54

jr_071_6274:
	or   $fb                                         ; $6274: $f6 $fb
	db   $fc                                         ; $6276: $fc
	xor  a                                           ; $6277: $af
	dec  bc                                          ; $6278: $0b
	nop                                              ; $6279: $00
	add  b                                           ; $627a: $80
	rst  $38                                         ; $627b: $ff
	ld   a, a                                        ; $627c: $7f
	add  b                                           ; $627d: $80
	ld   e, [hl]                                     ; $627e: $5e
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	add  b                                           ; $6281: $80
	add  d                                           ; $6282: $82
	dec  d                                           ; $6283: $15
	ld   a, a                                        ; $6284: $7f
	jr   c, @+$29                                    ; $6285: $38 $27

	ld   e, a                                        ; $6287: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6288: $cf
	adc  b                                           ; $6289: $88
	rst  $38                                         ; $628a: $ff
	call nz, $f8c3                                   ; $628b: $c4 $c3 $f8
	rst  $38                                         ; $628e: $ff
	sbc  b                                           ; $628f: $98
	sbc  a                                           ; $6290: $9f
	ld   [$171f], sp                                 ; $6291: $08 $1f $17
	rst  $38                                         ; $6294: $ff
	adc  c                                           ; $6295: $89
	rst  $38                                         ; $6296: $ff
	ret                                              ; $6297: $c9


	rst  $38                                         ; $6298: $ff
	dec  de                                          ; $6299: $1b
	add  c                                           ; $629a: $81
	adc  $02                                         ; $629b: $ce $02
	ld   c, d                                        ; $629d: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $629e: $cf
	ld   c, e                                        ; $629f: $4b
	add  c                                           ; $62a0: $81
	adc  $06                                         ; $62a1: $ce $06
	ld   c, [hl]                                     ; $62a3: $4e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62a4: $cf
	set  1, [hl]                                     ; $62a5: $cb $ce
	jp   z, $eace                                    ; $62a7: $ca $ce $ea

	add  b                                           ; $62aa: $80
	ld   [hl+], a                                    ; $62ab: $22
	rlca                                             ; $62ac: $07
	jp   Jump_071_46fb                               ; $62ad: $c3 $fb $46


	ld   [bc], a                                     ; $62b0: $02
	ld   a, [hl-]                                    ; $62b1: $3a
	ld   a, [bc]                                     ; $62b2: $0a
	cp   $04                                         ; $62b3: $fe $04
	add  b                                           ; $62b5: $80
	ld   a, l                                        ; $62b6: $7d
	add  c                                           ; $62b7: $81
	ld   a, h                                        ; $62b8: $7c
	ld   b, $c1                                      ; $62b9: $06 $c1
	ld   h, b                                        ; $62bb: $60
	inc  h                                           ; $62bc: $24
	call nz, $8084                                   ; $62bd: $c4 $84 $80
	add  d                                           ; $62c0: $82
	add  b                                           ; $62c1: $80
	add  b                                           ; $62c2: $80
	ld   bc, $3230                                   ; $62c3: $01 $30 $32
	add  b                                           ; $62c6: $80
	add  b                                           ; $62c7: $80
	inc  bc                                          ; $62c8: $03
	nop                                              ; $62c9: $00
	inc  c                                           ; $62ca: $0c
	ld   [$8245], sp                                 ; $62cb: $08 $45 $82
	call z, $c082                                    ; $62ce: $cc $82 $c0
	add  b                                           ; $62d1: $80
	call z, $cd80                                    ; $62d2: $cc $80 $cd
	add  c                                           ; $62d5: $81
	call z, $8a00                                    ; $62d6: $cc $00 $8a
	adc  l                                           ; $62d9: $8d
	ld   bc, $f405                                   ; $62da: $01 $05 $f4
	rst  $38                                         ; $62dd: $ff
	ld   [hl+], a                                    ; $62de: $22
	rst  $38                                         ; $62df: $ff
	jr   z, @+$01                                    ; $62e0: $28 $ff

	add  b                                           ; $62e2: $80
	db   $fc                                         ; $62e3: $fc
	ld   [bc], a                                     ; $62e4: $02
	ld   [$46fc], sp                                 ; $62e5: $08 $fc $46
	add  c                                           ; $62e8: $81
	ld   a, [$4307]                                  ; $62e9: $fa $07 $43
	rst  $38                                         ; $62ec: $ff
	inc  bc                                          ; $62ed: $03
	rst  $38                                         ; $62ee: $ff
	nop                                              ; $62ef: $00
	ld   hl, sp-$28                                  ; $62f0: $f8 $d8
	jr   nz, jr_071_6274                             ; $62f2: $20 $80

	ld   hl, $ff80                                   ; $62f4: $21 $80 $ff
	add  d                                           ; $62f7: $82
	ld   [$ff80], sp                                 ; $62f8: $08 $80 $ff
	inc  b                                           ; $62fb: $04
	call c, $a6fe                                    ; $62fc: $dc $fe $a6
	cp   $66                                         ; $62ff: $fe $66
	add  c                                           ; $6301: $81
	ld   e, $02                                      ; $6302: $1e $02
	add  $fe                                         ; $6304: $c6 $fe
	ld   h, [hl]                                     ; $6306: $66
	add  c                                           ; $6307: $81
	ld   e, [hl]                                     ; $6308: $5e
	inc  b                                           ; $6309: $04
	and  $fe                                         ; $630a: $e6 $fe
	xor  d                                           ; $630c: $aa
	rst  ToBoot                                         ; $630d: $c7
	push bc                                          ; $630e: $c5
	add  c                                           ; $630f: $81
	add  $04                                         ; $6310: $c6 $04
	jp   nz, $c0c6                                   ; $6312: $c2 $c6 $c0

	rst  ToBoot                                         ; $6315: $c7
	call nz, $c781                                   ; $6316: $c4 $81 $c7
	ld   [bc], a                                     ; $6319: $02
	call nz, $77c7                                   ; $631a: $c4 $c7 $77
	add  b                                           ; $631d: $80
	adc  b                                           ; $631e: $88
	add  b                                           ; $631f: $80
	ld   a, b                                        ; $6320: $78
	ld   bc, $4547                                   ; $6321: $01 $47 $45
	add  b                                           ; $6324: $80
	ld   b, e                                        ; $6325: $43
	rla                                              ; $6326: $17
	db   $e3                                         ; $6327: $e3
	ld   h, c                                        ; $6328: $61
	adc  a                                           ; $6329: $8f
	adc  h                                           ; $632a: $8c
	adc  e                                           ; $632b: $8b
	dec  bc                                          ; $632c: $0b
	rst  $38                                         ; $632d: $ff
	and  $fe                                         ; $632e: $e6 $fe
	db   $e4                                         ; $6330: $e4
	ld   a, $64                                      ; $6331: $3e $64
	cp   $3e                                         ; $6333: $fe $3e
	cp   $84                                         ; $6335: $fe $84
	cp   $64                                         ; $6337: $fe $64
	cp   $04                                         ; $6339: $fe $04
	cp   $84                                         ; $633b: $fe $84
	cp   $64                                         ; $633d: $fe $64
	adc  e                                           ; $633f: $8b
	sbc  a                                           ; $6340: $9f
	ld   a, [de]                                     ; $6341: $1a
	sbc  l                                           ; $6342: $9d
	sbc  a                                           ; $6343: $9f
	db   $fd                                         ; $6344: $fd
	rst  $38                                         ; $6345: $ff
	ld   sp, hl                                      ; $6346: $f9
	rst  $38                                         ; $6347: $ff
	rst  $20                                         ; $6348: $e7
	rst  $38                                         ; $6349: $ff
	pop  hl                                          ; $634a: $e1
	rst  $38                                         ; $634b: $ff
	inc  b                                           ; $634c: $04
	rst  $38                                         ; $634d: $ff
	rrca                                             ; $634e: $0f
	rst  $38                                         ; $634f: $ff
	db   $f4                                         ; $6350: $f4
	rst  $38                                         ; $6351: $ff
	ld   sp, hl                                      ; $6352: $f9
	rst  $38                                         ; $6353: $ff
	ld   a, [$07fc]                                  ; $6354: $fa $fc $07
	ld   hl, sp-$05                                  ; $6357: $f8 $fb
	db   $fc                                         ; $6359: $fc
	scf                                              ; $635a: $37
	ldh  a, [$37]                                    ; $635b: $f0 $37
	add  b                                           ; $635d: $80
	rst  $30                                         ; $635e: $f7
	ld   c, $f0                                      ; $635f: $0e $f0
	ld   l, e                                        ; $6361: $6b
	rst  $28                                         ; $6362: $ef
	ld   l, e                                        ; $6363: $6b
	db   $eb                                         ; $6364: $eb
	di                                               ; $6365: $f3
	rrca                                             ; $6366: $0f
	ld   h, d                                        ; $6367: $62
	rst  $28                                         ; $6368: $ef
	sbc  a                                           ; $6369: $9f
	rra                                              ; $636a: $1f
	ld   h, d                                        ; $636b: $62
	rst  $20                                         ; $636c: $e7
	ld   h, b                                        ; $636d: $60
	rst  $20                                         ; $636e: $e7
	add  b                                           ; $636f: $80
	rlca                                             ; $6370: $07
	inc  b                                           ; $6371: $04
	add  b                                           ; $6372: $80
	sbc  e                                           ; $6373: $9b
	add  b                                           ; $6374: $80
	adc  e                                           ; $6375: $8b
	ldh  [$80], a                                    ; $6376: $e0 $80
	rst  $38                                         ; $6378: $ff
	inc  bc                                          ; $6379: $03
	ld   a, a                                        ; $637a: $7f
	and  e                                           ; $637b: $a3
	rst  $38                                         ; $637c: $ff
	inc  hl                                          ; $637d: $23
	add  c                                           ; $637e: $81
	rst  $38                                         ; $637f: $ff

Jump_071_6380:
	ld   [$ffbf], sp                                 ; $6380: $08 $bf $ff
	or   a                                           ; $6383: $b7
	rst  $38                                         ; $6384: $ff
	ld   [hl], a                                     ; $6385: $77
	rst  $38                                         ; $6386: $ff
	ld   e, a                                        ; $6387: $5f
	adc  $ca                                         ; $6388: $ce $ca
	add  b                                           ; $638a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $638b: $cf
	add  e                                           ; $638c: $83
	adc  $02                                         ; $638d: $ce $02
	jp   z, $cbcf                                    ; $638f: $ca $cf $cb

	add  c                                           ; $6392: $81
	adc  $04                                         ; $6393: $ce $04
	ld   [hl], h                                     ; $6395: $74
	ld   h, b                                        ; $6396: $60
	nop                                              ; $6397: $00
	inc  b                                           ; $6398: $04
	inc  [hl]                                        ; $6399: $34
	add  b                                           ; $639a: $80
	ld   [hl], l                                     ; $639b: $75
	nop                                              ; $639c: $00
	ld   [hl], h                                     ; $639d: $74
	add  c                                           ; $639e: $81
	ld   [hl], b                                     ; $639f: $70
	add  b                                           ; $63a0: $80
	ld   [hl], c                                     ; $63a1: $71
	add  c                                           ; $63a2: $81
	ld   [hl], b                                     ; $63a3: $70
	ld   b, $39                                      ; $63a4: $06 $39
	jr   c, @+$7a                                    ; $63a6: $38 $78

	ld   [$4888], sp                                 ; $63a8: $08 $88 $48
	ret  z                                           ; $63ab: $c8

	add  b                                           ; $63ac: $80
	ld   [$9802], sp                                 ; $63ad: $08 $02 $98
	db   $10                                         ; $63b0: $10
	ld   c, b                                        ; $63b1: $48
	add  c                                           ; $63b2: $81
	ld   [$3801], sp                                 ; $63b3: $08 $01 $38
	ld   a, l                                        ; $63b6: $7d
	add  b                                           ; $63b7: $80
	call z, $cd80                                    ; $63b8: $cc $80 $cd
	add  [hl]                                        ; $63bb: $86
	call z, $cd03                                    ; $63bc: $cc $03 $cd
	call z, $8acd                                    ; $63bf: $cc $cd $8a
	adc  l                                           ; $63c2: $8d
	ld   bc, $f900                                   ; $63c3: $01 $00 $f9
	add  c                                           ; $63c6: $81
	ld   hl, sp+$06                                  ; $63c7: $f8 $06
	ld   a, [bc]                                     ; $63c9: $0a
	rst  $38                                         ; $63ca: $ff
	ld   [bc], a                                     ; $63cb: $02
	rst  $38                                         ; $63cc: $ff
	nop                                              ; $63cd: $00
	rst  $38                                         ; $63ce: $ff
	ld   l, h                                        ; $63cf: $6c
	add  c                                           ; $63d0: $81
	sbc  a                                           ; $63d1: $9f
	add  b                                           ; $63d2: $80
	rst  $38                                         ; $63d3: $ff
	nop                                              ; $63d4: $00

jr_071_63d5:
	dec  l                                           ; $63d5: $2d
	add  c                                           ; $63d6: $81
	ld   hl, $0006                                   ; $63d7: $21 $06 $00
	rst  $38                                         ; $63da: $ff
	nop                                              ; $63db: $00
	rst  $38                                         ; $63dc: $ff
	nop                                              ; $63dd: $00
	rst  $38                                         ; $63de: $ff
	reti                                             ; $63df: $d9


	add  c                                           ; $63e0: $81
	ld   a, $80                                      ; $63e1: $3e $80
	rst  $38                                         ; $63e3: $ff
	nop                                              ; $63e4: $00
	inc  b                                           ; $63e5: $04
	add  c                                           ; $63e6: $81
	ld   e, $07                                      ; $63e7: $1e $07
	ld   [bc], a                                     ; $63e9: $02
	rst  $38                                         ; $63ea: $ff
	rlca                                             ; $63eb: $07
	rst  $38                                         ; $63ec: $ff
	nop                                              ; $63ed: $00
	ld   hl, sp-$49                                  ; $63ee: $f8 $b7
	ld   a, a                                        ; $63f0: $7f
	add  b                                           ; $63f1: $80
	ld   a, b                                        ; $63f2: $78
	ld   [bc], a                                     ; $63f3: $02
	ei                                               ; $63f4: $fb
	rst  $38                                         ; $63f5: $ff
	add  b                                           ; $63f6: $80
	add  c                                           ; $63f7: $81
	rst  ToBoot                                         ; $63f8: $c7
	ld   bc, $cf44                                   ; $63f9: $01 $44 $cf
	add  b                                           ; $63fc: $80
	jp   $0401                                       ; $63fd: $c3 $01 $04


	rlca                                             ; $6400: $07
	add  b                                           ; $6401: $80
	call nz, $0401                                   ; $6402: $c4 $01 $04
	rlca                                             ; $6405: $07
	add  b                                           ; $6406: $80
	rst  ToBoot                                         ; $6407: $c7
	inc  b                                           ; $6408: $04
	ld   a, h                                        ; $6409: $7c
	jp   $c3c2                                       ; $640a: $c3 $c2 $c3


	ld   b, c                                        ; $640d: $41
	add  c                                           ; $640e: $81
	rst  $38                                         ; $640f: $ff
	ld   bc, $ff00                                   ; $6410: $01 $00 $ff
	add  b                                           ; $6413: $80
	ld   [hl], d                                     ; $6414: $72
	nop                                              ; $6415: $00
	nop                                              ; $6416: $00
	add  d                                           ; $6417: $82
	rst  $38                                         ; $6418: $ff
	inc  bc                                          ; $6419: $03
	cp   $04                                         ; $641a: $fe $04
	cp   $06                                         ; $641c: $fe $06
	add  c                                           ; $641e: $81
	cp   $04                                         ; $641f: $fe $04
	ld   b, $fe                                      ; $6421: $06 $fe
	or   e                                           ; $6423: $b3
	or   a                                           ; $6424: $b7
	nop                                              ; $6425: $00
	add  c                                           ; $6426: $81
	rst  $38                                         ; $6427: $ff
	add  h                                           ; $6428: $84
	sbc  a                                           ; $6429: $9f
	add  b                                           ; $642a: $80
	add  b                                           ; $642b: $80
	add  b                                           ; $642c: $80
	sbc  a                                           ; $642d: $9f
	ld   [bc], a                                     ; $642e: $02
	nop                                              ; $642f: $00
	rst  $38                                         ; $6430: $ff
	nop                                              ; $6431: $00
	add  c                                           ; $6432: $81
	rst  $38                                         ; $6433: $ff
	rlca                                             ; $6434: $07
	pop  hl                                          ; $6435: $e1
	rst  $38                                         ; $6436: $ff
	pop  hl                                          ; $6437: $e1
	rst  $38                                         ; $6438: $ff
	sbc  h                                           ; $6439: $9c
	rst  $38                                         ; $643a: $ff
	ld   h, e                                        ; $643b: $63
	nop                                              ; $643c: $00
	add  b                                           ; $643d: $80
	rst  $38                                         ; $643e: $ff
	ld   [bc], a                                     ; $643f: $02
	nop                                              ; $6440: $00
	rst  $38                                         ; $6441: $ff
	nop                                              ; $6442: $00
	add  c                                           ; $6443: $81
	rst  $38                                         ; $6444: $ff
	inc  c                                           ; $6445: $0c
	rla                                              ; $6446: $17
	add  sp, $5b                                     ; $6447: $e8 $5b
	db   $db                                         ; $6449: $db
	ld   d, a                                        ; $644a: $57
	call nc, $00d7                                   ; $644b: $d4 $d7 $00
	push de                                          ; $644e: $d5
	or   l                                           ; $644f: $b5
	scf                                              ; $6450: $37
	xor  e                                           ; $6451: $ab
	jr   z, jr_071_63d5                              ; $6452: $28 $81

	rst  $38                                         ; $6454: $ff
	inc  c                                           ; $6455: $0c
	inc  d                                           ; $6456: $14
	res  0, b                                        ; $6457: $cb $80
	call $1598                                       ; $6459: $cd $98 $15
	push de                                          ; $645c: $d5
	ret  nz                                          ; $645d: $c0

	push de                                          ; $645e: $d5
	sub  $ec                                         ; $645f: $d6 $ec
	ld   [$87f0], a                                  ; $6461: $ea $f0 $87
	rst  $38                                         ; $6464: $ff
	add  b                                           ; $6465: $80
	nop                                              ; $6466: $00
	add  b                                           ; $6467: $80
	rst  $38                                         ; $6468: $ff
	ld   [bc], a                                     ; $6469: $02
	nop                                              ; $646a: $00
	rst  $38                                         ; $646b: $ff
	nop                                              ; $646c: $00
	add  c                                           ; $646d: $81
	rst  $38                                         ; $646e: $ff
	ld   [bc], a                                     ; $646f: $02
	rst  JumpTable                                         ; $6470: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6471: $cf
	res  0, c                                        ; $6472: $cb $81
	adc  $06                                         ; $6474: $ce $06
	ld   b, l                                        ; $6476: $45
	ld   b, b                                        ; $6477: $40
	ldh  a, [$e0]                                    ; $6478: $f0 $e0
	nop                                              ; $647a: $00
	rst  $38                                         ; $647b: $ff
	nop                                              ; $647c: $00
	add  c                                           ; $647d: $81
	rst  $38                                         ; $647e: $ff
	nop                                              ; $647f: $00
	dec  [hl]                                        ; $6480: $35
	add  b                                           ; $6481: $80
	ld   [hl], c                                     ; $6482: $71
	add  c                                           ; $6483: $81
	ld   [hl], b                                     ; $6484: $70
	add  b                                           ; $6485: $80
	ld   [hl], c                                     ; $6486: $71
	inc  b                                           ; $6487: $04
	ret  nz                                          ; $6488: $c0

	add  c                                           ; $6489: $81
	pop  de                                          ; $648a: $d1
	ret  nc                                          ; $648b: $d0

	ld   a, [$ff81]                                  ; $648c: $fa $81 $ff
	nop                                              ; $648f: $00
	db   $f4                                         ; $6490: $f4
	add  b                                           ; $6491: $80
	ret  z                                           ; $6492: $c8

	ld   a, [bc]                                     ; $6493: $0a
	ld   c, b                                        ; $6494: $48
	ld   b, b                                        ; $6495: $40
	ld   c, b                                        ; $6496: $48
	cp   b                                           ; $6497: $b8
	ld   hl, sp+$09                                  ; $6498: $f8 $09
	ld   a, [$01fb]                                  ; $649a: $fa $fb $01
	inc  bc                                          ; $649d: $03
	cp   $80                                         ; $649e: $fe $80
	db   $fc                                         ; $64a0: $fc
	nop                                              ; $64a1: $00
	or   b                                           ; $64a2: $b0
	add  c                                           ; $64a3: $81
	call $8c07                                       ; $64a4: $cd $07 $8c
	db   $fd                                         ; $64a7: $fd
	db   $fc                                         ; $64a8: $fc
	db   $fd                                         ; $64a9: $fd
	inc  b                                           ; $64aa: $04
	dec  c                                           ; $64ab: $0d
	db   $fc                                         ; $64ac: $fc
	db   $fd                                         ; $64ad: $fd
	add  b                                           ; $64ae: $80
	inc  b                                           ; $64af: $04
	add  b                                           ; $64b0: $80
	ld   a, h                                        ; $64b1: $7c
	nop                                              ; $64b2: $00
	ldh  a, [c]                                      ; $64b3: $f2
	add  l                                           ; $64b4: $85
	ld   bc, $0600                                   ; $64b5: $01 $00 $06
	add  b                                           ; $64b8: $80
	nop                                              ; $64b9: $00
	add  c                                           ; $64ba: $81
	inc  bc                                          ; $64bb: $03
	ld   [bc], a                                     ; $64bc: $02
	nop                                              ; $64bd: $00
	inc  bc                                          ; $64be: $03
	rrca                                             ; $64bf: $0f
	add  d                                           ; $64c0: $82
	rst  $38                                         ; $64c1: $ff
	add  b                                           ; $64c2: $80
	nop                                              ; $64c3: $00
	add  hl, bc                                      ; $64c4: $09
	rst  $38                                         ; $64c5: $ff

jr_071_64c6:
	ld   d, l                                        ; $64c6: $55
	rst  $38                                         ; $64c7: $ff
	nop                                              ; $64c8: $00
	rst  $38                                         ; $64c9: $ff
	add  b                                           ; $64ca: $80
	rst  $38                                         ; $64cb: $ff
	xor  b                                           ; $64cc: $a8
	rst  $38                                         ; $64cd: $ff
	add  d                                           ; $64ce: $82
	add  d                                           ; $64cf: $82
	rst  $38                                         ; $64d0: $ff
	add  b                                           ; $64d1: $80
	nop                                              ; $64d2: $00
	add  hl, bc                                      ; $64d3: $09
	rst  $38                                         ; $64d4: $ff
	ld   d, l                                        ; $64d5: $55
	rst  $38                                         ; $64d6: $ff
	nop                                              ; $64d7: $00
	rst  $38                                         ; $64d8: $ff
	nop                                              ; $64d9: $00
	rst  $38                                         ; $64da: $ff
	nop                                              ; $64db: $00
	rst  $38                                         ; $64dc: $ff
	xor  d                                           ; $64dd: $aa
	add  d                                           ; $64de: $82
	rst  $38                                         ; $64df: $ff
	add  b                                           ; $64e0: $80
	inc  bc                                          ; $64e1: $03
	ld   a, [bc]                                     ; $64e2: $0a
	rst  $38                                         ; $64e3: $ff
	ld   d, a                                        ; $64e4: $57
	rst  $38                                         ; $64e5: $ff
	inc  bc                                          ; $64e6: $03
	rst  $38                                         ; $64e7: $ff
	inc  bc                                          ; $64e8: $03
	rst  $38                                         ; $64e9: $ff
	inc  bc                                          ; $64ea: $03
	rst  $38                                         ; $64eb: $ff
	sub  h                                           ; $64ec: $94
	ret  nz                                          ; $64ed: $c0

	add  d                                           ; $64ee: $82
	jp   nz, $c680                                   ; $64ef: $c2 $80 $c6

	rlca                                             ; $64f2: $07
	jp   nz, $c2c6                                   ; $64f3: $c2 $c6 $c2

	add  $c2                                         ; $64f6: $c6 $c2
	add  $c2                                         ; $64f8: $c6 $c2
	add  $80                                         ; $64fa: $c6 $80
	nop                                              ; $64fc: $00
	add  d                                           ; $64fd: $82
	ld   [hl+], a                                    ; $64fe: $22
	add  b                                           ; $64ff: $80
	xor  $04                                         ; $6500: $ee $04
	and  d                                           ; $6502: $a2
	ld   [$e22a], a                                  ; $6503: $ea $2a $e2
	ld   [hl+], a                                    ; $6506: $22
	add  b                                           ; $6507: $80
	and  d                                           ; $6508: $a2
	inc  bc                                          ; $6509: $03
	ld   [hl+], a                                    ; $650a: $22
	add  b                                           ; $650b: $80
	nop                                              ; $650c: $00
	ld   [hl+], a                                    ; $650d: $22
	add  c                                           ; $650e: $81
	ld   a, [hl+]                                    ; $650f: $2a
	ld   [bc], a                                     ; $6510: $02
	adc  b                                           ; $6511: $88
	xor  d                                           ; $6512: $aa
	ld   a, [hl+]                                    ; $6513: $2a
	add  [hl]                                        ; $6514: $86
	ld   [hl+], a                                    ; $6515: $22
	ld   bc, $2200                                   ; $6516: $01 $00 $22
	add  c                                           ; $6519: $81
	xor  d                                           ; $651a: $aa
	nop                                              ; $651b: $00
	adc  b                                           ; $651c: $88
	add  b                                           ; $651d: $80
	xor  d                                           ; $651e: $aa
	add  [hl]                                        ; $651f: $86
	ld   [hl+], a                                    ; $6520: $22
	ld   [bc], a                                     ; $6521: $02
	nop                                              ; $6522: $00
	jr   nz, jr_071_64c6                             ; $6523: $20 $a1

	add  b                                           ; $6525: $80
	and  e                                           ; $6526: $a3
	inc  bc                                          ; $6527: $03
	add  d                                           ; $6528: $82
	and  e                                           ; $6529: $a3
	and  d                                           ; $652a: $a2
	ld   [hl+], a                                    ; $652b: $22
	add  b                                           ; $652c: $80
	inc  hl                                          ; $652d: $23
	dec  b                                           ; $652e: $05
	ld   [hl+], a                                    ; $652f: $22
	inc  h                                           ; $6530: $24
	ld   hl, $2027                                   ; $6531: $21 $27 $20
	nop                                              ; $6534: $00
	add  b                                           ; $6535: $80
	ld   sp, $8103                                   ; $6536: $31 $03 $81
	adc  c                                           ; $6539: $89
	dec  de                                          ; $653a: $1b
	sbc  d                                           ; $653b: $9a
	add  b                                           ; $653c: $80
	cp   c                                           ; $653d: $b9
	ld   b, $ba                                      ; $653e: $06 $ba
	xor  d                                           ; $6540: $aa
	cp   c                                           ; $6541: $b9
	sbc  e                                           ; $6542: $9b
	add  sp, -$26                                    ; $6543: $e8 $da
	adc  c                                           ; $6545: $89
	add  b                                           ; $6546: $80
	nop                                              ; $6547: $00
	inc  bc                                          ; $6548: $03
	jp   nz, $0a8a                                   ; $6549: $c2 $8a $0a

	ld   d, d                                        ; $654c: $52
	add  c                                           ; $654d: $81
	ld   e, d                                        ; $654e: $5a
	ld   bc, $1e06                                   ; $654f: $01 $06 $1e
	add  b                                           ; $6552: $80
	ld   d, [hl]                                     ; $6553: $56
	inc  b                                           ; $6554: $04
	ld   b, [hl]                                     ; $6555: $46
	ld   c, [hl]                                     ; $6556: $4e
	ld   e, d                                        ; $6557: $5a
	nop                                              ; $6558: $00
	ld   [bc], a                                     ; $6559: $02
	add  c                                           ; $655a: $81
	ld   [hl+], a                                    ; $655b: $22
	inc  bc                                          ; $655c: $03
	ld   h, $a6                                      ; $655d: $26 $a6
	ld   h, $a6                                      ; $655f: $26 $a6
	add  b                                           ; $6561: $80
	and  d                                           ; $6562: $a2
	ld   b, $24                                      ; $6563: $06 $24
	and  b                                           ; $6565: $a0
	jr   nz, @+$24                                   ; $6566: $20 $22

	and  [hl]                                        ; $6568: $a6
	nop                                              ; $6569: $00
	ld   [hl+], a                                    ; $656a: $22
	add  b                                           ; $656b: $80
	ld   [bc], a                                     ; $656c: $02
	dec  b                                           ; $656d: $05
	add  [hl]                                        ; $656e: $86
	ld   a, [hl+]                                    ; $656f: $2a
	ld   a, [bc]                                     ; $6570: $0a
	ld   [bc], a                                     ; $6571: $02
	ld   [hl+], a                                    ; $6572: $22
	and  [hl]                                        ; $6573: $a6
	add  c                                           ; $6574: $81
	and  d                                           ; $6575: $a2
	ld   bc, $8222                                   ; $6576: $01 $22 $82
	add  b                                           ; $6579: $80
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	ld   [bc], a                                     ; $657c: $02
	add  b                                           ; $657d: $80
	adc  d                                           ; $657e: $8a
	add  b                                           ; $657f: $80
	and  e                                           ; $6580: $a3
	add  b                                           ; $6581: $80
	inc  hl                                          ; $6582: $23
	add  b                                           ; $6583: $80
	cpl                                              ; $6584: $2f
	add  c                                           ; $6585: $81
	inc  hl                                          ; $6586: $23
	add  b                                           ; $6587: $80
	ld   h, e                                        ; $6588: $63
	ld   bc, $0021                                   ; $6589: $01 $21 $00
	add  b                                           ; $658c: $80
	ld   [hl-], a                                    ; $658d: $32
	rrca                                             ; $658e: $0f
	ld   [hl+], a                                    ; $658f: $22
	ld   [hl-], a                                    ; $6590: $32
	inc  hl                                          ; $6591: $23
	dec  sp                                          ; $6592: $3b
	inc  hl                                          ; $6593: $23
	dec  sp                                          ; $6594: $3b
	inc  hl                                          ; $6595: $23
	dec  sp                                          ; $6596: $3b
	inc  sp                                          ; $6597: $33
	dec  hl                                          ; $6598: $2b
	ld   hl, $7931                                   ; $6599: $21 $31 $79
	ld   a, h                                        ; $659c: $7c
	ld   a, d                                        ; $659d: $7a
	ld   a, a                                        ; $659e: $7f
	add  b                                           ; $659f: $80
	ld   a, c                                        ; $65a0: $79
	add  hl, bc                                      ; $65a1: $09
	ld   a, l                                        ; $65a2: $7d
	ld   a, b                                        ; $65a3: $78
	ld   a, d                                        ; $65a4: $7a
	ld   a, a                                        ; $65a5: $7f
	ld   a, l                                        ; $65a6: $7d
	ld   a, a                                        ; $65a7: $7f
	ld   a, b                                        ; $65a8: $78
	ld   a, a                                        ; $65a9: $7f
	ld   a, b                                        ; $65aa: $78
	ld   a, a                                        ; $65ab: $7f
	add  d                                           ; $65ac: $82
	ld   bc, $0086                                   ; $65ad: $01 $86 $00
	nop                                              ; $65b0: $00
	ld   c, $85                                      ; $65b1: $0e $85
	rrca                                             ; $65b3: $0f
	nop                                              ; $65b4: $00
	ld   bc, $0085                                   ; $65b5: $01 $85 $00
	ld   [$ffde], sp                                 ; $65b8: $08 $de $ff
	rst  ToBoot                                         ; $65bb: $c7
	rst  $38                                         ; $65bc: $ff
	db   $e3                                         ; $65bd: $e3
	rst  $38                                         ; $65be: $ff
	ld   sp, hl                                      ; $65bf: $f9
	rst  $38                                         ; $65c0: $ff
	inc  bc                                          ; $65c1: $03
	add  l                                           ; $65c2: $85
	nop                                              ; $65c3: $00
	ld   [$ffcf], sp                                 ; $65c4: $08 $cf $ff
	rst  ToBoot                                         ; $65c7: $c7
	rst  $38                                         ; $65c8: $ff
	di                                               ; $65c9: $f3
	rst  $38                                         ; $65ca: $ff
	ld   hl, sp-$01                                  ; $65cb: $f8 $ff
	inc  bc                                          ; $65cd: $03
	add  l                                           ; $65ce: $85
	nop                                              ; $65cf: $00
	ld   [$fedc], sp                                 ; $65d0: $08 $dc $fe
	db   $ec                                         ; $65d3: $ec
	cp   $e6                                         ; $65d4: $fe $e6
	cp   $f2                                         ; $65d6: $fe $f2
	cp   $24                                         ; $65d8: $fe $24
	add  l                                           ; $65da: $85
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	cp   a                                           ; $65dd: $bf
	add  b                                           ; $65de: $80
	call z, $ce05                                    ; $65df: $cc $05 $ce
	add  $cf                                         ; $65e2: $c6 $cf
	jp   Jump_071_74cf                               ; $65e4: $c3 $cf $74


	add  l                                           ; $65e7: $85
	nop                                              ; $65e8: $00
	ld   [$ffc0], sp                                 ; $65e9: $08 $c0 $ff
	rst  JumpTable                                         ; $65ec: $df
	ld   a, a                                        ; $65ed: $7f
	ld   l, a                                        ; $65ee: $6f
	ccf                                              ; $65ef: $3f
	or   a                                           ; $65f0: $b7
	sbc  a                                           ; $65f1: $9f
	rst  $20                                         ; $65f2: $e7
	add  [hl]                                        ; $65f3: $86
	nop                                              ; $65f4: $00
	add  [hl]                                        ; $65f5: $86
	cp   $85                                         ; $65f6: $fe $85
	nop                                              ; $65f8: $00
	dec  b                                           ; $65f9: $05
	rra                                              ; $65fa: $1f
	cp   e                                           ; $65fb: $bb
	rra                                              ; $65fc: $1f
	dec  e                                           ; $65fd: $1d
	add  l                                           ; $65fe: $85

Call_071_65ff:
	rst  JumpTable                                         ; $65ff: $df
	add  b                                           ; $6600: $80
	db   $e3                                         ; $6601: $e3
	nop                                              ; $6602: $00
	db   $fc                                         ; $6603: $fc
	add  l                                           ; $6604: $85
	nop                                              ; $6605: $00
	ld   [$3bfb], sp                                 ; $6606: $08 $fb $3b
	ld   e, $7f                                      ; $6609: $1e $7f
	ld   e, $70                                      ; $660b: $1e $70
	ret  nc                                          ; $660d: $d0

	pop  de                                          ; $660e: $d1
	adc  $85                                         ; $660f: $ce $85
	nop                                              ; $6611: $00
	ld   [$3c4f], sp                                 ; $6612: $08 $4f $3c
	ld   l, l                                        ; $6615: $6d
	ld   l, e                                        ; $6616: $6b
	ld   c, $ae                                      ; $6617: $0e $ae
	sub  h                                           ; $6619: $94
	xor  $af                                         ; $661a: $ee $af
	add  l                                           ; $661c: $85
	nop                                              ; $661d: $00
	ld   [$09f6], sp                                 ; $661e: $08 $f6 $09
	nop                                              ; $6621: $00
	ld   bc, $1d11                                   ; $6622: $01 $11 $1d
	inc  l                                           ; $6625: $2c
	ld   h, $f8                                      ; $6626: $26 $f8
	add  l                                           ; $6628: $85
	nop                                              ; $6629: $00
	ld   [$4bbf], sp                                 ; $662a: $08 $bf $4b
	ld   a, [bc]                                     ; $662d: $0a
	ld   c, d                                        ; $662e: $4a
	dec  hl                                          ; $662f: $2b
	jp   hl                                          ; $6630: $e9


	di                                               ; $6631: $f3
	ld   a, [hl]                                     ; $6632: $7e
	ei                                               ; $6633: $fb
	add  l                                           ; $6634: $85
	nop                                              ; $6635: $00
	ld   [$df58], sp                                 ; $6636: $08 $58 $df
	rrca                                             ; $6639: $0f
	sbc  a                                           ; $663a: $9f
	sub  a                                           ; $663b: $97
	sbc  a                                           ; $663c: $9f
	ld   h, a                                        ; $663d: $67
	ld   b, a                                        ; $663e: $47
	ccf                                              ; $663f: $3f
	add  [hl]                                        ; $6640: $86
	nop                                              ; $6641: $00
	add  e                                           ; $6642: $83
	rst  $38                                         ; $6643: $ff
	ld   [bc], a                                     ; $6644: $02
	cp   $ff                                         ; $6645: $fe $ff
	cp   $85                                         ; $6647: $fe $85
	nop                                              ; $6649: $00
	inc  b                                           ; $664a: $04
	ld   a, $f2                                      ; $664b: $3e $f2
	or   [hl]                                        ; $664d: $b6
	and  $66                                         ; $664e: $e6 $66
	add  b                                           ; $6650: $80
	adc  $01                                         ; $6651: $ce $01
	sbc  [hl]                                        ; $6653: $9e
	ld   h, h                                        ; $6654: $64
	add  l                                           ; $6655: $85
	nop                                              ; $6656: $00
	ld   [bc], a                                     ; $6657: $02
	ld   [hl], a                                     ; $6658: $77
	ld   c, a                                        ; $6659: $4f
	ld   b, a                                        ; $665a: $47
	add  c                                           ; $665b: $81
	ld   c, a                                        ; $665c: $4f
	ld   [$4f4e], sp                                 ; $665d: $08 $4e $4f
	inc  sp                                          ; $6660: $33
	rrca                                             ; $6661: $0f
	ld   bc, $0d0f                                   ; $6662: $01 $0f $0d
	rrca                                             ; $6665: $0f
	ld   c, $84                                      ; $6666: $0e $84
	rrca                                             ; $6668: $0f
	inc  hl                                          ; $6669: $23
	ld   c, $03                                      ; $666a: $0e $03
	inc  c                                           ; $666c: $0c
	ldh  a, [rIE]                                    ; $666d: $f0 $ff
	cp   $ff                                         ; $666f: $fe $ff
	ld   a, a                                        ; $6671: $7f
	db   $fc                                         ; $6672: $fc
	dec  de                                          ; $6673: $1b
	db   $e4                                         ; $6674: $e4
	sbc  h                                           ; $6675: $9c
	add  b                                           ; $6676: $80
	db   $ed                                         ; $6677: $ed
	inc  bc                                          ; $6678: $03
	or   d                                           ; $6679: $b2
	rrca                                             ; $667a: $0f
	ld   c, h                                        ; $667b: $4c
	dec  a                                           ; $667c: $3d
	ld   a, $fb                                      ; $667d: $3e $fb
	db   $fc                                         ; $667f: $fc
	add  b                                           ; $6680: $80
	ld   sp, $c270                                   ; $6681: $31 $70 $c2
	ld   [hl], d                                     ; $6684: $72
	call nc, $0524                                   ; $6685: $d4 $24 $05
	ret  nz                                          ; $6688: $c0

	ld   l, c                                        ; $6689: $69
	sbc  c                                           ; $668a: $99
	or   b                                           ; $668b: $b0
	ldh  a, [rHDMA1]                                 ; $668c: $f0 $51
	add  b                                           ; $668e: $80
	cp   $80                                         ; $668f: $fe $80

jr_071_6691:
	ld   a, $80                                      ; $6691: $3e $80
	cp   [hl]                                        ; $6693: $be
	add  hl, hl                                      ; $6694: $29
	adc  [hl]                                        ; $6695: $8e
	db   $ec                                         ; $6696: $ec
	ld   h, h                                        ; $6697: $64
	call nz, $68a2                                   ; $6698: $c4 $a2 $68
	ld   a, [hl+]                                    ; $669b: $2a
	sub  d                                           ; $669c: $92
	sbc  b                                           ; $669d: $98
	ld   c, a                                        ; $669e: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $669f: $cf
	call z, $c6cf                                    ; $66a0: $cc $cf $c6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a3: $cf
	rst  ToBoot                                         ; $66a4: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a5: $cf
	ret                                              ; $66a6: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a7: $cf
	call z, $c7cf                                    ; $66a8: $cc $cf $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66ab: $cf
	jp   $89cf                                       ; $66ac: $c3 $cf $89


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66af: $cf
	call Call_071_66e7                               ; $66b0: $cd $e7 $66
	di                                               ; $66b3: $f3
	dec  sp                                          ; $66b4: $3b
	ld   sp, hl                                      ; $66b5: $f9
	sub  l                                           ; $66b6: $95
	db   $fc                                         ; $66b7: $fc
	db   $ec                                         ; $66b8: $ec
	cp   $66                                         ; $66b9: $fe $66
	rst  $38                                         ; $66bb: $ff
	ld   [hl], a                                     ; $66bc: $77
	rst  $38                                         ; $66bd: $ff
	inc  h                                           ; $66be: $24
	add  e                                           ; $66bf: $83
	cp   $0c                                         ; $66c0: $fe $0c
	ld   a, [hl]                                     ; $66c2: $7e
	cp   $be                                         ; $66c3: $fe $be
	cp   $de                                         ; $66c5: $fe $de
	ld   a, [hl]                                     ; $66c7: $7e
	ld   l, [hl]                                     ; $66c8: $6e
	ld   a, $36                                      ; $66c9: $3e $36
	sbc  [hl]                                        ; $66cb: $9e
	dec  sp                                          ; $66cc: $3b
	ld   a, [$81f8]                                  ; $66cd: $fa $f8 $81
	or   e                                           ; $66d0: $b3
	ld   bc, $b6a2                                   ; $66d1: $01 $a2 $b6
	add  b                                           ; $66d4: $80
	cp   b                                           ; $66d5: $b8
	ld   bc, $beb7                                   ; $66d6: $01 $b7 $be
	add  b                                           ; $66d9: $80
	cp   a                                           ; $66da: $bf
	jr   c, jr_071_6691                              ; $66db: $38 $b4

	cp   e                                           ; $66dd: $bb
	ld   a, [hl+]                                    ; $66de: $2a
	dec  a                                           ; $66df: $3d
	ld   e, $ff                                      ; $66e0: $1e $ff
	add  a                                           ; $66e2: $87
	add  e                                           ; $66e3: $83
	inc  bc                                          ; $66e4: $03
	ld   e, a                                        ; $66e5: $5f
	rst  ToBoot                                         ; $66e6: $c7

Call_071_66e7:
	rst  $38                                         ; $66e7: $ff
	rra                                              ; $66e8: $1f
	ei                                               ; $66e9: $fb
	ld   [hl], e                                     ; $66ea: $73
	ld   sp, hl                                      ; $66eb: $f9
	ld   hl, sp-$17                                  ; $66ec: $f8 $e9
	push af                                          ; $66ee: $f5
	db   $fd                                         ; $66ef: $fd
	ld   l, d                                        ; $66f0: $6a
	cp   $dc                                         ; $66f1: $fe $dc
	cp   $7e                                         ; $66f3: $fe $7e
	call nc, $c59c                                   ; $66f5: $d4 $9c $c5
	daa                                              ; $66f8: $27
	xor  [hl]                                        ; $66f9: $ae
	inc  l                                           ; $66fa: $2c
	jp   $cf0b                                       ; $66fb: $c3 $0b $cf


	ld   h, $23                                      ; $66fe: $26 $23
	ld   b, $28                                      ; $6700: $06 $28
	ld   e, $3e                                      ; $6702: $1e $3e
	inc  b                                           ; $6704: $04
	rra                                              ; $6705: $1f
	cp   c                                           ; $6706: $b9
	cp   [hl]                                        ; $6707: $be
	ld   b, h                                        ; $6708: $44
	ld   e, a                                        ; $6709: $5f
	ld   e, c                                        ; $670a: $59
	ld   a, h                                        ; $670b: $7c
	ld   c, [hl]                                     ; $670c: $4e
	ld   a, [hl]                                     ; $670d: $7e
	ld   l, [hl]                                     ; $670e: $6e
	halt                                             ; $670f: $76
	ld   c, d                                        ; $6710: $4a
	ld   e, e                                        ; $6711: $5b
	ld   a, [hl-]                                    ; $6712: $3a
	dec  a                                           ; $6713: $3d
	ld   d, b                                        ; $6714: $50
	add  b                                           ; $6715: $80
	ld   a, a                                        ; $6716: $7f
	dec  sp                                          ; $6717: $3b
	ld   e, a                                        ; $6718: $5f
	inc  e                                           ; $6719: $1c

jr_071_671a:
	rst  $30                                         ; $671a: $f7
	xor  e                                           ; $671b: $ab
	cp   e                                           ; $671c: $bb
	sbc  l                                           ; $671d: $9d
	adc  a                                           ; $671e: $8f
	ld   sp, $07e7                                   ; $671f: $31 $e7 $07
	rst  $20                                         ; $6722: $e7
	rst  ToBoot                                         ; $6723: $c7
	ld   b, a                                        ; $6724: $47
	ld   d, a                                        ; $6725: $57
	ld   [hl], a                                     ; $6726: $77
	ld   h, a                                        ; $6727: $67
	rst  ToBoot                                         ; $6728: $c7
	rst  $10                                         ; $6729: $d7
	rst  $30                                         ; $672a: $f7
	ld   d, a                                        ; $672b: $57
	rst  $10                                         ; $672c: $d7
	sub  [hl]                                        ; $672d: $96
	rst  $10                                         ; $672e: $d7
	db   $dd                                         ; $672f: $dd
	rst  $38                                         ; $6730: $ff
	ei                                               ; $6731: $fb
	cp   $f6                                         ; $6732: $fe $f6
	db   $fc                                         ; $6734: $fc
	db   $ec                                         ; $6735: $ec
	ld   sp, hl                                      ; $6736: $f9
	reti                                             ; $6737: $d9


	di                                               ; $6738: $f3
	or   a                                           ; $6739: $b7
	rst  $20                                         ; $673a: $e7
	ld   h, l                                        ; $673b: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $673c: $cf
	call $9c9f                                       ; $673d: $cd $9f $9c
	ld   a, $74                                      ; $6740: $3e $74
	ld   a, [hl]                                     ; $6742: $7e
	ld   l, d                                        ; $6743: $6a
	cp   $c6                                         ; $6744: $fe $c6
	cp   $dc                                         ; $6746: $fe $dc
	cp   $38                                         ; $6748: $fe $38
	cp   $f6                                         ; $674a: $fe $f6
	cp   $d6                                         ; $674c: $fe $d6
	cp   $dd                                         ; $674e: $fe $dd
	ld   c, a                                        ; $6750: $4f
	ld   b, e                                        ; $6751: $43
	ld   c, a                                        ; $6752: $4f
	ld   b, [hl]                                     ; $6753: $46
	add  c                                           ; $6754: $81
	ld   c, [hl]                                     ; $6755: $4e
	add  c                                           ; $6756: $81
	ld   c, d                                        ; $6757: $4a
	ld   bc, $434b                                   ; $6758: $01 $4b $43
	add  b                                           ; $675b: $80
	ld   c, h                                        ; $675c: $4c
	ld   [$3c40], sp                                 ; $675d: $08 $40 $3c
	ld   [$000d], sp                                 ; $6760: $08 $0d $00
	ld   b, $00                                      ; $6763: $06 $00
	ld   [bc], a                                     ; $6765: $02
	dec  b                                           ; $6766: $05
	add  b                                           ; $6767: $80
	inc  b                                           ; $6768: $04
	nop                                              ; $6769: $00
	rlca                                             ; $676a: $07
	add  c                                           ; $676b: $81
	nop                                              ; $676c: $00
	inc  hl                                          ; $676d: $23
	ld   b, $07                                      ; $676e: $06 $07
	pop  af                                          ; $6770: $f1
	cpl                                              ; $6771: $2f
	dec  hl                                          ; $6772: $2b
	rrca                                             ; $6773: $0f
	dec  c                                           ; $6774: $0d
	inc  de                                          ; $6775: $13

jr_071_6776:
	sub  l                                           ; $6776: $95
	db   $ec                                         ; $6777: $ec
	ld   h, b                                        ; $6778: $60
	db   $fc                                         ; $6779: $fc
	ld   [hl], b                                     ; $677a: $70
	inc  e                                           ; $677b: $1c
	ld   a, h                                        ; $677c: $7c
	rlca                                             ; $677d: $07
	dec  de                                          ; $677e: $1b
	nop                                              ; $677f: $00
	ld   a, d                                        ; $6780: $7a
	sbc  [hl]                                        ; $6781: $9e
	ld   a, [bc]                                     ; $6782: $0a
	dec  de                                          ; $6783: $1b
	nop                                              ; $6784: $00
	ld   c, c                                        ; $6785: $49
	ret  nz                                          ; $6786: $c0

	ld   sp, hl                                      ; $6787: $f9
	ld   e, b                                        ; $6788: $58
	ld   e, e                                        ; $6789: $5b
	jr   nz, @+$61                                   ; $678a: $20 $5f

	add  b                                           ; $678c: $80
	xor  e                                           ; $678d: $ab
	inc  l                                           ; $678e: $2c
	rst  $38                                         ; $678f: $ff
	jr   nc, @-$32                                   ; $6790: $30 $cc

	add  b                                           ; $6792: $80
	ld   b, h                                        ; $6793: $44
	inc  bc                                          ; $6794: $03
	ld   b, b                                        ; $6795: $40
	ldh  [$b8], a                                    ; $6796: $e0 $b8
	jr   c, jr_071_671a                              ; $6798: $38 $80

	jr   nc, jr_071_67ac                             ; $679a: $30 $10

	jr   z, jr_071_6776                              ; $679c: $28 $d8

	ret  nz                                          ; $679e: $c0

	db   $10                                         ; $679f: $10
	ld   b, [hl]                                     ; $67a0: $46
	ld   c, [hl]                                     ; $67a1: $4e
	ld   c, d                                        ; $67a2: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67a3: $cf
	call z, $c7cf                                    ; $67a4: $cc $cf $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67a7: $cf
	jp   $c8cf                                       ; $67a8: $c3 $cf $c8


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67ab: $cf

jr_071_67ac:
	add  $83                                         ; $67ac: $c6 $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67ae: $cf
	db   $10                                         ; $67af: $10
	sub  a                                           ; $67b0: $97
	rst  $38                                         ; $67b1: $ff
	ld   h, h                                        ; $67b2: $64
	rst  $38                                         ; $67b3: $ff
	ld   a, [hl-]                                    ; $67b4: $3a
	rst  $38                                         ; $67b5: $ff
	reti                                             ; $67b6: $d9


	rst  $38                                         ; $67b7: $ff
	call c, Call_071_72ff                            ; $67b8: $dc $ff $72
	rst  $38                                         ; $67bb: $ff
	ld   a, c                                        ; $67bc: $79
	rst  $38                                         ; $67bd: $ff
	sbc  [hl]                                        ; $67be: $9e
	rst  $38                                         ; $67bf: $ff
	rst  JumpTable                                         ; $67c0: $df
	add  b                                           ; $67c1: $80
	adc  $0e                                         ; $67c2: $ce $0e
	and  $64                                         ; $67c4: $e6 $64
	ldh  a, [c]                                      ; $67c6: $f2
	ld   [hl-], a                                    ; $67c7: $32
	ld   hl, sp-$78                                  ; $67c8: $f8 $88
	ld   hl, sp+$40                                  ; $67ca: $f8 $40
	ld   a, [$fa32]                                  ; $67cc: $fa $32 $fa
	and  d                                           ; $67cf: $a2
	ld   a, [$bf5d]                                  ; $67d0: $fa $5d $bf
	add  b                                           ; $67d3: $80
	cp   l                                           ; $67d4: $bd
	inc  bc                                          ; $67d5: $03
	add  e                                           ; $67d6: $83
	cp   d                                           ; $67d7: $ba
	cp   c                                           ; $67d8: $b9
	add  c                                           ; $67d9: $81
	add  b                                           ; $67da: $80
	add  b                                           ; $67db: $80
	add  h                                           ; $67dc: $84
	sbc  a                                           ; $67dd: $9f
	rla                                              ; $67de: $17
	db   $10                                         ; $67df: $10
	xor  $a7                                         ; $67e0: $ee $a7
	and  [hl]                                        ; $67e2: $a6
	rst  ToBoot                                         ; $67e3: $c7
	rla                                              ; $67e4: $17
	ld   b, a                                        ; $67e5: $47
	ld   d, c                                        ; $67e6: $51
	dec  l                                           ; $67e7: $2d
	dec  c                                           ; $67e8: $0d
	db   $e3                                         ; $67e9: $e3
	cp   $f1                                         ; $67ea: $fe $f1
	rst  $30                                         ; $67ec: $f7
	db   $fd                                         ; $67ed: $fd
	rst  $38                                         ; $67ee: $ff
	add  c                                           ; $67ef: $81
	halt                                             ; $67f0: $76
	ld   l, e                                        ; $67f1: $6b
	rst  $38                                         ; $67f2: $ff
	and  l                                           ; $67f3: $a5
	add  hl, sp                                      ; $67f4: $39
	call c, $80d8                                    ; $67f5: $dc $d8 $80
	db   $dd                                         ; $67f8: $dd
	ld   a, [hl+]                                    ; $67f9: $2a
	pop  bc                                          ; $67fa: $c1
	dec  sp                                          ; $67fb: $3b
	dec  [hl]                                        ; $67fc: $35
	or   a                                           ; $67fd: $b7
	ld   a, l                                        ; $67fe: $7d
	rst  $38                                         ; $67ff: $ff
	ld   [hl-], a                                    ; $6800: $32
	di                                               ; $6801: $f3
	sub  e                                           ; $6802: $93
	inc  sp                                          ; $6803: $33
	ld   hl, $6a11                                   ; $6804: $21 $11 $6a
	or   [hl]                                        ; $6807: $b6
	or   l                                           ; $6808: $b5
	cp   l                                           ; $6809: $bd
	ld   [$4dcc], sp                                 ; $680a: $08 $cc $4d
	ld   c, a                                        ; $680d: $4f
	db   $10                                         ; $680e: $10
	ld   e, [hl]                                     ; $680f: $5e
	dec  c                                           ; $6810: $0d
	rst  JumpTable                                         ; $6811: $df
	sub  $f8                                         ; $6812: $d6 $f8
	ld   [hl], b                                     ; $6814: $70
	ret  nc                                          ; $6815: $d0

	add  b                                           ; $6816: $80
	ret  nc                                          ; $6817: $d0

	nop                                              ; $6818: $00
	rlca                                             ; $6819: $07
	inc  d                                           ; $681a: $14
	rst  $38                                         ; $681b: $ff
	inc  de                                          ; $681c: $13
	rst  $38                                         ; $681d: $ff
	rra                                              ; $681e: $1f
	ldh  a, [$5b]                                    ; $681f: $f0 $5b
	sub  a                                           ; $6821: $97
	db   $d3                                         ; $6822: $d3
	sub  $56                                         ; $6823: $d6 $56
	add  b                                           ; $6825: $80
	call nc, Call_071_5181                           ; $6826: $d4 $81 $51
	ld   [bc], a                                     ; $6829: $02
	ld   d, b                                        ; $682a: $50
	push de                                          ; $682b: $d5
	ld   d, h                                        ; $682c: $54
	add  c                                           ; $682d: $81
	push de                                          ; $682e: $d5
	jr   nz, @+$2f                                   ; $682f: $20 $2d

	ccf                                              ; $6831: $3f
	ld   h, a                                        ; $6832: $67
	ld   a, a                                        ; $6833: $7f
	ld   e, h                                        ; $6834: $5c
	rst  $38                                         ; $6835: $ff
	reti                                             ; $6836: $d9


	rst  $38                                         ; $6837: $ff
	inc  sp                                          ; $6838: $33
	rst  $38                                         ; $6839: $ff
	ld   [hl], a                                     ; $683a: $77
	rst  $38                                         ; $683b: $ff
	adc  a                                           ; $683c: $8f
	rst  $38                                         ; $683d: $ff
	jr   c, @+$01                                    ; $683e: $38 $ff

	sbc  h                                           ; $6840: $9c
	cp   $bc                                         ; $6841: $fe $bc
	cp   $74                                         ; $6843: $fe $74
	cp   $e2                                         ; $6845: $fe $e2

jr_071_6847:
	cp   $9e                                         ; $6847: $fe $9e
	cp   $1c                                         ; $6849: $fe $1c
	cp   $70                                         ; $684b: $fe $70
	cp   $f6                                         ; $684d: $fe $f6
	cp   $64                                         ; $684f: $fe $64
	add  h                                           ; $6851: $84
	ld   b, b                                        ; $6852: $40
	add  b                                           ; $6853: $80
	ld   b, e                                        ; $6854: $43
	add  b                                           ; $6855: $80
	ld   c, [hl]                                     ; $6856: $4e
	add  e                                           ; $6857: $83
	ld   b, d                                        ; $6858: $42
	nop                                              ; $6859: $00
	dec  sp                                          ; $685a: $3b
	adc  l                                           ; $685b: $8d
	rlca                                             ; $685c: $07
	ld   b, $ee                                      ; $685d: $06 $ee
	nop                                              ; $685f: $00
	inc  e                                           ; $6860: $1c
	nop                                              ; $6861: $00
	db   $e3                                         ; $6862: $e3
	ldh  [rLCDC], a                                  ; $6863: $e0 $40
	add  b                                           ; $6865: $80
	db   $fc                                         ; $6866: $fc
	inc  b                                           ; $6867: $04
	rst  $38                                         ; $6868: $ff
	ld   b, b                                        ; $6869: $40
	rst  $38                                         ; $686a: $ff
	adc  b                                           ; $686b: $88
	ld   a, a                                        ; $686c: $7f
	add  b                                           ; $686d: $80
	ccf                                              ; $686e: $3f
	inc  c                                           ; $686f: $0c
	rst  $30                                         ; $6870: $f7
	ccf                                              ; $6871: $3f
	cp   $0f                                         ; $6872: $fe $0f
	ld   [hl], $03                                   ; $6874: $36 $03
	push hl                                          ; $6876: $e5
	nop                                              ; $6877: $00
	add  hl, de                                      ; $6878: $19
	nop                                              ; $6879: $00
	rst  $20                                         ; $687a: $e7
	ldh  [rAUD4LEN], a                               ; $687b: $e0 $20
	add  b                                           ; $687d: $80
	ld   hl, sp+$15                                  ; $687e: $f8 $15
	rst  $38                                         ; $6880: $ff
	ld   e, d                                        ; $6881: $5a
	db   $e4                                         ; $6882: $e4
	jr   nz, jr_071_68f5                             ; $6883: $20 $70

	jr   nc, jr_071_6847                             ; $6885: $30 $c0

	ld   b, b                                        ; $6887: $40
	ldh  a, [$f6]                                    ; $6888: $f0 $f6
	ld   e, $7e                                      ; $688a: $1e $7e
	ld   e, $c0                                      ; $688c: $1e $c0
	inc  b                                           ; $688e: $04
	ld   a, [hl-]                                    ; $688f: $3a
	nop                                              ; $6890: $00
	ld   c, c                                        ; $6891: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6892: $cf
	call z, $c6cf                                    ; $6893: $cc $cf $c6
	add  b                                           ; $6896: $80
	rst  ToBoot                                         ; $6897: $c7
	add  hl, hl                                      ; $6898: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6899: $cf
	call $cccf                                       ; $689a: $cd $cf $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $689d: $cf
	adc  $cf                                         ; $689e: $ce $cf
	jp   $99cb                                       ; $68a0: $c3 $cb $99


	rst  $38                                         ; $68a3: $ff
	ld   l, e                                        ; $68a4: $6b
	rst  $38                                         ; $68a5: $ff
	dec  de                                          ; $68a6: $1b
	rst  $38                                         ; $68a7: $ff
	call z, $eaff                                    ; $68a8: $cc $ff $ea
	rst  $38                                         ; $68ab: $ff
	ld   [hl], c                                     ; $68ac: $71
	rst  $38                                         ; $68ad: $ff
	ld   e, [hl]                                     ; $68ae: $5e
	rst  $38                                         ; $68af: $ff
	adc  [hl]                                        ; $68b0: $8e
	rst  $38                                         ; $68b1: $ff
	ld   a, h                                        ; $68b2: $7c
	ld   a, [$fe4e]                                  ; $68b3: $fa $4e $fe
	and  $fe                                         ; $68b6: $e6 $fe
	ld   l, [hl]                                     ; $68b8: $6e
	cp   $36                                         ; $68b9: $fe $36
	cp   $ae                                         ; $68bb: $fe $ae
	cp   $c6                                         ; $68bd: $fe $c6
	cp   $36                                         ; $68bf: $fe $36
	cp   $a4                                         ; $68c1: $fe $a4
	adc  c                                           ; $68c3: $89
	sbc  a                                           ; $68c4: $9f
	nop                                              ; $68c5: $00
	sbc  l                                           ; $68c6: $9d
	add  c                                           ; $68c7: $81
	sbc  a                                           ; $68c8: $9f
	ld   [bc], a                                     ; $68c9: $02
	db   $fd                                         ; $68ca: $fd
	rst  $38                                         ; $68cb: $ff
	cp   $81                                         ; $68cc: $fe $81
	rst  $38                                         ; $68ce: $ff
	dec  h                                           ; $68cf: $25
	jp   nz, $c3ff                                   ; $68d0: $c2 $ff $c3

	rst  $38                                         ; $68d3: $ff
	sbc  a                                           ; $68d4: $9f
	rst  $38                                         ; $68d5: $ff
	ld   [hl], a                                     ; $68d6: $77
	rst  $38                                         ; $68d7: $ff
	rla                                              ; $68d8: $17
	rst  $38                                         ; $68d9: $ff
	db   $fd                                         ; $68da: $fd
	db   $fc                                         ; $68db: $fc
	ld   e, $ff                                      ; $68dc: $1e $ff
	sbc  a                                           ; $68de: $9f
	rst  $38                                         ; $68df: $ff
	db   $fc                                         ; $68e0: $fc
	rst  $38                                         ; $68e1: $ff
	ld   a, e                                        ; $68e2: $7b
	rst  $38                                         ; $68e3: $ff
	sbc  e                                           ; $68e4: $9b
	rst  $38                                         ; $68e5: $ff
	sbc  l                                           ; $68e6: $9d
	rst  $38                                         ; $68e7: $ff

jr_071_68e8:
	push bc                                          ; $68e8: $c5
	ei                                               ; $68e9: $fb
	ld   b, e                                        ; $68ea: $43
	ld   a, a                                        ; $68eb: $7f
	ld   a, h                                        ; $68ec: $7c
	ld   a, a                                        ; $68ed: $7f
	ld   h, b                                        ; $68ee: $60
	ld   a, a                                        ; $68ef: $7f
	rra                                              ; $68f0: $1f
	ld   a, a                                        ; $68f1: $7f
	nop                                              ; $68f2: $00
	ld   a, a                                        ; $68f3: $7f
	ld   [bc], a                                     ; $68f4: $02

jr_071_68f5:
	ld   a, a                                        ; $68f5: $7f
	add  b                                           ; $68f6: $80
	ld   b, d                                        ; $68f7: $42
	rlca                                             ; $68f8: $07
	ld   [bc], a                                     ; $68f9: $02
	ld   a, a                                        ; $68fa: $7f
	inc  a                                           ; $68fb: $3c
	db   $d3                                         ; $68fc: $d3
	db   $10                                         ; $68fd: $10
	rst  $38                                         ; $68fe: $ff
	ldh  a, [$8f]                                    ; $68ff: $f0 $8f
	add  b                                           ; $6901: $80
	add  a                                           ; $6902: $87
	inc  bc                                          ; $6903: $03
	add  b                                           ; $6904: $80
	rst  $38                                         ; $6905: $ff
	ld   [hl], b                                     ; $6906: $70
	sbc  a                                           ; $6907: $9f
	add  b                                           ; $6908: $80
	inc  de                                          ; $6909: $13
	ld   [bc], a                                     ; $690a: $02
	db   $10                                         ; $690b: $10
	rst  $38                                         ; $690c: $ff
	pop  af                                          ; $690d: $f1
	add  c                                           ; $690e: $81
	push de                                          ; $690f: $d5
	ld   [bc], a                                     ; $6910: $02
	sub  $d7                                         ; $6911: $d6 $d7
	sub  $81                                         ; $6913: $d6 $81
	rst  $10                                         ; $6915: $d7
	nop                                              ; $6916: $00
	sub  $81                                         ; $6917: $d6 $81

jr_071_6919:
	rst  $10                                         ; $6919: $d7
	ld   [hl+], a                                    ; $691a: $22
	sub  $d7                                         ; $691b: $d6 $d7
	ld   [$e7ff], sp                                 ; $691d: $08 $ff $e7
	rst  $38                                         ; $6920: $ff
	xor  h                                           ; $6921: $ac
	rst  $38                                         ; $6922: $ff
	ld   e, $ff                                      ; $6923: $1e $ff
	ld   l, c                                        ; $6925: $69
	rst  $38                                         ; $6926: $ff
	sbc  $ff                                         ; $6927: $de $ff
	ld   e, b                                        ; $6929: $58
	rst  $38                                         ; $692a: $ff
	ld   [hl], e                                     ; $692b: $73
	rst  $38                                         ; $692c: $ff
	add  [hl]                                        ; $692d: $86
	db   $fc                                         ; $692e: $fc
	inc  e                                           ; $692f: $1c
	db   $fc                                         ; $6930: $fc
	pop  af                                          ; $6931: $f1
	ld   hl, sp-$15                                  ; $6932: $f8 $eb
	ldh  a, [$82]                                    ; $6934: $f0 $82
	ldh  a, [$85]                                    ; $6936: $f0 $85
	ldh  [$62], a                                    ; $6938: $e0 $62
	ldh  [c], a                                      ; $693a: $e2
	adc  $d0                                         ; $693b: $ce $d0
	ld   l, e                                        ; $693d: $6b
	add  b                                           ; $693e: $80
	ld   b, d                                        ; $693f: $42
	inc  bc                                          ; $6940: $03
	ld   b, e                                        ; $6941: $43
	ld   c, e                                        ; $6942: $4b
	ld   b, h                                        ; $6943: $44
	ld   c, b                                        ; $6944: $48
	add  c                                           ; $6945: $81
	ld   b, b                                        ; $6946: $40
	ld   [bc], a                                     ; $6947: $02
	ld   b, h                                        ; $6948: $44
	ld   b, b                                        ; $6949: $40
	ld   b, d                                        ; $694a: $42
	add  b                                           ; $694b: $80
	ld   b, b                                        ; $694c: $40
	ld   bc, $3a41                                   ; $694d: $01 $41 $3a
	adc  l                                           ; $6950: $8d
	rlca                                             ; $6951: $07
	inc  b                                           ; $6952: $04
	db   $10                                         ; $6953: $10
	rst  $38                                         ; $6954: $ff
	rst  $20                                         ; $6955: $e7
	ld   b, a                                        ; $6956: $47
	ld   b, d                                        ; $6957: $42
	add  b                                           ; $6958: $80
	ld   b, e                                        ; $6959: $43
	ld   bc, $7c7f                                   ; $695a: $01 $7f $7c
	add  d                                           ; $695d: $82
	ld   [$ff80], sp                                 ; $695e: $08 $80 $ff
	inc  bc                                          ; $6961: $03
	ld   b, d                                        ; $6962: $42
	ld   d, d                                        ; $6963: $52
	rst  $38                                         ; $6964: $ff
	jr   jr_071_68e8                                 ; $6965: $18 $81

	rst  $38                                         ; $6967: $ff
	inc  bc                                          ; $6968: $03
	dec  bc                                          ; $6969: $0b
	rst  $38                                         ; $696a: $ff
	ld   [hl+], a                                    ; $696b: $22
	rst  $38                                         ; $696c: $ff
	add  b                                           ; $696d: $80
	ld   a, a                                        ; $696e: $7f
	inc  c                                           ; $696f: $0c
	add  hl, sp                                      ; $6970: $39
	ld   a, a                                        ; $6971: $7f
	ld   a, h                                        ; $6972: $7c
	rra                                              ; $6973: $1f
	ld   a, [hl-]                                    ; $6974: $3a
	ret  nz                                          ; $6975: $c0

	ld   b, b                                        ; $6976: $40
	ld   hl, sp-$06                                  ; $6977: $f8 $fa
	cp   $46                                         ; $6979: $fe $46
	cp   $06                                         ; $697b: $fe $06
	add  c                                           ; $697d: $81
	cp   $07                                         ; $697e: $fe $07
	ld   b, $fe                                      ; $6980: $06 $fe
	ld   h, $fe                                      ; $6982: $26 $fe
	sbc  [hl]                                        ; $6984: $9e
	rst  ToBoot                                         ; $6985: $c7
	call z, $80cb                                    ; $6986: $cc $cb $80
	jp   $cb80                                       ; $6989: $c3 $80 $cb


	ld   [bc], a                                     ; $698c: $02
	call nz, $c4cf                                   ; $698d: $c4 $cf $c4
	add  e                                           ; $6990: $83
	rst  ToBoot                                         ; $6991: $c7
	jr   nz, jr_071_6919                             ; $6992: $20 $85

	rst  $38                                         ; $6994: $ff
	dec  sp                                          ; $6995: $3b
	rst  $38                                         ; $6996: $ff
	ld   c, h                                        ; $6997: $4c
	rst  $38                                         ; $6998: $ff
	jp   z, $f0ff                                    ; $6999: $ca $ff $f0

	rst  $38                                         ; $699c: $ff
	ld   e, l                                        ; $699d: $5d
	rst  $38                                         ; $699e: $ff
	inc  bc                                          ; $699f: $03
	rst  $38                                         ; $69a0: $ff
	jp   hl                                          ; $69a1: $e9


	rst  $38                                         ; $69a2: $ff
	pop  bc                                          ; $69a3: $c1
	cp   $c6                                         ; $69a4: $fe $c6
	cp   $76                                         ; $69a6: $fe $76
	cp   $1e                                         ; $69a8: $fe $1e
	cp   $c6                                         ; $69aa: $fe $c6
	cp   $66                                         ; $69ac: $fe $66
	cp   $0e                                         ; $69ae: $fe $0e
	cp   $c6                                         ; $69b0: $fe $c6
	cp   $6c                                         ; $69b2: $fe $6c
	add  c                                           ; $69b4: $81
	sbc  a                                           ; $69b5: $9f
	ld   [bc], a                                     ; $69b6: $02
	sbc  e                                           ; $69b7: $9b
	sbc  a                                           ; $69b8: $9f
	sbc  c                                           ; $69b9: $99
	add  c                                           ; $69ba: $81
	sbc  a                                           ; $69bb: $9f
	nop                                              ; $69bc: $00
	sbc  l                                           ; $69bd: $9d
	add  c                                           ; $69be: $81
	sbc  a                                           ; $69bf: $9f
	ld   b, $93                                      ; $69c0: $06 $93
	sbc  a                                           ; $69c2: $9f
	di                                               ; $69c3: $f3
	rst  $38                                         ; $69c4: $ff
	ld   de, $11ff                                   ; $69c5: $11 $ff $11
	add  c                                           ; $69c8: $81
	rst  $38                                         ; $69c9: $ff
	rrca                                             ; $69ca: $0f
	call nz, $c4ff                                   ; $69cb: $c4 $ff $c4
	rst  $38                                         ; $69ce: $ff
	db   $f4                                         ; $69cf: $f4
	rst  $38                                         ; $69d0: $ff
	adc  a                                           ; $69d1: $8f
	rst  $38                                         ; $69d2: $ff
	adc  e                                           ; $69d3: $8b
	rst  $38                                         ; $69d4: $ff
	rrca                                             ; $69d5: $0f
	rst  $38                                         ; $69d6: $ff
	rrca                                             ; $69d7: $0f
	rst  $38                                         ; $69d8: $ff
	adc  a                                           ; $69d9: $8f
	rst  $38                                         ; $69da: $ff
	add  b                                           ; $69db: $80
	ldh  a, [c]                                      ; $69dc: $f2
	rlca                                             ; $69dd: $07
	adc  h                                           ; $69de: $8c
	db   $fd                                         ; $69df: $fd
	inc  h                                           ; $69e0: $24
	or   $fb                                         ; $69e1: $f6 $fb
	rst  $38                                         ; $69e3: $ff
	call c, $807b                                    ; $69e4: $dc $7b $80
	jr   nz, jr_071_69ec                             ; $69e7: $20 $03

	nop                                              ; $69e9: $00
	ld   a, a                                        ; $69ea: $7f
	inc  bc                                          ; $69eb: $03

jr_071_69ec:
	ld   a, [hl]                                     ; $69ec: $7e
	add  b                                           ; $69ed: $80
	ld   h, d                                        ; $69ee: $62
	dec  c                                           ; $69ef: $0d
	ld   [bc], a                                     ; $69f0: $02
	ld   a, a                                        ; $69f1: $7f
	jr   nc, jr_071_6a23                             ; $69f2: $30 $2f

	rra                                              ; $69f4: $1f
	rrca                                             ; $69f5: $0f
	adc  b                                           ; $69f6: $88
	rst  $38                                         ; $69f7: $ff
	rst  ToBoot                                         ; $69f8: $c7
	ret  nz                                          ; $69f9: $c0

	add  b                                           ; $69fa: $80
	rst  $38                                         ; $69fb: $ff
	ld   [hl], b                                     ; $69fc: $70
	sbc  a                                           ; $69fd: $9f
	add  c                                           ; $69fe: $81
	db   $10                                         ; $69ff: $10
	ld   [bc], a                                     ; $6a00: $02
	rst  $38                                         ; $6a01: $ff
	cp   a                                           ; $6a02: $bf
	ret  nz                                          ; $6a03: $c0

	add  b                                           ; $6a04: $80
	rst  $38                                         ; $6a05: $ff
	nop                                              ; $6a06: $00
	adc  l                                           ; $6a07: $8d
	add  c                                           ; $6a08: $81
	rst  $10                                         ; $6a09: $d7
	ld   [bc], a                                     ; $6a0a: $02
	sub  $d7                                         ; $6a0b: $d6 $d7
	sub  $81                                         ; $6a0d: $d6 $81
	rst  $10                                         ; $6a0f: $d7
	ld   [bc], a                                     ; $6a10: $02
	sub  $d7                                         ; $6a11: $d6 $d7
	sub  $81                                         ; $6a13: $d6 $81
	rst  $10                                         ; $6a15: $d7
	inc  c                                           ; $6a16: $0c
	rlca                                             ; $6a17: $07
	rst  $38                                         ; $6a18: $ff
	ld   e, $ff                                      ; $6a19: $1e $ff
	ld   a, d                                        ; $6a1b: $7a
	rst  ToBoot                                         ; $6a1c: $c7
	add  e                                           ; $6a1d: $83
	cp   e                                           ; $6a1e: $bb
	dec  bc                                          ; $6a1f: $0b
	rst  $38                                         ; $6a20: $ff
	inc  b                                           ; $6a21: $04
	ld   a, l                                        ; $6a22: $7d

jr_071_6a23:
	ld   a, h                                        ; $6a23: $7c
	add  c                                           ; $6a24: $81
	ld   a, l                                        ; $6a25: $7d
	ld   a, [bc]                                     ; $6a26: $0a
	ld   b, c                                        ; $6a27: $41
	ldh  [rAUDVOL], a                                ; $6a28: $e0 $24
	call nz, $8084                                   ; $6a2a: $c4 $84 $80
	add  d                                           ; $6a2d: $82
	add  b                                           ; $6a2e: $80
	nop                                              ; $6a2f: $00
	or   b                                           ; $6a30: $b0
	ld   [hl-], a                                    ; $6a31: $32
	add  b                                           ; $6a32: $80
	add  b                                           ; $6a33: $80
	inc  bc                                          ; $6a34: $03
	nop                                              ; $6a35: $00
	inc  c                                           ; $6a36: $0c
	ld   [$8179], sp                                 ; $6a37: $08 $79 $81
	ld   b, b                                        ; $6a3a: $40
	inc  b                                           ; $6a3b: $04
	ld   b, h                                        ; $6a3c: $44
	ld   b, b                                        ; $6a3d: $40
	ld   c, b                                        ; $6a3e: $48
	ld   b, b                                        ; $6a3f: $40
	ld   c, h                                        ; $6a40: $4c
	add  b                                           ; $6a41: $80
	ld   b, b                                        ; $6a42: $40
	add  b                                           ; $6a43: $80
	ld   b, c                                        ; $6a44: $41
	add  c                                           ; $6a45: $81
	ld   b, b                                        ; $6a46: $40
	nop                                              ; $6a47: $00
	dec  sp                                          ; $6a48: $3b
	adc  l                                           ; $6a49: $8d
	rlca                                             ; $6a4a: $07
	nop                                              ; $6a4b: $00
	ld   c, $80                                      ; $6a4c: $0e $80
	ld   [bc], a                                     ; $6a4e: $02
	add  b                                           ; $6a4f: $80
	rst  JumpTable                                         ; $6a50: $df
	add  d                                           ; $6a51: $82
	ld   [$dc80], sp                                 ; $6a52: $08 $80 $dc
	add  d                                           ; $6a55: $82
	ld   b, d                                        ; $6a56: $42
	rlca                                             ; $6a57: $07
	rst  $38                                         ; $6a58: $ff
	ldh  a, [rIF]                                    ; $6a59: $f0 $0f
	rlca                                             ; $6a5b: $07
	rst  $38                                         ; $6a5c: $ff
	ld   sp, hl                                      ; $6a5d: $f9
	ld   hl, $8020                                   ; $6a5e: $21 $20 $80
	ld   hl, $ff80                                   ; $6a61: $21 $80 $ff
	add  d                                           ; $6a64: $82
	ld   [$ff05], sp                                 ; $6a65: $08 $05 $ff
	inc  hl                                          ; $6a68: $23
	cp   $a6                                         ; $6a69: $fe $a6
	cp   $86                                         ; $6a6b: $fe $86
	add  c                                           ; $6a6d: $81
	cp   $03                                         ; $6a6e: $fe $03
	ld   b, $fe                                      ; $6a70: $06 $fe
	add  $7e                                         ; $6a72: $c6 $7e
	add  b                                           ; $6a74: $80
	ld   e, [hl]                                     ; $6a75: $5e
	inc  b                                           ; $6a76: $04
	ld   b, [hl]                                     ; $6a77: $46
	cp   $4a                                         ; $6a78: $fe $4a
	rst  ToBoot                                         ; $6a7a: $c7
	call nz, $c781                                   ; $6a7b: $c4 $81 $c7
	inc  b                                           ; $6a7e: $04
	jp   $c0c7                                       ; $6a7f: $c3 $c7 $c0


	rst  ToBoot                                         ; $6a82: $c7
	call nz, $c781                                   ; $6a83: $c4 $81 $c7
	ld   [hl+], a                                    ; $6a86: $22
	call nz, $00c7                                   ; $6a87: $c4 $c7 $00
	rst  $38                                         ; $6a8a: $ff
	rrca                                             ; $6a8b: $0f
	rst  $38                                         ; $6a8c: $ff
	ret  nz                                          ; $6a8d: $c0

	rst  $38                                         ; $6a8e: $ff
	ld   sp, hl                                      ; $6a8f: $f9
	rst  $38                                         ; $6a90: $ff
	ld   e, a                                        ; $6a91: $5f
	rst  $38                                         ; $6a92: $ff
	ld   de, $f8ff                                   ; $6a93: $11 $ff $f8
	rst  $38                                         ; $6a96: $ff
	dec  bc                                          ; $6a97: $0b
	rst  $38                                         ; $6a98: $ff
	and  $fe                                         ; $6a99: $e6 $fe
	ld   h, $fe                                      ; $6a9b: $26 $fe
	ld   h, [hl]                                     ; $6a9d: $66
	cp   $3e                                         ; $6a9e: $fe $3e
	cp   $86                                         ; $6aa0: $fe $86
	cp   $66                                         ; $6aa2: $fe $66
	cp   $06                                         ; $6aa4: $fe $06
	cp   $86                                         ; $6aa6: $fe $86
	cp   $64                                         ; $6aa8: $fe $64
	adc  e                                           ; $6aaa: $8b
	sbc  a                                           ; $6aab: $9f
	inc  d                                           ; $6aac: $14
	sbc  l                                           ; $6aad: $9d
	sbc  a                                           ; $6aae: $9f
	db   $fd                                         ; $6aaf: $fd
	rst  $38                                         ; $6ab0: $ff
	ld   sp, hl                                      ; $6ab1: $f9
	rst  $38                                         ; $6ab2: $ff
	rst  $20                                         ; $6ab3: $e7
	rst  $38                                         ; $6ab4: $ff
	pop  hl                                          ; $6ab5: $e1
	rst  $38                                         ; $6ab6: $ff
	inc  b                                           ; $6ab7: $04
	rst  $38                                         ; $6ab8: $ff
	rrca                                             ; $6ab9: $0f
	rst  $38                                         ; $6aba: $ff
	db   $f4                                         ; $6abb: $f4
	rst  $38                                         ; $6abc: $ff
	ld   sp, hl                                      ; $6abd: $f9
	rst  $38                                         ; $6abe: $ff
	cp   $f8                                         ; $6abf: $fe $f8
	inc  b                                           ; $6ac1: $04
	add  b                                           ; $6ac2: $80
	rst  $38                                         ; $6ac3: $ff
	inc  b                                           ; $6ac4: $04
	db   $fc                                         ; $6ac5: $fc
	ld   [hl-], a                                    ; $6ac6: $32
	db   $fd                                         ; $6ac7: $fd
	jr   c, @+$01                                    ; $6ac8: $38 $ff

	add  b                                           ; $6aca: $80
	ld   hl, sp+$07                                  ; $6acb: $f8 $07
	ld   h, d                                        ; $6acd: $62
	cp   $6a                                         ; $6ace: $fe $6a
	xor  $e7                                         ; $6ad0: $ee $e7
	rrca                                             ; $6ad2: $0f
	adc  d                                           ; $6ad3: $8a
	add  a                                           ; $6ad4: $87
	add  b                                           ; $6ad5: $80
	rrca                                             ; $6ad6: $0f
	ld   [bc], a                                     ; $6ad7: $02
	adc  d                                           ; $6ad8: $8a
	add  a                                           ; $6ad9: $87
	nop                                              ; $6ada: $00
	add  c                                           ; $6adb: $81
	rlca                                             ; $6adc: $07
	rlca                                             ; $6add: $07
	inc  c                                           ; $6ade: $0c
	dec  de                                          ; $6adf: $1b
	db   $10                                         ; $6ae0: $10
	dec  bc                                          ; $6ae1: $0b
	db   $f4                                         ; $6ae2: $f4
	rst  $38                                         ; $6ae3: $ff
	ldh  a, [$1f]                                    ; $6ae4: $f0 $1f
	add  b                                           ; $6ae6: $80
	ldh  a, [rAUD2LEN]                               ; $6ae7: $f0 $16
	db   $10                                         ; $6ae9: $10

jr_071_6aea:
	rst  $38                                         ; $6aea: $ff
	add  b                                           ; $6aeb: $80
	rst  $38                                         ; $6aec: $ff
	ret  nz                                          ; $6aed: $c0

	call nz, $ff84                                   ; $6aee: $c4 $84 $ff
	jr   jr_071_6aea                                 ; $6af1: $18 $f7

	dec  e                                           ; $6af3: $1d
	rst  $10                                         ; $6af4: $d7
	ld   d, [hl]                                     ; $6af5: $56
	rst  $10                                         ; $6af6: $d7
	sub  $d7                                         ; $6af7: $d6 $d7
	ld   d, a                                        ; $6af9: $57
	rst  $10                                         ; $6afa: $d7
	ld   d, a                                        ; $6afb: $57
	rst  $10                                         ; $6afc: $d7
	sub  $d7                                         ; $6afd: $d6 $d7
	ld   d, [hl]                                     ; $6aff: $56
	add  c                                           ; $6b00: $81
	rst  $10                                         ; $6b01: $d7
	inc  b                                           ; $6b02: $04
	ld   b, h                                        ; $6b03: $44
	ld   h, b                                        ; $6b04: $60
	nop                                              ; $6b05: $00
	inc  b                                           ; $6b06: $04
	inc  [hl]                                        ; $6b07: $34
	add  b                                           ; $6b08: $80
	ld   [hl], l                                     ; $6b09: $75
	nop                                              ; $6b0a: $00
	ld   [hl], h                                     ; $6b0b: $74
	add  c                                           ; $6b0c: $81
	ld   [hl], b                                     ; $6b0d: $70
	add  b                                           ; $6b0e: $80
	ld   [hl], c                                     ; $6b0f: $71
	add  c                                           ; $6b10: $81
	ld   [hl], b                                     ; $6b11: $70
	ld   b, $39                                      ; $6b12: $06 $39
	jr   c, @+$7a                                    ; $6b14: $38 $78

	ld   [$4888], sp                                 ; $6b16: $08 $88 $48
	ret  z                                           ; $6b19: $c8

	add  b                                           ; $6b1a: $80
	ld   [$9802], sp                                 ; $6b1b: $08 $02 $98
	db   $10                                         ; $6b1e: $10
	ld   c, b                                        ; $6b1f: $48
	add  c                                           ; $6b20: $81
	ld   [$3801], sp                                 ; $6b21: $08 $01 $38
	ld   b, c                                        ; $6b24: $41
	add  b                                           ; $6b25: $80
	ld   b, b                                        ; $6b26: $40
	add  b                                           ; $6b27: $80
	ld   b, c                                        ; $6b28: $41
	add  [hl]                                        ; $6b29: $86
	ld   b, b                                        ; $6b2a: $40
	add  b                                           ; $6b2b: $80
	ld   b, c                                        ; $6b2c: $41
	ld   bc, $3b40                                   ; $6b2d: $01 $40 $3b
	adc  l                                           ; $6b30: $8d
	rlca                                             ; $6b31: $07
	nop                                              ; $6b32: $00
	ld   c, $81                                      ; $6b33: $0e $81
	ld   [$0a06], sp                                 ; $6b35: $08 $06 $0a
	rst  $38                                         ; $6b38: $ff
	ld   [bc], a                                     ; $6b39: $02
	rst  $38                                         ; $6b3a: $ff
	nop                                              ; $6b3b: $00
	rst  $38                                         ; $6b3c: $ff
	call $3e81                                       ; $6b3d: $cd $81 $3e
	add  b                                           ; $6b40: $80
	rst  $38                                         ; $6b41: $ff
	nop                                              ; $6b42: $00
	inc  c                                           ; $6b43: $0c
	add  d                                           ; $6b44: $82
	ld   hl, $ff05                                   ; $6b45: $21 $05 $ff
	nop                                              ; $6b48: $00
	rst  $38                                         ; $6b49: $ff
	nop                                              ; $6b4a: $00
	rst  $38                                         ; $6b4b: $ff
	sbc  e                                           ; $6b4c: $9b
	add  c                                           ; $6b4d: $81
	ld   a, h                                        ; $6b4e: $7c
	add  b                                           ; $6b4f: $80
	rst  $38                                         ; $6b50: $ff
	ld   bc, $061c                                   ; $6b51: $01 $1c $06
	add  c                                           ; $6b54: $81
	ld   [bc], a                                     ; $6b55: $02
	ld   b, $ff                                      ; $6b56: $06 $ff
	rlca                                             ; $6b58: $07
	rst  $38                                         ; $6b59: $ff
	nop                                              ; $6b5a: $00
	ld   hl, sp+$37                                  ; $6b5b: $f8 $37
	rst  $38                                         ; $6b5d: $ff
	add  b                                           ; $6b5e: $80
	ld   hl, sp+$02                                  ; $6b5f: $f8 $02
	ei                                               ; $6b61: $fb
	rst  $38                                         ; $6b62: $ff
	add  b                                           ; $6b63: $80
	add  c                                           ; $6b64: $81
	rst  ToBoot                                         ; $6b65: $c7
	ld   bc, $cf44                                   ; $6b66: $01 $44 $cf
	add  b                                           ; $6b69: $80
	jp   $0401                                       ; $6b6a: $c3 $01 $04


	rlca                                             ; $6b6d: $07
	add  b                                           ; $6b6e: $80

jr_071_6b6f:
	call nz, $0401                                   ; $6b6f: $c4 $01 $04
	rlca                                             ; $6b72: $07
	add  b                                           ; $6b73: $80
	rst  ToBoot                                         ; $6b74: $c7
	inc  b                                           ; $6b75: $04
	ld   b, b                                        ; $6b76: $40
	rst  $38                                         ; $6b77: $ff
	cp   $ff                                         ; $6b78: $fe $ff
	ld   b, c                                        ; $6b7a: $41
	add  c                                           ; $6b7b: $81
	rst  $38                                         ; $6b7c: $ff
	ld   bc, $ff00                                   ; $6b7d: $01 $00 $ff
	add  b                                           ; $6b80: $80
	ld   [hl], d                                     ; $6b81: $72
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	add  c                                           ; $6b84: $81
	rst  $38                                         ; $6b85: $ff
	inc  b                                           ; $6b86: $04
	db   $fd                                         ; $6b87: $fd
	cp   $06                                         ; $6b88: $fe $06
	cp   $06                                         ; $6b8a: $fe $06
	add  c                                           ; $6b8c: $81
	cp   $04                                         ; $6b8d: $fe $04
	ld   b, $fe                                      ; $6b8f: $06 $fe
	or   e                                           ; $6b91: $b3
	or   a                                           ; $6b92: $b7
	nop                                              ; $6b93: $00
	add  c                                           ; $6b94: $81
	rst  $38                                         ; $6b95: $ff
	add  h                                           ; $6b96: $84
	sbc  a                                           ; $6b97: $9f
	add  b                                           ; $6b98: $80
	add  b                                           ; $6b99: $80
	add  b                                           ; $6b9a: $80
	sbc  a                                           ; $6b9b: $9f
	ld   [bc], a                                     ; $6b9c: $02
	nop                                              ; $6b9d: $00
	rst  $38                                         ; $6b9e: $ff
	nop                                              ; $6b9f: $00
	add  c                                           ; $6ba0: $81
	rst  $38                                         ; $6ba1: $ff
	rlca                                             ; $6ba2: $07
	pop  hl                                          ; $6ba3: $e1
	rst  $38                                         ; $6ba4: $ff
	pop  hl                                          ; $6ba5: $e1
	rst  $38                                         ; $6ba6: $ff
	sbc  h                                           ; $6ba7: $9c
	rst  $38                                         ; $6ba8: $ff
	ld   h, e                                        ; $6ba9: $63
	nop                                              ; $6baa: $00
	add  b                                           ; $6bab: $80
	rst  $38                                         ; $6bac: $ff
	ld   [bc], a                                     ; $6bad: $02
	nop                                              ; $6bae: $00
	rst  $38                                         ; $6baf: $ff
	nop                                              ; $6bb0: $00
	add  c                                           ; $6bb1: $81
	rst  $38                                         ; $6bb2: $ff
	rlca                                             ; $6bb3: $07
	inc  b                                           ; $6bb4: $04
	rst  $28                                         ; $6bb5: $ef
	ld   c, b                                        ; $6bb6: $48
	ei                                               ; $6bb7: $fb
	ld   d, b                                        ; $6bb8: $50
	call c, $03d5                                    ; $6bb9: $dc $d5 $03
	add  b                                           ; $6bbc: $80
	or   [hl]                                        ; $6bbd: $b6
	ld   [bc], a                                     ; $6bbe: $02
	jr   z, jr_071_6b6f                              ; $6bbf: $28 $ae

	ld   a, e                                        ; $6bc1: $7b
	add  c                                           ; $6bc2: $81
	rst  $38                                         ; $6bc3: $ff
	inc  b                                           ; $6bc4: $04
	add  b                                           ; $6bc5: $80
	adc  e                                           ; $6bc6: $8b
	ld   b, $0d                                      ; $6bc7: $06 $0d
	nop                                              ; $6bc9: $00
	add  b                                           ; $6bca: $80
	dec  d                                           ; $6bcb: $15
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	add  b                                           ; $6bce: $80
	ld   d, $02                                      ; $6bcf: $16 $02
	nop                                              ; $6bd1: $00
	ld   a, [bc]                                     ; $6bd2: $0a
	push af                                          ; $6bd3: $f5
	add  c                                           ; $6bd4: $81
	rst  $38                                         ; $6bd5: $ff
	rlca                                             ; $6bd6: $07
	add  hl, sp                                      ; $6bd7: $39
	rst  $10                                         ; $6bd8: $d7
	ld   de, $c5ff                                   ; $6bd9: $11 $ff $c5
	ccf                                              ; $6bdc: $3f
	ld   a, [$8000]                                  ; $6bdd: $fa $00 $80
	rst  $38                                         ; $6be0: $ff
	ld   [bc], a                                     ; $6be1: $02
	nop                                              ; $6be2: $00
	rst  $38                                         ; $6be3: $ff
	nop                                              ; $6be4: $00
	add  c                                           ; $6be5: $81
	rst  $38                                         ; $6be6: $ff
	ld   [bc], a                                     ; $6be7: $02
	di                                               ; $6be8: $f3
	rst  $10                                         ; $6be9: $d7
	sub  $81                                         ; $6bea: $d6 $81
	rst  $10                                         ; $6bec: $d7
	ld   b, $55                                      ; $6bed: $06 $55
	ld   d, b                                        ; $6bef: $50
	ret  nz                                          ; $6bf0: $c0

	ldh  [rP1], a                                    ; $6bf1: $e0 $00
	rst  $38                                         ; $6bf3: $ff
	nop                                              ; $6bf4: $00
	add  c                                           ; $6bf5: $81
	rst  $38                                         ; $6bf6: $ff
	nop                                              ; $6bf7: $00
	dec  [hl]                                        ; $6bf8: $35
	add  b                                           ; $6bf9: $80
	ld   [hl], c                                     ; $6bfa: $71
	add  c                                           ; $6bfb: $81
	ld   [hl], b                                     ; $6bfc: $70
	add  b                                           ; $6bfd: $80
	ld   [hl], c                                     ; $6bfe: $71

Call_071_6bff:
	inc  b                                           ; $6bff: $04
	ret  nz                                          ; $6c00: $c0

	add  c                                           ; $6c01: $81
	pop  de                                          ; $6c02: $d1
	ret  nc                                          ; $6c03: $d0

	ld   a, [$ff81]                                  ; $6c04: $fa $81 $ff
	nop                                              ; $6c07: $00
	db   $f4                                         ; $6c08: $f4
	add  b                                           ; $6c09: $80
	ret  z                                           ; $6c0a: $c8

	ld   a, [bc]                                     ; $6c0b: $0a
	ld   c, b                                        ; $6c0c: $48
	ld   b, b                                        ; $6c0d: $40
	ld   c, b                                        ; $6c0e: $48
	cp   b                                           ; $6c0f: $b8
	ld   hl, sp+$09                                  ; $6c10: $f8 $09
	ld   a, [$01fb]                                  ; $6c12: $fa $fb $01
	inc  bc                                          ; $6c15: $03
	cp   $80                                         ; $6c16: $fe $80
	db   $fc                                         ; $6c18: $fc

jr_071_6c19:
	nop                                              ; $6c19: $00
	adc  l                                           ; $6c1a: $8d
	add  c                                           ; $6c1b: $81
	ld   b, b                                        ; $6c1c: $40
	rlca                                             ; $6c1d: $07
	jr   nc, jr_071_6c19                             ; $6c1e: $30 $f9

	db   $fc                                         ; $6c20: $fc
	db   $fd                                         ; $6c21: $fd
	nop                                              ; $6c22: $00
	ld   bc, $fdfc                                   ; $6c23: $01 $fc $fd
	add  b                                           ; $6c26: $80
	inc  b                                           ; $6c27: $04
	add  b                                           ; $6c28: $80
	ld   a, h                                        ; $6c29: $7c
	nop                                              ; $6c2a: $00
	di                                               ; $6c2b: $f3
	add  e                                           ; $6c2c: $83
	rlca                                             ; $6c2d: $07
	ld   bc, $0706                                   ; $6c2e: $01 $06 $07
	add  b                                           ; $6c31: $80
	nop                                              ; $6c32: $00
	add  h                                           ; $6c33: $84
	inc  bc                                          ; $6c34: $03
	nop                                              ; $6c35: $00
	rrca                                             ; $6c36: $0f
	add  d                                           ; $6c37: $82
	rst  $38                                         ; $6c38: $ff
	add  b                                           ; $6c39: $80
	nop                                              ; $6c3a: $00
	inc  bc                                          ; $6c3b: $03
	rst  $38                                         ; $6c3c: $ff
	nop                                              ; $6c3d: $00
	rst  $38                                         ; $6c3e: $ff
	ld   a, a                                        ; $6c3f: $7f
	add  e                                           ; $6c40: $83
	rst  $38                                         ; $6c41: $ff
	nop                                              ; $6c42: $00
	add  b                                           ; $6c43: $80
	add  d                                           ; $6c44: $82
	rst  $38                                         ; $6c45: $ff
	add  b                                           ; $6c46: $80
	nop                                              ; $6c47: $00
	ld   bc, $00ff                                   ; $6c48: $01 $ff $00
	add  l                                           ; $6c4b: $85
	rst  $38                                         ; $6c4c: $ff
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	add  d                                           ; $6c4f: $82
	rst  $38                                         ; $6c50: $ff
	add  b                                           ; $6c51: $80
	inc  bc                                          ; $6c52: $03
	ld   bc, $03ff                                   ; $6c53: $01 $ff $03
	add  l                                           ; $6c56: $85
	rst  $38                                         ; $6c57: $ff
	ld   bc, $c03c                                   ; $6c58: $01 $3c $c0
	add  d                                           ; $6c5b: $82
	jp   nz, $c680                                   ; $6c5c: $c2 $80 $c6

	nop                                              ; $6c5f: $00
	jp   nz, $c685                                   ; $6c60: $c2 $85 $c6

	ld   bc, $0004                                   ; $6c63: $01 $04 $00
	add  d                                           ; $6c66: $82
	ld   [hl+], a                                    ; $6c67: $22
	add  b                                           ; $6c68: $80
	xor  $00                                         ; $6c69: $ee $00
	ld   [hl+], a                                    ; $6c6b: $22
	add  b                                           ; $6c6c: $80
	ld   [$e280], a                                  ; $6c6d: $ea $80 $e2
	nop                                              ; $6c70: $00
	and  d                                           ; $6c71: $a2
	add  b                                           ; $6c72: $80
	ld   [hl+], a                                    ; $6c73: $22
	ld   [bc], a                                     ; $6c74: $02
	add  b                                           ; $6c75: $80
	nop                                              ; $6c76: $00
	ld   [hl+], a                                    ; $6c77: $22
	add  c                                           ; $6c78: $81
	ld   a, [hl+]                                    ; $6c79: $2a
	ld   [bc], a                                     ; $6c7a: $02
	adc  b                                           ; $6c7b: $88
	xor  d                                           ; $6c7c: $aa
	ld   a, [hl+]                                    ; $6c7d: $2a
	add  [hl]                                        ; $6c7e: $86
	ld   [hl+], a                                    ; $6c7f: $22
	ld   bc, $2200                                   ; $6c80: $01 $00 $22
	add  c                                           ; $6c83: $81
	xor  d                                           ; $6c84: $aa
	nop                                              ; $6c85: $00
	adc  b                                           ; $6c86: $88
	add  b                                           ; $6c87: $80
	xor  d                                           ; $6c88: $aa
	add  [hl]                                        ; $6c89: $86
	ld   [hl+], a                                    ; $6c8a: $22
	ld   [bc], a                                     ; $6c8b: $02
	nop                                              ; $6c8c: $00
	jr   nz, @-$5d                                   ; $6c8d: $20 $a1

	add  b                                           ; $6c8f: $80
	and  e                                           ; $6c90: $a3
	inc  bc                                          ; $6c91: $03
	add  d                                           ; $6c92: $82
	and  e                                           ; $6c93: $a3
	and  d                                           ; $6c94: $a2
	ld   [hl+], a                                    ; $6c95: $22
	add  b                                           ; $6c96: $80
	inc  hl                                          ; $6c97: $23
	dec  b                                           ; $6c98: $05
	ld   [hl+], a                                    ; $6c99: $22
	inc  h                                           ; $6c9a: $24
	ld   hl, $2027                                   ; $6c9b: $21 $27 $20
	nop                                              ; $6c9e: $00
	add  b                                           ; $6c9f: $80
	ld   sp, $8103                                   ; $6ca0: $31 $03 $81
	adc  c                                           ; $6ca3: $89
	dec  de                                          ; $6ca4: $1b
	sbc  d                                           ; $6ca5: $9a
	add  b                                           ; $6ca6: $80
	cp   c                                           ; $6ca7: $b9
	ld   b, $ba                                      ; $6ca8: $06 $ba
	xor  d                                           ; $6caa: $aa
	cp   c                                           ; $6cab: $b9
	sbc  e                                           ; $6cac: $9b
	add  sp, -$26                                    ; $6cad: $e8 $da
	adc  c                                           ; $6caf: $89
	add  b                                           ; $6cb0: $80
	nop                                              ; $6cb1: $00
	inc  bc                                          ; $6cb2: $03
	jp   nz, $0a8a                                   ; $6cb3: $c2 $8a $0a

	ld   d, d                                        ; $6cb6: $52
	add  c                                           ; $6cb7: $81
	ld   e, d                                        ; $6cb8: $5a
	ld   bc, $1e06                                   ; $6cb9: $01 $06 $1e
	add  b                                           ; $6cbc: $80
	ld   d, [hl]                                     ; $6cbd: $56
	inc  b                                           ; $6cbe: $04
	ld   b, [hl]                                     ; $6cbf: $46
	ld   c, [hl]                                     ; $6cc0: $4e
	ld   e, d                                        ; $6cc1: $5a
	nop                                              ; $6cc2: $00
	ld   [bc], a                                     ; $6cc3: $02
	add  c                                           ; $6cc4: $81
	ld   [hl+], a                                    ; $6cc5: $22
	inc  bc                                          ; $6cc6: $03
	ld   h, $a6                                      ; $6cc7: $26 $a6
	ld   h, $a6                                      ; $6cc9: $26 $a6
	add  b                                           ; $6ccb: $80
	and  d                                           ; $6ccc: $a2
	ld   b, $24                                      ; $6ccd: $06 $24
	and  b                                           ; $6ccf: $a0
	jr   nz, @+$24                                   ; $6cd0: $20 $22

	and  [hl]                                        ; $6cd2: $a6
	nop                                              ; $6cd3: $00
	ld   [hl+], a                                    ; $6cd4: $22
	add  b                                           ; $6cd5: $80
	ld   [bc], a                                     ; $6cd6: $02
	dec  b                                           ; $6cd7: $05
	add  [hl]                                        ; $6cd8: $86
	ld   a, [hl+]                                    ; $6cd9: $2a
	ld   a, [bc]                                     ; $6cda: $0a
	ld   [bc], a                                     ; $6cdb: $02
	ld   [hl+], a                                    ; $6cdc: $22
	and  [hl]                                        ; $6cdd: $a6
	add  c                                           ; $6cde: $81
	and  d                                           ; $6cdf: $a2
	ld   bc, $8222                                   ; $6ce0: $01 $22 $82
	add  b                                           ; $6ce3: $80
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	ld   [bc], a                                     ; $6ce6: $02
	add  b                                           ; $6ce7: $80
	adc  d                                           ; $6ce8: $8a
	add  b                                           ; $6ce9: $80
	and  e                                           ; $6cea: $a3
	add  b                                           ; $6ceb: $80
	inc  hl                                          ; $6cec: $23
	add  b                                           ; $6ced: $80
	cpl                                              ; $6cee: $2f
	add  c                                           ; $6cef: $81
	inc  hl                                          ; $6cf0: $23
	add  b                                           ; $6cf1: $80
	ld   h, e                                        ; $6cf2: $63
	ld   bc, $0021                                   ; $6cf3: $01 $21 $00
	add  b                                           ; $6cf6: $80
	ld   [hl-], a                                    ; $6cf7: $32
	ld   [bc], a                                     ; $6cf8: $02
	ld   [hl+], a                                    ; $6cf9: $22
	ld   [hl-], a                                    ; $6cfa: $32
	inc  sp                                          ; $6cfb: $33
	add  e                                           ; $6cfc: $83
	dec  sp                                          ; $6cfd: $3b
	add  b                                           ; $6cfe: $80
	dec  hl                                          ; $6cff: $2b
	dec  b                                           ; $6d00: $05
	add  hl, hl                                      ; $6d01: $29
	ld   sp, $787d                                   ; $6d02: $31 $7d $78
	ld   a, d                                        ; $6d05: $7a
	ld   a, a                                        ; $6d06: $7f
	add  b                                           ; $6d07: $80
	ld   a, c                                        ; $6d08: $79
	inc  b                                           ; $6d09: $04
	ld   a, l                                        ; $6d0a: $7d
	ld   a, b                                        ; $6d0b: $78
	ld   a, d                                        ; $6d0c: $7a
	ld   a, a                                        ; $6d0d: $7f
	ld   a, b                                        ; $6d0e: $78
	add  d                                           ; $6d0f: $82
	ld   a, a                                        ; $6d10: $7f
	nop                                              ; $6d11: $00
	ld   a, c                                        ; $6d12: $79
	ei                                               ; $6d13: $fb
	ld   bc, $0086                                   ; $6d14: $01 $86 $00
	nop                                              ; $6d17: $00
	ld   [$0f85], sp                                 ; $6d18: $08 $85 $0f
	nop                                              ; $6d1b: $00
	rlca                                             ; $6d1c: $07
	add  l                                           ; $6d1d: $85
	nop                                              ; $6d1e: $00
	ld   [rAUD1LOW], sp                                 ; $6d1f: $08 $13 $ff
	rst  ToBoot                                         ; $6d22: $c7
	rst  $38                                         ; $6d23: $ff
	add  a                                           ; $6d24: $87
	db   $fc                                         ; $6d25: $fc
	inc  b                                           ; $6d26: $04
	db   $fc                                         ; $6d27: $fc
	ld   d, a                                        ; $6d28: $57
	add  l                                           ; $6d29: $85
	nop                                              ; $6d2a: $00
	add  b                                           ; $6d2b: $80
	ret  nz                                          ; $6d2c: $c0

	add  c                                           ; $6d2d: $81
	rst  $38                                         ; $6d2e: $ff
	add  c                                           ; $6d2f: $81
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	rst  $38                                         ; $6d32: $ff
	add  l                                           ; $6d33: $85
	nop                                              ; $6d34: $00
	ld   bc, $807f                                   ; $6d35: $01 $7f $80
	add  h                                           ; $6d38: $84
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	rst  $38                                         ; $6d3b: $ff
	add  l                                           ; $6d3c: $85
	nop                                              ; $6d3d: $00
	inc  bc                                          ; $6d3e: $03
	jp   hl                                          ; $6d3f: $e9


	sbc  d                                           ; $6d40: $9a
	add  d                                           ; $6d41: $82
	sbc  d                                           ; $6d42: $9a
	add  d                                           ; $6d43: $82
	sub  d                                           ; $6d44: $92
	nop                                              ; $6d45: $00
	ld   l, e                                        ; $6d46: $6b
	add  l                                           ; $6d47: $85
	nop                                              ; $6d48: $00
	add  b                                           ; $6d49: $80
	ld   [$3506], a                                  ; $6d4a: $ea $06 $35
	ld   [hl], l                                     ; $6d4d: $75
	jp   c, Jump_071_6dba                            ; $6d4e: $da $ba $6d

	ld   e, l                                        ; $6d51: $5d
	db   $10                                         ; $6d52: $10
	add  l                                           ; $6d53: $85
	nop                                              ; $6d54: $00
	add  [hl]                                        ; $6d55: $86
	add  c                                           ; $6d56: $81
	add  [hl]                                        ; $6d57: $86
	nop                                              ; $6d58: $00
	ld   [bc], a                                     ; $6d59: $02
	inc  de                                          ; $6d5a: $13
	inc  a                                           ; $6d5b: $3c
	jr   c, @-$7b                                    ; $6d5c: $38 $83

	inc  a                                           ; $6d5e: $3c
	nop                                              ; $6d5f: $00
	dec  hl                                          ; $6d60: $2b
	add  l                                           ; $6d61: $85
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	ld   d, [hl]                                     ; $6d64: $56
	add  l                                           ; $6d65: $85
	xor  e                                           ; $6d66: $ab
	nop                                              ; $6d67: $00
	db   $fd                                         ; $6d68: $fd
	add  l                                           ; $6d69: $85
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	ret  nc                                          ; $6d6c: $d0

	add  l                                           ; $6d6d: $85
	ld   l, b                                        ; $6d6e: $68
	nop                                              ; $6d6f: $00
	cp   b                                           ; $6d70: $b8
	add  l                                           ; $6d71: $85
	nop                                              ; $6d72: $00
	ld   [$3a01], sp                                 ; $6d73: $08 $01 $3a
	ld   a, [hl+]                                    ; $6d76: $2a
	ld   a, [hl-]                                    ; $6d77: $3a
	ld   a, [hl+]                                    ; $6d78: $2a
	ld   a, [hl-]                                    ; $6d79: $3a
	inc  b                                           ; $6d7a: $04
	inc  d                                           ; $6d7b: $14
	dec  hl                                          ; $6d7c: $2b
	add  l                                           ; $6d7d: $85
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	sbc  e                                           ; $6d80: $9b
	add  e                                           ; $6d81: $83
	ld   h, a                                        ; $6d82: $67
	ld   [bc], a                                     ; $6d83: $02
	ld   h, b                                        ; $6d84: $60
	ld   h, e                                        ; $6d85: $63
	rst  $38                                         ; $6d86: $ff
	add  l                                           ; $6d87: $85
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	ldh  [$83], a                                    ; $6d8a: $e0 $83
	ldh  a, [rSC]                                    ; $6d8c: $f0 $02
	nop                                              ; $6d8e: $00
	ldh  [$f0], a                                    ; $6d8f: $e0 $f0
	add  l                                           ; $6d91: $85
	nop                                              ; $6d92: $00
	ld   bc, $dfbf                                   ; $6d93: $01 $bf $df
	add  b                                           ; $6d96: $80
	cp   a                                           ; $6d97: $bf
	inc  b                                           ; $6d98: $04
	sbc  a                                           ; $6d99: $9f
	cp   a                                           ; $6d9a: $bf
	sbc  h                                           ; $6d9b: $9c
	cp   a                                           ; $6d9c: $bf
	ld   h, e                                        ; $6d9d: $63
	add  l                                           ; $6d9e: $85
	nop                                              ; $6d9f: $00
	ld   [$fef9], sp                                 ; $6da0: $08 $f9 $fe
	and  $fe                                         ; $6da3: $e6 $fe
	cp   h                                           ; $6da5: $bc
	call c, $e060                                    ; $6da6: $dc $60 $e0
	rst  $38                                         ; $6da9: $ff
	add  l                                           ; $6daa: $85
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	rst  $38                                         ; $6dad: $ff
	add  b                                           ; $6dae: $80
	rlca                                             ; $6daf: $07
	add  b                                           ; $6db0: $80
	rrca                                             ; $6db1: $0f
	add  b                                           ; $6db2: $80
	rra                                              ; $6db3: $1f
	dec  de                                          ; $6db4: $1b
	ld   a, a                                        ; $6db5: $7f
	adc  c                                           ; $6db6: $89
	rrca                                             ; $6db7: $0f
	inc  c                                           ; $6db8: $0c
	rrca                                             ; $6db9: $0f

Jump_071_6dba:
	inc  c                                           ; $6dba: $0c
	rrca                                             ; $6dbb: $0f
	inc  c                                           ; $6dbc: $0c
	rrca                                             ; $6dbd: $0f
	inc  c                                           ; $6dbe: $0c
	rrca                                             ; $6dbf: $0f
	inc  c                                           ; $6dc0: $0c
	rrca                                             ; $6dc1: $0f
	inc  c                                           ; $6dc2: $0c
	rrca                                             ; $6dc3: $0f
	dec  c                                           ; $6dc4: $0d
	rrca                                             ; $6dc5: $0f
	ld   d, c                                        ; $6dc6: $51
	cp   $04                                         ; $6dc7: $fe $04
	cp   $0f                                         ; $6dc9: $fe $0f
	rst  $38                                         ; $6dcb: $ff
	ld   e, $ff                                      ; $6dcc: $1e $ff
	ccf                                              ; $6dce: $3f
	rst  $38                                         ; $6dcf: $ff
	ld   a, a                                        ; $6dd0: $7f
	add  e                                           ; $6dd1: $83
	rst  $38                                         ; $6dd2: $ff
	nop                                              ; $6dd3: $00
	add  b                                           ; $6dd4: $80
	add  c                                           ; $6dd5: $81
	ld   a, a                                        ; $6dd6: $7f
	add  b                                           ; $6dd7: $80
	ccf                                              ; $6dd8: $3f
	dec  b                                           ; $6dd9: $05
	ld   a, [hl+]                                    ; $6dda: $2a
	ccf                                              ; $6ddb: $3f
	sub  l                                           ; $6ddc: $95
	sbc  a                                           ; $6ddd: $9f
	rrca                                             ; $6dde: $0f
	sbc  a                                           ; $6ddf: $9f
	add  b                                           ; $6de0: $80
	rst  JumpTable                                         ; $6de1: $df
	ld   [bc], a                                     ; $6de2: $02
	sbc  a                                           ; $6de3: $9f
	rst  JumpTable                                         ; $6de4: $df
	ld   c, a                                        ; $6de5: $4f
	add  c                                           ; $6de6: $81
	add  b                                           ; $6de7: $80
	add  b                                           ; $6de8: $80
	ret  nz                                          ; $6de9: $c0

	inc  bc                                          ; $6dea: $03
	add  b                                           ; $6deb: $80
	ret  nz                                          ; $6dec: $c0

	ld   b, b                                        ; $6ded: $40
	ret  nz                                          ; $6dee: $c0

	add  d                                           ; $6def: $82
	ldh  [$80], a                                    ; $6df0: $e0 $80
	db   $e3                                         ; $6df2: $e3
	nop                                              ; $6df3: $00
	add  $80                                         ; $6df4: $c6 $80
	ld   d, d                                        ; $6df6: $52
	add  d                                           ; $6df7: $82
	ld   c, d                                        ; $6df8: $4a
	add  d                                           ; $6df9: $82
	and  d                                           ; $6dfa: $a2
	nop                                              ; $6dfb: $00
	ld   d, d                                        ; $6dfc: $52
	add  b                                           ; $6dfd: $80
	ld   d, [hl]                                     ; $6dfe: $56
	add  hl, bc                                      ; $6dff: $09
	xor  e                                           ; $6e00: $ab

jr_071_6e01:
	rst  $38                                         ; $6e01: $ff
	ld   e, l                                        ; $6e02: $5d
	xor  [hl]                                        ; $6e03: $ae
	ld   e, c                                        ; $6e04: $59
	ld   d, a                                        ; $6e05: $57
	xor  b                                           ; $6e06: $a8
	xor  e                                           ; $6e07: $ab
	ld   d, h                                        ; $6e08: $54
	ld   d, l                                        ; $6e09: $55
	add  b                                           ; $6e0a: $80
	xor  d                                           ; $6e0b: $aa
	add  b                                           ; $6e0c: $80
	ld   d, l                                        ; $6e0d: $55
	add  b                                           ; $6e0e: $80
	xor  d                                           ; $6e0f: $aa
	ld   [bc], a                                     ; $6e10: $02
	ld   bc, $7fff                                   ; $6e11: $01 $ff $7f
	add  e                                           ; $6e14: $83
	add  c                                           ; $6e15: $81
	ld   [bc], a                                     ; $6e16: $02
	ld   bc, $0181                                   ; $6e17: $01 $81 $01
	add  c                                           ; $6e1a: $81
	add  c                                           ; $6e1b: $81
	ld   bc, $8180                                   ; $6e1c: $01 $80 $81
	add  b                                           ; $6e1f: $80
	add  e                                           ; $6e20: $83
	nop                                              ; $6e21: $00
	ld   d, $85                                      ; $6e22: $16 $85
	inc  a                                           ; $6e24: $3c
	add  b                                           ; $6e25: $80
	ld   a, b                                        ; $6e26: $78
	add  d                                           ; $6e27: $82
	ld   hl, sp-$80                                  ; $6e28: $f8 $80
	ld   a, [$7d01]                                  ; $6e2a: $fa $01 $7d
	xor  e                                           ; $6e2d: $ab
	add  b                                           ; $6e2e: $80
	rst  $10                                         ; $6e2f: $d7
	ld   bc, $d797                                   ; $6e30: $01 $97 $d7
	add  b                                           ; $6e33: $80
	and  a                                           ; $6e34: $a7
	inc  bc                                          ; $6e35: $03
	and  b                                           ; $6e36: $a0
	and  e                                           ; $6e37: $a3
	sub  b                                           ; $6e38: $90
	or   c                                           ; $6e39: $b1
	add  b                                           ; $6e3a: $80
	cp   a                                           ; $6e3b: $bf
	inc  bc                                          ; $6e3c: $03
	add  b                                           ; $6e3d: $80
	cp   a                                           ; $6e3e: $bf
	ld   a, a                                        ; $6e3f: $7f
	ld   h, b                                        ; $6e40: $60
	add  b                                           ; $6e41: $80
	ld   h, c                                        ; $6e42: $61
	add  b                                           ; $6e43: $80
	ld   [hl], c                                     ; $6e44: $71
	dec  bc                                          ; $6e45: $0b
	add  hl, de                                      ; $6e46: $19
	ld   a, c                                        ; $6e47: $79
	add  l                                           ; $6e48: $85
	cp   l                                           ; $6e49: $bd
	rlca                                             ; $6e4a: $07
	sbc  a                                           ; $6e4b: $9f
	rra                                              ; $6e4c: $1f
	add  sp, $40                                     ; $6e4d: $e8 $40
	ret  z                                           ; $6e4f: $c8

	ei                                               ; $6e50: $fb
	inc  b                                           ; $6e51: $04
	add  b                                           ; $6e52: $80
	add  h                                           ; $6e53: $84
	add  b                                           ; $6e54: $80
	adc  h                                           ; $6e55: $8c
	add  b                                           ; $6e56: $80
	sbc  c                                           ; $6e57: $99
	add  b                                           ; $6e58: $80
	or   e                                           ; $6e59: $b3
	add  c                                           ; $6e5a: $81
	rst  $38                                         ; $6e5b: $ff
	add  c                                           ; $6e5c: $81
	nop                                              ; $6e5d: $00
	ld   bc, $609f                                   ; $6e5e: $01 $9f $60

jr_071_6e61:
	add  b                                           ; $6e61: $80
	ld   h, l                                        ; $6e62: $65
	add  b                                           ; $6e63: $80
	jp   z, $8580                                    ; $6e64: $ca $80 $85

	add  b                                           ; $6e67: $80
	ld   a, [bc]                                     ; $6e68: $0a
	add  b                                           ; $6e69: $80
	rst  $38                                         ; $6e6a: $ff
	ld   bc, $03fc                                   ; $6e6b: $01 $fc $03
	add  b                                           ; $6e6e: $80
	ld   b, $03                                      ; $6e6f: $06 $03
	cp   $0f                                         ; $6e71: $fe $0f
	ld   b, b                                        ; $6e73: $40
	ld   d, c                                        ; $6e74: $51
	add  b                                           ; $6e75: $80
	or   c                                           ; $6e76: $b1
	add  b                                           ; $6e77: $80
	ld   d, c                                        ; $6e78: $51
	dec  b                                           ; $6e79: $05
	xor  a                                           ; $6e7a: $af
	cp   [hl]                                        ; $6e7b: $be
	rst  $28                                         ; $6e7c: $ef
	pop  hl                                          ; $6e7d: $e1
	rst  $10                                         ; $6e7e: $d7
	jr   c, jr_071_6e01                              ; $6e7f: $38 $80

	ld   a, c                                        ; $6e81: $79
	ld   bc, $9d72                                   ; $6e82: $01 $72 $9d
	add  b                                           ; $6e85: $80
	ld   e, $82                                      ; $6e86: $1e $82
	nop                                              ; $6e88: $00
	dec  b                                           ; $6e89: $05
	dec  b                                           ; $6e8a: $05
	ld   a, [bc]                                     ; $6e8b: $0a
	dec  b                                           ; $6e8c: $05
	ld   [hl], l                                     ; $6e8d: $75
	ld   c, d                                        ; $6e8e: $4a
	ld   a, [$fd80]                                  ; $6e8f: $fa $80 $fd
	ld   [bc], a                                     ; $6e92: $02
	rrca                                             ; $6e93: $0f
	ret  nz                                          ; $6e94: $c0

	nop                                              ; $6e95: $00
	add  b                                           ; $6e96: $80
	inc  bc                                          ; $6e97: $03
	ld   [bc], a                                     ; $6e98: $02
	rra                                              ; $6e99: $1f
	dec  [hl]                                        ; $6e9a: $35
	push de                                          ; $6e9b: $d5
	add  b                                           ; $6e9c: $80
	xor  d                                           ; $6e9d: $aa
	add  b                                           ; $6e9e: $80
	ld   d, l                                        ; $6e9f: $55
	add  b                                           ; $6ea0: $80
	xor  d                                           ; $6ea1: $aa
	add  b                                           ; $6ea2: $80
	ld   d, l                                        ; $6ea3: $55
	nop                                              ; $6ea4: $00
	ld   a, a                                        ; $6ea5: $7f
	add  e                                           ; $6ea6: $83
	rst  $38                                         ; $6ea7: $ff
	add  b                                           ; $6ea8: $80
	push de                                          ; $6ea9: $d5
	add  b                                           ; $6eaa: $80
	xor  e                                           ; $6eab: $ab
	ld   bc, $d5d4                                   ; $6eac: $01 $d4 $d5
	add  b                                           ; $6eaf: $80
	xor  e                                           ; $6eb0: $ab
	add  b                                           ; $6eb1: $80
	push de                                          ; $6eb2: $d5
	nop                                              ; $6eb3: $00
	adc  d                                           ; $6eb4: $8a
	adc  l                                           ; $6eb5: $8d
	rrca                                             ; $6eb6: $0f
	nop                                              ; $6eb7: $00
	ei                                               ; $6eb8: $fb
	adc  l                                           ; $6eb9: $8d
	rst  $38                                         ; $6eba: $ff
	ld   bc, $dfe0                                   ; $6ebb: $01 $e0 $df
	add  b                                           ; $6ebe: $80
	ret  nz                                          ; $6ebf: $c0

	ld   bc, $c080                                   ; $6ec0: $01 $80 $c0
	add  d                                           ; $6ec3: $82
	add  b                                           ; $6ec4: $80
	ld   bc, $ff7f                                   ; $6ec5: $01 $7f $ff
	add  d                                           ; $6ec8: $82
	add  b                                           ; $6ec9: $80
	add  b                                           ; $6eca: $80
	ldh  [c], a                                      ; $6ecb: $e2
	add  d                                           ; $6ecc: $82
	ld   [hl+], a                                    ; $6ecd: $22
	add  d                                           ; $6ece: $82
	ld   hl, $c180                                   ; $6ecf: $21 $80 $c1
	add  d                                           ; $6ed2: $82
	ld   b, c                                        ; $6ed3: $41
	add  h                                           ; $6ed4: $84
	ld   c, c                                        ; $6ed5: $49
	add  h                                           ; $6ed6: $84
	inc  h                                           ; $6ed7: $24
	add  d                                           ; $6ed8: $82
	nop                                              ; $6ed9: $00
	add  h                                           ; $6eda: $84
	jr   nz, jr_071_6e61                             ; $6edb: $20 $84

	sub  b                                           ; $6edd: $90
	add  d                                           ; $6ede: $82
	db   $10                                         ; $6edf: $10
	ld   bc, $87f9                                   ; $6ee0: $01 $f9 $87
	add  b                                           ; $6ee3: $80
	adc  a                                           ; $6ee4: $8f
	add  b                                           ; $6ee5: $80
	sbc  a                                           ; $6ee6: $9f
	add  b                                           ; $6ee7: $80
	cp   a                                           ; $6ee8: $bf
	add  b                                           ; $6ee9: $80
	rst  $38                                         ; $6eea: $ff
	ld   [bc], a                                     ; $6eeb: $02

jr_071_6eec:
	add  c                                           ; $6eec: $81
	rst  $38                                         ; $6eed: $ff
	sbc  [hl]                                        ; $6eee: $9e
	add  c                                           ; $6eef: $81
	pop  hl                                          ; $6ef0: $e1
	ld   [bc], a                                     ; $6ef1: $02
	ld   d, h                                        ; $6ef2: $54
	ld   sp, hl                                      ; $6ef3: $f9
	cp   $80                                         ; $6ef4: $fe $80
	db   $fd                                         ; $6ef6: $fd
	add  e                                           ; $6ef7: $83
	db   $fc                                         ; $6ef8: $fc
	ld   [bc], a                                     ; $6ef9: $02
	inc  h                                           ; $6efa: $24
	db   $f4                                         ; $6efb: $f4
	adc  h                                           ; $6efc: $8c
	add  c                                           ; $6efd: $81
	ld   a, h                                        ; $6efe: $7c
	ld   bc, $7f90                                   ; $6eff: $01 $90 $7f
	add  b                                           ; $6f02: $80
	scf                                              ; $6f03: $37
	ld   b, $b6                                      ; $6f04: $06 $b6
	cp   [hl]                                        ; $6f06: $be
	ld   e, a                                        ; $6f07: $5f
	ld   c, b                                        ; $6f08: $48
	add  b                                           ; $6f09: $80
	ret  nz                                          ; $6f0a: $c0

	ldh  [$81], a                                    ; $6f0b: $e0 $81
	pop  hl                                          ; $6f0d: $e1
	inc  bc                                          ; $6f0e: $03
	ret  nz                                          ; $6f0f: $c0

	db   $e3                                         ; $6f10: $e3
	dec  d                                           ; $6f11: $15
	adc  b                                           ; $6f12: $88
	add  b                                           ; $6f13: $80
	ld   [$1005], sp                                 ; $6f14: $08 $05 $10
	sbc  [hl]                                        ; $6f17: $9e
	ld   [$01ff], sp                                 ; $6f18: $08 $ff $01
	add  a                                           ; $6f1b: $87
	add  b                                           ; $6f1c: $80
	add  b                                           ; $6f1d: $80
	add  b                                           ; $6f1e: $80
	sbc  e                                           ; $6f1f: $9b
	ld   [bc], a                                     ; $6f20: $02
	dec  bc                                          ; $6f21: $0b
	dec  sp                                          ; $6f22: $3b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f23: $cf
	add  d                                           ; $6f24: $82
	nop                                              ; $6f25: $00
	add  b                                           ; $6f26: $80
	db   $10                                         ; $6f27: $10
	ld   [bc], a                                     ; $6f28: $02
	rst  $28                                         ; $6f29: $ef
	stop                                             ; $6f2a: $10 $00
	add  b                                           ; $6f2c: $80
	ld   b, e                                        ; $6f2d: $43
	dec  b                                           ; $6f2e: $05
	ld   b, $46                                      ; $6f2f: $06 $46
	ld   e, c                                        ; $6f31: $59
	ld   e, a                                        ; $6f32: $5f
	or   l                                           ; $6f33: $b5
	inc  c                                           ; $6f34: $0c
	add  b                                           ; $6f35: $80
	add  hl, de                                      ; $6f36: $19
	inc  b                                           ; $6f37: $04
	jr   nc, jr_071_6eec                             ; $6f38: $30 $b2

	add  d                                           ; $6f3a: $82
	ld   a, l                                        ; $6f3b: $7d
	add  d                                           ; $6f3c: $82
	add  e                                           ; $6f3d: $83
	nop                                              ; $6f3e: $00
	add  b                                           ; $6f3f: $80
	add  b                                           ; $6f40: $80
	ld   bc, $f916                                   ; $6f41: $01 $16 $f9
	add  b                                           ; $6f44: $80
	ei                                               ; $6f45: $fb
	rlca                                             ; $6f46: $07
	call nc, $14ff                                   ; $6f47: $d4 $ff $14
	ldh  a, [rAUD4LEN]                               ; $6f4a: $f0 $20
	nop                                              ; $6f4c: $00

jr_071_6f4d:
	ld   [$820f], sp                                 ; $6f4d: $08 $0f $82
	ld   [$3201], sp                                 ; $6f50: $08 $01 $32
	ld   a, [$fd80]                                  ; $6f53: $fa $80 $fd
	inc  bc                                          ; $6f56: $03
	ld   a, [hl-]                                    ; $6f57: $3a
	ld   a, [$1525]                                  ; $6f58: $fa $25 $15
	add  b                                           ; $6f5b: $80
	ld   a, [hl+]                                    ; $6f5c: $2a
	add  b                                           ; $6f5d: $80
	push de                                          ; $6f5e: $d5
	ld   bc, $ea6a                                   ; $6f5f: $01 $6a $ea
	add  b                                           ; $6f62: $80
	push de                                          ; $6f63: $d5
	ld   bc, $aaea                                   ; $6f64: $01 $ea $aa
	add  b                                           ; $6f67: $80
	ld   d, l                                        ; $6f68: $55
	add  b                                           ; $6f69: $80
	cp   a                                           ; $6f6a: $bf
	dec  bc                                          ; $6f6b: $0b
	ld   e, a                                        ; $6f6c: $5f
	ld   c, a                                        ; $6f6d: $4f
	rst  $28                                         ; $6f6e: $ef
	rst  $20                                         ; $6f6f: $e7
	ld   h, a                                        ; $6f70: $67
	ld   h, e                                        ; $6f71: $63
	ldh  [c], a                                      ; $6f72: $e2
	pop  hl                                          ; $6f73: $e1
	ld   h, b                                        ; $6f74: $60
	ld   h, c                                        ; $6f75: $61
	inc  [hl]                                        ; $6f76: $34
	xor  e                                           ; $6f77: $ab
	add  b                                           ; $6f78: $80
	push de                                          ; $6f79: $d5
	ld   bc, $eb6b                                   ; $6f7a: $01 $6b $eb
	add  b                                           ; $6f7d: $80
	push af                                          ; $6f7e: $f5
	add  b                                           ; $6f7f: $80
	ei                                               ; $6f80: $fb
	add  b                                           ; $6f81: $80
	db   $fd                                         ; $6f82: $fd
	ld   [$ff03], sp                                 ; $6f83: $08 $03 $ff
	ld   bc, $0afd                                   ; $6f86: $01 $fd $0a
	rrca                                             ; $6f89: $0f
	inc  b                                           ; $6f8a: $04
	rrca                                             ; $6f8b: $0f
	inc  b                                           ; $6f8c: $04
	adc  c                                           ; $6f8d: $89
	rrca                                             ; $6f8e: $0f
	inc  b                                           ; $6f8f: $04
	ld   a, [$01ff]                                  ; $6f90: $fa $ff $01
	rst  $38                                         ; $6f93: $ff
	ld   [bc], a                                     ; $6f94: $02
	add  d                                           ; $6f95: $82
	cp   $03                                         ; $6f96: $fe $03
	rst  $38                                         ; $6f98: $ff
	ld   a, [$fcff]                                  ; $6f99: $fa $ff $fc
	add  c                                           ; $6f9c: $81
	rst  $38                                         ; $6f9d: $ff
	nop                                              ; $6f9e: $00
	ei                                               ; $6f9f: $fb
	add  c                                           ; $6fa0: $81
	nop                                              ; $6fa1: $00
	add  d                                           ; $6fa2: $82
	ld   bc, $6104                                   ; $6fa3: $01 $04 $61
	rst  $38                                         ; $6fa6: $ff
	ld   h, b                                        ; $6fa7: $60
	cp   $00                                         ; $6fa8: $fe $00
	add  c                                           ; $6faa: $81
	cp   $0a                                         ; $6fab: $fe $0a
	ld   a, l                                        ; $6fad: $7d
	add  e                                           ; $6fae: $83
	add  h                                           ; $6faf: $84
	add  a                                           ; $6fb0: $87
	adc  e                                           ; $6fb1: $8b
	adc  a                                           ; $6fb2: $8f
	rla                                              ; $6fb3: $17
	rra                                              ; $6fb4: $1f
	cpl                                              ; $6fb5: $2f
	ccf                                              ; $6fb6: $3f
	ldh  [$83], a                                    ; $6fb7: $e0 $83
	rst  $38                                         ; $6fb9: $ff
	add  b                                           ; $6fba: $80
	rst  $28                                         ; $6fbb: $ef
	inc  bc                                          ; $6fbc: $03
	inc  b                                           ; $6fbd: $04
	call nz, $bbfb                                   ; $6fbe: $c4 $fb $bb
	add  b                                           ; $6fc1: $80
	add  h                                           ; $6fc2: $84
	ld   bc, $7fff                                   ; $6fc3: $01 $ff $7f
	add  h                                           ; $6fc6: $84
	rst  $38                                         ; $6fc7: $ff
	add  b                                           ; $6fc8: $80
	ldh  a, [$80]                                    ; $6fc9: $f0 $80
	jr   nz, jr_071_6f4d                             ; $6fcb: $20 $80

	add  b                                           ; $6fcd: $80
	add  b                                           ; $6fce: $80

Jump_071_6fcf:
	nop                                              ; $6fcf: $00
	inc  bc                                          ; $6fd0: $03
	ld   [bc], a                                     ; $6fd1: $02
	add  e                                           ; $6fd2: $83
	adc  [hl]                                        ; $6fd3: $8e
	adc  a                                           ; $6fd4: $8f
	add  d                                           ; $6fd5: $82
	add  b                                           ; $6fd6: $80
	nop                                              ; $6fd7: $00
	ld   e, $85                                      ; $6fd8: $1e $85
	pop  hl                                          ; $6fda: $e1
	ld   [bc], a                                     ; $6fdb: $02
	add  b                                           ; $6fdc: $80
	rst  $38                                         ; $6fdd: $ff
	rst  $20                                         ; $6fde: $e7
	add  e                                           ; $6fdf: $83
	sbc  c                                           ; $6fe0: $99
	nop                                              ; $6fe1: $00
	ldh  a, [c]                                      ; $6fe2: $f2
	add  l                                           ; $6fe3: $85
	ld   a, h                                        ; $6fe4: $7c
	ld   [bc], a                                     ; $6fe5: $02
	inc  c                                           ; $6fe6: $0c
	db   $fc                                         ; $6fe7: $fc
	ld   c, h                                        ; $6fe8: $4c
	add  e                                           ; $6fe9: $83
	cp   h                                           ; $6fea: $bc
	ld   bc, $d341                                   ; $6feb: $01 $41 $d3
	add  [hl]                                        ; $6fee: $86
	sub  $80                                         ; $6fef: $d6 $80
	or   $01                                         ; $6ff1: $f6 $01
	add  $e6                                         ; $6ff3: $c6 $e6
	add  b                                           ; $6ff5: $80
	sub  $04                                         ; $6ff6: $d6 $04
	ld   h, c                                        ; $6ff8: $61
	ld   d, e                                        ; $6ff9: $53
	or   b                                           ; $6ffa: $b0
	and  b                                           ; $6ffb: $a0
	and  e                                           ; $6ffc: $a3
	add  c                                           ; $6ffd: $81
	add  e                                           ; $6ffe: $83
	add  b                                           ; $6fff: $80
	add  b                                           ; $7000: $80
	add  b                                           ; $7001: $80
	adc  b                                           ; $7002: $88
	add  b                                           ; $7003: $80
	sbc  d                                           ; $7004: $9a
	add  b                                           ; $7005: $80
	sub  d                                           ; $7006: $92
	ld   [$5956], sp                                 ; $7007: $08 $56 $59
	ld   d, l                                        ; $700a: $55
	ld   d, a                                        ; $700b: $57
	ld   c, l                                        ; $700c: $4d
	ld   h, b                                        ; $700d: $60
	ld   h, h                                        ; $700e: $64
	inc  [hl]                                        ; $700f: $34
	db   $f4                                         ; $7010: $f4
	add  b                                           ; $7011: $80
	call nc, $c481                                   ; $7012: $d4 $81 $c4
	add  b                                           ; $7015: $80
	ld   h, h                                        ; $7016: $64
	add  d                                           ; $7017: $82
	add  a                                           ; $7018: $87
	add  b                                           ; $7019: $80
	inc  bc                                          ; $701a: $03
	add  c                                           ; $701b: $81
	nop                                              ; $701c: $00
	add  e                                           ; $701d: $83
	ldh  [rP1], a                                    ; $701e: $e0 $00
	rst  $28                                         ; $7020: $ef
	add  b                                           ; $7021: $80
	add  hl, bc                                      ; $7022: $09
	inc  c                                           ; $7023: $0c
	rrca                                             ; $7024: $0f
	nop                                              ; $7025: $00
	add  b                                           ; $7026: $80
	inc  b                                           ; $7027: $04
	rst  $20                                         ; $7028: $e7
	add  h                                           ; $7029: $84
	rst  $38                                         ; $702a: $ff
	ld   bc, $241f                                   ; $702b: $01 $1f $24
	inc  hl                                          ; $702e: $23
	ld   [hl], c                                     ; $702f: $71
	ld   [hl], b                                     ; $7030: $70
	add  b                                           ; $7031: $80
	inc  hl                                          ; $7032: $23
	inc  bc                                          ; $7033: $03
	push de                                          ; $7034: $d5
	ld   [$7f40], a                                  ; $7035: $ea $40 $7f
	add  b                                           ; $7038: $80
	ldh  [$0d], a                                    ; $7039: $e0 $0d
	ld   h, b                                        ; $703b: $60
	rst  $38                                         ; $703c: $ff
	or   b                                           ; $703d: $b0
	ld   [hl], b                                     ; $703e: $70
	nop                                              ; $703f: $00
	ret  nc                                          ; $7040: $d0

jr_071_7041:
	xor  b                                           ; $7041: $a8
	jr   z, jr_071_7050                              ; $7042: $28 $0c

	inc  b                                           ; $7044: $04
	rlca                                             ; $7045: $07
	pop  hl                                          ; $7046: $e1
	ld   de, $81f1                                   ; $7047: $11 $f1 $81
	ld   bc, $e100                                   ; $704a: $01 $00 $e1
	add  d                                           ; $704d: $82
	ld   h, c                                        ; $704e: $61
	dec  b                                           ; $704f: $05

jr_071_7050:
	ld   b, c                                        ; $7050: $41
	ld   h, c                                        ; $7051: $61
	sub  c                                           ; $7052: $91
	pop  af                                          ; $7053: $f1
	ld   e, b                                        ; $7054: $58
	rlca                                             ; $7055: $07
	add  b                                           ; $7056: $80
	dec  b                                           ; $7057: $05
	add  b                                           ; $7058: $80
	rlca                                             ; $7059: $07
	add  b                                           ; $705a: $80
	dec  b                                           ; $705b: $05
	add  b                                           ; $705c: $80
	rlca                                             ; $705d: $07
	add  b                                           ; $705e: $80
	dec  b                                           ; $705f: $05
	add  b                                           ; $7060: $80
	rlca                                             ; $7061: $07
	add  b                                           ; $7062: $80
	db   $fd                                         ; $7063: $fd
	nop                                              ; $7064: $00
	ld   a, [bc]                                     ; $7065: $0a
	adc  c                                           ; $7066: $89
	rrca                                             ; $7067: $0f
	ld   b, $0d                                      ; $7068: $06 $0d
	ld   c, $08                                      ; $706a: $0e $08
	nop                                              ; $706c: $00
	or   $fe                                         ; $706d: $f6 $fe
	ei                                               ; $706f: $fb
	add  e                                           ; $7070: $83
	rst  $38                                         ; $7071: $ff
	inc  bc                                          ; $7072: $03
	cp   $ff                                         ; $7073: $fe $ff
	ccf                                              ; $7075: $3f
	jp   $0380                                       ; $7076: $c3 $80 $03


	add  b                                           ; $7079: $80
	ld   [bc], a                                     ; $707a: $02
	ld   bc, $0001                                   ; $707b: $01 $01 $00
	add  b                                           ; $707e: $80
	rst  $38                                         ; $707f: $ff
	inc  bc                                          ; $7080: $03
	add  b                                           ; $7081: $80
	rst  $38                                         ; $7082: $ff
	ld   a, a                                        ; $7083: $7f
	rst  $38                                         ; $7084: $ff
	add  b                                           ; $7085: $80
	db   $fc                                         ; $7086: $fc
	add  b                                           ; $7087: $80
	ldh  a, [$80]                                    ; $7088: $f0 $80
	ret  nz                                          ; $708a: $c0

	add  b                                           ; $708b: $80
	ld   bc, $ff05                                   ; $708c: $01 $05 $ff
	nop                                              ; $708f: $00
	pop  hl                                          ; $7090: $e1
	rst  $38                                         ; $7091: $ff
	ld   de, $80f0                                   ; $7092: $11 $f0 $80
	add  b                                           ; $7095: $80
	add  b                                           ; $7096: $80
	inc  bc                                          ; $7097: $03
	add  b                                           ; $7098: $80
	rrca                                             ; $7099: $0f
	add  b                                           ; $709a: $80
	ccf                                              ; $709b: $3f
	inc  bc                                          ; $709c: $03
	add  d                                           ; $709d: $82
	rst  $38                                         ; $709e: $ff
	add  d                                           ; $709f: $82
	nop                                              ; $70a0: $00
	add  b                                           ; $70a1: $80
	db   $eb                                         ; $70a2: $eb
	ld   bc, $2bc8                                   ; $70a3: $01 $c8 $2b
	add  d                                           ; $70a6: $82
	db   $eb                                         ; $70a7: $eb
	add  b                                           ; $70a8: $80
	rst  $28                                         ; $70a9: $ef
	dec  b                                           ; $70aa: $05
	db   $e3                                         ; $70ab: $e3
	rst  $38                                         ; $70ac: $ff
	cp   a                                           ; $70ad: $bf
	rst  $38                                         ; $70ae: $ff
	cp   c                                           ; $70af: $b9
	ld   b, $80                                      ; $70b0: $06 $80
	add  [hl]                                        ; $70b2: $86
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	add  c                                           ; $70b5: $81
	add  b                                           ; $70b6: $80
	ld   [bc], a                                     ; $70b7: $02
	sub  b                                           ; $70b8: $90
	sbc  a                                           ; $70b9: $9f
	adc  a                                           ; $70ba: $8f
	add  e                                           ; $70bb: $83
	rst  $38                                         ; $70bc: $ff
	nop                                              ; $70bd: $00
	jr   jr_071_7041                                 ; $70be: $18 $81

	sbc  c                                           ; $70c0: $99
	ld   b, $a1                                      ; $70c1: $06 $a1
	cp   a                                           ; $70c3: $bf
	ld   l, e                                        ; $70c4: $6b
	rst  $38                                         ; $70c5: $ff
	pop  hl                                          ; $70c6: $e1
	rst  $38                                         ; $70c7: $ff
	ld   [$ff83], a                                  ; $70c8: $ea $83 $ff
	dec  b                                           ; $70cb: $05
	rst  $30                                         ; $70cc: $f7
	ld   hl, sp-$68                                  ; $70cd: $f8 $98
	rst  $28                                         ; $70cf: $ef
	ld   [hl], b                                     ; $70d0: $70

jr_071_70d1:
	db   $f4                                         ; $70d1: $f4
	add  b                                           ; $70d2: $80
	ld   a, [$7e10]                                  ; $70d3: $fa $10 $7e
	db   $fc                                         ; $70d6: $fc
	jr   z, jr_071_70d1                              ; $70d7: $28 $f8

	inc  b                                           ; $70d9: $04
	db   $fc                                         ; $70da: $fc
	ld   [bc], a                                     ; $70db: $02
	ld   a, [$d6c5]                                  ; $70dc: $fa $c5 $d6
	inc  b                                           ; $70df: $04
	add  $52                                         ; $70e0: $c6 $52
	ld   [hl-], a                                    ; $70e2: $32
	jr   jr_071_70ed                                 ; $70e3: $18 $08

	inc  c                                           ; $70e5: $0c
	add  b                                           ; $70e6: $80
	inc  b                                           ; $70e7: $04
	add  b                                           ; $70e8: $80
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	ld   [bc], a                                     ; $70eb: $02

jr_071_70ec:
	add  b                                           ; $70ec: $80

jr_071_70ed:
	nop                                              ; $70ed: $00
	ld   bc, $8638                                   ; $70ee: $01 $38 $86
	add  b                                           ; $70f1: $80
	adc  h                                           ; $70f2: $8c
	add  b                                           ; $70f3: $80
	adc  c                                           ; $70f4: $89
	add  b                                           ; $70f5: $80
	adc  e                                           ; $70f6: $8b
	add  b                                           ; $70f7: $80
	adc  d                                           ; $70f8: $8a
	add  b                                           ; $70f9: $80
	adc  e                                           ; $70fa: $8b
	nop                                              ; $70fb: $00
	add  c                                           ; $70fc: $81
	add  b                                           ; $70fd: $80
	add  d                                           ; $70fe: $82
	ld   [bc], a                                     ; $70ff: $02
	add  a                                           ; $7100: $87
	or   $b0                                         ; $7101: $f6 $b0
	add  b                                           ; $7103: $80
	sbc  b                                           ; $7104: $98
	add  b                                           ; $7105: $80
	adc  h                                           ; $7106: $8c
	add  b                                           ; $7107: $80
	ld   bc, $4109                                   ; $7108: $01 $09 $41
	ld   a, a                                        ; $710b: $7f
	ld   b, c                                        ; $710c: $41
	add  b                                           ; $710d: $80
	pop  bc                                          ; $710e: $c1
	rst  $38                                         ; $710f: $ff
	ld   a, $ff                                      ; $7110: $3e $ff
	rrca                                             ; $7112: $0f
	ld   l, c                                        ; $7113: $69
	add  b                                           ; $7114: $80
	ld   a, c                                        ; $7115: $79
	inc  bc                                          ; $7116: $03
	ld   e, [hl]                                     ; $7117: $5e
	jr   z, jr_071_7166                              ; $7118: $28 $4c

	ld   e, h                                        ; $711a: $5c
	add  b                                           ; $711b: $80
	sbc  h                                           ; $711c: $9c
	add  hl, bc                                      ; $711d: $09
	db   $ec                                         ; $711e: $ec
	ld   l, h                                        ; $711f: $6c
	ld   [hl], b                                     ; $7120: $70
	db   $10                                         ; $7121: $10
	jr   jr_071_70ec                                 ; $7122: $18 $c8

	ld   b, e                                        ; $7124: $43
	ld   [hl], e                                     ; $7125: $73
	ld   [hl+], a                                    ; $7126: $22
	inc  hl                                          ; $7127: $23
	add  b                                           ; $7128: $80
	ld   [hl], e                                     ; $7129: $73
	ld   bc, $7350                                   ; $712a: $01 $50 $73
	add  c                                           ; $712d: $81
	ld   [hl], a                                     ; $712e: $77
	dec  b                                           ; $712f: $05
	halt                                             ; $7130: $76
	ldh  [$e4], a                                    ; $7131: $e0 $e4
	adc  b                                           ; $7133: $88
	add  sp, $46                                     ; $7134: $e8 $46
	add  b                                           ; $7136: $80
	inc  bc                                          ; $7137: $03
	nop                                              ; $7138: $00
	ld   bc, $7880                                   ; $7139: $01 $80 $78
	rra                                              ; $713c: $1f
	and  $fe                                         ; $713d: $e6 $fe
	ld   h, e                                        ; $713f: $63
	add  a                                           ; $7140: $87
	ld   a, [de]                                     ; $7141: $1a
	rla                                              ; $7142: $17
	inc  a                                           ; $7143: $3c
	cpl                                              ; $7144: $2f
	jr   c, jr_071_7166                              ; $7145: $38 $1f

	ld   h, h                                        ; $7147: $64
	pop  hl                                          ; $7148: $e1
	ld   bc, $01c2                                   ; $7149: $01 $c2 $01
	add  l                                           ; $714c: $85
	dec  bc                                          ; $714d: $0b
	ld   a, [bc]                                     ; $714e: $0a
	ld   [$08ec], a                                  ; $714f: $ea $ec $08
	ld   hl, sp-$35                                  ; $7152: $f8 $cb
	rst  ToBoot                                         ; $7154: $c7
	ld   h, e                                        ; $7155: $63
	ldh  [$81], a                                    ; $7156: $e0 $81
	cp   $30                                         ; $7158: $fe $30
	cp   h                                           ; $715a: $bc
	sub  h                                           ; $715b: $94
	jr   @-$7e                                       ; $715c: $18 $80

	ld   sp, $6380                                   ; $715e: $31 $80 $63
	add  b                                           ; $7161: $80
	add  a                                           ; $7162: $87
	inc  b                                           ; $7163: $04
	rlca                                             ; $7164: $07
	rrca                                             ; $7165: $0f

jr_071_7166:
	ld   l, a                                        ; $7166: $6f
	rst  $38                                         ; $7167: $ff
	ld   l, b                                        ; $7168: $68
	add  c                                           ; $7169: $81
	nop                                              ; $716a: $00
	add  b                                           ; $716b: $80
	inc  bc                                          ; $716c: $03
	inc  b                                           ; $716d: $04
	inc  c                                           ; $716e: $0c
	rrca                                             ; $716f: $0f
	inc  bc                                          ; $7170: $03
	rrca                                             ; $7171: $0f
	ld   c, $81                                      ; $7172: $0e $81
	rrca                                             ; $7174: $0f
	inc  c                                           ; $7175: $0c
	dec  c                                           ; $7176: $0d
	rrca                                             ; $7177: $0f
	jp   $063e                                       ; $7178: $c3 $3e $06


	rlca                                             ; $717b: $07
	rst  $28                                         ; $717c: $ef
	pop  af                                          ; $717d: $f1
	adc  c                                           ; $717e: $89
	ld   hl, sp-$20                                  ; $717f: $f8 $e0
	ld   hl, sp+$7c                                  ; $7181: $f8 $7c
	add  c                                           ; $7183: $81
	db   $fc                                         ; $7184: $fc
	dec  b                                           ; $7185: $05
	ldh  a, [$fc]                                    ; $7186: $f0 $fc
	inc  [hl]                                        ; $7188: $34
	ccf                                              ; $7189: $3f
	rst  JumpTable                                         ; $718a: $df
	cpl                                              ; $718b: $2f
	add  b                                           ; $718c: $80
	ld   d, a                                        ; $718d: $57
	add  b                                           ; $718e: $80
	xor  e                                           ; $718f: $ab
	rrca                                             ; $7190: $0f
	push bc                                          ; $7191: $c5
	ld   b, l                                        ; $7192: $45
	ld   d, d                                        ; $7193: $52
	ld   [hl-], a                                    ; $7194: $32
	inc  d                                           ; $7195: $14
	inc  c                                           ; $7196: $0c
	dec  b                                           ; $7197: $05
	ld   [bc], a                                     ; $7198: $02
	dec  d                                           ; $7199: $15
	rst  $38                                         ; $719a: $ff
	ldh  [rIE], a                                    ; $719b: $e0 $ff
	db   $f4                                         ; $719d: $f4
	rst  $38                                         ; $719e: $ff
	cp   $ff                                         ; $719f: $fe $ff
	add  b                                           ; $71a1: $80
	ld   a, a                                        ; $71a2: $7f
	add  b                                           ; $71a3: $80
	xor  d                                           ; $71a4: $aa
	add  b                                           ; $71a5: $80
	dec  b                                           ; $71a6: $05
	ld   de, $fff8                                   ; $71a7: $11 $f8 $ff

jr_071_71aa:
	add  a                                           ; $71aa: $87
	rst  $38                                         ; $71ab: $ff
	ccf                                              ; $71ac: $3f
	rst  $38                                         ; $71ad: $ff
	rla                                              ; $71ae: $17
	rst  $38                                         ; $71af: $ff
	add  e                                           ; $71b0: $83
	rst  $38                                         ; $71b1: $ff
	call nc, $9fff                                   ; $71b2: $d4 $ff $9f
	sbc  [hl]                                        ; $71b5: $9e
	ld   b, [hl]                                     ; $71b6: $46
	ld   a, b                                        ; $71b7: $78
	jr   nc, jr_071_71aa                             ; $71b8: $30 $f0

	add  h                                           ; $71ba: $84
	rst  $38                                         ; $71bb: $ff
	ld   [bc], a                                     ; $71bc: $02
	ldh  a, [rIE]                                    ; $71bd: $f0 $ff
	rrca                                             ; $71bf: $0f
	add  b                                           ; $71c0: $80
	ldh  a, [$81]                                    ; $71c1: $f0 $81
	nop                                              ; $71c3: $00
	add  b                                           ; $71c4: $80
	rlca                                             ; $71c5: $07
	add  d                                           ; $71c6: $82
	rst  $38                                         ; $71c7: $ff
	ld   [bc], a                                     ; $71c8: $02
	ldh  [rIE], a                                    ; $71c9: $e0 $ff
	rra                                              ; $71cb: $1f
	add  b                                           ; $71cc: $80
	ret  nz                                          ; $71cd: $c0

	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	add  b                                           ; $71d0: $80
	ld   bc, $3e80                                   ; $71d1: $01 $80 $3e
	ld   b, $fe                                      ; $71d4: $06 $fe
	ret  nz                                          ; $71d6: $c0

	sub  [hl]                                        ; $71d7: $96
	db   $f4                                         ; $71d8: $f4
	inc  l                                           ; $71d9: $2c
	add  b                                           ; $71da: $80
	ldh  a, [$81]                                    ; $71db: $f0 $81
	nop                                              ; $71dd: $00
	add  b                                           ; $71de: $80
	rrca                                             ; $71df: $0f
	add  b                                           ; $71e0: $80
	ldh  a, [rSB]                                    ; $71e1: $f0 $01
	inc  c                                           ; $71e3: $0c
	inc  bc                                          ; $71e4: $03
	add  b                                           ; $71e5: $80
	nop                                              ; $71e6: $00
	ld   bc, $000e                                   ; $71e7: $01 $0e $00
	add  b                                           ; $71ea: $80
	ld   [bc], a                                     ; $71eb: $02
	add  b                                           ; $71ec: $80
	ld   b, $03                                      ; $71ed: $06 $03
	ld   a, b                                        ; $71ef: $78
	ld   a, [hl]                                     ; $71f0: $7e
	add  a                                           ; $71f1: $87
	add  e                                           ; $71f2: $83
	add  b                                           ; $71f3: $80
	rrca                                             ; $71f4: $0f
	ld   bc, $fc00                                   ; $71f5: $01 $00 $fc
	add  b                                           ; $71f8: $80
	ld   bc, $ce17                                   ; $71f9: $01 $17 $ce
	adc  a                                           ; $71fc: $8f
	adc  h                                           ; $71fd: $8c
	adc  a                                           ; $71fe: $8f
	adc  b                                           ; $71ff: $88
	adc  a                                           ; $7200: $8f
	sbc  b                                           ; $7201: $98
	rst  JumpTable                                         ; $7202: $df

jr_071_7203:
	sbc  b                                           ; $7203: $98
	sbc  a                                           ; $7204: $9f
	ld   sp, $233f                                   ; $7205: $31 $3f $23
	ccf                                              ; $7208: $3f
	ldh  [c], a                                      ; $7209: $e2
	rst  $38                                         ; $720a: $ff
	xor  d                                           ; $720b: $aa
	rst  $38                                         ; $720c: $ff
	rra                                              ; $720d: $1f
	rst  $38                                         ; $720e: $ff
	ccf                                              ; $720f: $3f
	rst  $38                                         ; $7210: $ff
	ld   a, a                                        ; $7211: $7f
	rst  $38                                         ; $7212: $ff
	add  b                                           ; $7213: $80
	cp   $80                                         ; $7214: $fe $80
	push af                                          ; $7216: $f5
	add  b                                           ; $7217: $80
	add  sp, -$80                                    ; $7218: $e8 $80
	ret  nc                                          ; $721a: $d0

	ld   a, [bc]                                     ; $721b: $0a
	rlca                                             ; $721c: $07
	ldh  [rAUDVOL], a                                ; $721d: $e0 $24
	db   $f4                                         ; $721f: $f4
	sbc  h                                           ; $7220: $9c
	cp   h                                           ; $7221: $bc
	ld   b, b                                        ; $7222: $40
	ld   e, h                                        ; $7223: $5c
	adc  b                                           ; $7224: $88
	adc  h                                           ; $7225: $8c
	nop                                              ; $7226: $00
	add  c                                           ; $7227: $81
	ld   [$0980], sp                                 ; $7228: $08 $80 $09
	ld   bc, $e85f                                   ; $722b: $01 $5f $e8
	add  b                                           ; $722e: $80
	ldh  [$80], a                                    ; $722f: $e0 $80
	ret  nc                                          ; $7231: $d0

	add  b                                           ; $7232: $80
	ldh  a, [$80]                                    ; $7233: $f0 $80
	db   $fc                                         ; $7235: $fc
	jr   nz, jr_071_7253                             ; $7236: $20 $1b

	ld   a, e                                        ; $7238: $7b
	inc  b                                           ; $7239: $04
	inc  a                                           ; $723a: $3c
	ld   [bc], a                                     ; $723b: $02
	ld   e, $d6                                      ; $723c: $1e $d6
	rra                                              ; $723e: $1f
	inc  e                                           ; $723f: $1c
	rra                                              ; $7240: $1f
	ld   a, $3f                                      ; $7241: $3e $3f
	rrca                                             ; $7243: $0f
	cpl                                              ; $7244: $2f
	rrca                                             ; $7245: $0f
	rra                                              ; $7246: $1f
	inc  bc                                          ; $7247: $03
	dec  bc                                          ; $7248: $0b
	call nz, $31c2                                   ; $7249: $c4 $c2 $31
	jr   nc, jr_071_7203                             ; $724c: $30 $b5

	push af                                          ; $724e: $f5
	ld   a, [de]                                     ; $724f: $1a
	ld   a, [$ff8f]                                  ; $7250: $fa $8f $ff

jr_071_7253:
	rst  ToBoot                                         ; $7253: $c7
	rst  $38                                         ; $7254: $ff
	db   $eb                                         ; $7255: $eb
	rst  $38                                         ; $7256: $ff
	db   $fc                                         ; $7257: $fc
	add  c                                           ; $7258: $81
	rst  $38                                         ; $7259: $ff
	rlca                                             ; $725a: $07
	ccf                                              ; $725b: $3f
	cp   a                                           ; $725c: $bf
	ld   h, a                                        ; $725d: $67
	rra                                              ; $725e: $1f
	add  l                                           ; $725f: $85
	add  e                                           ; $7260: $83
	ld   d, h                                        ; $7261: $54
	ld   d, l                                        ; $7262: $55
	add  b                                           ; $7263: $80
	db   $eb                                         ; $7264: $eb
	add  b                                           ; $7265: $80
	rst  $38                                         ; $7266: $ff
	rrca                                             ; $7267: $0f
	xor  e                                           ; $7268: $ab
	rst  $38                                         ; $7269: $ff
	ld   b, c                                        ; $726a: $41
	rst  $38                                         ; $726b: $ff
	add  sp, -$01                                    ; $726c: $e8 $ff
	cp   $0c                                         ; $726e: $fe $0c
	nop                                              ; $7270: $00
	inc  c                                           ; $7271: $0c
	dec  b                                           ; $7272: $05
	dec  bc                                          ; $7273: $0b
	ld   [$080b], sp                                 ; $7274: $08 $0b $08
	add  hl, bc                                      ; $7277: $09
	add  d                                           ; $7278: $82
	ld   [$0080], sp                                 ; $7279: $08 $80 $00
	dec  c                                           ; $727c: $0d
	ld   [hl], l                                     ; $727d: $75
	cp   $3e                                         ; $727e: $fe $3e
	ld   a, [hl]                                     ; $7280: $7e
	sbc  c                                           ; $7281: $99
	cp   a                                           ; $7282: $bf
	ld   c, a                                        ; $7283: $4f
	rst  JumpTable                                         ; $7284: $df
	or   a                                           ; $7285: $b7

jr_071_7286:
	rst  $38                                         ; $7286: $ff
	jr   nc, jr_071_7286                             ; $7287: $30 $fd

	ld   a, [$80ff]                                  ; $7289: $fa $ff $80
	rrca                                             ; $728c: $0f
	ld   bc, $05f7                                   ; $728d: $01 $f7 $05
	add  b                                           ; $7290: $80
	ld   a, [bc]                                     ; $7291: $0a
	add  b                                           ; $7292: $80
	dec  d                                           ; $7293: $15
	add  b                                           ; $7294: $80
	dec  hl                                          ; $7295: $2b
	inc  b                                           ; $7296: $04
	ld   b, b                                        ; $7297: $40
	ld   a, a                                        ; $7298: $7f
	nop                                              ; $7299: $00
	rst  $38                                         ; $729a: $ff
	ccf                                              ; $729b: $3f
	add  c                                           ; $729c: $81
	rst  $38                                         ; $729d: $ff
	add  b                                           ; $729e: $80
	ld   d, a                                        ; $729f: $57
	add  b                                           ; $72a0: $80
	xor  a                                           ; $72a1: $af
	dec  b                                           ; $72a2: $05
	ld   e, h                                        ; $72a3: $5c
	ld   e, a                                        ; $72a4: $5f
	nop                                              ; $72a5: $00
	rst  $38                                         ; $72a6: $ff
	ld   [bc], a                                     ; $72a7: $02
	cp   $80                                         ; $72a8: $fe $80
	db   $fc                                         ; $72aa: $fc
	add  b                                           ; $72ab: $80
	ld   hl, sp-$80                                  ; $72ac: $f8 $80
	ldh  a, [$81]                                    ; $72ae: $f0 $81
	ldh  [$0e], a                                    ; $72b0: $e0 $0e
	rst  $38                                         ; $72b2: $ff
	inc  a                                           ; $72b3: $3c
	db   $e3                                         ; $72b4: $e3
	add  $07                                         ; $72b5: $c6 $07
	add  hl, bc                                      ; $72b7: $09
	dec  bc                                          ; $72b8: $0b
	dec  d                                           ; $72b9: $15
	rla                                              ; $72ba: $17
	jr   z, jr_071_72eb                              ; $72bb: $28 $2e

	ld   d, d                                        ; $72bd: $52
	ld   e, e                                        ; $72be: $5b
	ld   bc, $80f0                                   ; $72bf: $01 $f0 $80
	nop                                              ; $72c2: $00
	ld   bc, $787b                                   ; $72c3: $01 $7b $78
	add  d                                           ; $72c6: $82
	ld   hl, sp+$0a                                  ; $72c7: $f8 $0a
	ld   e, b                                        ; $72c9: $58
	ld   l, b                                        ; $72ca: $68
	ld   a, [de]                                     ; $72cb: $1a
	ld   [hl-], a                                    ; $72cc: $32
	adc  l                                           ; $72cd: $8d
	sbc  c                                           ; $72ce: $99
	ld   c, $02                                      ; $72cf: $0e $02
	inc  a                                           ; $72d1: $3c
	ld   b, b                                        ; $72d2: $40
	add  b                                           ; $72d3: $80
	add  l                                           ; $72d4: $85
	nop                                              ; $72d5: $00
	add  b                                           ; $72d6: $80
	inc  bc                                          ; $72d7: $03
	inc  bc                                          ; $72d8: $03

jr_071_72d9:
	adc  b                                           ; $72d9: $88
	adc  [hl]                                        ; $72da: $8e
	add  hl, bc                                      ; $72db: $09
	nop                                              ; $72dc: $00
	add  b                                           ; $72dd: $80
	inc  bc                                          ; $72de: $03
	dec  l                                           ; $72df: $2d
	inc  e                                           ; $72e0: $1c
	rra                                              ; $72e1: $1f
	dec  sp                                          ; $72e2: $3b
	ccf                                              ; $72e3: $3f
	ld   a, b                                        ; $72e4: $78
	ld   a, a                                        ; $72e5: $7f
	ret  nz                                          ; $72e6: $c0

	ldh  a, [rP1]                                    ; $72e7: $f0 $00
	ret  nz                                          ; $72e9: $c0

	sbc  a                                           ; $72ea: $9f

jr_071_72eb:
	ld   a, [hl]                                     ; $72eb: $7e
	pop  hl                                          ; $72ec: $e1
	inc  bc                                          ; $72ed: $03
	db   $e4                                         ; $72ee: $e4
	ld   sp, hl                                      ; $72ef: $f9
	db   $e3                                         ; $72f0: $e3
	inc  bc                                          ; $72f1: $03
	rst  $20                                         ; $72f2: $e7
	ld   sp, hl                                      ; $72f3: $f9
	ld   l, a                                        ; $72f4: $6f
	adc  a                                           ; $72f5: $8f
	ccf                                              ; $72f6: $3f
	daa                                              ; $72f7: $27
	rst  $30                                         ; $72f8: $f7
	sbc  a                                           ; $72f9: $9f
	rst  JumpTable                                         ; $72fa: $df
	ld   l, a                                        ; $72fb: $6f
	ld   a, [hl+]                                    ; $72fc: $2a
	rst  $38                                         ; $72fd: $ff
	pop  bc                                          ; $72fe: $c1

Call_071_72ff:
	rst  $38                                         ; $72ff: $ff
	add  d                                           ; $7300: $82
	cp   $a3                                         ; $7301: $fe $a3
	rst  $38                                         ; $7303: $ff
	ldh  a, [c]                                      ; $7304: $f2
	cp   $f7                                         ; $7305: $fe $f7
	rst  $38                                         ; $7307: $ff
	rst  $20                                         ; $7308: $e7
	rst  $38                                         ; $7309: $ff
	rst  ToBoot                                         ; $730a: $c7
	rst  $38                                         ; $730b: $ff
	ld   [hl], b                                     ; $730c: $70
	and  b                                           ; $730d: $a0
	add  b                                           ; $730e: $80
	ld   b, l                                        ; $730f: $45
	add  b                                           ; $7310: $80
	adc  d                                           ; $7311: $8a
	add  b                                           ; $7312: $80
	ld   d, l                                        ; $7313: $55
	add  b                                           ; $7314: $80
	cp   d                                           ; $7315: $ba
	add  b                                           ; $7316: $80
	push af                                          ; $7317: $f5
	add  b                                           ; $7318: $80
	ld   [$d580], a                                  ; $7319: $ea $80 $d5
	nop                                              ; $731c: $00
	inc  c                                           ; $731d: $0c
	add  c                                           ; $731e: $81
	dec  bc                                          ; $731f: $0b
	ld   bc, $8b83                                   ; $7320: $01 $83 $8b
	add  b                                           ; $7323: $80
	dec  bc                                          ; $7324: $0b
	ld   bc, $8b88                                   ; $7325: $01 $88 $8b
	add  b                                           ; $7328: $80
	inc  de                                          ; $7329: $13
	add  b                                           ; $732a: $80
	sub  e                                           ; $732b: $93
	inc  de                                          ; $732c: $13
	nop                                              ; $732d: $00
	inc  de                                          ; $732e: $13
	ld   [$000f], a                                  ; $732f: $ea $0f $00
	rlca                                             ; $7332: $07
	jr   nz, @+$25                                   ; $7333: $20 $23

	jr   nc, jr_071_7368                             ; $7335: $30 $31

	db   $10                                         ; $7337: $10
	jr   jr_071_733c                                 ; $7338: $18 $02

	ld   c, $24                                      ; $733a: $0e $24

jr_071_733c:
	inc  hl                                          ; $733c: $23
	ld   [hl-], a                                    ; $733d: $32
	ld   sp, $0cf3                                   ; $733e: $31 $f3 $0c
	add  b                                           ; $7341: $80
	add  e                                           ; $7342: $83
	inc  de                                          ; $7343: $13
	ld   b, b                                        ; $7344: $40
	ret  nz                                          ; $7345: $c0

	db   $10                                         ; $7346: $10
	ldh  a, [rSC]                                    ; $7347: $f0 $02
	db   $fd                                         ; $7349: $fd
	ld   b, d                                        ; $734a: $42
	ld   a, $0e                                      ; $734b: $3e $0e
	ld   e, $4c                                      ; $734d: $1e $4c
	ret  nz                                          ; $734f: $c0

	ld   c, a                                        ; $7350: $4f
	cpl                                              ; $7351: $2f
	sub  e                                           ; $7352: $93
	adc  e                                           ; $7353: $8b
	ld   h, h                                        ; $7354: $64
	ld   h, d                                        ; $7355: $62
	add  hl, de                                      ; $7356: $19
	jr   jr_071_72d9                                 ; $7357: $18 $80

	add  [hl]                                        ; $7359: $86
	inc  bc                                          ; $735a: $03
	ld   b, c                                        ; $735b: $41
	pop  bc                                          ; $735c: $c1
	nop                                              ; $735d: $00
	ld   b, b                                        ; $735e: $40
	add  b                                           ; $735f: $80
	ld   h, b                                        ; $7360: $60
	ld   [bc], a                                     ; $7361: $02
	pop  bc                                          ; $7362: $c1
	rst  $38                                         ; $7363: $ff
	cp   $81                                         ; $7364: $fe $81
	rst  $38                                         ; $7366: $ff
	ld   a, [bc]                                     ; $7367: $0a

jr_071_7368:
	ccf                                              ; $7368: $3f
	cp   a                                           ; $7369: $bf
	ld   c, a                                        ; $736a: $4f
	cpl                                              ; $736b: $2f
	sub  e                                           ; $736c: $93
	adc  e                                           ; $736d: $8b
	inc  b                                           ; $736e: $04
	ld   h, e                                        ; $736f: $63
	ld   h, b                                        ; $7370: $60
	jr   jr_071_738a                                 ; $7371: $18 $17

	add  e                                           ; $7373: $83
	nop                                              ; $7374: $00
	add  b                                           ; $7375: $80
	inc  b                                           ; $7376: $04
	add  b                                           ; $7377: $80
	ld   b, $80                                      ; $7378: $06 $80
	ld   [bc], a                                     ; $737a: $02
	add  b                                           ; $737b: $80
	ld   bc, $0080                                   ; $737c: $01 $80 $00
	ld   bc, $7f8e                                   ; $737f: $01 $8e $7f
	add  b                                           ; $7382: $80
	cpl                                              ; $7383: $2f
	add  [hl]                                        ; $7384: $86
	rrca                                             ; $7385: $0f
	ld   bc, $0f0e                                   ; $7386: $01 $0e $0f
	add  b                                           ; $7389: $80

jr_071_738a:
	add  a                                           ; $738a: $87
	dec  c                                           ; $738b: $0d
	nop                                              ; $738c: $00
	rst  $38                                         ; $738d: $ff
	db   $fc                                         ; $738e: $fc
	rst  $38                                         ; $738f: $ff
	ldh  [$df], a                                    ; $7390: $e0 $df
	jp   $8ecf                                       ; $7392: $c3 $cf $8e


	adc  $c4                                         ; $7395: $ce $c4
	call z, $8808                                    ; $7397: $cc $08 $88
	add  b                                           ; $739a: $80
	ret  z                                           ; $739b: $c8

	ld   b, $32                                      ; $739c: $06 $32
	cp   $71                                         ; $739e: $fe $71
	rst  ToBoot                                         ; $73a0: $c7
	inc  bc                                          ; $73a1: $03
	add  e                                           ; $73a2: $83
	nop                                              ; $73a3: $00

jr_071_73a4:
	add  c                                           ; $73a4: $81
	inc  bc                                          ; $73a5: $03
	add  b                                           ; $73a6: $80
	ld   bc, $0907                                   ; $73a7: $01 $07 $09
	dec  bc                                          ; $73aa: $0b
	cp   $fd                                         ; $73ab: $fe $fd
	xor  h                                           ; $73ad: $ac
	or   e                                           ; $73ae: $b3
	ld   b, b                                        ; $73af: $40
	ld   h, b                                        ; $73b0: $60
	add  b                                           ; $73b1: $80
	ldh  [$2f], a                                    ; $73b2: $e0 $2f
	ld   b, b                                        ; $73b4: $40
	ret  nz                                          ; $73b5: $c0

	inc  c                                           ; $73b6: $0c
	cp   h                                           ; $73b7: $bc
	ld   c, $02                                      ; $73b8: $0e $02

jr_071_73ba:
	set  1, a                                        ; $73ba: $cb $cf

jr_071_73bc:
	ld   l, l                                        ; $73bc: $6d
	halt                                             ; $73bd: $76
	cp   b                                           ; $73be: $b8
	call c, $ef2b                                    ; $73bf: $dc $2b $ef
	inc  sp                                          ; $73c2: $33
	ld   d, b                                        ; $73c3: $50
	rra                                              ; $73c4: $1f
	jr   nz, jr_071_73da                             ; $73c5: $20 $13

	rrca                                             ; $73c7: $0f
	inc  bc                                          ; $73c8: $03
	nop                                              ; $73c9: $00
	jr   nc, jr_071_73bc                             ; $73ca: $30 $f0

	rlca                                             ; $73cc: $07
	ccf                                              ; $73cd: $3f
	ld   [hl], l                                     ; $73ce: $75
	ld   [hl], e                                     ; $73cf: $73
	nop                                              ; $73d0: $00
	rrca                                             ; $73d1: $0f
	ld   e, $f0                                      ; $73d2: $1e $f0
	db   $e3                                         ; $73d4: $e3
	inc  c                                           ; $73d5: $0c
	sub  b                                           ; $73d6: $90
	ldh  [$87], a                                    ; $73d7: $e0 $87
	rlca                                             ; $73d9: $07

jr_071_73da:
	jr   c, jr_071_741b                              ; $73da: $38 $3f

	add  a                                           ; $73dc: $87
	rst  $38                                         ; $73dd: $ff
	add  b                                           ; $73de: $80
	pop  hl                                          ; $73df: $e1
	ldh  [c], a                                      ; $73e0: $e2
	inc  c                                           ; $73e1: $0c
	jr   nc, jr_071_73a4                             ; $73e2: $30 $c0

	add  b                                           ; $73e4: $80
	ld   b, $05                                      ; $73e5: $06 $05
	jr   nc, jr_071_7426                             ; $73e7: $30 $3d

	adc  l                                           ; $73e9: $8d
	ei                                               ; $73ea: $fb
	ld   [hl], c                                     ; $73eb: $71
	push af                                          ; $73ec: $f5
	add  b                                           ; $73ed: $80
	jp   hl                                          ; $73ee: $e9


	ld   bc, $9768                                   ; $73ef: $01 $68 $97
	add  b                                           ; $73f2: $80
	dec  bc                                          ; $73f3: $0b
	add  b                                           ; $73f4: $80
	inc  bc                                          ; $73f5: $03
	rlca                                             ; $73f6: $07
	dec  c                                           ; $73f7: $0d
	ld   c, $2c                                      ; $73f8: $0e $2c
	or   b                                           ; $73fa: $b0
	daa                                              ; $73fb: $27
	rst  ToBoot                                         ; $73fc: $c7
	ld   a, [bc]                                     ; $73fd: $0a
	adc  d                                           ; $73fe: $8a
	add  b                                           ; $73ff: $80

Call_071_7400:
	dec  [hl]                                        ; $7400: $35
	ld   b, $17                                      ; $7401: $06 $17
	rst  $38                                         ; $7403: $ff
	jp   $d5ff                                       ; $7404: $c3 $ff $d5


	rst  $38                                         ; $7407: $ff
	cp   $80                                         ; $7408: $fe $80
	ld   bc, $0000                                   ; $740a: $01 $00 $00
	add  b                                           ; $740d: $80
	ld   hl, sp-$80                                  ; $740e: $f8 $80
	xor  a                                           ; $7410: $af
	add  b                                           ; $7411: $80
	ld   d, b                                        ; $7412: $50
	add  b                                           ; $7413: $80
	xor  [hl]                                        ; $7414: $ae
	add  b                                           ; $7415: $80
	ld   e, h                                        ; $7416: $5c
	add  b                                           ; $7417: $80
	cp   $0b                                         ; $7418: $fe $0b
	dec  a                                           ; $741a: $3d

jr_071_741b:
	db   $fd                                         ; $741b: $fd
	rst  ToBoot                                         ; $741c: $c7
	ccf                                              ; $741d: $3f
	inc  sp                                          ; $741e: $33
	rrca                                             ; $741f: $0f
	nop                                              ; $7420: $00
	rlca                                             ; $7421: $07
	jp   $29c0                                       ; $7422: $c3 $c0 $29


	dec  [hl]                                        ; $7425: $35

jr_071_7426:
	add  b                                           ; $7426: $80
	ld   d, a                                        ; $7427: $57
	dec  c                                           ; $7428: $0d
	di                                               ; $7429: $f3
	ldh  a, [$c2]                                    ; $742a: $f0 $c2
	ldh  [c], a                                      ; $742c: $e2
	push hl                                          ; $742d: $e5
	db   $ed                                         ; $742e: $ed
	and  [hl]                                        ; $742f: $a6
	ld   [$e563], a                                  ; $7430: $ea $63 $e5
	ld   hl, $e9e2                                   ; $7433: $21 $e2 $e9
	jr   c, jr_071_73ba                              ; $7436: $38 $82

	ld   a, [hl-]                                    ; $7438: $3a
	add  d                                           ; $7439: $82
	cp   d                                           ; $743a: $ba
	add  b                                           ; $743b: $80
	add  hl, hl                                      ; $743c: $29
	dec  bc                                          ; $743d: $0b
	jr   z, jr_071_7469                              ; $743e: $28 $29

	ret                                              ; $7440: $c9


	jp   hl                                          ; $7441: $e9


	and  c                                           ; $7442: $a1
	ldh  a, [rSTAT]                                  ; $7443: $f0 $41
	ld   a, $19                                      ; $7445: $3e $19
	rlca                                             ; $7447: $07
	ld   bc, $8000                                   ; $7448: $01 $00 $80
	ret  nz                                          ; $744b: $c0

	inc  bc                                          ; $744c: $03
	rra                                              ; $744d: $1f
	rst  $38                                         ; $744e: $ff
	ldh  [c], a                                      ; $744f: $e2
	db   $fd                                         ; $7450: $fd
	add  b                                           ; $7451: $80
	rst  $30                                         ; $7452: $f7
	dec  c                                           ; $7453: $0d
	ret  nz                                          ; $7454: $c0

	inc  a                                           ; $7455: $3c
	db   $e4                                         ; $7456: $e4
	ld   a, [de]                                     ; $7457: $1a
	cp   $fa                                         ; $7458: $fe $fa
	ei                                               ; $745a: $fb
	inc  bc                                          ; $745b: $03
	ld   [bc], a                                     ; $745c: $02
	rlca                                             ; $745d: $07
	db   $fd                                         ; $745e: $fd
	rst  $30                                         ; $745f: $f7
	ld   d, e                                        ; $7460: $53
	and  e                                           ; $7461: $a3
	add  b                                           ; $7462: $80
	ld   b, e                                        ; $7463: $43
	dec  c                                           ; $7464: $0d
	ld   [$200f], sp                                 ; $7465: $08 $0f $20
	ccf                                              ; $7468: $3f

jr_071_7469:
	sbc  d                                           ; $7469: $9a
	rst  $38                                         ; $746a: $ff
	inc  bc                                          ; $746b: $03
	ldh  [rDMA], a                                   ; $746c: $e0 $46
	and  $ca                                         ; $746e: $e6 $ca
	adc  $80                                         ; $7470: $ce $80
	call z, $dc80                                    ; $7472: $cc $80 $dc
	ld   b, e                                        ; $7475: $43
	ld   [bc], a                                     ; $7476: $02
	add  a                                           ; $7477: $87
	nop                                              ; $7478: $00
	add  b                                           ; $7479: $80
	rrca                                             ; $747a: $0f
	add  b                                           ; $747b: $80
	nop                                              ; $747c: $00
	add  b                                           ; $747d: $80
	rrca                                             ; $747e: $0f
	adc  b                                           ; $747f: $88
	nop                                              ; $7480: $00
	add  b                                           ; $7481: $80
	rst  $38                                         ; $7482: $ff
	add  b                                           ; $7483: $80
	ld   a, a                                        ; $7484: $7f
	add  b                                           ; $7485: $80
	add  e                                           ; $7486: $83
	add  b                                           ; $7487: $80
	ld   a, h                                        ; $7488: $7c
	add  l                                           ; $7489: $85
	nop                                              ; $748a: $00
	ld   [bc], a                                     ; $748b: $02
	ld   bc, $feff                                   ; $748c: $01 $ff $fe
	add  d                                           ; $748f: $82
	rst  $38                                         ; $7490: $ff
	add  b                                           ; $7491: $80
	rrca                                             ; $7492: $0f
	add  l                                           ; $7493: $85
	nop                                              ; $7494: $00
	add  b                                           ; $7495: $80
	rst  $38                                         ; $7496: $ff
	ld   [bc], a                                     ; $7497: $02
	rrca                                             ; $7498: $0f
	rst  $38                                         ; $7499: $ff
	ldh  a, [$82]                                    ; $749a: $f0 $82
	rst  $38                                         ; $749c: $ff
	add  l                                           ; $749d: $85
	nop                                              ; $749e: $00
	add  h                                           ; $749f: $84
	rst  $38                                         ; $74a0: $ff
	ld   [bc], a                                     ; $74a1: $02
	dec  b                                           ; $74a2: $05
	db   $fd                                         ; $74a3: $fd
	ld   hl, sp-$7b                                  ; $74a4: $f8 $85
	nop                                              ; $74a6: $00
	add  h                                           ; $74a7: $84
	rst  $38                                         ; $74a8: $ff
	add  b                                           ; $74a9: $80
	ld   d, l                                        ; $74aa: $55
	add  [hl]                                        ; $74ab: $86
	nop                                              ; $74ac: $00
	add  h                                           ; $74ad: $84
	rst  $38                                         ; $74ae: $ff
	add  b                                           ; $74af: $80
	ld   d, l                                        ; $74b0: $55
	add  [hl]                                        ; $74b1: $86
	nop                                              ; $74b2: $00
	add  d                                           ; $74b3: $82
	rst  $38                                         ; $74b4: $ff
	inc  b                                           ; $74b5: $04
	cp   $ff                                         ; $74b6: $fe $ff
	ld   d, c                                        ; $74b8: $51
	ld   e, a                                        ; $74b9: $5f
	rrca                                             ; $74ba: $0f
	add  l                                           ; $74bb: $85
	nop                                              ; $74bc: $00
	dec  b                                           ; $74bd: $05
	cp   $ff                                         ; $74be: $fe $ff
	pop  hl                                          ; $74c0: $e1
	rst  $38                                         ; $74c1: $ff
	rra                                              ; $74c2: $1f
	rst  $38                                         ; $74c3: $ff
	add  b                                           ; $74c4: $80
	db   $fc                                         ; $74c5: $fc
	nop                                              ; $74c6: $00
	rst  $38                                         ; $74c7: $ff
	add  l                                           ; $74c8: $85
	nop                                              ; $74c9: $00
	add  b                                           ; $74ca: $80
	rra                                              ; $74cb: $1f
	add  d                                           ; $74cc: $82
	rlca                                             ; $74cd: $07
	ld   [bc], a                                     ; $74ce: $02

Jump_071_74cf:
	dec  b                                           ; $74cf: $05
	push hl                                          ; $74d0: $e5
	ldh  [$85], a                                    ; $74d1: $e0 $85
	nop                                              ; $74d3: $00
	add  h                                           ; $74d4: $84
	rst  $38                                         ; $74d5: $ff
	add  b                                           ; $74d6: $80
	ld   d, l                                        ; $74d7: $55
	add  [hl]                                        ; $74d8: $86
	nop                                              ; $74d9: $00
	add  h                                           ; $74da: $84
	rst  $38                                         ; $74db: $ff
	add  b                                           ; $74dc: $80
	ld   d, l                                        ; $74dd: $55
	add  [hl]                                        ; $74de: $86
	nop                                              ; $74df: $00
	ld   bc, $feff                                   ; $74e0: $01 $ff $fe
	add  d                                           ; $74e3: $82
	rst  $38                                         ; $74e4: $ff
	add  b                                           ; $74e5: $80
	ld   d, l                                        ; $74e6: $55
	nop                                              ; $74e7: $00
	ld   bc, $0085                                   ; $74e8: $01 $85 $00
	dec  b                                           ; $74eb: $05
	adc  a                                           ; $74ec: $8f
	ld   a, a                                        ; $74ed: $7f
	call z, $fdcf                                    ; $74ee: $cc $cf $fd
	cp   $80                                         ; $74f1: $fe $80
	dec  sp                                          ; $74f3: $3b
	nop                                              ; $74f4: $00
	ldh  a, [$85]                                    ; $74f5: $f0 $85
	nop                                              ; $74f7: $00
	ld   [$fffc], sp                                 ; $74f8: $08 $fc $ff
	ld   d, a                                        ; $74fb: $57
	ld   e, a                                        ; $74fc: $5f

jr_071_74fd:
	add  e                                           ; $74fd: $83
	db   $eb                                         ; $74fe: $eb
	scf                                              ; $74ff: $37
	ld   d, a                                        ; $7500: $57
	inc  bc                                          ; $7501: $03
	add  l                                           ; $7502: $85
	nop                                              ; $7503: $00
	add  b                                           ; $7504: $80
	rst  $38                                         ; $7505: $ff
	rlca                                             ; $7506: $07
	ei                                               ; $7507: $fb
	rst  $38                                         ; $7508: $ff
	ld   hl, sp-$01                                  ; $7509: $f8 $ff
	ret  nz                                          ; $750b: $c0

	db   $fc                                         ; $750c: $fc
	ld   sp, $8001                                   ; $750d: $31 $01 $80
	dec  c                                           ; $7510: $0d
	nop                                              ; $7511: $00
	inc  c                                           ; $7512: $0c
	add  d                                           ; $7513: $82
	ld   bc, $0d80                                   ; $7514: $01 $80 $0d
	add  c                                           ; $7517: $81
	ld   bc, $0d08                                   ; $7518: $01 $08 $0d
	rrca                                             ; $751b: $0f
	nop                                              ; $751c: $00
	add  e                                           ; $751d: $83
	rst  $38                                         ; $751e: $ff
	add  b                                           ; $751f: $80
	ld   a, b                                        ; $7520: $78
	cp   e                                           ; $7521: $bb
	cp   b                                           ; $7522: $b8
	add  d                                           ; $7523: $82
	add  e                                           ; $7524: $83
	add  b                                           ; $7525: $80
	ei                                               ; $7526: $fb
	add  c                                           ; $7527: $81
	add  e                                           ; $7528: $83
	nop                                              ; $7529: $00
	inc  b                                           ; $752a: $04
	add  b                                           ; $752b: $80
	ldh  a, [$80]                                    ; $752c: $f0 $80
	rrca                                             ; $752e: $0f
	dec  b                                           ; $752f: $05
	ldh  a, [$08]                                    ; $7530: $f0 $08
	rlca                                             ; $7532: $07
	ldh  a, [rTMA]                                   ; $7533: $f0 $06
	rlca                                             ; $7535: $07
	add  b                                           ; $7536: $80
	ld   b, $80                                      ; $7537: $06 $80
	or   $01                                         ; $7539: $f6 $01
	rlca                                             ; $753b: $07
	add  hl, bc                                      ; $753c: $09
	add  b                                           ; $753d: $80
	ld   a, a                                        ; $753e: $7f
	add  b                                           ; $753f: $80
	add  c                                           ; $7540: $81
	add  b                                           ; $7541: $80
	ld   a, [hl]                                     ; $7542: $7e
	dec  b                                           ; $7543: $05
	add  c                                           ; $7544: $81
	ld   [hl], c                                     ; $7545: $71
	ld   c, $e5                                      ; $7546: $0e $e5
	inc  c                                           ; $7548: $0c
	dec  bc                                          ; $7549: $0b
	add  b                                           ; $754a: $80
	inc  c                                           ; $754b: $0c
	ld   bc, $f0ec                                   ; $754c: $01 $ec $f0
	add  d                                           ; $754f: $82
	rst  $38                                         ; $7550: $ff
	add  b                                           ; $7551: $80
	rrca                                             ; $7552: $0f
	add  b                                           ; $7553: $80
	ldh  a, [$09]                                    ; $7554: $f0 $09
	rrca                                             ; $7556: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7557: $cf
	jr   nc, @-$5f                                   ; $7558: $30 $9f

	jr   nc, jr_071_758a                             ; $755a: $30 $2e

	jr   nc, jr_071_75a9                             ; $755c: $30 $4b

	jp   z, $80c0                                    ; $755e: $ca $c0 $80

	cp   $80                                         ; $7561: $fe $80
	rst  $38                                         ; $7563: $ff
	add  b                                           ; $7564: $80
	ccf                                              ; $7565: $3f
	add  b                                           ; $7566: $80
	pop  bc                                          ; $7567: $c1
	add  b                                           ; $7568: $80
	ld   a, $04                                      ; $7569: $3e $04
	ret  nz                                          ; $756b: $c0

	jr   nc, jr_071_74fd                             ; $756c: $30 $8f

	push de                                          ; $756e: $d5
	xor  d                                           ; $756f: $aa
	add  c                                           ; $7570: $81
	nop                                              ; $7571: $00
	add  b                                           ; $7572: $80
	ldh  a, [$82]                                    ; $7573: $f0 $82
	rst  $38                                         ; $7575: $ff
	add  b                                           ; $7576: $80
	rlca                                             ; $7577: $07
	add  b                                           ; $7578: $80
	ld   hl, sp+$02                                  ; $7579: $f8 $02
	inc  bc                                          ; $757b: $03
	and  e                                           ; $757c: $a3
	xor  a                                           ; $757d: $af
	add  b                                           ; $757e: $80
	nop                                              ; $757f: $00
	add  c                                           ; $7580: $81
	add  hl, bc                                      ; $7581: $09
	inc  bc                                          ; $7582: $03
	adc  c                                           ; $7583: $89
	adc  h                                           ; $7584: $8c
	rst  $38                                         ; $7585: $ff
	db   $fc                                         ; $7586: $fc
	add  b                                           ; $7587: $80
	rst  $38                                         ; $7588: $ff
	add  b                                           ; $7589: $80

jr_071_758a:
	ccf                                              ; $758a: $3f
	ld   [bc], a                                     ; $758b: $02
	ret  nz                                          ; $758c: $c0

	ccf                                              ; $758d: $3f
	nop                                              ; $758e: $00
	add  c                                           ; $758f: $81
	inc  h                                           ; $7590: $24
	ld   b, $27                                      ; $7591: $06 $27
	nop                                              ; $7593: $00
	ld   a, a                                        ; $7594: $7f
	inc  b                                           ; $7595: $04
	ld   hl, sp+$07                                  ; $7596: $f8 $07
	add  a                                           ; $7598: $87
	add  b                                           ; $7599: $80
	ld   sp, hl                                      ; $759a: $f9
	add  b                                           ; $759b: $80
	rst  $38                                         ; $759c: $ff
	ld   de, $f89f                                   ; $759d: $11 $9f $f8
	ret  nz                                          ; $75a0: $c0

	ld   hl, sp+$20                                  ; $75a1: $f8 $20
	adc  b                                           ; $75a3: $88
	ld   a, b                                        ; $75a4: $78
	ldh  a, [rAUD3HIGH]                              ; $75a5: $f0 $1e
	ld   a, [hl]                                     ; $75a7: $7e
	nop                                              ; $75a8: $00

jr_071_75a9:
	ld   a, h                                        ; $75a9: $7c
	ldh  [$fc], a                                    ; $75aa: $e0 $fc
	call z, $1afc                                    ; $75ac: $cc $fc $1a
	xor  d                                           ; $75af: $aa
	adc  h                                           ; $75b0: $8c
	nop                                              ; $75b1: $00
	add  b                                           ; $75b2: $80
	xor  d                                           ; $75b3: $aa
	adc  h                                           ; $75b4: $8c
	nop                                              ; $75b5: $00
	ld   bc, $abaa                                   ; $75b6: $01 $aa $ab
	add  b                                           ; $75b9: $80
	nop                                              ; $75ba: $00
	add  h                                           ; $75bb: $84
	ld   bc, $0080                                   ; $75bc: $01 $80 $00
	add  d                                           ; $75bf: $82
	ld   bc, $0503                                   ; $75c0: $01 $03 $05
	push af                                          ; $75c3: $f5
	ld   a, e                                        ; $75c4: $7b
	ld   a, d                                        ; $75c5: $7a
	add  b                                           ; $75c6: $80
	db   $f4                                         ; $75c7: $f4
	add  b                                           ; $75c8: $80
	ret  nz                                          ; $75c9: $c0

	add  b                                           ; $75ca: $80
	ldh  a, [rSB]                                    ; $75cb: $f0 $01
	ldh  [$e7], a                                    ; $75cd: $e0 $e7
	add  b                                           ; $75cf: $80
	rst  $30                                         ; $75d0: $f7
	add  b                                           ; $75d1: $80
	sub  b                                           ; $75d2: $90
	nop                                              ; $75d3: $00
	rst  $30                                         ; $75d4: $f7
	add  b                                           ; $75d5: $80
	scf                                              ; $75d6: $37
	add  b                                           ; $75d7: $80
	inc  bc                                          ; $75d8: $03
	add  b                                           ; $75d9: $80
	rrca                                             ; $75da: $0f
	add  b                                           ; $75db: $80
	inc  sp                                          ; $75dc: $33
	add  b                                           ; $75dd: $80
	rrca                                             ; $75de: $0f
	nop                                              ; $75df: $00
	rst  $38                                         ; $75e0: $ff
	add  b                                           ; $75e1: $80
	ret  nz                                          ; $75e2: $c0

	add  b                                           ; $75e3: $80
	ccf                                              ; $75e4: $3f
	inc  bc                                          ; $75e5: $03
	ld   bc, $d5c1                                   ; $75e6: $01 $c1 $d5
	push af                                          ; $75e9: $f5
	add  b                                           ; $75ea: $80
	db   $f4                                         ; $75eb: $f4
	add  b                                           ; $75ec: $80
	pop  hl                                          ; $75ed: $e1
	ld   bc, $ff1f                                   ; $75ee: $01 $1f $ff
	add  b                                           ; $75f1: $80
	ret  nz                                          ; $75f2: $c0

	add  b                                           ; $75f3: $80
	ccf                                              ; $75f4: $3f
	add  b                                           ; $75f5: $80
	rst  $38                                         ; $75f6: $ff
	nop                                              ; $75f7: $00
	push af                                          ; $75f8: $f5
	add  c                                           ; $75f9: $81
	rrca                                             ; $75fa: $0f
	inc  b                                           ; $75fb: $04
	rlca                                             ; $75fc: $07
	rrca                                             ; $75fd: $0f
	dec  b                                           ; $75fe: $05
	rrca                                             ; $75ff: $0f
	ld   [$0f82], sp                                 ; $7600: $08 $82 $0f
	dec  b                                           ; $7603: $05
	rlca                                             ; $7604: $07
	rrca                                             ; $7605: $0f
	inc  bc                                          ; $7606: $03
	add  h                                           ; $7607: $84
	add  b                                           ; $7608: $80
	xor  d                                           ; $7609: $aa
	add  c                                           ; $760a: $81
	rst  $38                                         ; $760b: $ff
	inc  b                                           ; $760c: $04
	ld   d, l                                        ; $760d: $55
	rst  $38                                         ; $760e: $ff
	ld   bc, $feff                                   ; $760f: $01 $ff $fe
	add  b                                           ; $7612: $80
	rst  $38                                         ; $7613: $ff
	rlca                                             ; $7614: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7615: $cf
	sbc  a                                           ; $7616: $9f
	rst  $20                                         ; $7617: $e7
	ld   b, [hl]                                     ; $7618: $46
	ld   b, $08                                      ; $7619: $06 $08
	nop                                              ; $761b: $00
	xor  d                                           ; $761c: $aa
	add  b                                           ; $761d: $80
	cp   $03                                         ; $761e: $fe $03
	rst  $38                                         ; $7620: $ff
	ld   d, l                                        ; $7621: $55
	rst  $38                                         ; $7622: $ff
	nop                                              ; $7623: $00
	add  d                                           ; $7624: $82
	rst  $38                                         ; $7625: $ff
	ld   bc, $df3c                                   ; $7626: $01 $3c $df
	add  b                                           ; $7629: $80
	rrca                                             ; $762a: $0f
	add  hl, bc                                      ; $762b: $09
	inc  c                                           ; $762c: $0c
	stop                                             ; $762d: $10 $00
	xor  b                                           ; $762f: $a8
	db   $fc                                         ; $7630: $fc
	cp   $ff                                         ; $7631: $fe $ff
	ld   d, l                                        ; $7633: $55
	rst  $38                                         ; $7634: $ff
	nop                                              ; $7635: $00
	add  c                                           ; $7636: $81
	rst  $38                                         ; $7637: $ff
	nop                                              ; $7638: $00
	ld   [hl], c                                     ; $7639: $71
	add  b                                           ; $763a: $80
	or   b                                           ; $763b: $b0
	add  b                                           ; $763c: $80
	ld   a, $0d                                      ; $763d: $3e $0d
	jr   nc, jr_071_7681                             ; $763f: $30 $40

	nop                                              ; $7641: $00
	xor  c                                           ; $7642: $a9
	db   $fc                                         ; $7643: $fc
	ld   a, [hl]                                     ; $7644: $7e
	rst  $38                                         ; $7645: $ff
	ld   d, l                                        ; $7646: $55
	rst  $38                                         ; $7647: $ff
	sbc  b                                           ; $7648: $98
	rst  $30                                         ; $7649: $f7
	adc  l                                           ; $764a: $8d
	adc  h                                           ; $764b: $8c
	adc  l                                           ; $764c: $8d
	add  b                                           ; $764d: $80
	adc  h                                           ; $764e: $8c
	add  b                                           ; $764f: $80
	rst  $28                                         ; $7650: $ef
	dec  c                                           ; $7651: $0d
	adc  h                                           ; $7652: $8c
	stop                                             ; $7653: $10 $00
	xor  d                                           ; $7655: $aa
	cp   $5e                                         ; $7656: $fe $5e
	rst  $38                                         ; $7658: $ff
	dec  d                                           ; $7659: $15
	rst  $38                                         ; $765a: $ff
	add  e                                           ; $765b: $83
	ld   h, b                                        ; $765c: $60
	inc  e                                           ; $765d: $1c
	ld   h, a                                        ; $765e: $67
	ld   h, b                                        ; $765f: $60
	add  b                                           ; $7660: $80
	ld   h, e                                        ; $7661: $63
	add  b                                           ; $7662: $80
	ld   a, e                                        ; $7663: $7b
	dec  c                                           ; $7664: $0d
	ld   h, e                                        ; $7665: $63
	add  a                                           ; $7666: $87
	inc  bc                                          ; $7667: $03
	xor  b                                           ; $7668: $a8
	db   $fc                                         ; $7669: $fc
	ld   e, [hl]                                     ; $766a: $5e
	rst  $38                                         ; $766b: $ff
	push de                                          ; $766c: $d5
	ccf                                              ; $766d: $3f
	rst  $38                                         ; $766e: $ff
	nop                                              ; $766f: $00
	add  $19                                         ; $7670: $c6 $19
	inc  b                                           ; $7672: $04
	add  b                                           ; $7673: $80
	add  hl, de                                      ; $7674: $19
	add  b                                           ; $7675: $80
	db   $dd                                         ; $7676: $dd
	dec  b                                           ; $7677: $05
	add  hl, de                                      ; $7678: $19
	ld   hl, $aa01                                   ; $7679: $21 $01 $aa
	db   $fc                                         ; $767c: $fc
	ld   d, h                                        ; $767d: $54
	add  b                                           ; $767e: $80
	rrca                                             ; $767f: $0f
	dec  b                                           ; $7680: $05

jr_071_7681:
	nop                                              ; $7681: $00
	ld   b, b                                        ; $7682: $40
	add  b                                           ; $7683: $80
	ld   a, a                                        ; $7684: $7f
	add  b                                           ; $7685: $80
	add  a                                           ; $7686: $87
	add  b                                           ; $7687: $80
	sub  a                                           ; $7688: $97
	dec  b                                           ; $7689: $05
	rst  $10                                         ; $768a: $d7
	ret  nc                                          ; $768b: $d0

	sub  b                                           ; $768c: $90
	inc  l                                           ; $768d: $2c
	nop                                              ; $768e: $00
	ld   a, h                                        ; $768f: $7c
	add  e                                           ; $7690: $83
	db   $fc                                         ; $7691: $fc
	inc  bc                                          ; $7692: $03
	jp   sRandomSeed                                       ; $7693: $c3 $ff $bf


	rst  $38                                         ; $7696: $ff
	add  b                                           ; $7697: $80
	db   $fc                                         ; $7698: $fc
	add  b                                           ; $7699: $80
	inc  bc                                          ; $769a: $03
	add  b                                           ; $769b: $80
	db   $eb                                         ; $769c: $eb
	ld   [bc], a                                     ; $769d: $02
	rst  $38                                         ; $769e: $ff
	nop                                              ; $769f: $00
	ldh  a, [$80]                                    ; $76a0: $f0 $80
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	rrca                                             ; $76a4: $0f
	add  b                                           ; $76a5: $80
	rst  $38                                         ; $76a6: $ff
	ld   [$ebe7], sp                                 ; $76a7: $08 $e7 $eb
	add  hl, bc                                      ; $76aa: $09
	ld   b, $89                                      ; $76ab: $06 $89
	adc  e                                           ; $76ad: $8b
	inc  b                                           ; $76ae: $04
	dec  b                                           ; $76af: $05
	rst  $38                                         ; $76b0: $ff
	add  b                                           ; $76b1: $80
	nop                                              ; $76b2: $00
	add  b                                           ; $76b3: $80
	inc  bc                                          ; $76b4: $03
	add  c                                           ; $76b5: $81
	rst  $38                                         ; $76b6: $ff
	add  b                                           ; $76b7: $80
	cp   $80                                         ; $76b8: $fe $80
	nop                                              ; $76ba: $00
	ld   [$fa7a], sp                                 ; $76bb: $08 $7a $fa
	ld   a, [hl-]                                    ; $76be: $3a
	ld   a, [$01bf]                                  ; $76bf: $fa $bf $01
	rrca                                             ; $76c2: $0f
	rst  $38                                         ; $76c3: $ff
	cp   $81                                         ; $76c4: $fe $81
	rst  $38                                         ; $76c6: $ff
	ld   bc, $0f00                                   ; $76c7: $01 $00 $0f
	add  b                                           ; $76ca: $80
	rst  $38                                         ; $76cb: $ff
	nop                                              ; $76cc: $00
	ret  nz                                          ; $76cd: $c0

	add  c                                           ; $76ce: $81
	rst  $38                                         ; $76cf: $ff
	nop                                              ; $76d0: $00
	ret  nz                                          ; $76d1: $c0

	add  c                                           ; $76d2: $81
	pop  af                                          ; $76d3: $f1
	ld   bc, $f101                                   ; $76d4: $01 $01 $f1
	add  b                                           ; $76d7: $80
	cp   $11                                         ; $76d8: $fe $11
	ld   a, [hl]                                     ; $76da: $7e
	db   $fc                                         ; $76db: $fc
	add  b                                           ; $76dc: $80
	db   $fc                                         ; $76dd: $fc
	ld   a, e                                        ; $76de: $7b
	rst  $38                                         ; $76df: $ff
	sbc  a                                           ; $76e0: $9f
	rst  $38                                         ; $76e1: $ff
	dec  de                                          ; $76e2: $1b
	rst  $38                                         ; $76e3: $ff
	db   $eb                                         ; $76e4: $eb
	db   $fd                                         ; $76e5: $fd
	sub  e                                           ; $76e6: $93
	sub  a                                           ; $76e7: $97
	ld   [de], a                                     ; $76e8: $12
	dec  b                                           ; $76e9: $05
	inc  c                                           ; $76ea: $0c
	add  hl, bc                                      ; $76eb: $09
	add  b                                           ; $76ec: $80
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	ld   hl, sp-$7f                                  ; $76ef: $f8 $81
	rst  $38                                         ; $76f1: $ff
	ld   de, $fff8                                   ; $76f2: $11 $f8 $ff
	ret  nz                                          ; $76f5: $c0

	rst  $38                                         ; $76f6: $ff
	ld   b, b                                        ; $76f7: $40
	rst  $38                                         ; $76f8: $ff
	cp   a                                           ; $76f9: $bf
	rst  $38                                         ; $76fa: $ff
	sbc  a                                           ; $76fb: $9f
	rst  $38                                         ; $76fc: $ff
	call z, $917c                                    ; $76fd: $cc $7c $91
	add  c                                           ; $7700: $81
	nop                                              ; $7701: $00
	pop  af                                          ; $7702: $f1
	add  hl, bc                                      ; $7703: $09
	inc  bc                                          ; $7704: $03
	add  b                                           ; $7705: $80
	dec  bc                                          ; $7706: $0b
	dec  c                                           ; $7707: $0d
	dec  b                                           ; $7708: $05
	rrca                                             ; $7709: $0f
	inc  c                                           ; $770a: $0c
	rrca                                             ; $770b: $0f
	ld   [$080f], sp                                 ; $770c: $08 $0f $08
	rrca                                             ; $770f: $0f
	inc  c                                           ; $7710: $0c
	rrca                                             ; $7711: $0f
	inc  c                                           ; $7712: $0c
	rrca                                             ; $7713: $0f
	and  e                                           ; $7714: $a3
	rst  $20                                         ; $7715: $e7
	add  b                                           ; $7716: $80
	rst  $30                                         ; $7717: $f7
	add  d                                           ; $7718: $82
	rst  $20                                         ; $7719: $e7
	add  b                                           ; $771a: $80
	rst  $30                                         ; $771b: $f7
	add  b                                           ; $771c: $80
	rst  $20                                         ; $771d: $e7
	inc  b                                           ; $771e: $04
	ld   h, a                                        ; $771f: $67
	rst  $20                                         ; $7720: $e7
	ld   [hl], a                                     ; $7721: $77
	rst  $30                                         ; $7722: $f7
	di                                               ; $7723: $f3
	add  c                                           ; $7724: $81
	sbc  [hl]                                        ; $7725: $9e
	add  b                                           ; $7726: $80
	rst  JumpTable                                         ; $7727: $df
	add  d                                           ; $7728: $82
	sbc  [hl]                                        ; $7729: $9e
	add  b                                           ; $772a: $80
	rst  JumpTable                                         ; $772b: $df
	add  d                                           ; $772c: $82
	sbc  [hl]                                        ; $772d: $9e
	ld   [bc], a                                     ; $772e: $02
	db   $db                                         ; $772f: $db
	ld   [hl], e                                     ; $7730: $73
	ld   h, a                                        ; $7731: $67
	add  c                                           ; $7732: $81
	ld   a, c                                        ; $7733: $79
	add  b                                           ; $7734: $80
	ld   a, l                                        ; $7735: $7d
	add  d                                           ; $7736: $82
	ld   a, c                                        ; $7737: $79
	add  b                                           ; $7738: $80
	ld   a, l                                        ; $7739: $7d
	add  b                                           ; $773a: $80
	ld   a, c                                        ; $773b: $79
	inc  b                                           ; $773c: $04
	ld   [hl], l                                     ; $773d: $75
	rst  $30                                         ; $773e: $f7
	or   $f7                                         ; $773f: $f6 $f7
	db   $f4                                         ; $7741: $f4
	add  b                                           ; $7742: $80
	rst  $30                                         ; $7743: $f7
	nop                                              ; $7744: $00
	push af                                          ; $7745: $f5
	add  b                                           ; $7746: $80
	rst  $30                                         ; $7747: $f7
	add  b                                           ; $7748: $80
	push af                                          ; $7749: $f5
	add  b                                           ; $774a: $80
	rst  $30                                         ; $774b: $f7
	ld   b, $d5                                      ; $774c: $06 $d5
	push af                                          ; $774e: $f5
	jp   Jump_071_7bfb                               ; $774f: $c3 $fb $7b


	ei                                               ; $7752: $fb
	cp   e                                           ; $7753: $bb
	add  b                                           ; $7754: $80
	ld   a, e                                        ; $7755: $7b
	nop                                              ; $7756: $00
	dec  de                                          ; $7757: $1b
	add  b                                           ; $7758: $80
	db   $db                                         ; $7759: $db
	ld   bc, $1b1a                                   ; $775a: $01 $1a $1b
	add  b                                           ; $775d: $80
	db   $db                                         ; $775e: $db
	inc  b                                           ; $775f: $04
	add  hl, de                                      ; $7760: $19
	dec  de                                          ; $7761: $1b
	db   $db                                         ; $7762: $db
	rst  $38                                         ; $7763: $ff
	ldh  a, [$80]                                    ; $7764: $f0 $80
	rst  $38                                         ; $7766: $ff
	ld   bc, $deef                                   ; $7767: $01 $ef $de
	add  c                                           ; $776a: $81
	rst  $20                                         ; $776b: $e7
	add  b                                           ; $776c: $80
	rst  $30                                         ; $776d: $f7
	nop                                              ; $776e: $00
	ld   h, a                                        ; $776f: $67
	add  c                                           ; $7770: $81
	rst  $20                                         ; $7771: $e7
	add  hl, bc                                      ; $7772: $09
	and  e                                           ; $7773: $a3
	rst  $38                                         ; $7774: $ff
	dec  b                                           ; $7775: $05
	rst  $38                                         ; $7776: $ff
	ldh  a, [$7f]                                    ; $7777: $f0 $7f
	rst  $38                                         ; $7779: $ff
	dec  sp                                          ; $777a: $3b
	scf                                              ; $777b: $37
	add  hl, sp                                      ; $777c: $39
	add  b                                           ; $777d: $80
	cp   c                                           ; $777e: $b9
	add  b                                           ; $777f: $80
	dec  a                                           ; $7780: $3d
	add  b                                           ; $7781: $80
	add  hl, sp                                      ; $7782: $39
	ld   [$ffe0], sp                                 ; $7783: $08 $e0 $ff
	ld   e, a                                        ; $7786: $5f
	rst  $38                                         ; $7787: $ff
	dec  b                                           ; $7788: $05
	rst  $38                                         ; $7789: $ff
	ldh  a, [$df]                                    ; $778a: $f0 $df
	cp   a                                           ; $778c: $bf
	add  c                                           ; $778d: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $778e: $cf
	add  b                                           ; $778f: $80
	rst  $28                                         ; $7790: $ef
	add  b                                           ; $7791: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7792: $cf
	nop                                              ; $7793: $00
	ld   b, h                                        ; $7794: $44
	add  c                                           ; $7795: $81
	db   $eb                                         ; $7796: $eb
	add  b                                           ; $7797: $80
	ld   [$eb80], a                                  ; $7798: $ea $80 $eb
	add  b                                           ; $779b: $80
	ldh  [c], a                                      ; $779c: $e2
	add  b                                           ; $779d: $80
	ret  nc                                          ; $779e: $d0

	nop                                              ; $779f: $00
	add  b                                           ; $77a0: $80
	add  c                                           ; $77a1: $81
	add  e                                           ; $77a2: $83
	nop                                              ; $77a3: $00
	db   $fc                                         ; $77a4: $fc
	add  c                                           ; $77a5: $81
	cp   $01                                         ; $77a6: $fe $01
	ld   bc, $8000                                   ; $77a8: $01 $00 $80
	rlca                                             ; $77ab: $07
	add  b                                           ; $77ac: $80
	inc  a                                           ; $77ad: $3c
	add  b                                           ; $77ae: $80
	di                                               ; $77af: $f3
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	add  c                                           ; $77b2: $81
	rst  $38                                         ; $77b3: $ff
	dec  b                                           ; $77b4: $05
	ld   [bc], a                                     ; $77b5: $02
	dec  c                                           ; $77b6: $0d
	ld   h, d                                        ; $77b7: $62
	ld   [de], a                                     ; $77b8: $12
	ld   c, l                                        ; $77b9: $4d
	call $3280                                       ; $77ba: $cd $80 $32
	add  b                                           ; $77bd: $80
	call $bb80                                       ; $77be: $cd $80 $bb
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	add  c                                           ; $77c3: $81
	rst  $38                                         ; $77c4: $ff
	ld   bc, $55aa                                   ; $77c5: $01 $aa $55
	add  b                                           ; $77c8: $80
	xor  e                                           ; $77c9: $ab
	add  b                                           ; $77ca: $80
	ld   e, e                                        ; $77cb: $5b
	add  b                                           ; $77cc: $80
	sub  $80                                         ; $77cd: $d6 $80
	or   [hl]                                        ; $77cf: $b6
	add  b                                           ; $77d0: $80
	ld   l, [hl]                                     ; $77d1: $6e
	dec  b                                           ; $77d2: $05
	nop                                              ; $77d3: $00
	rst  $38                                         ; $77d4: $ff
	ldh  a, [rIE]                                    ; $77d5: $f0 $ff
	ret  nc                                          ; $77d7: $d0

	ld   [hl], b                                     ; $77d8: $70

jr_071_77d9:
	add  b                                           ; $77d9: $80
	ld   a, b                                        ; $77da: $78
	inc  b                                           ; $77db: $04
	inc  b                                           ; $77dc: $04
	ld   a, [hl]                                     ; $77dd: $7e
	cp   $ff                                         ; $77de: $fe $ff
	pop  bc                                          ; $77e0: $c1
	add  c                                           ; $77e1: $81
	rst  $38                                         ; $77e2: $ff
	rlca                                             ; $77e3: $07
	ld   a, [de]                                     ; $77e4: $1a
	ldh  a, [$08]                                    ; $77e5: $f0 $08
	ld   hl, sp+$0f                                  ; $77e7: $f8 $0f
	rlca                                             ; $77e9: $07
	nop                                              ; $77ea: $00
	rlca                                             ; $77eb: $07
	add  b                                           ; $77ec: $80
	rst  $38                                         ; $77ed: $ff
	ld   de, $3f20                                   ; $77ee: $11 $20 $3f
	ret  nc                                          ; $77f1: $d0

	rrca                                             ; $77f2: $0f
	ldh  a, [$fe]                                    ; $77f3: $f0 $fe
	ld   a, $3f                                      ; $77f5: $3e $3f
	ld   a, $3f                                      ; $77f7: $3e $3f
	adc  $f1                                         ; $77f9: $ce $f1
	ld   sp, wNumStructBytesForCurrAnimSpriteSpec                                   ; $77fb: $31 $f1 $c1
	pop  af                                          ; $77fe: $f1
	cp   $ff                                         ; $77ff: $fe $ff
	add  c                                           ; $7801: $81
	nop                                              ; $7802: $00
	add  b                                           ; $7803: $80
	xor  d                                           ; $7804: $aa
	ld   [$00ff], sp                                 ; $7805: $08 $ff $00
	rst  $38                                         ; $7808: $ff
	ld   a, [$080f]                                  ; $7809: $fa $0f $08
	rrca                                             ; $780c: $0f
	dec  c                                           ; $780d: $0d
	rrca                                             ; $780e: $0f
	add  b                                           ; $780f: $80
	rlca                                             ; $7810: $07
	add  b                                           ; $7811: $80
	rrca                                             ; $7812: $0f
	rla                                              ; $7813: $17
	rlca                                             ; $7814: $07
	rrca                                             ; $7815: $0f
	inc  bc                                          ; $7816: $03
	rrca                                             ; $7817: $0f
	dec  bc                                          ; $7818: $0b
	rrca                                             ; $7819: $0f
	ld   hl, $a7e7                                   ; $781a: $21 $e7 $a7
	rst  $20                                         ; $781d: $e7
	daa                                              ; $781e: $27
	rst  $30                                         ; $781f: $f7
	ld   b, a                                        ; $7820: $47
	rst  $30                                         ; $7821: $f7
	set  7, a                                        ; $7822: $cb $ff
	add  c                                           ; $7824: $81
	rst  $38                                         ; $7825: $ff
	adc  b                                           ; $7826: $88
	cp   $80                                         ; $7827: $fe $80
	cp   $50                                         ; $7829: $fe $50
	rst  JumpTable                                         ; $782b: $df
	add  d                                           ; $782c: $82
	sbc  [hl]                                        ; $782d: $9e
	add  b                                           ; $782e: $80
	rst  JumpTable                                         ; $782f: $df
	add  b                                           ; $7830: $80
	sbc  [hl]                                        ; $7831: $9e
	ld   bc, $815a                                   ; $7832: $01 $5a $81
	add  b                                           ; $7835: $80
	inc  bc                                          ; $7836: $03
	inc  bc                                          ; $7837: $03
	ld   [bc], a                                     ; $7838: $02
	ld   h, e                                        ; $7839: $63
	ld   [hl], l                                     ; $783a: $75
	ld   a, c                                        ; $783b: $79
	add  b                                           ; $783c: $80
	ld   a, l                                        ; $783d: $7d
	add  b                                           ; $783e: $80
	ld   a, c                                        ; $783f: $79
	ld   bc, $7c7d                                   ; $7840: $01 $7d $7c
	add  b                                           ; $7843: $80
	ld   a, b                                        ; $7844: $78
	dec  bc                                          ; $7845: $0b
	sub  d                                           ; $7846: $92
	db   $fc                                         ; $7847: $fc
	db   $fd                                         ; $7848: $fd
	cp   $f6                                         ; $7849: $fe $f6
	add  hl, sp                                      ; $784b: $39
	cp   $f7                                         ; $784c: $fe $f7
	ldh  a, [$b7]                                    ; $784e: $f0 $b7
	rst  $20                                         ; $7850: $e7
	ld   h, a                                        ; $7851: $67
	add  b                                           ; $7852: $80
	daa                                              ; $7853: $27

jr_071_7854:
	add  b                                           ; $7854: $80
	ld   d, a                                        ; $7855: $57
	add  b                                           ; $7856: $80
	jr   nc, jr_071_77d9                             ; $7857: $30 $80

	ld   [$9702], sp                                 ; $7859: $08 $02 $97
	rla                                              ; $785c: $17
	ld   a, a                                        ; $785d: $7f
	add  b                                           ; $785e: $80
	inc  bc                                          ; $785f: $03
	ld   [bc], a                                     ; $7860: $02
	cp   e                                           ; $7861: $bb
	cp   d                                           ; $7862: $ba
	adc  d                                           ; $7863: $8a
	add  b                                           ; $7864: $80
	adc  c                                           ; $7865: $89
	inc  bc                                          ; $7866: $03
	db   $f4                                         ; $7867: $f4
	db   $fc                                         ; $7868: $fc
	ld   h, c                                        ; $7869: $61
	dec  e                                           ; $786a: $1d
	add  b                                           ; $786b: $80
	cp   a                                           ; $786c: $bf
	add  b                                           ; $786d: $80
	rst  $38                                         ; $786e: $ff
	ld   a, [bc]                                     ; $786f: $0a
	and  c                                           ; $7870: $a1
	rst  $30                                         ; $7871: $f7
	and  a                                           ; $7872: $a7
	rst  $20                                         ; $7873: $e7
	push hl                                          ; $7874: $e5
	rst  $20                                         ; $7875: $e7
	ld   l, c                                        ; $7876: $69
	ld   a, a                                        ; $7877: $7f
	db   $ed                                         ; $7878: $ed
	rst  $38                                         ; $7879: $ff
	rst  $28                                         ; $787a: $ef
	add  c                                           ; $787b: $81
	rst  $38                                         ; $787c: $ff
	inc  bc                                          ; $787d: $03
	or   $76                                         ; $787e: $f6 $76
	adc  h                                           ; $7880: $8c
	cp   c                                           ; $7881: $b9
	add  b                                           ; $7882: $80
	dec  a                                           ; $7883: $3d
	add  b                                           ; $7884: $80
	add  hl, sp                                      ; $7885: $39
	rrca                                             ; $7886: $0f
	ld   c, c                                        ; $7887: $49
	ld   sp, hl                                      ; $7888: $f9
	ld   l, c                                        ; $7889: $69
	ld   a, c                                        ; $788a: $79
	add  b                                           ; $788b: $80
	sbc  l                                           ; $788c: $9d
	and  e                                           ; $788d: $a3
	cp   a                                           ; $788e: $bf
	db   $eb                                         ; $788f: $eb
	rst  $38                                         ; $7890: $ff
	ld   h, c                                        ; $7891: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7892: $cf
	db   $eb                                         ; $7893: $eb
	rst  $28                                         ; $7894: $ef
	call $80c7                                       ; $7895: $cd $c7 $80
	and  e                                           ; $7898: $a3
	ld   bc, $0faf                                   ; $7899: $01 $af $0f
	add  b                                           ; $789c: $80
	inc  bc                                          ; $789d: $03
	add  b                                           ; $789e: $80
	sub  a                                           ; $789f: $97
	add  b                                           ; $78a0: $80
	rst  ToBoot                                         ; $78a1: $c7
	add  b                                           ; $78a2: $80
	inc  hl                                          ; $78a3: $23
	dec  b                                           ; $78a4: $05
	adc  c                                           ; $78a5: $89
	ret                                              ; $78a6: $c9


	rrca                                             ; $78a7: $0f
	rst  $28                                         ; $78a8: $ef
	ld   e, c                                        ; $78a9: $59
	ld   sp, hl                                      ; $78aa: $f9
	add  b                                           ; $78ab: $80
	db   $ec                                         ; $78ac: $ec
	add  b                                           ; $78ad: $80
	call nc, sGlobalFlags1                                   ; $78ae: $d4 $80 $a0
	add  b                                           ; $78b1: $80
	ret  nc                                          ; $78b2: $d0

	add  d                                           ; $78b3: $82
	nop                                              ; $78b4: $00
	add  b                                           ; $78b5: $80
	ld   a, [bc]                                     ; $78b6: $0a
	add  b                                           ; $78b7: $80
	inc  b                                           ; $78b8: $04
	add  b                                           ; $78b9: $80
	ld   c, $04                                      ; $78ba: $0e $04
	adc  l                                           ; $78bc: $8d
	rst  $28                                         ; $78bd: $ef
	db   $eb                                         ; $78be: $eb
	rst  $28                                         ; $78bf: $ef
	ld   h, [hl]                                     ; $78c0: $66
	add  b                                           ; $78c1: $80
	ld   c, $87                                      ; $78c2: $0e $87
	nop                                              ; $78c4: $00
	add  b                                           ; $78c5: $80
	ld   b, b                                        ; $78c6: $40
	add  b                                           ; $78c7: $80
	and  b                                           ; $78c8: $a0
	add  b                                           ; $78c9: $80
	nop                                              ; $78ca: $00
	add  b                                           ; $78cb: $80
	db   $f4                                         ; $78cc: $f4
	add  b                                           ; $78cd: $80
	ld   b, b                                        ; $78ce: $40
	add  b                                           ; $78cf: $80
	ret  nz                                          ; $78d0: $c0

	add  b                                           ; $78d1: $80
	jr   nz, jr_071_7854                             ; $78d2: $20 $80

	jr   @-$7a                                       ; $78d4: $18 $84

	nop                                              ; $78d6: $00
	ld   bc, $000f                                   ; $78d7: $01 $0f $00
	add  b                                           ; $78da: $80
	add  b                                           ; $78db: $80
	adc  d                                           ; $78dc: $8a
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	ld   a, a                                        ; $78df: $7f
	add  c                                           ; $78e0: $81
	ld   a, [hl]                                     ; $78e1: $7e
	ld   b, $7f                                      ; $78e2: $06 $7f
	ld   a, l                                        ; $78e4: $7d
	ld   a, h                                        ; $78e5: $7c
	ld   a, b                                        ; $78e6: $78
	ld   l, b                                        ; $78e7: $68
	ld   a, a                                        ; $78e8: $7f
	ld   h, b                                        ; $78e9: $60
	add  e                                           ; $78ea: $83
	ld   a, a                                        ; $78eb: $7f
	add  b                                           ; $78ec: $80
	nop                                              ; $78ed: $00
	ld   [$80a0], sp                                 ; $78ee: $08 $a0 $80
	adc  b                                           ; $78f1: $88
	ldh  a, [$e8]                                    ; $78f2: $f0 $e8

jr_071_78f4:
	cp   h                                           ; $78f4: $bc
	inc  c                                           ; $78f5: $0c
	rst  $38                                         ; $78f6: $ff
	rlca                                             ; $78f7: $07
	add  e                                           ; $78f8: $83
	rst  $38                                         ; $78f9: $ff
	nop                                              ; $78fa: $00
	ld   hl, sp-$7f                                  ; $78fb: $f8 $81
	rrca                                             ; $78fd: $0f
	add  b                                           ; $78fe: $80
	inc  bc                                          ; $78ff: $03
	add  b                                           ; $7900: $80
	dec  b                                           ; $7901: $05
	add  b                                           ; $7902: $80
	nop                                              ; $7903: $00
	add  b                                           ; $7904: $80
	add  hl, bc                                      ; $7905: $09
	add  d                                           ; $7906: $82
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	inc  c                                           ; $7909: $0c
	add  b                                           ; $790a: $80
	cp   $00                                         ; $790b: $fe $00
	db   $fc                                         ; $790d: $fc
	add  b                                           ; $790e: $80
	and  [hl]                                        ; $790f: $a6
	add  b                                           ; $7910: $80
	ld   [hl], b                                     ; $7911: $70
	add  b                                           ; $7912: $80
	xor  b                                           ; $7913: $a8
	add  b                                           ; $7914: $80
	ld   d, h                                        ; $7915: $54
	add  d                                           ; $7916: $82
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	inc  bc                                          ; $7919: $03
	add  d                                           ; $791a: $82
	ld   h, d                                        ; $791b: $62
	nop                                              ; $791c: $00
	inc  bc                                          ; $791d: $03
	add  b                                           ; $791e: $80
	inc  sp                                          ; $791f: $33
	add  hl, bc                                      ; $7920: $09
	ld   a, [bc]                                     ; $7921: $0a
	dec  bc                                          ; $7922: $0b
	add  hl, hl                                      ; $7923: $29
	ld   a, [hl+]                                    ; $7924: $2a
	cpl                                              ; $7925: $2f
	dec  c                                           ; $7926: $0d
	ld   a, [hl+]                                    ; $7927: $2a
	dec  bc                                          ; $7928: $0b
	cp   h                                           ; $7929: $bc
	ld   [hl], e                                     ; $792a: $73
	add  b                                           ; $792b: $80
	rst  $30                                         ; $792c: $f7
	ld   bc, $ff31                                   ; $792d: $01 $31 $ff
	add  b                                           ; $7930: $80
	rst  $28                                         ; $7931: $ef
	add  hl, de                                      ; $7932: $19
	cpl                                              ; $7933: $2f
	rst  $28                                         ; $7934: $ef

jr_071_7935:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7935: $cf
	cpl                                              ; $7936: $2f
	xor  a                                           ; $7937: $af
	sbc  a                                           ; $7938: $9f
	ld   d, b                                        ; $7939: $50
	rst  JumpTable                                         ; $793a: $df
	sbc  c                                           ; $793b: $99
	add  [hl]                                        ; $793c: $86
	nop                                              ; $793d: $00
	ret  nz                                          ; $793e: $c0

	add  b                                           ; $793f: $80
	db   $fc                                         ; $7940: $fc
	ld   b, d                                        ; $7941: $42
	ld   a, a                                        ; $7942: $7f
	ld   l, c                                        ; $7943: $69
	ld   a, d                                        ; $7944: $7a
	ld   d, e                                        ; $7945: $53
	ld   b, e                                        ; $7946: $43
	ld   [hl], c                                     ; $7947: $71
	ld   [hl], a                                     ; $7948: $77
	rlca                                             ; $7949: $07
	ei                                               ; $794a: $fb
	rlca                                             ; $794b: $07
	cp   $80                                         ; $794c: $fe $80
	ld   e, [hl]                                     ; $794e: $5e
	add  b                                           ; $794f: $80
	ld   a, [hl-]                                    ; $7950: $3a
	inc  bc                                          ; $7951: $03
	jr   nz, jr_071_78f4                             ; $7952: $20 $a0

	sub  b                                           ; $7954: $90
	db   $10                                         ; $7955: $10
	add  b                                           ; $7956: $80
	add  d                                           ; $7957: $82
	ld   bc, $c242                                   ; $7958: $01 $42 $c2
	add  b                                           ; $795b: $80
	ret  nz                                          ; $795c: $c0

	ld   b, $51                                      ; $795d: $06 $51
	db   $10                                         ; $795f: $10
	ld   l, b                                        ; $7960: $68
	jr   z, jr_071_7964                              ; $7961: $28 $01

	pop  bc                                          ; $7963: $c1

jr_071_7964:
	ret  nz                                          ; $7964: $c0

	add  b                                           ; $7965: $80
	add  b                                           ; $7966: $80
	ld   [$80c0], sp                                 ; $7967: $08 $c0 $80
	ldh  [rLCDC], a                                  ; $796a: $e0 $40
	ld   c, [hl]                                     ; $796c: $4e
	dec  b                                           ; $796d: $05
	jr   jr_071_797c                                 ; $796e: $18 $0c

	ccf                                              ; $7970: $3f
	add  b                                           ; $7971: $80
	rst  $38                                         ; $7972: $ff
	add  b                                           ; $7973: $80
	ld   l, e                                        ; $7974: $6b
	add  b                                           ; $7975: $80
	ld   d, h                                        ; $7976: $54
	add  b                                           ; $7977: $80
	and  b                                           ; $7978: $a0
	add  b                                           ; $7979: $80
	ld   b, b                                        ; $797a: $40
	add  d                                           ; $797b: $82

jr_071_797c:
	nop                                              ; $797c: $00
	add  b                                           ; $797d: $80
	rst  $28                                         ; $797e: $ef
	add  b                                           ; $797f: $80

Jump_071_7980:
	cp   a                                           ; $7980: $bf
	add  b                                           ; $7981: $80
	inc  sp                                          ; $7982: $33
	add  b                                           ; $7983: $80
	ld   a, [hl+]                                    ; $7984: $2a
	add  b                                           ; $7985: $80
	db   $10                                         ; $7986: $10
	add  b                                           ; $7987: $80
	ld   b, b                                        ; $7988: $40
	add  d                                           ; $7989: $82
	nop                                              ; $798a: $00
	add  b                                           ; $798b: $80
	ld   [$c080], sp                                 ; $798c: $08 $80 $c0
	add  b                                           ; $798f: $80
	add  h                                           ; $7990: $84
	add  b                                           ; $7991: $80
	add  b                                           ; $7992: $80
	add  [hl]                                        ; $7993: $86
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	ld   [hl], b                                     ; $7996: $70
	adc  e                                           ; $7997: $8b
	ld   a, [hl]                                     ; $7998: $7e
	ld   b, $00                                      ; $7999: $06 $00
	ld   [hl], b                                     ; $799b: $70
	ld   a, [hl]                                     ; $799c: $7e
	rrca                                             ; $799d: $0f
	ld   c, $0f                                      ; $799e: $0e $0f
	dec  c                                           ; $79a0: $0d
	add  b                                           ; $79a1: $80
	ld   c, $80                                      ; $79a2: $0e $80
	rrca                                             ; $79a4: $0f
	dec  bc                                          ; $79a5: $0b
	ld   c, $0c                                      ; $79a6: $0e $0c
	rrca                                             ; $79a8: $0f
	ld   c, $0f                                      ; $79a9: $0e $0f
	inc  c                                           ; $79ab: $0c
	rrca                                             ; $79ac: $0f
	inc  e                                           ; $79ad: $1c
	ldh  a, [$30]                                    ; $79ae: $f0 $30
	ldh  a, [$d0]                                    ; $79b0: $f0 $d0
	add  b                                           ; $79b2: $80
	jr   nc, jr_071_7935                             ; $79b3: $30 $80

	ldh  a, [rTAC]                                   ; $79b5: $f0 $07
	jr   nc, jr_071_79c9                             ; $79b7: $30 $10

	ldh  a, [$30]                                    ; $79b9: $f0 $30
	ldh  a, [rAUD1ENV]                               ; $79bb: $f0 $12
	rst  $30                                         ; $79bd: $f7
	dec  b                                           ; $79be: $05
	adc  h                                           ; $79bf: $8c
	nop                                              ; $79c0: $00
	ld   [bc], a                                     ; $79c1: $02
	ld   [hl], b                                     ; $79c2: $70
	rrca                                             ; $79c3: $0f
	ld   a, a                                        ; $79c4: $7f
	add  b                                           ; $79c5: $80
	ld   h, e                                        ; $79c6: $63
	nop                                              ; $79c7: $00
	ld   a, h                                        ; $79c8: $7c

jr_071_79c9:
	add  a                                           ; $79c9: $87
	ld   a, a                                        ; $79ca: $7f
	ld   b, $1f                                      ; $79cb: $06 $1f
	rst  $38                                         ; $79cd: $ff
	dec  de                                          ; $79ce: $1b
	rst  $38                                         ; $79cf: $ff
	ld   bc, $3806                                   ; $79d0: $01 $06 $38
	adc  b                                           ; $79d3: $88
	ld   a, $02                                      ; $79d4: $3e $02
	cp   [hl]                                        ; $79d6: $be
	halt                                             ; $79d7: $76
	nop                                              ; $79d8: $00
	add  b                                           ; $79d9: $80
	ld   a, [bc]                                     ; $79da: $0a
	add  b                                           ; $79db: $80
	ld   c, $80                                      ; $79dc: $0e $80
	rrca                                             ; $79de: $0f
	ld   [bc], a                                     ; $79df: $02
	inc  c                                           ; $79e0: $0c
	rrca                                             ; $79e1: $0f
	inc  bc                                          ; $79e2: $03
	add  e                                           ; $79e3: $83
	nop                                              ; $79e4: $00
	ld   bc, $04f4                                   ; $79e5: $01 $f4 $04
	add  b                                           ; $79e8: $80
	ld   a, $80                                      ; $79e9: $3e $80
	rst  $38                                         ; $79eb: $ff
	add  b                                           ; $79ec: $80
	rst  $28                                         ; $79ed: $ef
	dec  bc                                          ; $79ee: $0b
	rst  $30                                         ; $79ef: $f7
	and  $ee                                         ; $79f0: $e6 $ee
	jr   nz, jr_071_7a17                             ; $79f2: $20 $23

	nop                                              ; $79f4: $00
	rst  $38                                         ; $79f5: $ff
	inc  bc                                          ; $79f6: $03
	ld   [hl-], a                                    ; $79f7: $32
	inc  sp                                          ; $79f8: $33
	nop                                              ; $79f9: $00
	ld   bc, $fc80                                   ; $79fa: $01 $80 $fc
	nop                                              ; $79fd: $00
	rst  $38                                         ; $79fe: $ff
	add  b                                           ; $79ff: $80
	add  sp, $04                                     ; $7a00: $e8 $04
	ret  nz                                          ; $7a02: $c0

	ld   b, b                                        ; $7a03: $40
	add  b                                           ; $7a04: $80
	rst  $38                                         ; $7a05: $ff
	nop                                              ; $7a06: $00
	add  b                                           ; $7a07: $80
	rst  $38                                         ; $7a08: $ff
	ld   b, $40                                      ; $7a09: $06 $40
	ret  nz                                          ; $7a0b: $c0

	nop                                              ; $7a0c: $00
	add  b                                           ; $7a0d: $80
	ld   a, a                                        ; $7a0e: $7f
	ld   a, [hl]                                     ; $7a0f: $7e
	cp   [hl]                                        ; $7a10: $be
	add  c                                           ; $7a11: $81
	ld   b, b                                        ; $7a12: $40
	ld   bc, $00ff                                   ; $7a13: $01 $ff $00
	add  d                                           ; $7a16: $82

jr_071_7a17:
	rst  $38                                         ; $7a17: $ff
	add  b                                           ; $7a18: $80
	ld   bc, $0080                                   ; $7a19: $01 $80 $00
	nop                                              ; $7a1c: $00
	rst  JumpTable                                         ; $7a1d: $df
	add  c                                           ; $7a1e: $81
	jr   nz, jr_071_7a24                             ; $7a1f: $20 $03

	ccf                                              ; $7a21: $3f
	jr   nz, @+$01                                   ; $7a22: $20 $ff

jr_071_7a24:
	rra                                              ; $7a24: $1f
	add  d                                           ; $7a25: $82
	rst  $38                                         ; $7a26: $ff
	dec  b                                           ; $7a27: $05
	sub  b                                           ; $7a28: $90
	sub  c                                           ; $7a29: $91
	ld   a, b                                        ; $7a2a: $78
	ld   a, c                                        ; $7a2b: $79
	ret  c                                           ; $7a2c: $d8

	jr   nz, @-$7e                                   ; $7a2d: $20 $80

	inc  hl                                          ; $7a2f: $23
	ld   bc, $00f8                                   ; $7a30: $01 $f8 $00
	add  b                                           ; $7a33: $80
	ld   sp, hl                                      ; $7a34: $f9
	add  b                                           ; $7a35: $80
	ld   a, [$f980]                                  ; $7a36: $fa $80 $f9
	ld   [$102e], sp                                 ; $7a39: $08 $2e $10
	adc  b                                           ; $7a3c: $88
	sbc  a                                           ; $7a3d: $9f
	sub  d                                           ; $7a3e: $92
	add  a                                           ; $7a3f: $87
	adc  h                                           ; $7a40: $8c
	add  b                                           ; $7a41: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a42: $cf
	add  c                                           ; $7a43: $81
	cp   a                                           ; $7a44: $bf
	add  b                                           ; $7a45: $80
	rst  $38                                         ; $7a46: $ff
	rlca                                             ; $7a47: $07
	or   a                                           ; $7a48: $b7
	adc  b                                           ; $7a49: $88
	ld   h, h                                        ; $7a4a: $64
	inc  b                                           ; $7a4b: $04
	push hl                                          ; $7a4c: $e5
	inc  b                                           ; $7a4d: $04
	rst  $38                                         ; $7a4e: $ff
	ld   bc, $f980                                   ; $7a4f: $01 $80 $f9
	add  b                                           ; $7a52: $80
	pop  af                                          ; $7a53: $f1
	add  b                                           ; $7a54: $80
	pop  hl                                          ; $7a55: $e1
	ld   bc, $5fa1                                   ; $7a56: $01 $a1 $5f
	add  b                                           ; $7a59: $80
	ld   a, [hl]                                     ; $7a5a: $7e
	dec  b                                           ; $7a5b: $05
	cp   $7f                                         ; $7a5c: $fe $7f
	ld   [hl], a                                     ; $7a5e: $77
	ld   [$fbf3], sp                                 ; $7a5f: $08 $f3 $fb
	add  b                                           ; $7a62: $80
	cp   e                                           ; $7a63: $bb
	add  b                                           ; $7a64: $80
	ld   a, d                                        ; $7a65: $7a
	add  b                                           ; $7a66: $80
	sbc  e                                           ; $7a67: $9b
	add  b                                           ; $7a68: $80
	ei                                               ; $7a69: $fb
	nop                                              ; $7a6a: $00
	ld   [$0080], sp                                 ; $7a6b: $08 $80 $00
	inc  b                                           ; $7a6e: $04
	rst  $38                                         ; $7a6f: $ff
	rst  $28                                         ; $7a70: $ef
	db   $10                                         ; $7a71: $10
	rst  $20                                         ; $7a72: $e7
	rst  $30                                         ; $7a73: $f7
	add  b                                           ; $7a74: $80
	halt                                             ; $7a75: $76
	add  b                                           ; $7a76: $80
	push af                                          ; $7a77: $f5
	add  b                                           ; $7a78: $80
	ld   [hl], $80                                   ; $7a79: $36 $80
	rst  $30                                         ; $7a7b: $f7
	rlca                                             ; $7a7c: $07
	ld   de, $0001                                   ; $7a7d: $11 $01 $00
	rst  $38                                         ; $7a80: $ff
	ret  nz                                          ; $7a81: $c0

	ccf                                              ; $7a82: $3f
	ret  nz                                          ; $7a83: $c0

	ldh  [$80], a                                    ; $7a84: $e0 $80
	rst  $28                                         ; $7a86: $ef
	add  b                                           ; $7a87: $80
	db   $ed                                         ; $7a88: $ed
	add  b                                           ; $7a89: $80
	ld   l, e                                        ; $7a8a: $6b
	add  b                                           ; $7a8b: $80
	db   $ec                                         ; $7a8c: $ec
	add  b                                           ; $7a8d: $80
	rst  $28                                         ; $7a8e: $ef
	inc  bc                                          ; $7a8f: $03
	jr   nz, @+$01                                   ; $7a90: $20 $ff

	nop                                              ; $7a92: $00
	rst  $38                                         ; $7a93: $ff
	add  b                                           ; $7a94: $80
	ld   b, b                                        ; $7a95: $40
	ld   bc, $df9f                                   ; $7a96: $01 $9f $df
	add  b                                           ; $7a99: $80
	jp   c, $d403                                    ; $7a9a: $da $03 $d4

	rst  $10                                         ; $7a9d: $d7
	db   $db                                         ; $7a9e: $db
	jp   c, $de80                                    ; $7a9f: $da $80 $de

	inc  bc                                          ; $7aa2: $03
	or   h                                           ; $7aa3: $b4
	rst  $38                                         ; $7aa4: $ff
	ldh  [c], a                                      ; $7aa5: $e2
	db   $eb                                         ; $7aa6: $eb
	add  b                                           ; $7aa7: $80
	jp   nc, $8880                                   ; $7aa8: $d2 $80 $88

	add  b                                           ; $7aab: $80
	nop                                              ; $7aac: $00
	add  b                                           ; $7aad: $80
	rst  $38                                         ; $7aae: $ff
	add  d                                           ; $7aaf: $82
	db   $10                                         ; $7ab0: $10
	dec  b                                           ; $7ab1: $05
	jp   nc, $82ff                                   ; $7ab2: $d2 $ff $82

	rst  $38                                         ; $7ab5: $ff
	and  l                                           ; $7ab6: $a5
	push af                                          ; $7ab7: $f5
	add  b                                           ; $7ab8: $80
	db   $10                                         ; $7ab9: $10
	add  b                                           ; $7aba: $80
	nop                                              ; $7abb: $00
	add  b                                           ; $7abc: $80
	rst  $38                                         ; $7abd: $ff
	add  d                                           ; $7abe: $82
	ld   b, c                                        ; $7abf: $41
	rlca                                             ; $7ac0: $07
	ld   c, [hl]                                     ; $7ac1: $4e
	rst  $38                                         ; $7ac2: $ff
	ld   c, $ff                                      ; $7ac3: $0e $ff
	ld   [hl+], a                                    ; $7ac5: $22
	ld   [hl], d                                     ; $7ac6: $72
	jr   nc, jr_071_7ae9                             ; $7ac7: $30 $20

	add  b                                           ; $7ac9: $80
	nop                                              ; $7aca: $00
	add  b                                           ; $7acb: $80
	rst  $38                                         ; $7acc: $ff
	add  d                                           ; $7acd: $82
	inc  b                                           ; $7ace: $04
	rlca                                             ; $7acf: $07
	adc  c                                           ; $7ad0: $89
	rst  $38                                         ; $7ad1: $ff
	ld   bc, $25ff                                   ; $7ad2: $01 $ff $25
	cp   l                                           ; $7ad5: $bd
	ld   [$8018], sp                                 ; $7ad6: $08 $18 $80
	nop                                              ; $7ad9: $00
	add  b                                           ; $7ada: $80
	rst  $38                                         ; $7adb: $ff
	add  c                                           ; $7adc: $81
	db   $10                                         ; $7add: $10
	ld   bc, $f717                                   ; $7ade: $01 $17 $f7
	adc  e                                           ; $7ae1: $8b
	nop                                              ; $7ae2: $00
	add  b                                           ; $7ae3: $80
	inc  c                                           ; $7ae4: $0c
	nop                                              ; $7ae5: $00
	rrca                                             ; $7ae6: $0f
	add  h                                           ; $7ae7: $84
	rst  $38                                         ; $7ae8: $ff

jr_071_7ae9:
	ld   bc, $e0f0                                   ; $7ae9: $01 $f0 $e0
	add  h                                           ; $7aec: $84
	db   $10                                         ; $7aed: $10
	ld   bc, $0f1f                                   ; $7aee: $01 $1f $0f
	add  c                                           ; $7af1: $81
	rst  $38                                         ; $7af2: $ff
	nop                                              ; $7af3: $00
	rst  $30                                         ; $7af4: $f7
	add  b                                           ; $7af5: $80
	ld   hl, sp-$7d                                  ; $7af6: $f8 $83
	ld   [rRAMG], sp                                 ; $7af8: $08 $00 $00
	add  b                                           ; $7afb: $80
	rra                                              ; $7afc: $1f
	add  c                                           ; $7afd: $81
	rst  $38                                         ; $7afe: $ff
	nop                                              ; $7aff: $00
	ei                                               ; $7b00: $fb
	add  b                                           ; $7b01: $80
	db   $fc                                         ; $7b02: $fc
	add  e                                           ; $7b03: $83
	inc  b                                           ; $7b04: $04
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	add  b                                           ; $7b07: $80
	rra                                              ; $7b08: $1f
	add  d                                           ; $7b09: $82
	rst  $38                                         ; $7b0a: $ff
	ld   bc, $f8fc                                   ; $7b0b: $01 $fc $f8
	add  e                                           ; $7b0e: $83
	inc  b                                           ; $7b0f: $04
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	add  b                                           ; $7b12: $80
	ccf                                              ; $7b13: $3f
	add  e                                           ; $7b14: $83
	rst  $38                                         ; $7b15: $ff
	dec  bc                                          ; $7b16: $0b
	or   $06                                         ; $7b17: $f6 $06
	nop                                              ; $7b19: $00
	ld   bc, $0302                                   ; $7b1a: $01 $02 $03
	ld   b, $76                                      ; $7b1d: $06 $76
	ld   l, l                                        ; $7b1f: $6d
	db   $ed                                         ; $7b20: $ed
	ldh  [$e1], a                                    ; $7b21: $e0 $e1
	add  b                                           ; $7b23: $80
	db   $eb                                         ; $7b24: $eb
	dec  d                                           ; $7b25: $15
	call z, $f5cf                                    ; $7b26: $cc $cf $f5
	ld   c, b                                        ; $7b29: $48
	ld   [$a0c8], sp                                 ; $7b2a: $08 $c8 $a0
	cp   a                                           ; $7b2d: $bf
	rst  $38                                         ; $7b2e: $ff
	ld   a, a                                        ; $7b2f: $7f
	sbc  a                                           ; $7b30: $9f
	rst  JumpTable                                         ; $7b31: $df
	rra                                              ; $7b32: $1f
	rst  JumpTable                                         ; $7b33: $df
	call c, Call_071_6bff                            ; $7b34: $dc $ff $6b
	rst  $30                                         ; $7b37: $f7
	ld   e, d                                        ; $7b38: $5a
	ld   a, a                                        ; $7b39: $7f
	ld   [bc], a                                     ; $7b3a: $02
	ld   hl, sp-$7e                                  ; $7b3b: $f8 $82
	rst  $38                                         ; $7b3d: $ff
	dec  bc                                          ; $7b3e: $0b
	cp   $ff                                         ; $7b3f: $fe $ff
	push hl                                          ; $7b41: $e5

jr_071_7b42:
	rst  $38                                         ; $7b42: $ff
	sbc  d                                           ; $7b43: $9a
	cp   $70                                         ; $7b44: $fe $70
	ldh  a, [$a8]                                    ; $7b46: $f0 $a8
	rst  $38                                         ; $7b48: $ff
	xor  b                                           ; $7b49: $a8
	nop                                              ; $7b4a: $00
	add  b                                           ; $7b4b: $80
	ld   hl, sp-$80                                  ; $7b4c: $f8 $80
	rst  $38                                         ; $7b4e: $ff
	dec  b                                           ; $7b4f: $05
	ccf                                              ; $7b50: $3f
	rst  $38                                         ; $7b51: $ff
	pop  bc                                          ; $7b52: $c1
	rst  $38                                         ; $7b53: $ff
	ld   a, [hl]                                     ; $7b54: $7e
	ld   a, a                                        ; $7b55: $7f
	add  b                                           ; $7b56: $80
	nop                                              ; $7b57: $00
	ld   bc, $fe01                                   ; $7b58: $01 $01 $fe
	add  b                                           ; $7b5b: $80
	inc  bc                                          ; $7b5c: $03
	add  b                                           ; $7b5d: $80
	nop                                              ; $7b5e: $00
	add  d                                           ; $7b5f: $82
	rst  $38                                         ; $7b60: $ff
	inc  bc                                          ; $7b61: $03
	ld   d, a                                        ; $7b62: $57
	rst  $38                                         ; $7b63: $ff
	xor  b                                           ; $7b64: $a8
	rst  $38                                         ; $7b65: $ff
	add  b                                           ; $7b66: $80
	sub  a                                           ; $7b67: $97
	ld   bc, $00ff                                   ; $7b68: $01 $ff $00
	add  b                                           ; $7b6b: $80
	rst  $38                                         ; $7b6c: $ff
	add  b                                           ; $7b6d: $80
	nop                                              ; $7b6e: $00
	add  d                                           ; $7b6f: $82
	rst  $38                                         ; $7b70: $ff
	rlca                                             ; $7b71: $07
	ld   l, e                                        ; $7b72: $6b
	rst  $38                                         ; $7b73: $ff
	or   h                                           ; $7b74: $b4
	rst  $38                                         ; $7b75: $ff
	jp   nc, $fdf2                                   ; $7b76: $d2 $f2 $fd

	ld   [bc], a                                     ; $7b79: $02
	add  b                                           ; $7b7a: $80
	rst  $38                                         ; $7b7b: $ff
	add  d                                           ; $7b7c: $82
	ld   [bc], a                                     ; $7b7d: $02
	add  b                                           ; $7b7e: $80
	db   $fc                                         ; $7b7f: $fc
	add  b                                           ; $7b80: $80
	rst  $38                                         ; $7b81: $ff
	dec  b                                           ; $7b82: $05
	rlca                                             ; $7b83: $07
	rst  $38                                         ; $7b84: $ff
	ld   b, a                                        ; $7b85: $47
	ld   a, h                                        ; $7b86: $7c
	db   $d3                                         ; $7b87: $d3
	db   $10                                         ; $7b88: $10
	add  b                                           ; $7b89: $80
	rst  $38                                         ; $7b8a: $ff
	add  d                                           ; $7b8b: $82
	add  d                                           ; $7b8c: $82
	add  b                                           ; $7b8d: $80
	add  e                                           ; $7b8e: $83
	nop                                              ; $7b8f: $00
	rst  $38                                         ; $7b90: $ff
	add  b                                           ; $7b91: $80
	db   $fc                                         ; $7b92: $fc
	inc  b                                           ; $7b93: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b94: $cf
	adc  $f1                                         ; $7b95: $ce $f1
	ld   c, [hl]                                     ; $7b97: $4e
	ld   b, c                                        ; $7b98: $41
	add  b                                           ; $7b99: $80
	rst  $38                                         ; $7b9a: $ff
	add  b                                           ; $7b9b: $80
	ld   [$0980], sp                                 ; $7b9c: $08 $80 $09
	nop                                              ; $7b9f: $00
	rst  $38                                         ; $7ba0: $ff
	add  b                                           ; $7ba1: $80
	cp   $80                                         ; $7ba2: $fe $80
	ldh  [rDIV], a                                   ; $7ba4: $e0 $04
	rlca                                             ; $7ba6: $07
	rst  ToBoot                                         ; $7ba7: $c7
	ld   hl, sp-$3d                                  ; $7ba8: $f8 $c3
	inc  b                                           ; $7baa: $04
	add  b                                           ; $7bab: $80
	rst  $38                                         ; $7bac: $ff
	ld   [bc], a                                     ; $7bad: $02
	ccf                                              ; $7bae: $3f
	inc  a                                           ; $7baf: $3c
	db   $fc                                         ; $7bb0: $fc
	add  b                                           ; $7bb1: $80
	pop  bc                                          ; $7bb2: $c1
	add  b                                           ; $7bb3: $80
	ld   e, $80                                      ; $7bb4: $1e $80
	ldh  [$81], a                                    ; $7bb6: $e0 $81
	nop                                              ; $7bb8: $00
	ld   [bc], a                                     ; $7bb9: $02
	ret  nz                                          ; $7bba: $c0

	jr   c, @-$06                                    ; $7bbb: $38 $f8

	add  b                                           ; $7bbd: $80
	rst  ToBoot                                         ; $7bbe: $c7
	add  b                                           ; $7bbf: $80
	jr   c, jr_071_7b42                              ; $7bc0: $38 $80

	ret  nz                                          ; $7bc2: $c0

	add  c                                           ; $7bc3: $81
	nop                                              ; $7bc4: $00
	add  b                                           ; $7bc5: $80
	add  b                                           ; $7bc6: $80
	add  b                                           ; $7bc7: $80
	nop                                              ; $7bc8: $00
	jr   nc, jr_071_7bcc                             ; $7bc9: $30 $01

	adc  [hl]                                        ; $7bcb: $8e

jr_071_7bcc:
	rrca                                             ; $7bcc: $0f
	nop                                              ; $7bcd: $00
	rst  $38                                         ; $7bce: $ff
	add  d                                           ; $7bcf: $82
	db   $fd                                         ; $7bd0: $fd
	add  d                                           ; $7bd1: $82
	cp   $85                                         ; $7bd2: $fe $85
	rst  $38                                         ; $7bd4: $ff
	ld   bc, $1fe0                                   ; $7bd5: $01 $e0 $1f
	add  b                                           ; $7bd8: $80
	ccf                                              ; $7bd9: $3f
	inc  a                                           ; $7bda: $3c
	ld   e, $9f                                      ; $7bdb: $1e $9f
	sbc  l                                           ; $7bdd: $9d
	sbc  [hl]                                        ; $7bde: $9e
	sub  d                                           ; $7bdf: $92
	ld   e, h                                        ; $7be0: $5c
	ld   b, h                                        ; $7be1: $44
	ld   a, b                                        ; $7be2: $78
	ld   h, b                                        ; $7be3: $60
	ldh  a, [$e0]                                    ; $7be4: $f0 $e0
	ret  nz                                          ; $7be6: $c0

	ld   b, c                                        ; $7be7: $41
	pop  bc                                          ; $7be8: $c1
	ld   b, d                                        ; $7be9: $42
	add  d                                           ; $7bea: $82
	add  [hl]                                        ; $7beb: $86
	rlca                                             ; $7bec: $07
	dec  c                                           ; $7bed: $0d

jr_071_7bee:
	rrca                                             ; $7bee: $0f
	dec  de                                          ; $7bef: $1b
	rra                                              ; $7bf0: $1f
	scf                                              ; $7bf1: $37
	ccf                                              ; $7bf2: $3f
	ld   l, a                                        ; $7bf3: $6f
	ld   a, a                                        ; $7bf4: $7f
	rst  JumpTable                                         ; $7bf5: $df
	rst  $38                                         ; $7bf6: $ff
	ret  nz                                          ; $7bf7: $c0

	adc  b                                           ; $7bf8: $88
	ld   c, b                                        ; $7bf9: $48
	ccf                                              ; $7bfa: $3f

Jump_071_7bfb:
	add  b                                           ; $7bfb: $80
	ld   a, [hl]                                     ; $7bfc: $7e

jr_071_7bfd:
	dec  h                                           ; $7bfd: $25
	ld   h, $c2                                      ; $7bfe: $26 $c2
	call nz, $fff3                                   ; $7c00: $c4 $f3 $ff
	add  hl, bc                                      ; $7c03: $09
	rlca                                             ; $7c04: $07
	ld   bc, $0906                                   ; $7c05: $01 $06 $09
	ld   b, $1e                                      ; $7c08: $06 $1e
	inc  c                                           ; $7c0a: $0c
	db   $e3                                         ; $7c0b: $e3
	nop                                              ; $7c0c: $00
	rst  JumpTable                                         ; $7c0d: $df
	ld   e, a                                        ; $7c0e: $5f
	inc  sp                                          ; $7c0f: $33
	xor  h                                           ; $7c10: $ac
	ld   bc, $9ebf                                   ; $7c11: $01 $bf $9e
	ld   h, c                                        ; $7c14: $61
	ld   e, l                                        ; $7c15: $5d
	ldh  a, [$0c]                                    ; $7c16: $f0 $0c
	add  c                                           ; $7c18: $81
	nop                                              ; $7c19: $00
	ld   [bc], a                                     ; $7c1a: $02
	rst  $38                                         ; $7c1b: $ff
	ld   hl, sp+$06                                  ; $7c1c: $f8 $06
	add  b                                           ; $7c1e: $80
	add  b                                           ; $7c1f: $80
	rrca                                             ; $7c20: $0f

jr_071_7c21:
	ld   a, [hl]                                     ; $7c21: $7e
	add  b                                           ; $7c22: $80
	db   $fd                                         ; $7c23: $fd
	ld   a, l                                        ; $7c24: $7d
	db   $fd                                         ; $7c25: $fd
	dec  c                                           ; $7c26: $0d
	db   $fd                                         ; $7c27: $fd
	push af                                          ; $7c28: $f5
	rra                                              ; $7c29: $1f
	jr   jr_071_7c5c                                 ; $7c2a: $18 $30

	ld   c, a                                        ; $7c2c: $4f
	rlca                                             ; $7c2d: $07
	ret  c                                           ; $7c2e: $d8

	ldh  [$c0], a                                    ; $7c2f: $e0 $c0
	add  b                                           ; $7c31: $80
	rst  $38                                         ; $7c32: $ff
	nop                                              ; $7c33: $00
	ld   [bc], a                                     ; $7c34: $02
	add  b                                           ; $7c35: $80
	jp   nz, $ff80                                   ; $7c36: $c2 $80 $ff

	ld   bc, $0200                                   ; $7c39: $01 $00 $02
	add  b                                           ; $7c3c: $80
	ld   bc, $ff02                                   ; $7c3d: $01 $02 $ff
	ldh  a, [$0d]                                    ; $7c40: $f0 $0d
	add  b                                           ; $7c42: $80
	nop                                              ; $7c43: $00
	add  b                                           ; $7c44: $80
	db   $fd                                         ; $7c45: $fd
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	add  b                                           ; $7c48: $80
	ld   bc, $fd80                                   ; $7c49: $01 $80 $fd
	ld   bc, $f8fa                                   ; $7c4c: $01 $fa $f8
	add  b                                           ; $7c4f: $80
	ret  nz                                          ; $7c50: $c0

	ld   [bc], a                                     ; $7c51: $02
	rst  $38                                         ; $7c52: $ff
	rra                                              ; $7c53: $1f
	ldh  [$80], a                                    ; $7c54: $e0 $80

jr_071_7c56:
	inc  bc                                          ; $7c56: $03
	ld   [bc], a                                     ; $7c57: $02
	db   $fc                                         ; $7c58: $fc
	ei                                               ; $7c59: $fb
	ld   h, a                                        ; $7c5a: $67
	add  b                                           ; $7c5b: $80

jr_071_7c5c:
	db   $fc                                         ; $7c5c: $fc
	inc  c                                           ; $7c5d: $0c
	ld   h, b                                        ; $7c5e: $60
	ld   h, e                                        ; $7c5f: $63
	ld   l, e                                        ; $7c60: $6b
	dec  b                                           ; $7c61: $05
	add  hl, bc                                      ; $7c62: $09
	add  hl, de                                      ; $7c63: $19
	ldh  [c], a                                      ; $7c64: $e2
	nop                                              ; $7c65: $00
	swap d                                           ; $7c66: $cb $32
	ldh  [c], a                                      ; $7c68: $e2
	add  sp, $0e                                     ; $7c69: $e8 $0e
	add  b                                           ; $7c6b: $80
	jr   c, jr_071_7bee                              ; $7c6c: $38 $80

	ldh  [rSB], a                                    ; $7c6e: $e0 $01
	or   b                                           ; $7c70: $b0
	or   d                                           ; $7c71: $b2
	add  b                                           ; $7c72: $80
	xor  a                                           ; $7c73: $af
	inc  bc                                          ; $7c74: $03
	jr   nz, jr_071_7c56                             ; $7c75: $20 $df

	nop                                              ; $7c77: $00
	rst  $38                                         ; $7c78: $ff
	add  d                                           ; $7c79: $82
	jr   nz, jr_071_7bfd                             ; $7c7a: $20 $81

	db   $10                                         ; $7c7c: $10
	ld   a, [bc]                                     ; $7c7d: $0a
	inc  de                                          ; $7c7e: $13
	dec  bc                                          ; $7c7f: $0b
	nop                                              ; $7c80: $00
	ldh  [$ac], a                                    ; $7c81: $e0 $ac
	ld   [hl], b                                     ; $7c83: $70
	rlc  b                                           ; $7c84: $cb $00
	push af                                          ; $7c86: $f5
	jr   jr_071_7ca4                                 ; $7c87: $18 $1b

	add  c                                           ; $7c89: $81
	jr   @+$08                                       ; $7c8a: $18 $06

	pop  af                                          ; $7c8c: $f1
	ld   hl, sp-$68                                  ; $7c8d: $f8 $98
	sub  h                                           ; $7c8f: $94
	db   $ed                                         ; $7c90: $ed
	ld   hl, sp-$02                                  ; $7c91: $f8 $fe
	add  b                                           ; $7c93: $80
	rst  $38                                         ; $7c94: $ff
	ld   [bc], a                                     ; $7c95: $02
	nop                                              ; $7c96: $00
	add  b                                           ; $7c97: $80
	ld   a, a                                        ; $7c98: $7f
	add  b                                           ; $7c99: $80
	ld   e, $80                                      ; $7c9a: $1e $80
	jr   jr_071_7c9f                                 ; $7c9c: $18 $01

	and  b                                           ; $7c9e: $a0

jr_071_7c9f:
	jr   nz, jr_071_7c21                             ; $7c9f: $20 $80

	ld   b, b                                        ; $7ca1: $40
	jr   nz, jr_071_7cfb                             ; $7ca2: $20 $57

jr_071_7ca4:
	add  b                                           ; $7ca4: $80
	ld   a, h                                        ; $7ca5: $7c
	nop                                              ; $7ca6: $00
	inc  d                                           ; $7ca7: $14
	add  sp, -$03                                    ; $7ca8: $e8 $fd
	jr   nz, jr_071_7ccb                             ; $7caa: $20 $1f

	db   $10                                         ; $7cac: $10
	rrca                                             ; $7cad: $0f
	ld   a, [bc]                                     ; $7cae: $0a

jr_071_7caf:
	dec  b                                           ; $7caf: $05
	inc  b                                           ; $7cb0: $04
	inc  bc                                          ; $7cb1: $03
	ld   [bc], a                                     ; $7cb2: $02
	ld   hl, sp+$1f                                  ; $7cb3: $f8 $1f
	sbc  c                                           ; $7cb5: $99
	adc  a                                           ; $7cb6: $8f
	adc  [hl]                                        ; $7cb7: $8e
	add  e                                           ; $7cb8: $83
	db   $e3                                         ; $7cb9: $e3
	pop  hl                                          ; $7cba: $e1
	ld   [hl], c                                     ; $7cbb: $71
	ldh  a, [$38]                                    ; $7cbc: $f0 $38
	ld   hl, sp+$1c                                  ; $7cbe: $f8 $1c
	db   $fc                                         ; $7cc0: $fc
	ld   c, $fe                                      ; $7cc1: $0e $fe
	and  b                                           ; $7cc3: $a0
	add  d                                           ; $7cc4: $82
	rrca                                             ; $7cc5: $0f
	add  e                                           ; $7cc6: $83
	rlca                                             ; $7cc7: $07
	nop                                              ; $7cc8: $00
	rrca                                             ; $7cc9: $0f
	add  e                                           ; $7cca: $83

jr_071_7ccb:
	dec  bc                                          ; $7ccb: $0b
	nop                                              ; $7ccc: $00
	di                                               ; $7ccd: $f3
	add  b                                           ; $7cce: $80
	rst  $38                                         ; $7ccf: $ff
	add  b                                           ; $7cd0: $80
	cp   $80                                         ; $7cd1: $fe $80
	db   $fc                                         ; $7cd3: $fc
	add  b                                           ; $7cd4: $80
	ld   hl, sp-$80                                  ; $7cd5: $f8 $80
	ldh  a, [$80]                                    ; $7cd7: $f0 $80
	ldh  [$80], a                                    ; $7cd9: $e0 $80
	ret  nz                                          ; $7cdb: $c0

	ld   [bc], a                                     ; $7cdc: $02
	add  b                                           ; $7cdd: $80
	add  c                                           ; $7cde: $81
	ld   bc, $0280                                   ; $7cdf: $01 $80 $02
	add  b                                           ; $7ce2: $80
	dec  b                                           ; $7ce3: $05
	ld   a, [bc]                                     ; $7ce4: $0a
	ld   a, [bc]                                     ; $7ce5: $0a
	dec  bc                                          ; $7ce6: $0b
	inc  d                                           ; $7ce7: $14
	rla                                              ; $7ce8: $17
	jr   z, jr_071_7d1a                              ; $7ce9: $28 $2f

	ld   d, c                                        ; $7ceb: $51
	ld   e, a                                        ; $7cec: $5f
	and  e                                           ; $7ced: $a3
	cp   a                                           ; $7cee: $bf
	rla                                              ; $7cef: $17
	add  b                                           ; $7cf0: $80
	ld   a, a                                        ; $7cf1: $7f
	add  d                                           ; $7cf2: $82
	rst  $38                                         ; $7cf3: $ff
	add  b                                           ; $7cf4: $80
	ld   d, l                                        ; $7cf5: $55
	add  l                                           ; $7cf6: $85
	rst  $38                                         ; $7cf7: $ff
	inc  b                                           ; $7cf8: $04
	inc  bc                                          ; $7cf9: $03
	ld   [bc], a                                     ; $7cfa: $02

jr_071_7cfb:
	jp   nz, $fcc1                                   ; $7cfb: $c2 $c1 $fc

	add  b                                           ; $7cfe: $80
	ld   a, [$4004]                                  ; $7cff: $fa $04 $40
	ld   b, d                                        ; $7d02: $42
	db   $f4                                         ; $7d03: $f4
	or   $ee                                         ; $7d04: $f6 $ee
	add  c                                           ; $7d06: $81
	rst  $28                                         ; $7d07: $ef
	inc  b                                           ; $7d08: $04
	rst  JumpTable                                         ; $7d09: $df
	inc  hl                                          ; $7d0a: $23
	nop                                              ; $7d0b: $00
	ld   [bc], a                                     ; $7d0c: $02
	ld   bc, $0280                                   ; $7d0d: $01 $80 $02
	inc  bc                                          ; $7d10: $03

jr_071_7d11:
	xor  d                                           ; $7d11: $aa
	nop                                              ; $7d12: $00
	xor  d                                           ; $7d13: $aa
	nop                                              ; $7d14: $00
	add  b                                           ; $7d15: $80
	ld   b, $80                                      ; $7d16: $06 $80
	inc  c                                           ; $7d18: $0c
	add  b                                           ; $7d19: $80

jr_071_7d1a:
	db   $fc                                         ; $7d1a: $fc
	dec  bc                                          ; $7d1b: $0b
	ldh  [$ef], a                                    ; $7d1c: $e0 $ef
	rst  $38                                         ; $7d1e: $ff
	jr   c, jr_071_7d11                              ; $7d1f: $38 $f0

	nop                                              ; $7d21: $00
	add  a                                           ; $7d22: $87
	nop                                              ; $7d23: $00
	and  b                                           ; $7d24: $a0
	dec  d                                           ; $7d25: $15
	dec  de                                          ; $7d26: $1b
	ld   bc, $0280                                   ; $7d27: $01 $80 $02
	ld   [bc], a                                     ; $7d2a: $02
	ld   [hl-], a                                    ; $7d2b: $32
	ld   [bc], a                                     ; $7d2c: $02
	jr   nz, jr_071_7caf                             ; $7d2d: $20 $80

	rst  $38                                         ; $7d2f: $ff
	add  c                                           ; $7d30: $81
	inc  b                                           ; $7d31: $04
	ld   a, [bc]                                     ; $7d32: $0a
	ei                                               ; $7d33: $fb
	ld   b, b                                        ; $7d34: $40
	ld   l, [hl]                                     ; $7d35: $6e
	push de                                          ; $7d36: $d5
	db   $fc                                         ; $7d37: $fc
	inc  b                                           ; $7d38: $04
	sbc  l                                           ; $7d39: $9d
	ld   h, d                                        ; $7d3a: $62
	ld   b, e                                        ; $7d3b: $43
	ld   b, c                                        ; $7d3c: $41
	inc  bc                                          ; $7d3d: $03
	add  b                                           ; $7d3e: $80
	db   $fd                                         ; $7d3f: $fd
	add  c                                           ; $7d40: $81
	nop                                              ; $7d41: $00
	ld   [bc], a                                     ; $7d42: $02
	db   $fd                                         ; $7d43: $fd
	nop                                              ; $7d44: $00
	db   $fd                                         ; $7d45: $fd
	add  b                                           ; $7d46: $80
	ld   bc, $0405                                   ; $7d47: $01 $05 $04
	db   $f4                                         ; $7d4a: $f4
	ld   [$10fd], sp                                 ; $7d4b: $08 $fd $10
	rla                                              ; $7d4e: $17
	add  b                                           ; $7d4f: $80
	cp   $80                                         ; $7d50: $fe $80
	ld   b, e                                        ; $7d52: $43
	inc  b                                           ; $7d53: $04
	pop  bc                                          ; $7d54: $c1
	ld   a, $1d                                      ; $7d55: $3e $1d
	ldh  [c], a                                      ; $7d57: $e2
	nop                                              ; $7d58: $00
	add  b                                           ; $7d59: $80
	ccf                                              ; $7d5a: $3f

jr_071_7d5b:
	add  b                                           ; $7d5b: $80
	ld   h, b                                        ; $7d5c: $60
	ld   e, $e0                                      ; $7d5d: $1e $e0
	jr   jr_071_7d5b                                 ; $7d5f: $18 $fa

	ld   [$040b], sp                                 ; $7d61: $08 $0b $04
	nop                                              ; $7d64: $00
	add  [hl]                                        ; $7d65: $86
	inc  a                                           ; $7d66: $3c
	ld   d, b                                        ; $7d67: $50
	xor  $60                                         ; $7d68: $ee $60
	and  h                                           ; $7d6a: $a4
	push af                                          ; $7d6b: $f5
	sub  d                                           ; $7d6c: $92
	cp   d                                           ; $7d6d: $ba
	ld   c, b                                        ; $7d6e: $48
	ld   e, a                                        ; $7d6f: $5f
	rlca                                             ; $7d70: $07
	inc  c                                           ; $7d71: $0c
	ld   e, b                                        ; $7d72: $58
	ld   e, [hl]                                     ; $7d73: $5e
	jp   nz, Jump_071_7ec1                           ; $7d74: $c2 $c1 $7e

	ld   hl, sp-$79                                  ; $7d77: $f8 $87
	ld   b, b                                        ; $7d79: $40
	jp   $2023                                       ; $7d7a: $c3 $23 $20


	add  b                                           ; $7d7d: $80
	ld   a, a                                        ; $7d7e: $7f
	inc  de                                          ; $7d7f: $13
	db   $10                                         ; $7d80: $10
	sub  c                                           ; $7d81: $91
	dec  d                                           ; $7d82: $15
	inc  d                                           ; $7d83: $14
	ld   [de], a                                     ; $7d84: $12
	ld   d, $26                                      ; $7d85: $16 $26
	db   $dd                                         ; $7d87: $dd
	nop                                              ; $7d88: $00
	rst  $30                                         ; $7d89: $f7
	cp   c                                           ; $7d8a: $b9
	or   c                                           ; $7d8b: $b1
	rst  $38                                         ; $7d8c: $ff
	rst  $30                                         ; $7d8d: $f7
	ld   c, b                                        ; $7d8e: $48
	ld   c, h                                        ; $7d8f: $4c
	inc  l                                           ; $7d90: $2c
	ld   h, b                                        ; $7d91: $60
	nop                                              ; $7d92: $00
	ld   h, b                                        ; $7d93: $60
	add  c                                           ; $7d94: $81
	nop                                              ; $7d95: $00
	dec  b                                           ; $7d96: $05
	rst  JumpTable                                         ; $7d97: $df
	ldh  [rIF], a                                    ; $7d98: $e0 $0f
	ld   l, a                                        ; $7d9a: $6f
	scf                                              ; $7d9b: $37
	ret  nz                                          ; $7d9c: $c0

	add  b                                           ; $7d9d: $80
	add  b                                           ; $7d9e: $80
	inc  bc                                          ; $7d9f: $03
	adc  h                                           ; $7da0: $8c
	add  b                                           ; $7da1: $80
	add  l                                           ; $7da2: $85
	ld   bc, $0280                                   ; $7da3: $01 $80 $02
	add  b                                           ; $7da6: $80
	dec  b                                           ; $7da7: $05
	inc  b                                           ; $7da8: $04
	rst  $38                                         ; $7da9: $ff
	nop                                              ; $7daa: $00
	cp   $f1                                         ; $7dab: $fe $f1
	ldh  a, [$80]                                    ; $7dad: $f0 $80
	ld   c, $80                                      ; $7daf: $0e $80
	ld   bc, $0011                                   ; $7db1: $01 $11 $00
	ld   e, a                                        ; $7db4: $5f
	ld   [$20fc], sp                                 ; $7db5: $08 $fc $20
	sbc  $00                                         ; $7db8: $de $00
	xor  d                                           ; $7dba: $aa
	nop                                              ; $7dbb: $00
	xor  d                                           ; $7dbc: $aa
	nop                                              ; $7dbd: $00
	ld   a, a                                        ; $7dbe: $7f
	nop                                              ; $7dbf: $00
	ccf                                              ; $7dc0: $3f
	ret  nz                                          ; $7dc1: $c0

	rst  JumpTable                                         ; $7dc2: $df
	ld   h, b                                        ; $7dc3: $60
	ld   l, d                                        ; $7dc4: $6a
	add  l                                           ; $7dc5: $85
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	jp   nc, $ed85                                   ; $7dc8: $d2 $85 $ed

	nop                                              ; $7dcb: $00
	ccf                                              ; $7dcc: $3f
	add  l                                           ; $7dcd: $85
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	ld   sp, hl                                      ; $7dd0: $f9
	add  l                                           ; $7dd1: $85
	ld   b, $00                                      ; $7dd2: $06 $00
	rst  $38                                         ; $7dd4: $ff
	add  l                                           ; $7dd5: $85
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	ccf                                              ; $7dd8: $3f
	add  l                                           ; $7dd9: $85
	ret  nz                                          ; $7dda: $c0

	nop                                              ; $7ddb: $00
	rst  $38                                         ; $7ddc: $ff
	add  l                                           ; $7ddd: $85
	nop                                              ; $7dde: $00
	ld   bc, $a050                                   ; $7ddf: $01 $50 $a0
	add  b                                           ; $7de2: $80
	ld   b, b                                        ; $7de3: $40
	add  b                                           ; $7de4: $80
	and  b                                           ; $7de5: $a0
	add  b                                           ; $7de6: $80
	ld   b, b                                        ; $7de7: $40
	nop                                              ; $7de8: $00
	or   e                                           ; $7de9: $b3
	add  c                                           ; $7dea: $81
	cp   [hl]                                        ; $7deb: $be
	rlca                                             ; $7dec: $07
	add  [hl]                                        ; $7ded: $86
	add  a                                           ; $7dee: $87
	adc  b                                           ; $7def: $88
	adc  e                                           ; $7df0: $8b
	sub  d                                           ; $7df1: $92
	sub  e                                           ; $7df2: $93
	adc  b                                           ; $7df3: $88
	adc  c                                           ; $7df4: $89
	add  b                                           ; $7df5: $80
	sub  h                                           ; $7df6: $94
	add  b                                           ; $7df7: $80
	adc  d                                           ; $7df8: $8a
	add  e                                           ; $7df9: $83
	nop                                              ; $7dfa: $00
	inc  c                                           ; $7dfb: $0c
	rst  $38                                         ; $7dfc: $ff
	ld   [bc], a                                     ; $7dfd: $02
	db   $fd                                         ; $7dfe: $fd
	ld   e, $de                                      ; $7dff: $1e $de
	pop  bc                                          ; $7e01: $c1
	pop  hl                                          ; $7e02: $e1
	ld   h, a                                        ; $7e03: $67
	rst  $30                                         ; $7e04: $f7
	ld   bc, $3c4f                                   ; $7e05: $01 $4f $3c
	ld   a, [bc]                                     ; $7e08: $0a
	add  b                                           ; $7e09: $80
	add  hl, bc                                      ; $7e0a: $09
	inc  bc                                          ; $7e0b: $03
	ld   [bc], a                                     ; $7e0c: $02
	ld   a, [$e919]                                  ; $7e0d: $fa $19 $e9
	add  b                                           ; $7e10: $80
	inc  [hl]                                        ; $7e11: $34
	add  b                                           ; $7e12: $80
	ld   e, $05                                      ; $7e13: $1e $05
	db   $eb                                         ; $7e15: $eb
	rst  $38                                         ; $7e16: $ff
	ld   h, e                                        ; $7e17: $63
	jp   nc, $802a                                   ; $7e18: $d2 $2a $80

	add  b                                           ; $7e1b: $80
	ld   b, b                                        ; $7e1c: $40
	add  b                                           ; $7e1d: $80
	nop                                              ; $7e1e: $00
	add  b                                           ; $7e1f: $80
	ld   b, b                                        ; $7e20: $40
	add  d                                           ; $7e21: $82
	db   $10                                         ; $7e22: $10
	add  d                                           ; $7e23: $82
	jr   nc, jr_071_7e27                             ; $7e24: $30 $01

	db   $ed                                         ; $7e26: $ed

jr_071_7e27:
	db   $e3                                         ; $7e27: $e3
	add  b                                           ; $7e28: $80
	ld   sp, hl                                      ; $7e29: $f9
	ld   bc, $3e3f                                   ; $7e2a: $01 $3f $3e
	add  b                                           ; $7e2d: $80
	adc  a                                           ; $7e2e: $8f
	add  b                                           ; $7e2f: $80
	db   $e3                                         ; $7e30: $e3
	add  c                                           ; $7e31: $81
	ld   hl, sp+$05                                  ; $7e32: $f8 $05
	ld   sp, hl                                      ; $7e34: $f9
	ld   sp, $2232                                   ; $7e35: $31 $32 $22

jr_071_7e38:
	rst  $38                                         ; $7e38: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e39: $cf
	add  b                                           ; $7e3a: $80
	rst  $38                                         ; $7e3b: $ff
	ld   d, $7f                                      ; $7e3c: $16 $7f
	ld   b, b                                        ; $7e3e: $40
	jr   jr_071_7e6d                                 ; $7e3f: $18 $2c

	ld   b, h                                        ; $7e41: $44
	ld   e, a                                        ; $7e42: $5f
	add  b                                           ; $7e43: $80
	rst  $38                                         ; $7e44: $ff
	ld   a, a                                        ; $7e45: $7f
	nop                                              ; $7e46: $00
	rst  $38                                         ; $7e47: $ff
	or   b                                           ; $7e48: $b0
	rst  $38                                         ; $7e49: $ff
	sbc  a                                           ; $7e4a: $9f
	rst  $38                                         ; $7e4b: $ff
	rst  $30                                         ; $7e4c: $f7
	rst  $38                                         ; $7e4d: $ff
	ld   bc, $1a35                                   ; $7e4e: $01 $35 $1a
	ld   [$01ff], sp                                 ; $7e51: $08 $ff $01
	add  b                                           ; $7e54: $80
	rst  $38                                         ; $7e55: $ff
	ld   b, $c0                                      ; $7e56: $06 $c0
	rst  $38                                         ; $7e58: $ff
	ld   h, b                                        ; $7e59: $60
	ldh  a, [rLCDC]                                  ; $7e5a: $f0 $40
	ldh  a, [$e0]                                    ; $7e5c: $f0 $e0
	add  l                                           ; $7e5e: $85
	ldh  a, [rP1]                                    ; $7e5f: $f0 $00
	nop                                              ; $7e61: $00
	add  c                                           ; $7e62: $81
	ldh  a, [rP1]                                    ; $7e63: $f0 $00
	rst  $38                                         ; $7e65: $ff
	add  b                                           ; $7e66: $80
	cpl                                              ; $7e67: $2f
	add  d                                           ; $7e68: $82
	ld   e, a                                        ; $7e69: $5f
	add  d                                           ; $7e6a: $82
	cp   a                                           ; $7e6b: $bf
	add  b                                           ; $7e6c: $80

jr_071_7e6d:
	ld   a, a                                        ; $7e6d: $7f
	add  b                                           ; $7e6e: $80
	ccf                                              ; $7e6f: $3f
	add  b                                           ; $7e70: $80
	rra                                              ; $7e71: $1f
	add  h                                           ; $7e72: $84
	rst  $38                                         ; $7e73: $ff
	add  c                                           ; $7e74: $81
	cp   $00                                         ; $7e75: $fe $00
	rst  $38                                         ; $7e77: $ff
	add  c                                           ; $7e78: $81
	db   $fd                                         ; $7e79: $fd
	dec  b                                           ; $7e7a: $05

jr_071_7e7b:
	db   $fc                                         ; $7e7b: $fc
	ld   hl, sp-$19                                  ; $7e7c: $f8 $e7
	sbc  a                                           ; $7e7e: $9f
	rst  ToBoot                                         ; $7e7f: $c7
	ld   b, a                                        ; $7e80: $47

jr_071_7e81:
	add  b                                           ; $7e81: $80
	ld   [hl], c                                     ; $7e82: $71
	add  b                                           ; $7e83: $80
	db   $fc                                         ; $7e84: $fc
	add  a                                           ; $7e85: $87
	rst  $38                                         ; $7e86: $ff
	add  e                                           ; $7e87: $83
	ldh  a, [$80]                                    ; $7e88: $f0 $80
	ld   [hl], b                                     ; $7e8a: $70
	add  b                                           ; $7e8b: $80
	db   $10                                         ; $7e8c: $10
	add  b                                           ; $7e8d: $80
	ret  nz                                          ; $7e8e: $c0

	add  d                                           ; $7e8f: $82
	ldh  a, [rP1]                                    ; $7e90: $f0 $00
	ld   [hl+], a                                    ; $7e92: $22
	add  c                                           ; $7e93: $81
	db   $ed                                         ; $7e94: $ed
	inc  bc                                          ; $7e95: $03
	db   $ec                                         ; $7e96: $ec
	db   $ed                                         ; $7e97: $ed
	xor  $ef                                         ; $7e98: $ee $ef
	add  b                                           ; $7e9a: $80
	di                                               ; $7e9b: $f3
	add  b                                           ; $7e9c: $80
	rst  $38                                         ; $7e9d: $ff
	add  d                                           ; $7e9e: $82
	ldh  [rSB], a                                    ; $7e9f: $e0 $01
	add  $06                                         ; $7ea1: $c6 $06
	add  b                                           ; $7ea3: $80
	ld   [hl], $03                                   ; $7ea4: $36 $03
	nop                                              ; $7ea6: $00
	cp   $00                                         ; $7ea7: $fe $00
	cp   $82                                         ; $7ea9: $fe $82
	rst  $38                                         ; $7eab: $ff
	add  d                                           ; $7eac: $82
	nop                                              ; $7ead: $00
	add  d                                           ; $7eae: $82
	ret  nz                                          ; $7eaf: $c0

	inc  bc                                          ; $7eb0: $03
	ret  nc                                          ; $7eb1: $d0

	ldh  a, [$d8]                                    ; $7eb2: $f0 $d8
	ld   hl, sp-$80                                  ; $7eb4: $f8 $80
	jr   c, jr_071_7e38                              ; $7eb6: $38 $80

	ldh  a, [$82]                                    ; $7eb8: $f0 $82
	nop                                              ; $7eba: $00
	ld   bc, $a0af                                   ; $7ebb: $01 $af $a0
	add  b                                           ; $7ebe: $80
	ld   b, b                                        ; $7ebf: $40
	add  b                                           ; $7ec0: $80

Jump_071_7ec1:
	and  b                                           ; $7ec1: $a0
	add  b                                           ; $7ec2: $80
	ld   b, b                                        ; $7ec3: $40
	add  b                                           ; $7ec4: $80
	and  b                                           ; $7ec5: $a0
	add  b                                           ; $7ec6: $80
	ld   b, b                                        ; $7ec7: $40
	add  b                                           ; $7ec8: $80
	and  b                                           ; $7ec9: $a0
	add  b                                           ; $7eca: $80
	ld   b, b                                        ; $7ecb: $40
	ld   bc, $c3cc                                   ; $7ecc: $01 $cc $c3
	add  b                                           ; $7ecf: $80
	ret  z                                           ; $7ed0: $c8

	add  h                                           ; $7ed1: $84
	rlc  a                                           ; $7ed2: $cb $07
	jp   z, $cacb                                    ; $7ed4: $ca $cb $ca

	set  1, d                                        ; $7ed7: $cb $ca
	bit  7, [hl]                                     ; $7ed9: $cb $7e
	ld   a, a                                        ; $7edb: $7f
	add  b                                           ; $7edc: $80
	nop                                              ; $7edd: $00
	add  h                                           ; $7ede: $84
	sbc  a                                           ; $7edf: $9f
	rlca                                             ; $7ee0: $07
	ld   [$60ff], a                                  ; $7ee1: $ea $ff $60
	rst  $38                                         ; $7ee4: $ff
	ld   h, b                                        ; $7ee5: $60
	rst  $38                                         ; $7ee6: $ff
	ld   [$80ff], a                                  ; $7ee7: $ea $ff $80
	nop                                              ; $7eea: $00
	add  b                                           ; $7eeb: $80
	inc  hl                                          ; $7eec: $23
	add  b                                           ; $7eed: $80
	ld   h, $80                                      ; $7eee: $26 $80
	inc  l                                           ; $7ef0: $2c
	rlca                                             ; $7ef1: $07
	ret  z                                           ; $7ef2: $c8

	jp   hl                                          ; $7ef3: $e9


	call nz, $c9e7                                   ; $7ef4: $c4 $e7 $c9
	rst  $28                                         ; $7ef7: $ef
	dec  de                                          ; $7ef8: $1b
	jr   nc, jr_071_7e7b                             ; $7ef9: $30 $80

	or   b                                           ; $7efb: $b0
	add  h                                           ; $7efc: $84
	jr   nc, jr_071_7e81                             ; $7efd: $30 $82

	or   b                                           ; $7eff: $b0
	add  b                                           ; $7f00: $80
	ld   b, b                                        ; $7f01: $40
	inc  bc                                          ; $7f02: $03
	adc  a                                           ; $7f03: $8f
	add  d                                           ; $7f04: $82
	jp   nz, $80c5                                   ; $7f05: $c2 $c5 $80

	push hl                                          ; $7f08: $e5
	inc  b                                           ; $7f09: $04
	push bc                                          ; $7f0a: $c5
	bit  1, e                                        ; $7f0b: $cb $4b
	ld   c, b                                        ; $7f0d: $48
	ld   [$1782], sp                                 ; $7f0e: $08 $82 $17
	add  b                                           ; $7f11: $80
	cpl                                              ; $7f12: $2f
	add  l                                           ; $7f13: $85
	rst  $38                                         ; $7f14: $ff
	ld   [bc], a                                     ; $7f15: $02
	nop                                              ; $7f16: $00
	rst  $38                                         ; $7f17: $ff
	nop                                              ; $7f18: $00
	add  h                                           ; $7f19: $84
	rst  $38                                         ; $7f1a: $ff
	ld   [bc], a                                     ; $7f1b: $02
	call z, $f3cf                                    ; $7f1c: $cc $cf $f3
	add  b                                           ; $7f1f: $80
	rst  $30                                         ; $7f20: $f7
	inc  b                                           ; $7f21: $04
	di                                               ; $7f22: $f3
	db   $e3                                         ; $7f23: $e3
	db   $ec                                         ; $7f24: $ec
	inc  c                                           ; $7f25: $0c
	rra                                              ; $7f26: $1f
	add  c                                           ; $7f27: $81
	rst  JumpTable                                         ; $7f28: $df
	rlca                                             ; $7f29: $07
	rst  $38                                         ; $7f2a: $ff
	cp   a                                           ; $7f2b: $bf
	adc  a                                           ; $7f2c: $8f
	ld   [hl], b                                     ; $7f2d: $70
	ldh  a, [$90]                                    ; $7f2e: $f0 $90
	ldh  a, [$e0]                                    ; $7f30: $f0 $e0
	add  b                                           ; $7f32: $80
	ldh  a, [$80]                                    ; $7f33: $f0 $80
	ld   [hl], b                                     ; $7f35: $70
	add  b                                           ; $7f36: $80
	db   $10                                         ; $7f37: $10
	add  b                                           ; $7f38: $80
	ret  nz                                          ; $7f39: $c0

	add  b                                           ; $7f3a: $80
	ldh  a, [rAUD1ENV]                               ; $7f3b: $f0 $12
	rrca                                             ; $7f3d: $0f
	rlca                                             ; $7f3e: $07
	add  a                                           ; $7f3f: $87
	add  e                                           ; $7f40: $83
	ld   b, e                                        ; $7f41: $43
	ld   b, c                                        ; $7f42: $41
	and  c                                           ; $7f43: $a1
	and  b                                           ; $7f44: $a0
	ld   d, b                                        ; $7f45: $50
	ret  nc                                          ; $7f46: $d0

	jr   z, @-$16                                    ; $7f47: $28 $e8

	inc  d                                           ; $7f49: $14
	db   $f4                                         ; $7f4a: $f4
	ld   a, [bc]                                     ; $7f4b: $0a
	ld   a, [$fa52]                                  ; $7f4c: $fa $52 $fa
	rst  $38                                         ; $7f4f: $ff
	add  c                                           ; $7f50: $81
	rst  $30                                         ; $7f51: $f7
	nop                                              ; $7f52: $00
	rst  $38                                         ; $7f53: $ff
	add  b                                           ; $7f54: $80
	rst  $28                                         ; $7f55: $ef
	add  b                                           ; $7f56: $80
	ld   l, a                                        ; $7f57: $6f
	ld   b, $3f                                      ; $7f58: $06 $3f
	scf                                              ; $7f5a: $37
	rra                                              ; $7f5b: $1f
	dec  de                                          ; $7f5c: $1b
	rrca                                             ; $7f5d: $0f
	inc  sp                                          ; $7f5e: $33
	ccf                                              ; $7f5f: $3f
	add  b                                           ; $7f60: $80
	adc  a                                           ; $7f61: $8f
	add  b                                           ; $7f62: $80
	db   $e3                                         ; $7f63: $e3
	add  b                                           ; $7f64: $80
	ld   hl, sp-$80                                  ; $7f65: $f8 $80
	cp   $85                                         ; $7f67: $fe $85
	rst  $38                                         ; $7f69: $ff
	add  c                                           ; $7f6a: $81
	ldh  a, [$82]                                    ; $7f6b: $f0 $82
	ldh  [$82], a                                    ; $7f6d: $e0 $82
	nop                                              ; $7f6f: $00
	add  b                                           ; $7f70: $80
	add  b                                           ; $7f71: $80
	inc  b                                           ; $7f72: $04
	nop                                              ; $7f73: $00
	db   $10                                         ; $7f74: $10
	ld   b, a                                        ; $7f75: $47
	rst  JumpTable                                         ; $7f76: $df
	cp   a                                           ; $7f77: $bf
	add  c                                           ; $7f78: $81
	cp   h                                           ; $7f79: $bc
	add  b                                           ; $7f7a: $80
	cp   a                                           ; $7f7b: $bf
	ld   bc, $bcb8                                   ; $7f7c: $01 $b8 $bc
	add  b                                           ; $7f7f: $80
	cp   a                                           ; $7f80: $bf
	ld   bc, $bebc                                   ; $7f81: $01 $bc $be
	add  b                                           ; $7f84: $80
	cp   a                                           ; $7f85: $bf
	nop                                              ; $7f86: $00
	add  d                                           ; $7f87: $82
	add  b                                           ; $7f88: $80
	rst  $38                                         ; $7f89: $ff
	add  c                                           ; $7f8a: $81
	nop                                              ; $7f8b: $00
	add  b                                           ; $7f8c: $80
	rst  $38                                         ; $7f8d: $ff
	add  b                                           ; $7f8e: $80
	nop                                              ; $7f8f: $00
	add  b                                           ; $7f90: $80
	rst  $38                                         ; $7f91: $ff
	add  b                                           ; $7f92: $80
	nop                                              ; $7f93: $00
	add  b                                           ; $7f94: $80
	rst  $38                                         ; $7f95: $ff
	inc  bc                                          ; $7f96: $03
	nop                                              ; $7f97: $00
	ldh  a, [$f1]                                    ; $7f98: $f0 $f1
	ld   de, $1380                                   ; $7f9a: $11 $80 $13
	add  b                                           ; $7f9d: $80
	rst  $10                                         ; $7f9e: $d7
	ld   bc, $1202                                   ; $7f9f: $01 $02 $12
	add  b                                           ; $7fa2: $80
	jp   hl                                          ; $7fa3: $e9


	ld   bc, $0a02                                   ; $7fa4: $01 $02 $0a
	add  b                                           ; $7fa7: $80
	ld   sp, hl                                      ; $7fa8: $f9
	ld   bc, $a0a7                                   ; $7fa9: $01 $a7 $a0
	add  b                                           ; $7fac: $80
	ld   b, b                                        ; $7fad: $40
	add  b                                           ; $7fae: $80
	and  b                                           ; $7faf: $a0
	add  b                                           ; $7fb0: $80
	ld   b, b                                        ; $7fb1: $40
	add  b                                           ; $7fb2: $80
	and  b                                           ; $7fb3: $a0
	add  b                                           ; $7fb4: $80
	ld   b, b                                        ; $7fb5: $40
	add  b                                           ; $7fb6: $80
	add  b                                           ; $7fb7: $80
	add  b                                           ; $7fb8: $80
	ld   b, b                                        ; $7fb9: $40
	ld   [bc], a                                     ; $7fba: $02
	call nz, $cacb                                   ; $7fbb: $c4 $cb $ca
	adc  c                                           ; $7fbe: $89
	res  0, b                                        ; $7fbf: $cb $80
	dec  bc                                          ; $7fc1: $0b
	ld   [bc], a                                     ; $7fc2: $02
	ld   [hl], h                                     ; $7fc3: $74
	rst  $38                                         ; $7fc4: $ff
	ld   [$ff89], a                                  ; $7fc5: $ea $89 $ff
	dec  b                                           ; $7fc8: $05
	cp   a                                           ; $7fc9: $bf
	rst  $38                                         ; $7fca: $ff
	add  hl, bc                                      ; $7fcb: $09
	cp   $ed                                         ; $7fcc: $fe $ed
	push hl                                          ; $7fce: $e5
	add  b                                           ; $7fcf: $80
	ld   a, [$f580]                                  ; $7fd0: $fa $80 $f5
	add  b                                           ; $7fd3: $80
	ld   [$e080], a                                  ; $7fd4: $ea $80 $e0
	add  b                                           ; $7fd7: $80
	rst  $28                                         ; $7fd8: $ef
	inc  bc                                          ; $7fd9: $03
	ld   [hl], d                                     ; $7fda: $72
	rst  $30                                         ; $7fdb: $f7
	ld   l, d                                        ; $7fdc: $6a
	ret  nz                                          ; $7fdd: $c0

	add  b                                           ; $7fde: $80
	ld   b, b                                        ; $7fdf: $40
	add  b                                           ; $7fe0: $80
	ret  nz                                          ; $7fe1: $c0

	add  b                                           ; $7fe2: $80
	ld   b, b                                        ; $7fe3: $40
	add  b                                           ; $7fe4: $80
	add  b                                           ; $7fe5: $80
	add  b                                           ; $7fe6: $80
	nop                                              ; $7fe7: $00
	add  b                                           ; $7fe8: $80
	ret  nz                                          ; $7fe9: $c0

	ld   [bc], a                                     ; $7fea: $02
	and  b                                           ; $7feb: $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $7fec: $f0 $a0
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	rst  $30                                         ; $7ffa: $f7
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
